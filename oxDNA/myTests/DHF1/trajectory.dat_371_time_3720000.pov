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
	<3.366554, 0.594507, 0.289388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.199413, 0.788429, -0.017952>,  <3.099129, 0.904783, -0.202356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.199413, 0.788429, -0.017952>,  <3.366554, 0.594507, 0.289388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.199413, 0.788429, -0.017952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428400, 0.640653, 0.637210,
		0.801170, 0.595421, -0.060008,
		-0.417853, 0.484806, -0.768350,
		3.074057, 0.933871, -0.248457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.530784, 1.223580, 0.411701>,  <3.366554, 0.594507, 0.289388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.530784, 1.223580, 0.411701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.203846, 1.203629, 0.182106>,  <3.007683, 1.191658, 0.044349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.203846, 1.203629, 0.182106>,  <3.530784, 1.223580, 0.411701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.203846, 1.203629, 0.182106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505088, 0.541336, 0.672192,
		0.277191, 0.839326, -0.467651,
		-0.817344, -0.049879, -0.573987,
		2.958643, 1.188665, 0.009910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.320843, 1.727550, 0.871404>,  <3.530784, 1.223580, 0.411701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.320843, 1.727550, 0.871404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.662567, 1.849899, 1.039497>,  <3.867602, 1.923309, 1.140353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.662567, 1.849899, 1.039497>,  <3.320843, 1.727550, 0.871404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.662567, 1.849899, 1.039497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373583, 0.923479, 0.087302,
		-0.361373, -0.231575, 0.903207,
		0.854310, 0.305874, 0.420233,
		3.918860, 1.941662, 1.165567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.089404, 2.302414, 1.411106>,  <3.320843, 1.727550, 0.871404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.089404, 2.302414, 1.411106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.481331, 2.341591, 1.341400>,  <3.716487, 2.365097, 1.299577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.481331, 2.341591, 1.341400>,  <3.089404, 2.302414, 1.411106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.481331, 2.341591, 1.341400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043059, 0.954693, 0.294459,
		0.195208, -0.281012, 0.939641,
		0.979816, 0.097941, -0.174263,
		3.775276, 2.370973, 1.289121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.367307, 2.648781, 1.986479>,  <3.089404, 2.302414, 1.411106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.367307, 2.648781, 1.986479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.609844, 2.686028, 1.670586>,  <3.755367, 2.708375, 1.481050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.609844, 2.686028, 1.670586>,  <3.367307, 2.648781, 1.986479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.609844, 2.686028, 1.670586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040433, 0.988226, 0.147564,
		0.794175, -0.121406, 0.595439,
		0.606344, 0.093116, -0.789732,
		3.791747, 2.713962, 1.433666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.977621, 2.985044, 2.270689>,  <3.367307, 2.648781, 1.986479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.977621, 2.985044, 2.270689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.923527, 3.028923, 1.876801>,  <3.891070, 3.055250, 1.640467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.923527, 3.028923, 1.876801>,  <3.977621, 2.985044, 2.270689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.923527, 3.028923, 1.876801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143456, 0.985548, 0.090089,
		0.980373, -0.129081, -0.149017,
		-0.135235, 0.109698, -0.984722,
		3.882956, 3.061832, 1.581384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.329154, 3.595244, 2.218417>,  <3.977621, 2.985044, 2.270689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.329154, 3.595244, 2.218417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.118050, 3.566711, 1.879860>,  <3.991387, 3.549592, 1.676726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.118050, 3.566711, 1.879860>,  <4.329154, 3.595244, 2.218417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.118050, 3.566711, 1.879860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123921, 0.992272, -0.006356,
		0.840305, 0.101531, -0.532521,
		-0.527760, -0.071332, -0.846393,
		3.959722, 3.545312, 1.625942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.568932, 4.086012, 1.701537>,  <4.329154, 3.595244, 2.218417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.568932, 4.086012, 1.701537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192146, 3.998283, 1.599869>,  <3.966075, 3.945646, 1.538868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.192146, 3.998283, 1.599869>,  <4.568932, 4.086012, 1.701537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.192146, 3.998283, 1.599869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154390, 0.955295, -0.252139,
		0.298108, -0.198265, -0.933714,
		-0.941963, -0.219321, -0.254172,
		3.909557, 3.932487, 1.523617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.807986, 5.079463, 2.070127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.546834, 5.088371, 1.767273>,  <3.390143, 5.093716, 1.585561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.546834, 5.088371, 1.767273>,  <3.807986, 5.079463, 2.070127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.546834, 5.088371, 1.767273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167548, -0.970562, -0.173026,
		-0.738699, -0.239821, 0.629928,
		-0.652879, 0.022271, -0.757135,
		3.350970, 5.095053, 1.540132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.475519, 4.499638, 2.164856>,  <3.807986, 5.079463, 2.070127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.475519, 4.499638, 2.164856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.434348, 4.608482, 1.782158>,  <3.409646, 4.673789, 1.552539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.434348, 4.608482, 1.782158>,  <3.475519, 4.499638, 2.164856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.434348, 4.608482, 1.782158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062366, -0.958196, -0.279233,
		-0.992732, -0.088409, 0.081654,
		-0.102927, 0.272111, -0.956745,
		3.403470, 4.690116, 1.495134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.860323, 4.110159, 1.720074>,  <3.475519, 4.499638, 2.164856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.860323, 4.110159, 1.720074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.174277, 4.223289, 1.499542>,  <3.362650, 4.291168, 1.367223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.174277, 4.223289, 1.499542>,  <2.860323, 4.110159, 1.720074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.174277, 4.223289, 1.499542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219811, -0.958977, -0.179015,
		-0.579342, 0.019318, -0.814855,
		0.784886, 0.282825, -0.551330,
		3.409743, 4.308137, 1.334143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.685539, 3.814857, 1.086386>,  <2.860323, 4.110159, 1.720074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.685539, 3.814857, 1.086386> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.065274, 3.851959, 1.206490>,  <3.293115, 3.874221, 1.278552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.065274, 3.851959, 1.206490>,  <2.685539, 3.814857, 1.086386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.065274, 3.851959, 1.206490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166976, -0.958302, -0.231895,
		0.266230, 0.270283, -0.925240,
		0.949337, 0.092756, 0.300260,
		3.350075, 3.879786, 1.296567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.223792, 3.547425, 0.529647>,  <2.685539, 3.814857, 1.086386>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.223792, 3.547425, 0.529647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.432246, 3.538162, 0.870911>,  <3.557319, 3.532605, 1.075669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.432246, 3.538162, 0.870911>,  <3.223792, 3.547425, 0.529647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.432246, 3.538162, 0.870911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349460, -0.906205, -0.238056,
		0.778650, 0.422204, -0.464164,
		0.521136, -0.023156, 0.853159,
		3.588587, 3.531215, 1.126858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.929385, 3.374301, 0.372110>,  <3.223792, 3.547425, 0.529647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.929385, 3.374301, 0.372110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.894580, 3.278152, 0.758820>,  <3.873697, 3.220463, 0.990845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.894580, 3.278152, 0.758820>,  <3.929385, 3.374301, 0.372110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.894580, 3.278152, 0.758820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527096, -0.834594, -0.160068,
		0.845339, 0.495654, 0.199320,
		-0.087012, -0.240372, 0.966773,
		3.868476, 3.206041, 1.048851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.500818, 2.902607, 0.391907>,  <3.929385, 3.374301, 0.372110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.500818, 2.902607, 0.391907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.262982, 2.848839, 0.708992>,  <4.120281, 2.816578, 0.899243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.262982, 2.848839, 0.708992>,  <4.500818, 2.902607, 0.391907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.262982, 2.848839, 0.708992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193709, -0.980834, -0.021026,
		0.780346, 0.141054, 0.609232,
		-0.594590, -0.134422, 0.792713,
		4.084605, 2.808512, 0.946806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.855396, 2.516908, 0.931068>,  <4.500818, 2.902607, 0.391907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.855396, 2.516908, 0.931068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.462321, 2.443108, 0.937820>,  <4.226476, 2.398827, 0.941872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.462321, 2.443108, 0.937820>,  <4.855396, 2.516908, 0.931068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.462321, 2.443108, 0.937820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184733, -0.982698, 0.013359,
		0.014126, 0.016246, 0.999768,
		-0.982687, -0.184501, 0.016882,
		4.167515, 2.387757, 0.942885>
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
