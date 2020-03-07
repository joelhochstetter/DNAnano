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
	<1.595369, 4.520909, 5.047139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778488, 4.521027, 4.691517>,  <1.888360, 4.521097, 4.478143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.778488, 4.521027, 4.691517>,  <1.595369, 4.520909, 5.047139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.778488, 4.521027, 4.691517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232166, -0.965341, 0.119229,
		-0.858207, -0.260991, -0.442000,
		0.457799, 0.000294, -0.889056,
		1.915828, 4.521115, 4.424800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.484389, 3.904518, 4.676294>,  <1.595369, 4.520909, 5.047139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.484389, 3.904518, 4.676294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.829376, 4.057373, 4.543556>,  <2.036369, 4.149086, 4.463913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.829376, 4.057373, 4.543556>,  <1.484389, 3.904518, 4.676294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.829376, 4.057373, 4.543556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419098, -0.906826, 0.044984,
		-0.283735, -0.177872, -0.942261,
		0.862468, 0.382137, -0.331844,
		2.088117, 4.172014, 4.444003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.660892, 3.606743, 3.953130>,  <1.484389, 3.904518, 4.676294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.660892, 3.606743, 3.953130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.978745, 3.706909, 4.174345>,  <2.169456, 3.767009, 4.307075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.978745, 3.706909, 4.174345>,  <1.660892, 3.606743, 3.953130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.978745, 3.706909, 4.174345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309029, -0.950958, -0.013434,
		0.522553, 0.181580, -0.833047,
		0.794632, 0.250415, 0.553039,
		2.217134, 3.782034, 4.340257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.193066, 3.270193, 3.644202>,  <1.660892, 3.606743, 3.953130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.193066, 3.270193, 3.644202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.324318, 3.338173, 4.015890>,  <2.403069, 3.378961, 4.238903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.324318, 3.338173, 4.015890>,  <2.193066, 3.270193, 3.644202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.324318, 3.338173, 4.015890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420308, -0.907213, 0.017504,
		0.845974, 0.384814, -0.369115,
		0.328130, 0.169950, 0.929219,
		2.422757, 3.389158, 4.294656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.960806, 3.138577, 3.733643>,  <2.193066, 3.270193, 3.644202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.960806, 3.138577, 3.733643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.814194, 3.109024, 4.104630>,  <2.726226, 3.091292, 4.327222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.814194, 3.109024, 4.104630>,  <2.960806, 3.138577, 3.733643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.814194, 3.109024, 4.104630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549841, -0.821348, 0.151866,
		0.750553, 0.565623, 0.341674,
		-0.366532, -0.073882, 0.927467,
		2.704234, 3.086859, 4.382870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.446740, 2.772205, 4.204036>,  <2.960806, 3.138577, 3.733643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.446740, 2.772205, 4.204036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.132034, 2.742371, 4.449129>,  <2.943211, 2.724470, 4.596185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.132034, 2.742371, 4.449129>,  <3.446740, 2.772205, 4.204036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.132034, 2.742371, 4.449129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405011, -0.811481, 0.421266,
		0.465800, 0.579600, 0.668652,
		-0.786763, -0.074586, 0.612732,
		2.896005, 2.719995, 4.632949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.737405, 2.721962, 4.818635>,  <3.446740, 2.772205, 4.204036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.737405, 2.721962, 4.818635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.377617, 2.547333, 4.826189>,  <3.161744, 2.442555, 4.830722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.377617, 2.547333, 4.826189>,  <3.737405, 2.721962, 4.818635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.377617, 2.547333, 4.826189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434494, -0.888912, 0.145086,
		-0.046552, 0.138707, 0.989239,
		-0.899471, -0.436572, 0.018887,
		3.107776, 2.416361, 4.831855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.825474, 2.225212, 5.312781>,  <3.737405, 2.721962, 4.818635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.825474, 2.225212, 5.312781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.470985, 2.111607, 5.166386>,  <3.258292, 2.043443, 5.078548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.470985, 2.111607, 5.166386>,  <3.825474, 2.225212, 5.312781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.470985, 2.111607, 5.166386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212862, -0.951336, 0.222822,
		-0.411463, 0.119564, 0.903550,
		-0.886221, -0.284014, -0.365989,
		3.205119, 2.026402, 5.056589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.951266, 0.965489, 4.648252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.593246, 0.808651, 4.563259>,  <3.378435, 0.714548, 4.512264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.593246, 0.808651, 4.563259>,  <3.951266, 0.965489, 4.648252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.593246, 0.808651, 4.563259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428622, 0.887906, 0.167051,
		0.123163, 0.240593, -0.962780,
		-0.895050, -0.392094, -0.212481,
		3.324732, 0.691023, 4.499515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.569406, 1.315791, 4.029428>,  <3.951266, 0.965489, 4.648252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.569406, 1.315791, 4.029428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327408, 1.154732, 4.304195>,  <3.182209, 1.058096, 4.469056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.327408, 1.154732, 4.304195>,  <3.569406, 1.315791, 4.029428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.327408, 1.154732, 4.304195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468695, 0.877502, 0.101565,
		-0.643667, -0.260509, -0.719603,
		-0.604995, -0.402648, 0.686918,
		3.145910, 1.033937, 4.510271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.784011, 1.206258, 4.039915>,  <3.569406, 1.315791, 4.029428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.784011, 1.206258, 4.039915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.892754, 1.350788, 4.396687>,  <2.957999, 1.437506, 4.610750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.892754, 1.350788, 4.396687>,  <2.784011, 1.206258, 4.039915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.892754, 1.350788, 4.396687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488757, 0.850241, -0.195466,
		-0.828982, -0.382798, 0.407744,
		0.271856, 0.361325, 0.891930,
		2.974310, 1.459186, 4.664266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.217906, 1.522899, 4.306169>,  <2.784011, 1.206258, 4.039915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.217906, 1.522899, 4.306169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.508018, 1.678684, 4.533249>,  <2.682086, 1.772155, 4.669497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.508018, 1.678684, 4.533249>,  <2.217906, 1.522899, 4.306169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.508018, 1.678684, 4.533249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393502, 0.911146, -0.122348,
		-0.564909, -0.134655, 0.814092,
		0.725282, 0.389463, 0.567701,
		2.725603, 1.795523, 4.703559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.845225, 2.094346, 4.644726>,  <2.217906, 1.522899, 4.306169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.845225, 2.094346, 4.644726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.231071, 2.180809, 4.705112>,  <2.462579, 2.232687, 4.741344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.231071, 2.180809, 4.705112>,  <1.845225, 2.094346, 4.644726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.231071, 2.180809, 4.705112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238944, 0.958743, 0.154004,
		-0.111448, -0.184627, 0.976469,
		0.964617, 0.216158, 0.150965,
		2.520456, 2.245656, 4.750402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.845004, 2.547912, 5.260578>,  <1.845225, 2.094346, 4.644726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.845004, 2.547912, 5.260578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.199104, 2.586033, 5.078480>,  <2.411564, 2.608906, 4.969221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.199104, 2.586033, 5.078480>,  <1.845004, 2.547912, 5.260578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.199104, 2.586033, 5.078480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051939, 0.992916, 0.106862,
		0.462206, -0.070955, 0.883930,
		0.885251, 0.095302, -0.455246,
		2.464679, 2.614624, 4.941906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.300678, 3.035106, 5.657714>,  <1.845004, 2.547912, 5.260578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.300678, 3.035106, 5.657714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.396622, 3.052372, 5.269775>,  <2.454188, 3.062732, 5.037012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.396622, 3.052372, 5.269775>,  <2.300678, 3.035106, 5.657714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.396622, 3.052372, 5.269775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227435, 0.973708, -0.012912,
		0.943791, 0.223674, 0.243369,
		0.239858, 0.043164, -0.969848,
		2.468579, 3.065321, 4.978821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.629478, 3.691913, 5.452989>,  <2.300678, 3.035106, 5.657714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.629478, 3.691913, 5.452989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.483917, 3.561916, 5.103828>,  <2.396580, 3.483918, 4.894332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.483917, 3.561916, 5.103828>,  <2.629478, 3.691913, 5.452989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.483917, 3.561916, 5.103828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284017, 0.931241, -0.228308,
		0.887079, 0.164836, -0.431185,
		-0.363903, -0.324991, -0.872900,
		2.374746, 3.464419, 4.841958>
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
