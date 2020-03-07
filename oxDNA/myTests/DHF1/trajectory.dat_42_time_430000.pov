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
	<1.457732, 5.214744, 3.922616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.434513, 4.879158, 3.706182>,  <1.420581, 4.677807, 3.576323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.434513, 4.879158, 3.706182>,  <1.457732, 5.214744, 3.922616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.434513, 4.879158, 3.706182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509769, 0.441099, -0.738625,
		0.858350, -0.318703, 0.402073,
		-0.058048, -0.838963, -0.541083,
		1.417099, 4.627469, 3.543858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.679110, 5.631018, 3.929213>,  <1.457732, 5.214744, 3.922616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.679110, 5.631018, 3.929213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.695742, 5.245129, 3.825228>,  <0.705720, 5.013595, 3.762836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.695742, 5.245129, 3.825228>,  <0.679110, 5.631018, 3.929213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.695742, 5.245129, 3.825228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302515, -0.235820, 0.923512,
		-0.952237, -0.117040, 0.282038,
		0.041578, -0.964723, -0.259963,
		0.708215, 4.955712, 3.747239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.568081, 5.200748, 4.603035>,  <0.679110, 5.631018, 3.929213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.568081, 5.200748, 4.603035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.740486, 4.986549, 4.312527>,  <0.843929, 4.858030, 4.138222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.740486, 4.986549, 4.312527>,  <0.568081, 5.200748, 4.603035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.740486, 4.986549, 4.312527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589833, -0.441914, 0.675876,
		-0.682880, -0.719690, 0.125384,
		0.431012, -0.535498, -0.726271,
		0.869790, 4.825900, 4.094646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.725096, 4.612649, 4.916535>,  <0.568081, 5.200748, 4.603035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.725096, 4.612649, 4.916535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.963127, 4.589882, 4.595875>,  <1.105946, 4.576221, 4.403479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.963127, 4.589882, 4.595875>,  <0.725096, 4.612649, 4.916535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.963127, 4.589882, 4.595875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621110, -0.600432, 0.503691,
		-0.510006, -0.797648, -0.321950,
		0.595077, -0.056919, -0.801651,
		1.141650, 4.572806, 4.355380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.801670, 3.889433, 4.480610>,  <0.725096, 4.612649, 4.916535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.801670, 3.889433, 4.480610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.102224, 4.147503, 4.535994>,  <1.282557, 4.302345, 4.569223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.102224, 4.147503, 4.535994>,  <0.801670, 3.889433, 4.480610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.102224, 4.147503, 4.535994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426360, -0.634832, 0.644364,
		0.503625, -0.425132, -0.752080,
		0.751385, 0.645175, 0.138458,
		1.327640, 4.341055, 4.577531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.427177, 3.624270, 4.305247>,  <0.801670, 3.889433, 4.480610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.427177, 3.624270, 4.305247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.435431, 3.891148, 4.603086>,  <1.440383, 4.051274, 4.781790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.435431, 3.891148, 4.603086>,  <1.427177, 3.624270, 4.305247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.435431, 3.891148, 4.603086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475980, -0.661495, 0.579540,
		0.879214, 0.342455, -0.331220,
		0.020634, 0.667194, 0.744598,
		1.441621, 4.091306, 4.826466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.000346, 3.427685, 4.578232>,  <1.427177, 3.624270, 4.305247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.000346, 3.427685, 4.578232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.823431, 3.652714, 4.857630>,  <1.717282, 3.787731, 5.025269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.823431, 3.652714, 4.857630>,  <2.000346, 3.427685, 4.578232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.823431, 3.652714, 4.857630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396565, -0.575874, 0.714917,
		0.804437, 0.593197, 0.031605,
		-0.442287, 0.562572, 0.698495,
		1.690745, 3.821486, 5.067178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.511304, 3.582399, 5.210820>,  <2.000346, 3.427685, 4.578232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.511304, 3.582399, 5.210820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.123857, 3.536518, 5.299026>,  <1.891390, 3.508990, 5.351951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.123857, 3.536518, 5.299026>,  <2.511304, 3.582399, 5.210820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.123857, 3.536518, 5.299026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230003, -0.749988, 0.620175,
		0.094249, 0.651431, 0.752832,
		-0.968615, -0.114702, 0.220517,
		1.833273, 3.502107, 5.365181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.493736, 2.174415, 1.987337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.815903, 2.177597, 1.750275>,  <1.009203, 2.179506, 1.608037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.815903, 2.177597, 1.750275>,  <0.493736, 2.174415, 1.987337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.815903, 2.177597, 1.750275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578013, -0.231823, 0.782406,
		-0.131167, -0.972726, -0.191312,
		0.805416, 0.007955, -0.592656,
		1.057528, 2.179983, 1.572478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.758226, 1.436801, 1.840404>,  <0.493736, 2.174415, 1.987337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.758226, 1.436801, 1.840404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.039520, 1.720299, 1.817985>,  <1.208297, 1.890397, 1.804533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.039520, 1.720299, 1.817985>,  <0.758226, 1.436801, 1.840404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.039520, 1.720299, 1.817985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504288, -0.441689, 0.742027,
		0.501151, -0.550085, -0.668023,
		0.703236, 0.708744, -0.056048,
		1.250491, 1.932922, 1.801170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.379248, 1.134652, 1.791881>,  <0.758226, 1.436801, 1.840404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.379248, 1.134652, 1.791881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.490148, 1.486336, 1.946863>,  <1.556687, 1.697346, 2.039853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.490148, 1.486336, 1.946863>,  <1.379248, 1.134652, 1.791881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.490148, 1.486336, 1.946863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567761, -0.475245, 0.672153,
		0.775100, 0.033629, -0.630942,
		0.277248, 0.879211, 0.387456,
		1.573322, 1.750099, 2.063100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.148724, 1.426430, 1.691848>,  <1.379248, 1.134652, 1.791881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.148724, 1.426430, 1.691848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.988421, 1.533363, 2.042374>,  <1.892240, 1.597523, 2.252689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.988421, 1.533363, 2.042374>,  <2.148724, 1.426430, 1.691848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.988421, 1.533363, 2.042374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722503, -0.495933, 0.481706,
		0.563369, 0.826186, 0.005599,
		-0.400756, 0.267333, 0.876315,
		1.868195, 1.613563, 2.305268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.614246, 1.787193, 2.205071>,  <2.148724, 1.426430, 1.691848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.614246, 1.787193, 2.205071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.329712, 1.587517, 2.402984>,  <2.158991, 1.467711, 2.521731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.329712, 1.587517, 2.402984>,  <2.614246, 1.787193, 2.205071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.329712, 1.587517, 2.402984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695386, -0.397519, 0.598679,
		-0.102170, 0.769927, 0.629900,
		-0.711336, -0.499191, 0.494782,
		2.116311, 1.437760, 2.551418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.536446, 1.952631, 2.886630>,  <2.614246, 1.787193, 2.205071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.536446, 1.952631, 2.886630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.439994, 1.569099, 2.826624>,  <2.382123, 1.338981, 2.790620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.439994, 1.569099, 2.826624>,  <2.536446, 1.952631, 2.886630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.439994, 1.569099, 2.826624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716780, -0.280164, 0.638542,
		-0.654281, 0.046444, 0.754825,
		-0.241131, -0.958828, -0.150016,
		2.367655, 1.281451, 2.781619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.694567, 2.228924, 3.553725>,  <2.536446, 1.952631, 2.886630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.694567, 2.228924, 3.553725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.674088, 1.968208, 3.856393>,  <2.661800, 1.811779, 4.037994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.674088, 1.968208, 3.856393>,  <2.694567, 2.228924, 3.553725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.674088, 1.968208, 3.856393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317705, 0.728933, 0.606399,
		-0.946806, -0.209352, -0.244397,
		-0.051198, -0.651788, 0.756671,
		2.658728, 1.772672, 4.083394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.970378, 2.274703, 3.760333>,  <2.694567, 2.228924, 3.553725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.970378, 2.274703, 3.760333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.261529, 2.238060, 4.032157>,  <2.436220, 2.216074, 4.195251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.261529, 2.238060, 4.032157>,  <1.970378, 2.274703, 3.760333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.261529, 2.238060, 4.032157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469182, 0.656192, 0.590999,
		-0.500061, -0.749012, 0.434648,
		0.727878, -0.091607, 0.679560,
		2.479892, 2.210578, 4.236025>
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
