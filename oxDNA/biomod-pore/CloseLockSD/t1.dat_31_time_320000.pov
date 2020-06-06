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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.278061, 15.290505, 15.105015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.125663, 15.013070, 14.860465>,  <4.034225, 14.846609, 14.713735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.125663, 15.013070, 14.860465>,  <4.278061, 15.290505, 15.105015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.125663, 15.013070, 14.860465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831744, 0.031673, -0.554255,
		0.403789, -0.719675, 0.564821,
		-0.380994, -0.693588, -0.611375,
		4.011365, 14.804994, 14.677052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.748829, 14.801234, 15.090470>,  <4.278061, 15.290505, 15.105015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.748829, 14.801234, 15.090470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.553182, 14.806048, 14.741616>,  <4.435794, 14.808937, 14.532304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.553182, 14.806048, 14.741616>,  <4.748829, 14.801234, 15.090470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.553182, 14.806048, 14.741616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870167, -0.061796, -0.488867,
		-0.059762, -0.998017, 0.019781,
		-0.489120, 0.012003, -0.872134,
		4.406447, 14.809659, 14.479976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.064387, 15.104926, 15.845969>,  <4.748829, 14.801234, 15.090470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.064387, 15.104926, 15.845969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.714170, 15.121706, 16.038496>,  <4.504040, 15.131774, 16.154013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.714170, 15.121706, 16.038496>,  <5.064387, 15.104926, 15.845969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.714170, 15.121706, 16.038496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149043, 0.971087, 0.186482,
		-0.459577, 0.235010, -0.856481,
		-0.875543, 0.041949, 0.481316,
		4.451508, 15.134291, 16.182890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.558554, 15.112283, 15.184675>,  <5.064387, 15.104926, 15.845969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.558554, 15.112283, 15.184675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.714701, 15.471622, 15.104092>,  <5.808389, 15.687225, 15.055741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.714701, 15.471622, 15.104092>,  <5.558554, 15.112283, 15.184675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.714701, 15.471622, 15.104092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254587, -0.315618, -0.914095,
		-0.884759, 0.305544, -0.351914,
		0.390367, 0.898347, -0.201459,
		5.831811, 15.741126, 15.043653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.350399, 15.293093, 14.548796>,  <5.558554, 15.112283, 15.184675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.350399, 15.293093, 14.548796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.674849, 15.520492, 14.603767>,  <5.869519, 15.656931, 14.636750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.674849, 15.520492, 14.603767>,  <5.350399, 15.293093, 14.548796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.674849, 15.520492, 14.603767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223927, -0.084788, -0.970911,
		-0.540308, 0.818304, -0.196075,
		0.811125, 0.568498, 0.137429,
		5.918187, 15.691041, 14.644996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.365814, 15.816468, 14.053694>,  <5.350399, 15.293093, 14.548796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.365814, 15.816468, 14.053694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.743007, 15.759814, 14.174177>,  <5.969322, 15.725821, 14.246468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.743007, 15.759814, 14.174177>,  <5.365814, 15.816468, 14.053694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.743007, 15.759814, 14.174177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293199, -0.074880, -0.953115,
		0.157549, 0.987083, -0.029083,
		0.942981, -0.141635, 0.301209,
		6.025901, 15.717324, 14.264540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.746252, 16.234716, 13.669962>,  <5.365814, 15.816468, 14.053694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.746252, 16.234716, 13.669962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.028938, 15.981954, 13.797238>,  <6.198549, 15.830296, 13.873604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.028938, 15.981954, 13.797238>,  <5.746252, 16.234716, 13.669962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.028938, 15.981954, 13.797238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256864, -0.189887, -0.947609,
		0.659223, 0.751422, 0.028119,
		0.706715, -0.631909, 0.318191,
		6.240952, 15.792381, 13.892695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.370287, 16.351597, 13.156188>,  <5.746252, 16.234716, 13.669962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.370287, 16.351597, 13.156188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.435963, 16.000450, 13.336141>,  <6.475369, 15.789762, 13.444112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.435963, 16.000450, 13.336141>,  <6.370287, 16.351597, 13.156188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.435963, 16.000450, 13.336141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423256, -0.349256, -0.835987,
		0.891009, 0.327676, 0.314217,
		0.164190, -0.877866, 0.449881,
		6.485220, 15.737090, 13.471105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.886591, 16.059458, 12.765807>,  <6.370287, 16.351597, 13.156188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.886591, 16.059458, 12.765807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.744636, 15.761346, 12.991591>,  <6.659462, 15.582479, 13.127062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.744636, 15.761346, 12.991591>,  <6.886591, 16.059458, 12.765807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.744636, 15.761346, 12.991591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292311, -0.661944, -0.690206,
		0.888036, -0.079948, 0.452769,
		-0.354888, -0.745278, 0.564461,
		6.638169, 15.537763, 13.160930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.396394, 15.514166, 12.598360>,  <6.886591, 16.059458, 12.765807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.396394, 15.514166, 12.598360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.045094, 15.381701, 12.736350>,  <6.834313, 15.302221, 12.819144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.045094, 15.381701, 12.736350>,  <7.396394, 15.514166, 12.598360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.045094, 15.381701, 12.736350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050288, -0.653440, -0.755306,
		0.475550, -0.680696, 0.557230,
		-0.878250, -0.331163, 0.344974,
		6.781619, 15.282351, 12.839842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.404470, 14.830242, 12.399529>,  <7.396394, 15.514166, 12.598360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.404470, 14.830242, 12.399529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.016983, 14.856076, 12.495374>,  <6.784490, 14.871577, 12.552880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.016983, 14.856076, 12.495374>,  <7.404470, 14.830242, 12.399529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.016983, 14.856076, 12.495374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209810, -0.728804, -0.651786,
		0.132534, -0.681670, 0.719556,
		-0.968718, 0.064586, 0.239612,
		6.726367, 14.875452, 12.567257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.216986, 14.159004, 12.594404>,  <7.404470, 14.830242, 12.399529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.216986, 14.159004, 12.594404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.902272, 14.364225, 12.457148>,  <6.713444, 14.487358, 12.374794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.902272, 14.364225, 12.457148>,  <7.216986, 14.159004, 12.594404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.902272, 14.364225, 12.457148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172498, -0.716559, -0.675860,
		-0.592633, -0.472565, 0.652279,
		-0.786785, 0.513054, -0.343141,
		6.666237, 14.518142, 12.354205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.755433, 13.687051, 12.423752>,  <7.216986, 14.159004, 12.594404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.755433, 13.687051, 12.423752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.605371, 13.998883, 12.223148>,  <6.515333, 14.185983, 12.102786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.605371, 13.998883, 12.223148>,  <6.755433, 13.687051, 12.423752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.605371, 13.998883, 12.223148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209157, -0.598263, -0.773521,
		-0.903057, -0.185297, 0.387497,
		-0.375156, 0.779581, -0.501509,
		6.492824, 14.232758, 12.072696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.093342, 13.542437, 12.248440>,  <6.755433, 13.687051, 12.423752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.093342, 13.542437, 12.248440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.225444, 13.824817, 11.997820>,  <6.304705, 13.994245, 11.847448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.225444, 13.824817, 11.997820>,  <6.093342, 13.542437, 12.248440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.225444, 13.824817, 11.997820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239169, -0.579545, -0.779055,
		-0.913088, 0.407138, -0.022556,
		0.330255, 0.705951, -0.626550,
		6.324520, 14.036602, 11.809855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.556483, 13.550622, 11.634164>,  <6.093342, 13.542437, 12.248440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.556483, 13.550622, 11.634164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.919266, 13.684146, 11.531403>,  <6.136936, 13.764260, 11.469746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.919266, 13.684146, 11.531403>,  <5.556483, 13.550622, 11.634164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.919266, 13.684146, 11.531403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035128, -0.547835, -0.835849,
		-0.419755, 0.767104, -0.485137,
		0.906957, 0.333810, -0.256903,
		6.191353, 13.784289, 11.454331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.431123, 13.809068, 10.943504>,  <5.556483, 13.550622, 11.634164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.431123, 13.809068, 10.943504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.829868, 13.778459, 10.951585>,  <6.069115, 13.760094, 10.956433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.829868, 13.778459, 10.951585>,  <5.431123, 13.809068, 10.943504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.829868, 13.778459, 10.951585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012246, -0.401301, -0.915864,
		0.078190, 0.912744, -0.400980,
		0.996863, -0.076522, 0.020201,
		6.128927, 13.755502, 10.957645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.567213, 13.818912, 10.213737>,  <5.431123, 13.809068, 10.943504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.567213, 13.818912, 10.213737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.908019, 13.705401, 10.389711>,  <6.112503, 13.637296, 10.495296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.908019, 13.705401, 10.389711>,  <5.567213, 13.818912, 10.213737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.908019, 13.705401, 10.389711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296524, -0.430961, -0.852260,
		0.431444, 0.856589, -0.283039,
		0.852015, -0.283775, 0.439935,
		6.163623, 13.620269, 10.521691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.169065, 14.073498, 9.807561>,  <5.567213, 13.818912, 10.213737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.169065, 14.073498, 9.807561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.318991, 13.777899, 10.031487>,  <6.408947, 13.600539, 10.165844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.318991, 13.777899, 10.031487>,  <6.169065, 14.073498, 9.807561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.318991, 13.777899, 10.031487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451163, -0.382122, -0.806495,
		0.809917, 0.554856, 0.190184,
		0.374815, -0.738998, 0.559817,
		6.431436, 13.556199, 10.199432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.799281, 14.021591, 9.605092>,  <6.169065, 14.073498, 9.807561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.799281, 14.021591, 9.605092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.722743, 13.675261, 9.790016>,  <6.676820, 13.467462, 9.900970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.722743, 13.675261, 9.790016>,  <6.799281, 14.021591, 9.605092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.722743, 13.675261, 9.790016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429919, -0.497358, -0.753528,
		0.882358, 0.054572, 0.467403,
		-0.191346, -0.865827, 0.462309,
		6.665339, 13.415512, 9.928709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.387487, 13.729577, 9.654318>,  <6.799281, 14.021591, 9.605092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.387487, 13.729577, 9.654318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.113280, 13.438545, 9.664827>,  <6.948755, 13.263926, 9.671133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.113280, 13.438545, 9.664827>,  <7.387487, 13.729577, 9.654318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.113280, 13.438545, 9.664827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482223, -0.480790, -0.732326,
		0.545458, -0.489354, 0.680447,
		-0.685519, -0.727580, 0.026273,
		6.907624, 13.220271, 9.672709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.768983, 13.100420, 9.527318>,  <7.387487, 13.729577, 9.654318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.768983, 13.100420, 9.527318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.388607, 12.995047, 9.462430>,  <7.160381, 12.931823, 9.423497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.388607, 12.995047, 9.462430>,  <7.768983, 13.100420, 9.527318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.388607, 12.995047, 9.462430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283284, -0.530691, -0.798822,
		0.124348, -0.805586, 0.579282,
		-0.950940, -0.263433, -0.162219,
		7.103325, 12.916017, 9.413764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.788220, 12.351339, 9.501255>,  <7.768983, 13.100420, 9.527318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.788220, 12.351339, 9.501255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.443559, 12.449900, 9.323789>,  <7.236762, 12.509036, 9.217309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.443559, 12.449900, 9.323789>,  <7.788220, 12.351339, 9.501255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.443559, 12.449900, 9.323789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190782, -0.652830, -0.733086,
		-0.470271, -0.716310, 0.515504,
		-0.861654, 0.246401, -0.443666,
		7.185063, 12.523820, 9.190689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.492814, 11.774648, 9.298233>,  <7.788220, 12.351339, 9.501255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.492814, 11.774648, 9.298233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.313675, 12.053740, 9.074589>,  <7.206192, 12.221195, 8.940402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.313675, 12.053740, 9.074589>,  <7.492814, 11.774648, 9.298233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.313675, 12.053740, 9.074589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318287, -0.459954, -0.828936,
		-0.835540, -0.549194, -0.016090,
		-0.447847, 0.697731, -0.559111,
		7.179321, 12.263059, 8.906856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.931128, 11.467461, 8.982514>,  <7.492814, 11.774648, 9.298233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.931128, 11.467461, 8.982514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.041850, 11.789313, 8.772391>,  <7.108284, 11.982425, 8.646317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.041850, 11.789313, 8.772391>,  <6.931128, 11.467461, 8.982514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.041850, 11.789313, 8.772391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328982, -0.592985, -0.734941,
		-0.902856, 0.030619, -0.428851,
		0.276805, 0.804631, -0.525308,
		7.124892, 12.030703, 8.614799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.622891, 11.273495, 8.421208>,  <6.931128, 11.467461, 8.982514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.622891, 11.273495, 8.421208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.880677, 11.563524, 8.324104>,  <7.035348, 11.737542, 8.265841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.880677, 11.563524, 8.324104>,  <6.622891, 11.273495, 8.421208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.880677, 11.563524, 8.324104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206924, -0.471021, -0.857509,
		-0.736103, 0.502401, -0.453592,
		0.644465, 0.725074, -0.242761,
		7.074016, 11.781047, 8.251276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.533726, 11.458623, 7.709788>,  <6.622891, 11.273495, 8.421208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.533726, 11.458623, 7.709788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.913260, 11.571017, 7.767420>,  <7.140980, 11.638453, 7.801999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.913260, 11.571017, 7.767420>,  <6.533726, 11.458623, 7.709788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.913260, 11.571017, 7.767420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182608, -0.116010, -0.976317,
		-0.257616, 0.952675, -0.161385,
		0.948835, 0.280985, 0.144080,
		7.197911, 11.655313, 7.810644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.653115, 11.974833, 7.293635>,  <6.533726, 11.458623, 7.709788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.653115, 11.974833, 7.293635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.015104, 11.819504, 7.363179>,  <7.232298, 11.726306, 7.404905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.015104, 11.819504, 7.363179>,  <6.653115, 11.974833, 7.293635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.015104, 11.819504, 7.363179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108115, -0.185330, -0.976711,
		0.411501, 0.902695, -0.125736,
		0.904974, -0.388323, 0.173858,
		7.286597, 11.703007, 7.415336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.322665, 12.341726, 6.963085>,  <6.653115, 11.974833, 7.293635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.322665, 12.341726, 6.963085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.356580, 11.945717, 7.008096>,  <7.376929, 11.708111, 7.035103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.356580, 11.945717, 7.008096>,  <7.322665, 12.341726, 6.963085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.356580, 11.945717, 7.008096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132415, -0.100737, -0.986062,
		0.987561, 0.098507, 0.122553,
		0.084788, -0.990025, 0.112527,
		7.382016, 11.648709, 7.041854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.479813, 12.265816, 6.327232>,  <7.322665, 12.341726, 6.963085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.479813, 12.265816, 6.327232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.432700, 11.914032, 6.511700>,  <7.404432, 11.702962, 6.622381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.432700, 11.914032, 6.511700>,  <7.479813, 12.265816, 6.327232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.432700, 11.914032, 6.511700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304623, -0.474011, -0.826147,
		0.945163, 0.043177, 0.323734,
		-0.117782, -0.879460, 0.461170,
		7.397366, 11.650194, 6.650051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.146376, 12.668742, 5.972092>,  <7.479813, 12.265816, 6.327232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.146376, 12.668742, 5.972092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.222847, 12.598699, 6.358416>,  <8.268729, 12.556672, 6.590210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.222847, 12.598699, 6.358416>,  <8.146376, 12.668742, 5.972092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.222847, 12.598699, 6.358416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192580, 0.971526, 0.138025,
		-0.962478, 0.159608, 0.219455,
		0.191177, -0.175109, 0.965810,
		8.280200, 12.546165, 6.648159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.617774, 12.977164, 6.335299>,  <8.146376, 12.668742, 5.972092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.617774, 12.977164, 6.335299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.971936, 12.959541, 6.520390>,  <8.184433, 12.948968, 6.631445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.971936, 12.959541, 6.520390>,  <7.617774, 12.977164, 6.335299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.971936, 12.959541, 6.520390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006008, 0.996500, 0.083381,
		-0.464782, -0.071046, 0.882570,
		0.885405, -0.044057, 0.462728,
		8.237557, 12.946324, 6.659208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.637942, 13.556041, 6.724946>,  <7.617774, 12.977164, 6.335299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.637942, 13.556041, 6.724946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.024527, 13.455329, 6.745173>,  <8.256477, 13.394901, 6.757310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.024527, 13.455329, 6.745173>,  <7.637942, 13.556041, 6.724946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.024527, 13.455329, 6.745173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228352, 0.932640, 0.279353,
		-0.117497, -0.258437, 0.958856,
		0.966462, -0.251780, 0.050568,
		8.314466, 13.379795, 6.760344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.023707, 13.634872, 7.443878>,  <7.637942, 13.556041, 6.724946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.023707, 13.634872, 7.443878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.316748, 13.660819, 7.172854>,  <8.492572, 13.676387, 7.010239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.316748, 13.660819, 7.172854>,  <8.023707, 13.634872, 7.443878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.316748, 13.660819, 7.172854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230446, 0.913024, 0.336574,
		0.640462, -0.402715, 0.653934,
		0.732601, 0.064867, -0.677561,
		8.536528, 13.680279, 6.969585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.728012, 13.728579, 7.677218>,  <8.023707, 13.634872, 7.443878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.728012, 13.728579, 7.677218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.697061, 13.928034, 7.331879>,  <8.678490, 14.047707, 7.124675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.697061, 13.928034, 7.331879>,  <8.728012, 13.728579, 7.677218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.697061, 13.928034, 7.331879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185394, 0.858039, 0.478955,
		0.979613, -0.123000, -0.158838,
		-0.077378, 0.498638, -0.863350,
		8.673847, 14.077625, 7.072874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.348678, 14.102026, 7.498198>,  <8.728012, 13.728579, 7.677218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.348678, 14.102026, 7.498198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.041137, 14.289193, 7.323880>,  <8.856612, 14.401493, 7.219289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.041137, 14.289193, 7.323880>,  <9.348678, 14.102026, 7.498198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.041137, 14.289193, 7.323880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200705, 0.823699, 0.530318,
		0.607110, 0.320271, -0.727217,
		-0.768853, 0.467917, -0.435796,
		8.810481, 14.429568, 7.193141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.637150, 14.821599, 7.280087>,  <9.348678, 14.102026, 7.498198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.637150, 14.821599, 7.280087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.246801, 14.814796, 7.367160>,  <9.012592, 14.810715, 7.419404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.246801, 14.814796, 7.367160>,  <9.637150, 14.821599, 7.280087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.246801, 14.814796, 7.367160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135143, 0.736005, 0.663350,
		-0.171496, 0.676762, -0.715948,
		-0.975872, -0.017007, 0.217682,
		8.954040, 14.809694, 7.432465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.471781, 15.478988, 7.363143>,  <9.637150, 14.821599, 7.280087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.471781, 15.478988, 7.363143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.181196, 15.286369, 7.559252>,  <9.006845, 15.170798, 7.676918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.181196, 15.286369, 7.559252>,  <9.471781, 15.478988, 7.363143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.181196, 15.286369, 7.559252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021082, 0.697475, 0.716299,
		-0.686883, 0.530700, -0.496537,
		-0.726462, -0.481546, 0.490272,
		8.963258, 15.141906, 7.706334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.095673, 16.047832, 7.569322>,  <9.471781, 15.478988, 7.363143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.095673, 16.047832, 7.569322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.003242, 15.735917, 7.802056>,  <8.947783, 15.548768, 7.941696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.003242, 15.735917, 7.802056>,  <9.095673, 16.047832, 7.569322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.003242, 15.735917, 7.802056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194461, 0.548937, 0.812929,
		-0.953304, 0.300994, 0.024791,
		-0.231078, -0.779789, 0.581835,
		8.933918, 15.501981, 7.976606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.615439, 16.369534, 8.008232>,  <9.095673, 16.047832, 7.569322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.615439, 16.369534, 8.008232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.718455, 16.032827, 8.198012>,  <8.780265, 15.830803, 8.311880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.718455, 16.032827, 8.198012>,  <8.615439, 16.369534, 8.008232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.718455, 16.032827, 8.198012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135032, 0.517547, 0.844933,
		-0.956787, -0.153537, 0.246954,
		0.257539, -0.841767, 0.474450,
		8.795717, 15.780297, 8.340347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.186795, 16.376802, 8.554134>,  <8.615439, 16.369534, 8.008232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.186795, 16.376802, 8.554134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.481838, 16.120554, 8.639496>,  <8.658864, 15.966805, 8.690713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.481838, 16.120554, 8.639496>,  <8.186795, 16.376802, 8.554134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.481838, 16.120554, 8.639496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020291, 0.336933, 0.941310,
		-0.674925, -0.689987, 0.261523,
		0.737607, -0.640620, 0.213404,
		8.703120, 15.928368, 8.703517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.007681, 15.801470, 8.954698>,  <8.186795, 16.376802, 8.554134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.007681, 15.801470, 8.954698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.397838, 15.824543, 9.039816>,  <8.631932, 15.838387, 9.090887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.397838, 15.824543, 9.039816>,  <8.007681, 15.801470, 8.954698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.397838, 15.824543, 9.039816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218916, 0.138784, 0.965823,
		0.026177, -0.988641, 0.147997,
		0.975392, 0.057681, 0.212796,
		8.690455, 15.841848, 9.103655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.139942, 15.414946, 9.594188>,  <8.007681, 15.801470, 8.954698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.139942, 15.414946, 9.594188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.468424, 15.638125, 9.546332>,  <8.665513, 15.772034, 9.517619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.468424, 15.638125, 9.546332>,  <8.139942, 15.414946, 9.594188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.468424, 15.638125, 9.546332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071751, 0.107035, 0.991663,
		0.566105, -0.822943, 0.047864,
		0.821205, 0.557951, -0.119640,
		8.714786, 15.805511, 9.510441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.454835, 15.307924, 10.197628>,  <8.139942, 15.414946, 9.594188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.454835, 15.307924, 10.197628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.674359, 15.615742, 10.067024>,  <8.806074, 15.800432, 9.988662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.674359, 15.615742, 10.067024>,  <8.454835, 15.307924, 10.197628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.674359, 15.615742, 10.067024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126790, 0.309440, 0.942428,
		0.826275, -0.558613, 0.072253,
		0.548811, 0.769544, -0.326509,
		8.839003, 15.846605, 9.969071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.192921, 15.323804, 10.406748>,  <8.454835, 15.307924, 10.197628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.192921, 15.323804, 10.406748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.067262, 15.698578, 10.345477>,  <8.991866, 15.923443, 10.308715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.067262, 15.698578, 10.345477>,  <9.192921, 15.323804, 10.406748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.067262, 15.698578, 10.345477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218994, 0.228508, 0.948591,
		0.923771, 0.264452, -0.276968,
		-0.314147, 0.936936, -0.153176,
		8.973018, 15.979659, 10.299524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.654428, 15.711230, 10.738057>,  <9.192921, 15.323804, 10.406748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.654428, 15.711230, 10.738057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.363698, 15.983608, 10.702195>,  <9.189260, 16.147036, 10.680677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.363698, 15.983608, 10.702195>,  <9.654428, 15.711230, 10.738057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.363698, 15.983608, 10.702195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209375, 0.343998, 0.915329,
		0.654130, 0.646513, -0.392600,
		-0.726826, 0.680945, -0.089656,
		9.145650, 16.187891, 10.675299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.903248, 16.335634, 10.988742>,  <9.654428, 15.711230, 10.738057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.903248, 16.335634, 10.988742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.507416, 16.390139, 11.007350>,  <9.269917, 16.422840, 11.018515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.507416, 16.390139, 11.007350>,  <9.903248, 16.335634, 10.988742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.507416, 16.390139, 11.007350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071635, 0.185663, 0.979999,
		0.124896, 0.973120, -0.193490,
		-0.989580, 0.136259, 0.046521,
		9.210542, 16.431017, 11.021306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.770579, 16.930233, 11.345899>,  <9.903248, 16.335634, 10.988742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.770579, 16.930233, 11.345899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.419224, 16.740974, 11.372920>,  <9.208410, 16.627419, 11.389132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.419224, 16.740974, 11.372920>,  <9.770579, 16.930233, 11.345899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.419224, 16.740974, 11.372920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013467, 0.116784, 0.993066,
		-0.477757, 0.873208, -0.096210,
		-0.878389, -0.473149, 0.067553,
		9.155707, 16.599030, 11.393186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.351755, 17.427183, 11.695426>,  <9.770579, 16.930233, 11.345899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.351755, 17.427183, 11.695426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.136081, 17.092625, 11.734864>,  <9.006676, 16.891890, 11.758528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.136081, 17.092625, 11.734864>,  <9.351755, 17.427183, 11.695426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.136081, 17.092625, 11.734864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321293, 0.312502, 0.893932,
		-0.778491, 0.450318, -0.437225,
		-0.539187, -0.836395, 0.098596,
		8.974325, 16.841705, 11.764443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.692274, 17.577297, 12.027134>,  <9.351755, 17.427183, 11.695426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.692274, 17.577297, 12.027134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.727096, 17.188259, 12.113371>,  <8.747989, 16.954836, 12.165113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.727096, 17.188259, 12.113371>,  <8.692274, 17.577297, 12.027134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.727096, 17.188259, 12.113371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227583, 0.191275, 0.954788,
		-0.969860, -0.132184, -0.204694,
		0.087055, -0.972595, 0.215593,
		8.753212, 16.896481, 12.178049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.135911, 17.425091, 12.431139>,  <8.692274, 17.577297, 12.027134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.135911, 17.425091, 12.431139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.409127, 17.148130, 12.524121>,  <8.573057, 16.981955, 12.579911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.409127, 17.148130, 12.524121>,  <8.135911, 17.425091, 12.431139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.409127, 17.148130, 12.524121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226024, 0.102262, 0.968739,
		-0.694528, -0.714228, -0.086650,
		0.683040, -0.692402, 0.232456,
		8.614039, 16.940411, 12.593858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.836888, 16.851946, 12.667275>,  <8.135911, 17.425091, 12.431139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.836888, 16.851946, 12.667275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.203650, 16.803522, 12.819398>,  <8.423706, 16.774467, 12.910671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.203650, 16.803522, 12.819398>,  <7.836888, 16.851946, 12.667275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.203650, 16.803522, 12.819398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353062, 0.198308, 0.914342,
		-0.186108, -0.972635, 0.139088,
		0.916903, -0.121060, 0.380307,
		8.478721, 16.767204, 12.933490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.779638, 16.420362, 13.170460>,  <7.836888, 16.851946, 12.667275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.779638, 16.420362, 13.170460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.127875, 16.597075, 13.257082>,  <8.336818, 16.703102, 13.309055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.127875, 16.597075, 13.257082>,  <7.779638, 16.420362, 13.170460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.127875, 16.597075, 13.257082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215616, -0.053050, 0.975036,
		0.442240, -0.895553, 0.049070,
		0.870594, 0.441781, 0.216556,
		8.389053, 16.729609, 13.322049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.076303, 15.920034, 13.629705>,  <7.779638, 16.420362, 13.170460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.076303, 15.920034, 13.629705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.250456, 16.273615, 13.697912>,  <8.354947, 16.485764, 13.738836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.250456, 16.273615, 13.697912>,  <8.076303, 15.920034, 13.629705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.250456, 16.273615, 13.697912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137000, -0.122148, 0.983011,
		0.889761, -0.451345, 0.067921,
		0.435380, 0.883950, 0.170517,
		8.381070, 16.538799, 13.749067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.626499, 15.808670, 14.044435>,  <8.076303, 15.920034, 13.629705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.626499, 15.808670, 14.044435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.575197, 16.203665, 14.081142>,  <8.544416, 16.440662, 14.103168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.575197, 16.203665, 14.081142>,  <8.626499, 15.808670, 14.044435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.575197, 16.203665, 14.081142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088832, -0.080724, 0.992770,
		0.987755, 0.135479, -0.077367,
		-0.128254, 0.987486, 0.091770,
		8.536721, 16.499910, 14.108673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.222301, 16.101406, 14.402646>,  <8.626499, 15.808670, 14.044435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.222301, 16.101406, 14.402646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.914351, 16.352205, 14.450265>,  <8.729582, 16.502686, 14.478836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.914351, 16.352205, 14.450265>,  <9.222301, 16.101406, 14.402646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.914351, 16.352205, 14.450265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165465, 0.015942, 0.986087,
		0.616376, 0.778858, -0.116019,
		-0.769872, 0.626997, 0.119048,
		8.683390, 16.540304, 14.485979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.488195, 16.432997, 14.940907>,  <9.222301, 16.101406, 14.402646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.488195, 16.432997, 14.940907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.099073, 16.525347, 14.948335>,  <8.865600, 16.580757, 14.952791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.099073, 16.525347, 14.948335>,  <9.488195, 16.432997, 14.940907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.099073, 16.525347, 14.948335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046419, 0.115783, 0.992189,
		0.226923, 0.966070, -0.123352,
		-0.972806, 0.230876, 0.018570,
		8.807232, 16.594610, 14.953906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.431910, 17.011028, 15.320889>,  <9.488195, 16.432997, 14.940907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.431910, 17.011028, 15.320889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.079448, 16.822159, 15.330844>,  <8.867970, 16.708838, 15.336817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.079448, 16.822159, 15.330844>,  <9.431910, 17.011028, 15.320889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.079448, 16.822159, 15.330844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016797, 0.021345, 0.999631,
		-0.472531, 0.881247, -0.010877,
		-0.881154, -0.472174, 0.024889,
		8.815102, 16.680508, 15.338310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.653962, 16.425167, 15.683786>,  <9.431910, 17.011028, 15.320889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.653962, 16.425167, 15.683786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.762445, 16.483002, 16.064426>,  <9.827536, 16.517702, 16.292810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.762445, 16.483002, 16.064426>,  <9.653962, 16.425167, 15.683786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.762445, 16.483002, 16.064426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962210, -0.065837, -0.264229,
		0.024446, 0.987299, -0.156979,
		0.271208, 0.144587, 0.951599,
		9.843808, 16.526379, 16.349907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.290897, 16.753988, 15.656944>,  <9.653962, 16.425167, 15.683786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.290897, 16.753988, 15.656944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.250399, 16.554016, 16.000996>,  <10.226099, 16.434032, 16.207426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.250399, 16.554016, 16.000996>,  <10.290897, 16.753988, 15.656944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.250399, 16.554016, 16.000996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972761, -0.230968, -0.019740,
		0.208531, 0.834700, 0.509697,
		-0.101247, -0.499930, 0.860127,
		10.220024, 16.404037, 16.259033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.696364, 17.020157, 16.052118>,  <10.290897, 16.753988, 15.656944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.696364, 17.020157, 16.052118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.640154, 16.646767, 16.184101>,  <10.606427, 16.422731, 16.263290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.640154, 16.646767, 16.184101>,  <10.696364, 17.020157, 16.052118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.640154, 16.646767, 16.184101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986189, -0.102468, 0.130119,
		-0.087653, 0.343686, 0.934985,
		-0.140527, -0.933478, 0.329957,
		10.597996, 16.366724, 16.283089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.844394, 17.041403, 16.710209>,  <10.696364, 17.020157, 16.052118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.844394, 17.041403, 16.710209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.945189, 16.692875, 16.541780>,  <11.005665, 16.483757, 16.440723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.945189, 16.692875, 16.541780>,  <10.844394, 17.041403, 16.710209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.945189, 16.692875, 16.541780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967621, 0.220287, 0.123224,
		-0.014611, -0.438488, 0.898618,
		0.251986, -0.871322, -0.421071,
		11.020784, 16.431479, 16.415459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.316017, 16.629940, 17.047857>,  <10.844394, 17.041403, 16.710209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.316017, 16.629940, 17.047857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.381464, 16.496668, 16.676434>,  <11.420732, 16.416704, 16.453579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.381464, 16.496668, 16.676434>,  <11.316017, 16.629940, 17.047857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.381464, 16.496668, 16.676434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982051, 0.144537, 0.121181,
		0.093836, -0.931718, 0.350851,
		0.163617, -0.333182, -0.928557,
		11.430550, 16.396713, 16.397867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.073515, 16.524979, 17.404497>,  <11.316017, 16.629940, 17.047857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.073515, 16.524979, 17.404497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.269845, 16.271812, 17.644001>,  <12.387643, 16.119913, 17.787703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.269845, 16.271812, 17.644001>,  <12.073515, 16.524979, 17.404497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.269845, 16.271812, 17.644001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308365, 0.768944, 0.560032,
		-0.814864, -0.090241, 0.572585,
		0.490824, -0.632915, 0.598758,
		12.417092, 16.081938, 17.823627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.897316, 16.642328, 18.080730>,  <12.073515, 16.524979, 17.404497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.897316, 16.642328, 18.080730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.227571, 16.420759, 18.123611>,  <12.425723, 16.287817, 18.149340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.227571, 16.420759, 18.123611>,  <11.897316, 16.642328, 18.080730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.227571, 16.420759, 18.123611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214111, 0.483413, 0.848804,
		-0.521997, -0.677850, 0.517725,
		0.825637, -0.553923, 0.107204,
		12.475262, 16.254581, 18.155773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.832745, 16.250683, 18.755150>,  <11.897316, 16.642328, 18.080730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.832745, 16.250683, 18.755150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.203444, 16.351240, 18.643482>,  <12.425864, 16.411575, 18.576483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.203444, 16.351240, 18.643482>,  <11.832745, 16.250683, 18.755150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.203444, 16.351240, 18.643482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153477, 0.424907, 0.892132,
		0.342898, -0.869629, 0.355199,
		0.926750, 0.251396, -0.279167,
		12.481469, 16.426659, 18.559732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.150813, 16.291735, 19.303072>,  <11.832745, 16.250683, 18.755150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.150813, 16.291735, 19.303072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.452497, 16.474400, 19.114338>,  <12.633507, 16.584000, 19.001097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.452497, 16.474400, 19.114338>,  <12.150813, 16.291735, 19.303072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.452497, 16.474400, 19.114338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192826, 0.532855, 0.823944,
		0.627688, -0.712406, 0.313825,
		0.754206, 0.456666, -0.471837,
		12.678759, 16.611399, 18.972788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.773998, 16.299902, 19.666033>,  <12.150813, 16.291735, 19.303072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.773998, 16.299902, 19.666033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.852636, 16.612572, 19.429276>,  <12.899819, 16.800173, 19.287222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.852636, 16.612572, 19.429276>,  <12.773998, 16.299902, 19.666033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.852636, 16.612572, 19.429276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504090, 0.437201, 0.744815,
		0.840978, -0.444793, -0.308084,
		0.196594, 0.781675, -0.591892,
		12.911614, 16.847075, 19.251707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.391717, 16.563889, 19.847652>,  <12.773998, 16.299902, 19.666033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.391717, 16.563889, 19.847652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.270373, 16.873386, 19.625195>,  <13.197567, 17.059084, 19.491720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.270373, 16.873386, 19.625195>,  <13.391717, 16.563889, 19.847652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.270373, 16.873386, 19.625195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454468, 0.630472, 0.629257,
		0.837515, -0.061859, -0.542901,
		-0.303358, 0.773743, -0.556143,
		13.179366, 17.105509, 19.458351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.010199, 16.871822, 19.870270>,  <13.391717, 16.563889, 19.847652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.010199, 16.871822, 19.870270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.714380, 17.134905, 19.813004>,  <13.536889, 17.292755, 19.778645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.714380, 17.134905, 19.813004>,  <14.010199, 16.871822, 19.870270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714380, 17.134905, 19.813004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320800, 0.531384, 0.784040,
		0.591744, 0.533905, -0.603974,
		-0.739545, 0.657706, -0.143166,
		13.492517, 17.332216, 19.770054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.300983, 17.478897, 19.938433>,  <14.010199, 16.871822, 19.870270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.300983, 17.478897, 19.938433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.916473, 17.584240, 19.970907>,  <13.685767, 17.647446, 19.990391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.916473, 17.584240, 19.970907>,  <14.300983, 17.478897, 19.938433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.916473, 17.584240, 19.970907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258285, 0.758210, 0.598670,
		0.096109, 0.596456, -0.796871,
		-0.961276, 0.263357, 0.081185,
		13.628091, 17.663248, 19.995262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350548, 18.104927, 19.770676>,  <14.300983, 17.478897, 19.938433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350548, 18.104927, 19.770676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.011393, 18.073458, 19.980398>,  <13.807899, 18.054577, 20.106232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.011393, 18.073458, 19.980398>,  <14.350548, 18.104927, 19.770676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.011393, 18.073458, 19.980398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250120, 0.812602, 0.526420,
		-0.467466, 0.577485, -0.669318,
		-0.847889, -0.078674, 0.524305,
		13.757026, 18.049856, 20.137690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.991249, 18.915043, 19.754032>,  <14.350548, 18.104927, 19.770676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.991249, 18.915043, 19.754032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.833736, 18.718643, 20.064865>,  <13.739229, 18.600803, 20.251366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.833736, 18.718643, 20.064865>,  <13.991249, 18.915043, 19.754032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.833736, 18.718643, 20.064865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162633, 0.794834, 0.584627,
		-0.904703, 0.356594, -0.233138,
		-0.393781, -0.490998, 0.777083,
		13.715602, 18.571344, 20.297991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.490232, 19.385878, 20.081661>,  <13.991249, 18.915043, 19.754032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.490232, 19.385878, 20.081661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573845, 19.105303, 20.354218>,  <13.624013, 18.936958, 20.517752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573845, 19.105303, 20.354218>,  <13.490232, 19.385878, 20.081661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.573845, 19.105303, 20.354218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094124, 0.707979, 0.699934,
		-0.973369, -0.082173, 0.214012,
		0.209032, -0.701437, 0.681390,
		13.636555, 18.894873, 20.558634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.025262, 19.451462, 20.519489>,  <13.490232, 19.385878, 20.081661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.025262, 19.451462, 20.519489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348583, 19.284880, 20.685963>,  <13.542576, 19.184931, 20.785847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.348583, 19.284880, 20.685963>,  <13.025262, 19.451462, 20.519489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.348583, 19.284880, 20.685963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058202, 0.646896, 0.760354,
		-0.585883, -0.638819, 0.498650,
		0.808303, -0.416456, 0.416186,
		13.591074, 19.159943, 20.810818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.121455, 19.876247, 21.136021>,  <13.025262, 19.451462, 20.519489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.121455, 19.876247, 21.136021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455821, 19.657904, 21.158943>,  <13.656441, 19.526897, 21.172697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455821, 19.657904, 21.158943>,  <13.121455, 19.876247, 21.136021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.455821, 19.657904, 21.158943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306731, 0.551187, 0.775957,
		-0.455150, -0.631056, 0.628177,
		0.835915, -0.545858, 0.057308,
		13.706595, 19.494146, 21.176136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.249643, 19.757030, 21.776590>,  <13.121455, 19.876247, 21.136021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.249643, 19.757030, 21.776590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622929, 19.660856, 21.669781>,  <13.846900, 19.603151, 21.605696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.622929, 19.660856, 21.669781>,  <13.249643, 19.757030, 21.776590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.622929, 19.660856, 21.669781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358198, 0.563799, 0.744194,
		-0.028385, -0.790140, 0.612269,
		0.933215, -0.240438, -0.267023,
		13.902893, 19.588724, 21.589674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.664523, 19.517775, 22.384293>,  <13.249643, 19.757030, 21.776590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.664523, 19.517775, 22.384293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910516, 19.659014, 22.102266>,  <14.058111, 19.743757, 21.933050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910516, 19.659014, 22.102266>,  <13.664523, 19.517775, 22.384293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.910516, 19.659014, 22.102266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408051, 0.622611, 0.667719,
		0.674755, -0.698337, 0.238811,
		0.614980, 0.353100, -0.705068,
		14.095010, 19.764944, 21.890747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.324570, 19.439735, 22.610680>,  <13.664523, 19.517775, 22.384293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.324570, 19.439735, 22.610680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.367463, 19.721189, 22.329710>,  <14.393199, 19.890062, 22.161127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.367463, 19.721189, 22.329710>,  <14.324570, 19.439735, 22.610680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.367463, 19.721189, 22.329710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481116, 0.581548, 0.655995,
		0.870074, -0.408292, -0.276168,
		0.107233, 0.703633, -0.702425,
		14.399633, 19.932280, 22.118982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.001779, 19.645569, 22.636658>,  <14.324570, 19.439735, 22.610680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.001779, 19.645569, 22.636658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.826006, 19.964396, 22.470964>,  <14.720543, 20.155691, 22.371550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.826006, 19.964396, 22.470964>,  <15.001779, 19.645569, 22.636658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.826006, 19.964396, 22.470964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434193, 0.592164, 0.678836,
		0.786369, 0.118446, -0.606295,
		-0.439431, 0.797065, -0.414231,
		14.694177, 20.203514, 22.346695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.444822, 20.257929, 22.581997>,  <15.001779, 19.645569, 22.636658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.444822, 20.257929, 22.581997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.091406, 20.438202, 22.531025>,  <14.879355, 20.546366, 22.500441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.091406, 20.438202, 22.531025>,  <15.444822, 20.257929, 22.581997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.091406, 20.438202, 22.531025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344681, 0.809917, 0.474583,
		0.317095, 0.375391, -0.870938,
		-0.883542, 0.450683, -0.127431,
		14.826344, 20.573406, 22.492796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.733662, 20.882816, 22.613401>,  <15.444822, 20.257929, 22.581997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.733662, 20.882816, 22.613401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338473, 20.942381, 22.630077>,  <15.101360, 20.978119, 22.640083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.338473, 20.942381, 22.630077>,  <15.733662, 20.882816, 22.613401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338473, 20.942381, 22.630077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151529, 0.878516, 0.453043,
		0.030838, 0.453910, -0.890514,
		-0.987972, 0.148910, 0.041689,
		15.042082, 20.987053, 22.642584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.651693, 21.599905, 22.499071>,  <15.733662, 20.882816, 22.613401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.651693, 21.599905, 22.499071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.333965, 21.479807, 22.710318>,  <15.143329, 21.407747, 22.837065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.333965, 21.479807, 22.710318>,  <15.651693, 21.599905, 22.499071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.333965, 21.479807, 22.710318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153990, 0.741424, 0.653129,
		-0.587659, 0.600118, -0.542693,
		-0.794320, -0.300247, 0.528117,
		15.095670, 21.389732, 22.868753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.079659, 22.174498, 22.584101>,  <15.651693, 21.599905, 22.499071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.079659, 22.174498, 22.584101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.027151, 21.917837, 22.886374>,  <14.995646, 21.763842, 23.067738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.027151, 21.917837, 22.886374>,  <15.079659, 22.174498, 22.584101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.027151, 21.917837, 22.886374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219501, 0.724544, 0.653341,
		-0.966740, 0.251637, 0.045732,
		-0.131271, -0.641649, 0.755681,
		14.987770, 21.725342, 23.113077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733407, 22.544140, 23.059811>,  <15.079659, 22.174498, 22.584101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733407, 22.544140, 23.059811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.851630, 22.244352, 23.296774>,  <14.922564, 22.064480, 23.438951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.851630, 22.244352, 23.296774>,  <14.733407, 22.544140, 23.059811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.851630, 22.244352, 23.296774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290595, 0.661256, 0.691589,
		-0.910055, -0.032254, 0.413230,
		0.295557, -0.749467, 0.592407,
		14.940297, 22.019512, 23.474497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.561542, 22.752256, 23.782320>,  <14.733407, 22.544140, 23.059811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.561542, 22.752256, 23.782320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.863085, 22.489445, 23.783489>,  <15.044011, 22.331758, 23.784191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.863085, 22.489445, 23.783489>,  <14.561542, 22.752256, 23.782320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.863085, 22.489445, 23.783489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520790, 0.600243, 0.607031,
		-0.400593, -0.456093, 0.794672,
		0.753859, -0.657030, 0.002925,
		15.089243, 22.292336, 23.784367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.416961, 22.486122, 24.499447>,  <14.561542, 22.752256, 23.782320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.416961, 22.486122, 24.499447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.800632, 22.419855, 24.407770>,  <15.030835, 22.380095, 24.352764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.800632, 22.419855, 24.407770>,  <14.416961, 22.486122, 24.499447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800632, 22.419855, 24.407770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282255, 0.510578, 0.812183,
		-0.017532, -0.843720, 0.536497,
		0.959179, -0.165668, -0.229192,
		15.088387, 22.370155, 24.339012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.740910, 22.293310, 25.129005>,  <14.416961, 22.486122, 24.499447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.740910, 22.293310, 25.129005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.033221, 22.410295, 24.882290>,  <15.208609, 22.480486, 24.734261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.033221, 22.410295, 24.882290>,  <14.740910, 22.293310, 25.129005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.033221, 22.410295, 24.882290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443410, 0.483597, 0.754667,
		0.518991, -0.824984, 0.223719,
		0.730778, 0.292466, -0.616788,
		15.252455, 22.498035, 24.697254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.303460, 22.253885, 25.476824>,  <14.740910, 22.293310, 25.129005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.303460, 22.253885, 25.476824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.413790, 22.503696, 25.184553>,  <15.479987, 22.653584, 25.009192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.413790, 22.503696, 25.184553>,  <15.303460, 22.253885, 25.476824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.413790, 22.503696, 25.184553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442108, 0.592556, 0.673363,
		0.853500, -0.508767, -0.112667,
		0.275823, 0.624526, -0.730677,
		15.496537, 22.691053, 24.965349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.035372, 22.317318, 25.549374>,  <15.303460, 22.253885, 25.476824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.035372, 22.317318, 25.549374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941401, 22.641115, 25.334141>,  <15.885018, 22.835394, 25.205002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.941401, 22.641115, 25.334141>,  <16.035372, 22.317318, 25.549374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.941401, 22.641115, 25.334141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607094, 0.554518, 0.569163,
		0.759109, -0.192955, -0.621709,
		-0.234926, 0.809492, -0.538081,
		15.870923, 22.883963, 25.172716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688152, 22.600208, 25.359118>,  <16.035372, 22.317318, 25.549374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688152, 22.600208, 25.359118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.399746, 22.877316, 25.353346>,  <16.226702, 23.043579, 25.349882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.399746, 22.877316, 25.353346>,  <16.688152, 22.600208, 25.359118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.399746, 22.877316, 25.353346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530866, 0.565660, 0.631039,
		0.445325, 0.447330, -0.775617,
		-0.721018, 0.692766, -0.014430,
		16.183441, 23.085146, 25.349016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.057014, 23.212780, 25.162573>,  <16.688152, 22.600208, 25.359118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.057014, 23.212780, 25.162573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.718695, 23.323992, 25.344706>,  <16.515703, 23.390718, 25.453985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.718695, 23.323992, 25.344706>,  <17.057014, 23.212780, 25.162573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.718695, 23.323992, 25.344706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512077, 0.662515, 0.546672,
		-0.149672, 0.695539, -0.702726,
		-0.845798, 0.278029, 0.455329,
		16.464954, 23.407400, 25.481304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971369, 24.027571, 25.125784>,  <17.057014, 23.212780, 25.162573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971369, 24.027571, 25.125784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.770771, 23.869638, 25.433710>,  <16.650414, 23.774879, 25.618465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.770771, 23.869638, 25.433710>,  <16.971369, 24.027571, 25.125784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.770771, 23.869638, 25.433710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528313, 0.564869, 0.633884,
		-0.685121, 0.724591, -0.074684,
		-0.501493, -0.394831, 0.769814,
		16.620323, 23.751190, 25.664654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.017530, 24.501179, 25.612156>,  <16.971369, 24.027571, 25.125784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.017530, 24.501179, 25.612156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.888435, 24.196318, 25.836643>,  <16.810978, 24.013401, 25.971336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.888435, 24.196318, 25.836643>,  <17.017530, 24.501179, 25.612156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.888435, 24.196318, 25.836643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477719, 0.380711, 0.791735,
		-0.817084, 0.523627, 0.241224,
		-0.322737, -0.762151, 0.561219,
		16.791615, 23.967672, 26.005009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.819059, 24.818989, 26.217054>,  <17.017530, 24.501179, 25.612156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.819059, 24.818989, 26.217054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.890860, 24.439449, 26.320951>,  <16.933939, 24.211725, 26.383289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.890860, 24.439449, 26.320951>,  <16.819059, 24.818989, 26.217054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.890860, 24.439449, 26.320951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509928, 0.315534, 0.800257,
		-0.841281, -0.011196, 0.540483,
		0.179500, -0.948848, 0.259744,
		16.944710, 24.154795, 26.398874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798376, 24.777832, 26.871767>,  <16.819059, 24.818989, 26.217054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.798376, 24.777832, 26.871767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.006397, 24.438992, 26.828009>,  <17.131210, 24.235687, 26.801754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.006397, 24.438992, 26.828009>,  <16.798376, 24.777832, 26.871767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.006397, 24.438992, 26.828009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465748, 0.173880, 0.867666,
		-0.715979, -0.502182, 0.484962,
		0.520052, -0.847100, -0.109396,
		17.162413, 24.184862, 26.795191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.764521, 24.413261, 27.525824>,  <16.798376, 24.777832, 26.871767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.764521, 24.413261, 27.525824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.090916, 24.279900, 27.336931>,  <17.286753, 24.199883, 27.223595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.090916, 24.279900, 27.336931>,  <16.764521, 24.413261, 27.525824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.090916, 24.279900, 27.336931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524673, 0.084244, 0.847125,
		-0.242653, -0.939012, 0.243671,
		0.815989, -0.333405, -0.472232,
		17.335712, 24.179878, 27.195261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121725, 23.913733, 27.964716>,  <16.764521, 24.413261, 27.525824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121725, 23.913733, 27.964716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.419256, 23.993210, 27.709454>,  <17.597775, 24.040895, 27.556297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.419256, 23.993210, 27.709454>,  <17.121725, 23.913733, 27.964716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.419256, 23.993210, 27.709454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646891, 0.026101, 0.762136,
		0.168088, -0.979714, -0.109119,
		0.743827, 0.198694, -0.638155,
		17.642405, 24.052818, 27.518007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.665274, 23.444426, 28.181793>,  <17.121725, 23.913733, 27.964716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.665274, 23.444426, 28.181793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836866, 23.744688, 27.980799>,  <17.939823, 23.924845, 27.860203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.836866, 23.744688, 27.980799>,  <17.665274, 23.444426, 28.181793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.836866, 23.744688, 27.980799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761492, -0.001293, 0.648173,
		0.485905, -0.660693, -0.572172,
		0.428983, 0.750655, -0.502485,
		17.965561, 23.969885, 27.830053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.290735, 23.259979, 28.057758>,  <17.665274, 23.444426, 28.181793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.290735, 23.259979, 28.057758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.304705, 23.658789, 28.030266>,  <18.313086, 23.898075, 28.013769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.304705, 23.658789, 28.030266>,  <18.290735, 23.259979, 28.057758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.304705, 23.658789, 28.030266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793492, 0.014149, 0.608416,
		0.607578, -0.075787, -0.790636,
		0.034924, 0.997024, -0.068733,
		18.315182, 23.957895, 28.009645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.069880, 23.472719, 28.119928>,  <18.290735, 23.259979, 28.057758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.069880, 23.472719, 28.119928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.871323, 23.810373, 28.200956>,  <18.752188, 24.012966, 28.249573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.871323, 23.810373, 28.200956>,  <19.069880, 23.472719, 28.119928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.871323, 23.810373, 28.200956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637666, 0.196223, 0.744902,
		0.589048, 0.498934, -0.635678,
		-0.496392, 0.844133, 0.202569,
		18.722404, 24.063614, 28.261726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.604855, 23.998377, 28.204884>,  <19.069880, 23.472719, 28.119928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.604855, 23.998377, 28.204884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.272684, 24.128336, 28.385920>,  <19.073381, 24.206312, 28.494541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.272684, 24.128336, 28.385920>,  <19.604855, 23.998377, 28.204884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.272684, 24.128336, 28.385920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498634, 0.071067, 0.863895,
		0.248515, 0.943075, -0.221021,
		-0.830425, 0.324899, 0.452588,
		19.023558, 24.225805, 28.521696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.816097, 24.544392, 28.658566>,  <19.604855, 23.998377, 28.204884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.816097, 24.544392, 28.658566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.450184, 24.524223, 28.818882>,  <19.230637, 24.512123, 28.915071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.450184, 24.524223, 28.818882>,  <19.816097, 24.544392, 28.658566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.450184, 24.524223, 28.818882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403440, -0.064244, 0.912748,
		-0.020272, 0.996660, 0.079110,
		-0.914781, -0.050419, 0.400790,
		19.175749, 24.509098, 28.939119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.736588, 25.134617, 29.155855>,  <19.816097, 24.544392, 28.658566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.736588, 25.134617, 29.155855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.465065, 24.865047, 29.272505>,  <19.302151, 24.703306, 29.342495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.465065, 24.865047, 29.272505>,  <19.736588, 25.134617, 29.155855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.465065, 24.865047, 29.272505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327025, 0.078136, 0.941780,
		-0.657475, 0.734656, 0.167351,
		-0.678809, -0.673925, 0.291623,
		19.261423, 24.662870, 29.359991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.392895, 25.426229, 29.693624>,  <19.736588, 25.134617, 29.155855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.392895, 25.426229, 29.693624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.317398, 25.037264, 29.748457>,  <19.272100, 24.803885, 29.781357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.317398, 25.037264, 29.748457>,  <19.392895, 25.426229, 29.693624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.317398, 25.037264, 29.748457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400224, 0.051305, 0.914981,
		-0.896771, 0.227559, 0.379499,
		-0.188742, -0.972412, 0.137083,
		19.260777, 24.745541, 29.789581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.977476, 25.235714, 30.310068>,  <19.392895, 25.426229, 29.693624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.977476, 25.235714, 30.310068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.172516, 24.890528, 30.257103>,  <19.289539, 24.683414, 30.225325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.172516, 24.890528, 30.257103>,  <18.977476, 25.235714, 30.310068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.172516, 24.890528, 30.257103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237881, -0.014608, 0.971184,
		-0.840035, -0.505047, 0.198160,
		0.487599, -0.862968, -0.132413,
		19.318796, 24.631638, 30.217379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.816225, 24.702003, 30.798292>,  <18.977476, 25.235714, 30.310068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.816225, 24.702003, 30.798292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.193098, 24.656141, 30.672342>,  <19.419222, 24.628624, 30.596771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.193098, 24.656141, 30.672342>,  <18.816225, 24.702003, 30.798292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.193098, 24.656141, 30.672342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311682, -0.045267, 0.949108,
		-0.123075, -0.992373, -0.006914,
		0.942182, -0.114657, -0.314876,
		19.475752, 24.621744, 30.577879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199146, 23.951172, 30.906916>,  <18.816225, 24.702003, 30.798292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199146, 23.951172, 30.906916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.382633, 24.304461, 30.945898>,  <19.492725, 24.516434, 30.969288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.382633, 24.304461, 30.945898>,  <19.199146, 23.951172, 30.906916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.382633, 24.304461, 30.945898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022428, -0.121152, 0.992380,
		0.888300, -0.453035, -0.075383,
		0.458715, 0.883223, 0.097458,
		19.520248, 24.569427, 30.975136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.713549, 23.835205, 31.511641>,  <19.199146, 23.951172, 30.906916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.713549, 23.835205, 31.511641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.643316, 24.225924, 31.462593>,  <19.601177, 24.460356, 31.433165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.643316, 24.225924, 31.462593>,  <19.713549, 23.835205, 31.511641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.643316, 24.225924, 31.462593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123678, 0.145455, 0.981604,
		0.976665, 0.157188, -0.146347,
		-0.175583, 0.976798, -0.122620,
		19.590641, 24.518963, 31.425806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.152105, 23.789459, 30.848505>,  <19.713549, 23.835205, 31.511641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.152105, 23.789459, 30.848505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.525026, 23.695837, 30.738207>,  <20.748779, 23.639664, 30.672028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.525026, 23.695837, 30.738207>,  <20.152105, 23.789459, 30.848505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.525026, 23.695837, 30.738207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360277, 0.533763, 0.765048,
		-0.031881, -0.812598, 0.581952,
		0.932301, -0.234054, -0.275744,
		20.804716, 23.625622, 30.655483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.534943, 23.532906, 31.463129>,  <20.152105, 23.789459, 30.848505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.534943, 23.532906, 31.463129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794598, 23.685572, 31.199932>,  <20.950390, 23.777172, 31.042015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.794598, 23.685572, 31.199932>,  <20.534943, 23.532906, 31.463129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.794598, 23.685572, 31.199932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357137, 0.610828, 0.706642,
		0.671619, -0.693701, 0.260205,
		0.649139, 0.381665, -0.657990,
		20.989340, 23.800072, 31.002535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.613543, 23.543209, 32.224377>,  <20.534943, 23.532906, 31.463129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.613543, 23.543209, 32.224377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.008278, 23.570211, 32.283150>,  <21.245119, 23.586412, 32.318413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.008278, 23.570211, 32.283150>,  <20.613543, 23.543209, 32.224377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.008278, 23.570211, 32.283150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154536, -0.126359, -0.979873,
		-0.047582, 0.989685, -0.135128,
		0.986841, 0.067507, 0.146930,
		21.304331, 23.590464, 32.327229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.907042, 24.184359, 31.940973>,  <20.613543, 23.543209, 32.224377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.907042, 24.184359, 31.940973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.152750, 23.869122, 31.956850>,  <21.300175, 23.679979, 31.966377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.152750, 23.869122, 31.956850>,  <20.907042, 24.184359, 31.940973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.152750, 23.869122, 31.956850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018919, -0.035581, -0.999188,
		0.788867, 0.614525, -0.006947,
		0.614273, -0.788095, 0.039694,
		21.337032, 23.632692, 31.968758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.370592, 24.268503, 31.396061>,  <20.907042, 24.184359, 31.940973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.370592, 24.268503, 31.396061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.342108, 23.882685, 31.497711>,  <21.325018, 23.651194, 31.558701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.342108, 23.882685, 31.497711>,  <21.370592, 24.268503, 31.396061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.342108, 23.882685, 31.497711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235062, -0.231367, -0.944042,
		0.969368, -0.126961, -0.210252,
		-0.071211, -0.964546, 0.254124,
		21.320744, 23.593321, 31.573948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.564682, 23.964762, 30.702662>,  <21.370592, 24.268503, 31.396061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.564682, 23.964762, 30.702662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.402117, 23.701033, 30.955683>,  <21.304577, 23.542795, 31.107496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.402117, 23.701033, 30.955683>,  <21.564682, 23.964762, 30.702662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.402117, 23.701033, 30.955683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142312, -0.638179, -0.756621,
		0.902539, -0.397520, 0.165535,
		-0.406413, -0.659322, 0.632553,
		21.280193, 23.503237, 31.145449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.773487, 23.267355, 30.639122>,  <21.564682, 23.964762, 30.702662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.773487, 23.267355, 30.639122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.400667, 23.255653, 30.783581>,  <21.176975, 23.248632, 30.870256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.400667, 23.255653, 30.783581>,  <21.773487, 23.267355, 30.639122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.400667, 23.255653, 30.783581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311814, -0.442878, -0.840613,
		0.184535, -0.896104, 0.403663,
		-0.932051, -0.029255, 0.361145,
		21.121052, 23.246878, 30.891924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.401485, 22.519312, 30.797337>,  <21.773487, 23.267355, 30.639122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.401485, 22.519312, 30.797337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.186689, 22.817114, 30.638664>,  <21.057812, 22.995794, 30.543461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.186689, 22.817114, 30.638664>,  <21.401485, 22.519312, 30.797337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.186689, 22.817114, 30.638664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255474, -0.591669, -0.764631,
		-0.803975, -0.309256, 0.507921,
		-0.536988, 0.744506, -0.396680,
		21.025593, 23.040466, 30.519661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.745897, 22.349827, 30.675062>,  <21.401485, 22.519312, 30.797337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.745897, 22.349827, 30.675062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.785044, 22.640226, 30.402782>,  <20.808533, 22.814465, 30.239414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.785044, 22.640226, 30.402782>,  <20.745897, 22.349827, 30.675062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.785044, 22.640226, 30.402782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331660, -0.621090, -0.710105,
		-0.938309, 0.295258, 0.179999,
		0.097868, 0.725996, -0.680699,
		20.814404, 22.858025, 30.198572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.220743, 22.289167, 30.206120>,  <20.745897, 22.349827, 30.675062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.220743, 22.289167, 30.206120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.472582, 22.502346, 29.979996>,  <20.623686, 22.630253, 29.844322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.472582, 22.502346, 29.979996>,  <20.220743, 22.289167, 30.206120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.472582, 22.502346, 29.979996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375912, -0.427817, -0.821987,
		-0.679925, 0.730027, -0.069012,
		0.629597, 0.532947, -0.565310,
		20.661461, 22.662230, 29.810402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.847160, 22.374580, 29.722725>,  <20.220743, 22.289167, 30.206120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.847160, 22.374580, 29.722725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.199612, 22.471476, 29.560276>,  <20.411081, 22.529613, 29.462807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.199612, 22.471476, 29.560276>,  <19.847160, 22.374580, 29.722725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.199612, 22.471476, 29.560276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222647, -0.545162, -0.808225,
		-0.417186, 0.802571, -0.426423,
		0.881127, 0.242238, -0.406123,
		20.463949, 22.544147, 29.438438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.755255, 22.391354, 29.016563>,  <19.847160, 22.374580, 29.722725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.755255, 22.391354, 29.016563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.154459, 22.368166, 29.026495>,  <20.393982, 22.354254, 29.032454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.154459, 22.368166, 29.026495>,  <19.755255, 22.391354, 29.016563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.154459, 22.368166, 29.026495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024686, -0.721436, -0.692041,
		0.058031, 0.690050, -0.721431,
		0.998010, -0.057968, 0.024831,
		20.453861, 22.350775, 29.033945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.071939, 22.388220, 28.280190>,  <19.755255, 22.391354, 29.016563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.071939, 22.388220, 28.280190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.345387, 22.192812, 28.497082>,  <20.509455, 22.075567, 28.627218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.345387, 22.192812, 28.497082>,  <20.071939, 22.388220, 28.280190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.345387, 22.192812, 28.497082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011651, -0.735547, -0.677373,
		0.729747, 0.469382, -0.497141,
		0.683618, -0.488519, 0.542233,
		20.550472, 22.046257, 28.659752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.450586, 22.027391, 27.836868>,  <20.071939, 22.388220, 28.280190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.450586, 22.027391, 27.836868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.627848, 21.846201, 28.146301>,  <20.734203, 21.737486, 28.331961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.627848, 21.846201, 28.146301>,  <20.450586, 22.027391, 27.836868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.627848, 21.846201, 28.146301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183331, -0.798909, -0.572830,
		0.877500, 0.395672, -0.270993,
		0.443152, -0.452977, 0.773582,
		20.760794, 21.710308, 28.378376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.095680, 21.762249, 27.614479>,  <20.450586, 22.027391, 27.836868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.095680, 21.762249, 27.614479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.001259, 21.549789, 27.939972>,  <20.944607, 21.422314, 28.135267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.001259, 21.549789, 27.939972>,  <21.095680, 21.762249, 27.614479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.001259, 21.549789, 27.939972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110704, -0.846643, -0.520519,
		0.965414, -0.032786, 0.258652,
		-0.236052, -0.531150, 0.813732,
		20.930443, 21.390444, 28.184092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.477594, 21.145008, 27.615799>,  <21.095680, 21.762249, 27.614479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.477594, 21.145008, 27.615799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.166269, 21.058874, 27.851717>,  <20.979473, 21.007195, 27.993267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.166269, 21.058874, 27.851717>,  <21.477594, 21.145008, 27.615799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.166269, 21.058874, 27.851717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110578, -0.877659, -0.466355,
		0.618061, -0.428189, 0.659284,
		-0.778314, -0.215334, 0.589795,
		20.932775, 20.994274, 28.028656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.656767, 20.561893, 27.924210>,  <21.477594, 21.145008, 27.615799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.656767, 20.561893, 27.924210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.265673, 20.579704, 28.006235>,  <21.031015, 20.590391, 28.055450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.265673, 20.579704, 28.006235>,  <21.656767, 20.561893, 27.924210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.265673, 20.579704, 28.006235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151421, -0.826268, -0.542544,
		0.145281, -0.561515, 0.814613,
		-0.977735, 0.044528, 0.205066,
		20.972353, 20.593063, 28.067755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.397526, 19.931017, 28.350107>,  <21.656767, 20.561893, 27.924210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.397526, 19.931017, 28.350107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.122484, 20.100189, 28.114029>,  <20.957458, 20.201693, 27.972382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.122484, 20.100189, 28.114029>,  <21.397526, 19.931017, 28.350107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.122484, 20.100189, 28.114029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178384, -0.886332, -0.427311,
		-0.703831, -0.188540, 0.684890,
		-0.687605, 0.422928, -0.590196,
		20.916203, 20.227068, 27.936970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.864542, 19.488485, 28.332037>,  <21.397526, 19.931017, 28.350107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.864542, 19.488485, 28.332037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.793356, 19.739693, 28.029007>,  <20.750645, 19.890417, 27.847189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.793356, 19.739693, 28.029007>,  <20.864542, 19.488485, 28.332037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.793356, 19.739693, 28.029007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358045, -0.758422, -0.544610,
		-0.916587, 0.174323, 0.359833,
		-0.177967, 0.628019, -0.757575,
		20.739965, 19.928099, 27.801735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.091488, 19.434029, 28.089949>,  <20.864542, 19.488485, 28.332037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.091488, 19.434029, 28.089949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.322094, 19.573004, 27.794132>,  <20.460457, 19.656389, 27.616642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.322094, 19.573004, 27.794132>,  <20.091488, 19.434029, 28.089949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.322094, 19.573004, 27.794132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298944, -0.752652, -0.586642,
		-0.760436, 0.559289, -0.330051,
		0.576516, 0.347436, -0.739539,
		20.495049, 19.677235, 27.572271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.601715, 19.499361, 27.563251>,  <20.091488, 19.434029, 28.089949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.601715, 19.499361, 27.563251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.972498, 19.506491, 27.413355>,  <20.194967, 19.510769, 27.323416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.972498, 19.506491, 27.413355>,  <19.601715, 19.499361, 27.563251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.972498, 19.506491, 27.413355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289014, -0.602965, -0.743575,
		-0.239210, 0.797569, -0.553772,
		0.926957, 0.017823, -0.374743,
		20.250586, 19.511837, 27.300932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.570480, 19.724094, 26.888023>,  <19.601715, 19.499361, 27.563251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.570480, 19.724094, 26.888023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.899988, 19.499035, 26.915838>,  <20.097692, 19.364000, 26.932528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.899988, 19.499035, 26.915838>,  <19.570480, 19.724094, 26.888023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.899988, 19.499035, 26.915838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249606, -0.470078, -0.846595,
		0.509023, 0.680041, -0.527675,
		0.823767, -0.562647, 0.069538,
		20.147118, 19.330240, 26.936699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.585714, 19.489658, 26.262379>,  <19.570480, 19.724094, 26.888023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.585714, 19.489658, 26.262379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.849627, 19.227959, 26.410240>,  <20.007975, 19.070938, 26.498957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.849627, 19.227959, 26.410240>,  <19.585714, 19.489658, 26.262379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.849627, 19.227959, 26.410240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269368, -0.665139, -0.696441,
		0.701519, 0.359926, -0.615081,
		0.659782, -0.654250, 0.369655,
		20.047562, 19.031683, 26.521137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.897896, 19.185829, 25.587990>,  <19.585714, 19.489658, 26.262379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.897896, 19.185829, 25.587990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.963865, 18.934334, 25.891960>,  <20.003447, 18.783436, 26.074343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.963865, 18.934334, 25.891960>,  <19.897896, 19.185829, 25.587990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.963865, 18.934334, 25.891960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222385, -0.774340, -0.592404,
		0.960908, -0.071295, -0.267530,
		0.164924, -0.628741, 0.759925,
		20.013342, 18.745712, 26.119938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.271078, 18.580988, 25.329678>,  <19.897896, 19.185829, 25.587990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.271078, 18.580988, 25.329678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.095417, 18.446383, 25.662882>,  <19.990021, 18.365620, 25.862804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.095417, 18.446383, 25.662882>,  <20.271078, 18.580988, 25.329678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.095417, 18.446383, 25.662882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342596, -0.794411, -0.501536,
		0.830526, -0.505636, 0.233578,
		-0.439152, -0.336516, 0.833008,
		19.963671, 18.345428, 25.912785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.402374, 17.873301, 25.110653>,  <20.271078, 18.580988, 25.329678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.402374, 17.873301, 25.110653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.171740, 17.850441, 25.436666>,  <20.033358, 17.836725, 25.632275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.171740, 17.850441, 25.436666>,  <20.402374, 17.873301, 25.110653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.171740, 17.850441, 25.436666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433255, -0.824362, -0.364304,
		0.692703, -0.563170, 0.450558,
		-0.576588, -0.057148, 0.815034,
		19.998764, 17.833296, 25.681177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.459496, 17.227652, 25.432556>,  <20.402374, 17.873301, 25.110653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.459496, 17.227652, 25.432556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.095280, 17.334921, 25.558416>,  <19.876751, 17.399282, 25.633932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.095280, 17.334921, 25.558416>,  <20.459496, 17.227652, 25.432556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.095280, 17.334921, 25.558416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399071, -0.768932, -0.499486,
		0.107997, -0.580368, 0.807161,
		-0.910538, 0.268172, 0.314650,
		19.822119, 17.415373, 25.652811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.153019, 16.621275, 25.597439>,  <20.459496, 17.227652, 25.432556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.153019, 16.621275, 25.597439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.851282, 16.871920, 25.519136>,  <19.670240, 17.022306, 25.472155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.851282, 16.871920, 25.519136>,  <20.153019, 16.621275, 25.597439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.851282, 16.871920, 25.519136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421759, -0.691096, -0.586946,
		-0.503074, -0.360198, 0.785604,
		-0.754344, 0.626613, -0.195756,
		19.624979, 17.059904, 25.460409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.553846, 16.239155, 25.486837>,  <20.153019, 16.621275, 25.597439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.553846, 16.239155, 25.486837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420145, 16.574949, 25.315472>,  <19.339924, 16.776426, 25.212652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.420145, 16.574949, 25.315472>,  <19.553846, 16.239155, 25.486837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.420145, 16.574949, 25.315472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454578, -0.541790, -0.706981,
		-0.825611, -0.041564, 0.562707,
		-0.334254, 0.839485, -0.428414,
		19.319868, 16.826796, 25.186947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.889465, 16.072004, 25.250158>,  <19.553846, 16.239155, 25.486837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.889465, 16.072004, 25.250158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.970507, 16.401913, 25.038990>,  <19.019131, 16.599857, 24.912289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.970507, 16.401913, 25.038990>,  <18.889465, 16.072004, 25.250158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.970507, 16.401913, 25.038990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454991, -0.398095, -0.796557,
		-0.867142, 0.401585, 0.294609,
		0.202603, 0.824772, -0.527923,
		19.031288, 16.649343, 24.880613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.302288, 16.228439, 24.923918>,  <18.889465, 16.072004, 25.250158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.302288, 16.228439, 24.923918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.568010, 16.432142, 24.705065>,  <18.727444, 16.554363, 24.573753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.568010, 16.432142, 24.705065>,  <18.302288, 16.228439, 24.923918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.568010, 16.432142, 24.705065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487119, -0.260238, -0.833662,
		-0.566933, 0.820325, 0.075191,
		0.664306, 0.509257, -0.547133,
		18.767302, 16.584919, 24.540924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.853506, 16.760799, 24.437433>,  <18.302288, 16.228439, 24.923918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.853506, 16.760799, 24.437433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.219051, 16.697069, 24.288052>,  <18.438379, 16.658831, 24.198421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.219051, 16.697069, 24.288052>,  <17.853506, 16.760799, 24.437433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.219051, 16.697069, 24.288052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390250, -0.090804, -0.916220,
		0.112065, 0.983041, -0.145159,
		0.913863, -0.159324, -0.373456,
		18.493210, 16.649271, 24.176014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.926313, 17.110731, 23.806578>,  <17.853506, 16.760799, 24.437433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.926313, 17.110731, 23.806578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204073, 16.824659, 23.774748>,  <18.370728, 16.653017, 23.755650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204073, 16.824659, 23.774748>,  <17.926313, 17.110731, 23.806578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.204073, 16.824659, 23.774748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421841, -0.314987, -0.850196,
		0.582978, 0.623940, -0.520418,
		0.694397, -0.715179, -0.079573,
		18.412392, 16.610106, 23.750875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.273432, 17.108940, 23.212831>,  <17.926313, 17.110731, 23.806578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.273432, 17.108940, 23.212831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.290836, 16.723186, 23.317190>,  <18.301279, 16.491734, 23.379807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.290836, 16.723186, 23.317190>,  <18.273432, 17.108940, 23.212831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.290836, 16.723186, 23.317190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438345, -0.253095, -0.862437,
		0.897753, -0.076839, -0.433745,
		0.043510, -0.964385, 0.260899,
		18.303890, 16.433870, 23.395460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.256611, 16.836622, 22.594898>,  <18.273432, 17.108940, 23.212831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.256611, 16.836622, 22.594898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.163582, 16.530342, 22.834768>,  <18.107763, 16.346573, 22.978689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.163582, 16.530342, 22.834768>,  <18.256611, 16.836622, 22.594898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.163582, 16.530342, 22.834768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665309, -0.324491, -0.672361,
		0.709417, -0.555342, -0.433961,
		-0.232574, -0.765702, 0.599674,
		18.093809, 16.300631, 23.014671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333975, 16.260372, 22.322033>,  <18.256611, 16.836622, 22.594898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333975, 16.260372, 22.322033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.073862, 16.128298, 22.595707>,  <17.917795, 16.049053, 22.759912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.073862, 16.128298, 22.595707>,  <18.333975, 16.260372, 22.322033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.073862, 16.128298, 22.595707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598262, -0.332478, -0.729068,
		0.468206, -0.883422, 0.018666,
		-0.650281, -0.330187, 0.684186,
		17.878778, 16.029242, 22.800962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.132345, 15.728405, 22.084185>,  <18.333975, 16.260372, 22.322033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.132345, 15.728405, 22.084185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.848089, 15.779398, 22.360949>,  <17.677536, 15.809994, 22.527008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.848089, 15.779398, 22.360949>,  <18.132345, 15.728405, 22.084185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.848089, 15.779398, 22.360949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659406, -0.463583, -0.591840,
		0.245310, -0.876835, 0.413502,
		-0.710639, 0.127482, 0.691912,
		17.634897, 15.817642, 22.568521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.775175, 15.157520, 22.194736>,  <18.132345, 15.728405, 22.084185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.775175, 15.157520, 22.194736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.486486, 15.388453, 22.347475>,  <17.313274, 15.527012, 22.439119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.486486, 15.388453, 22.347475>,  <17.775175, 15.157520, 22.194736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.486486, 15.388453, 22.347475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677629, -0.476774, -0.559915,
		-0.141201, -0.662854, 0.735314,
		-0.721721, 0.577331, 0.381848,
		17.269970, 15.561652, 22.462029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.219650, 14.658221, 22.385044>,  <17.775175, 15.157520, 22.194736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.219650, 14.658221, 22.385044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.063576, 15.025522, 22.358017>,  <16.969931, 15.245903, 22.341801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.063576, 15.025522, 22.358017>,  <17.219650, 14.658221, 22.385044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.063576, 15.025522, 22.358017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799080, -0.374175, -0.470600,
		-0.457412, -0.129630, 0.879756,
		-0.390187, 0.918253, -0.067568,
		16.946520, 15.300998, 22.337748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.516060, 14.595607, 22.509153>,  <17.219650, 14.658221, 22.385044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.516060, 14.595607, 22.509153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.549440, 14.949585, 22.325891>,  <16.569468, 15.161972, 22.215935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.549440, 14.949585, 22.325891>,  <16.516060, 14.595607, 22.509153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549440, 14.949585, 22.325891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759842, -0.240952, -0.603806,
		-0.644730, 0.398514, 0.652311,
		0.083450, 0.884945, -0.458157,
		16.574474, 15.215069, 22.188444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.798927, 14.788095, 22.454115>,  <16.516060, 14.595607, 22.509153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.798927, 14.788095, 22.454115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.992454, 15.039943, 22.210968>,  <16.108570, 15.191051, 22.065079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.992454, 15.039943, 22.210968>,  <15.798927, 14.788095, 22.454115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.992454, 15.039943, 22.210968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733089, -0.087816, -0.674439,
		-0.478020, 0.771926, 0.419079,
		0.483815, 0.629618, -0.607869,
		16.137598, 15.228828, 22.028608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326814, 15.274282, 22.243662>,  <15.798927, 14.788095, 22.454115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.326814, 15.274282, 22.243662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.617141, 15.280731, 21.968582>,  <15.791337, 15.284600, 21.803534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.617141, 15.280731, 21.968582>,  <15.326814, 15.274282, 22.243662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.617141, 15.280731, 21.968582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677421, 0.190489, -0.710503,
		0.119545, 0.981557, 0.149181,
		0.725817, 0.016122, -0.687699,
		15.834886, 15.285567, 21.762272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.333351, 15.920423, 21.913828>,  <15.326814, 15.274282, 22.243662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.333351, 15.920423, 21.913828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.527723, 15.693194, 21.648146>,  <15.644346, 15.556857, 21.488737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.527723, 15.693194, 21.648146>,  <15.333351, 15.920423, 21.913828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.527723, 15.693194, 21.648146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772959, 0.075376, -0.629962,
		0.407928, 0.819520, -0.402468,
		0.485930, -0.568071, -0.664204,
		15.673502, 15.522773, 21.448885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.406189, 16.252163, 21.295748>,  <15.333351, 15.920423, 21.913828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.406189, 16.252163, 21.295748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.430886, 15.874224, 21.167093>,  <15.445704, 15.647460, 21.089901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.430886, 15.874224, 21.167093>,  <15.406189, 16.252163, 21.295748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430886, 15.874224, 21.167093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587832, 0.226010, -0.776771,
		0.806623, 0.237029, -0.541458,
		0.061743, -0.944847, -0.321638,
		15.449409, 15.590770, 21.070602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.299490, 16.381039, 20.601782>,  <15.406189, 16.252163, 21.295748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.299490, 16.381039, 20.601782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.264915, 15.982836, 20.617256>,  <15.244171, 15.743915, 20.626541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.264915, 15.982836, 20.617256>,  <15.299490, 16.381039, 20.601782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.264915, 15.982836, 20.617256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638277, 0.025521, -0.769383,
		0.764939, -0.091194, -0.637615,
		-0.086436, -0.995506, 0.038685,
		15.238985, 15.684184, 20.628862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.364844, 16.130594, 19.927120>,  <15.299490, 16.381039, 20.601782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.364844, 16.130594, 19.927120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.200200, 15.819009, 20.116346>,  <15.101414, 15.632058, 20.229883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.200200, 15.819009, 20.116346>,  <15.364844, 16.130594, 19.927120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.200200, 15.819009, 20.116346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693004, -0.069591, -0.717567,
		0.591879, -0.623196, -0.511180,
		-0.411611, -0.778963, 0.473067,
		15.076716, 15.585320, 20.258266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.360458, 15.627211, 19.476238>,  <15.364844, 16.130594, 19.927120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.360458, 15.627211, 19.476238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.069897, 15.505744, 19.722855>,  <14.895559, 15.432864, 19.870825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.069897, 15.505744, 19.722855>,  <15.360458, 15.627211, 19.476238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.069897, 15.505744, 19.722855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615256, -0.112434, -0.780268,
		0.306262, -0.946121, -0.105160,
		-0.726405, -0.303667, 0.616541,
		14.851975, 15.414644, 19.907818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906477, 15.235859, 19.677309>,  <15.360458, 15.627211, 19.476238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906477, 15.235859, 19.677309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.075232, 15.161029, 19.322454>,  <16.176485, 15.116131, 19.109541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.075232, 15.161029, 19.322454>,  <15.906477, 15.235859, 19.677309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.075232, 15.161029, 19.322454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868382, -0.197891, 0.454699,
		-0.260620, -0.962207, 0.078967,
		0.421887, -0.187077, -0.887138,
		16.201797, 15.104906, 19.056313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.288324, 14.604035, 19.753584>,  <15.906477, 15.235859, 19.677309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.288324, 14.604035, 19.753584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.435066, 14.780979, 19.426233>,  <16.523111, 14.887145, 19.229824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.435066, 14.780979, 19.426233>,  <16.288324, 14.604035, 19.753584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.435066, 14.780979, 19.426233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929943, -0.150741, 0.335386,
		0.024999, -0.884079, -0.466669,
		0.366854, 0.442359, -0.818374,
		16.545122, 14.913687, 19.180721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938608, 14.221942, 19.388668>,  <16.288324, 14.604035, 19.753584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.938608, 14.221942, 19.388668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.970592, 14.607782, 19.288147>,  <16.989782, 14.839287, 19.227835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.970592, 14.607782, 19.288147>,  <16.938608, 14.221942, 19.388668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.970592, 14.607782, 19.288147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951821, 0.000990, 0.306652,
		0.296045, -0.263715, -0.918048,
		0.079960, 0.964600, -0.251302,
		16.994581, 14.897162, 19.212757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.637482, 14.273033, 19.173470>,  <16.938608, 14.221942, 19.388668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.637482, 14.273033, 19.173470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.559870, 14.663821, 19.208984>,  <17.513304, 14.898294, 19.230293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.559870, 14.663821, 19.208984>,  <17.637482, 14.273033, 19.173470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.559870, 14.663821, 19.208984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911591, 0.146122, 0.384252,
		0.362429, 0.155493, -0.918949,
		-0.194028, 0.976970, 0.088788,
		17.501661, 14.956912, 19.235620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.270151, 14.561036, 19.074249>,  <17.637482, 14.273033, 19.173470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.270151, 14.561036, 19.074249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.055157, 14.844614, 19.256899>,  <17.926161, 15.014761, 19.366489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.055157, 14.844614, 19.256899>,  <18.270151, 14.561036, 19.074249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.055157, 14.844614, 19.256899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808731, 0.279962, 0.517277,
		0.238883, 0.647316, -0.723821,
		-0.537484, 0.708945, 0.456626,
		17.893911, 15.057298, 19.393887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.651430, 15.171698, 19.077286>,  <18.270151, 14.561036, 19.074249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.651430, 15.171698, 19.077286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.405708, 15.265429, 19.378675>,  <18.258276, 15.321669, 19.559509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.405708, 15.265429, 19.378675>,  <18.651430, 15.171698, 19.077286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.405708, 15.265429, 19.378675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747665, 0.478111, 0.460876,
		-0.252247, 0.846463, -0.468905,
		-0.614303, 0.234330, 0.753473,
		18.221418, 15.335729, 19.604717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.803629, 15.843110, 19.163355>,  <18.651430, 15.171698, 19.077286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.803629, 15.843110, 19.163355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.604465, 15.766268, 19.501629>,  <18.484968, 15.720162, 19.704594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.604465, 15.766268, 19.501629>,  <18.803629, 15.843110, 19.163355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.604465, 15.766268, 19.501629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672435, 0.530281, 0.516365,
		-0.547648, 0.825771, -0.134852,
		-0.497908, -0.192106, 0.845685,
		18.455093, 15.708636, 19.755335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.826973, 16.511410, 19.527100>,  <18.803629, 15.843110, 19.163355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.826973, 16.511410, 19.527100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.740723, 16.226595, 19.794384>,  <18.688972, 16.055706, 19.954756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.740723, 16.226595, 19.794384>,  <18.826973, 16.511410, 19.527100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.740723, 16.226595, 19.794384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549039, 0.477489, 0.685974,
		-0.807504, 0.514787, 0.287979,
		-0.215624, -0.712038, 0.668212,
		18.676035, 16.012983, 19.994848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.602478, 16.719114, 20.248022>,  <18.826973, 16.511410, 19.527100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.602478, 16.719114, 20.248022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.774193, 16.362312, 20.304651>,  <18.877222, 16.148232, 20.338629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.774193, 16.362312, 20.304651>,  <18.602478, 16.719114, 20.248022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.774193, 16.362312, 20.304651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738524, 0.436922, 0.513499,
		-0.519899, -0.115882, 0.846331,
		0.429286, -0.892004, 0.141574,
		18.902979, 16.094711, 20.347124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.959822, 16.844908, 20.759727>,  <18.602478, 16.719114, 20.248022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.959822, 16.844908, 20.759727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.103024, 16.477516, 20.692514>,  <19.188944, 16.257082, 20.652187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.103024, 16.477516, 20.692514>,  <18.959822, 16.844908, 20.759727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.103024, 16.477516, 20.692514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754598, 0.178612, 0.631411,
		-0.549924, -0.352843, 0.757025,
		0.358002, -0.918477, -0.168032,
		19.210424, 16.201973, 20.642105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.028440, 16.459703, 21.403324>,  <18.959822, 16.844908, 20.759727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.028440, 16.459703, 21.403324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.268576, 16.290329, 21.131943>,  <19.412657, 16.188705, 20.969114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.268576, 16.290329, 21.131943>,  <19.028440, 16.459703, 21.403324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.268576, 16.290329, 21.131943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755211, 0.021011, 0.655144,
		-0.263155, -0.905683, 0.332396,
		0.600337, -0.423434, -0.678453,
		19.448677, 16.163300, 20.928408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.328590, 15.714303, 21.585823>,  <19.028440, 16.459703, 21.403324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.328590, 15.714303, 21.585823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.580002, 15.875836, 21.319929>,  <19.730848, 15.972756, 21.160393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.580002, 15.875836, 21.319929>,  <19.328590, 15.714303, 21.585823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.580002, 15.875836, 21.319929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742009, -0.055093, 0.668123,
		0.233187, -0.913172, -0.334274,
		0.628527, 0.403832, -0.664735,
		19.768560, 15.996986, 21.120508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.923744, 15.464602, 21.754698>,  <19.328590, 15.714303, 21.585823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.923744, 15.464602, 21.754698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.024296, 15.772128, 21.519503>,  <20.084627, 15.956644, 21.378386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.024296, 15.772128, 21.519503>,  <19.923744, 15.464602, 21.754698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.024296, 15.772128, 21.519503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791571, 0.186282, 0.581992,
		0.556977, -0.611734, -0.561746,
		0.251381, 0.768818, -0.587986,
		20.099710, 16.002773, 21.343107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.676630, 15.414477, 21.745420>,  <19.923744, 15.464602, 21.754698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.676630, 15.414477, 21.745420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.617464, 15.794894, 21.636875>,  <20.581964, 16.023144, 21.571749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.617464, 15.794894, 21.636875>,  <20.676630, 15.414477, 21.745420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.617464, 15.794894, 21.636875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718243, 0.291922, 0.631592,
		0.679888, -0.101481, -0.726260,
		-0.147916, 0.951043, -0.271362,
		20.573090, 16.080208, 21.555466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.320751, 15.606452, 21.676504>,  <20.676630, 15.414477, 21.745420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.320751, 15.606452, 21.676504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.101629, 15.936774, 21.730104>,  <20.970156, 16.134968, 21.762264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.101629, 15.936774, 21.730104>,  <21.320751, 15.606452, 21.676504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.101629, 15.936774, 21.730104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721335, 0.385093, 0.575655,
		0.423776, 0.412007, -0.806638,
		-0.547804, 0.825805, 0.134002,
		20.937288, 16.184515, 21.770306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.695723, 16.147707, 21.894661>,  <21.320751, 15.606452, 21.676504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.695723, 16.147707, 21.894661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.335224, 16.292334, 21.990183>,  <21.118925, 16.379110, 22.047497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.335224, 16.292334, 21.990183>,  <21.695723, 16.147707, 21.894661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.335224, 16.292334, 21.990183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362657, 0.327777, 0.872377,
		0.237148, 0.872829, -0.426532,
		-0.901244, 0.361568, 0.238806,
		21.064852, 16.400805, 22.061825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.821886, 16.905645, 21.797344>,  <21.695723, 16.147707, 21.894661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.821886, 16.905645, 21.797344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.522167, 16.819633, 22.047884>,  <21.342335, 16.768026, 22.198208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.522167, 16.819633, 22.047884>,  <21.821886, 16.905645, 21.797344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.522167, 16.819633, 22.047884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564520, 0.287078, 0.773888,
		-0.346220, 0.933460, -0.093719,
		-0.749299, -0.215030, 0.626350,
		21.297379, 16.755125, 22.235788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.769197, 17.481304, 22.212757>,  <21.821886, 16.905645, 21.797344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.769197, 17.481304, 22.212757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.570028, 17.217325, 22.437805>,  <21.450527, 17.058937, 22.572834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.570028, 17.217325, 22.437805>,  <21.769197, 17.481304, 22.212757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.570028, 17.217325, 22.437805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406006, 0.395875, 0.823676,
		-0.766311, 0.638553, 0.070828,
		-0.497922, -0.659949, 0.562620,
		21.420652, 17.019341, 22.606590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.341936, 17.889219, 22.638672>,  <21.769197, 17.481304, 22.212757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.341936, 17.889219, 22.638672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.387217, 17.535252, 22.819382>,  <21.414385, 17.322870, 22.927807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.387217, 17.535252, 22.819382>,  <21.341936, 17.889219, 22.638672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.387217, 17.535252, 22.819382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151921, 0.464767, 0.872303,
		-0.981889, -0.030112, 0.187051,
		0.113202, -0.884921, 0.451775,
		21.421177, 17.269775, 22.954914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.020821, 18.072666, 23.241611>,  <21.341936, 17.889219, 22.638672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.020821, 18.072666, 23.241611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.248369, 17.753679, 23.322044>,  <21.384899, 17.562288, 23.370304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.248369, 17.753679, 23.322044>,  <21.020821, 18.072666, 23.241611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.248369, 17.753679, 23.322044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111255, 0.316873, 0.941920,
		-0.814867, -0.513459, 0.268981,
		0.568871, -0.797466, 0.201085,
		21.419031, 17.514441, 23.382370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.714483, 17.899967, 23.838398>,  <21.020821, 18.072666, 23.241611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.714483, 17.899967, 23.838398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.064005, 17.705736, 23.827969>,  <21.273718, 17.589197, 23.821711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.064005, 17.705736, 23.827969>,  <20.714483, 17.899967, 23.838398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.064005, 17.705736, 23.827969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129436, 0.180564, 0.975009,
		-0.468733, -0.855343, 0.220629,
		0.873805, -0.485576, -0.026076,
		21.326147, 17.560064, 23.820147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.800764, 17.507095, 24.474731>,  <20.714483, 17.899967, 23.838398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.800764, 17.507095, 24.474731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.167149, 17.577774, 24.330624>,  <21.386978, 17.620180, 24.244158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.167149, 17.577774, 24.330624>,  <20.800764, 17.507095, 24.474731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.167149, 17.577774, 24.330624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286602, 0.340314, 0.895570,
		0.280847, -0.923561, 0.261074,
		0.915961, 0.176693, -0.360270,
		21.441936, 17.630783, 24.222542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.200846, 17.381073, 25.037975>,  <20.800764, 17.507095, 24.474731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.200846, 17.381073, 25.037975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.479767, 17.529129, 24.792452>,  <21.647120, 17.617962, 24.645138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.479767, 17.529129, 24.792452>,  <21.200846, 17.381073, 25.037975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.479767, 17.529129, 24.792452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424610, 0.476610, 0.769772,
		0.577472, -0.797396, 0.175177,
		0.697304, 0.370140, -0.613811,
		21.688959, 17.640171, 24.608309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.777109, 17.454411, 25.513731>,  <21.200846, 17.381073, 25.037975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.777109, 17.454411, 25.513731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.842354, 17.705931, 25.209625>,  <21.881500, 17.856844, 25.027163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.842354, 17.705931, 25.209625>,  <21.777109, 17.454411, 25.513731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.842354, 17.705931, 25.209625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503437, 0.609666, 0.612257,
		0.848496, -0.482612, -0.217118,
		0.163113, 0.628803, -0.760264,
		21.891287, 17.894571, 24.981546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.460815, 17.646357, 25.583921>,  <21.777109, 17.454411, 25.513731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.460815, 17.646357, 25.583921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.269209, 17.921167, 25.365368>,  <22.154243, 18.086054, 25.234236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.269209, 17.921167, 25.365368>,  <22.460815, 17.646357, 25.583921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.269209, 17.921167, 25.365368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446915, 0.726608, 0.521832,
		0.755518, 0.005781, -0.655102,
		-0.479019, 0.687028, -0.546382,
		22.125504, 18.127275, 25.201454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.987696, 18.060165, 25.403606>,  <22.460815, 17.646357, 25.583921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.987696, 18.060165, 25.403606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.664207, 18.291449, 25.360430>,  <22.470116, 18.430218, 25.334524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.664207, 18.291449, 25.360430>,  <22.987696, 18.060165, 25.403606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.664207, 18.291449, 25.360430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490575, 0.764290, 0.418566,
		0.324514, 0.285550, -0.901749,
		-0.808719, 0.578206, -0.107939,
		22.421591, 18.464911, 25.328049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.228123, 18.568638, 25.056410>,  <22.987696, 18.060165, 25.403606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.228123, 18.568638, 25.056410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.919771, 18.711145, 25.267624>,  <22.734760, 18.796650, 25.394352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.919771, 18.711145, 25.267624>,  <23.228123, 18.568638, 25.056410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.919771, 18.711145, 25.267624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615451, 0.630292, 0.473235,
		-0.164217, 0.689786, -0.705144,
		-0.770878, 0.356269, 0.528034,
		22.688507, 18.818026, 25.426035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.166050, 19.290453, 24.976902>,  <23.228123, 18.568638, 25.056410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.166050, 19.290453, 24.976902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.957039, 19.242079, 25.314503>,  <22.831633, 19.213055, 25.517063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.957039, 19.242079, 25.314503>,  <23.166050, 19.290453, 24.976902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.957039, 19.242079, 25.314503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600961, 0.649956, 0.465191,
		-0.604824, 0.750287, -0.266941,
		-0.522527, -0.120938, 0.844002,
		22.800282, 19.205797, 25.567703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.164223, 19.929485, 25.253727>,  <23.166050, 19.290453, 24.976902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.164223, 19.929485, 25.253727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.049883, 19.724712, 25.577755>,  <22.981279, 19.601849, 25.772171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.049883, 19.724712, 25.577755>,  <23.164223, 19.929485, 25.253727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.049883, 19.724712, 25.577755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368511, 0.721612, 0.586068,
		-0.884585, 0.466046, -0.017619,
		-0.285849, -0.511934, 0.810071,
		22.964128, 19.571133, 25.820776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.941198, 20.452129, 25.783691>,  <23.164223, 19.929485, 25.253727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.941198, 20.452129, 25.783691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.999685, 20.108082, 25.979168>,  <23.034777, 19.901653, 26.096455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.999685, 20.108082, 25.979168>,  <22.941198, 20.452129, 25.783691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.999685, 20.108082, 25.979168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320373, 0.508548, 0.799212,
		-0.935939, 0.039705, 0.349916,
		0.146216, -0.860118, 0.488691,
		23.043550, 19.850046, 26.125774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.717712, 20.533161, 26.439920>,  <22.941198, 20.452129, 25.783691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.717712, 20.533161, 26.439920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.994963, 20.244991, 26.430437>,  <23.161314, 20.072088, 26.424747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.994963, 20.244991, 26.430437>,  <22.717712, 20.533161, 26.439920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.994963, 20.244991, 26.430437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489980, 0.446780, 0.748537,
		-0.528673, -0.530447, 0.662670,
		0.693127, -0.720426, -0.023708,
		23.202900, 20.028864, 26.423325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.016804, 20.582056, 27.150751>,  <22.717712, 20.533161, 26.439920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.016804, 20.582056, 27.150751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.241783, 20.447119, 26.848799>,  <23.376772, 20.366156, 26.667627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.241783, 20.447119, 26.848799>,  <23.016804, 20.582056, 27.150751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.241783, 20.447119, 26.848799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760611, 0.569104, 0.312396,
		0.324222, -0.749879, 0.576681,
		0.562451, -0.337344, -0.754883,
		23.410519, 20.345915, 26.622334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.586077, 20.241945, 27.399405>,  <23.016804, 20.582056, 27.150751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.586077, 20.241945, 27.399405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.671173, 20.397463, 27.040834>,  <23.722231, 20.490774, 26.825693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.671173, 20.397463, 27.040834>,  <23.586077, 20.241945, 27.399405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.671173, 20.397463, 27.040834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767340, 0.501495, 0.399614,
		0.604921, -0.772878, -0.191649,
		0.212742, 0.388795, -0.896426,
		23.734995, 20.514101, 26.771906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.274214, 20.195951, 27.148535>,  <23.586077, 20.241945, 27.399405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.274214, 20.195951, 27.148535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.037539, 20.508049, 27.067415>,  <23.895535, 20.695307, 27.018744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.037539, 20.508049, 27.067415>,  <24.274214, 20.195951, 27.148535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.037539, 20.508049, 27.067415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565449, 0.580968, 0.585442,
		0.574608, 0.231725, -0.784939,
		-0.591686, 0.780243, -0.202801,
		23.860033, 20.742123, 27.006575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.643198, 20.746298, 26.892834>,  <24.274214, 20.195951, 27.148535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.643198, 20.746298, 26.892834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.324921, 20.897852, 27.081860>,  <24.133955, 20.988785, 27.195274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.324921, 20.897852, 27.081860>,  <24.643198, 20.746298, 26.892834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.324921, 20.897852, 27.081860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604502, 0.545778, 0.580262,
		-0.038061, 0.747376, -0.663310,
		-0.795694, 0.378887, 0.472563,
		24.086212, 21.011518, 27.223629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.635536, 21.521795, 27.056803>,  <24.643198, 20.746298, 26.892834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.635536, 21.521795, 27.056803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418564, 21.365053, 27.354050>,  <24.288382, 21.271008, 27.532398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.418564, 21.365053, 27.354050>,  <24.635536, 21.521795, 27.056803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.418564, 21.365053, 27.354050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350511, 0.698325, 0.624086,
		-0.763487, 0.598993, -0.241443,
		-0.542429, -0.391854, 0.743116,
		24.255835, 21.247498, 27.576984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.158133, 22.089781, 27.340946>,  <24.635536, 21.521795, 27.056803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.158133, 22.089781, 27.340946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.250637, 21.819651, 27.621077>,  <24.306139, 21.657574, 27.789154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.250637, 21.819651, 27.621077>,  <24.158133, 22.089781, 27.340946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.250637, 21.819651, 27.621077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517802, 0.694853, 0.499059,
		-0.823651, 0.247218, 0.510375,
		0.231259, -0.675324, 0.700326,
		24.320015, 21.617054, 27.831175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.127851, 22.385376, 28.021517>,  <24.158133, 22.089781, 27.340946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.127851, 22.385376, 28.021517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404285, 22.101618, 28.076878>,  <24.570147, 21.931362, 28.110094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404285, 22.101618, 28.076878>,  <24.127851, 22.385376, 28.021517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.404285, 22.101618, 28.076878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507973, 0.612935, 0.605206,
		-0.514162, -0.347946, 0.783946,
		0.691087, -0.709397, 0.138400,
		24.611612, 21.888798, 28.118397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.524942, 22.660810, 27.641447>,  <24.127851, 22.385376, 28.021517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.524942, 22.660810, 27.641447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.695107, 22.943956, 27.415897>,  <23.797205, 23.113844, 27.280567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.695107, 22.943956, 27.415897>,  <23.524942, 22.660810, 27.641447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.695107, 22.943956, 27.415897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016547, -0.616876, -0.786886,
		-0.904849, 0.344081, -0.250713,
		0.425411, 0.707865, -0.563873,
		23.822729, 23.156317, 27.246735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.079962, 22.815641, 27.193205>,  <23.524942, 22.660810, 27.641447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.079962, 22.815641, 27.193205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.425470, 22.917484, 27.019276>,  <23.632776, 22.978590, 26.914919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.425470, 22.917484, 27.019276>,  <23.079962, 22.815641, 27.193205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.425470, 22.917484, 27.019276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153513, -0.688953, -0.708362,
		-0.479926, 0.678616, -0.556014,
		0.863773, 0.254606, -0.434823,
		23.684603, 22.993866, 26.888828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.823709, 22.936346, 26.474636>,  <23.079962, 22.815641, 27.193205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.823709, 22.936346, 26.474636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.222462, 22.905125, 26.469925>,  <23.461712, 22.886391, 26.467098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.222462, 22.905125, 26.469925>,  <22.823709, 22.936346, 26.474636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.222462, 22.905125, 26.469925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056166, -0.596496, -0.800649,
		0.055468, 0.798812, -0.599018,
		0.996880, -0.078055, -0.011780,
		23.521526, 22.881708, 26.466391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.987640, 23.056896, 25.808474>,  <22.823709, 22.936346, 26.474636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.987640, 23.056896, 25.808474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.302284, 22.864685, 25.963568>,  <23.491070, 22.749357, 26.056623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.302284, 22.864685, 25.963568>,  <22.987640, 23.056896, 25.808474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.302284, 22.864685, 25.963568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036509, -0.663058, -0.747677,
		0.616372, 0.573973, -0.539111,
		0.786608, -0.480529, 0.387736,
		23.538267, 22.720526, 26.079889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.554008, 23.072603, 25.350986>,  <22.987640, 23.056896, 25.808474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.554008, 23.072603, 25.350986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.625196, 22.746109, 25.570835>,  <23.667910, 22.550213, 25.702745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.625196, 22.746109, 25.570835>,  <23.554008, 23.072603, 25.350986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.625196, 22.746109, 25.570835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155355, -0.528229, -0.834769,
		0.971695, 0.233952, 0.032797,
		0.177971, -0.816236, 0.549623,
		23.678587, 22.501238, 25.735722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.191408, 22.871195, 25.071541>,  <23.554008, 23.072603, 25.350986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.191408, 22.871195, 25.071541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.026514, 22.546074, 25.236181>,  <23.927578, 22.351002, 25.334965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.026514, 22.546074, 25.236181>,  <24.191408, 22.871195, 25.071541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.026514, 22.546074, 25.236181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332708, -0.554872, -0.762511,
		0.848157, -0.177390, 0.499163,
		-0.412233, -0.812804, 0.411599,
		23.902843, 22.302233, 25.359661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.575428, 22.267153, 24.805902>,  <24.191408, 22.871195, 25.071541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.575428, 22.267153, 24.805902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233622, 22.109570, 24.941315>,  <24.028538, 22.015020, 25.022562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.233622, 22.109570, 24.941315>,  <24.575428, 22.267153, 24.805902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.233622, 22.109570, 24.941315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031588, -0.689945, -0.723173,
		0.518467, -0.607268, 0.602012,
		-0.854514, -0.393957, 0.338532,
		23.977268, 21.991383, 25.042873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.631868, 21.515755, 24.528227>,  <24.575428, 22.267153, 24.805902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.631868, 21.515755, 24.528227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255091, 21.582458, 24.644796>,  <24.029024, 21.622480, 24.714739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.255091, 21.582458, 24.644796>,  <24.631868, 21.515755, 24.528227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.255091, 21.582458, 24.644796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281900, -0.864280, -0.416597,
		0.182400, -0.474564, 0.861115,
		-0.941946, 0.166762, 0.291424,
		23.972507, 21.632486, 24.732224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.402740, 20.863445, 24.742113>,  <24.631868, 21.515755, 24.528227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.402740, 20.863445, 24.742113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.084135, 21.086042, 24.647554>,  <23.892971, 21.219601, 24.590818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.084135, 21.086042, 24.647554>,  <24.402740, 20.863445, 24.742113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.084135, 21.086042, 24.647554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401862, -0.779388, -0.480687,
		-0.451745, -0.287874, 0.844426,
		-0.796513, 0.556491, -0.236399,
		23.845181, 21.252989, 24.576635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.703568, 20.508762, 24.896343>,  <24.402740, 20.863445, 24.742113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.703568, 20.508762, 24.896343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.656183, 20.785679, 24.611612>,  <23.627752, 20.951828, 24.440773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.656183, 20.785679, 24.611612>,  <23.703568, 20.508762, 24.896343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.656183, 20.785679, 24.611612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324703, -0.704473, -0.631099,
		-0.938368, 0.156373, 0.308241,
		-0.118460, 0.692290, -0.711830,
		23.620646, 20.993366, 24.398064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.043661, 20.414780, 24.732519>,  <23.703568, 20.508762, 24.896343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.043661, 20.414780, 24.732519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.217478, 20.618261, 24.435226>,  <23.321768, 20.740351, 24.256851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.217478, 20.618261, 24.435226>,  <23.043661, 20.414780, 24.732519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.217478, 20.618261, 24.435226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379371, -0.645053, -0.663314,
		-0.816853, 0.570199, -0.087316,
		0.434544, 0.508705, -0.743230,
		23.347841, 20.770872, 24.212257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.518110, 20.480038, 24.251400>,  <23.043661, 20.414780, 24.732519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.518110, 20.480038, 24.251400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.836338, 20.564184, 24.024134>,  <23.027275, 20.614672, 23.887774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.836338, 20.564184, 24.024134>,  <22.518110, 20.480038, 24.251400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.836338, 20.564184, 24.024134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403029, -0.516438, -0.755552,
		-0.452365, 0.830083, -0.326079,
		0.795571, 0.210366, -0.568166,
		23.075008, 20.627295, 23.853683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.239138, 20.654076, 23.580002>,  <22.518110, 20.480038, 24.251400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.239138, 20.654076, 23.580002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.623098, 20.562557, 23.515203>,  <22.853474, 20.507647, 23.476324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.623098, 20.562557, 23.515203>,  <22.239138, 20.654076, 23.580002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.623098, 20.562557, 23.515203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273359, -0.635746, -0.721874,
		0.062175, 0.737210, -0.672797,
		0.959901, -0.228797, -0.161996,
		22.911068, 20.493917, 23.466604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.186171, 20.693071, 22.889032>,  <22.239138, 20.654076, 23.580002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.186171, 20.693071, 22.889032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.535263, 20.516598, 22.972651>,  <22.744719, 20.410713, 23.022821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.535263, 20.516598, 22.972651>,  <22.186171, 20.693071, 22.889032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.535263, 20.516598, 22.972651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105119, -0.587967, -0.802026,
		0.476753, 0.677977, -0.559513,
		0.872730, -0.441183, 0.209046,
		22.797083, 20.384243, 23.035364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.443508, 20.769274, 22.263968>,  <22.186171, 20.693071, 22.889032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.443508, 20.769274, 22.263968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.609814, 20.471851, 22.473448>,  <22.709597, 20.293398, 22.599136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.609814, 20.471851, 22.473448>,  <22.443508, 20.769274, 22.263968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.609814, 20.471851, 22.473448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045302, -0.592047, -0.804629,
		0.908344, 0.310810, -0.279835,
		0.415763, -0.743557, 0.523702,
		22.734543, 20.248785, 22.630558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.998066, 20.387127, 21.879721>,  <22.443508, 20.769274, 22.263968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.998066, 20.387127, 21.879721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.877668, 20.129211, 22.160761>,  <22.805429, 19.974463, 22.329386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.877668, 20.129211, 22.160761>,  <22.998066, 20.387127, 21.879721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.877668, 20.129211, 22.160761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101143, -0.711028, -0.695852,
		0.948247, -0.280510, 0.148799,
		-0.300993, -0.644789, 0.702602,
		22.787371, 19.935774, 22.371542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.352055, 19.788515, 21.737200>,  <22.998066, 20.387127, 21.879721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.352055, 19.788515, 21.737200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.030500, 19.677069, 21.947395>,  <22.837568, 19.610201, 22.073513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.030500, 19.677069, 21.947395>,  <23.352055, 19.788515, 21.737200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.030500, 19.677069, 21.947395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116119, -0.792983, -0.598076,
		0.583337, -0.541805, 0.605116,
		-0.803887, -0.278614, 0.525490,
		22.789333, 19.593485, 22.105042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.333681, 19.053480, 21.570196>,  <23.352055, 19.788515, 21.737200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.333681, 19.053480, 21.570196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.965933, 19.161709, 21.684425>,  <22.745285, 19.226646, 21.752962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.965933, 19.161709, 21.684425>,  <23.333681, 19.053480, 21.570196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.965933, 19.161709, 21.684425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392326, -0.577109, -0.716258,
		-0.028993, -0.770543, 0.636729,
		-0.919369, 0.270572, 0.285572,
		22.690123, 19.242880, 21.770096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.013941, 18.407053, 21.468214>,  <23.333681, 19.053480, 21.570196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.013941, 18.407053, 21.468214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.716061, 18.669081, 21.519285>,  <22.537333, 18.826298, 21.549927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.716061, 18.669081, 21.519285>,  <23.013941, 18.407053, 21.468214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.716061, 18.669081, 21.519285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584613, -0.547998, -0.598269,
		-0.321942, -0.520173, 0.791058,
		-0.744702, 0.655071, 0.127676,
		22.492651, 18.865602, 21.557589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.570192, 18.002359, 21.552269>,  <23.013941, 18.407053, 21.468214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.570192, 18.002359, 21.552269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.369946, 18.340893, 21.479492>,  <22.249798, 18.544012, 21.435825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.369946, 18.340893, 21.479492>,  <22.570192, 18.002359, 21.552269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.369946, 18.340893, 21.479492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514933, -0.460086, -0.723302,
		-0.695864, -0.268409, 0.666131,
		-0.500618, 0.846332, -0.181944,
		22.219761, 18.594793, 21.424910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.883966, 17.853237, 21.542650>,  <22.570192, 18.002359, 21.552269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.883966, 17.853237, 21.542650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.884285, 18.203621, 21.349697>,  <21.884476, 18.413851, 21.233925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.884285, 18.203621, 21.349697>,  <21.883966, 17.853237, 21.542650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.884285, 18.203621, 21.349697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725560, -0.331450, -0.603078,
		-0.688159, 0.350476, 0.635299,
		0.000794, 0.875961, -0.482382,
		21.884523, 18.466410, 21.204983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.230227, 18.218727, 21.473333>,  <21.883966, 17.853237, 21.542650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.230227, 18.218727, 21.473333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.446625, 18.360897, 21.168442>,  <21.576464, 18.446199, 20.985506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.446625, 18.360897, 21.168442>,  <21.230227, 18.218727, 21.473333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.446625, 18.360897, 21.168442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571916, -0.509023, -0.643278,
		-0.616631, 0.783944, -0.072106,
		0.540998, 0.355426, -0.762229,
		21.608925, 18.467525, 20.939774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.733227, 18.356451, 20.959045>,  <21.230227, 18.218727, 21.473333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.733227, 18.356451, 20.959045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.068592, 18.388306, 20.743370>,  <21.269812, 18.407419, 20.613964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.068592, 18.388306, 20.743370>,  <20.733227, 18.356451, 20.959045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.068592, 18.388306, 20.743370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449724, -0.457806, -0.766917,
		-0.307919, 0.885478, -0.348015,
		0.838412, 0.079638, -0.539188,
		21.320116, 18.412197, 20.581614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.546364, 18.649427, 20.279011>,  <20.733227, 18.356451, 20.959045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.546364, 18.649427, 20.279011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.897612, 18.462595, 20.237553>,  <21.108360, 18.350496, 20.212677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.897612, 18.462595, 20.237553>,  <20.546364, 18.649427, 20.279011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.897612, 18.462595, 20.237553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368352, -0.521758, -0.769471,
		0.305327, 0.713865, -0.630216,
		0.878119, -0.467082, -0.103647,
		21.161047, 18.322470, 20.206459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.631922, 18.687311, 19.649328>,  <20.546364, 18.649427, 20.279011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.631922, 18.687311, 19.649328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883583, 18.392862, 19.749161>,  <21.034580, 18.216194, 19.809061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883583, 18.392862, 19.749161>,  <20.631922, 18.687311, 19.649328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883583, 18.392862, 19.749161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360743, -0.560954, -0.745114,
		0.688497, 0.378758, -0.618477,
		0.629156, -0.736120, 0.249581,
		21.072330, 18.172026, 19.824036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.847208, 18.428112, 18.941856>,  <20.631922, 18.687311, 19.649328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.847208, 18.428112, 18.941856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.917843, 18.145578, 19.216055>,  <20.960224, 17.976059, 19.380575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.917843, 18.145578, 19.216055>,  <20.847208, 18.428112, 18.941856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.917843, 18.145578, 19.216055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237434, -0.706445, -0.666754,
		0.955218, -0.045020, -0.292457,
		0.176588, -0.706335, 0.685499,
		20.970819, 17.933678, 19.421705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.382332, 18.008047, 18.737917>,  <20.847208, 18.428112, 18.941856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.382332, 18.008047, 18.737917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.160925, 17.748035, 18.946178>,  <21.028080, 17.592030, 19.071136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.160925, 17.748035, 18.946178>,  <21.382332, 18.008047, 18.737917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.160925, 17.748035, 18.946178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326823, -0.405477, -0.853683,
		0.766032, -0.642691, 0.011994,
		-0.553518, -0.650028, 0.520654,
		20.994869, 17.553026, 19.102375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.491257, 17.359329, 18.487776>,  <21.382332, 18.008047, 18.737917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.491257, 17.359329, 18.487776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.142145, 17.300961, 18.674095>,  <20.932678, 17.265940, 18.785887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.142145, 17.300961, 18.674095>,  <21.491257, 17.359329, 18.487776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.142145, 17.300961, 18.674095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424062, -0.245898, -0.871611,
		0.241725, -0.958249, 0.152734,
		-0.872778, -0.145922, 0.465797,
		20.880312, 17.257185, 18.813833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.240995, 16.663761, 18.332586>,  <21.491257, 17.359329, 18.487776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.240995, 16.663761, 18.332586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.913559, 16.866463, 18.440739>,  <20.717096, 16.988083, 18.505630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.913559, 16.866463, 18.440739>,  <21.240995, 16.663761, 18.332586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.913559, 16.866463, 18.440739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422118, -0.211538, -0.881514,
		-0.389517, -0.835733, 0.387074,
		-0.818592, 0.506756, 0.270381,
		20.667982, 17.018490, 18.521852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.710459, 16.362568, 18.031057>,  <21.240995, 16.663761, 18.332586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.710459, 16.362568, 18.031057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.512171, 16.696196, 18.127878>,  <20.393198, 16.896372, 18.185970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.512171, 16.696196, 18.127878>,  <20.710459, 16.362568, 18.031057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.512171, 16.696196, 18.127878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566318, -0.099137, -0.818203,
		-0.658442, -0.542678, 0.521493,
		-0.495720, 0.834070, 0.242052,
		20.363455, 16.946417, 18.200493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.972403, 16.208069, 17.907412>,  <20.710459, 16.362568, 18.031057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.972403, 16.208069, 17.907412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.005219, 16.606714, 17.905220>,  <20.024908, 16.845901, 17.903904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.005219, 16.606714, 17.905220>,  <19.972403, 16.208069, 17.907412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.005219, 16.606714, 17.905220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544786, 0.040240, -0.837610,
		-0.834553, 0.071702, 0.546242,
		0.082039, 0.996614, -0.005480,
		20.029831, 16.905699, 17.903576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.379694, 16.418631, 17.876682>,  <19.972403, 16.208069, 17.907412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.379694, 16.418631, 17.876682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.590126, 16.732731, 17.746067>,  <19.716385, 16.921190, 17.667698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.590126, 16.732731, 17.746067>,  <19.379694, 16.418631, 17.876682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.590126, 16.732731, 17.746067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571000, 0.041598, -0.819895,
		-0.630239, 0.617781, 0.470261,
		0.526078, 0.785249, -0.326536,
		19.747950, 16.968306, 17.648106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.835945, 16.953499, 17.759832>,  <19.379694, 16.418631, 17.876682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.835945, 16.953499, 17.759832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.151468, 17.044411, 17.531403>,  <19.340782, 17.098959, 17.394344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.151468, 17.044411, 17.531403>,  <18.835945, 16.953499, 17.759832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.151468, 17.044411, 17.531403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580820, -0.028327, -0.813539,
		-0.201080, 0.973417, 0.109665,
		0.788806, 0.227282, -0.571076,
		19.388111, 17.112595, 17.360081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.574173, 17.404968, 17.325745>,  <18.835945, 16.953499, 17.759832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.574173, 17.404968, 17.325745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.900906, 17.279322, 17.132202>,  <19.096945, 17.203934, 17.016077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.900906, 17.279322, 17.132202>,  <18.574173, 17.404968, 17.325745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.900906, 17.279322, 17.132202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517373, -0.027902, -0.855305,
		0.255164, 0.948974, -0.185306,
		0.816833, -0.314115, -0.483855,
		19.145956, 17.185087, 16.987045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.478046, 17.746042, 16.691238>,  <18.574173, 17.404968, 17.325745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.478046, 17.746042, 16.691238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.740936, 17.449957, 16.634472>,  <18.898670, 17.272305, 16.600412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.740936, 17.449957, 16.634472>,  <18.478046, 17.746042, 16.691238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.740936, 17.449957, 16.634472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309116, -0.092996, -0.946467,
		0.687391, 0.665909, -0.289931,
		0.657223, -0.740214, -0.141918,
		18.938103, 17.227892, 16.591896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.750866, 17.911060, 16.049736>,  <18.478046, 17.746042, 16.691238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.750866, 17.911060, 16.049736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.830416, 17.526516, 16.125872>,  <18.878145, 17.295788, 16.171553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.830416, 17.526516, 16.125872>,  <18.750866, 17.911060, 16.049736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.830416, 17.526516, 16.125872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485610, -0.265368, -0.832924,
		0.851253, 0.073217, -0.519623,
		0.198875, -0.961363, 0.190340,
		18.890078, 17.238108, 16.182974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.041769, 17.635715, 15.484614>,  <18.750866, 17.911060, 16.049736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.041769, 17.635715, 15.484614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.896463, 17.306318, 15.658924>,  <18.809280, 17.108681, 15.763510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.896463, 17.306318, 15.658924>,  <19.041769, 17.635715, 15.484614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.896463, 17.306318, 15.658924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460609, -0.247835, -0.852301,
		0.809864, -0.510331, -0.289279,
		-0.363262, -0.823493, 0.435775,
		18.787485, 17.059271, 15.789657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.804750, 17.326202, 14.878683>,  <19.041769, 17.635715, 15.484614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.804750, 17.326202, 14.878683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.676037, 17.063471, 15.151457>,  <18.598808, 16.905832, 15.315121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.676037, 17.063471, 15.151457>,  <18.804750, 17.326202, 14.878683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.676037, 17.063471, 15.151457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629017, -0.390019, -0.672475,
		0.707666, -0.645340, -0.287653,
		-0.321785, -0.656827, 0.681933,
		18.579502, 16.866423, 15.356037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.921791, 16.579021, 14.698256>,  <18.804750, 17.326202, 14.878683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.921791, 16.579021, 14.698256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.614113, 16.599396, 14.953048>,  <18.429506, 16.611620, 15.105923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.614113, 16.599396, 14.953048>,  <18.921791, 16.579021, 14.698256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.614113, 16.599396, 14.953048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584638, -0.458467, -0.669333,
		0.257942, -0.887251, 0.382429,
		-0.769197, 0.050933, 0.636979,
		18.383354, 16.614676, 15.144141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.563839, 15.933022, 14.661951>,  <18.921791, 16.579021, 14.698256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.563839, 15.933022, 14.661951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.291471, 16.194027, 14.794964>,  <18.128052, 16.350630, 14.874772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.291471, 16.194027, 14.794964>,  <18.563839, 15.933022, 14.661951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.291471, 16.194027, 14.794964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693541, -0.428656, -0.579012,
		-0.235269, -0.624886, 0.744423,
		-0.680918, 0.652512, 0.332534,
		18.087196, 16.389780, 14.894724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.173908, 15.462132, 14.762630>,  <18.563839, 15.933022, 14.661951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.173908, 15.462132, 14.762630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.973171, 15.805032, 14.716537>,  <17.852730, 16.010771, 14.688882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.973171, 15.805032, 14.716537>,  <18.173908, 15.462132, 14.762630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.973171, 15.805032, 14.716537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581070, -0.432810, -0.689226,
		-0.640711, -0.278926, 0.715325,
		-0.501843, 0.857249, -0.115231,
		17.822618, 16.062206, 14.681969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.427536, 15.248960, 14.686967>,  <18.173908, 15.462132, 14.762630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.427536, 15.248960, 14.686967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.475019, 15.623407, 14.554551>,  <17.503510, 15.848076, 14.475101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.475019, 15.623407, 14.554551>,  <17.427536, 15.248960, 14.686967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475019, 15.623407, 14.554551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744400, -0.136729, -0.653586,
		-0.657097, 0.324012, 0.680617,
		0.118710, 0.936120, -0.331039,
		17.510632, 15.904243, 14.455239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.580172, 14.641253, 14.329762>,  <17.427536, 15.248960, 14.686967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.580172, 14.641253, 14.329762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.950474, 14.792080, 14.341062>,  <18.172655, 14.882576, 14.347841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.950474, 14.792080, 14.341062>,  <17.580172, 14.641253, 14.329762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.950474, 14.792080, 14.341062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375044, -0.925164, 0.058425,
		0.048165, -0.043492, -0.997892,
		0.925755, 0.377067, 0.028249,
		18.228201, 14.905200, 14.349536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.528677, 14.545926, 15.068173>,  <17.580172, 14.641253, 14.329762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.528677, 14.545926, 15.068173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.628683, 14.614808, 15.449296>,  <17.688686, 14.656137, 15.677969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.628683, 14.614808, 15.449296>,  <17.528677, 14.545926, 15.068173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.628683, 14.614808, 15.449296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801256, -0.589258, -0.103748,
		0.543583, 0.789379, -0.285303,
		0.250014, 0.172205, 0.952806,
		17.703688, 14.666470, 15.735138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.268688, 14.617311, 15.095304>,  <17.528677, 14.545926, 15.068173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.268688, 14.617311, 15.095304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.122993, 14.470328, 15.437604>,  <18.035576, 14.382139, 15.642984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.122993, 14.470328, 15.437604>,  <18.268688, 14.617311, 15.095304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.122993, 14.470328, 15.437604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591566, -0.800974, -0.092142,
		0.719292, 0.472671, 0.509119,
		-0.364238, -0.367454, 0.855750,
		18.013721, 14.360092, 15.694329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.816830, 14.262111, 15.512215>,  <18.268688, 14.617311, 15.095304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.816830, 14.262111, 15.512215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.473663, 14.119434, 15.660136>,  <18.267763, 14.033829, 15.748890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.473663, 14.119434, 15.660136>,  <18.816830, 14.262111, 15.512215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.473663, 14.119434, 15.660136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368437, -0.928745, -0.041070,
		0.358104, 0.101016, 0.928201,
		-0.857914, -0.356691, 0.369805,
		18.216290, 14.012427, 15.771078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.953876, 13.822274, 16.113169>,  <18.816830, 14.262111, 15.512215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.953876, 13.822274, 16.113169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.610956, 13.721526, 15.933569>,  <18.405205, 13.661077, 15.825809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.610956, 13.721526, 15.933569>,  <18.953876, 13.822274, 16.113169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.610956, 13.721526, 15.933569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240564, -0.967064, 0.083158,
		-0.455157, -0.036722, 0.889654,
		-0.857299, -0.251869, -0.449000,
		18.353767, 13.645966, 15.798869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.538708, 13.212979, 16.499317>,  <18.953876, 13.822274, 16.113169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.538708, 13.212979, 16.499317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.471228, 13.215030, 16.105055>,  <18.430740, 13.216260, 15.868498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.471228, 13.215030, 16.105055>,  <18.538708, 13.212979, 16.499317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.471228, 13.215030, 16.105055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010963, -0.999915, -0.007076,
		-0.985606, -0.011999, 0.168629,
		-0.168699, 0.005125, -0.985654,
		18.420618, 13.216567, 15.809359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.153051, 13.039048, 16.165840>,  <18.538708, 13.212979, 16.499317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.153051, 13.039048, 16.165840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.171597, 12.640503, 16.194441>,  <19.182724, 12.401376, 16.211601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.171597, 12.640503, 16.194441>,  <19.153051, 13.039048, 16.165840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.171597, 12.640503, 16.194441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048851, -0.069232, -0.996404,
		0.997730, 0.049688, 0.045463,
		0.046361, -0.996363, 0.071502,
		19.185505, 12.341594, 16.215891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.839535, 12.894299, 15.898443>,  <19.153051, 13.039048, 16.165840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.839535, 12.894299, 15.898443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.572212, 12.596827, 15.891462>,  <19.411818, 12.418344, 15.887274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.572212, 12.596827, 15.891462>,  <19.839535, 12.894299, 15.898443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.572212, 12.596827, 15.891462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082162, -0.050476, -0.995340,
		0.739333, -0.666628, 0.094836,
		-0.668308, -0.743680, -0.017453,
		19.371719, 12.373723, 15.886227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.183073, 12.318660, 15.551971>,  <19.839535, 12.894299, 15.898443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.183073, 12.318660, 15.551971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.789888, 12.250883, 15.523481>,  <19.553978, 12.210217, 15.506388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.789888, 12.250883, 15.523481>,  <20.183073, 12.318660, 15.551971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.789888, 12.250883, 15.523481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115503, -0.268005, -0.956469,
		0.142977, -0.948400, 0.283010,
		-0.982963, -0.169442, -0.071224,
		19.494999, 12.200050, 15.502114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.147631, 11.679019, 15.317109>,  <20.183073, 12.318660, 15.551971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.147631, 11.679019, 15.317109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.783009, 11.832898, 15.259038>,  <19.564236, 11.925225, 15.224195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.783009, 11.832898, 15.259038>,  <20.147631, 11.679019, 15.317109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.783009, 11.832898, 15.259038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051744, -0.242947, -0.968659,
		-0.407912, -0.890496, 0.201553,
		-0.911554, 0.384699, -0.145179,
		19.509542, 11.948307, 15.215485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.898283, 11.323564, 14.648887>,  <20.147631, 11.679019, 15.317109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.898283, 11.323564, 14.648887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.658955, 11.642391, 14.681614>,  <19.515358, 11.833688, 14.701250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.658955, 11.642391, 14.681614>,  <19.898283, 11.323564, 14.648887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.658955, 11.642391, 14.681614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091974, 0.033116, -0.995211,
		-0.795960, -0.602981, 0.053496,
		-0.598321, 0.797068, 0.081817,
		19.479458, 11.881512, 14.706159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.388363, 11.224793, 14.121339>,  <19.898283, 11.323564, 14.648887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.388363, 11.224793, 14.121339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.372835, 11.616499, 14.200872>,  <19.363520, 11.851522, 14.248592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.372835, 11.616499, 14.200872>,  <19.388363, 11.224793, 14.121339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.372835, 11.616499, 14.200872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175334, 0.189222, -0.966154,
		-0.983743, -0.072365, 0.164353,
		-0.038817, 0.979264, 0.198834,
		19.361191, 11.910278, 14.260523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.800318, 11.479468, 13.881367>,  <19.388363, 11.224793, 14.121339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.800318, 11.479468, 13.881367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.034142, 11.803381, 13.901528>,  <19.174437, 11.997728, 13.913625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.034142, 11.803381, 13.901528>,  <18.800318, 11.479468, 13.881367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034142, 11.803381, 13.901528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137505, 0.160102, -0.977476,
		-0.799613, 0.564464, 0.204938,
		0.584561, 0.809782, 0.050404,
		19.209511, 12.046316, 13.916650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.444830, 11.922295, 13.442718>,  <18.800318, 11.479468, 13.881367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.444830, 11.922295, 13.442718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.815554, 12.064782, 13.490277>,  <19.037987, 12.150274, 13.518813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.815554, 12.064782, 13.490277>,  <18.444830, 11.922295, 13.442718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.815554, 12.064782, 13.490277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000274, 0.317250, -0.948342,
		-0.375537, 0.878897, 0.294128,
		0.926807, 0.356218, 0.118898,
		19.093596, 12.171648, 13.525947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.490240, 12.553978, 13.044471>,  <18.444830, 11.922295, 13.442718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.490240, 12.553978, 13.044471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.864090, 12.413301, 13.065588>,  <19.088400, 12.328894, 13.078259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.864090, 12.413301, 13.065588>,  <18.490240, 12.553978, 13.044471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.864090, 12.413301, 13.065588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166314, 0.301024, -0.939002,
		0.314350, 0.886394, 0.339837,
		0.934625, -0.351695, 0.052793,
		19.144478, 12.307792, 13.081426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.823771, 13.078267, 12.750402>,  <18.490240, 12.553978, 13.044471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.823771, 13.078267, 12.750402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.078886, 12.770312, 12.741448>,  <19.231955, 12.585539, 12.736076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.078886, 12.770312, 12.741448>,  <18.823771, 13.078267, 12.750402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.078886, 12.770312, 12.741448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305000, 0.279141, -0.910525,
		0.707251, 0.573893, 0.412848,
		0.637787, -0.769888, -0.022385,
		19.270222, 12.539346, 12.734733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.412891, 13.246425, 12.493654>,  <18.823771, 13.078267, 12.750402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.412891, 13.246425, 12.493654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.410967, 12.850235, 12.438607>,  <19.409813, 12.612521, 12.405579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.410967, 12.850235, 12.438607>,  <19.412891, 13.246425, 12.493654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410967, 12.850235, 12.438607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515718, 0.115448, -0.848945,
		0.856745, -0.075056, 0.510250,
		-0.004811, -0.990474, -0.137618,
		19.409523, 12.553093, 12.397322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.106010, 13.121311, 12.237134>,  <19.412891, 13.246425, 12.493654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.106010, 13.121311, 12.237134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.895889, 12.794179, 12.143146>,  <19.769817, 12.597899, 12.086753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.895889, 12.794179, 12.143146>,  <20.106010, 13.121311, 12.237134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.895889, 12.794179, 12.143146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395095, 0.010144, -0.918584,
		0.753629, -0.575370, 0.317792,
		-0.525303, -0.817830, -0.234971,
		19.738298, 12.548830, 12.072655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.597170, 12.628368, 11.908587>,  <20.106010, 13.121311, 12.237134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.597170, 12.628368, 11.908587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227942, 12.538130, 11.783975>,  <20.006405, 12.483987, 11.709208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227942, 12.538130, 11.783975>,  <20.597170, 12.628368, 11.908587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.227942, 12.538130, 11.783975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349927, -0.156322, -0.923642,
		0.159673, -0.961597, 0.223239,
		-0.923068, -0.225597, -0.311529,
		19.951021, 12.470450, 11.690516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.772032, 12.085697, 11.419816>,  <20.597170, 12.628368, 11.908587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.772032, 12.085697, 11.419816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.396555, 12.197432, 11.338991>,  <20.171268, 12.264472, 11.290497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.396555, 12.197432, 11.338991>,  <20.772032, 12.085697, 11.419816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.396555, 12.197432, 11.338991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122280, -0.278231, -0.952699,
		-0.322345, -0.918998, 0.227015,
		-0.938691, 0.279339, -0.202062,
		20.114948, 12.281232, 11.278373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.656582, 11.678109, 10.824100>,  <20.772032, 12.085697, 11.419816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.656582, 11.678109, 10.824100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.405025, 11.989048, 10.830187>,  <20.254093, 12.175611, 10.833839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.405025, 11.989048, 10.830187>,  <20.656582, 11.678109, 10.824100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.405025, 11.989048, 10.830187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152208, 0.142285, -0.978053,
		-0.762451, -0.612770, -0.207800,
		-0.628889, 0.777347, 0.015217,
		20.216358, 12.222252, 10.834752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.156595, 11.632183, 10.207151>,  <20.656582, 11.678109, 10.824100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.156595, 11.632183, 10.207151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.127230, 12.003819, 10.352152>,  <20.109612, 12.226800, 10.439152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.127230, 12.003819, 10.352152>,  <20.156595, 11.632183, 10.207151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.127230, 12.003819, 10.352152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143415, 0.369539, -0.918081,
		-0.986936, -0.015410, -0.160374,
		-0.073412, 0.929088, 0.362501,
		20.105206, 12.282545, 10.460902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.708523, 12.019018, 9.802454>,  <20.156595, 11.632183, 10.207151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.708523, 12.019018, 9.802454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.911669, 12.319684, 9.970774>,  <20.033556, 12.500084, 10.071766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.911669, 12.319684, 9.970774>,  <19.708523, 12.019018, 9.802454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.911669, 12.319684, 9.970774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201736, 0.371123, -0.906405,
		-0.837482, 0.545221, 0.036842,
		0.507865, 0.751666, 0.420799,
		20.064028, 12.545184, 10.097013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.405855, 12.562777, 9.663394>,  <19.708523, 12.019018, 9.802454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.405855, 12.562777, 9.663394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.764357, 12.721375, 9.742912>,  <19.979458, 12.816533, 9.790624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.764357, 12.721375, 9.742912>,  <19.405855, 12.562777, 9.663394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.764357, 12.721375, 9.742912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035709, 0.382245, -0.923371,
		-0.442101, 0.834674, 0.328430,
		0.896254, 0.396495, 0.198796,
		20.033234, 12.840323, 9.802551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.373821, 13.266015, 9.498172>,  <19.405855, 12.562777, 9.663394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.373821, 13.266015, 9.498172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768021, 13.203326, 9.524182>,  <20.004541, 13.165712, 9.539789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.768021, 13.203326, 9.524182>,  <19.373821, 13.266015, 9.498172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.768021, 13.203326, 9.524182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140570, 0.539464, -0.830192,
		0.095030, 0.827294, 0.553672,
		0.985500, -0.156722, 0.065027,
		20.063671, 13.156309, 9.543691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680586, 13.938456, 9.516405>,  <19.373821, 13.266015, 9.498172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.680586, 13.938456, 9.516405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.950113, 13.686092, 9.362560>,  <20.111830, 13.534675, 9.270253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.950113, 13.686092, 9.362560>,  <19.680586, 13.938456, 9.516405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950113, 13.686092, 9.362560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217150, 0.666617, -0.713069,
		0.706270, 0.396960, 0.586180,
		0.673817, -0.630908, -0.384611,
		20.152258, 13.496819, 9.247177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.171188, 14.502523, 9.222899>,  <19.680586, 13.938456, 9.516405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.171188, 14.502523, 9.222899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.334097, 14.864909, 9.269134>,  <19.431843, 15.082340, 9.296874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.334097, 14.864909, 9.269134>,  <19.171188, 14.502523, 9.222899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.334097, 14.864909, 9.269134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489388, 0.109624, 0.865148,
		0.771122, -0.408917, 0.488014,
		0.407272, 0.905964, 0.115585,
		19.456278, 15.136698, 9.303809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.939724, 14.007983, 9.777942>,  <19.171188, 14.502523, 9.222899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.939724, 14.007983, 9.777942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.747112, 13.675983, 9.665350>,  <18.631544, 13.476784, 9.597795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.747112, 13.675983, 9.665350>,  <18.939724, 14.007983, 9.777942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.747112, 13.675983, 9.665350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805862, 0.293043, 0.514502,
		-0.344550, 0.474582, -0.809973,
		-0.481531, -0.829999, -0.281480,
		18.602654, 13.426984, 9.580906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.318930, 13.860088, 9.418682>,  <18.939724, 14.007983, 9.777942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.318930, 13.860088, 9.418682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061884, 14.147125, 9.526093>,  <17.907656, 14.319347, 9.590539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.061884, 14.147125, 9.526093>,  <18.318930, 13.860088, 9.418682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.061884, 14.147125, 9.526093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722573, 0.684156, -0.099088,
		-0.254818, 0.130354, -0.958162,
		-0.642616, 0.717592, 0.268526,
		17.869099, 14.362403, 9.606650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.332405, 14.090874, 8.771170>,  <18.318930, 13.860088, 9.418682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.332405, 14.090874, 8.771170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310276, 14.338987, 9.084139>,  <18.296999, 14.487856, 9.271920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310276, 14.338987, 9.084139>,  <18.332405, 14.090874, 8.771170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310276, 14.338987, 9.084139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804714, 0.491594, -0.332823,
		-0.591080, 0.611214, -0.526348,
		-0.055323, 0.620284, 0.782424,
		18.293678, 14.525073, 9.318866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.247417, 14.772224, 8.490844>,  <18.332405, 14.090874, 8.771170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.247417, 14.772224, 8.490844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.428179, 14.776094, 8.847650>,  <18.536634, 14.778417, 9.061733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.428179, 14.776094, 8.847650>,  <18.247417, 14.772224, 8.490844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.428179, 14.776094, 8.847650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751734, 0.534241, -0.386630,
		-0.480292, 0.845277, 0.234151,
		0.451902, 0.009676, 0.892015,
		18.563749, 14.778997, 9.115254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.371824, 15.467825, 8.825137>,  <18.247417, 14.772224, 8.490844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.371824, 15.467825, 8.825137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.661966, 15.204361, 8.905161>,  <18.836052, 15.046283, 8.953175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.661966, 15.204361, 8.905161>,  <18.371824, 15.467825, 8.825137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.661966, 15.204361, 8.905161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683524, 0.654729, -0.322684,
		0.081555, 0.370806, 0.925122,
		0.725357, -0.658660, 0.200058,
		18.879574, 15.006763, 8.965178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842978, 15.704741, 9.426532>,  <18.371824, 15.467825, 8.825137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842978, 15.704741, 9.426532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024097, 15.455459, 9.171474>,  <19.132769, 15.305890, 9.018438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.024097, 15.455459, 9.171474>,  <18.842978, 15.704741, 9.426532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.024097, 15.455459, 9.171474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737886, 0.663368, -0.124363,
		0.500497, -0.414198, 0.760226,
		0.452799, -0.623204, -0.637645,
		19.159937, 15.268497, 8.980180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.540905, 15.833921, 9.539813>,  <18.842978, 15.704741, 9.426532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.540905, 15.833921, 9.539813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.522762, 15.681946, 9.170254>,  <19.511877, 15.590760, 8.948518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.522762, 15.681946, 9.170254>,  <19.540905, 15.833921, 9.539813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.522762, 15.681946, 9.170254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791653, 0.550407, -0.265212,
		0.609285, -0.743437, 0.275816,
		-0.045357, -0.379940, -0.923898,
		19.509155, 15.567964, 8.893085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.159309, 15.423882, 9.485970>,  <19.540905, 15.833921, 9.539813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.159309, 15.423882, 9.485970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.006042, 15.577677, 9.150029>,  <19.914082, 15.669954, 8.948464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.006042, 15.577677, 9.150029>,  <20.159309, 15.423882, 9.485970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006042, 15.577677, 9.150029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879676, 0.429193, -0.204850,
		0.281697, -0.817289, -0.502678,
		-0.383167, 0.384488, -0.839852,
		19.891092, 15.693023, 8.898073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.591539, 15.957027, 9.705727>,  <20.159309, 15.423882, 9.485970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.591539, 15.957027, 9.705727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.698427, 16.315004, 9.848651>,  <20.762560, 16.529791, 9.934405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.698427, 16.315004, 9.848651>,  <20.591539, 15.957027, 9.705727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.698427, 16.315004, 9.848651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040563, -0.380913, 0.923721,
		0.962782, -0.232343, -0.138089,
		0.267220, 0.894943, 0.357311,
		20.778593, 16.583487, 9.955844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.328390, 16.042755, 10.097926>,  <20.591539, 15.957027, 9.705727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.328390, 16.042755, 10.097926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.039841, 16.286507, 10.229548>,  <20.866711, 16.432758, 10.308520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.039841, 16.286507, 10.229548>,  <21.328390, 16.042755, 10.097926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.039841, 16.286507, 10.229548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177278, -0.296823, 0.938333,
		0.669471, 0.735223, 0.106092,
		-0.721375, 0.609379, 0.329053,
		20.823429, 16.469320, 10.328263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.590782, 16.260565, 10.766456>,  <21.328390, 16.042755, 10.097926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.590782, 16.260565, 10.766456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.199432, 16.341328, 10.784441>,  <20.964622, 16.389786, 10.795233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.199432, 16.341328, 10.784441>,  <21.590782, 16.260565, 10.766456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.199432, 16.341328, 10.784441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004055, -0.198610, 0.980070,
		0.206812, 0.959056, 0.193495,
		-0.978372, 0.201905, 0.044964,
		20.905920, 16.401899, 10.797930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.586153, 16.782209, 11.185483>,  <21.590782, 16.260565, 10.766456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.586153, 16.782209, 11.185483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.236990, 16.589275, 11.214840>,  <21.027493, 16.473515, 11.232454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.236990, 16.589275, 11.214840>,  <21.586153, 16.782209, 11.185483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.236990, 16.589275, 11.214840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120541, -0.067449, 0.990414,
		-0.472764, 0.873385, 0.117018,
		-0.872906, -0.482337, 0.073392,
		20.975119, 16.444574, 11.236857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.331478, 17.021307, 11.718290>,  <21.586153, 16.782209, 11.185483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.331478, 17.021307, 11.718290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.128714, 16.678797, 11.678623>,  <21.007055, 16.473291, 11.654822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.128714, 16.678797, 11.678623>,  <21.331478, 17.021307, 11.718290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.128714, 16.678797, 11.678623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122391, -0.185376, 0.975016,
		-0.853264, 0.482111, 0.198770,
		-0.506913, -0.856274, -0.099169,
		20.976639, 16.421915, 11.648872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.037397, 16.880774, 12.325025>,  <21.331478, 17.021307, 11.718290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.037397, 16.880774, 12.325025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.006746, 16.513588, 12.169350>,  <20.988356, 16.293276, 12.075945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.006746, 16.513588, 12.169350>,  <21.037397, 16.880774, 12.325025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.006746, 16.513588, 12.169350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081160, -0.394783, 0.915183,
		-0.993751, 0.038540, 0.104753,
		-0.076626, -0.917966, -0.389189,
		20.983759, 16.238197, 12.052593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.564375, 16.565487, 12.752431>,  <21.037397, 16.880774, 12.325025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.564375, 16.565487, 12.752431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.768661, 16.269896, 12.576667>,  <20.891233, 16.092541, 12.471209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.768661, 16.269896, 12.576667>,  <20.564375, 16.565487, 12.752431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.768661, 16.269896, 12.576667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069759, -0.473789, 0.877871,
		-0.856914, -0.478997, -0.190422,
		0.510717, -0.738977, -0.439410,
		20.921877, 16.048203, 12.444843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.237501, 15.962831, 13.019923>,  <20.564375, 16.565487, 12.752431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.237501, 15.962831, 13.019923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.596081, 15.846659, 12.886039>,  <20.811228, 15.776956, 12.805708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.596081, 15.846659, 12.886039>,  <20.237501, 15.962831, 13.019923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.596081, 15.846659, 12.886039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147275, -0.517119, 0.843148,
		-0.417957, -0.805134, -0.420799,
		0.896449, -0.290427, -0.334709,
		20.865015, 15.759530, 12.785625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.215351, 15.187700, 12.982198>,  <20.237501, 15.962831, 13.019923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.215351, 15.187700, 12.982198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.606050, 15.273376, 12.985844>,  <20.840471, 15.324780, 12.988031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.606050, 15.273376, 12.985844>,  <20.215351, 15.187700, 12.982198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.606050, 15.273376, 12.985844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154725, -0.733732, 0.661588,
		0.148392, -0.644795, -0.749813,
		0.976750, 0.214189, 0.009114,
		20.899075, 15.337632, 12.988578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.597315, 14.504301, 13.023445>,  <20.215351, 15.187700, 12.982198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.597315, 14.504301, 13.023445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.866476, 14.779636, 13.131808>,  <21.027973, 14.944838, 13.196826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.866476, 14.779636, 13.131808>,  <20.597315, 14.504301, 13.023445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.866476, 14.779636, 13.131808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231784, -0.543980, 0.806450,
		0.702479, -0.479871, -0.525592,
		0.672904, 0.688338, 0.270908,
		21.068348, 14.986137, 13.213080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126724, 14.072506, 13.282985>,  <20.597315, 14.504301, 13.023445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126724, 14.072506, 13.282985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.214069, 14.435251, 13.427160>,  <21.266476, 14.652899, 13.513665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.214069, 14.435251, 13.427160>,  <21.126724, 14.072506, 13.282985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.214069, 14.435251, 13.427160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249265, -0.408932, 0.877862,
		0.943496, -0.101846, -0.315344,
		0.218361, 0.906864, 0.360439,
		21.279577, 14.707311, 13.535292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.763184, 14.049793, 13.472382>,  <21.126724, 14.072506, 13.282985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.763184, 14.049793, 13.472382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.588121, 14.340663, 13.683920>,  <21.483084, 14.515184, 13.810843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.588121, 14.340663, 13.683920>,  <21.763184, 14.049793, 13.472382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.588121, 14.340663, 13.683920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337695, -0.412174, 0.846212,
		0.833319, 0.548937, -0.065173,
		-0.437655, 0.727173, 0.528846,
		21.456825, 14.558815, 13.842573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.233053, 14.239541, 14.049628>,  <21.763184, 14.049793, 13.472382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.233053, 14.239541, 14.049628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.873476, 14.375779, 14.159822>,  <21.657730, 14.457522, 14.225939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.873476, 14.375779, 14.159822>,  <22.233053, 14.239541, 14.049628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.873476, 14.375779, 14.159822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177735, -0.291206, 0.940005,
		0.400385, 0.893976, 0.201243,
		-0.898945, 0.340596, 0.275486,
		21.603792, 14.477958, 14.242468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.377743, 14.515236, 14.691036>,  <22.233053, 14.239541, 14.049628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.377743, 14.515236, 14.691036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.981846, 14.464516, 14.664703>,  <21.744308, 14.434084, 14.648904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.981846, 14.464516, 14.664703>,  <22.377743, 14.515236, 14.691036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.981846, 14.464516, 14.664703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005338, -0.427640, 0.903934,
		-0.142771, 0.895012, 0.422576,
		-0.989741, -0.126800, -0.065832,
		21.684923, 14.426476, 14.644954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.151005, 14.778607, 15.296140>,  <22.377743, 14.515236, 14.691036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.151005, 14.778607, 15.296140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.885290, 14.518468, 15.148753>,  <21.725861, 14.362385, 15.060321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.885290, 14.518468, 15.148753>,  <22.151005, 14.778607, 15.296140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.885290, 14.518468, 15.148753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050971, -0.531213, 0.845704,
		-0.745736, 0.543010, 0.386028,
		-0.664289, -0.650348, -0.368467,
		21.686003, 14.323363, 15.038213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.418247, 15.612959, 15.275179>,  <22.151005, 14.778607, 15.296140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.418247, 15.612959, 15.275179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.294973, 15.356136, 14.994384>,  <22.221008, 15.202043, 14.825907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.294973, 15.356136, 14.994384>,  <22.418247, 15.612959, 15.275179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.294973, 15.356136, 14.994384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523744, -0.730519, 0.438217,
		-0.794174, -0.232609, 0.561409,
		-0.308187, -0.642056, -0.701987,
		22.202517, 15.163520, 14.783788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.092791, 15.419789, 14.953979>,  <22.418247, 15.612959, 15.275179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.092791, 15.419789, 14.953979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.439142, 15.221569, 14.926595>,  <23.646954, 15.102637, 14.910165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.439142, 15.221569, 14.926595>,  <23.092791, 15.419789, 14.953979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.439142, 15.221569, 14.926595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444272, 0.824645, -0.350118,
		0.229955, 0.272745, 0.934201,
		0.865877, -0.495551, -0.068459,
		23.698906, 15.072904, 14.906057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.595356, 16.005571, 14.732401>,  <23.092791, 15.419789, 14.953979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.595356, 16.005571, 14.732401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.840902, 15.692369, 14.772540>,  <23.988230, 15.504448, 14.796623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.840902, 15.692369, 14.772540>,  <23.595356, 16.005571, 14.732401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.840902, 15.692369, 14.772540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775343, 0.574144, -0.263063,
		0.148367, 0.239289, 0.959546,
		0.613865, -0.783007, 0.100347,
		24.025063, 15.457467, 14.802644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.099281, 16.268270, 15.282897>,  <23.595356, 16.005571, 14.732401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.099281, 16.268270, 15.282897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222080, 15.994140, 15.018751>,  <24.295759, 15.829661, 14.860264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222080, 15.994140, 15.018751>,  <24.099281, 16.268270, 15.282897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.222080, 15.994140, 15.018751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732355, 0.613241, -0.295959,
		0.607791, -0.392763, 0.690165,
		0.306995, -0.685327, -0.660364,
		24.314178, 15.788542, 14.820642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.580744, 15.666263, 15.226026>,  <24.099281, 16.268270, 15.282897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.580744, 15.666263, 15.226026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289200, 15.601727, 15.492177>,  <24.114273, 15.563006, 15.651868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.289200, 15.601727, 15.492177>,  <24.580744, 15.666263, 15.226026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.289200, 15.601727, 15.492177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419921, -0.662244, -0.620563,
		0.540765, -0.731712, 0.414935,
		-0.728862, -0.161338, 0.665380,
		24.070541, 15.553326, 15.691791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.639236, 14.905506, 15.402957>,  <24.580744, 15.666263, 15.226026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.639236, 14.905506, 15.402957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274031, 15.068631, 15.406829>,  <24.054907, 15.166507, 15.409152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.274031, 15.068631, 15.406829>,  <24.639236, 14.905506, 15.402957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.274031, 15.068631, 15.406829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327077, -0.717666, -0.614798,
		-0.243776, -0.564485, 0.788625,
		-0.913014, 0.407814, 0.009681,
		24.000126, 15.190975, 15.409733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101511, 14.311643, 15.335916>,  <24.639236, 14.905506, 15.402957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101511, 14.311643, 15.335916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171284, 13.925808, 15.256773>,  <25.213146, 13.694307, 15.209288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.171284, 13.925808, 15.256773>,  <25.101511, 14.311643, 15.335916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.171284, 13.925808, 15.256773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651688, 0.037544, -0.757557,
		0.738158, 0.261082, -0.622061,
		0.174430, -0.964586, -0.197857,
		25.223612, 13.636432, 15.197416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608614, 14.543962, 14.883410>,  <25.101511, 14.311643, 15.335916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608614, 14.543962, 14.883410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619429, 14.416375, 14.504457>,  <25.625917, 14.339823, 14.277086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.619429, 14.416375, 14.504457>,  <25.608614, 14.543962, 14.883410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.619429, 14.416375, 14.504457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994507, 0.104450, -0.006784,
		0.101117, -0.941992, 0.320042,
		0.027038, -0.318970, -0.947379,
		25.627541, 14.320684, 14.220243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.022272, 13.878044, 14.757828>,  <25.608614, 14.543962, 14.883410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.022272, 13.878044, 14.757828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016768, 14.122132, 14.440983>,  <26.013464, 14.268585, 14.250875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016768, 14.122132, 14.440983>,  <26.022272, 13.878044, 14.757828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016768, 14.122132, 14.440983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978873, 0.169848, 0.113840,
		0.204006, -0.773811, -0.599665,
		-0.013761, 0.610220, -0.792113,
		26.012640, 14.305199, 14.203349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549841, 14.266113, 14.408310>,  <26.022272, 13.878044, 14.757828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549841, 14.266113, 14.408310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618233, 14.365736, 14.026999>,  <26.659267, 14.425509, 13.798213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.618233, 14.365736, 14.026999>,  <26.549841, 14.266113, 14.408310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618233, 14.365736, 14.026999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417017, 0.894882, 0.159003,
		0.892671, 0.370347, 0.256868,
		0.170980, 0.249056, -0.953277,
		26.669527, 14.440453, 13.741016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333263, 14.774886, 14.734737>,  <26.549841, 14.266113, 14.408310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333263, 14.774886, 14.734737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566156, 14.873526, 15.044626>,  <26.705893, 14.932710, 15.230559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566156, 14.873526, 15.044626>,  <26.333263, 14.774886, 14.734737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566156, 14.873526, 15.044626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807858, -0.282707, -0.517149,
		0.091491, 0.926966, -0.363818,
		0.582233, 0.246598, 0.774722,
		26.740826, 14.947505, 15.277042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<17.744122, 23.694883, 22.215712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.456234, 23.713589, 22.492786>,  <17.283501, 23.724812, 22.659031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.456234, 23.713589, 22.492786>,  <17.744122, 23.694883, 22.215712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.456234, 23.713589, 22.492786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513264, -0.707697, -0.485516,
		0.467510, -0.704967, 0.533344,
		-0.719719, 0.046762, 0.692690,
		17.240318, 23.727617, 22.700594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.633444, 23.026018, 22.395117>,  <17.744122, 23.694883, 22.215712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.633444, 23.026018, 22.395117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.297564, 23.209719, 22.511044>,  <17.096035, 23.319939, 22.580599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.297564, 23.209719, 22.511044>,  <17.633444, 23.026018, 22.395117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.297564, 23.209719, 22.511044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523382, -0.542072, -0.657441,
		-0.144828, -0.703738, 0.695541,
		-0.839700, 0.459250, 0.289816,
		17.045654, 23.347494, 22.597988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.091305, 22.483328, 22.275503>,  <17.633444, 23.026018, 22.395117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.091305, 22.483328, 22.275503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.893106, 22.828249, 22.317299>,  <16.774187, 23.035202, 22.342377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.893106, 22.828249, 22.317299>,  <17.091305, 22.483328, 22.275503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.893106, 22.828249, 22.317299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717552, -0.338562, -0.608683,
		-0.489495, -0.376573, 0.786503,
		-0.495494, 0.862304, 0.104487,
		16.744457, 23.086941, 22.348646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.394512, 22.350313, 22.474787>,  <17.091305, 22.483328, 22.275503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.394512, 22.350313, 22.474787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.413652, 22.706646, 22.294064>,  <16.425137, 22.920444, 22.185629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.413652, 22.706646, 22.294064>,  <16.394512, 22.350313, 22.474787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.413652, 22.706646, 22.294064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676115, -0.304063, -0.671128,
		-0.735240, 0.337589, 0.587754,
		0.047851, 0.890830, -0.451809,
		16.428007, 22.973896, 22.158522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.674492, 22.563808, 22.292582>,  <16.394512, 22.350313, 22.474787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.674492, 22.563808, 22.292582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.904043, 22.789511, 22.055168>,  <16.041773, 22.924932, 21.912720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.904043, 22.789511, 22.055168>,  <15.674492, 22.563808, 22.292582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.904043, 22.789511, 22.055168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496253, -0.336932, -0.800131,
		-0.651459, 0.753719, 0.086655,
		0.573877, 0.564256, -0.593533,
		16.076206, 22.958788, 21.877108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254478, 22.931576, 21.835081>,  <15.674492, 22.563808, 22.292582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254478, 22.931576, 21.835081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.611235, 22.923109, 21.654379>,  <15.825289, 22.918030, 21.545958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.611235, 22.923109, 21.654379>,  <15.254478, 22.931576, 21.835081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.611235, 22.923109, 21.654379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424443, -0.384048, -0.819972,
		-0.156141, 0.923070, -0.351513,
		0.891890, -0.021166, -0.451756,
		15.878801, 22.916759, 21.518852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.016216, 22.795706, 21.206650>,  <15.254478, 22.931576, 21.835081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.016216, 22.795706, 21.206650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.394193, 22.666216, 21.187517>,  <15.620978, 22.588522, 21.176037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.394193, 22.666216, 21.187517>,  <15.016216, 22.795706, 21.206650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.394193, 22.666216, 21.187517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272520, -0.697565, -0.662673,
		0.181158, 0.639223, -0.747379,
		0.944942, -0.323724, -0.047832,
		15.677675, 22.569099, 21.173168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.126143, 22.799105, 20.559069>,  <15.016216, 22.795706, 21.206650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.126143, 22.799105, 20.559069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.398951, 22.542105, 20.698809>,  <15.562635, 22.387905, 20.782654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.398951, 22.542105, 20.698809>,  <15.126143, 22.799105, 20.559069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.398951, 22.542105, 20.698809> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334059, -0.698633, -0.632705,
		0.650581, 0.314813, -0.691113,
		0.682019, -0.642499, 0.349351,
		15.603556, 22.349356, 20.803614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.223940, 22.381147, 19.940323>,  <15.126143, 22.799105, 20.559069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.223940, 22.381147, 19.940323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.423827, 22.171543, 20.216206>,  <15.543759, 22.045780, 20.381735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.423827, 22.171543, 20.216206>,  <15.223940, 22.381147, 19.940323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.423827, 22.171543, 20.216206> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038995, -0.809057, -0.586435,
		0.865310, 0.266157, -0.424734,
		0.499717, -0.524010, 0.689707,
		15.573742, 22.014339, 20.423119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.816722, 22.059542, 19.625414>,  <15.223940, 22.381147, 19.940323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.816722, 22.059542, 19.625414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.715302, 21.833439, 19.939405>,  <15.654449, 21.697777, 20.127800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.715302, 21.833439, 19.939405>,  <15.816722, 22.059542, 19.625414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.715302, 21.833439, 19.939405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154602, -0.777387, -0.609727,
		0.954887, -0.275957, 0.109718,
		-0.253552, -0.565258, 0.784981,
		15.639235, 21.663862, 20.174900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.295111, 21.533464, 19.696018>,  <15.816722, 22.059542, 19.625414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.295111, 21.533464, 19.696018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.944900, 21.407059, 19.842216>,  <15.734773, 21.331215, 19.929935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.944900, 21.407059, 19.842216>,  <16.295111, 21.533464, 19.696018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.944900, 21.407059, 19.842216> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094518, -0.853862, -0.511845,
		0.473834, -0.413588, 0.777449,
		-0.875527, -0.316013, 0.365497,
		15.682241, 21.312256, 19.951866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.356110, 20.803902, 19.942953>,  <16.295111, 21.533464, 19.696018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.356110, 20.803902, 19.942953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.961970, 20.852169, 19.894747>,  <15.725486, 20.881130, 19.865824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.961970, 20.852169, 19.894747>,  <16.356110, 20.803902, 19.942953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.961970, 20.852169, 19.894747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022107, -0.791073, -0.611322,
		-0.169104, -0.599702, 0.782151,
		-0.985350, 0.120668, -0.120516,
		15.666366, 20.888369, 19.858591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.051626, 20.170948, 20.091751>,  <16.356110, 20.803902, 19.942953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.051626, 20.170948, 20.091751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.771812, 20.374809, 19.891390>,  <15.603924, 20.497126, 19.771173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.771812, 20.374809, 19.891390>,  <16.051626, 20.170948, 20.091751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.771812, 20.374809, 19.891390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225021, -0.822400, -0.522516,
		-0.678242, -0.252807, 0.689983,
		-0.699538, 0.509653, -0.500900,
		15.561952, 20.527706, 19.741119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.552965, 19.668945, 19.888680>,  <16.051626, 20.170948, 20.091751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.552965, 19.668945, 19.888680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.427227, 19.980331, 19.671358>,  <15.351785, 20.167164, 19.540966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.427227, 19.980331, 19.671358>,  <15.552965, 19.668945, 19.888680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.427227, 19.980331, 19.671358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218962, -0.616339, -0.756427,
		-0.923711, -0.118816, 0.364198,
		-0.314345, 0.778466, -0.543303,
		15.332924, 20.213871, 19.508368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.971500, 19.400984, 19.515289>,  <15.552965, 19.668945, 19.888680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.971500, 19.400984, 19.515289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.074079, 19.726580, 19.306808>,  <15.135626, 19.921938, 19.181719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.074079, 19.726580, 19.306808>,  <14.971500, 19.400984, 19.515289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.074079, 19.726580, 19.306808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286431, -0.451016, -0.845306,
		-0.923143, 0.366064, 0.117491,
		0.256446, 0.813991, -0.521204,
		15.151012, 19.970778, 19.150448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.431854, 19.512104, 18.972107>,  <14.971500, 19.400984, 19.515289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.431854, 19.512104, 18.972107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.783305, 19.664970, 18.857590>,  <14.994176, 19.756691, 18.788879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.783305, 19.664970, 18.857590>,  <14.431854, 19.512104, 18.972107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.783305, 19.664970, 18.857590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139703, -0.367586, -0.919437,
		-0.456614, 0.847838, -0.269582,
		0.878628, 0.382166, -0.286291,
		15.046893, 19.779621, 18.771702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.326735, 19.802942, 18.412876>,  <14.431854, 19.512104, 18.972107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.326735, 19.802942, 18.412876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.717906, 19.729267, 18.373411>,  <14.952608, 19.685062, 18.349731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.717906, 19.729267, 18.373411>,  <14.326735, 19.802942, 18.412876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.717906, 19.729267, 18.373411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146127, -0.265360, -0.953012,
		0.149351, 0.946393, -0.286417,
		0.977927, -0.184186, -0.098662,
		15.011284, 19.674011, 18.343813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.494858, 19.972349, 17.665966>,  <14.326735, 19.802942, 18.412876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.494858, 19.972349, 17.665966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.807959, 19.762341, 17.799622>,  <14.995819, 19.636335, 17.879816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.807959, 19.762341, 17.799622>,  <14.494858, 19.972349, 17.665966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.807959, 19.762341, 17.799622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164116, -0.343767, -0.924603,
		0.600305, 0.778572, -0.182920,
		0.782752, -0.525023, 0.334141,
		15.042784, 19.604834, 17.899864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.805614, 20.052961, 17.158842>,  <14.494858, 19.972349, 17.665966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.805614, 20.052961, 17.158842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.004932, 19.762976, 17.349054>,  <15.124523, 19.588984, 17.463181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.004932, 19.762976, 17.349054>,  <14.805614, 20.052961, 17.158842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.004932, 19.762976, 17.349054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090449, -0.502012, -0.860118,
		0.862276, 0.471605, -0.184579,
		0.498297, -0.724964, 0.475529,
		15.154422, 19.545486, 17.491713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.444078, 20.004021, 16.888691>,  <14.805614, 20.052961, 17.158842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.444078, 20.004021, 16.888691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.407914, 19.639122, 17.048506>,  <15.386216, 19.420183, 17.144394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.407914, 19.639122, 17.048506>,  <15.444078, 20.004021, 16.888691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.407914, 19.639122, 17.048506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059710, -0.405423, -0.912177,
		0.994113, -0.058614, 0.091125,
		-0.090410, -0.912248, 0.399537,
		15.380791, 19.365448, 17.168367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.928755, 19.570024, 16.629286>,  <15.444078, 20.004021, 16.888691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.928755, 19.570024, 16.629286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.641587, 19.320787, 16.753445>,  <15.469287, 19.171246, 16.827940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.641587, 19.320787, 16.753445>,  <15.928755, 19.570024, 16.629286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.641587, 19.320787, 16.753445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030970, -0.474042, -0.879958,
		0.695438, -0.622125, 0.359621,
		-0.717919, -0.623093, 0.310399,
		15.426211, 19.133860, 16.846565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.183563, 18.965254, 16.350822>,  <15.928755, 19.570024, 16.629286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.183563, 18.965254, 16.350822> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.807430, 18.898254, 16.469290>,  <15.581750, 18.858055, 16.540371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.807430, 18.898254, 16.469290>,  <16.183563, 18.965254, 16.350822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.807430, 18.898254, 16.469290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122932, -0.644398, -0.754744,
		0.317267, -0.746121, 0.585359,
		-0.940334, -0.167497, 0.296168,
		15.525330, 18.848005, 16.558140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230198, 18.809542, 15.575528>,  <16.183563, 18.965254, 16.350822>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.230198, 18.809542, 15.575528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.568316, 18.740156, 15.373384>,  <16.771185, 18.698524, 15.252097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.568316, 18.740156, 15.373384>,  <16.230198, 18.809542, 15.575528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.568316, 18.740156, 15.373384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524412, 0.450505, 0.722521,
		0.102335, -0.875760, 0.471776,
		0.845292, -0.173466, -0.505361,
		16.821903, 18.688116, 15.221775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.687700, 18.392038, 15.969618>,  <16.230198, 18.809542, 15.575528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.687700, 18.392038, 15.969618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.919924, 18.628466, 15.745622>,  <17.059258, 18.770321, 15.611224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.919924, 18.628466, 15.745622>,  <16.687700, 18.392038, 15.969618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.919924, 18.628466, 15.745622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505640, 0.277347, 0.816950,
		0.638184, -0.757442, -0.137851,
		0.580560, 0.591067, -0.559991,
		17.094091, 18.805786, 15.577624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.319082, 18.298235, 16.252274>,  <16.687700, 18.392038, 15.969618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.319082, 18.298235, 16.252274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.382837, 18.632700, 16.042347>,  <17.421091, 18.833378, 15.916391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.382837, 18.632700, 16.042347>,  <17.319082, 18.298235, 16.252274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382837, 18.632700, 16.042347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534723, 0.373753, 0.757879,
		0.829860, -0.401427, -0.387543,
		0.159387, 0.836161, -0.524815,
		17.430655, 18.883549, 15.884903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.983290, 18.314367, 16.349571>,  <17.319082, 18.298235, 16.252274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.983290, 18.314367, 16.349571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.876234, 18.681833, 16.233349>,  <17.812000, 18.902313, 16.163614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.876234, 18.681833, 16.233349>,  <17.983290, 18.314367, 16.349571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.876234, 18.681833, 16.233349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542479, 0.392893, 0.742531,
		0.796295, 0.041109, -0.603510,
		-0.267639, 0.918665, -0.290558,
		17.795942, 18.957434, 16.146181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587666, 18.661465, 16.320852>,  <17.983290, 18.314367, 16.349571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587666, 18.661465, 16.320852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.320845, 18.957291, 16.356817>,  <18.160751, 19.134787, 16.378395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.320845, 18.957291, 16.356817>,  <18.587666, 18.661465, 16.320852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.320845, 18.957291, 16.356817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546945, 0.404191, 0.733131,
		0.505857, 0.538214, -0.674118,
		-0.667054, 0.739564, 0.089910,
		18.120729, 19.179159, 16.383791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.972515, 19.352285, 16.617069>,  <18.587666, 18.661465, 16.320852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.972515, 19.352285, 16.617069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.581100, 19.394192, 16.688046>,  <18.346251, 19.419334, 16.730631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.581100, 19.394192, 16.688046>,  <18.972515, 19.352285, 16.617069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.581100, 19.394192, 16.688046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199620, 0.268321, 0.942420,
		0.051121, 0.957616, -0.283475,
		-0.978539, 0.104765, 0.177443,
		18.287539, 19.425621, 16.741278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.881481, 20.027405, 16.791050>,  <18.972515, 19.352285, 16.617069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.881481, 20.027405, 16.791050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.570019, 19.823439, 16.937298>,  <18.383141, 19.701059, 17.025047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.570019, 19.823439, 16.937298>,  <18.881481, 20.027405, 16.791050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.570019, 19.823439, 16.937298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058978, 0.520647, 0.851732,
		-0.624671, 0.684771, -0.375332,
		-0.778658, -0.509916, 0.365620,
		18.336422, 19.670464, 17.046984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.462729, 20.564856, 17.168615>,  <18.881481, 20.027405, 16.791050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.462729, 20.564856, 17.168615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.362305, 20.221912, 17.348352>,  <18.302050, 20.016148, 17.456194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.362305, 20.221912, 17.348352>,  <18.462729, 20.564856, 17.168615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362305, 20.221912, 17.348352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150650, 0.423946, 0.893070,
		-0.956176, 0.291908, 0.022724,
		-0.251061, -0.857356, 0.449343,
		18.286987, 19.964706, 17.483156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.012331, 20.712685, 17.579710>,  <18.462729, 20.564856, 17.168615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.012331, 20.712685, 17.579710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.141060, 20.372519, 17.746191>,  <18.218298, 20.168419, 17.846081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.141060, 20.372519, 17.746191>,  <18.012331, 20.712685, 17.579710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.141060, 20.372519, 17.746191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033882, 0.428964, 0.902686,
		-0.946193, -0.304607, 0.109236,
		0.321823, -0.850414, 0.416203,
		18.237606, 20.117393, 17.871052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.581701, 20.668882, 18.141928>,  <18.012331, 20.712685, 17.579710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.581701, 20.668882, 18.141928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.862942, 20.389696, 18.196323>,  <18.031685, 20.222183, 18.228962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.862942, 20.389696, 18.196323>,  <17.581701, 20.668882, 18.141928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.862942, 20.389696, 18.196323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099574, 0.092720, 0.990701,
		-0.704086, -0.710102, -0.004308,
		0.703099, -0.697967, 0.135990,
		18.073872, 20.180305, 18.237120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.304541, 20.202980, 18.730286>,  <17.581701, 20.668882, 18.141928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.304541, 20.202980, 18.730286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.703985, 20.182247, 18.726511>,  <17.943651, 20.169807, 18.724245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.703985, 20.182247, 18.726511>,  <17.304541, 20.202980, 18.730286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.703985, 20.182247, 18.726511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025235, 0.313329, 0.949309,
		-0.046246, -0.948229, 0.314202,
		0.998611, -0.051831, -0.009439,
		18.003569, 20.166698, 18.723679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445097, 20.018459, 19.392502>,  <17.304541, 20.202980, 18.730286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445097, 20.018459, 19.392502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.804047, 20.149803, 19.274586>,  <18.019417, 20.228609, 19.203836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.804047, 20.149803, 19.274586>,  <17.445097, 20.018459, 19.392502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.804047, 20.149803, 19.274586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155138, 0.390638, 0.907378,
		0.413116, -0.859984, 0.299603,
		0.897367, 0.328373, -0.294795,
		18.073259, 20.248310, 19.186150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.887608, 19.705786, 19.851400>,  <17.445097, 20.018459, 19.392502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.887608, 19.705786, 19.851400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.068346, 20.028156, 19.698395>,  <18.176788, 20.221579, 19.606590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.068346, 20.028156, 19.698395>,  <17.887608, 19.705786, 19.851400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.068346, 20.028156, 19.698395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142993, 0.357809, 0.922781,
		0.880562, -0.471651, 0.046433,
		0.451845, 0.805926, -0.382516,
		18.203899, 20.269934, 19.583639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.547039, 19.840307, 20.192270>,  <17.887608, 19.705786, 19.851400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.547039, 19.840307, 20.192270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.455050, 20.197737, 20.038057>,  <18.399857, 20.412195, 19.945530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.455050, 20.197737, 20.038057>,  <18.547039, 19.840307, 20.192270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.455050, 20.197737, 20.038057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360399, 0.446182, 0.819167,
		0.904005, 0.049442, -0.424654,
		-0.229974, 0.893576, -0.385531,
		18.386057, 20.465809, 19.922398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103672, 20.236998, 20.477343>,  <18.547039, 19.840307, 20.192270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.103672, 20.236998, 20.477343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.853985, 20.510303, 20.325815>,  <18.704172, 20.674286, 20.234898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.853985, 20.510303, 20.325815>,  <19.103672, 20.236998, 20.477343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.853985, 20.510303, 20.325815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257392, 0.637678, 0.726027,
		0.737633, 0.355693, -0.573917,
		-0.624217, 0.683263, -0.378820,
		18.666719, 20.715282, 20.212170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468525, 20.874680, 20.309347>,  <19.103672, 20.236998, 20.477343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.468525, 20.874680, 20.309347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.096447, 21.021166, 20.319382>,  <18.873201, 21.109056, 20.325401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.096447, 21.021166, 20.319382>,  <19.468525, 20.874680, 20.309347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.096447, 21.021166, 20.319382> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320885, 0.778065, 0.540045,
		0.178254, 0.510395, -0.841262,
		-0.930193, 0.366213, 0.025085,
		18.817389, 21.131029, 20.326908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490633, 21.554428, 20.057058>,  <19.468525, 20.874680, 20.309347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.490633, 21.554428, 20.057058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.154743, 21.554489, 20.274263>,  <18.953209, 21.554525, 20.404587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.154743, 21.554489, 20.274263>,  <19.490633, 21.554428, 20.057058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.154743, 21.554489, 20.274263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300070, 0.833574, 0.463802,
		-0.452572, 0.552408, -0.700017,
		-0.839724, 0.000150, 0.543014,
		18.902826, 21.554535, 20.437168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.362139, 22.229578, 20.144716>,  <19.490633, 21.554428, 20.057058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.362139, 22.229578, 20.144716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.140093, 22.059551, 20.430700>,  <19.006865, 21.957535, 20.602291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.140093, 22.059551, 20.430700>,  <19.362139, 22.229578, 20.144716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.140093, 22.059551, 20.430700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182046, 0.776632, 0.603077,
		-0.811607, 0.464933, -0.353739,
		-0.555115, -0.425065, 0.714960,
		18.973558, 21.932032, 20.645187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.915884, 22.824589, 20.469696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.936707, 22.513325, 20.720058>,  <18.949200, 22.326567, 20.870275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.936707, 22.513325, 20.720058>,  <18.915884, 22.824589, 20.469696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.936707, 22.513325, 20.720058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191891, 0.622869, 0.758427,
		-0.980035, 0.080626, 0.181745,
		0.052054, -0.778161, 0.625905,
		18.952322, 22.279877, 20.907829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.455034, 22.984297, 21.028589>,  <18.915884, 22.824589, 20.469696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.455034, 22.984297, 21.028589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.712229, 22.720573, 21.184477>,  <18.866545, 22.562340, 21.278009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.712229, 22.720573, 21.184477>,  <18.455034, 22.984297, 21.028589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.712229, 22.720573, 21.184477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110782, 0.583563, 0.804476,
		-0.757824, -0.474093, 0.448262,
		0.642985, -0.659310, 0.389717,
		18.905125, 22.522779, 21.301392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.279112, 23.041233, 21.732368>,  <18.455034, 22.984297, 21.028589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.279112, 23.041233, 21.732368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.634287, 22.857334, 21.738020>,  <18.847391, 22.746994, 21.741411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.634287, 22.857334, 21.738020>,  <18.279112, 23.041233, 21.732368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.634287, 22.857334, 21.738020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279897, 0.564448, 0.776567,
		-0.365002, -0.685587, 0.629876,
		0.887937, -0.459749, 0.014131,
		18.900667, 22.719410, 21.742260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.398752, 22.688374, 22.441881>,  <18.279112, 23.041233, 21.732368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.398752, 22.688374, 22.441881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.734442, 22.790329, 22.249743>,  <18.935856, 22.851501, 22.134459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.734442, 22.790329, 22.249743>,  <18.398752, 22.688374, 22.441881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.734442, 22.790329, 22.249743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309473, 0.502465, 0.807313,
		0.447131, -0.826173, 0.342802,
		0.839226, 0.254887, -0.480346,
		18.986210, 22.866795, 22.105639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809446, 22.734705, 23.017471>,  <18.398752, 22.688374, 22.441881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.809446, 22.734705, 23.017471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.071642, 22.882458, 22.753988>,  <19.228958, 22.971109, 22.595900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.071642, 22.882458, 22.753988>,  <18.809446, 22.734705, 23.017471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.071642, 22.882458, 22.753988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478760, 0.471306, 0.740716,
		0.584061, -0.800890, 0.132088,
		0.655486, 0.369385, -0.658705,
		19.268288, 22.993273, 22.556377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.520895, 22.637403, 23.207491>,  <18.809446, 22.734705, 23.017471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.520895, 22.637403, 23.207491> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.562357, 22.934164, 22.942513>,  <19.587234, 23.112221, 22.783525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.562357, 22.934164, 22.942513>,  <19.520895, 22.637403, 23.207491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.562357, 22.934164, 22.942513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580373, 0.495770, 0.646049,
		0.807727, -0.451432, -0.379191,
		0.103656, 0.741903, -0.662446,
		19.593454, 23.156734, 22.743778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.204443, 22.949018, 23.205559>,  <19.520895, 22.637403, 23.207491>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.204443, 22.949018, 23.205559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.997395, 23.255632, 23.053513>,  <19.873165, 23.439602, 22.962284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.997395, 23.255632, 23.053513>,  <20.204443, 22.949018, 23.205559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.997395, 23.255632, 23.053513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641768, 0.641652, 0.420020,
		0.565863, -0.026535, -0.824072,
		-0.517622, 0.766537, -0.380116,
		19.842108, 23.485594, 22.939478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.689419, 23.369635, 22.924822>,  <20.204443, 22.949018, 23.205559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.689419, 23.369635, 22.924822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.387426, 23.630713, 22.950102>,  <20.206232, 23.787359, 22.965271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.387426, 23.630713, 22.950102>,  <20.689419, 23.369635, 22.924822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.387426, 23.630713, 22.950102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620396, 0.679733, 0.391245,
		0.212403, 0.334592, -0.918114,
		-0.754980, 0.652695, 0.063202,
		20.160933, 23.826521, 22.969063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.985836, 24.059584, 22.913136>,  <20.689419, 23.369635, 22.924822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.985836, 24.059584, 22.913136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.619543, 24.083958, 23.071991>,  <20.399767, 24.098581, 23.167305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.619543, 24.083958, 23.071991>,  <20.985836, 24.059584, 22.913136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.619543, 24.083958, 23.071991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311421, 0.732182, 0.605745,
		-0.253868, 0.678378, -0.689459,
		-0.915734, 0.060933, 0.397139,
		20.344824, 24.102238, 23.191133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.814503, 24.746758, 22.880484>,  <20.985836, 24.059584, 22.913136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.814503, 24.746758, 22.880484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.633297, 24.565105, 23.187349>,  <20.524572, 24.456114, 23.371469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.633297, 24.565105, 23.187349>,  <20.814503, 24.746758, 22.880484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.633297, 24.565105, 23.187349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428079, 0.644023, 0.634021,
		-0.782001, 0.615628, -0.097349,
		-0.453016, -0.454132, 0.767164,
		20.497393, 24.428865, 23.417498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.641870, 25.333317, 23.334583>,  <20.814503, 24.746758, 22.880484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.641870, 25.333317, 23.334583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.588903, 25.017248, 23.573946>,  <20.557123, 24.827606, 23.717564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.588903, 25.017248, 23.573946>,  <20.641870, 25.333317, 23.334583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.588903, 25.017248, 23.573946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206928, 0.568385, 0.796316,
		-0.969353, 0.229276, 0.088243,
		-0.132420, -0.790172, 0.598409,
		20.549177, 24.780197, 23.753469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.282255, 25.548538, 24.047623>,  <20.641870, 25.333317, 23.334583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.282255, 25.548538, 24.047623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.466728, 25.198519, 24.106405>,  <20.577412, 24.988506, 24.141674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.466728, 25.198519, 24.106405>,  <20.282255, 25.548538, 24.047623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.466728, 25.198519, 24.106405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372505, 0.341257, 0.863009,
		-0.805325, -0.343265, 0.483343,
		0.461185, -0.875050, 0.146955,
		20.605083, 24.936005, 24.150492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.021717, 25.237209, 24.631464>,  <20.282255, 25.548538, 24.047623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.021717, 25.237209, 24.631464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.387964, 25.080490, 24.595387>,  <20.607714, 24.986458, 24.573740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.387964, 25.080490, 24.595387>,  <20.021717, 25.237209, 24.631464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.387964, 25.080490, 24.595387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186902, 0.216174, 0.958299,
		-0.355963, -0.894294, 0.271161,
		0.915619, -0.391799, -0.090195,
		20.662649, 24.962950, 24.568327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148283, 24.878185, 25.249647>,  <20.021717, 25.237209, 24.631464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148283, 24.878185, 25.249647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.516953, 24.923035, 25.101082>,  <20.738153, 24.949944, 25.011944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.516953, 24.923035, 25.101082>,  <20.148283, 24.878185, 25.249647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.516953, 24.923035, 25.101082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342431, 0.214902, 0.914635,
		0.182365, -0.970179, 0.159677,
		0.921674, 0.112119, -0.371410,
		20.793455, 24.956671, 24.989658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.570509, 24.561214, 25.708069>,  <20.148283, 24.878185, 25.249647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.570509, 24.561214, 25.708069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.848255, 24.763721, 25.503500>,  <21.014902, 24.885225, 25.380758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.848255, 24.763721, 25.503500>,  <20.570509, 24.561214, 25.708069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.848255, 24.763721, 25.503500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534678, 0.112703, 0.837507,
		0.481642, -0.854980, -0.192434,
		0.694363, 0.506269, -0.511421,
		21.056564, 24.915602, 25.350073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.254507, 24.273485, 25.919048>,  <20.570509, 24.561214, 25.708069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.254507, 24.273485, 25.919048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.389151, 24.615091, 25.760376>,  <21.469936, 24.820055, 25.665173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.389151, 24.615091, 25.760376>,  <21.254507, 24.273485, 25.919048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.389151, 24.615091, 25.760376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624109, 0.113107, 0.773107,
		0.705112, -0.507805, -0.494925,
		0.336608, 0.854015, -0.396679,
		21.490133, 24.871296, 25.641373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.959669, 24.364250, 26.007380>,  <21.254507, 24.273485, 25.919048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.959669, 24.364250, 26.007380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.848442, 24.745323, 25.958263>,  <21.781706, 24.973967, 25.928793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.848442, 24.745323, 25.958263>,  <21.959669, 24.364250, 26.007380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.848442, 24.745323, 25.958263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493760, 0.251414, 0.832462,
		0.823942, 0.170850, -0.540305,
		-0.278066, 0.952681, -0.122792,
		21.765022, 25.031128, 25.921427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.590319, 24.743893, 26.085880>,  <21.959669, 24.364250, 26.007380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.590319, 24.743893, 26.085880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.286734, 24.998882, 26.138943>,  <22.104582, 25.151876, 26.170780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.286734, 24.998882, 26.138943>,  <22.590319, 24.743893, 26.085880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.286734, 24.998882, 26.138943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433480, 0.342650, 0.833478,
		0.485867, 0.690084, -0.536392,
		-0.758965, 0.637475, 0.132656,
		22.059044, 25.190125, 26.178740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.909960, 25.396259, 26.142513>,  <22.590319, 24.743893, 26.085880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.909960, 25.396259, 26.142513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.565514, 25.483164, 26.326374>,  <22.358847, 25.535307, 26.436691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.565514, 25.483164, 26.326374>,  <22.909960, 25.396259, 26.142513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.565514, 25.483164, 26.326374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506716, 0.440521, 0.741066,
		-0.041482, 0.871056, -0.489429,
		-0.861114, 0.217261, 0.459652,
		22.307178, 25.548342, 26.464270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.957088, 26.027740, 26.294226>,  <22.909960, 25.396259, 26.142513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.957088, 26.027740, 26.294226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.681278, 25.881496, 26.544308>,  <22.515793, 25.793751, 26.694357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.681278, 25.881496, 26.544308>,  <22.957088, 26.027740, 26.294226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.681278, 25.881496, 26.544308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491658, 0.397573, 0.774731,
		-0.531815, 0.841585, -0.094382,
		-0.689526, -0.365610, 0.625207,
		22.474421, 25.771812, 26.731871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.814281, 26.618164, 26.721153>,  <22.957088, 26.027740, 26.294226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.814281, 26.618164, 26.721153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.691153, 26.277653, 26.891129>,  <22.617275, 26.073345, 26.993113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.691153, 26.277653, 26.891129>,  <22.814281, 26.618164, 26.721153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.691153, 26.277653, 26.891129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466040, 0.254471, 0.847379,
		-0.829490, 0.458878, 0.318398,
		-0.307820, -0.851279, 0.424937,
		22.598806, 26.022268, 27.018610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.606499, 26.842815, 27.449942>,  <22.814281, 26.618164, 26.721153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.606499, 26.842815, 27.449942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.652348, 26.445522, 27.457415>,  <22.679857, 26.207146, 27.461899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.652348, 26.445522, 27.457415>,  <22.606499, 26.842815, 27.449942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.652348, 26.445522, 27.457415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492970, 0.073197, 0.866962,
		-0.862463, -0.090164, 0.498025,
		0.114623, -0.993233, 0.018682,
		22.686735, 26.147552, 27.463018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.265415, 26.481693, 28.001225>,  <22.606499, 26.842815, 27.449942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.265415, 26.481693, 28.001225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.601812, 26.306049, 27.874788>,  <22.803650, 26.200663, 27.798925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.601812, 26.306049, 27.874788>,  <22.265415, 26.481693, 28.001225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.601812, 26.306049, 27.874788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322036, -0.063209, 0.944615,
		-0.434772, -0.896206, 0.088252,
		0.840991, -0.439112, -0.316092,
		22.854109, 26.174316, 27.779961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.612167, 26.924425, 28.062912>,  <22.265415, 26.481693, 28.001225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.612167, 26.924425, 28.062912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.999573, 26.956526, 28.157177>,  <22.232016, 26.975786, 28.213736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.999573, 26.956526, 28.157177>,  <21.612167, 26.924425, 28.062912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.999573, 26.956526, 28.157177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059190, -0.845250, 0.531083,
		0.241814, -0.528311, -0.813888,
		0.968516, 0.080250, 0.235664,
		22.290127, 26.980600, 28.227877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.269421, 26.838314, 28.822056>,  <21.612167, 26.924425, 28.062912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.269421, 26.838314, 28.822056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.972980, 26.999777, 29.036654>,  <20.795116, 27.096655, 29.165413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.972980, 26.999777, 29.036654>,  <21.269421, 26.838314, 28.822056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.972980, 26.999777, 29.036654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650686, -0.234905, -0.722099,
		-0.165453, -0.884241, 0.436741,
		-0.741103, 0.403655, 0.536498,
		20.750650, 27.120874, 29.197601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790680, 26.376299, 28.752872>,  <21.269421, 26.838314, 28.822056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790680, 26.376299, 28.752872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.584183, 26.704649, 28.850569>,  <20.460283, 26.901659, 28.909187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.584183, 26.704649, 28.850569>,  <20.790680, 26.376299, 28.752872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.584183, 26.704649, 28.850569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673744, -0.213195, -0.707543,
		-0.528735, -0.529819, 0.663122,
		-0.516243, 0.820877, 0.244239,
		20.429310, 26.950912, 28.923841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.176115, 26.166342, 28.809574>,  <20.790680, 26.376299, 28.752872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.176115, 26.166342, 28.809574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.139544, 26.559063, 28.742990>,  <20.117601, 26.794695, 28.703041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.139544, 26.559063, 28.742990>,  <20.176115, 26.166342, 28.809574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.139544, 26.559063, 28.742990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565330, -0.188784, -0.802971,
		-0.819782, 0.020688, 0.572302,
		-0.091429, 0.981801, -0.166457,
		20.112114, 26.853603, 28.693054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.445641, 26.259493, 28.848698>,  <20.176115, 26.166342, 28.809574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.445641, 26.259493, 28.848698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.587549, 26.572962, 28.644739>,  <19.672695, 26.761044, 28.522364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.587549, 26.572962, 28.644739>,  <19.445641, 26.259493, 28.848698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.587549, 26.572962, 28.644739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572137, -0.249365, -0.781330,
		-0.739456, 0.568927, 0.359898,
		0.354773, 0.783670, -0.509899,
		19.693981, 26.808064, 28.491770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.886366, 26.774345, 28.544285>,  <19.445641, 26.259493, 28.848698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.886366, 26.774345, 28.544285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.211462, 26.822376, 28.316236>,  <19.406519, 26.851194, 28.179407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.211462, 26.822376, 28.316236>,  <18.886366, 26.774345, 28.544285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.211462, 26.822376, 28.316236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539895, -0.212631, -0.814433,
		-0.219018, 0.969727, -0.107986,
		0.812739, 0.120075, -0.570121,
		19.455284, 26.858398, 28.145201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.628048, 27.104986, 27.956522>,  <18.886366, 26.774345, 28.544285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.628048, 27.104986, 27.956522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.978151, 26.973289, 27.814806>,  <19.188213, 26.894272, 27.729776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.978151, 26.973289, 27.814806>,  <18.628048, 27.104986, 27.956522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.978151, 26.973289, 27.814806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463995, -0.364869, -0.807205,
		0.136497, 0.870902, -0.472122,
		0.875259, -0.329243, -0.354290,
		19.240728, 26.874517, 27.708519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.410646, 27.186327, 27.242479>,  <18.628048, 27.104986, 27.956522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.410646, 27.186327, 27.242479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.745607, 26.968472, 27.260918>,  <18.946585, 26.837757, 27.271980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.745607, 26.968472, 27.260918>,  <18.410646, 27.186327, 27.242479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.745607, 26.968472, 27.260918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341570, -0.587281, -0.733778,
		0.426717, 0.598722, -0.677823,
		0.837402, -0.544639, 0.046097,
		18.996828, 26.805080, 27.274746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.820644, 27.215031, 26.536362>,  <18.410646, 27.186327, 27.242479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.820644, 27.215031, 26.536362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.923370, 26.877165, 26.724230>,  <18.985006, 26.674446, 26.836950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.923370, 26.877165, 26.724230>,  <18.820644, 27.215031, 26.536362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.923370, 26.877165, 26.724230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343023, -0.533992, -0.772779,
		0.903539, 0.037353, -0.426876,
		0.256814, -0.844664, 0.469670,
		19.000414, 26.623766, 26.865131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909651, 26.886320, 25.981997>,  <18.820644, 27.215031, 26.536362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.909651, 26.886320, 25.981997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.886686, 26.610521, 26.270800>,  <18.872908, 26.445042, 26.444082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.886686, 26.610521, 26.270800>,  <18.909651, 26.886320, 25.981997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.886686, 26.610521, 26.270800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302943, -0.677071, -0.670671,
		0.951278, -0.257231, -0.170008,
		-0.057410, -0.689497, 0.722009,
		18.869463, 26.403671, 26.487402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.386875, 26.382202, 25.801422>,  <18.909651, 26.886320, 25.981997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.386875, 26.382202, 25.801422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.123627, 26.184261, 26.028400>,  <18.965677, 26.065496, 26.164587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.123627, 26.184261, 26.028400>,  <19.386875, 26.382202, 25.801422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.123627, 26.184261, 26.028400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236260, -0.579868, -0.779701,
		0.714882, -0.647204, 0.264710,
		-0.658122, -0.494854, 0.567446,
		18.926189, 26.035805, 26.198633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.489431, 25.688475, 25.702263>,  <19.386875, 26.382202, 25.801422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.489431, 25.688475, 25.702263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.116982, 25.712597, 25.846134>,  <18.893511, 25.727070, 25.932457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.116982, 25.712597, 25.846134>,  <19.489431, 25.688475, 25.702263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.116982, 25.712597, 25.846134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317182, -0.620688, -0.717037,
		0.180007, -0.781735, 0.597066,
		-0.931125, 0.060307, 0.359680,
		18.837645, 25.730690, 25.954039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.343245, 25.028805, 25.598124>,  <19.489431, 25.688475, 25.702263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.343245, 25.028805, 25.598124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.993715, 25.220638, 25.630207>,  <18.783998, 25.335737, 25.649456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.993715, 25.220638, 25.630207>,  <19.343245, 25.028805, 25.598124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.993715, 25.220638, 25.630207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351350, -0.508730, -0.785969,
		-0.336132, -0.714979, 0.613041,
		-0.873824, 0.479582, 0.080207,
		18.731567, 25.364513, 25.654268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.893673, 24.516998, 25.385719>,  <19.343245, 25.028805, 25.598124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.893673, 24.516998, 25.385719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.676683, 24.852421, 25.365547>,  <18.546490, 25.053675, 25.353445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.676683, 24.852421, 25.365547>,  <18.893673, 24.516998, 25.385719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.676683, 24.852421, 25.365547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501005, -0.371123, -0.781832,
		-0.674327, -0.398858, 0.621446,
		-0.542473, 0.838558, -0.050428,
		18.513941, 25.103989, 25.350418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.163837, 24.343483, 25.473858>,  <18.893673, 24.516998, 25.385719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.163837, 24.343483, 25.473858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.202797, 24.679354, 25.260145>,  <18.226173, 24.880877, 25.131918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.202797, 24.679354, 25.260145>,  <18.163837, 24.343483, 25.473858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.202797, 24.679354, 25.260145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438223, -0.445811, -0.780521,
		-0.893574, 0.310158, 0.324543,
		0.097400, 0.839675, -0.534283,
		18.232018, 24.931257, 25.099861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.628864, 24.415865, 25.127953>,  <18.163837, 24.343483, 25.473858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.628864, 24.415865, 25.127953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.852512, 24.676477, 24.922861>,  <17.986702, 24.832844, 24.799807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.852512, 24.676477, 24.922861>,  <17.628864, 24.415865, 25.127953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.852512, 24.676477, 24.922861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490461, -0.238686, -0.838139,
		-0.668454, 0.720096, 0.186095,
		0.559122, 0.651530, -0.512730,
		18.020248, 24.871937, 24.769043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123766, 24.730309, 24.724525>,  <17.628864, 24.415865, 25.127953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.123766, 24.730309, 24.724525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.484846, 24.780617, 24.559933>,  <17.701494, 24.810802, 24.461178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.484846, 24.780617, 24.559933>,  <17.123766, 24.730309, 24.724525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.484846, 24.780617, 24.559933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363668, -0.288084, -0.885863,
		-0.229956, 0.949310, -0.214315,
		0.902699, 0.125770, -0.411481,
		17.755655, 24.818348, 24.436489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.060902, 25.038609, 24.151707>,  <17.123766, 24.730309, 24.724525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.060902, 25.038609, 24.151707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.405275, 24.843693, 24.093273>,  <17.611900, 24.726744, 24.058212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.405275, 24.843693, 24.093273>,  <17.060902, 25.038609, 24.151707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.405275, 24.843693, 24.093273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299303, -0.252994, -0.920007,
		0.411350, 0.835789, -0.363658,
		0.860935, -0.487288, -0.146085,
		17.663555, 24.697506, 24.049448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.196136, 25.242878, 23.500153>,  <17.060902, 25.038609, 24.151707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.196136, 25.242878, 23.500153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.400198, 24.907507, 23.576864>,  <17.522635, 24.706284, 23.622890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.400198, 24.907507, 23.576864>,  <17.196136, 25.242878, 23.500153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.400198, 24.907507, 23.576864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434641, -0.443725, -0.783706,
		0.742178, 0.316457, -0.590784,
		0.510155, -0.838429, 0.191777,
		17.553244, 24.655977, 23.634398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.285547, 24.935215, 22.838696>,  <17.196136, 25.242878, 23.500153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.285547, 24.935215, 22.838696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.348894, 24.629684, 23.088972>,  <17.386902, 24.446365, 23.239138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.348894, 24.629684, 23.088972>,  <17.285547, 24.935215, 22.838696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.348894, 24.629684, 23.088972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257411, -0.643714, -0.720675,
		0.953236, -0.046928, -0.298561,
		0.158368, -0.763826, 0.625691,
		17.396404, 24.400537, 23.276680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734329, 24.399233, 22.473534>,  <17.285547, 24.935215, 22.838696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.734329, 24.399233, 22.473534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.537920, 24.202608, 22.761217>,  <17.420074, 24.084633, 22.933828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.537920, 24.202608, 22.761217>,  <17.734329, 24.399233, 22.473534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.537920, 24.202608, 22.761217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374343, -0.626420, -0.683714,
		0.786616, -0.604951, 0.123573,
		-0.491022, -0.491562, 0.719211,
		17.390614, 24.055140, 22.976980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.799637, 12.396185, 5.914148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.525478, 12.673301, 5.824461>,  <20.360983, 12.839570, 5.770648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.525478, 12.673301, 5.824461>,  <20.799637, 12.396185, 5.914148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.525478, 12.673301, 5.824461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081438, 0.378918, 0.921840,
		0.723602, 0.613566, -0.316129,
		-0.685396, 0.692790, -0.224218,
		20.319859, 12.881138, 5.757195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.951918, 13.091560, 6.158151>,  <20.799637, 12.396185, 5.914148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.951918, 13.091560, 6.158151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.553123, 13.092055, 6.127131>,  <20.313847, 13.092353, 6.108519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.553123, 13.092055, 6.127131>,  <20.951918, 13.091560, 6.158151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.553123, 13.092055, 6.127131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063871, 0.554120, 0.829983,
		0.044000, 0.832436, -0.552372,
		-0.996988, 0.001239, -0.077550,
		20.254026, 13.092427, 6.103866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.537752, 13.763078, 6.154315>,  <20.951918, 13.091560, 6.158151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.537752, 13.763078, 6.154315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.296827, 13.491383, 6.322057>,  <20.152273, 13.328365, 6.422702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.296827, 13.491383, 6.322057>,  <20.537752, 13.763078, 6.154315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.296827, 13.491383, 6.322057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083523, 0.576074, 0.813120,
		-0.793881, 0.454724, -0.403707,
		-0.602310, -0.679239, 0.419354,
		20.116135, 13.287611, 6.447863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.908171, 14.022755, 6.390017>,  <20.537752, 13.763078, 6.154315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.908171, 14.022755, 6.390017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.020294, 13.713674, 6.617827>,  <20.087568, 13.528225, 6.754513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.020294, 13.713674, 6.617827>,  <19.908171, 14.022755, 6.390017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.020294, 13.713674, 6.617827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036994, 0.601566, 0.797966,
		-0.959197, -0.202608, 0.197209,
		0.280309, -0.772702, 0.569525,
		20.104387, 13.481863, 6.788684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.407501, 14.026646, 6.962851>,  <19.908171, 14.022755, 6.390017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.407501, 14.026646, 6.962851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.773157, 13.870557, 7.006798>,  <19.992552, 13.776903, 7.033167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.773157, 13.870557, 7.006798>,  <19.407501, 14.026646, 6.962851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773157, 13.870557, 7.006798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134871, 0.548322, 0.825320,
		-0.382302, -0.739641, 0.553874,
		0.914142, -0.390224, 0.109869,
		20.047400, 13.753489, 7.039759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.500280, 13.694836, 7.555044>,  <19.407501, 14.026646, 6.962851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.500280, 13.694836, 7.555044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.851313, 13.859499, 7.456749>,  <20.061932, 13.958297, 7.397772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.851313, 13.859499, 7.456749>,  <19.500280, 13.694836, 7.555044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.851313, 13.859499, 7.456749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031301, 0.560670, 0.827447,
		0.478402, -0.718462, 0.504920,
		0.877583, 0.411657, -0.245737,
		20.114588, 13.982996, 7.383028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.030617, 13.788284, 8.195449>,  <19.500280, 13.694836, 7.555044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.030617, 13.788284, 8.195449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.126705, 14.063611, 7.921657>,  <20.184359, 14.228807, 7.757382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.126705, 14.063611, 7.921657>,  <20.030617, 13.788284, 8.195449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.126705, 14.063611, 7.921657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232289, 0.643880, 0.729013,
		0.942516, -0.334121, -0.005215,
		0.240221, 0.688318, -0.684480,
		20.198772, 14.270106, 7.716313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.752808, 13.860021, 8.004893>,  <20.030617, 13.788284, 8.195449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.752808, 13.860021, 8.004893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.531662, 14.193172, 7.994675>,  <20.398973, 14.393063, 7.988544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.531662, 14.193172, 7.994675>,  <20.752808, 13.860021, 8.004893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.531662, 14.193172, 7.994675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401583, 0.293183, 0.867626,
		0.730116, 0.469422, -0.496561,
		-0.552866, 0.832878, -0.025546,
		20.365803, 14.443035, 7.987011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.453825, 13.162545, 8.040316>,  <20.752808, 13.860021, 8.004893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.453825, 13.162545, 8.040316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.461117, 13.484810, 8.277154>,  <20.465492, 13.678168, 8.419257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.461117, 13.484810, 8.277154>,  <20.453825, 13.162545, 8.040316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.461117, 13.484810, 8.277154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127963, -0.589204, 0.797787,
		0.991611, 0.061223, -0.113837,
		0.018230, 0.805661, 0.592095,
		20.466585, 13.726508, 8.454782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.182802, 13.196183, 8.373661>,  <20.453825, 13.162545, 8.040316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.182802, 13.196183, 8.373661> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.857382, 13.332298, 8.562274>,  <20.662130, 13.413967, 8.675442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.857382, 13.332298, 8.562274>,  <21.182802, 13.196183, 8.373661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.857382, 13.332298, 8.562274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065818, -0.751796, 0.656103,
		0.577760, 0.564807, 0.589225,
		-0.813549, 0.340288, 0.471532,
		20.613317, 13.434385, 8.703733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.151958, 12.772756, 8.869448>,  <21.182802, 13.196183, 8.373661>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.151958, 12.772756, 8.869448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.835955, 12.986731, 8.989267>,  <20.646353, 13.115115, 9.061159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.835955, 12.986731, 8.989267>,  <21.151958, 12.772756, 8.869448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.835955, 12.986731, 8.989267> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004206, -0.483844, 0.875144,
		0.613082, 0.692631, 0.379991,
		-0.790008, 0.534936, 0.299549,
		20.598951, 13.147211, 9.079132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.334553, 13.012167, 9.500215>,  <21.151958, 12.772756, 8.869448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.334553, 13.012167, 9.500215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.935345, 13.033592, 9.513383>,  <20.695820, 13.046448, 9.521284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.935345, 13.033592, 9.513383>,  <21.334553, 13.012167, 9.500215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.935345, 13.033592, 9.513383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018233, -0.254536, 0.966891,
		0.060169, 0.965579, 0.253056,
		-0.998022, 0.053563, 0.032921,
		20.635939, 13.049662, 9.523259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.215803, 13.330319, 10.088811>,  <21.334553, 13.012167, 9.500215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.215803, 13.330319, 10.088811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.860348, 13.165956, 10.007349>,  <20.647074, 13.067339, 9.958472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.860348, 13.165956, 10.007349>,  <21.215803, 13.330319, 10.088811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.860348, 13.165956, 10.007349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163628, -0.130761, 0.977818,
		-0.428423, 0.902251, 0.048963,
		-0.888639, -0.410908, -0.203654,
		20.593756, 13.042685, 9.946253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.774988, 13.440608, 10.715652>,  <21.215803, 13.330319, 10.088811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.774988, 13.440608, 10.715652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.571335, 13.153947, 10.524995>,  <20.449142, 12.981950, 10.410600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.571335, 13.153947, 10.524995>,  <20.774988, 13.440608, 10.715652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.571335, 13.153947, 10.524995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426423, -0.271014, 0.862969,
		-0.747626, 0.642620, -0.167614,
		-0.509135, -0.716652, -0.476645,
		20.418594, 12.938951, 10.382001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.020916, 13.594901, 10.816824>,  <20.774988, 13.440608, 10.715652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.020916, 13.594901, 10.816824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.050577, 13.204437, 10.735225>,  <20.068375, 12.970160, 10.686265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.050577, 13.204437, 10.735225>,  <20.020916, 13.594901, 10.816824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.050577, 13.204437, 10.735225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705470, -0.195932, 0.681119,
		-0.704850, 0.093406, -0.703180,
		0.074155, -0.976159, -0.203998,
		20.072824, 12.911590, 10.674026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.330357, 13.263129, 10.968640>,  <20.020916, 13.594901, 10.816824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.330357, 13.263129, 10.968640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.574564, 12.947662, 10.939608>,  <19.721088, 12.758382, 10.922188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.574564, 12.947662, 10.939608>,  <19.330357, 13.263129, 10.968640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.574564, 12.947662, 10.939608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420723, -0.400597, 0.813950,
		-0.671012, -0.466396, -0.576383,
		0.610521, -0.788668, -0.072582,
		19.757721, 12.711062, 10.917833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.854549, 12.647264, 11.077790>,  <19.330357, 13.263129, 10.968640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.854549, 12.647264, 11.077790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.229998, 12.526909, 11.145274>,  <19.455267, 12.454696, 11.185764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.229998, 12.526909, 11.145274>,  <18.854549, 12.647264, 11.077790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.229998, 12.526909, 11.145274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313324, -0.539037, 0.781836,
		-0.144304, -0.786706, -0.600225,
		0.938618, -0.300887, 0.168709,
		19.511583, 12.436643, 11.195887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.821821, 11.986597, 11.346975>,  <18.854549, 12.647264, 11.077790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.821821, 11.986597, 11.346975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.184834, 12.120620, 11.448269>,  <19.402641, 12.201034, 11.509046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.184834, 12.120620, 11.448269>,  <18.821821, 11.986597, 11.346975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.184834, 12.120620, 11.448269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151724, -0.300686, 0.941577,
		0.391626, -0.892931, -0.222045,
		0.907529, 0.335057, 0.253235,
		19.457092, 12.221137, 11.524240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.034325, 11.465067, 11.750156>,  <18.821821, 11.986597, 11.346975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.034325, 11.465067, 11.750156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.239819, 11.796201, 11.840285>,  <19.363115, 11.994881, 11.894362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.239819, 11.796201, 11.840285>,  <19.034325, 11.465067, 11.750156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.239819, 11.796201, 11.840285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115756, -0.193347, 0.974278,
		0.850105, -0.526601, -0.003501,
		0.513732, 0.827834, 0.225322,
		19.393938, 12.044551, 11.907882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.562748, 11.229521, 12.291478>,  <19.034325, 11.465067, 11.750156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.562748, 11.229521, 12.291478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.528780, 11.627311, 12.316171>,  <19.508400, 11.865985, 12.330986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.528780, 11.627311, 12.316171>,  <19.562748, 11.229521, 12.291478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.528780, 11.627311, 12.316171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006590, -0.062513, 0.998022,
		0.996366, 0.084344, 0.011862,
		-0.084919, 0.994474, 0.061730,
		19.503304, 11.925653, 12.334690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.066973, 11.430797, 12.725567>,  <19.562748, 11.229521, 12.291478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.066973, 11.430797, 12.725567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.827913, 11.751470, 12.729949>,  <19.684477, 11.943873, 12.732578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.827913, 11.751470, 12.729949>,  <20.066973, 11.430797, 12.725567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.827913, 11.751470, 12.729949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037989, 0.014666, 0.999171,
		0.800857, 0.597570, -0.039220,
		-0.597650, 0.801683, 0.010955,
		19.648619, 11.991975, 12.733235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.349621, 11.958040, 13.159047>,  <20.066973, 11.430797, 12.725567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.349621, 11.958040, 13.159047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.971994, 12.088789, 13.141623>,  <19.745419, 12.167238, 13.131167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.971994, 12.088789, 13.141623>,  <20.349621, 11.958040, 13.159047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.971994, 12.088789, 13.141623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015201, 0.088821, 0.995932,
		0.329411, 0.940886, -0.078884,
		-0.944064, 0.326871, -0.043561,
		19.688774, 12.186851, 13.128554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.325968, 12.581671, 13.680182>,  <20.349621, 11.958040, 13.159047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.325968, 12.581671, 13.680182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.956291, 12.442587, 13.616977>,  <19.734486, 12.359137, 13.579054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.956291, 12.442587, 13.616977>,  <20.325968, 12.581671, 13.680182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.956291, 12.442587, 13.616977> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165879, -0.007231, 0.986120,
		-0.344026, 0.937574, -0.050995,
		-0.924191, -0.347710, -0.158012,
		19.679033, 12.338274, 13.569573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.904987, 13.098106, 14.054324>,  <20.325968, 12.581671, 13.680182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.904987, 13.098106, 14.054324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.676102, 12.772625, 14.013418>,  <19.538771, 12.577336, 13.988874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.676102, 12.772625, 14.013418>,  <19.904987, 13.098106, 14.054324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.676102, 12.772625, 14.013418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299303, 0.091109, 0.949798,
		-0.763536, 0.574097, -0.295678,
		-0.572215, -0.813702, -0.102265,
		19.504436, 12.528514, 13.982738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.311075, 13.247510, 14.529665>,  <19.904987, 13.098106, 14.054324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.311075, 13.247510, 14.529665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.305063, 12.857283, 14.441993>,  <19.301456, 12.623146, 14.389390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.305063, 12.857283, 14.441993>,  <19.311075, 13.247510, 14.529665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.305063, 12.857283, 14.441993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321323, -0.202864, 0.924985,
		-0.946850, 0.084332, -0.310423,
		-0.015032, -0.975569, -0.219180,
		19.300554, 12.564612, 14.376239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.682100, 12.885176, 14.653748>,  <19.311075, 13.247510, 14.529665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.682100, 12.885176, 14.653748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.942511, 12.583768, 14.690358>,  <19.098757, 12.402924, 14.712324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.942511, 12.583768, 14.690358>,  <18.682100, 12.885176, 14.653748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.942511, 12.583768, 14.690358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332159, -0.174384, 0.926963,
		-0.682523, -0.633877, -0.363816,
		0.651024, -0.753518, 0.091527,
		19.137817, 12.357713, 14.717816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.353247, 12.331312, 14.877081>,  <18.682100, 12.885176, 14.653748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.353247, 12.331312, 14.877081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.725052, 12.235439, 14.989195>,  <18.948135, 12.177916, 15.056463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.725052, 12.235439, 14.989195>,  <18.353247, 12.331312, 14.877081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.725052, 12.235439, 14.989195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340098, -0.263181, 0.902812,
		-0.142621, -0.934499, -0.326145,
		0.929512, -0.239681, 0.280286,
		19.003906, 12.163534, 15.073280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.170620, 11.908792, 15.518096>,  <18.353247, 12.331312, 14.877081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.170620, 11.908792, 15.518096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.566673, 11.964843, 15.518320>,  <18.804306, 11.998474, 15.518455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.566673, 11.964843, 15.518320>,  <18.170620, 11.908792, 15.518096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.566673, 11.964843, 15.518320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035007, -0.251227, 0.967295,
		0.135688, -0.957731, -0.253654,
		0.990133, 0.140129, 0.000562,
		18.863712, 12.006882, 15.518489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.576120, 11.304112, 15.797819>,  <18.170620, 11.908792, 15.518096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.576120, 11.304112, 15.797819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.805113, 11.629831, 15.836147>,  <18.942509, 11.825263, 15.859144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.805113, 11.629831, 15.836147>,  <18.576120, 11.304112, 15.797819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.805113, 11.629831, 15.836147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151941, -0.220204, 0.963548,
		0.805715, -0.537056, -0.249788,
		0.572483, 0.814298, 0.095821,
		18.976858, 11.874121, 15.864894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.053961, 11.071543, 16.258991>,  <18.576120, 11.304112, 15.797819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.053961, 11.071543, 16.258991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.098576, 11.469043, 16.257229>,  <19.125343, 11.707543, 16.256170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.098576, 11.469043, 16.257229>,  <19.053961, 11.071543, 16.258991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.098576, 11.469043, 16.257229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353818, -0.035566, 0.934638,
		0.928640, -0.105804, -0.355574,
		0.111535, 0.993751, -0.004408,
		19.132036, 11.767168, 16.255907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.581848, 11.272064, 16.639399>,  <19.053961, 11.071543, 16.258991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.581848, 11.272064, 16.639399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.376627, 11.615385, 16.643257>,  <19.253494, 11.821378, 16.645573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.376627, 11.615385, 16.643257>,  <19.581848, 11.272064, 16.639399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.376627, 11.615385, 16.643257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213853, 0.116929, 0.969843,
		0.831290, 0.499645, -0.243541,
		-0.513054, 0.858302, 0.009649,
		19.222712, 11.872875, 16.646152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.042261, 11.762940, 16.924198>,  <19.581848, 11.272064, 16.639399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.042261, 11.762940, 16.924198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.650534, 11.825933, 16.975008>,  <19.415497, 11.863728, 17.005495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.650534, 11.825933, 16.975008>,  <20.042261, 11.762940, 16.924198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.650534, 11.825933, 16.975008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149032, 0.136841, 0.979318,
		0.136841, 0.977995, -0.157480,
		-0.979318, 0.157480, 0.127027,
		19.356739, 11.873177, 17.013117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.724918, 11.759222, 16.416697>,  <20.042261, 11.762940, 16.924198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.724918, 11.759222, 16.416697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.064333, 11.806705, 16.210436>,  <21.267981, 11.835195, 16.086679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.064333, 11.806705, 16.210436>,  <20.724918, 11.759222, 16.416697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.064333, 11.806705, 16.210436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308526, 0.902707, -0.299887,
		0.429884, 0.413556, 0.802602,
		0.848535, 0.118707, -0.515652,
		21.318893, 11.842317, 16.055740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.823698, 12.453552, 16.460054>,  <20.724918, 11.759222, 16.416697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.823698, 12.453552, 16.460054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.066500, 12.346137, 16.160873>,  <21.212181, 12.281688, 15.981365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.066500, 12.346137, 16.160873>,  <20.823698, 12.453552, 16.460054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.066500, 12.346137, 16.160873> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198390, 0.860173, -0.469834,
		0.769536, 0.433578, 0.468854,
		0.607005, -0.268538, -0.747952,
		21.248602, 12.265575, 15.936488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.155300, 13.062896, 16.401775>,  <20.823698, 12.453552, 16.460054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.155300, 13.062896, 16.401775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.187597, 12.837727, 16.072754>,  <21.206976, 12.702625, 15.875340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.187597, 12.837727, 16.072754>,  <21.155300, 13.062896, 16.401775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.187597, 12.837727, 16.072754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008672, 0.825615, -0.564166,
		0.996697, 0.038420, 0.071546,
		0.080745, -0.562924, -0.822555,
		21.211821, 12.668850, 15.825987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.759464, 13.325345, 15.960626>,  <21.155300, 13.062896, 16.401775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.759464, 13.325345, 15.960626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.462423, 13.154951, 15.753907>,  <21.284199, 13.052715, 15.629876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.462423, 13.154951, 15.753907>,  <21.759464, 13.325345, 15.960626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.462423, 13.154951, 15.753907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148685, 0.857251, -0.492964,
		0.653017, -0.289238, -0.699936,
		-0.742604, -0.425984, -0.516795,
		21.239643, 13.027156, 15.598868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.894476, 13.451061, 15.262595>,  <21.759464, 13.325345, 15.960626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.894476, 13.451061, 15.262595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.499750, 13.393242, 15.291711>,  <21.262915, 13.358550, 15.309180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.499750, 13.393242, 15.291711>,  <21.894476, 13.451061, 15.262595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.499750, 13.393242, 15.291711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161841, 0.880148, -0.446258,
		0.000442, -0.452155, -0.891939,
		-0.986817, -0.144549, 0.072789,
		21.203705, 13.349877, 15.313547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.537571, 13.407818, 14.636841>,  <21.894476, 13.451061, 15.262595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.537571, 13.407818, 14.636841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.296030, 13.563316, 14.915190>,  <21.151106, 13.656615, 15.082199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.296030, 13.563316, 14.915190>,  <21.537571, 13.407818, 14.636841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.296030, 13.563316, 14.915190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019418, 0.865576, -0.500401,
		-0.796858, -0.315682, -0.515133,
		-0.603854, 0.388746, 0.695871,
		21.114874, 13.679940, 15.123951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.858839, 13.698445, 14.401059>,  <21.537571, 13.407818, 14.636841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.858839, 13.698445, 14.401059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.019588, 13.922489, 14.690825>,  <21.116037, 14.056915, 14.864684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.019588, 13.922489, 14.690825>,  <20.858839, 13.698445, 14.401059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.019588, 13.922489, 14.690825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034092, 0.799712, -0.599415,
		-0.915060, 0.216192, 0.340478,
		0.401873, 0.560108, 0.724414,
		21.140150, 14.090522, 14.908149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.411064, 14.209877, 14.567417>,  <20.858839, 13.698445, 14.401059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.411064, 14.209877, 14.567417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.798052, 14.291265, 14.627562>,  <21.030245, 14.340097, 14.663648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.798052, 14.291265, 14.627562>,  <20.411064, 14.209877, 14.567417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.798052, 14.291265, 14.627562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053616, 0.745705, -0.664115,
		-0.247251, 0.634448, 0.732354,
		0.967467, 0.203469, 0.150360,
		21.088291, 14.352305, 14.672669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.445734, 14.951653, 14.609218>,  <20.411064, 14.209877, 14.567417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.445734, 14.951653, 14.609218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.802767, 14.810096, 14.497460>,  <21.016987, 14.725162, 14.430406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.802767, 14.810096, 14.497460>,  <20.445734, 14.951653, 14.609218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802767, 14.810096, 14.497460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053129, 0.532786, -0.844580,
		0.447748, 0.768699, 0.456753,
		0.892580, -0.353893, -0.279394,
		21.070541, 14.703928, 14.413642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.876621, 15.537156, 14.516088>,  <20.445734, 14.951653, 14.609218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.876621, 15.537156, 14.516088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.024117, 15.235627, 14.298544>,  <21.112614, 15.054709, 14.168018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.024117, 15.235627, 14.298544>,  <20.876621, 15.537156, 14.516088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.024117, 15.235627, 14.298544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157869, 0.525800, -0.835830,
		0.916029, 0.394062, 0.074878,
		0.368740, -0.753823, -0.543858,
		21.134739, 15.009480, 14.135386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.366558, 15.840190, 14.197830>,  <20.876621, 15.537156, 14.516088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.366558, 15.840190, 14.197830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.356270, 15.507280, 13.976323>,  <21.350098, 15.307534, 13.843419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.356270, 15.507280, 13.976323>,  <21.366558, 15.840190, 14.197830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.356270, 15.507280, 13.976323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036344, 0.552806, -0.832517,
		0.999008, -0.041539, 0.016029,
		-0.025721, -0.832274, -0.553767,
		21.348553, 15.257598, 13.810193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.861279, 15.949838, 13.646004>,  <21.366558, 15.840190, 14.197830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.861279, 15.949838, 13.646004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.652630, 15.640278, 13.502343>,  <21.527441, 15.454542, 13.416146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.652630, 15.640278, 13.502343>,  <21.861279, 15.949838, 13.646004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.652630, 15.640278, 13.502343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068633, 0.457656, -0.886476,
		0.850413, -0.437754, -0.291838,
		-0.521620, -0.773901, -0.359153,
		21.496143, 15.408108, 13.394597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.143747, 15.724729, 13.010522>,  <21.861279, 15.949838, 13.646004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.143747, 15.724729, 13.010522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.765228, 15.595493, 13.005824>,  <21.538116, 15.517952, 13.003006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.765228, 15.595493, 13.005824>,  <22.143747, 15.724729, 13.010522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.765228, 15.595493, 13.005824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102826, 0.335206, -0.936517,
		0.306509, -0.885016, -0.350426,
		-0.946298, -0.323083, -0.011741,
		21.481340, 15.498567, 13.002301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.073799, 15.407516, 12.372373>,  <22.143747, 15.724729, 13.010522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.073799, 15.407516, 12.372373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.708527, 15.518274, 12.491991>,  <21.489363, 15.584729, 12.563763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.708527, 15.518274, 12.491991>,  <22.073799, 15.407516, 12.372373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.708527, 15.518274, 12.491991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169391, 0.409516, -0.896439,
		-0.370685, -0.869267, -0.327059,
		-0.913181, 0.276895, 0.299047,
		21.434572, 15.601343, 12.581705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.565060, 14.992176, 12.005733>,  <22.073799, 15.407516, 12.372373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.565060, 14.992176, 12.005733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.391275, 15.337930, 12.106994>,  <21.287004, 15.545382, 12.167749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.391275, 15.337930, 12.106994>,  <21.565060, 14.992176, 12.005733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.391275, 15.337930, 12.106994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221039, 0.170144, -0.960309,
		-0.873147, -0.473172, 0.117142,
		-0.434461, 0.864384, 0.253150,
		21.260937, 15.597245, 12.182939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.928484, 15.057014, 11.591431>,  <21.565060, 14.992176, 12.005733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.928484, 15.057014, 11.591431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.947756, 15.429646, 11.735560>,  <20.959318, 15.653226, 11.822039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.947756, 15.429646, 11.735560>,  <20.928484, 15.057014, 11.591431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.947756, 15.429646, 11.735560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286819, 0.358455, -0.888395,
		-0.956773, -0.060546, 0.284465,
		0.048179, 0.931582, 0.360325,
		20.962210, 15.709121, 11.843658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.246325, 15.318777, 11.391747>,  <20.928484, 15.057014, 11.591431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.246325, 15.318777, 11.391747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.487833, 15.629958, 11.461317>,  <20.632738, 15.816667, 11.503059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.487833, 15.629958, 11.461317>,  <20.246325, 15.318777, 11.391747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.487833, 15.629958, 11.461317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291712, 0.418669, -0.860012,
		-0.741866, 0.468513, 0.479718,
		0.603770, 0.777953, 0.173926,
		20.668964, 15.863344, 11.513494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.802963, 15.896606, 11.215281>,  <20.246325, 15.318777, 11.391747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.802963, 15.896606, 11.215281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.177414, 16.036282, 11.198639>,  <20.402084, 16.120087, 11.188653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.177414, 16.036282, 11.198639>,  <19.802963, 15.896606, 11.215281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.177414, 16.036282, 11.198639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256144, 0.596010, -0.761027,
		-0.240944, 0.723076, 0.647384,
		0.936128, 0.349188, -0.041607,
		20.458252, 16.141039, 11.186157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.663063, 16.582102, 11.061269>,  <19.802963, 15.896606, 11.215281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.663063, 16.582102, 11.061269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.045534, 16.518164, 10.963149>,  <20.275017, 16.479801, 10.904277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.045534, 16.518164, 10.963149>,  <19.663063, 16.582102, 11.061269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.045534, 16.518164, 10.963149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110625, 0.578465, -0.808171,
		0.271081, 0.799892, 0.535433,
		0.956178, -0.159847, -0.245299,
		20.332388, 16.470209, 10.889560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.845289, 17.174084, 10.763105>,  <19.663063, 16.582102, 11.061269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.845289, 17.174084, 10.763105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.130716, 16.928988, 10.627243>,  <20.301973, 16.781929, 10.545726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.130716, 16.928988, 10.627243>,  <19.845289, 17.174084, 10.763105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.130716, 16.928988, 10.627243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002746, 0.487260, -0.873253,
		0.700579, 0.622194, 0.349377,
		0.713570, -0.612742, -0.339655,
		20.344788, 16.745165, 10.525347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<19.227186, 20.691872, 18.796627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.879313, 20.557320, 18.941128>,  <18.670589, 20.476589, 19.027828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.879313, 20.557320, 18.941128>,  <19.227186, 20.691872, 18.796627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.879313, 20.557320, 18.941128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005992, -0.724604, -0.689139,
		0.493575, -0.601497, 0.628160,
		-0.869683, -0.336378, 0.361251,
		18.618408, 20.456406, 19.049503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.299297, 20.006918, 18.765507>,  <19.227186, 20.691872, 18.796627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.299297, 20.006918, 18.765507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899647, 20.023029, 18.760992>,  <18.659857, 20.032696, 18.758284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899647, 20.023029, 18.760992>,  <19.299297, 20.006918, 18.765507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.899647, 20.023029, 18.760992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013786, -0.571808, -0.820272,
		-0.039495, -0.819398, 0.571862,
		-0.999125, 0.040280, -0.011287,
		18.599909, 20.035114, 18.757607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.026676, 19.241625, 18.679869>,  <19.299297, 20.006918, 18.765507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.026676, 19.241625, 18.679869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.764999, 19.516619, 18.553759>,  <18.607994, 19.681616, 18.478092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.764999, 19.516619, 18.553759>,  <19.026676, 19.241625, 18.679869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.764999, 19.516619, 18.553759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055340, -0.459240, -0.886587,
		-0.754301, -0.562551, 0.338476,
		-0.654192, 0.687485, -0.315273,
		18.568741, 19.722864, 18.459177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.718077, 18.937931, 18.165739>,  <19.026676, 19.241625, 18.679869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.718077, 18.937931, 18.165739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.582983, 19.309395, 18.104383>,  <18.501926, 19.532272, 18.067570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.582983, 19.309395, 18.104383>,  <18.718077, 18.937931, 18.165739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.582983, 19.309395, 18.104383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221537, -0.236813, -0.945960,
		-0.914798, -0.285503, 0.285713,
		-0.337736, 0.928659, -0.153387,
		18.481663, 19.587992, 18.058367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.929354, 18.896399, 18.082729>,  <18.718077, 18.937931, 18.165739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.929354, 18.896399, 18.082729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.045053, 19.228554, 17.892241>,  <18.114473, 19.427847, 17.777946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.045053, 19.228554, 17.892241>,  <17.929354, 18.896399, 18.082729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.045053, 19.228554, 17.892241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475091, -0.307363, -0.824510,
		-0.831038, 0.464738, 0.305606,
		0.289249, 0.830389, -0.476223,
		18.131828, 19.477671, 17.749374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.279606, 19.116144, 17.497091>,  <17.929354, 18.896399, 18.082729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.279606, 19.116144, 17.497091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.624552, 19.284784, 17.384964>,  <17.831520, 19.385969, 17.317688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.624552, 19.284784, 17.384964>,  <17.279606, 19.116144, 17.497091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.624552, 19.284784, 17.384964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166051, -0.287523, -0.943270,
		-0.478282, 0.859990, -0.177943,
		0.862365, 0.421602, -0.280319,
		17.883261, 19.411264, 17.300869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.020992, 19.677408, 16.943029>,  <17.279606, 19.116144, 17.497091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.020992, 19.677408, 16.943029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399248, 19.574562, 16.863375>,  <17.626202, 19.512854, 16.815582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399248, 19.574562, 16.863375>,  <17.020992, 19.677408, 16.943029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.399248, 19.574562, 16.863375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198979, 0.026910, -0.979634,
		0.257237, 0.966006, -0.025714,
		0.945641, -0.257115, -0.199137,
		17.682940, 19.497427, 16.803635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.268419, 20.171219, 16.398233>,  <17.020992, 19.677408, 16.943029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.268419, 20.171219, 16.398233> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522785, 19.863153, 16.378403>,  <17.675406, 19.678314, 16.366505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522785, 19.863153, 16.378403>,  <17.268419, 20.171219, 16.398233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.522785, 19.863153, 16.378403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294021, -0.182376, -0.938238,
		0.713557, 0.611215, -0.342420,
		0.635915, -0.770166, -0.049575,
		17.713560, 19.632103, 16.363531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408136, 20.117151, 15.806449>,  <17.268419, 20.171219, 16.398233>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.408136, 20.117151, 15.806449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.538464, 19.754978, 15.915284>,  <17.616659, 19.537674, 15.980585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.538464, 19.754978, 15.915284>,  <17.408136, 20.117151, 15.806449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.538464, 19.754978, 15.915284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313046, -0.374877, -0.872622,
		0.892101, 0.199141, -0.405584,
		0.325819, -0.905434, 0.272088,
		17.636209, 19.483349, 15.996911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851933, 19.947042, 15.303601>,  <17.408136, 20.117151, 15.806449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.851933, 19.947042, 15.303601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.702370, 19.609591, 15.457732>,  <17.612631, 19.407120, 15.550211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.702370, 19.609591, 15.457732>,  <17.851933, 19.947042, 15.303601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.702370, 19.609591, 15.457732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458414, -0.193062, -0.867516,
		0.806256, -0.501012, -0.314544,
		-0.373910, -0.843631, 0.385328,
		17.590197, 19.356501, 15.573331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.740379, 19.525995, 14.744637>,  <17.851933, 19.947042, 15.303601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.740379, 19.525995, 14.744637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.547750, 19.289585, 15.003489>,  <17.432173, 19.147739, 15.158799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.547750, 19.289585, 15.003489>,  <17.740379, 19.525995, 14.744637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.547750, 19.289585, 15.003489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381322, -0.523530, -0.761912,
		0.789101, -0.613681, 0.026747,
		-0.481573, -0.591026, 0.647128,
		17.403278, 19.112278, 15.197627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.922012, 18.793943, 14.719168>,  <17.740379, 19.525995, 14.744637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.922012, 18.793943, 14.719168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545172, 18.826841, 14.849204>,  <17.319067, 18.846581, 14.927226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545172, 18.826841, 14.849204>,  <17.922012, 18.793943, 14.719168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.545172, 18.826841, 14.849204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299176, -0.644049, -0.704057,
		0.151469, -0.760551, 0.631364,
		-0.942099, 0.082246, 0.325091,
		17.262543, 18.851515, 14.946732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.780882, 18.032675, 14.947994>,  <17.922012, 18.793943, 14.719168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.780882, 18.032675, 14.947994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473257, 18.251368, 14.815554>,  <17.288683, 18.382584, 14.736090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473257, 18.251368, 14.815554>,  <17.780882, 18.032675, 14.947994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.473257, 18.251368, 14.815554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216696, -0.710359, -0.669651,
		-0.601320, -0.443255, 0.664785,
		-0.769062, 0.546731, -0.331101,
		17.242538, 18.415386, 14.716223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.193106, 17.763147, 15.067105>,  <17.780882, 18.032675, 14.947994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.193106, 17.763147, 15.067105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.199102, 17.994499, 14.740852>,  <17.202700, 18.133310, 14.545101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.199102, 17.994499, 14.740852>,  <17.193106, 17.763147, 15.067105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.199102, 17.994499, 14.740852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422237, -0.735761, -0.529501,
		-0.906361, 0.352328, 0.233182,
		0.014991, 0.578378, -0.815632,
		17.203600, 18.168013, 14.496163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.261181, 17.203026, 15.517775>,  <17.193106, 17.763147, 15.067105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.261181, 17.203026, 15.517775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.506187, 16.946667, 15.332701>,  <17.653191, 16.792850, 15.221657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.506187, 16.946667, 15.332701>,  <17.261181, 17.203026, 15.517775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.506187, 16.946667, 15.332701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586517, -0.023922, 0.809584,
		-0.529928, -0.767254, 0.361245,
		0.612514, -0.640898, -0.462684,
		17.689941, 16.754396, 15.193895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.385885, 16.585587, 15.932775>,  <17.261181, 17.203026, 15.517775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.385885, 16.585587, 15.932775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.694389, 16.587641, 15.678175>,  <17.879492, 16.588873, 15.525414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.694389, 16.587641, 15.678175>,  <17.385885, 16.585587, 15.932775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694389, 16.587641, 15.678175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636365, 0.015899, 0.771224,
		0.014041, -0.999860, 0.009027,
		0.771260, 0.005084, -0.636500,
		17.925768, 16.589182, 15.487225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817160, 16.179867, 16.255919>,  <17.385885, 16.585587, 15.932775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817160, 16.179867, 16.255919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.053181, 16.369938, 15.994829>,  <18.194794, 16.483980, 15.838176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.053181, 16.369938, 15.994829>,  <17.817160, 16.179867, 16.255919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.053181, 16.369938, 15.994829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664918, 0.172570, 0.726708,
		0.457955, -0.862802, -0.214128,
		0.590053, 0.475176, -0.652722,
		18.230196, 16.512491, 15.799012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.489910, 15.891086, 16.337791>,  <17.817160, 16.179867, 16.255919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.489910, 15.891086, 16.337791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.563320, 16.246845, 16.170321>,  <18.607367, 16.460300, 16.069838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.563320, 16.246845, 16.170321>,  <18.489910, 15.891086, 16.337791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.563320, 16.246845, 16.170321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657127, 0.205762, 0.725153,
		0.731097, -0.408206, -0.546685,
		0.183525, 0.889399, -0.418675,
		18.618378, 16.513664, 16.044718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.142097, 15.995502, 16.392765>,  <18.489910, 15.891086, 16.337791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.142097, 15.995502, 16.392765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059999, 16.380507, 16.321829>,  <19.010740, 16.611509, 16.279266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.059999, 16.380507, 16.321829>,  <19.142097, 15.995502, 16.392765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.059999, 16.380507, 16.321829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726284, 0.271248, 0.631614,
		0.656038, 0.000837, -0.754727,
		-0.205247, 0.962509, -0.177341,
		18.998425, 16.669260, 16.268627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745251, 16.244671, 16.174250>,  <19.142097, 15.995502, 16.392765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745251, 16.244671, 16.174250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.523823, 16.555521, 16.294006>,  <19.390966, 16.742031, 16.365860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.523823, 16.555521, 16.294006>,  <19.745251, 16.244671, 16.174250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.523823, 16.555521, 16.294006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726145, 0.274381, 0.630419,
		0.407766, 0.566385, -0.716195,
		-0.553570, 0.777125, 0.299394,
		19.357752, 16.788658, 16.383825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.207170, 16.842625, 16.287031>,  <19.745251, 16.244671, 16.174250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.207170, 16.842625, 16.287031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.880491, 16.947210, 16.492802>,  <19.684483, 17.009962, 16.616264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.880491, 16.947210, 16.492802>,  <20.207170, 16.842625, 16.287031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.880491, 16.947210, 16.492802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573890, 0.461356, 0.676610,
		-0.060424, 0.847813, -0.526842,
		-0.816700, 0.261466, 0.514428,
		19.635481, 17.025650, 16.647131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.343708, 17.554884, 16.587063>,  <20.207170, 16.842625, 16.287031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.343708, 17.554884, 16.587063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061544, 17.391827, 16.819002>,  <19.892246, 17.293991, 16.958166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061544, 17.391827, 16.819002>,  <20.343708, 17.554884, 16.587063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.061544, 17.391827, 16.819002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524003, 0.250966, 0.813902,
		-0.477306, 0.877976, 0.036574,
		-0.705408, -0.407645, 0.579850,
		19.849922, 17.269533, 16.992956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497860, 17.928886, 17.257404>,  <20.343708, 17.554884, 16.587063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.497860, 17.928886, 17.257404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.238253, 17.647234, 17.372625>,  <20.082487, 17.478243, 17.441759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.238253, 17.647234, 17.372625>,  <20.497860, 17.928886, 17.257404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.238253, 17.647234, 17.372625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334086, 0.076381, 0.939443,
		-0.683491, 0.705952, 0.185667,
		-0.649020, -0.704129, 0.288054,
		20.043547, 17.435995, 17.459042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.135798, 18.203806, 17.770128>,  <20.497860, 17.928886, 17.257404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.135798, 18.203806, 17.770128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.083027, 17.810484, 17.820263>,  <20.051365, 17.574492, 17.850344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.083027, 17.810484, 17.820263>,  <20.135798, 18.203806, 17.770128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083027, 17.810484, 17.820263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231426, 0.092394, 0.968455,
		-0.963866, 0.156770, 0.215373,
		-0.131926, -0.983304, 0.125336,
		20.043449, 17.515493, 17.857864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.789713, 18.079845, 18.426153>,  <20.135798, 18.203806, 17.770128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.789713, 18.079845, 18.426153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.948719, 17.720499, 18.351402>,  <20.044123, 17.504892, 18.306551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.948719, 17.720499, 18.351402>,  <19.789713, 18.079845, 18.426153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.948719, 17.720499, 18.351402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309652, -0.060381, 0.948931,
		-0.863770, -0.435080, 0.254178,
		0.397513, -0.898365, -0.186879,
		20.067972, 17.450989, 18.295338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.575670, 17.600782, 18.987387>,  <19.789713, 18.079845, 18.426153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.575670, 17.600782, 18.987387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.918808, 17.443216, 18.855364>,  <20.124691, 17.348677, 18.776150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.918808, 17.443216, 18.855364>,  <19.575670, 17.600782, 18.987387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.918808, 17.443216, 18.855364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372605, 0.034422, 0.927351,
		-0.353936, -0.918502, 0.176303,
		0.857843, -0.393915, -0.330055,
		20.176161, 17.325043, 18.756348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.750832, 17.159864, 19.437889>,  <19.575670, 17.600782, 18.987387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.750832, 17.159864, 19.437889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.105162, 17.180141, 19.253393>,  <20.317760, 17.192307, 19.142696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.105162, 17.180141, 19.253393>,  <19.750832, 17.159864, 19.437889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.105162, 17.180141, 19.253393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463664, -0.135343, 0.875613,
		-0.018038, -0.989501, -0.143394,
		0.885827, 0.050692, -0.461238,
		20.370911, 17.195349, 19.115023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.230040, 16.693684, 19.730749>,  <19.750832, 17.159864, 19.437889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.230040, 16.693684, 19.730749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.454710, 16.961758, 19.536690>,  <20.589512, 17.122602, 19.420254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.454710, 16.961758, 19.536690>,  <20.230040, 16.693684, 19.730749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454710, 16.961758, 19.536690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616976, 0.051401, 0.785301,
		0.551234, -0.740412, -0.384618,
		0.561677, 0.670185, -0.485150,
		20.623213, 17.162813, 19.391144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.576902, 16.319195, 20.168394>,  <20.230040, 16.693684, 19.730749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.576902, 16.319195, 20.168394> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.327728, 16.234692, 20.469677>,  <20.178223, 16.183989, 20.650446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.327728, 16.234692, 20.469677>,  <20.576902, 16.319195, 20.168394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.327728, 16.234692, 20.469677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697743, -0.285292, -0.657087,
		0.353700, -0.934868, 0.030314,
		-0.622937, -0.211260, 0.753205,
		20.140846, 16.171314, 20.695639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.324823, 15.768108, 19.991657>,  <20.576902, 16.319195, 20.168394>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.324823, 15.768108, 19.991657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056959, 15.868978, 20.271074>,  <19.896240, 15.929500, 20.438725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056959, 15.868978, 20.271074>,  <20.324823, 15.768108, 19.991657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.056959, 15.868978, 20.271074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691769, -0.554017, -0.463165,
		0.270207, -0.793394, 0.545448,
		-0.669660, 0.252173, 0.698545,
		19.856062, 15.944630, 20.480639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.878975, 15.116832, 20.205360>,  <20.324823, 15.768108, 19.991657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.878975, 15.116832, 20.205360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.685804, 15.446235, 20.324436>,  <19.569902, 15.643876, 20.395882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.685804, 15.446235, 20.324436>,  <19.878975, 15.116832, 20.205360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.685804, 15.446235, 20.324436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809838, -0.290709, -0.509559,
		-0.333085, -0.487159, 0.807298,
		-0.482925, 0.823507, 0.297690,
		19.540926, 15.693287, 20.413744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.276083, 14.869593, 20.529778>,  <19.878975, 15.116832, 20.205360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.276083, 14.869593, 20.529778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193039, 15.253950, 20.456476>,  <19.143213, 15.484565, 20.412495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193039, 15.253950, 20.456476>,  <19.276083, 14.869593, 20.529778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.193039, 15.253950, 20.456476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879682, -0.265330, -0.394664,
		-0.427853, 0.079270, 0.900366,
		-0.207609, 0.960893, -0.183254,
		19.130756, 15.542218, 20.401501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.650984, 14.888426, 20.819105>,  <19.276083, 14.869593, 20.529778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.650984, 14.888426, 20.819105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649994, 15.211173, 20.582815>,  <18.649401, 15.404821, 20.441040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649994, 15.211173, 20.582815>,  <18.650984, 14.888426, 20.819105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.649994, 15.211173, 20.582815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924030, -0.227689, -0.307127,
		-0.382313, 0.545090, 0.746133,
		-0.002474, 0.806867, -0.590727,
		18.649252, 15.453234, 20.405598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.943871, 15.456872, 20.925632>,  <18.650984, 14.888426, 20.819105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.943871, 15.456872, 20.925632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.091469, 15.506970, 20.557251>,  <18.180027, 15.537029, 20.336222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.091469, 15.506970, 20.557251>,  <17.943871, 15.456872, 20.925632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.091469, 15.506970, 20.557251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900547, -0.196929, -0.387600,
		-0.229907, 0.972385, 0.040124,
		0.368995, 0.125245, -0.920954,
		18.202168, 15.544544, 20.280964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.430115, 15.713631, 20.521942>,  <17.943871, 15.456872, 20.925632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.430115, 15.713631, 20.521942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684259, 15.589939, 20.238903>,  <17.836746, 15.515724, 20.069080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684259, 15.589939, 20.238903>,  <17.430115, 15.713631, 20.521942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.684259, 15.589939, 20.238903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769301, -0.173941, -0.614752,
		0.067019, 0.934945, -0.348406,
		0.635362, -0.309229, -0.707596,
		17.874868, 15.497170, 20.026625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169336, 15.990392, 19.902182>,  <17.430115, 15.713631, 20.521942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.169336, 15.990392, 19.902182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417536, 15.713378, 19.755007>,  <17.566456, 15.547170, 19.666702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417536, 15.713378, 19.755007>,  <17.169336, 15.990392, 19.902182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.417536, 15.713378, 19.755007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674542, -0.232037, -0.700823,
		0.399969, 0.683048, -0.611122,
		0.620499, -0.692534, -0.367937,
		17.603685, 15.505617, 19.644627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.297911, 16.193003, 19.224421>,  <17.169336, 15.990392, 19.902182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.297911, 16.193003, 19.224421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.331438, 15.795057, 19.247114>,  <17.351555, 15.556290, 19.260731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.331438, 15.795057, 19.247114>,  <17.297911, 16.193003, 19.224421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.331438, 15.795057, 19.247114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693437, -0.099121, -0.713666,
		0.715625, 0.020477, -0.698184,
		0.083818, -0.994865, 0.056734,
		17.356583, 15.496598, 19.264133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035614, 15.992244, 18.587831>,  <17.297911, 16.193003, 19.224421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035614, 15.992244, 18.587831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058090, 15.648831, 18.791700>,  <17.071575, 15.442783, 18.914022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.058090, 15.648831, 18.791700>,  <17.035614, 15.992244, 18.587831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.058090, 15.648831, 18.791700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868242, -0.294055, -0.399610,
		0.492950, -0.420065, -0.761936,
		0.056189, -0.858532, 0.509672,
		17.074947, 15.391272, 18.944601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.996073, 15.485147, 18.132809>,  <17.035614, 15.992244, 18.587831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.996073, 15.485147, 18.132809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.862144, 15.300303, 18.461285>,  <16.781788, 15.189398, 18.658369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.862144, 15.300303, 18.461285>,  <16.996073, 15.485147, 18.132809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.862144, 15.300303, 18.461285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769844, -0.368381, -0.521186,
		0.543354, -0.806692, -0.232409,
		-0.334822, -0.462107, 0.821189,
		16.761698, 15.161672, 18.707642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778622, 14.758089, 17.918892>,  <16.996073, 15.485147, 18.132809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.778622, 14.758089, 17.918892> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.579956, 14.847081, 18.254471>,  <16.460756, 14.900476, 18.455818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.579956, 14.847081, 18.254471>,  <16.778622, 14.758089, 17.918892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.579956, 14.847081, 18.254471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848801, -0.326390, -0.415941,
		0.181285, -0.918679, 0.350947,
		-0.496662, 0.222480, 0.838946,
		16.430958, 14.913825, 18.506155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<21.454439, 19.264425, 25.193008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.751753, 19.001631, 25.243439>,  <21.930141, 18.843954, 25.273697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.751753, 19.001631, 25.243439>,  <21.454439, 19.264425, 25.193008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.751753, 19.001631, 25.243439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280652, -0.477313, -0.832711,
		0.607257, 0.583559, -0.539164,
		0.743285, -0.656987, 0.126075,
		21.974739, 18.804535, 25.281261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.535208, 19.022753, 24.547476>,  <21.454439, 19.264425, 25.193008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.535208, 19.022753, 24.547476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.746117, 18.745646, 24.744270>,  <21.872662, 18.579380, 24.862347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.746117, 18.745646, 24.744270>,  <21.535208, 19.022753, 24.547476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.746117, 18.745646, 24.744270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168083, -0.652616, -0.738811,
		0.832905, 0.306861, -0.460550,
		0.527274, -0.692769, 0.491988,
		21.904299, 18.537815, 24.891867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.975197, 18.808155, 24.067364>,  <21.535208, 19.022753, 24.547476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.975197, 18.808155, 24.067364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.934692, 18.526611, 24.348598>,  <21.910389, 18.357685, 24.517340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.934692, 18.526611, 24.348598>,  <21.975197, 18.808155, 24.067364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.934692, 18.526611, 24.348598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237238, -0.669246, -0.704150,
		0.966160, -0.238102, -0.099214,
		-0.101261, -0.703859, 0.703085,
		21.904314, 18.315454, 24.559525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.570210, 18.310198, 23.945444>,  <21.975197, 18.808155, 24.067364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.570210, 18.310198, 23.945444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.282511, 18.108059, 24.136150>,  <22.109892, 17.986776, 24.250574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.282511, 18.108059, 24.136150>,  <22.570210, 18.310198, 23.945444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.282511, 18.108059, 24.136150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059104, -0.639246, -0.766727,
		0.692234, -0.579646, 0.429909,
		-0.719249, -0.505345, 0.476767,
		22.066736, 17.956455, 24.279181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.631330, 17.665901, 23.700090>,  <22.570210, 18.310198, 23.945444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.631330, 17.665901, 23.700090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.268669, 17.650990, 23.868179>,  <22.051071, 17.642042, 23.969032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.268669, 17.650990, 23.868179>,  <22.631330, 17.665901, 23.700090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.268669, 17.650990, 23.868179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255035, -0.745032, -0.616347,
		0.336058, -0.665986, 0.665979,
		-0.906654, -0.037280, 0.420224,
		21.996674, 17.639805, 23.994246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.509827, 17.020092, 23.928696>,  <22.631330, 17.665901, 23.700090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.509827, 17.020092, 23.928696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.139210, 17.157400, 23.867132>,  <21.916840, 17.239784, 23.830194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.139210, 17.157400, 23.867132>,  <22.509827, 17.020092, 23.928696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.139210, 17.157400, 23.867132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138983, -0.692525, -0.707879,
		-0.349579, -0.634489, 0.689362,
		-0.926541, 0.343269, -0.153909,
		21.861248, 17.260382, 23.820959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.113655, 16.449514, 23.580080>,  <22.509827, 17.020092, 23.928696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.113655, 16.449514, 23.580080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.897434, 16.783258, 23.536913>,  <21.767702, 16.983505, 23.511013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.897434, 16.783258, 23.536913>,  <22.113655, 16.449514, 23.580080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.897434, 16.783258, 23.536913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551559, -0.448316, -0.703417,
		-0.635285, -0.320710, 0.702537,
		-0.540552, 0.834360, -0.107918,
		21.735270, 17.033567, 23.504538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.430031, 16.200638, 23.570621>,  <22.113655, 16.449514, 23.580080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.430031, 16.200638, 23.570621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.440786, 16.540140, 23.359381>,  <21.447239, 16.743841, 23.232635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.440786, 16.540140, 23.359381>,  <21.430031, 16.200638, 23.570621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.440786, 16.540140, 23.359381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455572, -0.459839, -0.762235,
		-0.889793, 0.261085, 0.374304,
		0.026889, 0.848754, -0.528104,
		21.448853, 16.794765, 23.200949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.656799, 16.238125, 23.366400>,  <21.430031, 16.200638, 23.570621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.656799, 16.238125, 23.366400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.860773, 16.490473, 23.132486>,  <20.983156, 16.641882, 22.992138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.860773, 16.490473, 23.132486>,  <20.656799, 16.238125, 23.366400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.860773, 16.490473, 23.132486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612065, -0.211580, -0.761978,
		-0.604438, 0.746483, 0.278243,
		0.509932, 0.630871, -0.584783,
		21.013752, 16.679733, 22.957052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233797, 16.622433, 22.951500>,  <20.656799, 16.238125, 23.366400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233797, 16.622433, 22.951500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.573729, 16.646711, 22.742077>,  <20.777687, 16.661280, 22.616423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.573729, 16.646711, 22.742077>,  <20.233797, 16.622433, 22.951500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.573729, 16.646711, 22.742077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513828, -0.125791, -0.848621,
		-0.117368, 0.990198, -0.075712,
		0.849827, 0.060698, -0.523556,
		20.828676, 16.664921, 22.585011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.998463, 16.990585, 22.400705>,  <20.233797, 16.622433, 22.951500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.998463, 16.990585, 22.400705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.346916, 16.834736, 22.281162>,  <20.555988, 16.741226, 22.209436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.346916, 16.834736, 22.281162>,  <19.998463, 16.990585, 22.400705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.346916, 16.834736, 22.281162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345522, -0.053921, -0.936860,
		0.348909, 0.919394, -0.181596,
		0.871135, -0.389625, -0.298857,
		20.608257, 16.717848, 22.191505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.128822, 17.296482, 21.808468>,  <19.998463, 16.990585, 22.400705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.128822, 17.296482, 21.808468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.336563, 16.954901, 21.795588>,  <20.461206, 16.749952, 21.787859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.336563, 16.954901, 21.795588>,  <20.128822, 17.296482, 21.808468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.336563, 16.954901, 21.795588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386858, -0.201345, -0.899889,
		0.761981, 0.479815, -0.434928,
		0.519351, -0.853954, -0.032200,
		20.492369, 16.698715, 21.785927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.350534, 17.330551, 21.208805>,  <20.128822, 17.296482, 21.808468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.350534, 17.330551, 21.208805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.384750, 16.947363, 21.318331>,  <20.405279, 16.717449, 21.384047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.384750, 16.947363, 21.318331>,  <20.350534, 17.330551, 21.208805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.384750, 16.947363, 21.318331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254056, -0.286709, -0.923717,
		0.963399, 0.009450, -0.267904,
		0.085539, -0.957971, 0.273814,
		20.410412, 16.659971, 21.400475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.613941, 16.900412, 20.609200>,  <20.350534, 17.330551, 21.208805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.613941, 16.900412, 20.609200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.423807, 16.640371, 20.846323>,  <20.309727, 16.484346, 20.988598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.423807, 16.640371, 20.846323>,  <20.613941, 16.900412, 20.609200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423807, 16.640371, 20.846323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482885, -0.370465, -0.793460,
		0.735445, -0.663418, -0.137830,
		-0.475334, -0.650102, 0.592811,
		20.281206, 16.445341, 21.024166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.255526, 16.998249, 20.301865>,  <20.613941, 16.900412, 20.609200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.255526, 16.998249, 20.301865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.192221, 17.279539, 20.024614>,  <21.154238, 17.448315, 19.858265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.192221, 17.279539, 20.024614>,  <21.255526, 16.998249, 20.301865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.192221, 17.279539, 20.024614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656897, 0.599076, 0.457814,
		0.737183, -0.382856, -0.556761,
		-0.158265, 0.703228, -0.693126,
		21.144741, 17.490507, 19.816677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.926222, 17.293528, 20.090895>,  <21.255526, 16.998249, 20.301865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.926222, 17.293528, 20.090895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.651688, 17.566341, 19.989882>,  <21.486967, 17.730030, 19.929274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.651688, 17.566341, 19.989882>,  <21.926222, 17.293528, 20.090895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.651688, 17.566341, 19.989882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467534, 0.679732, 0.565134,
		0.557094, 0.269805, -0.785399,
		-0.686336, 0.682034, -0.252532,
		21.445787, 17.770952, 19.914122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.319120, 17.766714, 19.834785>,  <21.926222, 17.293528, 20.090895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.319120, 17.766714, 19.834785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.981674, 17.922016, 19.983150>,  <21.779207, 18.015198, 20.072168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.981674, 17.922016, 19.983150>,  <22.319120, 17.766714, 19.834785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.981674, 17.922016, 19.983150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536698, 0.630865, 0.560326,
		-0.016447, 0.671766, -0.740581,
		-0.843614, 0.388253, 0.370911,
		21.728590, 18.038492, 20.094423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.482155, 18.368832, 20.025841>,  <22.319120, 17.766714, 19.834785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.482155, 18.368832, 20.025841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.122667, 18.358465, 20.200943>,  <21.906975, 18.352245, 20.306004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.122667, 18.358465, 20.200943>,  <22.482155, 18.368832, 20.025841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.122667, 18.358465, 20.200943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307911, 0.673482, 0.672021,
		-0.312239, 0.738749, -0.597291,
		-0.898720, -0.025919, 0.437756,
		21.853052, 18.350689, 20.332270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.379057, 19.022053, 20.005772>,  <22.482155, 18.368832, 20.025841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.379057, 19.022053, 20.005772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.179504, 18.839556, 20.300516>,  <22.059772, 18.730057, 20.477362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.179504, 18.839556, 20.300516>,  <22.379057, 19.022053, 20.005772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.179504, 18.839556, 20.300516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488419, 0.554341, 0.673908,
		-0.715937, 0.696095, -0.053712,
		-0.498880, -0.456242, 0.736860,
		22.029840, 18.702682, 20.521574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.079641, 19.471518, 20.432884>,  <22.379057, 19.022053, 20.005772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.079641, 19.471518, 20.432884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.023157, 19.153149, 20.668364>,  <21.989267, 18.962128, 20.809650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.023157, 19.153149, 20.668364>,  <22.079641, 19.471518, 20.432884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.023157, 19.153149, 20.668364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331905, 0.522178, 0.785601,
		-0.932684, 0.306325, 0.190435,
		-0.141208, -0.795924, 0.588698,
		21.980795, 18.914371, 20.844973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.675001, 19.714916, 20.918552>,  <22.079641, 19.471518, 20.432884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.675001, 19.714916, 20.918552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.844561, 19.388290, 21.075285>,  <21.946297, 19.192314, 21.169325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.844561, 19.388290, 21.075285>,  <21.675001, 19.714916, 20.918552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.844561, 19.388290, 21.075285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254090, 0.522465, 0.813922,
		-0.869339, -0.245458, 0.428953,
		0.423897, -0.816566, 0.391830,
		21.971729, 19.143320, 21.192835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.469185, 19.630304, 21.713697>,  <21.675001, 19.714916, 20.918552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.469185, 19.630304, 21.713697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.795525, 19.407274, 21.652386>,  <21.991329, 19.273457, 21.615599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.795525, 19.407274, 21.652386>,  <21.469185, 19.630304, 21.713697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.795525, 19.407274, 21.652386> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399569, 0.351958, 0.846446,
		-0.418011, -0.751819, 0.509936,
		0.815850, -0.557578, -0.153281,
		22.040279, 19.240002, 21.606401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.620586, 19.515614, 22.408579>,  <21.469185, 19.630304, 21.713697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.620586, 19.515614, 22.408579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.953215, 19.437004, 22.200783>,  <22.152792, 19.389837, 22.076105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.953215, 19.437004, 22.200783>,  <21.620586, 19.515614, 22.408579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.953215, 19.437004, 22.200783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540646, 0.500698, 0.676021,
		0.127251, -0.843018, 0.522617,
		0.831571, -0.196526, -0.519488,
		22.202686, 19.378046, 22.044937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.878267, 19.113792, 22.822176>,  <21.620586, 19.515614, 22.408579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.878267, 19.113792, 22.822176> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.182184, 19.263536, 22.609547>,  <22.364534, 19.353384, 22.481970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.182184, 19.263536, 22.609547>,  <21.878267, 19.113792, 22.822176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.182184, 19.263536, 22.609547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382432, 0.403868, 0.831045,
		0.525796, -0.834712, 0.163688,
		0.759792, 0.374361, -0.531573,
		22.410122, 19.375845, 22.450075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.506878, 18.944954, 23.122694>,  <21.878267, 19.113792, 22.822176>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.506878, 18.944954, 23.122694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.588131, 19.266346, 22.898853>,  <22.636883, 19.459181, 22.764549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.588131, 19.266346, 22.898853>,  <22.506878, 18.944954, 23.122694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.588131, 19.266346, 22.898853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443891, 0.433848, 0.784051,
		0.872753, -0.407670, -0.268529,
		0.203133, 0.803481, -0.559603,
		22.649071, 19.507391, 22.730972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.077597, 19.184004, 23.411856>,  <22.506878, 18.944954, 23.122694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.077597, 19.184004, 23.411856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.989386, 19.497316, 23.179359>,  <22.936459, 19.685303, 23.039862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.989386, 19.497316, 23.179359>,  <23.077597, 19.184004, 23.411856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.989386, 19.497316, 23.179359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510666, 0.600430, 0.615389,
		0.831017, -0.161111, -0.532405,
		-0.220526, 0.783280, -0.581241,
		22.923227, 19.732300, 23.004988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.738829, 19.532513, 23.279121>,  <23.077597, 19.184004, 23.411856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.738829, 19.532513, 23.279121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.457855, 19.806253, 23.200888>,  <23.289270, 19.970497, 23.153948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.457855, 19.806253, 23.200888>,  <23.738829, 19.532513, 23.279121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.457855, 19.806253, 23.200888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362539, 0.580491, 0.729106,
		0.612497, 0.441242, -0.655860,
		-0.702433, 0.684350, -0.195582,
		23.247126, 20.011559, 23.142214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.099907, 20.074816, 23.308138>,  <23.738829, 19.532513, 23.279121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.099907, 20.074816, 23.308138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.730898, 20.224537, 23.345757>,  <23.509493, 20.314369, 23.368328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.730898, 20.224537, 23.345757>,  <24.099907, 20.074816, 23.308138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.730898, 20.224537, 23.345757> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311436, 0.578073, 0.754214,
		0.227939, 0.725071, -0.649858,
		-0.922524, 0.374304, 0.094049,
		23.454140, 20.336828, 23.373972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.186203, 23.702276, 25.879704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.569336, 23.664572, 25.771133>,  <15.799215, 23.641949, 25.705992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.569336, 23.664572, 25.771133>,  <15.186203, 23.702276, 25.879704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.569336, 23.664572, 25.771133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287306, -0.326064, -0.900632,
		-0.003608, 0.940637, -0.339396,
		0.957832, -0.094261, -0.271427,
		15.856686, 23.636293, 25.689705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230140, 23.952631, 25.208494>,  <15.186203, 23.702276, 25.879704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.230140, 23.952631, 25.208494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.537221, 23.703863, 25.270264>,  <15.721470, 23.554602, 25.307325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.537221, 23.703863, 25.270264>,  <15.230140, 23.952631, 25.208494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.537221, 23.703863, 25.270264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131696, -0.388963, -0.911792,
		0.627127, 0.679648, -0.380512,
		0.767703, -0.621922, 0.154422,
		15.767531, 23.517286, 25.316589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449192, 23.974979, 24.569061>,  <15.230140, 23.952631, 25.208494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.449192, 23.974979, 24.569061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.559464, 23.637804, 24.753868>,  <15.625627, 23.435499, 24.864752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.559464, 23.637804, 24.753868>,  <15.449192, 23.974979, 24.569061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.559464, 23.637804, 24.753868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245918, -0.526493, -0.813836,
		0.929261, 0.110738, -0.352435,
		0.275678, -0.842936, 0.462017,
		15.642167, 23.384924, 24.892473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.873808, 23.601717, 24.138336>,  <15.449192, 23.974979, 24.569061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.873808, 23.601717, 24.138336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.752286, 23.316620, 24.391224>,  <15.679373, 23.145561, 24.542957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.752286, 23.316620, 24.391224>,  <15.873808, 23.601717, 24.138336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.752286, 23.316620, 24.391224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038134, -0.653958, -0.755570,
		0.951971, -0.253654, 0.171496,
		-0.303804, -0.712741, 0.632221,
		15.661144, 23.102798, 24.580891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155750, 22.949093, 23.853519>,  <15.873808, 23.601717, 24.138336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155750, 22.949093, 23.853519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.891655, 22.810648, 24.120140>,  <15.733198, 22.727581, 24.280113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.891655, 22.810648, 24.120140>,  <16.155750, 22.949093, 23.853519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.891655, 22.810648, 24.120140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159041, -0.802930, -0.574465,
		0.734025, -0.485292, 0.475078,
		-0.660237, -0.346115, 0.666552,
		15.693583, 22.706814, 24.320107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.298092, 22.185007, 24.005650>,  <16.155750, 22.949093, 23.853519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.298092, 22.185007, 24.005650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.913923, 22.267048, 24.081045>,  <15.683423, 22.316273, 24.126282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.913923, 22.267048, 24.081045>,  <16.298092, 22.185007, 24.005650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.913923, 22.267048, 24.081045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276365, -0.786322, -0.552557,
		0.034880, -0.582778, 0.811882,
		-0.960419, 0.205103, 0.188487,
		15.625797, 22.328579, 24.137590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038593, 21.539843, 24.187717>,  <16.298092, 22.185007, 24.005650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038593, 21.539843, 24.187717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.736612, 21.770390, 24.062593>,  <15.555425, 21.908718, 23.987518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.736612, 21.770390, 24.062593>,  <16.038593, 21.539843, 24.187717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.736612, 21.770390, 24.062593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267258, -0.706007, -0.655840,
		-0.598851, -0.411526, 0.687040,
		-0.754951, 0.576367, -0.312809,
		15.510127, 21.943300, 23.968750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.517751, 21.042349, 24.086546>,  <16.038593, 21.539843, 24.187717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.517751, 21.042349, 24.086546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.334568, 21.346085, 23.901644>,  <15.224658, 21.528326, 23.790703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.334568, 21.346085, 23.901644>,  <15.517751, 21.042349, 24.086546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.334568, 21.346085, 23.901644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540991, -0.650668, -0.532879,
		-0.705411, 0.006041, 0.708773,
		-0.457957, 0.759338, -0.462256,
		15.197181, 21.573887, 23.762966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.698406, 20.990419, 24.132494>,  <15.517751, 21.042349, 24.086546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.698406, 20.990419, 24.132494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.800900, 21.210737, 23.814758>,  <14.862397, 21.342928, 23.624117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.800900, 21.210737, 23.814758>,  <14.698406, 20.990419, 24.132494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800900, 21.210737, 23.814758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393409, -0.691207, -0.606187,
		-0.882934, 0.467826, 0.039575,
		0.256235, 0.550793, -0.794337,
		14.877771, 21.375975, 23.576458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.241775, 20.855572, 23.664530>,  <14.698406, 20.990419, 24.132494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.241775, 20.855572, 23.664530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.489499, 21.033058, 23.405434>,  <14.638134, 21.139551, 23.249975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.489499, 21.033058, 23.405434>,  <14.241775, 20.855572, 23.664530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.489499, 21.033058, 23.405434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358951, -0.573720, -0.736206,
		-0.698290, 0.688448, -0.196038,
		0.619310, 0.443718, -0.647742,
		14.675292, 21.166174, 23.211111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.761096, 21.118723, 23.037170>,  <14.241775, 20.855572, 23.664530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.761096, 21.118723, 23.037170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.142206, 21.072618, 22.924791>,  <14.370872, 21.044956, 22.857363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.142206, 21.072618, 22.924791>,  <13.761096, 21.118723, 23.037170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.142206, 21.072618, 22.924791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291104, -0.610082, -0.736925,
		-0.086463, 0.783910, -0.614825,
		0.952776, -0.115261, -0.280949,
		14.428040, 21.038040, 22.840508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.658132, 21.028263, 22.379128>,  <13.761096, 21.118723, 23.037170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.658132, 21.028263, 22.379128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.037621, 20.908184, 22.418741>,  <14.265314, 20.836138, 22.442509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.037621, 20.908184, 22.418741>,  <13.658132, 21.028263, 22.379128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.037621, 20.908184, 22.418741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069177, -0.502858, -0.861596,
		0.308447, 0.810565, -0.497839,
		0.948723, -0.300196, 0.099033,
		14.322237, 20.818125, 22.448452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.053646, 21.123114, 21.740309>,  <13.658132, 21.028263, 22.379128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.053646, 21.123114, 21.740309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.268658, 20.839933, 21.923555>,  <14.397665, 20.670025, 22.033503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.268658, 20.839933, 21.923555>,  <14.053646, 21.123114, 21.740309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.268658, 20.839933, 21.923555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012856, -0.536332, -0.843909,
		0.843147, 0.459515, -0.279193,
		0.537529, -0.707950, 0.458114,
		14.429916, 20.627548, 22.060989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.576579, 20.949574, 21.303555>,  <14.053646, 21.123114, 21.740309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.576579, 20.949574, 21.303555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.519817, 20.634758, 21.543699>,  <14.485761, 20.445869, 21.687786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.519817, 20.634758, 21.543699>,  <14.576579, 20.949574, 21.303555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.519817, 20.634758, 21.543699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073996, -0.596369, -0.799292,
		0.987111, -0.157847, 0.026389,
		-0.141904, -0.787037, 0.600363,
		14.477246, 20.398647, 21.723808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.331812, 21.048565, 21.236832>,  <14.576579, 20.949574, 21.303555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.331812, 21.048565, 21.236832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.475546, 21.210249, 20.900381>,  <15.561786, 21.307261, 20.698511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.475546, 21.210249, 20.900381>,  <15.331812, 21.048565, 21.236832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.475546, 21.210249, 20.900381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285175, 0.810648, 0.511395,
		0.888569, -0.423629, 0.176021,
		0.359333, 0.404212, -0.841125,
		15.583346, 21.331512, 20.648043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939839, 21.185635, 21.396318>,  <15.331812, 21.048565, 21.236832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.939839, 21.185635, 21.396318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.874248, 21.442600, 21.096874>,  <15.834892, 21.596779, 20.917208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.874248, 21.442600, 21.096874>,  <15.939839, 21.185635, 21.396318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.874248, 21.442600, 21.096874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326771, 0.751410, 0.573240,
		0.930769, -0.150624, -0.333138,
		-0.163980, 0.642414, -0.748608,
		15.825053, 21.635324, 20.872292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.596272, 21.569336, 21.140945>,  <15.939839, 21.185635, 21.396318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.596272, 21.569336, 21.140945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.285633, 21.801729, 21.043491>,  <16.099251, 21.941166, 20.985020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.285633, 21.801729, 21.043491>,  <16.596272, 21.569336, 21.140945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.285633, 21.801729, 21.043491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494618, 0.801793, 0.335382,
		0.390197, 0.139949, -0.910033,
		-0.776595, 0.580984, -0.243636,
		16.052654, 21.976025, 20.970400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.957039, 22.261604, 21.065180>,  <16.596272, 21.569336, 21.140945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.957039, 22.261604, 21.065180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.567352, 22.344923, 21.099846>,  <16.333540, 22.394915, 21.120646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.567352, 22.344923, 21.099846>,  <16.957039, 22.261604, 21.065180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.567352, 22.344923, 21.099846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224902, 0.866363, 0.445907,
		0.017797, 0.453903, -0.890874,
		-0.974219, 0.208295, 0.086665,
		16.275087, 22.407412, 21.125845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032238, 22.925964, 20.924561>,  <16.957039, 22.261604, 21.065180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.032238, 22.925964, 20.924561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.700001, 22.820740, 21.120892>,  <16.500658, 22.757605, 21.238689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.700001, 22.820740, 21.120892>,  <17.032238, 22.925964, 20.924561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.700001, 22.820740, 21.120892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164432, 0.726235, 0.667492,
		-0.532047, 0.635123, -0.559951,
		-0.830595, -0.263063, 0.490826,
		16.450823, 22.741821, 21.268139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.902681, 23.558411, 21.083141>,  <17.032238, 22.925964, 20.924561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.902681, 23.558411, 21.083141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.657675, 23.365389, 21.333570>,  <16.510672, 23.249577, 21.483828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.657675, 23.365389, 21.333570>,  <16.902681, 23.558411, 21.083141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.657675, 23.365389, 21.333570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372972, 0.521891, 0.767152,
		-0.696934, 0.703400, -0.139687,
		-0.612516, -0.482554, 0.626072,
		16.473921, 23.220623, 21.521393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.547750, 24.100945, 21.538589>,  <16.902681, 23.558411, 21.083141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.547750, 24.100945, 21.538589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.509708, 23.758120, 21.741133>,  <16.486883, 23.552425, 21.862659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.509708, 23.758120, 21.741133>,  <16.547750, 24.100945, 21.538589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.509708, 23.758120, 21.741133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388863, 0.436263, 0.811456,
		-0.916374, 0.274077, 0.291790,
		-0.095104, -0.857063, 0.506358,
		16.481176, 23.501001, 21.893040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.155321, 24.250202, 22.186932>,  <16.547750, 24.100945, 21.538589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.155321, 24.250202, 22.186932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.345245, 23.901234, 22.233292>,  <16.459200, 23.691853, 22.261108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.345245, 23.901234, 22.233292>,  <16.155321, 24.250202, 22.186932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.345245, 23.901234, 22.233292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396931, 0.329820, 0.856542,
		-0.785493, -0.360693, 0.502894,
		0.474813, -0.872422, 0.115901,
		16.487690, 23.639507, 22.268063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.984302, 24.030107, 22.769918>,  <16.155321, 24.250202, 22.186932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.984302, 24.030107, 22.769918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.320425, 23.819477, 22.718384>,  <16.522099, 23.693098, 22.687464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.320425, 23.819477, 22.718384>,  <15.984302, 24.030107, 22.769918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.320425, 23.819477, 22.718384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412584, 0.467055, 0.782070,
		-0.351647, -0.710336, 0.609727,
		0.840309, -0.526577, -0.128835,
		16.572517, 23.661505, 22.679733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.246569, 23.736015, 23.544538>,  <15.984302, 24.030107, 22.769918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.246569, 23.736015, 23.544538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.543360, 23.738577, 23.276382>,  <16.721436, 23.740114, 23.115488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.543360, 23.738577, 23.276382>,  <16.246569, 23.736015, 23.544538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.543360, 23.738577, 23.276382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629434, 0.337622, 0.699875,
		0.230822, -0.941260, 0.246476,
		0.741980, 0.006406, -0.670392,
		16.765953, 23.740499, 23.075264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.882656, 23.510082, 24.015827>,  <16.246569, 23.736015, 23.544538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.882656, 23.510082, 24.015827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.031311, 23.679859, 23.685558>,  <17.120504, 23.781725, 23.487396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.031311, 23.679859, 23.685558>,  <16.882656, 23.510082, 24.015827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.031311, 23.679859, 23.685558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785889, 0.329634, 0.523183,
		0.494230, -0.843321, -0.211061,
		0.371638, 0.424443, -0.825671,
		17.142803, 23.807192, 23.437857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.563187, 23.340876, 24.006413>,  <16.882656, 23.510082, 24.015827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.563187, 23.340876, 24.006413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.533695, 23.673941, 23.786873>,  <17.516001, 23.873779, 23.655149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.533695, 23.673941, 23.786873>,  <17.563187, 23.340876, 24.006413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.533695, 23.673941, 23.786873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762606, 0.401718, 0.507006,
		0.642648, -0.381175, -0.664612,
		-0.073729, 0.832663, -0.548849,
		17.511576, 23.923740, 23.622217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.272621, 23.664120, 23.970110>,  <17.563187, 23.340876, 24.006413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.272621, 23.664120, 23.970110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.048456, 23.975241, 23.856298>,  <17.913958, 24.161913, 23.788012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.048456, 23.975241, 23.856298>,  <18.272621, 23.664120, 23.970110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.048456, 23.975241, 23.856298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623400, 0.622330, 0.473369,
		0.545260, 0.087906, -0.833645,
		-0.560414, 0.777803, -0.284531,
		17.880333, 24.208582, 23.770939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.712467, 24.067024, 23.678617>,  <18.272621, 23.664120, 23.970110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.712467, 24.067024, 23.678617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.402082, 24.270685, 23.827560>,  <18.215853, 24.392881, 23.916925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.402082, 24.270685, 23.827560>,  <18.712467, 24.067024, 23.678617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.402082, 24.270685, 23.827560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629579, 0.588703, 0.507011,
		0.038939, 0.627848, -0.777362,
		-0.775960, 0.509153, 0.372356,
		18.169294, 24.423431, 23.939268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.983849, 24.420753, 23.106913>,  <18.712467, 24.067024, 23.678617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.983849, 24.420753, 23.106913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.345432, 24.257601, 23.055550>,  <19.562382, 24.159708, 23.024733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.345432, 24.257601, 23.055550>,  <18.983849, 24.420753, 23.106913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.345432, 24.257601, 23.055550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387552, -0.654544, -0.649134,
		0.180723, 0.636556, -0.749758,
		0.903959, -0.407884, -0.128407,
		19.616619, 24.135235, 23.017027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.130440, 24.377562, 22.337563>,  <18.983849, 24.420753, 23.106913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.130440, 24.377562, 22.337563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.355247, 24.104540, 22.524433>,  <19.490133, 23.940727, 22.636555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.355247, 24.104540, 22.524433>,  <19.130440, 24.377562, 22.337563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.355247, 24.104540, 22.524433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219415, -0.667616, -0.711440,
		0.797489, 0.297339, -0.524977,
		0.562022, -0.682553, 0.467175,
		19.523853, 23.899775, 22.664585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.633860, 24.161514, 21.917444>,  <19.130440, 24.377562, 22.337563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.633860, 24.161514, 21.917444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.600485, 23.863255, 22.181881>,  <19.580460, 23.684298, 22.340544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.600485, 23.863255, 22.181881>,  <19.633860, 24.161514, 21.917444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.600485, 23.863255, 22.181881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132112, -0.649272, -0.748994,
		0.987717, -0.149833, -0.044336,
		-0.083438, -0.745651, 0.661092,
		19.575453, 23.639559, 22.380209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.004353, 23.606134, 21.695265>,  <19.633860, 24.161514, 21.917444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.004353, 23.606134, 21.695265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.794880, 23.407167, 21.971910>,  <19.669195, 23.287788, 22.137897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.794880, 23.407167, 21.971910>,  <20.004353, 23.606134, 21.695265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.794880, 23.407167, 21.971910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072009, -0.783088, -0.617728,
		0.848864, -0.373296, 0.374272,
		-0.523683, -0.497416, 0.691616,
		19.637775, 23.257942, 22.179396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.131016, 22.904125, 21.479311>,  <20.004353, 23.606134, 21.695265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.131016, 22.904125, 21.479311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.799955, 22.883198, 21.702831>,  <19.601318, 22.870642, 21.836943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.799955, 22.883198, 21.702831>,  <20.131016, 22.904125, 21.479311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.799955, 22.883198, 21.702831> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331929, -0.757227, -0.562521,
		0.452568, -0.651053, 0.609354,
		-0.827651, -0.052316, 0.558800,
		19.551661, 22.867502, 21.870472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.124800, 22.229063, 21.682438>,  <20.131016, 22.904125, 21.479311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.124800, 22.229063, 21.682438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.759262, 22.391047, 21.694427>,  <19.539940, 22.488235, 21.701622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.759262, 22.391047, 21.694427>,  <20.124800, 22.229063, 21.682438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.759262, 22.391047, 21.694427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349869, -0.747757, -0.564315,
		-0.206109, -0.526183, 0.825015,
		-0.913844, 0.404958, 0.029976,
		19.485109, 22.512533, 21.703421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.678143, 21.644913, 21.786955>,  <20.124800, 22.229063, 21.682438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.678143, 21.644913, 21.786955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.430529, 21.925276, 21.645237>,  <19.281961, 22.093494, 21.560205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.430529, 21.925276, 21.645237>,  <19.678143, 21.644913, 21.786955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.430529, 21.925276, 21.645237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487133, -0.696530, -0.526827,
		-0.616034, -0.153535, 0.772611,
		-0.619034, 0.700909, -0.354294,
		19.244818, 22.135548, 21.538948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.988943, 21.386156, 21.797096>,  <19.678143, 21.644913, 21.786955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.988943, 21.386156, 21.797096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.967524, 21.677967, 21.524355>,  <18.954672, 21.853054, 21.360710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.967524, 21.677967, 21.524355>,  <18.988943, 21.386156, 21.797096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.967524, 21.677967, 21.524355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418918, -0.636250, -0.647837,
		-0.906444, 0.250949, 0.339684,
		-0.053550, 0.729528, -0.681852,
		18.951458, 21.896826, 21.319799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.276608, 21.455523, 21.664776>,  <18.988943, 21.386156, 21.797096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.276608, 21.455523, 21.664776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.459906, 21.620203, 21.349686>,  <18.569885, 21.719011, 21.160631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.459906, 21.620203, 21.349686>,  <18.276608, 21.455523, 21.664776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.459906, 21.620203, 21.349686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419252, -0.681346, -0.599995,
		-0.783733, 0.605201, -0.139618,
		0.458246, 0.411701, -0.787726,
		18.597380, 21.743713, 21.113367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803589, 21.499556, 21.096346>,  <18.276608, 21.455523, 21.664776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.803589, 21.499556, 21.096346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.150864, 21.513569, 20.898346>,  <18.359228, 21.521976, 20.779545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.150864, 21.513569, 20.898346>,  <17.803589, 21.499556, 21.096346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.150864, 21.513569, 20.898346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400993, -0.538096, -0.741388,
		-0.292333, 0.842155, -0.453119,
		0.868185, 0.035035, -0.495002,
		18.411320, 21.524078, 20.749846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.566917, 21.507347, 20.448780>,  <17.803589, 21.499556, 21.096346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.566917, 21.507347, 20.448780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.951538, 21.403202, 20.413841>,  <18.182310, 21.340715, 20.392878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.951538, 21.403202, 20.413841>,  <17.566917, 21.507347, 20.448780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.951538, 21.403202, 20.413841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231933, -0.599587, -0.765965,
		0.147056, 0.756774, -0.636920,
		0.961552, -0.260363, -0.087348,
		18.240004, 21.325094, 20.387636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.837656, 21.572559, 19.805639>,  <17.566917, 21.507347, 20.448780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.837656, 21.572559, 19.805639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.102680, 21.310053, 19.950043>,  <18.261694, 21.152550, 20.036686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.102680, 21.310053, 19.950043>,  <17.837656, 21.572559, 19.805639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.102680, 21.310053, 19.950043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037811, -0.510676, -0.858942,
		0.748053, 0.555451, -0.363168,
		0.662561, -0.656266, 0.361011,
		18.301449, 21.113173, 20.058346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.409103, 21.601782, 19.383020>,  <17.837656, 21.572559, 19.805639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.409103, 21.601782, 19.383020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.430479, 21.233927, 19.538668>,  <18.443304, 21.013214, 19.632055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.430479, 21.233927, 19.538668>,  <18.409103, 21.601782, 19.383020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.430479, 21.233927, 19.538668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002870, -0.389815, -0.920889,
		0.998567, 0.048095, -0.023471,
		0.053439, -0.919637, 0.389118,
		18.446510, 20.958036, 19.655403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.840391, 21.286285, 18.929195>,  <18.409103, 21.601782, 19.383020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.840391, 21.286285, 18.929195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.698278, 20.976568, 19.138668>,  <18.613010, 20.790737, 19.264351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.698278, 20.976568, 19.138668>,  <18.840391, 21.286285, 18.929195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698278, 20.976568, 19.138668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028214, -0.551094, -0.833966,
		0.934334, -0.311068, 0.173947,
		-0.355281, -0.774294, 0.523682,
		18.591694, 20.744280, 19.295773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<9.031365, 10.412471, 7.482934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.205203, 10.767309, 7.545145>,  <9.309505, 10.980212, 7.582471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.205203, 10.767309, 7.545145>,  <9.031365, 10.412471, 7.482934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.205203, 10.767309, 7.545145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488514, 0.087113, 0.868197,
		0.756626, -0.453289, 0.471218,
		0.434593, 0.887097, 0.155526,
		9.335581, 11.033438, 7.591802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.707292, 11.142188, 7.583605>,  <9.031365, 10.412471, 7.482934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.707292, 11.142188, 7.583605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.567590, 11.023583, 7.939156>,  <8.483768, 10.952420, 8.152487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.567590, 11.023583, 7.939156>,  <8.707292, 11.142188, 7.583605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.567590, 11.023583, 7.939156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542758, 0.837289, 0.066045,
		-0.763830, -0.459378, -0.453361,
		-0.349254, -0.296513, 0.888877,
		8.462813, 10.934629, 8.205819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.751884, 10.824312, 6.846563>,  <8.707292, 11.142188, 7.583605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.751884, 10.824312, 6.846563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.010900, 11.082921, 6.685218>,  <9.166309, 11.238087, 6.588411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.010900, 11.082921, 6.685218>,  <8.751884, 10.824312, 6.846563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.010900, 11.082921, 6.685218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706695, 0.707517, -0.000468,
		0.285083, 0.285357, 0.915040,
		0.647540, 0.646521, -0.403362,
		9.205162, 11.276877, 6.564209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.693962, 10.333092, 6.204320>,  <8.751884, 10.824312, 6.846563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.693962, 10.333092, 6.204320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.517920, 10.140315, 6.507382>,  <8.412295, 10.024649, 6.689219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.517920, 10.140315, 6.507382>,  <8.693962, 10.333092, 6.204320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.517920, 10.140315, 6.507382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254897, 0.876107, 0.409224,
		-0.861008, -0.013022, -0.508424,
		-0.440105, -0.481941, 0.757654,
		8.385889, 9.995732, 6.734679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.063257, 10.619779, 6.348774>,  <8.693962, 10.333092, 6.204320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.063257, 10.619779, 6.348774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.155368, 10.450263, 6.699174>,  <8.210634, 10.348554, 6.909414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.155368, 10.450263, 6.699174>,  <8.063257, 10.619779, 6.348774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.155368, 10.450263, 6.699174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227378, 0.851842, 0.471873,
		-0.946188, -0.307845, 0.099800,
		0.230277, -0.423788, 0.876000,
		8.224451, 10.323127, 6.961975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.450112, 10.495748, 6.830062>,  <8.063257, 10.619779, 6.348774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.450112, 10.495748, 6.830062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.806164, 10.573854, 6.994762>,  <8.019795, 10.620719, 7.093582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.806164, 10.573854, 6.994762>,  <7.450112, 10.495748, 6.830062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.806164, 10.573854, 6.994762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376103, 0.824990, 0.421828,
		-0.257319, -0.530342, 0.807790,
		0.890131, 0.195268, 0.411749,
		8.073204, 10.632435, 7.118287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.353248, 10.772301, 7.531653>,  <7.450112, 10.495748, 6.830062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.353248, 10.772301, 7.531653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.708338, 10.892452, 7.392101>,  <7.921392, 10.964543, 7.308370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.708338, 10.892452, 7.392101>,  <7.353248, 10.772301, 7.531653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.708338, 10.892452, 7.392101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145265, 0.901867, 0.406859,
		0.436855, -0.310499, 0.844244,
		0.887725, 0.300378, -0.348880,
		7.974655, 10.982566, 7.287437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.660165, 10.983752, 8.058544>,  <7.353248, 10.772301, 7.531653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.660165, 10.983752, 8.058544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.847898, 11.183438, 7.767199>,  <7.960538, 11.303249, 7.592392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.847898, 11.183438, 7.767199>,  <7.660165, 10.983752, 8.058544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.847898, 11.183438, 7.767199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189093, 0.862538, 0.469332,
		0.862538, -0.082545, 0.499215,
		-0.469332, -0.499215, 0.728362,
		7.988698, 11.333202, 7.548690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.145186, 11.448395, 8.338673>,  <7.660165, 10.983752, 8.058544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.145186, 11.448395, 8.338673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.940688, 11.577388, 8.020018>,  <7.817989, 11.654783, 7.828825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.940688, 11.577388, 8.020018>,  <8.145186, 11.448395, 8.338673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.940688, 11.577388, 8.020018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361951, 0.759930, 0.539906,
		0.779499, 0.564369, -0.271789,
		-0.511246, 0.322482, -0.796638,
		7.787314, 11.674132, 7.781026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.194437, 12.141423, 8.227753>,  <8.145186, 11.448395, 8.338673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.194437, 12.141423, 8.227753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.859331, 12.034732, 8.037171>,  <7.658268, 11.970717, 7.922822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.859331, 12.034732, 8.037171>,  <8.194437, 12.141423, 8.227753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.859331, 12.034732, 8.037171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535409, 0.572562, 0.620895,
		0.107190, 0.775261, -0.622480,
		-0.837764, -0.266728, -0.476454,
		7.608002, 11.954714, 7.894235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.876398, 12.787331, 7.960772>,  <8.194437, 12.141423, 8.227753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.876398, 12.787331, 7.960772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.624173, 12.484241, 8.027994>,  <7.472837, 12.302386, 8.068327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.624173, 12.484241, 8.027994>,  <7.876398, 12.787331, 7.960772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.624173, 12.484241, 8.027994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548608, 0.588300, 0.594080,
		-0.549017, 0.282408, -0.786655,
		-0.630563, -0.757726, 0.168055,
		7.435004, 12.256923, 8.078411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.147439, 13.063869, 7.905779>,  <7.876398, 12.787331, 7.960772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.147439, 13.063869, 7.905779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.122455, 12.715775, 8.101244>,  <7.107465, 12.506919, 8.218523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.122455, 12.715775, 8.101244>,  <7.147439, 13.063869, 7.905779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.122455, 12.715775, 8.101244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622850, 0.416561, 0.662220,
		-0.779845, -0.263002, -0.568043,
		-0.062459, -0.870234, 0.488663,
		7.103717, 12.454705, 8.247843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.448849, 12.923430, 8.039086>,  <7.147439, 13.063869, 7.905779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.448849, 12.923430, 8.039086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.648085, 12.719409, 8.319587>,  <6.767627, 12.596996, 8.487886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.648085, 12.719409, 8.319587>,  <6.448849, 12.923430, 8.039086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.648085, 12.719409, 8.319587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491124, 0.500550, 0.712914,
		-0.714635, -0.699496, -0.001180,
		0.498090, -0.510053, 0.701251,
		6.797512, 12.566393, 8.529962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.000010, 12.847219, 8.565111>,  <6.448849, 12.923430, 8.039086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.000010, 12.847219, 8.565111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.348731, 12.768000, 8.744328>,  <6.557963, 12.720469, 8.851857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.348731, 12.768000, 8.744328>,  <6.000010, 12.847219, 8.565111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.348731, 12.768000, 8.744328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310733, 0.483488, 0.818343,
		-0.378694, -0.852652, 0.359965,
		0.871800, -0.198048, 0.448041,
		6.610271, 12.708585, 8.878739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.858305, 12.579051, 9.260427>,  <6.000010, 12.847219, 8.565111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.858305, 12.579051, 9.260427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.249646, 12.643372, 9.312531>,  <6.484450, 12.681964, 9.343793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.249646, 12.643372, 9.312531>,  <5.858305, 12.579051, 9.260427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.249646, 12.643372, 9.312531> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158747, 0.179373, 0.970888,
		0.132750, -0.970551, 0.201016,
		0.978354, 0.160796, 0.130261,
		6.543152, 12.691611, 9.351608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.086916, 12.211270, 9.940168>,  <5.858305, 12.579051, 9.260427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.086916, 12.211270, 9.940168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.338162, 12.511535, 9.858212>,  <6.488909, 12.691693, 9.809037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.338162, 12.511535, 9.858212>,  <6.086916, 12.211270, 9.940168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.338162, 12.511535, 9.858212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193210, 0.405530, 0.893429,
		0.753753, -0.521588, 0.399754,
		0.628114, 0.750661, -0.204894,
		6.526596, 12.736732, 9.796743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.483151, 12.243954, 10.473692>,  <6.086916, 12.211270, 9.940168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.483151, 12.243954, 10.473692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.537295, 12.605012, 10.310273>,  <6.569781, 12.821647, 10.212222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.537295, 12.605012, 10.310273>,  <6.483151, 12.243954, 10.473692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.537295, 12.605012, 10.310273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047965, 0.417828, 0.907259,
		0.989635, -0.103211, 0.099852,
		0.135360, 0.902645, -0.408546,
		6.577903, 12.875805, 10.187709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.903344, 12.644255, 10.967402>,  <6.483151, 12.243954, 10.473692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.903344, 12.644255, 10.967402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.765000, 12.921496, 10.714423>,  <6.681993, 13.087841, 10.562636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.765000, 12.921496, 10.714423>,  <6.903344, 12.644255, 10.967402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.765000, 12.921496, 10.714423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046524, 0.685883, 0.726223,
		0.937131, 0.221748, -0.269467,
		-0.345861, 0.693103, -0.632446,
		6.661242, 13.129427, 10.524690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.283277, 13.172123, 11.117539>,  <6.903344, 12.644255, 10.967402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.283277, 13.172123, 11.117539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.961882, 13.335072, 10.943892>,  <6.769045, 13.432840, 10.839705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.961882, 13.335072, 10.943892>,  <7.283277, 13.172123, 11.117539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.961882, 13.335072, 10.943892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022152, 0.749167, 0.662011,
		0.594910, 0.522300, -0.610970,
		-0.803487, 0.407371, -0.434117,
		6.720836, 13.457283, 10.813658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.417055, 13.844330, 11.242630>,  <7.283277, 13.172123, 11.117539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.417055, 13.844330, 11.242630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.042479, 13.856003, 11.102784>,  <6.817734, 13.863007, 11.018876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.042479, 13.856003, 11.102784>,  <7.417055, 13.844330, 11.242630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.042479, 13.856003, 11.102784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237765, 0.679983, 0.693607,
		0.257973, 0.732647, -0.629824,
		-0.936439, 0.029182, -0.349615,
		6.761548, 13.864758, 10.997900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.114565, 14.589654, 10.927721>,  <7.417055, 13.844330, 11.242630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.114565, 14.589654, 10.927721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.836235, 14.358652, 11.098513>,  <6.669236, 14.220051, 11.200988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.836235, 14.358652, 11.098513>,  <7.114565, 14.589654, 10.927721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.836235, 14.358652, 11.098513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224128, 0.739420, 0.634842,
		-0.682342, 0.346043, -0.643944,
		-0.695827, -0.577505, 0.426980,
		6.627486, 14.185400, 11.226606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.567694, 15.040239, 11.025826>,  <7.114565, 14.589654, 10.927721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.567694, 15.040239, 11.025826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.483723, 14.734804, 11.270077>,  <6.433340, 14.551543, 11.416627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.483723, 14.734804, 11.270077>,  <6.567694, 15.040239, 11.025826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.483723, 14.734804, 11.270077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216426, 0.645341, 0.732595,
		-0.953462, 0.021637, -0.300736,
		-0.209928, -0.763588, 0.610625,
		6.420744, 14.505728, 11.453264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.059922, 15.225029, 11.371294>,  <6.567694, 15.040239, 11.025826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.059922, 15.225029, 11.371294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.209067, 14.928419, 11.594405>,  <6.298554, 14.750453, 11.728271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.209067, 14.928419, 11.594405>,  <6.059922, 15.225029, 11.371294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.209067, 14.928419, 11.594405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037816, 0.588483, 0.807625,
		-0.927116, -0.322226, 0.191381,
		0.372862, -0.741524, 0.557777,
		6.320926, 14.705962, 11.761739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.559114, 15.120145, 11.994956>,  <6.059922, 15.225029, 11.371294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.559114, 15.120145, 11.994956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.883246, 14.921923, 12.120042>,  <6.077725, 14.802990, 12.195093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.883246, 14.921923, 12.120042>,  <5.559114, 15.120145, 11.994956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.883246, 14.921923, 12.120042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049044, 0.474437, 0.878922,
		-0.583918, -0.727554, 0.360146,
		0.810330, -0.495555, 0.312715,
		6.126345, 14.773256, 12.213857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.473840, 15.113232, 12.730658>,  <5.559114, 15.120145, 11.994956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.473840, 15.113232, 12.730658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.863586, 15.031058, 12.693974>,  <6.097434, 14.981754, 12.671964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.863586, 15.031058, 12.693974>,  <5.473840, 15.113232, 12.730658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.863586, 15.031058, 12.693974> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144976, 0.261635, 0.954217,
		-0.172035, -0.943050, 0.284711,
		0.974364, -0.205435, -0.091709,
		6.155895, 14.969428, 12.666461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.653499, 14.645112, 13.138912>,  <5.473840, 15.113232, 12.730658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.653499, 14.645112, 13.138912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.996343, 14.843347, 13.082690>,  <6.202050, 14.962287, 13.048957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.996343, 14.843347, 13.082690>,  <5.653499, 14.645112, 13.138912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.996343, 14.843347, 13.082690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018951, 0.303001, 0.952802,
		0.514784, -0.813993, 0.269097,
		0.857110, 0.495587, -0.140554,
		6.253476, 14.992023, 13.040524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.175998, 14.469936, 13.700489>,  <5.653499, 14.645112, 13.138912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.175998, 14.469936, 13.700489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.341175, 14.795462, 13.536936>,  <6.440280, 14.990777, 13.438804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.341175, 14.795462, 13.536936>,  <6.175998, 14.469936, 13.700489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.341175, 14.795462, 13.536936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169956, 0.372206, 0.912457,
		0.894759, -0.446284, 0.015387,
		0.412942, 0.813814, -0.408884,
		6.465057, 15.039606, 13.414270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.777963, 14.586313, 13.995868>,  <6.175998, 14.469936, 13.700489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.777963, 14.586313, 13.995868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.668974, 14.939404, 13.842740>,  <6.603580, 15.151259, 13.750864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.668974, 14.939404, 13.842740>,  <6.777963, 14.586313, 13.995868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.668974, 14.939404, 13.842740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122662, 0.426495, 0.896134,
		0.954313, 0.197214, -0.224485,
		-0.272472, 0.882728, -0.382819,
		6.587232, 15.204223, 13.727895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.051620, 14.978795, 14.383743>,  <6.777963, 14.586313, 13.995868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.051620, 14.978795, 14.383743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.809978, 15.254704, 14.224105>,  <6.664994, 15.420248, 14.128322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.809978, 15.254704, 14.224105>,  <7.051620, 14.978795, 14.383743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.809978, 15.254704, 14.224105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186045, 0.364894, 0.912272,
		0.774886, 0.625355, -0.092105,
		-0.604102, 0.689771, -0.399095,
		6.628748, 15.461635, 14.104377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.266892, 15.714219, 14.659477>,  <7.051620, 14.978795, 14.383743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.266892, 15.714219, 14.659477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.879286, 15.712564, 14.560692>,  <6.646722, 15.711571, 14.501421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.879286, 15.712564, 14.560692>,  <7.266892, 15.714219, 14.659477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.879286, 15.712564, 14.560692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225739, 0.420648, 0.878691,
		0.100248, 0.907215, -0.408549,
		-0.969016, -0.004138, -0.246963,
		6.588581, 15.711322, 14.486603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.054383, 16.350145, 14.795814>,  <7.266892, 15.714219, 14.659477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.054383, 16.350145, 14.795814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.714588, 16.140160, 14.774710>,  <6.510711, 16.014168, 14.762048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.714588, 16.140160, 14.774710>,  <7.054383, 16.350145, 14.795814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.714588, 16.140160, 14.774710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314230, 0.423070, 0.849865,
		-0.423828, 0.738529, -0.524353,
		-0.849488, -0.524964, -0.052759,
		6.459742, 15.982671, 14.758883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.556292, 16.830017, 15.073208>,  <7.054383, 16.350145, 14.795814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.556292, 16.830017, 15.073208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.945277, 16.748344, 15.028256>,  <8.178667, 16.699341, 15.001286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.945277, 16.748344, 15.028256>,  <7.556292, 16.830017, 15.073208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.945277, 16.748344, 15.028256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041660, 0.322122, -0.945781,
		0.229311, 0.924417, 0.304745,
		0.972461, -0.204182, -0.112378,
		8.237015, 16.687090, 14.994543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.748230, 17.421434, 14.630250>,  <7.556292, 16.830017, 15.073208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.748230, 17.421434, 14.630250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.042731, 17.154505, 14.585341>,  <8.219433, 16.994347, 14.558396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.042731, 17.154505, 14.585341>,  <7.748230, 17.421434, 14.630250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.042731, 17.154505, 14.585341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144987, 0.317615, -0.937070,
		0.660990, 0.673644, 0.330599,
		0.736255, -0.667326, -0.112271,
		8.263608, 16.954308, 14.551661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.343694, 17.775457, 14.258365>,  <7.748230, 17.421434, 14.630250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.343694, 17.775457, 14.258365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.399588, 17.381210, 14.220345>,  <8.433125, 17.144663, 14.197533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.399588, 17.381210, 14.220345>,  <8.343694, 17.775457, 14.258365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.399588, 17.381210, 14.220345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307329, 0.134421, -0.942061,
		0.941288, 0.102428, 0.321692,
		0.139735, -0.985616, -0.095050,
		8.441508, 17.085526, 14.191830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.074723, 17.659840, 13.924589>,  <8.343694, 17.775457, 14.258365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.074723, 17.659840, 13.924589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.865221, 17.323372, 13.870755>,  <8.739520, 17.121490, 13.838455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.865221, 17.323372, 13.870755>,  <9.074723, 17.659840, 13.924589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.865221, 17.323372, 13.870755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303305, -0.036505, -0.952194,
		0.796044, -0.539537, 0.274251,
		-0.523755, -0.841170, -0.134585,
		8.708095, 17.071020, 13.830379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.585365, 17.107927, 13.723680>,  <9.074723, 17.659840, 13.924589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.585365, 17.107927, 13.723680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.238220, 16.960678, 13.590235>,  <9.029933, 16.872328, 13.510167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.238220, 16.960678, 13.590235>,  <9.585365, 17.107927, 13.723680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.238220, 16.960678, 13.590235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398568, -0.115035, -0.909896,
		0.296578, -0.922633, 0.246557,
		-0.867863, -0.368125, -0.333615,
		8.977861, 16.850241, 13.490150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.755302, 16.542866, 13.286549>,  <9.585365, 17.107927, 13.723680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.755302, 16.542866, 13.286549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.369782, 16.600586, 13.196868>,  <9.138471, 16.635218, 13.143060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.369782, 16.600586, 13.196868>,  <9.755302, 16.542866, 13.286549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.369782, 16.600586, 13.196868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192825, -0.203502, -0.959899,
		-0.184128, -0.968384, 0.168313,
		-0.963803, 0.144289, -0.224199,
		9.080643, 16.643877, 13.129607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.501316, 16.013924, 12.881624>,  <9.755302, 16.542866, 13.286549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.501316, 16.013924, 12.881624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.222024, 16.283775, 12.785832>,  <9.054449, 16.445686, 12.728357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.222024, 16.283775, 12.785832>,  <9.501316, 16.013924, 12.881624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.222024, 16.283775, 12.785832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035427, -0.301556, -0.952790,
		-0.714997, -0.673750, 0.186655,
		-0.698230, 0.674629, -0.239481,
		9.012555, 16.486164, 12.713988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.944331, 15.633900, 12.397524>,  <9.501316, 16.013924, 12.881624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.944331, 15.633900, 12.397524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.892167, 16.025217, 12.333106>,  <8.860868, 16.260008, 12.294456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.892167, 16.025217, 12.333106>,  <8.944331, 15.633900, 12.397524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.892167, 16.025217, 12.333106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047585, -0.168421, -0.984566,
		-0.990318, -0.120733, 0.068516,
		-0.130409, 0.978293, -0.161045,
		8.853045, 16.318705, 12.284793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.451065, 15.631927, 11.922558>,  <8.944331, 15.633900, 12.397524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.451065, 15.631927, 11.922558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.582809, 16.008924, 11.899841>,  <8.661856, 16.235123, 11.886211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.582809, 16.008924, 11.899841>,  <8.451065, 15.631927, 11.922558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.582809, 16.008924, 11.899841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021796, -0.052541, -0.998381,
		-0.943953, 0.330065, 0.003238,
		0.329361, 0.942495, -0.056790,
		8.681618, 16.291674, 11.882804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.098476, 15.896038, 11.419973>,  <8.451065, 15.631927, 11.922558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.098476, 15.896038, 11.419973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.423096, 16.129543, 11.410081>,  <8.617867, 16.269646, 11.404145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.423096, 16.129543, 11.410081>,  <8.098476, 15.896038, 11.419973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.423096, 16.129543, 11.410081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081679, 0.071435, -0.994095,
		-0.578550, 0.808775, 0.105654,
		0.811547, 0.583763, -0.024731,
		8.666560, 16.304672, 11.402661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.987891, 16.568514, 11.080623>,  <8.098476, 15.896038, 11.419973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.987891, 16.568514, 11.080623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.375054, 16.472195, 11.051857>,  <8.607352, 16.414404, 11.034597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.375054, 16.472195, 11.051857>,  <7.987891, 16.568514, 11.080623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.375054, 16.472195, 11.051857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061184, 0.051756, -0.996784,
		0.243745, 0.969194, 0.035362,
		0.967908, -0.240798, -0.071914,
		8.665426, 16.399956, 11.030283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.134830, 16.995686, 10.521156>,  <7.987891, 16.568514, 11.080623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.134830, 16.995686, 10.521156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.448950, 16.751369, 10.561634>,  <8.637422, 16.604780, 10.585920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.448950, 16.751369, 10.561634>,  <8.134830, 16.995686, 10.521156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.448950, 16.751369, 10.561634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158071, 0.039771, -0.986627,
		0.598599, 0.790791, 0.127781,
		0.785298, -0.610792, 0.101194,
		8.684539, 16.568132, 10.591992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.632936, 17.220675, 9.998930>,  <8.134830, 16.995686, 10.521156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.632936, 17.220675, 9.998930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.710486, 16.839954, 10.093999>,  <8.757016, 16.611523, 10.151040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.710486, 16.839954, 10.093999>,  <8.632936, 17.220675, 9.998930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.710486, 16.839954, 10.093999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260546, -0.183612, -0.947841,
		0.945795, 0.245688, 0.212390,
		0.193876, -0.951800, 0.237672,
		8.768649, 16.554415, 10.165300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.337627, 17.001438, 9.582615>,  <8.632936, 17.220675, 9.998930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.337627, 17.001438, 9.582615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.159807, 16.654535, 9.672275>,  <9.053115, 16.446394, 9.726070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.159807, 16.654535, 9.672275>,  <9.337627, 17.001438, 9.582615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.159807, 16.654535, 9.672275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320622, -0.387715, -0.864221,
		0.836407, -0.312323, 0.450420,
		-0.444550, -0.867255, 0.224150,
		9.026442, 16.394360, 9.739519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.808044, 16.389971, 9.371848>,  <9.337627, 17.001438, 9.582615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.808044, 16.389971, 9.371848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.440288, 16.237379, 9.410197>,  <9.219634, 16.145824, 9.433207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.440288, 16.237379, 9.410197>,  <9.808044, 16.389971, 9.371848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.440288, 16.237379, 9.410197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204987, -0.672705, -0.710948,
		0.335707, -0.633987, 0.696678,
		-0.919392, -0.381481, 0.095873,
		9.164470, 16.122934, 9.438959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.946806, 15.723184, 9.099569>,  <9.808044, 16.389971, 9.371848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.946806, 15.723184, 9.099569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.552251, 15.781569, 9.129856>,  <9.315517, 15.816601, 9.148028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.552251, 15.781569, 9.129856>,  <9.946806, 15.723184, 9.099569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.552251, 15.781569, 9.129856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155253, -0.674990, -0.721308,
		-0.054177, -0.723245, 0.688463,
		-0.986388, 0.145964, 0.075717,
		9.256334, 15.825359, 9.152571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.602484, 15.097978, 9.022673>,  <9.946806, 15.723184, 9.099569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.602484, 15.097978, 9.022673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.313573, 15.363539, 8.945164>,  <9.140226, 15.522876, 8.898659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.313573, 15.363539, 8.945164>,  <9.602484, 15.097978, 9.022673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.313573, 15.363539, 8.945164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411510, -0.637733, -0.651120,
		-0.555853, -0.390552, 0.733823,
		-0.722279, 0.663902, -0.193770,
		9.096889, 15.562710, 8.887033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.142342, 14.703846, 8.976169>,  <9.602484, 15.097978, 9.022673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.142342, 14.703846, 8.976169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.023739, 15.031199, 8.779259>,  <8.952578, 15.227611, 8.661113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.023739, 15.031199, 8.779259>,  <9.142342, 14.703846, 8.976169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.023739, 15.031199, 8.779259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404189, -0.574548, -0.711706,
		-0.865283, -0.012053, 0.501138,
		-0.296506, 0.818382, -0.492275,
		8.934787, 15.276713, 8.631577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.451275, 14.516157, 8.757872>,  <9.142342, 14.703846, 8.976169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.451275, 14.516157, 8.757872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.570662, 14.822229, 8.529690>,  <8.642294, 15.005873, 8.392781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.570662, 14.822229, 8.529690>,  <8.451275, 14.516157, 8.757872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.570662, 14.822229, 8.529690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439500, -0.420366, -0.793809,
		-0.847206, 0.487640, 0.210831,
		0.298467, 0.765180, -0.570454,
		8.660201, 15.051784, 8.358554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.969638, 14.486169, 8.288198>,  <8.451275, 14.516157, 8.757872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.969638, 14.486169, 8.288198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.255412, 14.706872, 8.116082>,  <8.426876, 14.839293, 8.012814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.255412, 14.706872, 8.116082>,  <7.969638, 14.486169, 8.288198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.255412, 14.706872, 8.116082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233552, -0.391642, -0.889983,
		-0.659573, 0.736329, -0.150938,
		0.714434, 0.551757, -0.430288,
		8.469743, 14.872399, 7.986996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.664096, 14.849907, 7.667254>,  <7.969638, 14.486169, 8.288198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.664096, 14.849907, 7.667254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.057333, 14.823275, 7.599021>,  <8.293275, 14.807295, 7.558081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.057333, 14.823275, 7.599021>,  <7.664096, 14.849907, 7.667254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.057333, 14.823275, 7.599021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181587, -0.474628, -0.861252,
		-0.023620, 0.877665, -0.478693,
		0.983091, -0.066582, -0.170583,
		8.352261, 14.803300, 7.547846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<24.002537, 20.990475, 23.055826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.730371, 20.857063, 23.316837>,  <23.567072, 20.777016, 23.473444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.730371, 20.857063, 23.316837>,  <24.002537, 20.990475, 23.055826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.730371, 20.857063, 23.316837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128979, 0.822025, 0.554653,
		-0.721388, 0.461557, -0.516299,
		-0.680415, -0.333528, 0.652530,
		23.526247, 20.757006, 23.512596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.625807, 21.558310, 23.225353>,  <24.002537, 20.990475, 23.055826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.625807, 21.558310, 23.225353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.562351, 21.311670, 23.533806>,  <23.524277, 21.163687, 23.718878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.562351, 21.311670, 23.533806>,  <23.625807, 21.558310, 23.225353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.562351, 21.311670, 23.533806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017972, 0.779088, 0.626657,
		-0.987173, 0.113272, -0.112514,
		-0.158641, -0.616597, 0.771130,
		23.514759, 21.126692, 23.765144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.258083, 21.978554, 23.608574>,  <23.625807, 21.558310, 23.225353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.258083, 21.978554, 23.608574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.386808, 21.677214, 23.837973>,  <23.464045, 21.496408, 23.975611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.386808, 21.677214, 23.837973>,  <23.258083, 21.978554, 23.608574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.386808, 21.677214, 23.837973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069332, 0.622841, 0.779270,
		-0.944261, -0.211018, 0.252670,
		0.321814, -0.753353, 0.573495,
		23.483353, 21.451208, 24.010021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.811123, 21.934694, 24.260656>,  <23.258083, 21.978554, 23.608574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.811123, 21.934694, 24.260656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.144917, 21.731426, 24.345881>,  <23.345194, 21.609465, 24.397015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.144917, 21.731426, 24.345881>,  <22.811123, 21.934694, 24.260656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.144917, 21.731426, 24.345881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010036, 0.372579, 0.927946,
		-0.550939, -0.776496, 0.305811,
		0.834485, -0.508172, 0.213061,
		23.395262, 21.578974, 24.409800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.649860, 21.783680, 24.944815>,  <22.811123, 21.934694, 24.260656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.649860, 21.783680, 24.944815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.045057, 21.739859, 24.901228>,  <23.282175, 21.713566, 24.875076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.045057, 21.739859, 24.901228>,  <22.649860, 21.783680, 24.944815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.045057, 21.739859, 24.901228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131145, 0.221593, 0.966280,
		-0.081712, -0.968966, 0.233299,
		0.987990, -0.109552, -0.108968,
		23.341454, 21.706993, 24.868538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.915247, 21.470192, 25.614065>,  <22.649860, 21.783680, 24.944815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.915247, 21.470192, 25.614065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.255789, 21.587959, 25.440392>,  <23.460114, 21.658619, 25.336187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.255789, 21.587959, 25.440392>,  <22.915247, 21.470192, 25.614065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.255789, 21.587959, 25.440392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325870, 0.351798, 0.877523,
		0.411103, -0.888570, 0.203563,
		0.851353, 0.294418, -0.434183,
		23.511194, 21.676285, 25.310137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.494377, 21.223539, 26.029280>,  <22.915247, 21.470192, 25.614065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.494377, 21.223539, 26.029280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.601538, 21.548721, 25.822462>,  <23.665834, 21.743830, 25.698372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.601538, 21.548721, 25.822462>,  <23.494377, 21.223539, 26.029280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.601538, 21.548721, 25.822462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187726, 0.482328, 0.855640,
		0.944981, -0.326288, -0.023397,
		0.267900, 0.812955, -0.517043,
		23.681908, 21.792608, 25.667349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.033875, 21.483036, 26.448944>,  <23.494377, 21.223539, 26.029280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.033875, 21.483036, 26.448944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.914938, 21.790041, 26.221783>,  <23.843576, 21.974243, 26.085485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.914938, 21.790041, 26.221783>,  <24.033875, 21.483036, 26.448944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.914938, 21.790041, 26.221783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088890, 0.614477, 0.783912,
		0.950624, 0.182609, -0.250933,
		-0.297341, 0.767511, -0.567904,
		23.825735, 22.020294, 26.051411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551056, 22.034136, 26.567574>,  <24.033875, 21.483036, 26.448944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551056, 22.034136, 26.567574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.237242, 22.233614, 26.420166>,  <24.048954, 22.353300, 26.331720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.237242, 22.233614, 26.420166>,  <24.551056, 22.034136, 26.567574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.237242, 22.233614, 26.420166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151309, 0.730302, 0.666156,
		0.601340, 0.466863, -0.648405,
		-0.784535, 0.498696, -0.368520,
		24.001881, 22.383223, 26.309610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.856560, 22.646397, 26.426601>,  <24.551056, 22.034136, 26.567574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.856560, 22.646397, 26.426601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.468527, 22.743391, 26.421816>,  <24.235708, 22.801588, 26.418943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.468527, 22.743391, 26.421816>,  <24.856560, 22.646397, 26.426601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.468527, 22.743391, 26.421816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204174, 0.841489, 0.500210,
		0.131363, 0.482801, -0.865822,
		-0.970081, 0.242487, -0.011965,
		24.177502, 22.816137, 26.418226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.731058, 23.378157, 26.250605>,  <24.856560, 22.646397, 26.426601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.731058, 23.378157, 26.250605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.411386, 23.261539, 26.460867>,  <24.219584, 23.191568, 26.587025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.411386, 23.261539, 26.460867>,  <24.731058, 23.378157, 26.250605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.411386, 23.261539, 26.460867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016694, 0.884929, 0.465427,
		-0.600860, 0.363185, -0.712084,
		-0.799180, -0.291544, 0.525655,
		24.171633, 23.174076, 26.618563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.389297, 23.993650, 26.379972>,  <24.731058, 23.378157, 26.250605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.389297, 23.993650, 26.379972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.196115, 23.753361, 26.634809>,  <24.080206, 23.609186, 26.787712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.196115, 23.753361, 26.634809>,  <24.389297, 23.993650, 26.379972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.196115, 23.753361, 26.634809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261013, 0.793255, 0.550108,
		-0.835840, 0.099387, -0.539902,
		-0.482953, -0.600724, 0.637093,
		24.051229, 23.573143, 26.825937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.670250, 24.273558, 26.503380>,  <24.389297, 23.993650, 26.379972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.670250, 24.273558, 26.503380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.822847, 24.040003, 26.790026>,  <23.914406, 23.899870, 26.962013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.822847, 24.040003, 26.790026>,  <23.670250, 24.273558, 26.503380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.822847, 24.040003, 26.790026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316824, 0.645693, 0.694768,
		-0.868380, -0.492091, 0.061338,
		0.381495, -0.583889, 0.716614,
		23.937296, 23.864836, 27.005011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.160896, 24.857082, 26.715700>,  <23.670250, 24.273558, 26.503380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.160896, 24.857082, 26.715700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.475496, 25.008181, 26.520262>,  <23.664257, 25.098839, 26.402998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.475496, 25.008181, 26.520262>,  <23.160896, 24.857082, 26.715700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.475496, 25.008181, 26.520262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475180, 0.875472, -0.088054,
		0.394490, 0.301425, 0.868056,
		0.786500, 0.377746, -0.488596,
		23.711447, 25.121504, 26.373682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.822065, 24.854763, 27.439743>,  <23.160896, 24.857082, 26.715700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.822065, 24.854763, 27.439743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.797394, 25.253761, 27.453613>,  <22.782591, 25.493160, 27.461935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.797394, 25.253761, 27.453613>,  <22.822065, 24.854763, 27.439743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.797394, 25.253761, 27.453613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656255, -0.014353, -0.754403,
		-0.752014, -0.069286, 0.655495,
		-0.061678, 0.997494, 0.034676,
		22.778891, 25.553009, 27.464016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.135521, 24.974495, 27.644815>,  <22.822065, 24.854763, 27.439743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.135521, 24.974495, 27.644815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.287558, 25.294327, 27.458824>,  <22.378780, 25.486225, 27.347229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.287558, 25.294327, 27.458824>,  <22.135521, 24.974495, 27.644815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.287558, 25.294327, 27.458824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815354, 0.052284, -0.576597,
		-0.436724, 0.598281, 0.671813,
		0.380092, 0.799579, -0.464977,
		22.401585, 25.534201, 27.319330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.581224, 25.451675, 27.618917>,  <22.135521, 24.974495, 27.644815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.581224, 25.451675, 27.618917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.846264, 25.530214, 27.329805>,  <22.005287, 25.577337, 27.156338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.846264, 25.530214, 27.329805>,  <21.581224, 25.451675, 27.618917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.846264, 25.530214, 27.329805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748169, 0.128752, -0.650896,
		-0.034742, 0.972044, 0.232212,
		0.662598, 0.196347, -0.722781,
		22.045044, 25.589119, 27.112970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.226213, 25.849861, 27.103603>,  <21.581224, 25.451675, 27.618917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.226213, 25.849861, 27.103603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.554111, 25.738424, 26.903440>,  <21.750851, 25.671562, 26.783342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.554111, 25.738424, 26.903440>,  <21.226213, 25.849861, 27.103603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.554111, 25.738424, 26.903440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524928, -0.016027, -0.850995,
		0.229060, 0.960276, -0.159378,
		0.819745, -0.278591, -0.500405,
		21.800035, 25.654846, 26.753319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.131124, 26.066004, 26.430601>,  <21.226213, 25.849861, 27.103603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.131124, 26.066004, 26.430601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.434347, 25.821932, 26.338486>,  <21.616280, 25.675489, 26.283216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.434347, 25.821932, 26.338486>,  <21.131124, 26.066004, 26.430601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.434347, 25.821932, 26.338486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338135, -0.065766, -0.938797,
		0.557689, 0.789529, -0.256177,
		0.758055, -0.610179, -0.230290,
		21.661764, 25.638878, 26.269398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.319481, 26.226959, 25.753942>,  <21.131124, 26.066004, 26.430601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.319481, 26.226959, 25.753942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.463308, 25.857374, 25.806107>,  <21.549604, 25.635624, 25.837404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.463308, 25.857374, 25.806107>,  <21.319481, 26.226959, 25.753942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.463308, 25.857374, 25.806107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287831, -0.242766, -0.926401,
		0.887618, 0.295566, -0.353236,
		0.359567, -0.923962, 0.130410,
		21.571178, 25.580185, 25.845230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.492210, 26.078079, 25.085550>,  <21.319481, 26.226959, 25.753942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.492210, 26.078079, 25.085550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.506237, 25.712667, 25.247654>,  <21.514654, 25.493422, 25.344917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.506237, 25.712667, 25.247654>,  <21.492210, 26.078079, 25.085550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.506237, 25.712667, 25.247654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197598, -0.403843, -0.893233,
		0.979656, -0.048755, -0.194674,
		0.035068, -0.913528, 0.405261,
		21.516758, 25.438608, 25.369232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.872833, 25.702778, 24.708841>,  <21.492210, 26.078079, 25.085550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.872833, 25.702778, 24.708841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.641371, 25.441185, 24.903763>,  <21.502493, 25.284229, 25.020716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.641371, 25.441185, 24.903763>,  <21.872833, 25.702778, 24.708841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641371, 25.441185, 24.903763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381036, -0.311495, -0.870507,
		0.721087, -0.689405, -0.068942,
		-0.578657, -0.653981, 0.487304,
		21.467773, 25.244991, 25.049953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.938673, 25.031490, 24.328447>,  <21.872833, 25.702778, 24.708841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.938673, 25.031490, 24.328447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.608376, 24.991278, 24.550451>,  <21.410196, 24.967150, 24.683655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.608376, 24.991278, 24.550451>,  <21.938673, 25.031490, 24.328447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.608376, 24.991278, 24.550451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426834, -0.531872, -0.731386,
		0.368724, -0.840836, 0.396279,
		-0.825745, -0.100534, 0.555011,
		21.360651, 24.961117, 24.716955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.764874, 24.323019, 24.336739>,  <21.938673, 25.031490, 24.328447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.764874, 24.323019, 24.336739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.434866, 24.526026, 24.436155>,  <21.236862, 24.647831, 24.495806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.434866, 24.526026, 24.436155>,  <21.764874, 24.323019, 24.336739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.434866, 24.526026, 24.436155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513654, -0.490113, -0.704237,
		-0.235600, -0.708672, 0.665040,
		-0.825017, 0.507518, 0.248541,
		21.187361, 24.678282, 24.510717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.356342, 23.858133, 24.096624>,  <21.764874, 24.323019, 24.336739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.356342, 23.858133, 24.096624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.118269, 24.177727, 24.130997>,  <20.975424, 24.369482, 24.151619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.118269, 24.177727, 24.130997>,  <21.356342, 23.858133, 24.096624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.118269, 24.177727, 24.130997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655707, -0.421051, -0.626710,
		-0.464546, -0.429356, 0.774500,
		-0.595186, 0.798980, 0.085934,
		20.939714, 24.417421, 24.156776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.641697, 23.693859, 24.479668>,  <21.356342, 23.858133, 24.096624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.641697, 23.693859, 24.479668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.603228, 24.018196, 24.248745>,  <20.580147, 24.212799, 24.110191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.603228, 24.018196, 24.248745>,  <20.641697, 23.693859, 24.479668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.603228, 24.018196, 24.248745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664409, -0.484164, -0.569338,
		-0.741156, 0.328814, 0.585295,
		-0.096173, 0.810843, -0.577308,
		20.574375, 24.261450, 24.075552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.904694, 23.831810, 24.364943>,  <20.641697, 23.693859, 24.479668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.904694, 23.831810, 24.364943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.111395, 24.000065, 24.066673>,  <20.235416, 24.101019, 23.887712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.111395, 24.000065, 24.066673>,  <19.904694, 23.831810, 24.364943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.111395, 24.000065, 24.066673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685771, -0.318043, -0.654650,
		-0.512527, 0.849654, 0.124112,
		0.516753, 0.420638, -0.745674,
		20.266420, 24.126257, 23.842972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.433527, 24.199633, 24.044971>,  <19.904694, 23.831810, 24.364943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.433527, 24.199633, 24.044971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.705385, 24.105097, 23.767202>,  <19.868500, 24.048374, 23.600540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.705385, 24.105097, 23.767202>,  <19.433527, 24.199633, 24.044971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.705385, 24.105097, 23.767202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733337, -0.196642, -0.650806,
		0.017259, 0.951564, -0.306964,
		0.679646, -0.236341, -0.694423,
		19.909279, 24.034195, 23.558876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926588, 24.888515, 23.831493>,  <19.433527, 24.199633, 24.044971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926588, 24.888515, 23.831493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.580000, 24.867765, 24.030104>,  <18.372047, 24.855316, 24.149271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.580000, 24.867765, 24.030104>,  <18.926588, 24.888515, 23.831493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.580000, 24.867765, 24.030104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395083, 0.536758, 0.745520,
		-0.305188, 0.842140, -0.444590,
		-0.866470, -0.051874, 0.496527,
		18.320059, 24.852203, 24.179062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.732704, 25.626806, 24.024111>,  <18.926588, 24.888515, 23.831493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.732704, 25.626806, 24.024111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.522856, 25.380182, 24.258930>,  <18.396948, 25.232208, 24.399822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.522856, 25.380182, 24.258930>,  <18.732704, 25.626806, 24.024111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.522856, 25.380182, 24.258930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066857, 0.657593, 0.750400,
		-0.848708, 0.432923, -0.303765,
		-0.524619, -0.616562, 0.587048,
		18.365471, 25.195213, 24.435045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.242044, 25.977873, 24.401817>,  <18.732704, 25.626806, 24.024111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.242044, 25.977873, 24.401817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.247778, 25.657104, 24.640720>,  <18.251217, 25.464643, 24.784063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.247778, 25.657104, 24.640720>,  <18.242044, 25.977873, 24.401817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247778, 25.657104, 24.640720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203156, 0.587198, 0.783535,
		-0.979042, 0.110108, 0.171330,
		0.014331, -0.801920, 0.597260,
		18.252077, 25.416529, 24.819899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836979, 26.201014, 25.052210>,  <18.242044, 25.977873, 24.401817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.836979, 26.201014, 25.052210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.044115, 25.876421, 25.160532>,  <18.168396, 25.681665, 25.225525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.044115, 25.876421, 25.160532>,  <17.836979, 26.201014, 25.052210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.044115, 25.876421, 25.160532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201161, 0.423183, 0.883431,
		-0.831490, -0.403001, 0.382380,
		0.517841, -0.811484, 0.270804,
		18.199467, 25.632977, 25.241774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.627842, 26.022095, 25.753256>,  <17.836979, 26.201014, 25.052210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.627842, 26.022095, 25.753256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.974504, 25.825855, 25.716988>,  <18.182503, 25.708113, 25.695227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.974504, 25.825855, 25.716988>,  <17.627842, 26.022095, 25.753256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.974504, 25.825855, 25.716988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316126, 0.399405, 0.860546,
		-0.385967, -0.774462, 0.501237,
		0.866657, -0.490597, -0.090671,
		18.234501, 25.678677, 25.689787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.656572, 25.609404, 26.354790>,  <17.627842, 26.022095, 25.753256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.656572, 25.609404, 26.354790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.023241, 25.700384, 26.223351>,  <18.243242, 25.754972, 26.144487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.023241, 25.700384, 26.223351>,  <17.656572, 25.609404, 26.354790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.023241, 25.700384, 26.223351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233471, 0.362542, 0.902250,
		0.324343, -0.903787, 0.279231,
		0.916675, 0.227447, -0.328596,
		18.298243, 25.768620, 26.124771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.956549, 25.603186, 26.978079>,  <17.656572, 25.609404, 26.354790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.956549, 25.603186, 26.978079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.251226, 25.736921, 26.742964>,  <18.428034, 25.817163, 26.601894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.251226, 25.736921, 26.742964>,  <17.956549, 25.603186, 26.978079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.251226, 25.736921, 26.742964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485587, 0.343384, 0.803923,
		0.470621, -0.877669, 0.090618,
		0.736696, 0.334340, -0.587789,
		18.472235, 25.837223, 26.566628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.326984, 24.973509, 27.108381>,  <17.956549, 25.603186, 26.978079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.326984, 24.973509, 27.108381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.254948, 24.639828, 27.316870>,  <18.211725, 24.439619, 27.441963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.254948, 24.639828, 27.316870>,  <18.326984, 24.973509, 27.108381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.254948, 24.639828, 27.316870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661395, -0.289526, -0.691905,
		0.728097, -0.469337, -0.499598,
		-0.180090, -0.834205, 0.521220,
		18.200920, 24.389566, 27.473236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.645832, 24.383495, 26.818111>,  <18.326984, 24.973509, 27.108381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.645832, 24.383495, 26.818111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.314726, 24.290607, 27.022415>,  <18.116062, 24.234875, 27.144997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.314726, 24.290607, 27.022415>,  <18.645832, 24.383495, 26.818111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.314726, 24.290607, 27.022415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406691, -0.378801, -0.831331,
		0.386528, -0.895870, 0.219117,
		-0.827767, -0.232220, 0.510760,
		18.066395, 24.220942, 27.175644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.348206, 23.795393, 26.524643>,  <18.645832, 24.383495, 26.818111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.348206, 23.795393, 26.524643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.043064, 23.897453, 26.762281>,  <17.859980, 23.958689, 26.904865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.043064, 23.897453, 26.762281>,  <18.348206, 23.795393, 26.524643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.043064, 23.897453, 26.762281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645365, -0.356519, -0.675573,
		0.039434, -0.898773, 0.436638,
		-0.762856, 0.255150, 0.594096,
		17.814207, 23.973999, 26.940510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.955105, 23.185646, 26.548483>,  <18.348206, 23.795393, 26.524643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.955105, 23.185646, 26.548483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.704319, 23.483002, 26.641684>,  <17.553848, 23.661415, 26.697605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.704319, 23.483002, 26.641684>,  <17.955105, 23.185646, 26.548483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.704319, 23.483002, 26.641684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711875, -0.425183, -0.558975,
		-0.316466, -0.516327, 0.795774,
		-0.626963, 0.743388, 0.233004,
		17.516230, 23.706018, 26.711584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.254381, 22.986237, 26.764351>,  <17.955105, 23.185646, 26.548483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.254381, 22.986237, 26.764351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.174454, 23.353840, 26.628414>,  <17.126497, 23.574402, 26.546852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.174454, 23.353840, 26.628414>,  <17.254381, 22.986237, 26.764351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.174454, 23.353840, 26.628414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681054, -0.379621, -0.626141,
		-0.704442, 0.106338, 0.701751,
		-0.199817, 0.919010, -0.339843,
		17.114508, 23.629543, 26.526461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.543613, 23.012554, 26.851000>,  <17.254381, 22.986237, 26.764351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.543613, 23.012554, 26.851000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.638344, 23.273932, 26.563410>,  <16.695183, 23.430758, 26.390856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.638344, 23.273932, 26.563410>,  <16.543613, 23.012554, 26.851000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.638344, 23.273932, 26.563410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810894, -0.274661, -0.516732,
		-0.535129, 0.705389, 0.464825,
		0.236828, 0.653443, -0.718975,
		16.709393, 23.469965, 26.347717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.898366, 23.288313, 26.577028>,  <16.543613, 23.012554, 26.851000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.898366, 23.288313, 26.577028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.143682, 23.399477, 26.281288>,  <16.290873, 23.466175, 26.103844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.143682, 23.399477, 26.281288>,  <15.898366, 23.288313, 26.577028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143682, 23.399477, 26.281288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773392, 0.021163, -0.633574,
		-0.160430, 0.960374, 0.227913,
		0.613292, 0.277910, -0.739351,
		16.327669, 23.482849, 26.059483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.554848, 18.141031, 27.664219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.491100, 17.761042, 27.771666>,  <27.452852, 17.533049, 27.836134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.491100, 17.761042, 27.771666>,  <27.554848, 18.141031, 27.664219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.491100, 17.761042, 27.771666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914119, 0.244752, 0.323239,
		-0.372812, -0.194032, -0.907393,
		-0.159368, -0.949973, 0.268615,
		27.443291, 17.476049, 27.852249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979820, 18.564285, 27.928867>,  <27.554848, 18.141031, 27.664219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979820, 18.564285, 27.928867> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.808664, 18.814188, 27.667612>,  <26.705971, 18.964130, 27.510859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.808664, 18.814188, 27.667612>,  <26.979820, 18.564285, 27.928867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.808664, 18.814188, 27.667612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897034, -0.205083, 0.391499,
		0.110645, 0.753404, 0.648182,
		-0.427888, 0.624759, -0.653138,
		26.680298, 19.001616, 27.471670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.688435, 19.108067, 28.336437>,  <26.979820, 18.564285, 27.928867>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.688435, 19.108067, 28.336437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.490540, 19.037142, 27.996132>,  <26.371803, 18.994587, 27.791948>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.490540, 19.037142, 27.996132>,  <26.688435, 19.108067, 28.336437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490540, 19.037142, 27.996132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792358, -0.310051, 0.525392,
		-0.356937, 0.934039, 0.012899,
		-0.494736, -0.177311, -0.850763,
		26.342119, 18.983948, 27.740904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905947, 19.341875, 28.307220>,  <26.688435, 19.108067, 28.336437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905947, 19.341875, 28.307220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.963297, 19.029314, 28.064287>,  <25.997707, 18.841778, 27.918528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.963297, 19.029314, 28.064287>,  <25.905947, 19.341875, 28.307220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963297, 19.029314, 28.064287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876031, -0.385720, 0.289465,
		-0.460449, 0.490541, -0.739835,
		0.143375, -0.781402, -0.607333,
		26.006310, 18.794893, 27.882088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.375147, 19.157061, 27.700327>,  <25.905947, 19.341875, 28.307220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.375147, 19.157061, 27.700327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.546013, 18.833662, 27.862249>,  <25.648533, 18.639624, 27.959402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.546013, 18.833662, 27.862249>,  <25.375147, 19.157061, 27.700327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.546013, 18.833662, 27.862249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882572, -0.275554, 0.380969,
		-0.196464, -0.520009, -0.831260,
		0.427164, -0.808493, 0.404808,
		25.674162, 18.591114, 27.983692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.899734, 18.573294, 27.567535>,  <25.375147, 19.157061, 27.700327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.899734, 18.573294, 27.567535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.134363, 18.426912, 27.856537>,  <25.275141, 18.339083, 28.029938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.134363, 18.426912, 27.856537>,  <24.899734, 18.573294, 27.567535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.134363, 18.426912, 27.856537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809404, -0.296028, 0.507180,
		0.028277, -0.882295, -0.469847,
		0.586570, -0.365955, 0.722504,
		25.310335, 18.317125, 28.073288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.227913, 18.787943, 27.015602>,  <24.899734, 18.573294, 27.567535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.227913, 18.787943, 27.015602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.457294, 18.622992, 26.732449>,  <24.594923, 18.524021, 26.562557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.457294, 18.622992, 26.732449>,  <24.227913, 18.787943, 27.015602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.457294, 18.622992, 26.732449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767985, -0.571428, -0.289255,
		-0.285222, 0.709518, -0.644386,
		0.573452, -0.412377, -0.707883,
		24.629330, 18.499279, 26.520084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.891724, 18.907280, 26.354321>,  <24.227913, 18.787943, 27.015602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.891724, 18.907280, 26.354321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.701138, 19.254679, 26.409006>,  <23.586786, 19.463118, 26.441818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.701138, 19.254679, 26.409006>,  <23.891724, 18.907280, 26.354321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.701138, 19.254679, 26.409006> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662466, -0.252412, -0.705285,
		-0.578029, -0.426615, 0.695616,
		-0.476467, 0.868497, 0.136716,
		23.558197, 19.515228, 26.450022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.290691, 18.738651, 26.743628>,  <23.891724, 18.907280, 26.354321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.290691, 18.738651, 26.743628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.210365, 19.083183, 26.556957>,  <23.162170, 19.289902, 26.444954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.210365, 19.083183, 26.556957>,  <23.290691, 18.738651, 26.743628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.210365, 19.083183, 26.556957> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697083, -0.460348, -0.549686,
		-0.688294, 0.214928, 0.692862,
		-0.200815, 0.861328, -0.466678,
		23.150122, 19.341581, 26.416954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.564560, 18.702452, 26.750975>,  <23.290691, 18.738651, 26.743628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.564560, 18.702452, 26.750975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.686260, 18.977327, 26.487095>,  <22.759281, 19.142252, 26.328768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.686260, 18.977327, 26.487095>,  <22.564560, 18.702452, 26.750975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.686260, 18.977327, 26.487095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684813, -0.323606, -0.652925,
		-0.662165, 0.650424, 0.372139,
		0.304252, 0.687189, -0.659698,
		22.777536, 19.183485, 26.289185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.944654, 19.069748, 26.492783>,  <22.564560, 18.702452, 26.750975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.944654, 19.069748, 26.492783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.230566, 19.097353, 26.214409>,  <22.402113, 19.113916, 26.047384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.230566, 19.097353, 26.214409>,  <21.944654, 19.069748, 26.492783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.230566, 19.097353, 26.214409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576416, -0.505374, -0.642138,
		-0.396023, 0.860137, -0.321451,
		0.714780, 0.069012, -0.695937,
		22.445000, 19.118057, 26.005629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.597593, 19.319178, 25.953194>,  <21.944654, 19.069748, 26.492783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.597593, 19.319178, 25.953194> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.933165, 19.129168, 25.846947>,  <22.134508, 19.015162, 25.783197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.933165, 19.129168, 25.846947>,  <21.597593, 19.319178, 25.953194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.933165, 19.129168, 25.846947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472941, -0.394794, -0.787696,
		0.269310, 0.786441, -0.555862,
		0.838928, -0.475024, -0.265618,
		22.184843, 18.986660, 25.767262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.412218, 19.543636, 26.628700>,  <21.597593, 19.319178, 25.953194>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.412218, 19.543636, 26.628700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.073841, 19.528885, 26.841499>,  <20.870815, 19.520035, 26.969179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.073841, 19.528885, 26.841499>,  <21.412218, 19.543636, 26.628700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.073841, 19.528885, 26.841499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170648, 0.926430, 0.335571,
		-0.505232, 0.374658, -0.777414,
		-0.845943, -0.036877, 0.531997,
		20.820059, 19.517822, 27.001099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.017662, 20.202351, 26.465517>,  <21.412218, 19.543636, 26.628700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.017662, 20.202351, 26.465517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.878239, 20.060488, 26.812557>,  <20.794584, 19.975370, 27.020781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.878239, 20.060488, 26.812557>,  <21.017662, 20.202351, 26.465517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.878239, 20.060488, 26.812557> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048207, 0.917640, 0.394478,
		-0.936047, 0.179323, -0.302753,
		-0.348557, -0.354655, 0.867599,
		20.773672, 19.954092, 27.072836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.519720, 20.739769, 26.815361>,  <21.017662, 20.202351, 26.465517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.519720, 20.739769, 26.815361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.584515, 20.489031, 27.120209>,  <20.623392, 20.338587, 27.303118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.584515, 20.489031, 27.120209>,  <20.519720, 20.739769, 26.815361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.584515, 20.489031, 27.120209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026592, 0.774810, 0.631634,
		-0.986435, -0.082050, 0.142179,
		0.161987, -0.626847, 0.762118,
		20.633110, 20.300978, 27.348845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.952015, 20.875828, 27.337442>,  <20.519720, 20.739769, 26.815361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.952015, 20.875828, 27.337442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.256453, 20.681047, 27.508842>,  <20.439116, 20.564180, 27.611683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.256453, 20.681047, 27.508842>,  <19.952015, 20.875828, 27.337442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.256453, 20.681047, 27.508842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012045, 0.649890, 0.759932,
		-0.648527, -0.583543, 0.488764,
		0.761096, -0.486949, 0.428500,
		20.484781, 20.534962, 27.637392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680790, 20.737642, 28.133766>,  <19.952015, 20.875828, 27.337442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.680790, 20.737642, 28.133766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.076571, 20.682735, 28.115227>,  <20.314039, 20.649792, 28.104103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.076571, 20.682735, 28.115227>,  <19.680790, 20.737642, 28.133766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.076571, 20.682735, 28.115227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115172, 0.551148, 0.826421,
		-0.087895, -0.823040, 0.561142,
		0.989449, -0.137266, -0.046348,
		20.373405, 20.641556, 28.101322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964611, 20.665934, 28.810041>,  <19.680790, 20.737642, 28.133766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964611, 20.665934, 28.810041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.266579, 20.772352, 28.570269>,  <20.447760, 20.836203, 28.426405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.266579, 20.772352, 28.570269>,  <19.964611, 20.665934, 28.810041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.266579, 20.772352, 28.570269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252154, 0.726009, 0.639789,
		0.605406, -0.634137, 0.480992,
		0.754918, 0.266047, -0.599430,
		20.493053, 20.852167, 28.390440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619780, 20.623344, 29.220455>,  <19.964611, 20.665934, 28.810041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.619780, 20.623344, 29.220455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.676088, 20.863285, 28.905403>,  <20.709873, 21.007250, 28.716372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.676088, 20.863285, 28.905403>,  <20.619780, 20.623344, 29.220455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.676088, 20.863285, 28.905403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312402, 0.727996, 0.610267,
		0.939462, -0.331966, -0.084915,
		0.140770, 0.599851, -0.787631,
		20.718319, 21.043240, 28.669113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.159170, 20.999155, 29.347750>,  <20.619780, 20.623344, 29.220455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.159170, 20.999155, 29.347750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.054035, 21.234888, 29.042173>,  <20.990955, 21.376328, 28.858828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.054035, 21.234888, 29.042173>,  <21.159170, 20.999155, 29.347750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.054035, 21.234888, 29.042173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192675, 0.807890, 0.556947,
		0.945406, -0.000806, -0.325893,
		-0.262836, 0.589333, -0.763940,
		20.975183, 21.411688, 28.812992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.563211, 21.572760, 29.349339>,  <21.159170, 20.999155, 29.347750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.563211, 21.572760, 29.349339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.266426, 21.718065, 29.123938>,  <21.088356, 21.805248, 28.988697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.266426, 21.718065, 29.123938>,  <21.563211, 21.572760, 29.349339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.266426, 21.718065, 29.123938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046297, 0.866246, 0.497469,
		0.668842, 0.343014, -0.659539,
		-0.741961, 0.363263, -0.563501,
		21.043839, 21.827044, 28.954887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.762951, 22.227654, 29.106558>,  <21.563211, 21.572760, 29.349339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.762951, 22.227654, 29.106558> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.363461, 22.247450, 29.110521>,  <21.123766, 22.259329, 29.112900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.363461, 22.247450, 29.110521>,  <21.762951, 22.227654, 29.106558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.363461, 22.247450, 29.110521> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046573, 0.827916, 0.558916,
		0.019460, 0.558665, -0.829166,
		-0.998725, 0.049493, 0.009908,
		21.063843, 22.262299, 29.113493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.655531, 22.920237, 29.021997>,  <21.762951, 22.227654, 29.106558>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.655531, 22.920237, 29.021997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.308744, 22.778116, 29.161787>,  <21.100672, 22.692844, 29.245661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.308744, 22.778116, 29.161787>,  <21.655531, 22.920237, 29.021997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.308744, 22.778116, 29.161787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057701, 0.768081, 0.637748,
		-0.495016, 0.532741, -0.686401,
		-0.866966, -0.355301, 0.349473,
		21.048655, 22.671526, 29.266628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.324326, 23.489283, 29.066111>,  <21.655531, 22.920237, 29.021997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.324326, 23.489283, 29.066111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.123972, 23.230074, 29.295609>,  <21.003759, 23.074549, 29.433308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.123972, 23.230074, 29.295609>,  <21.324326, 23.489283, 29.066111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.123972, 23.230074, 29.295609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043628, 0.643150, 0.764496,
		-0.864413, 0.407956, -0.293873,
		-0.500885, -0.648020, 0.573746,
		20.973707, 23.035667, 29.467731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.775511, 23.852005, 29.438009>,  <21.324326, 23.489283, 29.066111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.775511, 23.852005, 29.438009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.812794, 23.532656, 29.675972>,  <20.835163, 23.341047, 29.818750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.812794, 23.532656, 29.675972>,  <20.775511, 23.852005, 29.438009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.812794, 23.532656, 29.675972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186189, 0.600944, 0.777303,
		-0.978083, 0.038314, 0.204661,
		0.093208, -0.798372, 0.594907,
		20.840755, 23.293144, 29.854445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.402985, 23.948097, 30.037006>,  <20.775511, 23.852005, 29.438009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.402985, 23.948097, 30.037006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.670845, 23.679247, 30.163382>,  <20.831562, 23.517937, 30.239206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.670845, 23.679247, 30.163382>,  <20.402985, 23.948097, 30.037006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.670845, 23.679247, 30.163382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096570, 0.500596, 0.860278,
		-0.736370, -0.545576, 0.400132,
		0.669652, -0.672123, 0.315937,
		20.871740, 23.477610, 30.258163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.735641, 23.470266, 30.048704>,  <20.402985, 23.948097, 30.037006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.735641, 23.470266, 30.048704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.605263, 23.847082, 30.080505>,  <19.527037, 24.073172, 30.099586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.605263, 23.847082, 30.080505>,  <19.735641, 23.470266, 30.048704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.605263, 23.847082, 30.080505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615912, -0.147798, -0.773827,
		-0.717225, -0.301192, 0.628388,
		-0.325945, 0.942040, 0.079503,
		19.507479, 24.129694, 30.104357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.063478, 23.498396, 29.871954>,  <19.735641, 23.470266, 30.048704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.063478, 23.498396, 29.871954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.120874, 23.893658, 29.850178>,  <19.155312, 24.130814, 29.837112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.120874, 23.893658, 29.850178>,  <19.063478, 23.498396, 29.871954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.120874, 23.893658, 29.850178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687704, 0.059999, -0.723507,
		-0.711670, 0.141255, 0.688167,
		0.143488, 0.988153, -0.054442,
		19.163921, 24.190104, 29.833845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.444649, 23.737827, 29.839342>,  <19.063478, 23.498396, 29.871954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.444649, 23.737827, 29.839342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.686220, 24.010506, 29.674147>,  <18.831163, 24.174112, 29.575029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.686220, 24.010506, 29.674147>,  <18.444649, 23.737827, 29.839342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686220, 24.010506, 29.674147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592405, 0.037273, -0.804778,
		-0.533221, 0.730686, 0.426350,
		0.603931, 0.681696, -0.412987,
		18.867399, 24.215015, 29.550251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.008974, 24.211061, 29.535843>,  <18.444649, 23.737827, 29.839342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.008974, 24.211061, 29.535843> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.362942, 24.270594, 29.359314>,  <18.575323, 24.306313, 29.253397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.362942, 24.270594, 29.359314>,  <18.008974, 24.211061, 29.535843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362942, 24.270594, 29.359314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461579, 0.153835, -0.873659,
		-0.062135, 0.976824, 0.204828,
		0.884920, 0.148829, -0.441323,
		18.628418, 24.315243, 29.226917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973881, 24.767157, 29.067741>,  <18.008974, 24.211061, 29.535843>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973881, 24.767157, 29.067741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.289913, 24.593050, 28.895084>,  <18.479532, 24.488586, 28.791491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.289913, 24.593050, 28.895084>,  <17.973881, 24.767157, 29.067741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.289913, 24.593050, 28.895084> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409100, 0.149994, -0.900077,
		0.456516, 0.887720, -0.059560,
		0.790082, -0.435265, -0.431641,
		18.526937, 24.462471, 28.765593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.899801, 25.033611, 28.456015>,  <17.973881, 24.767157, 29.067741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.899801, 25.033611, 28.456015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.167547, 24.741365, 28.402121>,  <18.328196, 24.566017, 28.369783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.167547, 24.741365, 28.402121>,  <17.899801, 25.033611, 28.456015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.167547, 24.741365, 28.402121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267070, -0.067401, -0.961317,
		0.693271, 0.679456, -0.240241,
		0.669365, -0.730614, -0.134735,
		18.368357, 24.522181, 28.361700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.299215, 25.210091, 27.871658>,  <17.899801, 25.033611, 28.456015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.299215, 25.210091, 27.871658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.320015, 24.812162, 27.906582>,  <18.332495, 24.573404, 27.927536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.320015, 24.812162, 27.906582>,  <18.299215, 25.210091, 27.871658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.320015, 24.812162, 27.906582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381908, -0.100594, -0.918710,
		0.922736, 0.014429, -0.385162,
		0.052001, -0.994823, 0.087311,
		18.335615, 24.513716, 27.932775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.704876, 25.546015, 27.425421>,  <18.299215, 25.210091, 27.871658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.704876, 25.546015, 27.425421> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.761459, 25.803556, 27.124638>,  <18.795410, 25.958080, 26.944168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.761459, 25.803556, 27.124638>,  <18.704876, 25.546015, 27.425421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.761459, 25.803556, 27.124638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686752, 0.483265, 0.542980,
		0.712994, -0.593220, -0.373804,
		0.141460, 0.643852, -0.751960,
		18.803898, 25.996712, 26.899050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.403482, 25.562624, 27.422443>,  <18.704876, 25.546015, 27.425421>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.403482, 25.562624, 27.422443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.287876, 25.892902, 27.228661>,  <19.218512, 26.091068, 27.112391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.287876, 25.892902, 27.228661>,  <19.403482, 25.562624, 27.422443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.287876, 25.892902, 27.228661> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587371, 0.552552, 0.591339,
		0.755953, -0.113651, -0.644685,
		-0.289015, 0.825694, -0.484458,
		19.201172, 26.140610, 27.083323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.036615, 25.939283, 27.165226>,  <19.403482, 25.562624, 27.422443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.036615, 25.939283, 27.165226> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.741144, 26.196140, 27.247208>,  <19.563862, 26.350254, 27.296396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.741144, 26.196140, 27.247208>,  <20.036615, 25.939283, 27.165226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.741144, 26.196140, 27.247208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659962, 0.627129, 0.413715,
		0.137131, 0.440865, -0.887036,
		-0.738678, 0.642143, 0.204955,
		19.519541, 26.388783, 27.308695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.445490, 26.494581, 27.386536>,  <20.036615, 25.939283, 27.165226>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.445490, 26.494581, 27.386536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.070400, 26.608154, 27.466595>,  <19.845346, 26.676298, 27.514629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.070400, 26.608154, 27.466595>,  <20.445490, 26.494581, 27.386536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.070400, 26.608154, 27.466595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347018, 0.739136, 0.577284,
		0.015976, 0.610786, -0.791634,
		-0.937723, 0.283933, 0.200146,
		19.789083, 26.693335, 27.526638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.436628, 27.273050, 27.362307>,  <20.445490, 26.494581, 27.386536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.436628, 27.273050, 27.362307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.136494, 27.132669, 27.586388>,  <19.956413, 27.048441, 27.720837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.136494, 27.132669, 27.586388>,  <20.436628, 27.273050, 27.362307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.136494, 27.132669, 27.586388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274980, 0.604938, 0.747286,
		-0.601149, 0.714761, -0.357404,
		-0.750338, -0.350951, 0.560202,
		19.911392, 27.027384, 27.754448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.241642, 27.775610, 27.742842>,  <20.436628, 27.273050, 27.362307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.241642, 27.775610, 27.742842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.073587, 27.489038, 27.965630>,  <19.972755, 27.317095, 28.099302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.073587, 27.489038, 27.965630>,  <20.241642, 27.775610, 27.742842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.073587, 27.489038, 27.965630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346121, 0.440853, 0.828160,
		-0.838860, 0.540717, 0.062754,
		-0.420135, -0.716431, 0.556968,
		19.947546, 27.274109, 28.132719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.080307, 28.075911, 28.474785>,  <20.241642, 27.775610, 27.742842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.080307, 28.075911, 28.474785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.060896, 27.682249, 28.543001>,  <20.049250, 27.446053, 28.583931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.060896, 27.682249, 28.543001>,  <20.080307, 28.075911, 28.474785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.060896, 27.682249, 28.543001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247882, 0.153534, 0.956547,
		-0.967574, 0.088692, 0.236504,
		-0.048527, -0.984155, 0.170541,
		20.046337, 27.387003, 28.594164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.837130, 28.071138, 29.131987>,  <20.080307, 28.075911, 28.474785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.837130, 28.071138, 29.131987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.026058, 27.720869, 29.091761>,  <20.139416, 27.510708, 29.067625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.026058, 27.720869, 29.091761>,  <19.837130, 28.071138, 29.131987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.026058, 27.720869, 29.091761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233713, 0.014408, 0.972199,
		-0.849877, -0.482693, 0.211461,
		0.472320, -0.875671, -0.100566,
		20.167755, 27.458168, 29.061590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767820, 27.713655, 29.862516>,  <19.837130, 28.071138, 29.131987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.767820, 27.713655, 29.862516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.047640, 27.510532, 29.661415>,  <20.215532, 27.388659, 29.540754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.047640, 27.510532, 29.661415>,  <19.767820, 27.713655, 29.862516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.047640, 27.510532, 29.661415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517146, -0.125769, 0.846606,
		-0.493144, -0.852241, 0.174629,
		0.699549, -0.507807, -0.502755,
		20.257505, 27.358191, 29.510588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.236746, 18.823233, 16.921738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.612481, 18.806425, 16.785576>,  <14.837922, 18.796341, 16.703878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.612481, 18.806425, 16.785576>,  <14.236746, 18.823233, 16.921738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.612481, 18.806425, 16.785576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339206, 0.260820, 0.903832,
		0.050804, -0.964473, 0.259252,
		0.939339, -0.042021, -0.340406,
		14.894283, 18.793819, 16.683455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.536669, 18.339329, 17.283869>,  <14.236746, 18.823233, 16.921738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.536669, 18.339329, 17.283869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.816725, 18.593687, 17.153980>,  <14.984758, 18.746302, 17.076048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.816725, 18.593687, 17.153980>,  <14.536669, 18.339329, 17.283869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.816725, 18.593687, 17.153980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128376, 0.335265, 0.933337,
		0.702372, -0.695151, 0.153098,
		0.700139, 0.635895, -0.324721,
		15.026767, 18.784456, 17.056564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.022174, 18.200096, 17.794271>,  <14.536669, 18.339329, 17.283869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.022174, 18.200096, 17.794271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.135076, 18.533754, 17.604731>,  <15.202817, 18.733950, 17.491007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.135076, 18.533754, 17.604731>,  <15.022174, 18.200096, 17.794271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.135076, 18.533754, 17.604731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249748, 0.413011, 0.875813,
		0.926260, -0.365545, -0.091752,
		0.282254, 0.834146, -0.473850,
		15.219752, 18.783998, 17.462576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639313, 18.459715, 18.065681>,  <15.022174, 18.200096, 17.794271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639313, 18.459715, 18.065681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.474793, 18.787821, 17.906683>,  <15.376081, 18.984684, 17.811285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.474793, 18.787821, 17.906683>,  <15.639313, 18.459715, 18.065681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.474793, 18.787821, 17.906683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268316, 0.525719, 0.807233,
		0.871114, 0.225360, -0.436317,
		-0.411299, 0.820263, -0.397494,
		15.351404, 19.033899, 17.787436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.070856, 18.913155, 18.156254>,  <15.639313, 18.459715, 18.065681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.070856, 18.913155, 18.156254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729789, 19.115097, 18.102474>,  <15.525148, 19.236263, 18.070206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.729789, 19.115097, 18.102474>,  <16.070856, 18.913155, 18.156254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.729789, 19.115097, 18.102474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209204, 0.565742, 0.797602,
		0.478740, 0.651962, -0.588008,
		-0.852667, 0.504858, -0.134451,
		15.473989, 19.266554, 18.062140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281347, 19.512682, 18.263178>,  <16.070856, 18.913155, 18.156254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.281347, 19.512682, 18.263178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.887642, 19.580793, 18.282057>,  <15.651419, 19.621660, 18.293385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.887642, 19.580793, 18.282057>,  <16.281347, 19.512682, 18.263178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.887642, 19.580793, 18.282057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131167, 0.525110, 0.840865,
		0.118398, 0.833825, -0.539183,
		-0.984265, 0.170279, 0.047198,
		15.592362, 19.631878, 18.296217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.161140, 20.291752, 18.363760>,  <16.281347, 19.512682, 18.263178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.161140, 20.291752, 18.363760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.829297, 20.107830, 18.490459>,  <15.630191, 19.997477, 18.566479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.829297, 20.107830, 18.490459>,  <16.161140, 20.291752, 18.363760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.829297, 20.107830, 18.490459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041372, 0.515118, 0.856120,
		-0.556810, 0.723350, -0.408324,
		-0.829609, -0.459803, 0.316749,
		15.580415, 19.969889, 18.585484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.814113, 20.926085, 18.580658>,  <16.161140, 20.291752, 18.363760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.814113, 20.926085, 18.580658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.572830, 20.643801, 18.729315>,  <15.428061, 20.474430, 18.818508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.572830, 20.643801, 18.729315>,  <15.814113, 20.926085, 18.580658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.572830, 20.643801, 18.729315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138084, 0.551324, 0.822784,
		-0.785541, 0.444991, -0.430010,
		-0.603207, -0.705708, 0.371642,
		15.391869, 20.432089, 18.840807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.111258, 21.148035, 18.699123>,  <15.814113, 20.926085, 18.580658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.111258, 21.148035, 18.699123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165926, 20.855761, 18.966681>,  <15.198727, 20.680395, 19.127214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165926, 20.855761, 18.966681>,  <15.111258, 21.148035, 18.699123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165926, 20.855761, 18.966681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093806, 0.662649, 0.743032,
		-0.986165, -0.164296, 0.022021,
		0.136670, -0.730687, 0.668893,
		15.206927, 20.636555, 19.167349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572767, 21.245163, 19.211306>,  <15.111258, 21.148035, 18.699123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.572767, 21.245163, 19.211306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872645, 21.036495, 19.374189>,  <15.052572, 20.911295, 19.471920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.872645, 21.036495, 19.374189>,  <14.572767, 21.245163, 19.211306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.872645, 21.036495, 19.374189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064530, 0.554765, 0.829501,
		-0.658629, -0.648151, 0.382242,
		0.749696, -0.521667, 0.407209,
		15.097554, 20.879995, 19.496351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.409422, 21.005808, 19.916325>,  <14.572767, 21.245163, 19.211306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.409422, 21.005808, 19.916325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.807902, 20.986412, 19.887388>,  <15.046990, 20.974775, 19.870028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.807902, 20.986412, 19.887388>,  <14.409422, 21.005808, 19.916325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.807902, 20.986412, 19.887388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086324, 0.440079, 0.893800,
		-0.011505, -0.896649, 0.442593,
		0.996200, -0.048490, -0.072339,
		15.106763, 20.971865, 19.865686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.710230, 20.862303, 20.615171>,  <14.409422, 21.005808, 19.916325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.710230, 20.862303, 20.615171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.003371, 21.024069, 20.396311>,  <15.179255, 21.121128, 20.264994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.003371, 21.024069, 20.396311>,  <14.710230, 20.862303, 20.615171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.003371, 21.024069, 20.396311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301231, 0.528212, 0.793884,
		0.610071, -0.746619, 0.265279,
		0.732853, 0.404416, -0.547152,
		15.223227, 21.145393, 20.232164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.892363, 20.253685, 20.940258>,  <14.710230, 20.862303, 20.615171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.892363, 20.253685, 20.940258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.646087, 20.118324, 21.224909>,  <14.498322, 20.037107, 21.395699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.646087, 20.118324, 21.224909>,  <14.892363, 20.253685, 20.940258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.646087, 20.118324, 21.224909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388232, -0.655607, -0.647654,
		0.685714, -0.675029, 0.272272,
		-0.615689, -0.338400, 0.711627,
		14.461380, 20.016804, 21.438396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.946699, 19.561171, 20.821276>,  <14.892363, 20.253685, 20.940258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.946699, 19.561171, 20.821276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.656688, 19.536966, 21.095697>,  <14.482681, 19.522444, 21.260351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.656688, 19.536966, 21.095697>,  <14.946699, 19.561171, 20.821276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.656688, 19.536966, 21.095697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346827, -0.828527, -0.439606,
		0.595017, -0.556670, 0.579718,
		-0.725028, -0.060512, 0.686056,
		14.439179, 19.518812, 21.301514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.898177, 18.889135, 21.172438>,  <14.946699, 19.561171, 20.821276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.898177, 18.889135, 21.172438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.538241, 19.062893, 21.156481>,  <14.322280, 19.167149, 21.146908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.538241, 19.062893, 21.156481>,  <14.898177, 18.889135, 21.172438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.538241, 19.062893, 21.156481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379822, -0.825185, -0.418098,
		-0.214536, -0.361070, 0.907526,
		-0.899839, 0.434395, -0.039890,
		14.268290, 19.193211, 21.144514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432313, 18.453901, 21.610767>,  <14.898177, 18.889135, 21.172438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432313, 18.453901, 21.610767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.189607, 18.643137, 21.355263>,  <14.043983, 18.756680, 21.201960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.189607, 18.643137, 21.355263>,  <14.432313, 18.453901, 21.610767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.189607, 18.643137, 21.355263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225688, -0.873061, -0.432238,
		-0.762167, -0.118106, 0.636516,
		-0.606767, 0.473091, -0.638763,
		14.007577, 18.785065, 21.163633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.965434, 17.926262, 21.446875>,  <14.432313, 18.453901, 21.610767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.965434, 17.926262, 21.446875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.868764, 18.221226, 21.194584>,  <13.810761, 18.398205, 21.043209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.868764, 18.221226, 21.194584>,  <13.965434, 17.926262, 21.446875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.868764, 18.221226, 21.194584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499183, -0.651872, -0.570858,
		-0.832112, 0.176887, 0.525644,
		-0.241675, 0.737410, -0.630729,
		13.796261, 18.442450, 21.005365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.210889, 17.975533, 21.303799>,  <13.965434, 17.926262, 21.446875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.210889, 17.975533, 21.303799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.388766, 18.138742, 20.984859>,  <13.495493, 18.236668, 20.793495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.388766, 18.138742, 20.984859>,  <13.210889, 17.975533, 21.303799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.388766, 18.138742, 20.984859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399749, -0.706222, -0.584338,
		-0.801529, 0.578590, -0.150945,
		0.444693, 0.408024, -0.797349,
		13.522174, 18.261150, 20.745655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.693009, 17.874895, 20.901686>,  <13.210889, 17.975533, 21.303799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.693009, 17.874895, 20.901686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.007076, 17.924809, 20.659052>,  <13.195517, 17.954756, 20.513472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.007076, 17.924809, 20.659052>,  <12.693009, 17.874895, 20.901686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.007076, 17.924809, 20.659052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441218, -0.574600, -0.689320,
		-0.434557, 0.808866, -0.396100,
		0.785167, 0.124782, -0.606583,
		13.242626, 17.962244, 20.477077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.375535, 17.829962, 20.219181>,  <12.693009, 17.874895, 20.901686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.375535, 17.829962, 20.219181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.768355, 17.839123, 20.144293>,  <13.004047, 17.844620, 20.099360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.768355, 17.839123, 20.144293>,  <12.375535, 17.829962, 20.219181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.768355, 17.839123, 20.144293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157541, -0.446203, -0.880956,
		-0.103715, 0.894638, -0.434586,
		0.982051, 0.022903, -0.187220,
		13.062971, 17.845993, 20.088127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.485681, 18.223644, 19.583817>,  <12.375535, 17.829962, 20.219181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.485681, 18.223644, 19.583817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.797903, 17.976864, 19.624018>,  <12.985237, 17.828794, 19.648138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.797903, 17.976864, 19.624018>,  <12.485681, 18.223644, 19.583817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.797903, 17.976864, 19.624018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048247, -0.219764, -0.974359,
		0.623220, 0.755694, -0.201304,
		0.780557, -0.616953, 0.100502,
		13.032070, 17.791779, 19.654169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.785096, 18.166937, 18.899963>,  <12.485681, 18.223644, 19.583817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.785096, 18.166937, 18.899963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.895557, 17.829754, 19.084641>,  <12.961834, 17.627443, 19.195446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.895557, 17.829754, 19.084641>,  <12.785096, 18.166937, 18.899963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.895557, 17.829754, 19.084641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299132, -0.531896, -0.792216,
		0.913378, 0.080665, -0.399041,
		0.276153, -0.842958, 0.461693,
		12.978403, 17.576866, 19.223148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.067114, 17.709103, 18.366652>,  <12.785096, 18.166937, 18.899963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.067114, 17.709103, 18.366652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.055050, 17.440285, 18.662609>,  <13.047812, 17.278994, 18.840183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.055050, 17.440285, 18.662609>,  <13.067114, 17.709103, 18.366652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.055050, 17.440285, 18.662609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051492, -0.738203, -0.672610,
		0.998218, -0.058384, -0.012342,
		-0.030159, -0.672047, 0.739894,
		13.046002, 17.238670, 18.884577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.549363, 17.188761, 18.162806>,  <13.067114, 17.709103, 18.366652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.549363, 17.188761, 18.162806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.312027, 17.003056, 18.425837>,  <13.169625, 16.891632, 18.583654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.312027, 17.003056, 18.425837>,  <13.549363, 17.188761, 18.162806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.312027, 17.003056, 18.425837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043217, -0.797363, -0.601951,
		0.803790, -0.385581, 0.453044,
		-0.593341, -0.464263, 0.657576,
		13.134025, 16.863777, 18.623110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.827116, 16.516273, 18.408335>,  <13.549363, 17.188761, 18.162806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.827116, 16.516273, 18.408335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.427875, 16.525938, 18.430975>,  <13.188330, 16.531736, 18.444559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.427875, 16.525938, 18.430975>,  <13.827116, 16.516273, 18.408335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.427875, 16.525938, 18.430975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053020, -0.804574, -0.591481,
		0.031250, -0.593361, 0.804330,
		-0.998104, 0.024162, 0.056603,
		13.128443, 16.533186, 18.447956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.436196, 15.779356, 18.751020>,  <13.827116, 16.516273, 18.408335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.436196, 15.779356, 18.751020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.262506, 15.992712, 18.460657>,  <13.158291, 16.120726, 18.286440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.262506, 15.992712, 18.460657>,  <13.436196, 15.779356, 18.751020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.262506, 15.992712, 18.460657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026909, -0.797804, -0.602316,
		-0.900402, -0.281074, 0.332073,
		-0.434225, 0.533391, -0.725908,
		13.132237, 16.152729, 18.242886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.939968, 16.049404, 19.418488>,  <13.436196, 15.779356, 18.751020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.939968, 16.049404, 19.418488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.987248, 15.655570, 19.470053>,  <14.015616, 15.419270, 19.500992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.987248, 15.655570, 19.470053>,  <13.939968, 16.049404, 19.418488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.987248, 15.655570, 19.470053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379064, 0.164732, 0.910590,
		-0.917790, -0.058765, 0.392693,
		0.118200, -0.984586, 0.128914,
		14.022709, 15.360194, 19.508726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.618897, 15.744403, 20.082357>,  <13.939968, 16.049404, 19.418488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.618897, 15.744403, 20.082357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.934456, 15.529953, 19.962215>,  <14.123791, 15.401283, 19.890131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.934456, 15.529953, 19.962215>,  <13.618897, 15.744403, 20.082357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.934456, 15.529953, 19.962215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359849, 0.006820, 0.932986,
		-0.498149, -0.844111, 0.198304,
		0.788895, -0.536125, -0.300355,
		14.171124, 15.369116, 19.872108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.901457, 15.269607, 20.715292>,  <13.618897, 15.744403, 20.082357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.901457, 15.269607, 20.715292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.206919, 15.267906, 20.457048>,  <14.390196, 15.266886, 20.302103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.206919, 15.267906, 20.457048>,  <13.901457, 15.269607, 20.715292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.206919, 15.267906, 20.457048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642794, -0.088516, 0.760908,
		-0.060382, -0.996065, -0.064863,
		0.763656, -0.004251, -0.645610,
		14.436015, 15.266631, 20.263365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.396470, 14.637460, 20.835119>,  <13.901457, 15.269607, 20.715292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.396470, 14.637460, 20.835119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.608130, 14.917591, 20.643478>,  <14.735126, 15.085670, 20.528494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.608130, 14.917591, 20.643478>,  <14.396470, 14.637460, 20.835119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.608130, 14.917591, 20.643478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764686, -0.148857, 0.626974,
		0.367769, -0.698128, -0.614299,
		0.529151, 0.700327, -0.479104,
		14.766876, 15.127689, 20.499748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.985810, 14.306024, 20.696692>,  <14.396470, 14.637460, 20.835119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.985810, 14.306024, 20.696692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.069127, 14.697247, 20.698490>,  <15.119117, 14.931980, 20.699570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.069127, 14.697247, 20.698490>,  <14.985810, 14.306024, 20.696692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.069127, 14.697247, 20.698490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768951, -0.166597, 0.617220,
		0.604425, -0.125105, -0.786778,
		0.208292, 0.978056, 0.004495,
		15.131615, 14.990664, 20.699839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680541, 14.443127, 20.757854>,  <14.985810, 14.306024, 20.696692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680541, 14.443127, 20.757854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.618355, 14.834262, 20.813942>,  <15.581043, 15.068943, 20.847595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.618355, 14.834262, 20.813942>,  <15.680541, 14.443127, 20.757854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.618355, 14.834262, 20.813942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856408, 0.062670, 0.512482,
		0.492337, 0.199758, -0.847172,
		-0.155465, 0.977839, 0.140219,
		15.571715, 15.127614, 20.856009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.356876, 14.841352, 20.613773>,  <15.680541, 14.443127, 20.757854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.356876, 14.841352, 20.613773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.137936, 15.054545, 20.871868>,  <16.006571, 15.182462, 21.026726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.137936, 15.054545, 20.871868>,  <16.356876, 14.841352, 20.613773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137936, 15.054545, 20.871868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827342, 0.228406, 0.513162,
		0.126131, 0.814714, -0.565978,
		-0.547353, 0.532984, 0.645239,
		15.973730, 15.214440, 21.065439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.765795, 15.350158, 20.804319>,  <16.356876, 14.841352, 20.613773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.765795, 15.350158, 20.804319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488043, 15.350922, 21.092161>,  <16.321392, 15.351379, 21.264866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.488043, 15.350922, 21.092161>,  <16.765795, 15.350158, 20.804319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488043, 15.350922, 21.092161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711564, 0.150939, 0.686218,
		-0.107307, 0.988541, -0.106167,
		-0.694379, 0.001909, 0.719607,
		16.279730, 15.351494, 21.308043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910450, 15.876101, 21.128941>,  <16.765795, 15.350158, 20.804319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910450, 15.876101, 21.128941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.652178, 15.723692, 21.393642>,  <16.497213, 15.632247, 21.552464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.652178, 15.723692, 21.393642>,  <16.910450, 15.876101, 21.128941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.652178, 15.723692, 21.393642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565529, 0.343711, 0.749693,
		-0.513101, 0.858304, -0.006449,
		-0.645681, -0.381021, 0.661754,
		16.458473, 15.609385, 21.592169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.661493, 16.398336, 21.586884>,  <16.910450, 15.876101, 21.128941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.661493, 16.398336, 21.586884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.599480, 16.056053, 21.784357>,  <16.562271, 15.850683, 21.902842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.599480, 16.056053, 21.784357>,  <16.661493, 16.398336, 21.586884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.599480, 16.056053, 21.784357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377662, 0.410433, 0.830010,
		-0.912872, 0.315127, 0.259537,
		-0.155036, -0.855710, 0.493685,
		16.552969, 15.799340, 21.932463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.325029, 16.478907, 22.235500>,  <16.661493, 16.398336, 21.586884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.325029, 16.478907, 22.235500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.534611, 16.140421, 22.274263>,  <16.660360, 15.937329, 22.297522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.534611, 16.140421, 22.274263>,  <16.325029, 16.478907, 22.235500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.534611, 16.140421, 22.274263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386351, 0.337519, 0.858379,
		-0.759082, -0.412311, 0.503781,
		0.523954, -0.846216, 0.096907,
		16.691797, 15.886557, 22.303335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.505327, 16.511261, 22.929379>,  <16.325029, 16.478907, 22.235500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.505327, 16.511261, 22.929379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722937, 16.201111, 22.801109>,  <16.853502, 16.015020, 22.724148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.722937, 16.201111, 22.801109>,  <16.505327, 16.511261, 22.929379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722937, 16.201111, 22.801109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534897, 0.026031, 0.844516,
		-0.646469, -0.630965, 0.428908,
		0.544025, -0.775375, -0.320673,
		16.886145, 15.968498, 22.704906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.750198, 16.180401, 23.524645>,  <16.505327, 16.511261, 22.929379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.750198, 16.180401, 23.524645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.008089, 16.051636, 23.247314>,  <17.162823, 15.974377, 23.080917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.008089, 16.051636, 23.247314>,  <16.750198, 16.180401, 23.524645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008089, 16.051636, 23.247314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763125, 0.218434, 0.608216,
		-0.044348, -0.921226, 0.386491,
		0.644727, -0.321914, -0.693324,
		17.201508, 15.955062, 23.039316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.262075, 15.821446, 23.875364>,  <16.750198, 16.180401, 23.524645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.262075, 15.821446, 23.875364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.429609, 15.880096, 23.516905>,  <17.530128, 15.915286, 23.301830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.429609, 15.880096, 23.516905>,  <17.262075, 15.821446, 23.875364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.429609, 15.880096, 23.516905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896176, 0.092418, 0.433968,
		0.146451, -0.984865, -0.092694,
		0.418833, 0.146625, -0.896147,
		17.555260, 15.924084, 23.248060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787109, 15.340799, 23.830019>,  <17.262075, 15.821446, 23.875364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.787109, 15.340799, 23.830019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885855, 15.642260, 23.586357>,  <17.945103, 15.823135, 23.440161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.885855, 15.642260, 23.586357>,  <17.787109, 15.340799, 23.830019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885855, 15.642260, 23.586357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797174, 0.199468, 0.569847,
		0.550972, -0.626277, -0.551549,
		0.246866, 0.753651, -0.609153,
		17.959915, 15.868355, 23.403610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.510979, 15.272967, 23.857849>,  <17.787109, 15.340799, 23.830019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.510979, 15.272967, 23.857849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.433022, 15.638412, 23.715115>,  <18.386248, 15.857678, 23.629475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.433022, 15.638412, 23.715115>,  <18.510979, 15.272967, 23.857849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.433022, 15.638412, 23.715115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696822, 0.385004, 0.605153,
		0.690258, -0.130712, -0.711659,
		-0.194891, 0.913612, -0.356835,
		18.374554, 15.912495, 23.608065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.232670, 15.650052, 23.861177>,  <18.510979, 15.272967, 23.857849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.232670, 15.650052, 23.861177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.977032, 15.953329, 23.809483>,  <18.823648, 16.135296, 23.778465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.977032, 15.953329, 23.809483>,  <19.232670, 15.650052, 23.861177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.977032, 15.953329, 23.809483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588936, 0.590482, 0.551802,
		0.494683, 0.276543, -0.823901,
		-0.639095, 0.758192, -0.129236,
		18.785303, 16.180786, 23.770712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.668964, 16.253378, 23.789095>,  <19.232670, 15.650052, 23.861177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.668964, 16.253378, 23.789095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.306608, 16.389845, 23.889465>,  <19.089193, 16.471725, 23.949688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.306608, 16.389845, 23.889465>,  <19.668964, 16.253378, 23.789095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.306608, 16.389845, 23.889465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408930, 0.550525, 0.727804,
		0.110163, 0.761923, -0.638230,
		-0.905892, 0.341168, 0.250926,
		19.034840, 16.492195, 23.964743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.777990, 17.007181, 23.894482>,  <19.668964, 16.253378, 23.789095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.777990, 17.007181, 23.894482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.432377, 16.907715, 24.069574>,  <19.225008, 16.848036, 24.174629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.432377, 16.907715, 24.069574>,  <19.777990, 17.007181, 23.894482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.432377, 16.907715, 24.069574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205371, 0.619755, 0.757447,
		-0.459636, 0.744359, -0.484422,
		-0.864035, -0.248664, 0.437732,
		19.173166, 16.833117, 24.200893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.358620, 17.575012, 24.091908>,  <19.777990, 17.007181, 23.894482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.358620, 17.575012, 24.091908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248682, 17.288227, 24.348166>,  <19.182720, 17.116156, 24.501921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248682, 17.288227, 24.348166>,  <19.358620, 17.575012, 24.091908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.248682, 17.288227, 24.348166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231941, 0.597189, 0.767834,
		-0.933094, 0.359625, 0.002160,
		-0.274843, -0.716962, 0.640646,
		19.166229, 17.073139, 24.540359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.092894, 17.919682, 24.591024>,  <19.358620, 17.575012, 24.091908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.092894, 17.919682, 24.591024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142382, 17.571745, 24.782051>,  <19.172075, 17.362984, 24.896667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.142382, 17.571745, 24.782051>,  <19.092894, 17.919682, 24.591024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.142382, 17.571745, 24.782051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249763, 0.493069, 0.833367,
		-0.960371, 0.016175, 0.278256,
		0.123720, -0.869840, 0.477569,
		19.179497, 17.310793, 24.925322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.673813, 17.874783, 25.261904>,  <19.092894, 17.919682, 24.591024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.673813, 17.874783, 25.261904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.992189, 17.637262, 25.309025>,  <19.183216, 17.494751, 25.337297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.992189, 17.637262, 25.309025>,  <18.673813, 17.874783, 25.261904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.992189, 17.637262, 25.309025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188041, 0.427481, 0.884252,
		-0.575428, -0.681661, 0.451908,
		0.795942, -0.593801, 0.117805,
		19.230972, 17.459122, 25.344366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.611423, 17.728804, 26.000706>,  <18.673813, 17.874783, 25.261904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.611423, 17.728804, 26.000706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.984190, 17.637827, 25.887711>,  <19.207850, 17.583241, 25.819914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.984190, 17.637827, 25.887711>,  <18.611423, 17.728804, 26.000706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.984190, 17.637827, 25.887711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355075, 0.413624, 0.838354,
		-0.073833, -0.881581, 0.466222,
		0.931918, -0.227442, -0.282488,
		19.263765, 17.569595, 25.802963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.083662, 17.787462, 26.656076>,  <18.611423, 17.728804, 26.000706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.083662, 17.787462, 26.656076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.363794, 17.776548, 26.370758>,  <19.531874, 17.770000, 26.199568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.363794, 17.776548, 26.370758>,  <19.083662, 17.787462, 26.656076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.363794, 17.776548, 26.370758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545844, 0.664406, 0.510508,
		0.459988, -0.746873, 0.480200,
		0.700332, -0.027287, -0.713295,
		19.573895, 17.768362, 26.156769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.567081, 17.763950, 27.032650>,  <19.083662, 17.787462, 26.656076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.567081, 17.763950, 27.032650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.697195, 17.923193, 26.689558>,  <19.775263, 18.018738, 26.483704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.697195, 17.923193, 26.689558>,  <19.567081, 17.763950, 27.032650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.697195, 17.923193, 26.689558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548984, 0.659042, 0.514082,
		0.769940, -0.638103, -0.004179,
		0.325283, 0.398107, -0.857731,
		19.794781, 18.042625, 26.432240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.282600, 17.902508, 27.065172>,  <19.567081, 17.763950, 27.032650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.282600, 17.902508, 27.065172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.176414, 18.163969, 26.781689>,  <20.112703, 18.320847, 26.611599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.176414, 18.163969, 26.781689>,  <20.282600, 17.902508, 27.065172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.176414, 18.163969, 26.781689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488817, 0.724847, 0.485443,
		0.831016, -0.217560, -0.511937,
		-0.265463, 0.653655, -0.708707,
		20.096775, 18.360065, 26.569077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.931240, 18.308113, 27.088194>,  <20.282600, 17.902508, 27.065172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.931240, 18.308113, 27.088194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.663790, 18.528254, 26.888174>,  <20.503319, 18.660337, 26.768162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.663790, 18.528254, 26.888174>,  <20.931240, 18.308113, 27.088194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.663790, 18.528254, 26.888174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269303, 0.806044, 0.527038,
		0.693118, 0.217727, -0.687155,
		-0.668628, 0.550353, -0.500049,
		20.463202, 18.693359, 26.738159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.368799, 18.855104, 26.854452>,  <20.931240, 18.308113, 27.088194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.368799, 18.855104, 26.854452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.990683, 18.977234, 26.900417>,  <20.763813, 19.050512, 26.927996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.990683, 18.977234, 26.900417>,  <21.368799, 18.855104, 26.854452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.990683, 18.977234, 26.900417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318985, 0.791221, 0.521745,
		0.068382, 0.529855, -0.845327,
		-0.945290, 0.305324, 0.114911,
		20.707096, 19.068830, 26.934891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
