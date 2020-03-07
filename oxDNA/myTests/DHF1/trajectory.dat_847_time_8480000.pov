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
	<3.397181, 3.160941, 1.599074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.614845, 2.987183, 1.311967>,  <3.745444, 2.882928, 1.139703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.614845, 2.987183, 1.311967>,  <3.397181, 3.160941, 1.599074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.614845, 2.987183, 1.311967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302951, -0.899537, 0.314727,
		-0.782374, 0.046186, -0.621093,
		0.544160, -0.434396, -0.717767,
		3.778093, 2.856864, 1.096637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.998023, 2.741712, 1.278548>,  <3.397181, 3.160941, 1.599074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.998023, 2.741712, 1.278548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.347103, 2.583344, 1.164255>,  <3.556551, 2.488322, 1.095680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.347103, 2.583344, 1.164255>,  <2.998023, 2.741712, 1.278548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.347103, 2.583344, 1.164255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352764, -0.915877, 0.191640,
		-0.337569, -0.066449, -0.938952,
		0.872699, -0.395921, -0.285731,
		3.608913, 2.464567, 1.078536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.799729, 2.233588, 0.775447>,  <2.998023, 2.741712, 1.278548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.799729, 2.233588, 0.775447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.137882, 2.147789, 0.971128>,  <3.340774, 2.096309, 1.088536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.137882, 2.147789, 0.971128>,  <2.799729, 2.233588, 0.775447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.137882, 2.147789, 0.971128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428769, -0.818684, 0.381986,
		0.318565, -0.532679, -0.784072,
		0.845383, -0.214499, 0.489200,
		3.391497, 2.083439, 1.117888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.911412, 1.576735, 0.549951>,  <2.799729, 2.233588, 0.775447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.911412, 1.576735, 0.549951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.006832, 1.708733, 0.915289>,  <3.064084, 1.787931, 1.134492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.006832, 1.708733, 0.915289>,  <2.911412, 1.576735, 0.549951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.006832, 1.708733, 0.915289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576132, -0.709021, 0.406646,
		0.781771, -0.623212, 0.020984,
		0.238549, 0.329994, 0.913345,
		3.078397, 1.807731, 1.189292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.102299, 0.947730, 0.955336>,  <2.911412, 1.576735, 0.549951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.102299, 0.947730, 0.955336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.987740, 1.247070, 1.194650>,  <2.919004, 1.426675, 1.338239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.987740, 1.247070, 1.194650>,  <3.102299, 0.947730, 0.955336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.987740, 1.247070, 1.194650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710666, -0.584733, 0.391204,
		0.642595, -0.313141, 0.699295,
		-0.286399, 0.748351, 0.598286,
		2.901820, 1.471576, 1.374136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.953490, 0.669562, 1.573577>,  <3.102299, 0.947730, 0.955336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.953490, 0.669562, 1.573577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.763012, 1.018036, 1.621363>,  <2.648725, 1.227121, 1.650035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.763012, 1.018036, 1.621363>,  <2.953490, 0.669562, 1.573577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.763012, 1.018036, 1.621363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704256, -0.459200, 0.541442,
		0.526555, 0.173698, 0.832207,
		-0.476196, 0.871186, 0.119466,
		2.620153, 1.279392, 1.657203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.737788, 0.701272, 2.292461>,  <2.953490, 0.669562, 1.573577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.737788, 0.701272, 2.292461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.501991, 0.977753, 2.125254>,  <2.360513, 1.143641, 2.024929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.501991, 0.977753, 2.125254>,  <2.737788, 0.701272, 2.292461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.501991, 0.977753, 2.125254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779782, -0.351892, 0.517795,
		0.210803, 0.631199, 0.746424,
		-0.589493, 0.691201, -0.418018,
		2.325143, 1.185113, 1.999848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.438300, 1.020635, 2.876113>,  <2.737788, 0.701272, 2.292461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.438300, 1.020635, 2.876113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.207447, 1.110603, 2.562087>,  <2.068935, 1.164584, 2.373671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.207447, 1.110603, 2.562087>,  <2.438300, 1.020635, 2.876113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.207447, 1.110603, 2.562087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776671, -0.448273, 0.442531,
		-0.252389, 0.865137, 0.433403,
		-0.577133, 0.224921, -0.785066,
		2.034307, 1.178080, 2.326567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.004072, 0.309035, 2.366427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.605751, 0.307404, 2.329851>,  <1.366758, 0.306424, 2.307906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.605751, 0.307404, 2.329851>,  <2.004072, 0.309035, 2.366427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.605751, 0.307404, 2.329851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045657, 0.843707, -0.534859,
		0.079330, -0.536789, -0.839979,
		-0.995802, -0.004080, -0.091440,
		1.307010, 0.306180, 2.302419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.791900, 0.110716, 1.619382>,  <2.004072, 0.309035, 2.366427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.791900, 0.110716, 1.619382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.613846, 0.358734, 1.877808>,  <1.507013, 0.507545, 2.032863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.613846, 0.358734, 1.877808>,  <1.791900, 0.110716, 1.619382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.613846, 0.358734, 1.877808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417991, 0.781935, -0.462451,
		-0.791920, 0.064196, -0.607241,
		-0.445136, 0.620045, 0.646064,
		1.480305, 0.544748, 2.071627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.420147, 0.596048, 1.309360>,  <1.791900, 0.110716, 1.619382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.420147, 0.596048, 1.309360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.519241, 0.746742, 1.666391>,  <1.578698, 0.837159, 1.880610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.519241, 0.746742, 1.666391>,  <1.420147, 0.596048, 1.309360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.519241, 0.746742, 1.666391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347216, 0.825574, -0.444824,
		-0.904471, 0.420116, 0.073716,
		0.247736, 0.376735, 0.892579,
		1.593562, 0.859763, 1.934165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.223732, 1.325426, 1.320831>,  <1.420147, 0.596048, 1.309360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.223732, 1.325426, 1.320831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.488739, 1.297531, 1.619148>,  <1.647743, 1.280794, 1.798139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.488739, 1.297531, 1.619148>,  <1.223732, 1.325426, 1.320831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.488739, 1.297531, 1.619148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600194, 0.645120, -0.472851,
		-0.448150, 0.760892, 0.469259,
		0.662517, -0.069738, 0.745794,
		1.687494, 1.276610, 1.842886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.584540, 1.913698, 1.290919>,  <1.223732, 1.325426, 1.320831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.584540, 1.913698, 1.290919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.812454, 1.727867, 1.562069>,  <1.949203, 1.616369, 1.724759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.812454, 1.727867, 1.562069>,  <1.584540, 1.913698, 1.290919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.812454, 1.727867, 1.562069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731245, 0.663024, -0.160247,
		-0.375000, 0.586999, 0.717501,
		0.569785, -0.464577, 0.677874,
		1.983390, 1.588494, 1.765431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.973569, 2.413321, 1.744382>,  <1.584540, 1.913698, 1.290919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.973569, 2.413321, 1.744382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.183975, 2.074333, 1.772951>,  <2.310219, 1.870940, 1.790092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.183975, 2.074333, 1.772951>,  <1.973569, 2.413321, 1.744382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.183975, 2.074333, 1.772951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847502, 0.515311, -0.127261,
		0.071045, 0.127472, 0.989294,
		0.526017, -0.847470, 0.071422,
		2.341780, 1.820092, 1.794378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.508729, 2.343333, 2.330696>,  <1.973569, 2.413321, 1.744382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.508729, 2.343333, 2.330696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.608658, 2.102875, 2.027061>,  <2.668615, 1.958600, 1.844881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.608658, 2.102875, 2.027061>,  <2.508729, 2.343333, 2.330696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.608658, 2.102875, 2.027061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808361, 0.561044, -0.178271,
		0.533048, -0.569080, 0.626105,
		0.249822, -0.601146, -0.759086,
		2.683604, 1.922531, 1.799335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.111235, 2.066745, 2.550113>,  <2.508729, 2.343333, 2.330696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.111235, 2.066745, 2.550113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.094749, 2.060532, 2.150501>,  <3.084858, 2.056804, 1.910734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.094749, 2.060532, 2.150501>,  <3.111235, 2.066745, 2.550113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.094749, 2.060532, 2.150501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692260, 0.720552, -0.039761,
		0.720470, -0.693227, -0.018944,
		-0.041214, -0.015532, -0.999029,
		3.082386, 2.055872, 1.850792>
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
