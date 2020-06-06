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
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.451740, 35.147190, 34.934277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664404, 34.832233, 35.059078>,  <24.792002, 34.643257, 35.133961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664404, 34.832233, 35.059078>,  <24.451740, 35.147190, 34.934277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664404, 34.832233, 35.059078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537045, -0.028554, 0.843070,
		-0.654919, -0.615789, -0.438047,
		0.531661, -0.787394, 0.312006,
		24.823902, 34.596016, 35.152679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.743151, 34.866562, 34.352234>,  <24.451740, 35.147190, 34.934277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.743151, 34.866562, 34.352234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009251, 34.570591, 34.392136>,  <25.168911, 34.393009, 34.416077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009251, 34.570591, 34.392136>,  <24.743151, 34.866562, 34.352234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009251, 34.570591, 34.392136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386801, 0.227275, -0.893717,
		0.638611, 0.633133, 0.437399,
		0.665252, -0.739925, 0.099756,
		25.208826, 34.348614, 34.422062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.282066, 35.284199, 33.994331>,  <24.743151, 34.866562, 34.352234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.282066, 35.284199, 33.994331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460844, 35.641972, 33.988224>,  <25.568111, 35.856636, 33.984562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460844, 35.641972, 33.988224>,  <25.282066, 35.284199, 33.994331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460844, 35.641972, 33.988224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820336, 0.416606, 0.391776,
		0.356775, -0.162582, 0.919934,
		0.446946, 0.894431, -0.015263,
		25.594927, 35.910301, 33.983646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152287, 35.584690, 34.649158>,  <25.282066, 35.284199, 33.994331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152287, 35.584690, 34.649158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250633, 35.877708, 34.395252>,  <25.309641, 36.053520, 34.242908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250633, 35.877708, 34.395252>,  <25.152287, 35.584690, 34.649158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250633, 35.877708, 34.395252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801769, 0.521710, 0.291523,
		0.544718, 0.437261, 0.715602,
		0.245865, 0.732544, -0.634767,
		25.324392, 36.097473, 34.204823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219330, 36.292469, 34.923897>,  <25.152287, 35.584690, 34.649158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219330, 36.292469, 34.923897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078455, 36.295551, 34.549538>,  <24.993931, 36.297401, 34.324921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078455, 36.295551, 34.549538>,  <25.219330, 36.292469, 34.923897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078455, 36.295551, 34.549538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870554, 0.364472, 0.330600,
		0.343657, 0.931182, -0.121652,
		-0.352187, 0.007708, -0.935898,
		24.972799, 36.297863, 34.268768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.810720, 36.562885, 34.530258>,  <25.219330, 36.292469, 34.923897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.810720, 36.562885, 34.530258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201746, 36.576084, 34.613472>,  <26.436361, 36.584003, 34.663399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201746, 36.576084, 34.613472>,  <25.810720, 36.562885, 34.530258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201746, 36.576084, 34.613472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024162, -0.998701, 0.044860,
		0.209241, -0.038827, -0.977093,
		0.977565, 0.032995, 0.208031,
		26.495016, 36.585983, 34.675880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163929, 36.143730, 33.973347>,  <25.810720, 36.562885, 34.530258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163929, 36.143730, 33.973347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376595, 36.149399, 34.312080>,  <26.504194, 36.152802, 34.515320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.376595, 36.149399, 34.312080>,  <26.163929, 36.143730, 33.973347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.376595, 36.149399, 34.312080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174313, -0.980286, -0.093028,
		0.828825, 0.197075, -0.523651,
		0.531662, 0.014175, 0.846838,
		26.536093, 36.153652, 34.566132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.880985, 35.776962, 33.824711>,  <26.163929, 36.143730, 33.973347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.880985, 35.776962, 33.824711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777361, 35.763752, 34.210831>,  <26.715185, 35.755825, 34.442501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.777361, 35.763752, 34.210831>,  <26.880985, 35.776962, 33.824711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777361, 35.763752, 34.210831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061221, -0.997967, -0.017712,
		0.963918, 0.054508, 0.260558,
		-0.259063, -0.033024, 0.965296,
		26.699642, 35.753845, 34.500420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529665, 35.475842, 34.261635>,  <26.880985, 35.776962, 33.824711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529665, 35.475842, 34.261635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185690, 35.437405, 34.462143>,  <26.979305, 35.414341, 34.582447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185690, 35.437405, 34.462143>,  <27.529665, 35.475842, 34.261635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185690, 35.437405, 34.462143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201224, -0.966400, 0.159939,
		0.469057, 0.238405, 0.850381,
		-0.859938, -0.096097, 0.501270,
		26.927708, 35.408577, 34.612522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.752666, 35.011639, 34.672325>,  <27.529665, 35.475842, 34.261635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.752666, 35.011639, 34.672325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357246, 35.009224, 34.732632>,  <27.119995, 35.007774, 34.768818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.357246, 35.009224, 34.732632>,  <27.752666, 35.011639, 34.672325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357246, 35.009224, 34.732632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010585, -0.999512, 0.029383,
		0.150519, 0.030643, 0.988132,
		-0.988550, -0.006037, 0.150770,
		27.060680, 35.007412, 34.777863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.650856, 34.575653, 35.295719>,  <27.752666, 35.011639, 34.672325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.650856, 34.575653, 35.295719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302357, 34.585167, 35.099613>,  <27.093258, 34.590874, 34.981949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302357, 34.585167, 35.099613>,  <27.650856, 34.575653, 35.295719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302357, 34.585167, 35.099613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014549, -0.997135, -0.074228,
		-0.490626, -0.071804, 0.868407,
		-0.871249, 0.023784, -0.490265,
		27.040981, 34.592300, 34.952534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398748, 33.950890, 35.403969>,  <27.650856, 34.575653, 35.295719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398748, 33.950890, 35.403969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152571, 34.069637, 35.111916>,  <27.004864, 34.140888, 34.936684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152571, 34.069637, 35.111916>,  <27.398748, 33.950890, 35.403969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152571, 34.069637, 35.111916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194178, -0.954911, -0.224590,
		-0.763889, 0.003555, 0.645338,
		-0.615442, 0.296872, -0.730136,
		26.967937, 34.158699, 34.892876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854284, 33.435310, 35.367603>,  <27.398748, 33.950890, 35.403969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854284, 33.435310, 35.367603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877203, 33.598358, 35.003063>,  <26.890953, 33.696186, 34.784340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.877203, 33.598358, 35.003063>,  <26.854284, 33.435310, 35.367603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.877203, 33.598358, 35.003063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307158, -0.875770, -0.372399,
		-0.949932, -0.258592, -0.175383,
		0.057296, 0.407624, -0.911351,
		26.894392, 33.720646, 34.729656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247719, 33.370827, 34.641373>,  <26.854284, 33.435310, 35.367603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247719, 33.370827, 34.641373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854685, 33.377277, 34.567329>,  <26.618864, 33.381149, 34.522903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.854685, 33.377277, 34.567329>,  <27.247719, 33.370827, 34.641373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854685, 33.377277, 34.567329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022978, 0.978034, 0.207175,
		0.184382, 0.207821, -0.960632,
		-0.982586, 0.016126, -0.185107,
		26.559910, 33.382114, 34.511799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116985, 33.857788, 34.129662>,  <27.247719, 33.370827, 34.641373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116985, 33.857788, 34.129662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820917, 33.816601, 34.395458>,  <26.643276, 33.791889, 34.554935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.820917, 33.816601, 34.395458>,  <27.116985, 33.857788, 34.129662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820917, 33.816601, 34.395458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039998, 0.993199, 0.109347,
		-0.671228, 0.054357, -0.739255,
		-0.740171, -0.102966, 0.664489,
		26.598866, 33.785709, 34.594807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521818, 34.189693, 33.913399>,  <27.116985, 33.857788, 34.129662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521818, 34.189693, 33.913399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548326, 34.199799, 34.312393>,  <26.564232, 34.205860, 34.551788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548326, 34.199799, 34.312393>,  <26.521818, 34.189693, 33.913399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548326, 34.199799, 34.312393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007984, 0.999634, -0.025844,
		-0.997770, 0.009676, 0.066042,
		0.066268, 0.025259, 0.997482,
		26.568207, 34.207375, 34.611637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.959749, 34.572330, 34.231796>,  <26.521818, 34.189693, 33.913399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.959749, 34.572330, 34.231796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284418, 34.581413, 34.465267>,  <26.479219, 34.586864, 34.605350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.284418, 34.581413, 34.465267>,  <25.959749, 34.572330, 34.231796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.284418, 34.581413, 34.465267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075768, 0.994895, 0.066654,
		-0.579181, -0.098325, 0.809248,
		0.811670, 0.022711, 0.583674,
		26.527920, 34.588226, 34.640369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774466, 34.902683, 34.873886>,  <25.959749, 34.572330, 34.231796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774466, 34.902683, 34.873886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165827, 34.936005, 34.798218>,  <26.400644, 34.955997, 34.752815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165827, 34.936005, 34.798218>,  <25.774466, 34.902683, 34.873886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165827, 34.936005, 34.798218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043207, 0.977403, 0.206920,
		0.202132, -0.194278, 0.959895,
		0.978405, 0.083299, -0.189171,
		26.459349, 34.960995, 34.741467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943899, 35.359337, 35.420921>,  <25.774466, 34.902683, 34.873886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943899, 35.359337, 35.420921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268360, 35.369556, 35.187210>,  <26.463037, 35.375687, 35.046986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268360, 35.369556, 35.187210>,  <25.943899, 35.359337, 35.420921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268360, 35.369556, 35.187210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218861, 0.913191, 0.343776,
		0.542337, -0.406730, 0.735147,
		0.811154, 0.025548, -0.584275,
		26.511705, 35.377220, 35.011929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351456, 35.734612, 35.819988>,  <25.943899, 35.359337, 35.420921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351456, 35.734612, 35.819988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458822, 35.757721, 35.435360>,  <26.523243, 35.771587, 35.204582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458822, 35.757721, 35.435360>,  <26.351456, 35.734612, 35.819988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458822, 35.757721, 35.435360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052924, 0.995808, 0.074607,
		0.961847, -0.070916, 0.264235,
		0.268418, 0.057776, -0.961568,
		26.539349, 35.775055, 35.146889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063971, 36.036190, 35.767666>,  <26.351456, 35.734612, 35.819988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063971, 36.036190, 35.767666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850012, 36.101501, 35.436069>,  <26.721636, 36.140690, 35.237114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850012, 36.101501, 35.436069>,  <27.063971, 36.036190, 35.767666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850012, 36.101501, 35.436069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199699, 0.977782, 0.063736,
		0.820977, -0.131456, -0.555621,
		-0.534898, 0.163283, -0.828989,
		26.689543, 36.150486, 35.187374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384789, 36.554123, 35.573635>,  <27.063971, 36.036190, 35.767666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384789, 36.554123, 35.573635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074482, 36.522938, 35.323162>,  <26.888298, 36.504227, 35.172878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074482, 36.522938, 35.323162>,  <27.384789, 36.554123, 35.573635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074482, 36.522938, 35.323162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074948, 0.996698, -0.031242,
		0.626550, 0.022695, -0.779050,
		-0.775769, -0.077963, -0.626182,
		26.841751, 36.499550, 35.135307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417921, 37.353359, 35.220272>,  <27.384789, 36.554123, 35.573635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417921, 37.353359, 35.220272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756390, 37.501549, 35.373501>,  <27.959471, 37.590462, 35.465439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756390, 37.501549, 35.373501>,  <27.417921, 37.353359, 35.220272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756390, 37.501549, 35.373501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521433, -0.427172, -0.738669,
		-0.110021, 0.824786, -0.554638,
		0.846170, 0.370476, 0.383072,
		28.010241, 37.612690, 35.488422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811995, 37.815590, 34.854561>,  <27.417921, 37.353359, 35.220272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811995, 37.815590, 34.854561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095718, 37.618706, 35.056396>,  <28.265953, 37.500576, 35.177498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095718, 37.618706, 35.056396>,  <27.811995, 37.815590, 34.854561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095718, 37.618706, 35.056396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368349, -0.351506, -0.860676,
		0.600997, 0.796351, -0.068023,
		0.709311, -0.492208, 0.504589,
		28.308512, 37.471043, 35.207771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385139, 37.967308, 34.539852>,  <27.811995, 37.815590, 34.854561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385139, 37.967308, 34.539852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439314, 37.627392, 34.743622>,  <28.471819, 37.423443, 34.865883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.439314, 37.627392, 34.743622>,  <28.385139, 37.967308, 34.539852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439314, 37.627392, 34.743622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380983, -0.429964, -0.818525,
		0.914609, 0.304941, 0.265523,
		0.135436, -0.849790, 0.509426,
		28.479944, 37.372456, 34.896450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130266, 37.722603, 34.515636>,  <28.385139, 37.967308, 34.539852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130266, 37.722603, 34.515636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880676, 37.411549, 34.546478>,  <28.730923, 37.224918, 34.564983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880676, 37.411549, 34.546478>,  <29.130266, 37.722603, 34.515636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880676, 37.411549, 34.546478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537103, -0.498443, -0.680496,
		0.567608, -0.383199, 0.728684,
		-0.623973, -0.777633, 0.077103,
		28.693485, 37.178257, 34.569611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563934, 37.150272, 34.611210>,  <29.130266, 37.722603, 34.515636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563934, 37.150272, 34.611210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217018, 37.064289, 34.431610>,  <29.008869, 37.012699, 34.323849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217018, 37.064289, 34.431610>,  <29.563934, 37.150272, 34.611210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217018, 37.064289, 34.431610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482118, -0.138057, -0.865160,
		0.123988, -0.966816, 0.223371,
		-0.867288, -0.214961, -0.449002,
		28.956831, 36.999802, 34.296909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885422, 37.056572, 35.320618>,  <29.563934, 37.150272, 34.611210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885422, 37.056572, 35.320618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095581, 36.716793, 35.340225>,  <30.221676, 36.512928, 35.351990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.095581, 36.716793, 35.340225>,  <29.885422, 37.056572, 35.320618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.095581, 36.716793, 35.340225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461961, 0.333167, 0.821944,
		-0.714527, -0.409201, 0.567455,
		0.525398, -0.849443, 0.049022,
		30.253201, 36.461960, 35.354931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866999, 36.815609, 36.068699>,  <29.885422, 37.056572, 35.320618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866999, 36.815609, 36.068699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217091, 36.745201, 35.888481>,  <30.427145, 36.702957, 35.780350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217091, 36.745201, 35.888481>,  <29.866999, 36.815609, 36.068699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217091, 36.745201, 35.888481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478250, 0.454468, 0.751489,
		0.072481, -0.873198, 0.481946,
		0.875228, -0.176022, -0.450547,
		30.479658, 36.692394, 35.753319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360167, 36.431458, 36.491600>,  <29.866999, 36.815609, 36.068699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360167, 36.431458, 36.491600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612820, 36.605175, 36.234718>,  <30.764412, 36.709404, 36.080589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612820, 36.605175, 36.234718>,  <30.360167, 36.431458, 36.491600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612820, 36.605175, 36.234718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347183, 0.582206, 0.735187,
		0.693183, -0.687331, 0.216961,
		0.631634, 0.434294, -0.642205,
		30.802309, 36.735462, 36.042057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999962, 36.279957, 36.653275>,  <30.360167, 36.431458, 36.491600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999962, 36.279957, 36.653275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939507, 36.653954, 36.524929>,  <30.903233, 36.878349, 36.447922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939507, 36.653954, 36.524929>,  <30.999962, 36.279957, 36.653275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939507, 36.653954, 36.524929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294054, 0.352427, 0.888441,
		0.943763, 0.039927, -0.328203,
		-0.151140, 0.934987, -0.320867,
		30.894165, 36.934448, 36.428669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621857, 36.748196, 36.767452>,  <30.999962, 36.279957, 36.653275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621857, 36.748196, 36.767452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322456, 37.012989, 36.783077>,  <31.142817, 37.171864, 36.792454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322456, 37.012989, 36.783077>,  <31.621857, 36.748196, 36.767452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322456, 37.012989, 36.783077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284914, 0.267841, 0.920372,
		0.598809, 0.700027, -0.389088,
		-0.748499, 0.661984, 0.039062,
		31.097906, 37.211586, 36.794796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982595, 37.229385, 37.187016>,  <31.621857, 36.748196, 36.767452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982595, 37.229385, 37.187016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594227, 37.325008, 37.181843>,  <31.361206, 37.382381, 37.178738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594227, 37.325008, 37.181843>,  <31.982595, 37.229385, 37.187016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594227, 37.325008, 37.181843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090598, 0.416893, 0.904429,
		0.221600, 0.876957, -0.426428,
		-0.970920, 0.239055, -0.012933,
		31.302952, 37.396725, 37.177963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854483, 37.922859, 37.372509>,  <31.982595, 37.229385, 37.187016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854483, 37.922859, 37.372509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492846, 37.768883, 37.446743>,  <31.275864, 37.676498, 37.491283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492846, 37.768883, 37.446743>,  <31.854483, 37.922859, 37.372509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492846, 37.768883, 37.446743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088539, 0.256121, 0.962581,
		-0.418064, 0.886694, -0.197475,
		-0.904092, -0.384937, 0.185582,
		31.221619, 37.653400, 37.502419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460636, 38.477543, 37.762108>,  <31.854483, 37.922859, 37.372509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460636, 38.477543, 37.762108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330181, 38.106922, 37.837082>,  <31.251909, 37.884548, 37.882065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.330181, 38.106922, 37.837082>,  <31.460636, 38.477543, 37.762108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.330181, 38.106922, 37.837082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120850, 0.237511, 0.963838,
		-0.937566, 0.291691, -0.189435,
		-0.326136, -0.926555, 0.187432,
		31.232340, 37.828957, 37.893311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726635, 38.352119, 38.183170>,  <31.460636, 38.477543, 37.762108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726635, 38.352119, 38.183170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987066, 38.052540, 38.232452>,  <31.143324, 37.872791, 38.262020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987066, 38.052540, 38.232452>,  <30.726635, 38.352119, 38.183170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987066, 38.052540, 38.232452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007598, 0.168748, 0.985630,
		-0.758974, -0.640785, 0.115559,
		0.651077, -0.748945, 0.123206,
		31.182390, 37.827858, 38.269413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460697, 38.011852, 38.876366>,  <30.726635, 38.352119, 38.183170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460697, 38.011852, 38.876366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365475, 37.788902, 39.194527>,  <30.308342, 37.655132, 39.385422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365475, 37.788902, 39.194527>,  <30.460697, 38.011852, 38.876366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365475, 37.788902, 39.194527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478158, -0.645571, -0.595486,
		0.845396, -0.522087, -0.112830,
		-0.238056, -0.557372, 0.795403,
		30.294058, 37.621689, 39.433147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712986, 37.280117, 38.851860>,  <30.460697, 38.011852, 38.876366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712986, 37.280117, 38.851860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354084, 37.281128, 39.028461>,  <30.138742, 37.281734, 39.134422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354084, 37.281128, 39.028461>,  <30.712986, 37.280117, 38.851860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354084, 37.281128, 39.028461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344385, -0.629759, -0.696278,
		0.276281, -0.776787, 0.565925,
		-0.897256, 0.002528, 0.441504,
		30.084908, 37.281887, 39.160912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570875, 36.832729, 38.275429>,  <30.712986, 37.280117, 38.851860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570875, 36.832729, 38.275429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744606, 37.169510, 38.147377>,  <30.848845, 37.371578, 38.070545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.744606, 37.169510, 38.147377>,  <30.570875, 36.832729, 38.275429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744606, 37.169510, 38.147377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241992, -0.233268, -0.941820,
		-0.867640, 0.486528, 0.102430,
		0.434328, 0.841948, -0.320128,
		30.874905, 37.422096, 38.051338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035538, 37.199181, 37.791458>,  <30.570875, 36.832729, 38.275429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035538, 37.199181, 37.791458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404772, 37.327076, 37.705959>,  <30.626312, 37.403812, 37.654659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404772, 37.327076, 37.705959>,  <30.035538, 37.199181, 37.791458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404772, 37.327076, 37.705959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204318, -0.063175, -0.976864,
		-0.325840, 0.945399, 0.007011,
		0.923083, 0.319734, -0.213747,
		30.681696, 37.422997, 37.641834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992098, 37.675968, 37.313915>,  <30.035538, 37.199181, 37.791458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992098, 37.675968, 37.313915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372566, 37.566788, 37.256268>,  <30.600847, 37.501278, 37.221680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372566, 37.566788, 37.256268>,  <29.992098, 37.675968, 37.313915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372566, 37.566788, 37.256268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150858, -0.003752, -0.988548,
		0.269287, 0.962020, -0.044746,
		0.951171, -0.272954, -0.144118,
		30.657917, 37.484901, 37.213032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201561, 38.157330, 36.883553>,  <29.992098, 37.675968, 37.313915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201561, 38.157330, 36.883553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450815, 37.849651, 36.826920>,  <30.600367, 37.665047, 36.792938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450815, 37.849651, 36.826920>,  <30.201561, 38.157330, 36.883553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450815, 37.849651, 36.826920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116255, 0.087925, -0.989320,
		0.773426, 0.632939, -0.034634,
		0.623134, -0.769192, -0.141586,
		30.637756, 37.618893, 36.784443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817398, 38.343861, 36.465897>,  <30.201561, 38.157330, 36.883553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817398, 38.343861, 36.465897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728035, 37.955856, 36.427589>,  <30.674417, 37.723053, 36.404606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.728035, 37.955856, 36.427589>,  <30.817398, 38.343861, 36.465897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728035, 37.955856, 36.427589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062309, 0.083837, -0.994529,
		0.972732, -0.228151, 0.041711,
		-0.223406, -0.970009, -0.095767,
		30.661013, 37.664852, 36.398861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316628, 37.968483, 36.008106>,  <30.817398, 38.343861, 36.465897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316628, 37.968483, 36.008106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974550, 37.761372, 35.998722>,  <30.769304, 37.637104, 35.993092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974550, 37.761372, 35.998722>,  <31.316628, 37.968483, 36.008106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974550, 37.761372, 35.998722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030580, 0.095598, -0.994950,
		0.517406, -0.850157, -0.097589,
		-0.855193, -0.517778, -0.023465,
		30.717993, 37.606037, 35.991684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070044, 38.227905, 35.494804>,  <31.316628, 37.968483, 36.008106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070044, 38.227905, 35.494804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450653, 38.211929, 35.372814>,  <31.679018, 38.202343, 35.299618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.450653, 38.211929, 35.372814>,  <31.070044, 38.227905, 35.494804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.450653, 38.211929, 35.372814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103248, -0.892533, 0.439005,
		-0.289734, -0.449211, -0.845141,
		0.951522, -0.039936, -0.304977,
		31.736109, 38.199947, 35.281322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151344, 37.676590, 35.055126>,  <31.070044, 38.227905, 35.494804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151344, 37.676590, 35.055126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519325, 37.750881, 35.193222>,  <31.740114, 37.795456, 35.276081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519325, 37.750881, 35.193222>,  <31.151344, 37.676590, 35.055126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519325, 37.750881, 35.193222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055547, -0.933522, 0.354192,
		0.388073, -0.306663, -0.869113,
		0.919953, 0.185729, 0.345240,
		31.795311, 37.806599, 35.296795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535881, 37.092468, 34.992565>,  <31.151344, 37.676590, 35.055126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535881, 37.092468, 34.992565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762211, 37.298382, 35.250198>,  <31.898008, 37.421928, 35.404778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762211, 37.298382, 35.250198>,  <31.535881, 37.092468, 34.992565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762211, 37.298382, 35.250198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143323, -0.830670, 0.538001,
		0.811975, -0.212101, -0.543793,
		0.565823, 0.514781, 0.644084,
		31.931957, 37.452816, 35.443424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198933, 36.723232, 35.140984>,  <31.535881, 37.092468, 34.992565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198933, 36.723232, 35.140984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135612, 36.985226, 35.436535>,  <32.097622, 37.142422, 35.613865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135612, 36.985226, 35.436535>,  <32.198933, 36.723232, 35.140984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135612, 36.985226, 35.436535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253636, -0.696230, 0.671516,
		0.954259, 0.293705, -0.055917,
		-0.158296, 0.654983, 0.738878,
		32.088123, 37.181721, 35.658199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554665, 36.321850, 35.588596>,  <32.198933, 36.723232, 35.140984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554665, 36.321850, 35.588596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364330, 36.606739, 35.795021>,  <32.250130, 36.777672, 35.918877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364330, 36.606739, 35.795021>,  <32.554665, 36.321850, 35.588596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364330, 36.606739, 35.795021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120513, -0.528416, 0.840389,
		0.871240, 0.462078, 0.165606,
		-0.475834, 0.712223, 0.516063,
		32.221581, 36.820404, 35.949841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515938, 35.612240, 35.680904>,  <32.554665, 36.321850, 35.588596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515938, 35.612240, 35.680904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790863, 35.627716, 35.971035>,  <32.955818, 35.637001, 36.145115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790863, 35.627716, 35.971035>,  <32.515938, 35.612240, 35.680904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790863, 35.627716, 35.971035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143015, -0.971825, 0.187358,
		0.712141, -0.232507, -0.662417,
		0.687315, 0.038690, 0.725328,
		32.997059, 35.639324, 36.188633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782261, 34.947464, 35.779621>,  <32.515938, 35.612240, 35.680904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782261, 34.947464, 35.779621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916958, 35.094967, 36.126175>,  <32.997776, 35.183468, 36.334106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916958, 35.094967, 36.126175>,  <32.782261, 34.947464, 35.779621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916958, 35.094967, 36.126175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230705, -0.859764, 0.455610,
		0.912895, -0.353304, -0.204449,
		0.336747, 0.368756, 0.866383,
		33.017982, 35.205593, 36.386089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068382, 34.386631, 36.046322>,  <32.782261, 34.947464, 35.779621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068382, 34.386631, 36.046322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043827, 34.605679, 36.380112>,  <33.029095, 34.737106, 36.580387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043827, 34.605679, 36.380112>,  <33.068382, 34.386631, 36.046322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043827, 34.605679, 36.380112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246845, -0.818411, 0.518914,
		0.967108, -0.174130, 0.185419,
		-0.061390, 0.547616, 0.834475,
		33.025410, 34.769962, 36.630455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380047, 33.995808, 36.488678>,  <33.068382, 34.386631, 36.046322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380047, 33.995808, 36.488678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139763, 34.237270, 36.698341>,  <32.995594, 34.382149, 36.824139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139763, 34.237270, 36.698341>,  <33.380047, 33.995808, 36.488678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139763, 34.237270, 36.698341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440667, -0.797059, 0.412927,
		0.667054, 0.017069, 0.744813,
		-0.600708, 0.603660, 0.524160,
		32.959549, 34.418369, 36.855591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520138, 33.881443, 37.251183>,  <33.380047, 33.995808, 36.488678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520138, 33.881443, 37.251183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156006, 33.942997, 37.097500>,  <32.937527, 33.979931, 37.005291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156006, 33.942997, 37.097500>,  <33.520138, 33.881443, 37.251183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156006, 33.942997, 37.097500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237337, -0.954606, 0.179994,
		-0.339066, 0.255040, 0.905532,
		-0.910333, 0.153887, -0.384205,
		32.882908, 33.989162, 36.982239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021961, 33.801834, 37.798767>,  <33.520138, 33.881443, 37.251183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021961, 33.801834, 37.798767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873894, 33.691574, 37.443916>,  <32.785053, 33.625420, 37.231007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.873894, 33.691574, 37.443916>,  <33.021961, 33.801834, 37.798767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873894, 33.691574, 37.443916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134582, -0.928976, 0.344807,
		-0.919165, 0.247027, 0.306778,
		-0.370166, -0.275648, -0.887128,
		32.762844, 33.608879, 37.177776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456287, 33.436607, 37.905136>,  <33.021961, 33.801834, 37.798767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456287, 33.436607, 37.905136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638790, 33.335510, 37.563854>,  <32.748291, 33.274853, 37.359085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638790, 33.335510, 37.563854>,  <32.456287, 33.436607, 37.905136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638790, 33.335510, 37.563854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122405, -0.931877, 0.341501,
		-0.881391, -0.260247, -0.394235,
		0.456254, -0.252740, -0.853203,
		32.775665, 33.259689, 37.307892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068119, 32.858654, 38.110332>,  <32.456287, 33.436607, 37.905136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068119, 32.858654, 38.110332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333382, 32.642464, 37.903217>,  <32.492538, 32.512749, 37.778950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333382, 32.642464, 37.903217>,  <32.068119, 32.858654, 38.110332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333382, 32.642464, 37.903217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531672, -0.827080, 0.182380,
		-0.526822, 0.154345, -0.835844,
		0.663161, -0.540477, -0.517785,
		32.532330, 32.480320, 37.747883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672438, 33.171162, 37.437153>,  <32.068119, 32.858654, 38.110332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672438, 33.171162, 37.437153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626625, 33.519550, 37.628273>,  <31.599136, 33.728584, 37.742947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626625, 33.519550, 37.628273>,  <31.672438, 33.171162, 37.437153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626625, 33.519550, 37.628273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572749, 0.450876, -0.684595,
		-0.811690, 0.195252, -0.550487,
		-0.114533, 0.870970, 0.477802,
		31.592266, 33.780842, 37.771614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521482, 33.676025, 37.000660>,  <31.672438, 33.171162, 37.437153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521482, 33.676025, 37.000660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670555, 33.893063, 37.301781>,  <31.759998, 34.023285, 37.482452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670555, 33.893063, 37.301781>,  <31.521482, 33.676025, 37.000660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670555, 33.893063, 37.301781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578934, 0.498053, -0.645584,
		-0.725221, 0.676418, -0.128508,
		0.372681, 0.542589, 0.752799,
		31.782360, 34.055840, 37.527622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439680, 34.400745, 36.879131>,  <31.521482, 33.676025, 37.000660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439680, 34.400745, 36.879131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760038, 34.305283, 37.098808>,  <31.952253, 34.248005, 37.230614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760038, 34.305283, 37.098808>,  <31.439680, 34.400745, 36.879131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760038, 34.305283, 37.098808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575563, 0.559853, -0.596064,
		-0.165215, 0.793479, 0.585743,
		0.800894, -0.238653, 0.549193,
		32.000305, 34.233688, 37.263565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939165, 34.957607, 36.976368>,  <31.439680, 34.400745, 36.879131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939165, 34.957607, 36.976368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186672, 34.681229, 37.125881>,  <32.335178, 34.515400, 37.215588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186672, 34.681229, 37.125881>,  <31.939165, 34.957607, 36.976368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186672, 34.681229, 37.125881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783511, 0.577259, -0.229961,
		-0.056878, 0.435156, 0.898557,
		0.618769, -0.690950, 0.373783,
		32.372303, 34.473942, 37.238014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210045, 35.249706, 37.538422>,  <31.939165, 34.957607, 36.976368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210045, 35.249706, 37.538422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437134, 35.000870, 37.322754>,  <32.573387, 34.851570, 37.193356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.437134, 35.000870, 37.322754>,  <32.210045, 35.249706, 37.538422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.437134, 35.000870, 37.322754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600204, 0.761046, -0.246097,
		0.563423, -0.183894, 0.805442,
		0.567723, -0.622087, -0.539165,
		32.607452, 34.814243, 37.161003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823959, 35.216812, 37.747463>,  <32.210045, 35.249706, 37.538422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823959, 35.216812, 37.747463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860710, 35.126301, 37.359577>,  <32.882759, 35.071995, 37.126846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860710, 35.126301, 37.359577>,  <32.823959, 35.216812, 37.747463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860710, 35.126301, 37.359577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433705, 0.885709, -0.165589,
		0.896359, -0.405359, 0.179512,
		0.091873, -0.226282, -0.969719,
		32.888271, 35.058414, 37.068661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265884, 35.848709, 37.489029>,  <32.823959, 35.216812, 37.747463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265884, 35.848709, 37.489029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221355, 35.622158, 37.162392>,  <33.194637, 35.486229, 36.966408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221355, 35.622158, 37.162392>,  <33.265884, 35.848709, 37.489029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221355, 35.622158, 37.162392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469470, 0.694261, -0.545527,
		0.875902, -0.444098, 0.188606,
		-0.111326, -0.566373, -0.816595,
		33.187958, 35.452248, 36.917412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977287, 35.677082, 37.107273>,  <33.265884, 35.848709, 37.489029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977287, 35.677082, 37.107273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666538, 35.689930, 36.855736>,  <33.480091, 35.697639, 36.704815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.666538, 35.689930, 36.855736>,  <33.977287, 35.677082, 37.107273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666538, 35.689930, 36.855736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511164, 0.615340, -0.600057,
		0.367675, -0.787607, -0.494459,
		-0.776870, 0.032124, -0.628842,
		33.433475, 35.699566, 36.667084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289497, 35.610416, 36.455948>,  <33.977287, 35.677082, 37.107273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289497, 35.610416, 36.455948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926956, 35.775742, 36.420856>,  <33.709431, 35.874935, 36.399803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926956, 35.775742, 36.420856>,  <34.289497, 35.610416, 36.455948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926956, 35.775742, 36.420856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312171, 0.515144, -0.798233,
		-0.284725, -0.750868, -0.595927,
		-0.906356, 0.413309, -0.087725,
		33.655048, 35.899734, 36.394539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026176, 35.549297, 35.776806>,  <34.289497, 35.610416, 36.455948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026176, 35.549297, 35.776806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873077, 35.872822, 35.955391>,  <33.781219, 36.066936, 36.062542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873077, 35.872822, 35.955391>,  <34.026176, 35.549297, 35.776806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873077, 35.872822, 35.955391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407437, 0.581509, -0.704161,
		-0.829157, -0.087607, -0.552109,
		-0.382746, 0.808809, 0.446467,
		33.758255, 36.115463, 36.089333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443886, 35.809395, 35.447056>,  <34.026176, 35.549297, 35.776806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443886, 35.809395, 35.447056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597267, 36.139095, 35.613708>,  <33.689297, 36.336914, 35.713699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597267, 36.139095, 35.613708>,  <33.443886, 35.809395, 35.447056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597267, 36.139095, 35.613708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280139, 0.326058, -0.902889,
		-0.880050, 0.462929, -0.105876,
		0.383452, 0.824247, 0.416632,
		33.712303, 36.386368, 35.738697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248669, 36.350624, 35.032753>,  <33.443886, 35.809395, 35.447056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248669, 36.350624, 35.032753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587315, 36.453568, 35.219090>,  <33.790504, 36.515335, 35.330891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587315, 36.453568, 35.219090>,  <33.248669, 36.350624, 35.032753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587315, 36.453568, 35.219090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390658, 0.293907, -0.872356,
		-0.361424, 0.920534, 0.148286,
		0.846616, 0.257361, 0.465839,
		33.841301, 36.530777, 35.358841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294613, 36.936440, 34.726070>,  <33.248669, 36.350624, 35.032753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294613, 36.936440, 34.726070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649551, 36.814453, 34.864414>,  <33.862514, 36.741261, 34.947422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649551, 36.814453, 34.864414>,  <33.294613, 36.936440, 34.726070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649551, 36.814453, 34.864414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417960, 0.215136, -0.882624,
		0.194765, 0.927745, 0.318364,
		0.887342, -0.304968, 0.345859,
		33.915752, 36.722961, 34.968170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762341, 37.316093, 34.361256>,  <33.294613, 36.936440, 34.726070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762341, 37.316093, 34.361256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013157, 37.039490, 34.504719>,  <34.163647, 36.873528, 34.590797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013157, 37.039490, 34.504719>,  <33.762341, 37.316093, 34.361256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013157, 37.039490, 34.504719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582722, 0.110837, -0.805078,
		0.516968, 0.713812, 0.472458,
		0.627040, -0.691511, 0.358655,
		34.201267, 36.832035, 34.612316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.476799, 37.635937, 34.239956>,  <33.762341, 37.316093, 34.361256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.476799, 37.635937, 34.239956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501328, 37.242241, 34.306305>,  <34.516045, 37.006023, 34.346115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501328, 37.242241, 34.306305>,  <34.476799, 37.635937, 34.239956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501328, 37.242241, 34.306305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684885, -0.079394, -0.724313,
		0.726066, 0.158021, 0.669222,
		0.061325, -0.984239, 0.165871,
		34.519726, 36.946968, 34.356068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137688, 37.472229, 34.201595>,  <34.476799, 37.635937, 34.239956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137688, 37.472229, 34.201595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983150, 37.108883, 34.137585>,  <34.890427, 36.890877, 34.099178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983150, 37.108883, 34.137585>,  <35.137688, 37.472229, 34.201595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983150, 37.108883, 34.137585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512681, -0.067267, -0.855940,
		0.766743, -0.412730, 0.491690,
		-0.386346, -0.908366, -0.160022,
		34.867245, 36.836372, 34.089577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747852, 37.016567, 34.173050>,  <35.137688, 37.472229, 34.201595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747852, 37.016567, 34.173050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443863, 36.837646, 33.984428>,  <35.261471, 36.730293, 33.871254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443863, 36.837646, 33.984428>,  <35.747852, 37.016567, 34.173050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443863, 36.837646, 33.984428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545538, -0.044599, -0.836898,
		0.353313, -0.893272, 0.277913,
		-0.759972, -0.447299, -0.471557,
		35.215870, 36.703457, 33.842960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137047, 36.412762, 33.705391>,  <35.747852, 37.016567, 34.173050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137047, 36.412762, 33.705391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758091, 36.483276, 33.598526>,  <35.530716, 36.525585, 33.534409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758091, 36.483276, 33.598526>,  <36.137047, 36.412762, 33.705391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758091, 36.483276, 33.598526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299305, 0.192072, -0.934626,
		-0.113451, -0.965417, -0.234731,
		-0.947389, 0.176290, -0.267163,
		35.473873, 36.536163, 33.518375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118862, 35.869881, 33.115307>,  <36.137047, 36.412762, 33.705391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118862, 35.869881, 33.115307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812267, 36.124054, 33.077930>,  <35.628311, 36.276558, 33.055504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812267, 36.124054, 33.077930>,  <36.118862, 35.869881, 33.115307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812267, 36.124054, 33.077930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263181, 0.178031, -0.948178,
		-0.585867, -0.751353, -0.303691,
		-0.766483, 0.635432, -0.093440,
		35.582321, 36.314682, 33.049900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779270, 35.619530, 32.646786>,  <36.118862, 35.869881, 33.115307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779270, 35.619530, 32.646786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693714, 36.010250, 32.642498>,  <35.642380, 36.244682, 32.639927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693714, 36.010250, 32.642498>,  <35.779270, 35.619530, 32.646786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693714, 36.010250, 32.642498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211247, 0.035540, -0.976786,
		-0.953743, -0.211187, -0.213948,
		-0.213889, 0.976799, -0.010717,
		35.629547, 36.303291, 32.639282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599621, 35.668034, 31.947086>,  <35.779270, 35.619530, 32.646786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599621, 35.668034, 31.947086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696236, 36.029373, 32.088856>,  <35.754204, 36.246178, 32.173916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696236, 36.029373, 32.088856>,  <35.599621, 35.668034, 31.947086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696236, 36.029373, 32.088856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243200, 0.297228, -0.923314,
		-0.939421, 0.309215, -0.147902,
		0.241542, 0.903350, 0.354423,
		35.768700, 36.300377, 32.195183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538700, 36.045925, 31.370800>,  <35.599621, 35.668034, 31.947086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538700, 36.045925, 31.370800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722057, 36.301357, 31.618055>,  <35.832069, 36.454617, 31.766409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722057, 36.301357, 31.618055>,  <35.538700, 36.045925, 31.370800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722057, 36.301357, 31.618055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401300, 0.471856, -0.785054,
		-0.792993, 0.607919, -0.039970,
		0.458389, 0.638582, 0.618136,
		35.859573, 36.492931, 31.803495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411331, 36.718540, 31.112993>,  <35.538700, 36.045925, 31.370800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411331, 36.718540, 31.112993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736202, 36.793102, 31.334126>,  <35.931126, 36.837841, 31.466805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736202, 36.793102, 31.334126>,  <35.411331, 36.718540, 31.112993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736202, 36.793102, 31.334126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280870, 0.705613, -0.650555,
		-0.511350, 0.683640, 0.520728,
		0.812178, 0.186404, 0.552830,
		35.979855, 36.849022, 31.499975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550713, 37.418285, 31.076588>,  <35.411331, 36.718540, 31.112993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550713, 37.418285, 31.076588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916218, 37.290363, 31.176800>,  <36.135521, 37.213612, 31.236927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916218, 37.290363, 31.176800>,  <35.550713, 37.418285, 31.076588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916218, 37.290363, 31.176800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405994, 0.696941, -0.591137,
		0.014441, 0.641872, 0.766676,
		0.913762, -0.319802, 0.250531,
		36.190346, 37.194424, 31.251959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925514, 37.955421, 31.466440>,  <35.550713, 37.418285, 31.076588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925514, 37.955421, 31.466440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170921, 37.704136, 31.275045>,  <36.318165, 37.553364, 31.160208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.170921, 37.704136, 31.275045>,  <35.925514, 37.955421, 31.466440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170921, 37.704136, 31.275045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385067, 0.766995, -0.513265,
		0.689437, 0.130646, 0.712466,
		0.613514, -0.628212, -0.478488,
		36.354977, 37.515671, 31.131498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554047, 38.295105, 31.481367>,  <35.925514, 37.955421, 31.466440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554047, 38.295105, 31.481367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551800, 38.026810, 31.184700>,  <36.550453, 37.865833, 31.006699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551800, 38.026810, 31.184700>,  <36.554047, 38.295105, 31.481367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551800, 38.026810, 31.184700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180808, 0.728776, -0.660450,
		0.983502, -0.137808, 0.117182,
		-0.005616, -0.670742, -0.741669,
		36.550114, 37.825588, 30.962198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976807, 38.604782, 31.068134>,  <36.554047, 38.295105, 31.481367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976807, 38.604782, 31.068134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863605, 38.317181, 30.814224>,  <36.795685, 38.144619, 30.661879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.863605, 38.317181, 30.814224>,  <36.976807, 38.604782, 31.068134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863605, 38.317181, 30.814224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333285, 0.546865, -0.768023,
		0.899350, -0.428913, 0.084870,
		-0.283003, -0.719007, -0.634774,
		36.778706, 38.101479, 30.623793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518028, 38.358723, 30.520342>,  <36.976807, 38.604782, 31.068134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518028, 38.358723, 30.520342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152893, 38.303806, 30.366520>,  <36.933811, 38.270855, 30.274227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.152893, 38.303806, 30.366520>,  <37.518028, 38.358723, 30.520342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152893, 38.303806, 30.366520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243414, 0.573181, -0.782440,
		0.327840, -0.807846, -0.489803,
		-0.912836, -0.137290, -0.384553,
		36.879044, 38.262619, 30.251154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616234, 38.293297, 29.827639>,  <37.518028, 38.358723, 30.520342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616234, 38.293297, 29.827639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230270, 38.395058, 29.853662>,  <36.998692, 38.456116, 29.869276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230270, 38.395058, 29.853662>,  <37.616234, 38.293297, 29.827639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230270, 38.395058, 29.853662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160511, 0.767495, -0.620635,
		-0.207824, -0.588412, -0.781396,
		-0.964907, 0.254406, 0.065058,
		36.940800, 38.471378, 29.873180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311329, 38.392395, 29.100927>,  <37.616234, 38.293297, 29.827639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311329, 38.392395, 29.100927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061443, 38.575020, 29.354317>,  <36.911514, 38.684593, 29.506350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061443, 38.575020, 29.354317>,  <37.311329, 38.392395, 29.100927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061443, 38.575020, 29.354317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141472, 0.731651, -0.666838,
		-0.767933, -0.506200, -0.392480,
		-0.624712, 0.456562, 0.633472,
		36.874031, 38.711987, 29.544359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695690, 38.528019, 28.704218>,  <37.311329, 38.392395, 29.100927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695690, 38.528019, 28.704218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685780, 38.782501, 29.012667>,  <36.679832, 38.935192, 29.197735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685780, 38.782501, 29.012667>,  <36.695690, 38.528019, 28.704218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685780, 38.782501, 29.012667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026484, 0.770669, -0.636685,
		-0.999342, -0.036197, -0.002246,
		-0.024777, 0.636207, 0.771120,
		36.678345, 38.973362, 29.244003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345848, 38.962482, 28.462528>,  <36.695690, 38.528019, 28.704218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345848, 38.962482, 28.462528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481716, 39.169453, 28.776699>,  <36.563236, 39.293636, 28.965202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481716, 39.169453, 28.776699>,  <36.345848, 38.962482, 28.462528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481716, 39.169453, 28.776699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015811, 0.838100, -0.545288,
		-0.940413, 0.172797, 0.292855,
		0.339666, 0.517426, 0.785428,
		36.583614, 39.324680, 29.012327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933010, 39.563992, 28.320532>,  <36.345848, 38.962482, 28.462528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933010, 39.563992, 28.320532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236763, 39.620998, 28.574469>,  <36.419014, 39.655205, 28.726831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236763, 39.620998, 28.574469>,  <35.933010, 39.563992, 28.320532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236763, 39.620998, 28.574469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395648, 0.673445, -0.624448,
		-0.516527, 0.725370, 0.455015,
		0.759383, 0.142519, 0.634843,
		36.464577, 39.663754, 28.764921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965588, 40.264759, 28.557158>,  <35.933010, 39.563992, 28.320532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965588, 40.264759, 28.557158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326141, 40.091587, 28.560667>,  <36.542473, 39.987682, 28.562773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326141, 40.091587, 28.560667>,  <35.965588, 40.264759, 28.557158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326141, 40.091587, 28.560667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343157, 0.701821, -0.624252,
		0.264100, 0.565702, 0.781174,
		0.901385, -0.432930, 0.008774,
		36.596558, 39.961708, 28.563299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380848, 40.807415, 28.522612>,  <35.965588, 40.264759, 28.557158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380848, 40.807415, 28.522612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613590, 40.501884, 28.410891>,  <36.753235, 40.318565, 28.343859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613590, 40.501884, 28.410891>,  <36.380848, 40.807415, 28.522612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613590, 40.501884, 28.410891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411605, 0.572757, -0.708894,
		0.701447, 0.297510, 0.647657,
		0.581853, -0.763831, -0.279302,
		36.788147, 40.272736, 28.327101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002335, 41.035187, 28.504030>,  <36.380848, 40.807415, 28.522612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002335, 41.035187, 28.504030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035133, 40.705105, 28.280489>,  <37.054813, 40.507057, 28.146364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035133, 40.705105, 28.280489>,  <37.002335, 41.035187, 28.504030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035133, 40.705105, 28.280489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551340, 0.504685, -0.664317,
		0.830241, -0.253644, 0.496352,
		0.082001, -0.825202, -0.558854,
		37.059734, 40.457542, 28.112833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725536, 40.905701, 28.342770>,  <37.002335, 41.035187, 28.504030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725536, 40.905701, 28.342770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543259, 40.701595, 28.051023>,  <37.433891, 40.579132, 27.875977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543259, 40.701595, 28.051023>,  <37.725536, 40.905701, 28.342770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543259, 40.701595, 28.051023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627737, 0.396718, -0.669747,
		0.631100, -0.763049, 0.139529,
		-0.455696, -0.510265, -0.729363,
		37.406551, 40.548515, 27.832214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215034, 40.686718, 27.929312>,  <37.725536, 40.905701, 28.342770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215034, 40.686718, 27.929312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897972, 40.660667, 27.686840>,  <37.707733, 40.645035, 27.541357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.897972, 40.660667, 27.686840>,  <38.215034, 40.686718, 27.929312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897972, 40.660667, 27.686840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589897, 0.169220, -0.789548,
		0.153996, -0.983424, -0.095717,
		-0.792658, -0.065124, -0.606178,
		37.660175, 40.641129, 27.504986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466274, 40.320911, 27.460537>,  <38.215034, 40.686718, 27.929312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466274, 40.320911, 27.460537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142700, 40.494267, 27.301638>,  <37.948555, 40.598278, 27.206299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142700, 40.494267, 27.301638>,  <38.466274, 40.320911, 27.460537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142700, 40.494267, 27.301638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555965, 0.344256, -0.756565,
		-0.191130, -0.832865, -0.519427,
		-0.808933, 0.433385, -0.397246,
		37.900021, 40.624283, 27.182465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379715, 40.115200, 26.676750>,  <38.466274, 40.320911, 27.460537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379715, 40.115200, 26.676750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187885, 40.463207, 26.722502>,  <38.072788, 40.672012, 26.749952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187885, 40.463207, 26.722502>,  <38.379715, 40.115200, 26.676750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187885, 40.463207, 26.722502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303268, 0.286643, -0.908770,
		-0.823430, -0.401135, -0.401315,
		-0.479574, 0.870015, 0.114379,
		38.044014, 40.724213, 26.756815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058022, 40.328999, 26.051489>,  <38.379715, 40.115200, 26.676750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058022, 40.328999, 26.051489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014698, 40.680744, 26.236958>,  <37.988705, 40.891792, 26.348238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014698, 40.680744, 26.236958>,  <38.058022, 40.328999, 26.051489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014698, 40.680744, 26.236958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313214, 0.472846, -0.823598,
		-0.943486, 0.056026, -0.326642,
		-0.108309, 0.879362, 0.463671,
		37.982204, 40.944553, 26.376059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835117, 40.808674, 25.554234>,  <38.058022, 40.328999, 26.051489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835117, 40.808674, 25.554234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979145, 41.040512, 25.846649>,  <38.065563, 41.179615, 26.022099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979145, 41.040512, 25.846649>,  <37.835117, 40.808674, 25.554234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979145, 41.040512, 25.846649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410644, 0.605140, -0.682039,
		-0.837689, 0.545777, -0.020116,
		0.360068, 0.579597, 0.731039,
		38.087166, 41.214390, 26.065960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611927, 41.551899, 25.432552>,  <37.835117, 40.808674, 25.554234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611927, 41.551899, 25.432552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933388, 41.559181, 25.670479>,  <38.126266, 41.563549, 25.813234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933388, 41.559181, 25.670479>,  <37.611927, 41.551899, 25.432552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933388, 41.559181, 25.670479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360417, 0.780472, -0.510845,
		-0.473540, 0.624925, 0.620668,
		0.803654, 0.018206, 0.594818,
		38.174484, 41.564644, 25.848925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624813, 42.209019, 25.662495>,  <37.611927, 41.551899, 25.432552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624813, 42.209019, 25.662495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992901, 42.090538, 25.764837>,  <38.213753, 42.019447, 25.826242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992901, 42.090538, 25.764837>,  <37.624813, 42.209019, 25.662495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992901, 42.090538, 25.764837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367151, 0.879773, -0.301993,
		-0.135644, 0.371838, 0.918334,
		0.920218, -0.296204, 0.255856,
		38.268967, 42.001678, 25.841595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955929, 42.622063, 26.062353>,  <37.624813, 42.209019, 25.662495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955929, 42.622063, 26.062353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285343, 42.442307, 25.923882>,  <38.482990, 42.334454, 25.840797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285343, 42.442307, 25.923882>,  <37.955929, 42.622063, 26.062353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285343, 42.442307, 25.923882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377733, 0.889715, -0.256368,
		0.423211, 0.080364, 0.902460,
		0.823535, -0.449387, -0.346181,
		38.532402, 42.307491, 25.820026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434902, 42.941883, 26.379177>,  <37.955929, 42.622063, 26.062353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434902, 42.941883, 26.379177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629246, 42.772343, 26.073421>,  <38.745850, 42.670616, 25.889969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629246, 42.772343, 26.073421>,  <38.434902, 42.941883, 26.379177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629246, 42.772343, 26.073421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285442, 0.903543, -0.319583,
		0.826115, -0.062918, 0.559978,
		0.485857, -0.423853, -0.764390,
		38.775002, 42.645187, 25.844105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989567, 43.279705, 26.338354>,  <38.434902, 42.941883, 26.379177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989567, 43.279705, 26.338354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994949, 43.121326, 25.971083>,  <38.998180, 43.026299, 25.750721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994949, 43.121326, 25.971083>,  <38.989567, 43.279705, 26.338354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994949, 43.121326, 25.971083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402291, 0.842806, -0.357545,
		0.915413, -0.364563, 0.170625,
		0.013456, -0.395942, -0.918177,
		38.998985, 43.002544, 25.695629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550785, 43.610943, 26.060406>,  <38.989567, 43.279705, 26.338354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550785, 43.610943, 26.060406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328800, 43.472363, 25.757887>,  <39.195610, 43.389214, 25.576376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328800, 43.472363, 25.757887>,  <39.550785, 43.610943, 26.060406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328800, 43.472363, 25.757887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346421, 0.730320, -0.588748,
		0.756314, -0.588730, -0.285281,
		-0.554960, -0.346451, -0.756300,
		39.162312, 43.368427, 25.530996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052109, 43.696609, 25.559149>,  <39.550785, 43.610943, 26.060406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052109, 43.696609, 25.559149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690102, 43.679714, 25.389841>,  <39.472897, 43.669575, 25.288258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690102, 43.679714, 25.389841>,  <40.052109, 43.696609, 25.559149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690102, 43.679714, 25.389841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245097, 0.761487, -0.600054,
		0.347661, -0.646802, -0.678807,
		-0.905019, -0.042242, -0.423268,
		39.418594, 43.667042, 25.262861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235359, 43.656067, 24.877337>,  <40.052109, 43.696609, 25.559149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235359, 43.656067, 24.877337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872421, 43.794079, 24.973404>,  <39.654659, 43.876884, 25.031044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872421, 43.794079, 24.973404>,  <40.235359, 43.656067, 24.877337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872421, 43.794079, 24.973404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199065, 0.855825, -0.477427,
		-0.370267, -0.385382, -0.845212,
		-0.907345, 0.345028, 0.240167,
		39.600216, 43.897587, 25.045454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095856, 44.034206, 24.264460>,  <40.235359, 43.656067, 24.877337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095856, 44.034206, 24.264460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821606, 44.183136, 24.514671>,  <39.657055, 44.272495, 24.664799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821606, 44.183136, 24.514671>,  <40.095856, 44.034206, 24.264460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821606, 44.183136, 24.514671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006212, 0.856276, -0.516482,
		-0.727927, -0.357999, -0.584773,
		-0.685627, 0.372329, 0.625530,
		39.615917, 44.294834, 24.702330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539589, 44.222435, 23.845509>,  <40.095856, 44.034206, 24.264460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539589, 44.222435, 23.845509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529751, 44.435051, 24.184177>,  <39.523849, 44.562622, 24.387379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529751, 44.435051, 24.184177>,  <39.539589, 44.222435, 23.845509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529751, 44.435051, 24.184177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093788, 0.841968, -0.531313,
		-0.995288, -0.092474, 0.029145,
		-0.024594, 0.531543, 0.846674,
		39.522373, 44.594513, 24.438179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005459, 44.673653, 23.756071>,  <39.539589, 44.222435, 23.845509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005459, 44.673653, 23.756071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242603, 44.838074, 24.033068>,  <39.384892, 44.936726, 24.199265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.242603, 44.838074, 24.033068>,  <39.005459, 44.673653, 23.756071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242603, 44.838074, 24.033068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042275, 0.842843, -0.536497,
		-0.804191, 0.347346, 0.482315,
		0.592866, 0.411057, 0.692490,
		39.420464, 44.961391, 24.240814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742748, 45.385002, 23.917139>,  <39.005459, 44.673653, 23.756071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742748, 45.385002, 23.917139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133228, 45.338554, 23.990406>,  <39.367516, 45.310684, 24.034367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.133228, 45.338554, 23.990406>,  <38.742748, 45.385002, 23.917139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133228, 45.338554, 23.990406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185279, 0.885509, -0.426081,
		-0.112718, 0.449877, 0.885949,
		0.976200, -0.116120, 0.183166,
		39.426086, 45.303719, 24.045355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196079, 45.868935, 24.291752>,  <38.742748, 45.385002, 23.917139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196079, 45.868935, 24.291752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411049, 45.729668, 23.984520>,  <39.540031, 45.646107, 23.800180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411049, 45.729668, 23.984520>,  <39.196079, 45.868935, 24.291752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411049, 45.729668, 23.984520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034926, 0.919201, -0.392237,
		0.842587, 0.183973, 0.506163,
		0.537427, -0.348172, -0.768081,
		39.572277, 45.625217, 23.754095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831589, 46.223763, 24.154026>,  <39.196079, 45.868935, 24.291752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831589, 46.223763, 24.154026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708607, 46.077454, 23.802645>,  <39.634819, 45.989666, 23.591816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708607, 46.077454, 23.802645>,  <39.831589, 46.223763, 24.154026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708607, 46.077454, 23.802645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015369, 0.924957, -0.379760,
		0.951439, -0.103258, -0.290004,
		-0.307455, -0.365776, -0.878453,
		39.616371, 45.967720, 23.539108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232346, 46.493717, 23.619205>,  <39.831589, 46.223763, 24.154026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232346, 46.493717, 23.619205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886372, 46.399883, 23.441730>,  <39.678787, 46.343582, 23.335245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886372, 46.399883, 23.441730>,  <40.232346, 46.493717, 23.619205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886372, 46.399883, 23.441730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072721, 0.933290, -0.351684,
		0.496590, -0.271918, -0.824293,
		-0.864933, -0.234586, -0.443689,
		39.626892, 46.329506, 23.308624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065331, 46.565399, 23.654409>,  <40.232346, 46.493717, 23.619205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065331, 46.565399, 23.654409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433033, 46.562519, 23.811850>,  <41.653652, 46.560791, 23.906313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433033, 46.562519, 23.811850>,  <41.065331, 46.565399, 23.654409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433033, 46.562519, 23.811850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362119, 0.376696, 0.852625,
		-0.154408, -0.926309, 0.343672,
		0.919254, -0.007202, 0.393599,
		41.708809, 46.560360, 23.929930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169243, 46.127056, 24.278263>,  <41.065331, 46.565399, 23.654409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169243, 46.127056, 24.278263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416965, 46.441048, 24.271601>,  <41.565598, 46.629440, 24.267603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416965, 46.441048, 24.271601>,  <41.169243, 46.127056, 24.278263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416965, 46.441048, 24.271601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376365, 0.315415, 0.871127,
		0.689068, -0.533222, 0.490774,
		0.619302, 0.784977, -0.016656,
		41.602757, 46.676540, 24.266603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.472168, 46.104904, 24.912580>,  <41.169243, 46.127056, 24.278263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.472168, 46.104904, 24.912580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443661, 46.480515, 24.778027>,  <41.426556, 46.705879, 24.697294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.443661, 46.480515, 24.778027>,  <41.472168, 46.104904, 24.912580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443661, 46.480515, 24.778027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423817, 0.276777, 0.862423,
		0.902939, 0.204032, 0.378248,
		-0.071272, 0.939024, -0.336385,
		41.422279, 46.762222, 24.677111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782063, 46.626408, 25.262201>,  <41.472168, 46.104904, 24.912580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782063, 46.626408, 25.262201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482185, 46.814281, 25.075716>,  <41.302258, 46.927006, 24.963825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482185, 46.814281, 25.075716>,  <41.782063, 46.626408, 25.262201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482185, 46.814281, 25.075716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429764, 0.190187, 0.882684,
		0.503248, 0.862107, 0.059269,
		-0.749696, 0.469681, -0.466214,
		41.257275, 46.955185, 24.935852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574787, 47.217113, 25.566994>,  <41.782063, 46.626408, 25.262201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574787, 47.217113, 25.566994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269253, 47.036758, 25.382278>,  <41.085930, 46.928543, 25.271448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269253, 47.036758, 25.382278>,  <41.574787, 47.217113, 25.566994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269253, 47.036758, 25.382278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541822, 0.059212, 0.838405,
		-0.350686, 0.890613, -0.289531,
		-0.763837, -0.450891, -0.461789,
		41.040100, 46.901489, 25.243742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990650, 47.636002, 25.630526>,  <41.574787, 47.217113, 25.566994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990650, 47.636002, 25.630526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919025, 47.242474, 25.628365>,  <40.876049, 47.006355, 25.627068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.919025, 47.242474, 25.628365>,  <40.990650, 47.636002, 25.630526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.919025, 47.242474, 25.628365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517457, 0.089508, 0.851015,
		-0.836765, 0.155179, -0.525114,
		-0.179062, -0.983823, -0.005402,
		40.865307, 46.947327, 25.626743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460293, 47.604824, 26.194767>,  <40.990650, 47.636002, 25.630526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460293, 47.604824, 26.194767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504223, 47.218990, 26.098833>,  <40.530582, 46.987492, 26.041273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504223, 47.218990, 26.098833>,  <40.460293, 47.604824, 26.194767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504223, 47.218990, 26.098833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665146, -0.250628, 0.703397,
		-0.738593, 0.082271, -0.669113,
		0.109829, -0.964582, -0.239834,
		40.537170, 46.929615, 26.026882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840549, 47.364414, 26.411495>,  <40.460293, 47.604824, 26.194767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840549, 47.364414, 26.411495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043846, 47.027710, 26.338676>,  <40.165825, 46.825687, 26.294985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.043846, 47.027710, 26.338676>,  <39.840549, 47.364414, 26.411495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043846, 47.027710, 26.338676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536445, -0.474790, 0.697711,
		-0.673737, -0.256945, -0.692862,
		0.508237, -0.841756, -0.182047,
		40.196316, 46.775185, 26.284063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359547, 46.818508, 26.308815>,  <39.840549, 47.364414, 26.411495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359547, 46.818508, 26.308815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689995, 46.616901, 26.409605>,  <39.888264, 46.495937, 26.470079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689995, 46.616901, 26.409605>,  <39.359547, 46.818508, 26.308815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689995, 46.616901, 26.409605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483243, -0.403702, 0.776853,
		-0.289823, -0.763540, -0.577069,
		0.826123, -0.504014, 0.251974,
		39.937832, 46.465698, 26.485197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.115044, 46.060516, 26.373510>,  <39.359547, 46.818508, 26.308815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.115044, 46.060516, 26.373510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464909, 46.110329, 26.560894>,  <39.674828, 46.140217, 26.673325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.464909, 46.110329, 26.560894>,  <39.115044, 46.060516, 26.373510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464909, 46.110329, 26.560894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339844, -0.531585, 0.775837,
		0.345642, -0.837800, -0.422637,
		0.874664, 0.124531, 0.468460,
		39.727306, 46.147690, 26.701431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356770, 45.415928, 26.709404>,  <39.115044, 46.060516, 26.373510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356770, 45.415928, 26.709404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541641, 45.705910, 26.913694>,  <39.652565, 45.879898, 27.036268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541641, 45.705910, 26.913694>,  <39.356770, 45.415928, 26.709404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541641, 45.705910, 26.913694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267226, -0.435299, 0.859712,
		0.845566, -0.533819, -0.007460,
		0.462178, 0.724950, 0.510724,
		39.680294, 45.923393, 27.066912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609753, 45.125496, 27.283869>,  <39.356770, 45.415928, 26.709404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609753, 45.125496, 27.283869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610012, 45.510658, 27.391804>,  <39.610168, 45.741756, 27.456564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.610012, 45.510658, 27.391804>,  <39.609753, 45.125496, 27.283869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610012, 45.510658, 27.391804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134401, -0.267305, 0.954193,
		0.990927, -0.036883, 0.129243,
		0.000647, 0.962906, 0.269837,
		39.610207, 45.799530, 27.472755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035984, 45.155697, 27.906181>,  <39.609753, 45.125496, 27.283869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035984, 45.155697, 27.906181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840538, 45.504395, 27.920691>,  <39.723270, 45.713615, 27.929396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840538, 45.504395, 27.920691>,  <40.035984, 45.155697, 27.906181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840538, 45.504395, 27.920691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144059, -0.121610, 0.982068,
		0.860525, 0.474626, 0.185004,
		-0.488614, 0.871746, 0.036274,
		39.693954, 45.765919, 27.931572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348511, 45.615276, 28.428757>,  <40.035984, 45.155697, 27.906181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348511, 45.615276, 28.428757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978207, 45.764042, 28.401463>,  <39.756023, 45.853302, 28.385086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978207, 45.764042, 28.401463>,  <40.348511, 45.615276, 28.428757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978207, 45.764042, 28.401463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065912, 0.018978, 0.997645,
		0.372330, 0.928075, 0.006944,
		-0.925757, 0.371911, -0.068237,
		39.700478, 45.875614, 28.380991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271683, 46.074192, 29.089136>,  <40.348511, 45.615276, 28.428757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271683, 46.074192, 29.089136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912464, 46.020069, 28.921707>,  <39.696934, 45.987595, 28.821249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.912464, 46.020069, 28.921707>,  <40.271683, 46.074192, 29.089136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912464, 46.020069, 28.921707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390840, -0.191257, 0.900369,
		-0.201885, 0.972169, 0.118873,
		-0.898046, -0.135311, -0.418575,
		39.643051, 45.979477, 28.796135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783131, 46.429882, 29.541975>,  <40.271683, 46.074192, 29.089136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783131, 46.429882, 29.541975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597160, 46.151810, 29.322680>,  <39.485577, 45.984966, 29.191103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597160, 46.151810, 29.322680>,  <39.783131, 46.429882, 29.541975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597160, 46.151810, 29.322680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415970, -0.375111, 0.828408,
		-0.781545, 0.613200, -0.114776,
		-0.464926, -0.695182, -0.548239,
		39.457684, 45.943256, 29.158207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170002, 46.457039, 29.699892>,  <39.783131, 46.429882, 29.541975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170002, 46.457039, 29.699892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189178, 46.086357, 29.550808>,  <39.200684, 45.863949, 29.461357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.189178, 46.086357, 29.550808>,  <39.170002, 46.457039, 29.699892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189178, 46.086357, 29.550808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545287, -0.336911, 0.767563,
		-0.836877, 0.166439, -0.521473,
		0.047938, -0.926709, -0.372710,
		39.203560, 45.808346, 29.438995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620659, 46.128887, 29.978607>,  <39.170002, 46.457039, 29.699892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620659, 46.128887, 29.978607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823093, 45.810059, 29.846819>,  <38.944553, 45.618763, 29.767746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.823093, 45.810059, 29.846819>,  <38.620659, 46.128887, 29.978607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823093, 45.810059, 29.846819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394257, -0.553556, 0.733578,
		-0.767095, -0.241359, -0.594400,
		0.506089, -0.797071, -0.329472,
		38.974922, 45.570938, 29.747978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141880, 45.694206, 29.663111>,  <38.620659, 46.128887, 29.978607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141880, 45.694206, 29.663111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448788, 45.457977, 29.763128>,  <38.632931, 45.316238, 29.823139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448788, 45.457977, 29.763128>,  <38.141880, 45.694206, 29.663111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448788, 45.457977, 29.763128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623663, -0.596221, 0.505534,
		-0.149472, -0.543826, -0.825780,
		0.767269, -0.590572, 0.250046,
		38.678970, 45.280807, 29.838142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955208, 45.090797, 29.394180>,  <38.141880, 45.694206, 29.663111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955208, 45.090797, 29.394180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229763, 45.000706, 29.670773>,  <38.394497, 44.946651, 29.836727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229763, 45.000706, 29.670773>,  <37.955208, 45.090797, 29.394180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229763, 45.000706, 29.670773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642530, -0.633171, 0.431566,
		0.340626, -0.740519, -0.579315,
		0.686388, -0.225225, 0.691481,
		38.435680, 44.933140, 29.878216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878407, 44.430412, 29.527464>,  <37.955208, 45.090797, 29.394180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878407, 44.430412, 29.527464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091518, 44.499672, 29.858805>,  <38.219383, 44.541229, 30.057610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.091518, 44.499672, 29.858805>,  <37.878407, 44.430412, 29.527464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.091518, 44.499672, 29.858805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665967, -0.518168, 0.536647,
		0.522145, -0.837569, -0.160757,
		0.532777, 0.173149, 0.828352,
		38.251350, 44.551617, 30.107311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755985, 43.858620, 30.001638>,  <37.878407, 44.430412, 29.527464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755985, 43.858620, 30.001638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925419, 44.101688, 30.270357>,  <38.027081, 44.247528, 30.431589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925419, 44.101688, 30.270357>,  <37.755985, 43.858620, 30.001638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925419, 44.101688, 30.270357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588411, -0.379281, 0.714086,
		0.688730, -0.697768, 0.196903,
		0.423585, 0.607672, 0.671797,
		38.052494, 44.283989, 30.471895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916828, 43.404911, 30.560301>,  <37.755985, 43.858620, 30.001638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916828, 43.404911, 30.560301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906078, 43.776241, 30.708616>,  <37.899628, 43.999039, 30.797606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906078, 43.776241, 30.708616>,  <37.916828, 43.404911, 30.560301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906078, 43.776241, 30.708616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722078, -0.274532, 0.635008,
		0.691289, -0.250675, 0.677703,
		-0.026871, 0.928329, 0.370788,
		37.898018, 44.054741, 30.819853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042931, 43.368671, 31.251911>,  <37.916828, 43.404911, 30.560301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042931, 43.368671, 31.251911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857010, 43.722595, 31.238863>,  <37.745457, 43.934952, 31.231033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857010, 43.722595, 31.238863>,  <38.042931, 43.368671, 31.251911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857010, 43.722595, 31.238863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649651, -0.315771, 0.691551,
		0.601592, 0.342627, 0.721591,
		-0.464802, 0.884814, -0.032623,
		37.717571, 43.988041, 31.229076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076191, 43.651245, 31.913597>,  <38.042931, 43.368671, 31.251911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076191, 43.651245, 31.913597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770397, 43.832058, 31.729759>,  <37.586922, 43.940544, 31.619455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.770397, 43.832058, 31.729759>,  <38.076191, 43.651245, 31.913597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.770397, 43.832058, 31.729759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627478, -0.358382, 0.691255,
		0.147757, 0.816842, 0.557617,
		-0.764486, 0.452030, -0.459597,
		37.541050, 43.967667, 31.591881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733097, 44.141636, 32.303585>,  <38.076191, 43.651245, 31.913597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733097, 44.141636, 32.303585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440968, 44.074894, 32.038620>,  <37.265690, 44.034851, 31.879642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440968, 44.074894, 32.038620>,  <37.733097, 44.141636, 32.303585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440968, 44.074894, 32.038620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613019, -0.267751, 0.743315,
		-0.301384, 0.948931, 0.093262,
		-0.730325, -0.166852, -0.662409,
		37.221870, 44.024837, 31.839897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125347, 44.415520, 32.641357>,  <37.733097, 44.141636, 32.303585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125347, 44.415520, 32.641357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998093, 44.174717, 32.348408>,  <36.921738, 44.030235, 32.172638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998093, 44.174717, 32.348408>,  <37.125347, 44.415520, 32.641357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998093, 44.174717, 32.348408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683719, -0.389457, 0.617132,
		-0.656747, 0.697074, -0.287700,
		-0.318140, -0.602005, -0.732377,
		36.902649, 43.994114, 32.128693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364990, 44.424114, 32.738220>,  <37.125347, 44.415520, 32.641357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364990, 44.424114, 32.738220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451405, 44.117680, 32.496086>,  <36.503254, 43.933819, 32.350803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451405, 44.117680, 32.496086>,  <36.364990, 44.424114, 32.738220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451405, 44.117680, 32.496086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706949, -0.550360, 0.444215,
		-0.673463, 0.331980, -0.660482,
		0.216032, -0.766090, -0.605340,
		36.516212, 43.887852, 32.314484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693161, 44.192848, 32.579762>,  <36.364990, 44.424114, 32.738220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693161, 44.192848, 32.579762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941216, 43.881737, 32.538788>,  <36.090050, 43.695072, 32.514202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941216, 43.881737, 32.538788>,  <35.693161, 44.192848, 32.579762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941216, 43.881737, 32.538788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666155, -0.591049, 0.454859,
		-0.414323, -0.213838, -0.884652,
		0.620139, -0.777775, -0.102436,
		36.127258, 43.648403, 32.508057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272133, 43.643158, 32.476089>,  <35.693161, 44.192848, 32.579762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272133, 43.643158, 32.476089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613602, 43.470581, 32.592777>,  <35.818481, 43.367035, 32.662788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613602, 43.470581, 32.592777>,  <35.272133, 43.643158, 32.476089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613602, 43.470581, 32.592777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518981, -0.657763, 0.545899,
		-0.043643, -0.617416, -0.785425,
		0.853671, -0.431445, 0.291721,
		35.869701, 43.341148, 32.680294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241932, 42.801746, 32.310486>,  <35.272133, 43.643158, 32.476089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241932, 42.801746, 32.310486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521111, 42.858704, 32.591225>,  <35.688618, 42.892876, 32.759670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521111, 42.858704, 32.591225>,  <35.241932, 42.801746, 32.310486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521111, 42.858704, 32.591225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280063, -0.847717, 0.450489,
		0.659117, -0.510980, -0.551782,
		0.697946, 0.142392, 0.701852,
		35.730495, 42.901421, 32.801781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694344, 42.178555, 32.267780>,  <35.241932, 42.801746, 32.310486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694344, 42.178555, 32.267780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747402, 42.350655, 32.624943>,  <35.779240, 42.453915, 32.839241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.747402, 42.350655, 32.624943>,  <35.694344, 42.178555, 32.267780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.747402, 42.350655, 32.624943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161338, -0.879484, 0.447748,
		0.977944, -0.203454, -0.047247,
		0.132649, 0.430250, 0.892910,
		35.787197, 42.479729, 32.892815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010475, 41.614235, 32.708214>,  <35.694344, 42.178555, 32.267780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010475, 41.614235, 32.708214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894623, 41.874195, 32.989281>,  <35.825111, 42.030170, 33.157921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894623, 41.874195, 32.989281>,  <36.010475, 41.614235, 32.708214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894623, 41.874195, 32.989281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508857, -0.726341, 0.462054,
		0.810666, -0.223732, 0.541078,
		-0.289630, 0.649902, 0.702667,
		35.807735, 42.069164, 33.200081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351028, 41.391987, 33.331268>,  <36.010475, 41.614235, 32.708214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351028, 41.391987, 33.331268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042759, 41.619640, 33.445908>,  <35.857796, 41.756233, 33.514690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042759, 41.619640, 33.445908>,  <36.351028, 41.391987, 33.331268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042759, 41.619640, 33.445908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285222, -0.710289, 0.643536,
		0.569830, 0.414213, 0.709734,
		-0.770676, 0.569138, 0.286601,
		35.811558, 41.790382, 33.531887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418652, 41.373520, 34.032276>,  <36.351028, 41.391987, 33.331268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418652, 41.373520, 34.032276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033524, 41.475441, 33.996380>,  <35.802448, 41.536594, 33.974842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033524, 41.475441, 33.996380>,  <36.418652, 41.373520, 34.032276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033524, 41.475441, 33.996380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231010, -0.604377, 0.762472,
		0.140042, 0.754854, 0.640768,
		-0.962820, 0.254802, -0.089741,
		35.744678, 41.551880, 33.969456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212917, 41.095840, 34.633854>,  <36.418652, 41.373520, 34.032276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212917, 41.095840, 34.633854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862583, 41.191730, 34.466312>,  <35.652382, 41.249264, 34.365788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862583, 41.191730, 34.466312>,  <36.212917, 41.095840, 34.633854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862583, 41.191730, 34.466312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475595, -0.576147, 0.664729,
		-0.081969, 0.781400, 0.618623,
		-0.875837, 0.239727, -0.418856,
		35.599831, 41.263649, 34.340656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761875, 41.349934, 35.253418>,  <36.212917, 41.095840, 34.633854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761875, 41.349934, 35.253418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553474, 41.229240, 34.934040>,  <35.428432, 41.156826, 34.742413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.553474, 41.229240, 34.934040>,  <35.761875, 41.349934, 35.253418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553474, 41.229240, 34.934040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521518, -0.627994, 0.577618,
		-0.675704, 0.717344, 0.169828,
		-0.521002, -0.301730, -0.798446,
		35.397175, 41.138721, 34.694508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085129, 41.244701, 35.479996>,  <35.761875, 41.349934, 35.253418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085129, 41.244701, 35.479996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081436, 41.030479, 35.142216>,  <35.079220, 40.901947, 34.939548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081436, 41.030479, 35.142216>,  <35.085129, 41.244701, 35.479996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081436, 41.030479, 35.142216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621962, -0.658180, 0.424220,
		-0.782993, 0.529132, -0.327019,
		-0.009231, -0.535555, -0.844450,
		35.078667, 40.869812, 34.888882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442013, 41.046028, 35.335102>,  <35.085129, 41.244701, 35.479996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442013, 41.046028, 35.335102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649567, 40.775238, 35.126308>,  <34.774097, 40.612766, 35.001030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.649567, 40.775238, 35.126308>,  <34.442013, 41.046028, 35.335102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649567, 40.775238, 35.126308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533424, -0.733565, 0.421118,
		-0.667996, 0.059930, -0.741747,
		0.518883, -0.676972, -0.521987,
		34.805229, 40.572147, 34.969711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000225, 40.442642, 35.258068>,  <34.442013, 41.046028, 35.335102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000225, 40.442642, 35.258068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331512, 40.242748, 35.156616>,  <34.530285, 40.122810, 35.095745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331512, 40.242748, 35.156616>,  <34.000225, 40.442642, 35.258068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331512, 40.242748, 35.156616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401987, -0.845094, 0.352452,
		-0.390471, -0.189951, -0.900806,
		0.828214, -0.499734, -0.253626,
		34.579975, 40.092827, 35.080528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.778534, 39.761528, 35.018574>,  <34.000225, 40.442642, 35.258068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.778534, 39.761528, 35.018574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169796, 39.712631, 35.085831>,  <34.404552, 39.683292, 35.126186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169796, 39.712631, 35.085831>,  <33.778534, 39.761528, 35.018574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169796, 39.712631, 35.085831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183792, -0.886481, 0.424703,
		0.097140, -0.446328, -0.889581,
		0.978153, -0.122242, 0.168145,
		34.463242, 39.675957, 35.136272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887398, 39.028515, 34.786591>,  <33.778534, 39.761528, 35.018574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887398, 39.028515, 34.786591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190769, 39.117062, 35.031796>,  <34.372791, 39.170189, 35.178917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190769, 39.117062, 35.031796>,  <33.887398, 39.028515, 34.786591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190769, 39.117062, 35.031796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141062, -0.862509, 0.485983,
		0.636308, -0.455056, -0.622925,
		0.758428, 0.221364, 0.613013,
		34.418297, 39.183472, 35.215698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347794, 38.394867, 34.928654>,  <33.887398, 39.028515, 34.786591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347794, 38.394867, 34.928654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414635, 38.641117, 35.236702>,  <34.454739, 38.788868, 35.421532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414635, 38.641117, 35.236702>,  <34.347794, 38.394867, 34.928654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414635, 38.641117, 35.236702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093921, -0.767607, 0.634002,
		0.981456, -0.178271, -0.070446,
		0.167099, 0.615629, 0.770116,
		34.464764, 38.825806, 35.467735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987118, 38.047428, 35.368973>,  <34.347794, 38.394867, 34.928654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987118, 38.047428, 35.368973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767658, 38.277340, 35.611828>,  <34.635983, 38.415287, 35.757542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767658, 38.277340, 35.611828>,  <34.987118, 38.047428, 35.368973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767658, 38.277340, 35.611828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135513, -0.655455, 0.742977,
		0.825000, 0.489906, 0.281722,
		-0.548645, 0.574779, 0.607139,
		34.603065, 38.449772, 35.793968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265018, 37.978661, 36.033539>,  <34.987118, 38.047428, 35.368973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265018, 37.978661, 36.033539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912380, 38.149147, 36.114662>,  <34.700798, 38.251438, 36.163338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912380, 38.149147, 36.114662>,  <35.265018, 37.978661, 36.033539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912380, 38.149147, 36.114662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135760, -0.640483, 0.755877,
		0.452068, 0.638841, 0.622508,
		-0.881592, 0.426220, 0.202813,
		34.647903, 38.277012, 36.175507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578541, 38.502224, 36.453167>,  <35.265018, 37.978661, 36.033539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578541, 38.502224, 36.453167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872856, 38.378895, 36.694347>,  <36.049446, 38.304897, 36.839054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872856, 38.378895, 36.694347>,  <35.578541, 38.502224, 36.453167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872856, 38.378895, 36.694347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659001, 0.531047, -0.532641,
		-0.155971, 0.789257, 0.593924,
		0.735792, -0.308320, 0.602950,
		36.093594, 38.286400, 36.875233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970314, 39.180618, 36.753918>,  <35.578541, 38.502224, 36.453167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970314, 39.180618, 36.753918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221333, 38.873005, 36.802536>,  <36.371944, 38.688438, 36.831707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221333, 38.873005, 36.802536>,  <35.970314, 39.180618, 36.753918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221333, 38.873005, 36.802536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723504, 0.518334, -0.455930,
		0.287624, 0.374057, 0.881677,
		0.627547, -0.769033, 0.121546,
		36.409595, 38.642296, 36.839001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647743, 39.437191, 36.957901>,  <35.970314, 39.180618, 36.753918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647743, 39.437191, 36.957901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712803, 39.076405, 36.797897>,  <36.751839, 38.859932, 36.701897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.712803, 39.076405, 36.797897>,  <36.647743, 39.437191, 36.957901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712803, 39.076405, 36.797897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627779, 0.407364, -0.663286,
		0.761208, -0.143229, 0.632494,
		0.162654, -0.901965, -0.400005,
		36.761600, 38.805817, 36.677895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359207, 39.330467, 36.894150>,  <36.647743, 39.437191, 36.957901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359207, 39.330467, 36.894150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182823, 39.086098, 36.631142>,  <37.076992, 38.939476, 36.473339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.182823, 39.086098, 36.631142>,  <37.359207, 39.330467, 36.894150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182823, 39.086098, 36.631142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593309, 0.351276, -0.724285,
		0.673450, -0.709494, 0.207565,
		-0.440963, -0.610920, -0.657516,
		37.050533, 38.902821, 36.433887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798561, 38.850189, 36.617558>,  <37.359207, 39.330467, 36.894150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798561, 38.850189, 36.617558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519180, 38.875076, 36.332378>,  <37.351551, 38.890007, 36.161270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519180, 38.875076, 36.332378>,  <37.798561, 38.850189, 36.617558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519180, 38.875076, 36.332378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704273, 0.236747, -0.669291,
		0.127148, -0.969577, -0.209173,
		-0.698450, 0.062216, -0.712949,
		37.309647, 38.893742, 36.118492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063099, 38.501888, 35.970558>,  <37.798561, 38.850189, 36.617558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063099, 38.501888, 35.970558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776184, 38.754524, 35.852856>,  <37.604034, 38.906105, 35.782234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776184, 38.754524, 35.852856>,  <38.063099, 38.501888, 35.970558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776184, 38.754524, 35.852856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486288, 0.151317, -0.860597,
		-0.499018, -0.760393, -0.415673,
		-0.717290, 0.631590, -0.294260,
		37.560997, 38.944000, 35.764576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225479, 38.555759, 35.296932>,  <38.063099, 38.501888, 35.970558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225479, 38.555759, 35.296932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951443, 38.846729, 35.312450>,  <37.787022, 39.021313, 35.321762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951443, 38.846729, 35.312450>,  <38.225479, 38.555759, 35.296932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951443, 38.846729, 35.312450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345293, 0.371173, -0.861976,
		-0.641426, -0.577132, -0.505461,
		-0.685087, 0.727427, 0.038800,
		37.745918, 39.064957, 35.324089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910709, 38.477249, 34.721889>,  <38.225479, 38.555759, 35.296932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910709, 38.477249, 34.721889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866909, 38.865490, 34.807621>,  <37.840630, 39.098434, 34.859062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.866909, 38.865490, 34.807621>,  <37.910709, 38.477249, 34.721889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.866909, 38.865490, 34.807621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505300, 0.240046, -0.828885,
		-0.855968, 0.017537, -0.516731,
		-0.109503, 0.970603, 0.214334,
		37.834057, 39.156670, 34.871922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768467, 38.824276, 34.072708>,  <37.910709, 38.477249, 34.721889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768467, 38.824276, 34.072708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904270, 39.105259, 34.322922>,  <37.985752, 39.273849, 34.473049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.904270, 39.105259, 34.322922>,  <37.768467, 38.824276, 34.072708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904270, 39.105259, 34.322922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580643, 0.366681, -0.726910,
		-0.739992, 0.610004, -0.283384,
		0.339507, 0.702453, 0.625536,
		38.006123, 39.315994, 34.510582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676830, 39.441463, 33.754784>,  <37.768467, 38.824276, 34.072708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676830, 39.441463, 33.754784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933285, 39.557198, 34.039101>,  <38.087158, 39.626640, 34.209690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933285, 39.557198, 34.039101>,  <37.676830, 39.441463, 33.754784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933285, 39.557198, 34.039101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550192, 0.472402, -0.688567,
		-0.535011, 0.832538, 0.143681,
		0.641133, 0.289339, 0.710796,
		38.125626, 39.644001, 34.252338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877766, 40.159367, 33.697918>,  <37.676830, 39.441463, 33.754784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877766, 40.159367, 33.697918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172905, 39.983013, 33.902348>,  <38.349987, 39.877201, 34.025005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172905, 39.983013, 33.902348>,  <37.877766, 40.159367, 33.697918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172905, 39.983013, 33.902348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674913, 0.472456, -0.566814,
		0.008438, 0.763156, 0.646159,
		0.737849, -0.440884, 0.511077,
		38.394260, 39.850746, 34.055672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254818, 40.669773, 34.010082>,  <37.877766, 40.159367, 33.697918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254818, 40.669773, 34.010082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499012, 40.353012, 34.015656>,  <38.645531, 40.162956, 34.019001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499012, 40.353012, 34.015656>,  <38.254818, 40.669773, 34.010082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499012, 40.353012, 34.015656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721627, 0.548889, -0.421872,
		0.326433, 0.267604, 0.906548,
		0.610489, -0.791902, 0.013935,
		38.682159, 40.115440, 34.019836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897888, 40.897118, 34.330818>,  <38.254818, 40.669773, 34.010082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897888, 40.897118, 34.330818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964046, 40.592888, 34.079685>,  <39.003742, 40.410351, 33.929005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964046, 40.592888, 34.079685>,  <38.897888, 40.897118, 34.330818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964046, 40.592888, 34.079685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718506, 0.528999, -0.451562,
		0.675569, -0.376417, 0.633969,
		0.165393, -0.760573, -0.627833,
		39.013664, 40.364716, 33.891335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642044, 40.950863, 34.223171>,  <38.897888, 40.897118, 34.330818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642044, 40.950863, 34.223171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484188, 40.715614, 33.940788>,  <39.389477, 40.574463, 33.771358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484188, 40.715614, 33.940788>,  <39.642044, 40.950863, 34.223171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484188, 40.715614, 33.940788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493677, 0.512279, -0.702747,
		0.774949, -0.625842, 0.088180,
		-0.394636, -0.588125, -0.705954,
		39.365799, 40.539177, 33.729004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199093, 40.955624, 33.730579>,  <39.642044, 40.950863, 34.223171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199093, 40.955624, 33.730579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892994, 40.795589, 33.528854>,  <39.709335, 40.699570, 33.407818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.892994, 40.795589, 33.528854>,  <40.199093, 40.955624, 33.730579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892994, 40.795589, 33.528854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311963, 0.454792, -0.834172,
		0.563101, -0.795671, -0.223213,
		-0.765242, -0.400089, -0.504314,
		39.663422, 40.675564, 33.377560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592209, 40.638035, 33.179893>,  <40.199093, 40.955624, 33.730579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592209, 40.638035, 33.179893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206081, 40.676163, 33.082664>,  <39.974407, 40.699039, 33.024326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.206081, 40.676163, 33.082664>,  <40.592209, 40.638035, 33.179893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206081, 40.676163, 33.082664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259458, 0.454183, -0.852291,
		0.029158, -0.885795, -0.463161,
		-0.965314, 0.095320, -0.243069,
		39.916489, 40.704758, 33.009743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470634, 40.379299, 32.493927>,  <40.592209, 40.638035, 33.179893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470634, 40.379299, 32.493927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164078, 40.625393, 32.567825>,  <39.980145, 40.773048, 32.612164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164078, 40.625393, 32.567825>,  <40.470634, 40.379299, 32.493927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164078, 40.625393, 32.567825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221247, 0.522807, -0.823239,
		-0.603074, -0.590047, -0.536793,
		-0.766389, 0.615238, 0.184745,
		39.934162, 40.809963, 32.623249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109898, 40.544762, 31.798378>,  <40.470634, 40.379299, 32.493927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109898, 40.544762, 31.798378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036587, 40.852600, 32.043041>,  <39.992599, 41.037304, 32.189838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036587, 40.852600, 32.043041>,  <40.109898, 40.544762, 31.798378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036587, 40.852600, 32.043041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275261, 0.637484, -0.719615,
		-0.943737, 0.036474, -0.328679,
		-0.183280, 0.769600, 0.611657,
		39.981602, 41.083481, 32.226540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742100, 41.097359, 31.321478>,  <40.109898, 40.544762, 31.798378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742100, 41.097359, 31.321478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872902, 41.257351, 31.663958>,  <39.951385, 41.353348, 31.869446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872902, 41.257351, 31.663958>,  <39.742100, 41.097359, 31.321478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872902, 41.257351, 31.663958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230399, 0.844927, -0.482715,
		-0.916505, 0.355119, 0.184143,
		0.327009, 0.399985, 0.856199,
		39.971004, 41.377346, 31.920818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458485, 41.742023, 31.326157>,  <39.742100, 41.097359, 31.321478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458485, 41.742023, 31.326157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760265, 41.748615, 31.588617>,  <39.941334, 41.752571, 31.746094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.760265, 41.748615, 31.588617>,  <39.458485, 41.742023, 31.326157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.760265, 41.748615, 31.588617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273981, 0.900519, -0.337638,
		-0.596441, 0.434504, 0.674881,
		0.754449, 0.016477, 0.656152,
		39.986599, 41.753559, 31.785463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349255, 42.348316, 31.641777>,  <39.458485, 41.742023, 31.326157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349255, 42.348316, 31.641777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730988, 42.266872, 31.729218>,  <39.960030, 42.218006, 31.781683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730988, 42.266872, 31.729218>,  <39.349255, 42.348316, 31.641777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730988, 42.266872, 31.729218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285245, 0.838508, -0.464263,
		-0.088772, 0.505418, 0.858296,
		0.954335, -0.203611, 0.218603,
		40.017288, 42.205788, 31.794798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633282, 43.003860, 32.016914>,  <39.349255, 42.348316, 31.641777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633282, 43.003860, 32.016914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950008, 42.814285, 31.862818>,  <40.140045, 42.700539, 31.770361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.950008, 42.814285, 31.862818>,  <39.633282, 43.003860, 32.016914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950008, 42.814285, 31.862818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262332, 0.833516, -0.486244,
		0.551555, 0.283954, 0.784320,
		0.791814, -0.473942, -0.385239,
		40.187553, 42.672104, 31.747246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391403, 43.452850, 32.092319>,  <39.633282, 43.003860, 32.016914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391403, 43.452850, 32.092319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419018, 43.181561, 31.799679>,  <40.435585, 43.018787, 31.624094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.419018, 43.181561, 31.799679>,  <40.391403, 43.452850, 32.092319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419018, 43.181561, 31.799679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407097, 0.688666, -0.600009,
		0.910772, -0.256411, 0.323647,
		0.069036, -0.678227, -0.731602,
		40.439728, 42.978092, 31.580198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.055649, 43.504066, 31.786753>,  <40.391403, 43.452850, 32.092319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.055649, 43.504066, 31.786753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866013, 43.316784, 31.488483>,  <40.752232, 43.204414, 31.309523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866013, 43.316784, 31.488483>,  <41.055649, 43.504066, 31.786753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866013, 43.316784, 31.488483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465292, 0.585757, -0.663620,
		0.747492, -0.661569, -0.059849,
		-0.474088, -0.468204, -0.745672,
		40.723785, 43.176323, 31.264782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567379, 43.611317, 31.343435>,  <41.055649, 43.504066, 31.786753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567379, 43.611317, 31.343435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251667, 43.485081, 31.132748>,  <41.062241, 43.409340, 31.006334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251667, 43.485081, 31.132748>,  <41.567379, 43.611317, 31.343435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251667, 43.485081, 31.132748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269150, 0.593192, -0.758737,
		0.551890, -0.740628, -0.383259,
		-0.789288, -0.315585, -0.526717,
		41.014881, 43.390404, 30.974731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820564, 43.410294, 30.649519>,  <41.567379, 43.611317, 31.343435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820564, 43.410294, 30.649519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433220, 43.508457, 30.631409>,  <41.200813, 43.567356, 30.620543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.433220, 43.508457, 30.631409>,  <41.820564, 43.410294, 30.649519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433220, 43.508457, 30.631409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164072, 0.489396, -0.856488,
		-0.188035, -0.836818, -0.514177,
		-0.968361, 0.245412, -0.045274,
		41.142712, 43.582081, 30.617826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692253, 43.422607, 29.984472>,  <41.820564, 43.410294, 30.649519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692253, 43.422607, 29.984472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405788, 43.663361, 30.125805>,  <41.233910, 43.807816, 30.210604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.405788, 43.663361, 30.125805>,  <41.692253, 43.422607, 29.984472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405788, 43.663361, 30.125805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031770, 0.533842, -0.844987,
		-0.697211, -0.593922, -0.401439,
		-0.716162, 0.601888, 0.353332,
		41.190941, 43.843925, 30.231804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250889, 43.365448, 29.434483>,  <41.692253, 43.422607, 29.984472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250889, 43.365448, 29.434483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196632, 43.691467, 29.659801>,  <41.164078, 43.887077, 29.794992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196632, 43.691467, 29.659801>,  <41.250889, 43.365448, 29.434483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196632, 43.691467, 29.659801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206539, 0.579323, -0.788497,
		-0.968990, 0.009387, -0.246920,
		-0.135645, 0.815044, 0.563297,
		41.155937, 43.935982, 29.828791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942062, 43.831528, 29.016445>,  <41.250889, 43.365448, 29.434483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942062, 43.831528, 29.016445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121555, 44.054054, 29.296202>,  <41.229252, 44.187572, 29.464056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121555, 44.054054, 29.296202>,  <40.942062, 43.831528, 29.016445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121555, 44.054054, 29.296202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334786, 0.620969, -0.708743,
		-0.828587, 0.552182, 0.092400,
		0.448733, 0.556321, 0.699390,
		41.256176, 44.220951, 29.506018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770863, 44.548386, 28.837374>,  <40.942062, 43.831528, 29.016445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770863, 44.548386, 28.837374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093052, 44.565266, 29.073822>,  <41.286366, 44.575394, 29.215691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093052, 44.565266, 29.073822>,  <40.770863, 44.548386, 28.837374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093052, 44.565266, 29.073822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395114, 0.705177, -0.588736,
		-0.441691, 0.707774, 0.551330,
		0.805477, 0.042201, 0.591122,
		41.334694, 44.577927, 29.251160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911591, 45.249405, 28.889202>,  <40.770863, 44.548386, 28.837374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911591, 45.249405, 28.889202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243824, 45.070820, 29.022352>,  <41.443165, 44.963669, 29.102243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243824, 45.070820, 29.022352>,  <40.911591, 45.249405, 28.889202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243824, 45.070820, 29.022352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551794, 0.579031, -0.600205,
		0.075222, 0.682199, 0.727287,
		0.830581, -0.446462, 0.332878,
		41.493000, 44.936882, 29.122215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.397999, 45.749508, 28.923023>,  <40.911591, 45.249405, 28.889202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.397999, 45.749508, 28.923023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623901, 45.419468, 28.916641>,  <41.759441, 45.221443, 28.912811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623901, 45.419468, 28.916641>,  <41.397999, 45.749508, 28.923023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623901, 45.419468, 28.916641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642134, 0.451500, -0.619526,
		0.518377, 0.339635, 0.784814,
		0.564756, -0.825104, -0.015956,
		41.793327, 45.171936, 28.911854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033195, 46.010269, 28.903831>,  <41.397999, 45.749508, 28.923023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033195, 46.010269, 28.903831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087597, 45.628479, 28.797646>,  <42.120239, 45.399403, 28.733934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087597, 45.628479, 28.797646>,  <42.033195, 46.010269, 28.903831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087597, 45.628479, 28.797646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620174, 0.290984, -0.728501,
		0.772585, -0.065554, 0.631518,
		0.136006, -0.954480, -0.265465,
		42.128399, 45.342136, 28.718006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710445, 45.900894, 28.964382>,  <42.033195, 46.010269, 28.903831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710445, 45.900894, 28.964382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523392, 45.669628, 28.696939>,  <42.411160, 45.530869, 28.536474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523392, 45.669628, 28.696939>,  <42.710445, 45.900894, 28.964382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523392, 45.669628, 28.696939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566410, 0.384703, -0.728823,
		0.678599, -0.719530, 0.147580,
		-0.467636, -0.578169, -0.668609,
		42.383102, 45.496178, 28.496357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161354, 45.556137, 28.519085>,  <42.710445, 45.900894, 28.964382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161354, 45.556137, 28.519085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841209, 45.514015, 28.283009>,  <42.649120, 45.488743, 28.141363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.841209, 45.514015, 28.283009>,  <43.161354, 45.556137, 28.519085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.841209, 45.514015, 28.283009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509507, 0.399316, -0.762200,
		0.315935, -0.910746, -0.265946,
		-0.800367, -0.105304, -0.590190,
		42.601101, 45.482422, 28.105951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.459911, 45.260914, 27.900564>,  <43.161354, 45.556137, 28.519085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.459911, 45.260914, 27.900564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100563, 45.382179, 27.773428>,  <42.884953, 45.454937, 27.697145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.100563, 45.382179, 27.773428>,  <43.459911, 45.260914, 27.900564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100563, 45.382179, 27.773428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403464, 0.283516, -0.869963,
		-0.173625, -0.909787, -0.377017,
		-0.898371, 0.303160, -0.317841,
		42.831051, 45.473125, 27.678076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.400505, 44.951130, 27.195242>,  <43.459911, 45.260914, 27.900564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.400505, 44.951130, 27.195242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156921, 45.267128, 27.223768>,  <43.010773, 45.456726, 27.240885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156921, 45.267128, 27.223768>,  <43.400505, 44.951130, 27.195242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156921, 45.267128, 27.223768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503412, 0.454393, -0.734917,
		-0.612985, -0.411629, -0.674397,
		-0.608954, 0.789993, 0.071317,
		42.974236, 45.504128, 27.245163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072693, 44.608124, 27.097713>,  <43.400505, 44.951130, 27.195242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072693, 44.608124, 27.097713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406258, 44.413662, 26.993216>,  <44.606396, 44.296986, 26.930517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406258, 44.413662, 26.993216>,  <44.072693, 44.608124, 27.097713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406258, 44.413662, 26.993216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227827, -0.734368, 0.639373,
		-0.502684, -0.473661, -0.723156,
		0.833909, -0.486157, -0.261242,
		44.656429, 44.267815, 26.914843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973167, 43.967903, 27.194504>,  <44.072693, 44.608124, 27.097713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973167, 43.967903, 27.194504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369656, 43.920612, 27.170797>,  <44.607548, 43.892239, 27.156574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369656, 43.920612, 27.170797>,  <43.973167, 43.967903, 27.194504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369656, 43.920612, 27.170797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037776, -0.682564, 0.729849,
		-0.126740, -0.721200, -0.681034,
		0.991216, -0.118228, -0.059264,
		44.667019, 43.885143, 27.153019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079990, 43.266315, 27.182299>,  <43.973167, 43.967903, 27.194504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079990, 43.266315, 27.182299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428917, 43.425152, 27.296413>,  <44.638271, 43.520454, 27.364883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428917, 43.425152, 27.296413>,  <44.079990, 43.266315, 27.182299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428917, 43.425152, 27.296413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011618, -0.600144, 0.799808,
		0.488810, -0.694368, -0.528127,
		0.872313, 0.397090, 0.285289,
		44.690609, 43.544277, 27.382000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602718, 42.710381, 27.255537>,  <44.079990, 43.266315, 27.182299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602718, 42.710381, 27.255537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735916, 43.008022, 27.487200>,  <44.815834, 43.186607, 27.626198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735916, 43.008022, 27.487200>,  <44.602718, 42.710381, 27.255537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735916, 43.008022, 27.487200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076166, -0.633428, 0.770044,
		0.939848, -0.212308, -0.267603,
		0.332994, 0.744107, 0.579155,
		44.835815, 43.231255, 27.660946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.248947, 42.491459, 27.615164>,  <44.602718, 42.710381, 27.255537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.248947, 42.491459, 27.615164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098148, 42.802612, 27.816269>,  <45.007668, 42.989304, 27.936932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.098148, 42.802612, 27.816269>,  <45.248947, 42.491459, 27.615164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.098148, 42.802612, 27.816269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000864, -0.542521, 0.840042,
		0.926212, 0.317131, 0.203859,
		-0.377001, 0.777881, 0.502764,
		44.985046, 43.035976, 27.967098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713795, 42.553749, 28.118137>,  <45.248947, 42.491459, 27.615164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713795, 42.553749, 28.118137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368443, 42.725506, 28.224119>,  <45.161232, 42.828560, 28.287708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368443, 42.725506, 28.224119>,  <45.713795, 42.553749, 28.118137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368443, 42.725506, 28.224119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060941, -0.432533, 0.899556,
		0.500865, 0.792803, 0.347271,
		-0.863377, 0.429394, 0.264955,
		45.109428, 42.854324, 28.303606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771252, 42.627911, 28.824858>,  <45.713795, 42.553749, 28.118137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771252, 42.627911, 28.824858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.382118, 42.684105, 28.751253>,  <45.148640, 42.717819, 28.707090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.382118, 42.684105, 28.751253>,  <45.771252, 42.627911, 28.824858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382118, 42.684105, 28.751253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231377, -0.563307, 0.793189,
		0.007774, 0.814217, 0.580508,
		-0.972833, 0.140482, -0.184013,
		45.090267, 42.726250, 28.696049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421532, 42.707165, 29.531414>,  <45.771252, 42.627911, 28.824858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421532, 42.707165, 29.531414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115547, 42.626030, 29.286894>,  <44.931957, 42.577351, 29.140181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.115547, 42.626030, 29.286894>,  <45.421532, 42.707165, 29.531414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.115547, 42.626030, 29.286894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298879, -0.728949, 0.615877,
		-0.570530, 0.653829, 0.496995,
		-0.764962, -0.202835, -0.611303,
		44.886059, 42.565178, 29.103502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.812542, 42.650917, 29.900995>,  <45.421532, 42.707165, 29.531414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.812542, 42.650917, 29.900995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721855, 42.424290, 29.584110>,  <44.667442, 42.288315, 29.393980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721855, 42.424290, 29.584110>,  <44.812542, 42.650917, 29.900995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721855, 42.424290, 29.584110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325559, -0.722522, 0.609896,
		-0.917939, 0.396185, -0.020644,
		-0.226716, -0.566568, -0.792212,
		44.653839, 42.254318, 29.346447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.100079, 42.514862, 29.985981>,  <44.812542, 42.650917, 29.900995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.100079, 42.514862, 29.985981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205109, 42.247669, 29.707457>,  <44.268127, 42.087353, 29.540342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205109, 42.247669, 29.707457>,  <44.100079, 42.514862, 29.985981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205109, 42.247669, 29.707457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484668, -0.715297, 0.503434,
		-0.834358, 0.205294, -0.511567,
		0.262571, -0.667985, -0.696314,
		44.283878, 42.047276, 29.498562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.505077, 42.133423, 29.920164>,  <44.100079, 42.514862, 29.985981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.505077, 42.133423, 29.920164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789909, 41.897282, 29.768154>,  <43.960808, 41.755596, 29.676949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.789909, 41.897282, 29.768154>,  <43.505077, 42.133423, 29.920164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.789909, 41.897282, 29.768154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372969, -0.776654, 0.507645,
		-0.594838, -0.219748, -0.773226,
		0.712083, -0.590356, -0.380024,
		44.003532, 41.720177, 29.654146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219959, 41.497276, 29.599916>,  <43.505077, 42.133423, 29.920164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219959, 41.497276, 29.599916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595802, 41.391682, 29.687054>,  <43.821308, 41.328327, 29.739336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595802, 41.391682, 29.687054>,  <43.219959, 41.497276, 29.599916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595802, 41.391682, 29.687054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337460, -0.820773, 0.460925,
		0.057122, -0.506600, -0.860287,
		0.939605, -0.263984, 0.217841,
		43.877686, 41.312485, 29.752405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180248, 40.809166, 29.453770>,  <43.219959, 41.497276, 29.599916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180248, 40.809166, 29.453770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485519, 40.881527, 29.701908>,  <43.668682, 40.924946, 29.850792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485519, 40.881527, 29.701908>,  <43.180248, 40.809166, 29.453770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485519, 40.881527, 29.701908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324448, -0.722955, 0.609976,
		0.558831, -0.666791, -0.493050,
		0.763179, 0.180904, 0.620348,
		43.714474, 40.935799, 29.888012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.466782, 40.146988, 29.712873>,  <43.180248, 40.809166, 29.453770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.466782, 40.146988, 29.712873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563663, 40.443565, 29.963182>,  <43.621792, 40.621513, 30.113367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563663, 40.443565, 29.963182>,  <43.466782, 40.146988, 29.712873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563663, 40.443565, 29.963182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312763, -0.550877, 0.773766,
		0.918430, -0.383131, 0.098471,
		0.242208, 0.741448, 0.625771,
		43.636326, 40.666000, 30.150913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689014, 39.820103, 30.292328>,  <43.466782, 40.146988, 29.712873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689014, 39.820103, 30.292328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589123, 40.185108, 30.421919>,  <43.529186, 40.404110, 30.499674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.589123, 40.185108, 30.421919>,  <43.689014, 39.820103, 30.292328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.589123, 40.185108, 30.421919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410014, -0.402752, 0.818340,
		0.877225, 0.071530, 0.474721,
		-0.249730, 0.912510, 0.323976,
		43.514202, 40.458862, 30.519112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878994, 39.862434, 31.055576>,  <43.689014, 39.820103, 30.292328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878994, 39.862434, 31.055576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607750, 40.155083, 31.027615>,  <43.445004, 40.330673, 31.010838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.607750, 40.155083, 31.027615>,  <43.878994, 39.862434, 31.055576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.607750, 40.155083, 31.027615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451361, -0.339500, 0.825235,
		0.580030, 0.591155, 0.560447,
		-0.678114, 0.731625, -0.069904,
		43.404316, 40.374569, 31.006643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807732, 40.102196, 31.719028>,  <43.878994, 39.862434, 31.055576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807732, 40.102196, 31.719028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474869, 40.219887, 31.531010>,  <43.275150, 40.290501, 31.418198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474869, 40.219887, 31.531010>,  <43.807732, 40.102196, 31.719028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474869, 40.219887, 31.531010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536401, -0.212062, 0.816886,
		0.140669, 0.931913, 0.334291,
		-0.832157, 0.294225, -0.470049,
		43.225220, 40.308155, 31.389996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329361, 40.443855, 32.179756>,  <43.807732, 40.102196, 31.719028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329361, 40.443855, 32.179756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069427, 40.352936, 31.889637>,  <42.913467, 40.298386, 31.715567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.069427, 40.352936, 31.889637>,  <43.329361, 40.443855, 32.179756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.069427, 40.352936, 31.889637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712742, -0.149263, 0.685361,
		-0.264040, 0.962319, -0.065008,
		-0.649832, -0.227297, -0.725296,
		42.874477, 40.284748, 31.672049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686420, 40.876762, 32.303688>,  <43.329361, 40.443855, 32.179756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686420, 40.876762, 32.303688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604538, 40.553295, 32.083088>,  <42.555408, 40.359215, 31.950727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.604538, 40.553295, 32.083088>,  <42.686420, 40.876762, 32.303688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.604538, 40.553295, 32.083088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736321, -0.244009, 0.631103,
		-0.644922, 0.535276, -0.545486,
		-0.204711, -0.808665, -0.551502,
		42.543125, 40.310696, 31.917637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.086605, 40.729347, 32.493896>,  <42.686420, 40.876762, 32.303688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.086605, 40.729347, 32.493896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186058, 40.385120, 32.316086>,  <42.245728, 40.178585, 32.209400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.186058, 40.385120, 32.316086>,  <42.086605, 40.729347, 32.493896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186058, 40.385120, 32.316086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586454, -0.499000, 0.638021,
		-0.770879, 0.102062, -0.628752,
		0.248629, -0.860571, -0.444524,
		42.260647, 40.126949, 32.182728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423363, 40.525005, 32.357307>,  <42.086605, 40.729347, 32.493896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423363, 40.525005, 32.357307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665924, 40.206944, 32.358246>,  <41.811462, 40.016106, 32.358810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665924, 40.206944, 32.358246>,  <41.423363, 40.525005, 32.357307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665924, 40.206944, 32.358246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636749, -0.483830, 0.600383,
		-0.476244, -0.365591, -0.799709,
		0.606418, -0.795143, 0.002369,
		41.847843, 39.968399, 32.358952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000935, 39.915535, 32.243412>,  <41.423363, 40.525005, 32.357307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000935, 39.915535, 32.243412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341091, 39.781086, 32.405323>,  <41.545185, 39.700417, 32.502472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341091, 39.781086, 32.405323>,  <41.000935, 39.915535, 32.243412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341091, 39.781086, 32.405323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526136, -0.538983, 0.657783,
		-0.002925, -0.772346, -0.635195,
		0.850396, -0.336123, 0.404782,
		41.596210, 39.680248, 32.526756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.829212, 39.229099, 32.404362>,  <41.000935, 39.915535, 32.243412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.829212, 39.229099, 32.404362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160255, 39.281364, 32.622719>,  <41.358883, 39.312725, 32.753731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160255, 39.281364, 32.622719>,  <40.829212, 39.229099, 32.404362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160255, 39.281364, 32.622719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406696, -0.530702, 0.743609,
		0.386865, -0.837426, -0.386073,
		0.827607, 0.130662, 0.545888,
		41.408539, 39.320564, 32.786484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989410, 38.624840, 32.712250>,  <40.829212, 39.229099, 32.404362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989410, 38.624840, 32.712250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193092, 38.884594, 32.938175>,  <41.315300, 39.040447, 33.073730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193092, 38.884594, 32.938175>,  <40.989410, 38.624840, 32.712250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193092, 38.884594, 32.938175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270068, -0.502554, 0.821281,
		0.817175, -0.570737, -0.080525,
		0.509204, 0.649383, 0.564812,
		41.345852, 39.079411, 33.107620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285648, 38.073456, 33.203133>,  <40.989410, 38.624840, 32.712250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285648, 38.073456, 33.203133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277283, 38.442528, 33.357136>,  <41.272263, 38.663971, 33.449539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.277283, 38.442528, 33.357136>,  <41.285648, 38.073456, 33.203133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.277283, 38.442528, 33.357136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489552, -0.345220, 0.800726,
		0.871723, -0.171735, 0.458918,
		-0.020915, 0.922676, 0.385010,
		41.271008, 38.719330, 33.472637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560551, 38.011723, 33.876411>,  <41.285648, 38.073456, 33.203133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560551, 38.011723, 33.876411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345974, 38.349258, 33.881710>,  <41.217228, 38.551781, 33.884888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.345974, 38.349258, 33.881710>,  <41.560551, 38.011723, 33.876411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345974, 38.349258, 33.881710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302791, -0.207089, 0.930286,
		0.787751, 0.495030, 0.366597,
		-0.536438, 0.843836, 0.013244,
		41.185043, 38.602409, 33.885685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590267, 38.378201, 34.601109>,  <41.560551, 38.011723, 33.876411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590267, 38.378201, 34.601109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279140, 38.572170, 34.441181>,  <41.092464, 38.688553, 34.345226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279140, 38.572170, 34.441181>,  <41.590267, 38.378201, 34.601109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279140, 38.572170, 34.441181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499516, -0.090900, 0.861522,
		0.381429, 0.869820, 0.312931,
		-0.777815, 0.484923, -0.399817,
		41.045795, 38.717648, 34.321236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345856, 38.814228, 35.083191>,  <41.590267, 38.378201, 34.601109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345856, 38.814228, 35.083191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031803, 38.756329, 34.842323>,  <40.843372, 38.721588, 34.697803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031803, 38.756329, 34.842323>,  <41.345856, 38.814228, 35.083191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031803, 38.756329, 34.842323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586582, -0.138163, 0.798018,
		-0.198707, 0.979776, 0.023572,
		-0.785135, -0.144745, -0.602173,
		40.796261, 38.712906, 34.661671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746727, 39.238407, 35.328743>,  <41.345856, 38.814228, 35.083191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746727, 39.238407, 35.328743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586205, 38.954235, 35.097488>,  <40.489891, 38.783730, 34.958736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586205, 38.954235, 35.097488>,  <40.746727, 39.238407, 35.328743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586205, 38.954235, 35.097488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624348, -0.249658, 0.740176,
		-0.670180, 0.657995, -0.343367,
		-0.401308, -0.710432, -0.578134,
		40.465813, 38.741104, 34.924049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048267, 39.194336, 35.562595>,  <40.746727, 39.238407, 35.328743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048267, 39.194336, 35.562595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078960, 38.859272, 35.346283>,  <40.097378, 38.658234, 35.216496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078960, 38.859272, 35.346283>,  <40.048267, 39.194336, 35.562595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078960, 38.859272, 35.346283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704136, -0.429529, 0.565418,
		-0.705907, 0.337398, -0.622782,
		0.076732, -0.837656, -0.540782,
		40.101978, 38.607975, 35.184048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369556, 38.825535, 35.395565>,  <40.048267, 39.194336, 35.562595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369556, 38.825535, 35.395565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639194, 38.530399, 35.381752>,  <39.800976, 38.353317, 35.373463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639194, 38.530399, 35.381752>,  <39.369556, 38.825535, 35.395565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639194, 38.530399, 35.381752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566816, -0.546699, 0.616312,
		-0.473618, -0.395877, -0.786745,
		0.674096, -0.737836, -0.034537,
		39.841423, 38.309048, 35.371391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970081, 38.096031, 35.321995>,  <39.369556, 38.825535, 35.395565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970081, 38.096031, 35.321995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332333, 38.020676, 35.473965>,  <39.549683, 37.975460, 35.565147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.332333, 38.020676, 35.473965>,  <38.970081, 38.096031, 35.321995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332333, 38.020676, 35.473965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368328, -0.793450, 0.484532,
		0.210173, -0.578744, -0.787961,
		0.905628, -0.188392, 0.379929,
		39.604019, 37.964157, 35.587944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886189, 37.412491, 35.503632>,  <38.970081, 38.096031, 35.321995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886189, 37.412491, 35.503632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208290, 37.503490, 35.722649>,  <39.401550, 37.558090, 35.854061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208290, 37.503490, 35.722649>,  <38.886189, 37.412491, 35.503632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208290, 37.503490, 35.722649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269837, -0.681682, 0.680072,
		0.527968, -0.695380, -0.487541,
		0.805256, 0.227500, 0.547546,
		39.449867, 37.571739, 35.886913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209358, 36.784763, 35.691296>,  <38.886189, 37.412491, 35.503632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209358, 36.784763, 35.691296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305233, 37.053680, 35.971458>,  <39.362759, 37.215031, 36.139557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305233, 37.053680, 35.971458>,  <39.209358, 36.784763, 35.691296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305233, 37.053680, 35.971458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112702, -0.697290, 0.707874,
		0.964287, -0.248603, -0.091360,
		0.239684, 0.672297, 0.700406,
		39.377136, 37.255371, 36.181580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593216, 36.370022, 36.119728>,  <39.209358, 36.784763, 35.691296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593216, 36.370022, 36.119728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530720, 36.688015, 36.354195>,  <39.493221, 36.878811, 36.494877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.530720, 36.688015, 36.354195>,  <39.593216, 36.370022, 36.119728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530720, 36.688015, 36.354195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088697, -0.602352, 0.793287,
		0.983728, 0.071955, 0.164626,
		-0.156244, 0.794981, 0.586168,
		39.483849, 36.926510, 36.530045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985622, 36.301151, 36.712776>,  <39.593216, 36.370022, 36.119728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985622, 36.301151, 36.712776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716846, 36.571701, 36.833443>,  <39.555580, 36.734032, 36.905842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716846, 36.571701, 36.833443>,  <39.985622, 36.301151, 36.712776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716846, 36.571701, 36.833443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113859, -0.496832, 0.860345,
		0.731797, 0.543756, 0.410856,
		-0.671944, 0.676378, 0.301668,
		39.515263, 36.774616, 36.923943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149105, 36.373356, 37.436375>,  <39.985622, 36.301151, 36.712776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149105, 36.373356, 37.436375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775658, 36.504982, 37.379704>,  <39.551590, 36.583958, 37.345699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.775658, 36.504982, 37.379704>,  <40.149105, 36.373356, 37.436375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775658, 36.504982, 37.379704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293364, -0.475144, 0.829564,
		0.205665, 0.816059, 0.540139,
		-0.933617, 0.329069, -0.141682,
		39.495571, 36.603703, 37.337200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935242, 36.472534, 38.013584>,  <40.149105, 36.373356, 37.436375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935242, 36.472534, 38.013584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577572, 36.445236, 37.836590>,  <39.362968, 36.428856, 37.730392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577572, 36.445236, 37.836590>,  <39.935242, 36.472534, 38.013584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577572, 36.445236, 37.836590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348082, -0.515628, 0.782921,
		-0.281590, 0.854090, 0.437306,
		-0.894173, -0.068245, -0.442489,
		39.309319, 36.424763, 37.703842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518890, 36.580406, 38.524208>,  <39.935242, 36.472534, 38.013584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518890, 36.580406, 38.524208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268635, 36.432602, 38.249386>,  <39.118481, 36.343918, 38.084492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268635, 36.432602, 38.249386>,  <39.518890, 36.580406, 38.524208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268635, 36.432602, 38.249386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342669, -0.661025, 0.667551,
		-0.700826, 0.653076, 0.286941,
		-0.625636, -0.369512, -0.687052,
		39.080944, 36.321747, 38.043270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923508, 36.577976, 38.845367>,  <39.518890, 36.580406, 38.524208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923508, 36.577976, 38.845367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882500, 36.300762, 38.559937>,  <38.857895, 36.134434, 38.388680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882500, 36.300762, 38.559937>,  <38.923508, 36.577976, 38.845367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882500, 36.300762, 38.559937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409277, -0.624433, 0.665263,
		-0.906632, 0.360256, -0.219624,
		-0.102525, -0.693036, -0.713576,
		38.851742, 36.092850, 38.345863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199535, 36.362362, 38.917103>,  <38.923508, 36.577976, 38.845367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199535, 36.362362, 38.917103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416870, 36.074402, 38.744347>,  <38.547272, 35.901627, 38.640694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.416870, 36.074402, 38.744347>,  <38.199535, 36.362362, 38.917103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416870, 36.074402, 38.744347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333378, -0.657175, 0.676003,
		-0.770483, -0.223313, -0.597065,
		0.543337, -0.719897, -0.431895,
		38.579872, 35.858433, 38.614777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829895, 35.802834, 39.094070>,  <38.199535, 36.362362, 38.917103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829895, 35.802834, 39.094070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165520, 35.630272, 38.961487>,  <38.366894, 35.526737, 38.881935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165520, 35.630272, 38.961487>,  <37.829895, 35.802834, 39.094070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165520, 35.630272, 38.961487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181335, -0.796198, 0.577224,
		-0.512925, -0.424221, -0.746287,
		0.839063, -0.431400, -0.331463,
		38.417240, 35.500851, 38.862049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747055, 35.287098, 38.683758>,  <37.829895, 35.802834, 39.094070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747055, 35.287098, 38.683758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116299, 35.192322, 38.804901>,  <38.337845, 35.135456, 38.877586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116299, 35.192322, 38.804901>,  <37.747055, 35.287098, 38.683758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116299, 35.192322, 38.804901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342779, -0.863969, 0.368863,
		0.174259, -0.444315, -0.878759,
		0.923112, -0.236942, 0.302856,
		38.393234, 35.121239, 38.895760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796192, 34.613300, 38.562805>,  <37.747055, 35.287098, 38.683758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796192, 34.613300, 38.562805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116982, 34.634460, 38.800808>,  <38.309456, 34.647156, 38.943611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116982, 34.634460, 38.800808>,  <37.796192, 34.613300, 38.562805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116982, 34.634460, 38.800808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207567, -0.909326, 0.360614,
		0.560135, -0.412708, -0.718276,
		0.801975, 0.052903, 0.595010,
		38.357574, 34.650330, 38.979309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216549, 33.966396, 38.573452>,  <37.796192, 34.613300, 38.562805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216549, 33.966396, 38.573452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346684, 34.149712, 38.904301>,  <38.424763, 34.259701, 39.102810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346684, 34.149712, 38.904301>,  <38.216549, 33.966396, 38.573452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346684, 34.149712, 38.904301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114899, -0.849067, 0.515639,
		0.938593, -0.262790, -0.223573,
		0.325333, 0.458287, 0.827123,
		38.444283, 34.287197, 39.152439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903206, 33.540821, 38.782200>,  <38.216549, 33.966396, 38.573452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903206, 33.540821, 38.782200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714207, 33.726467, 39.081894>,  <38.600807, 33.837856, 39.261711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.714207, 33.726467, 39.081894>,  <38.903206, 33.540821, 38.782200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714207, 33.726467, 39.081894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012382, -0.846531, 0.532195,
		0.881247, 0.260735, 0.394234,
		-0.472494, 0.464114, 0.749232,
		38.572460, 33.865700, 39.306664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348450, 33.449425, 39.315197>,  <38.903206, 33.540821, 38.782200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348450, 33.449425, 39.315197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978642, 33.512871, 39.453819>,  <38.756756, 33.550938, 39.536991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978642, 33.512871, 39.453819>,  <39.348450, 33.449425, 39.315197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978642, 33.512871, 39.453819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058157, -0.839924, 0.539579,
		0.376666, 0.519007, 0.767303,
		-0.924522, 0.158617, 0.346555,
		38.701286, 33.560455, 39.557785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431026, 33.267139, 40.058659>,  <39.348450, 33.449425, 39.315197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431026, 33.267139, 40.058659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045704, 33.270432, 39.951347>,  <38.814510, 33.272408, 39.886963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.045704, 33.270432, 39.951347>,  <39.431026, 33.267139, 40.058659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045704, 33.270432, 39.951347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165342, -0.805564, 0.568972,
		-0.211428, 0.592452, 0.777366,
		-0.963307, 0.008234, -0.268276,
		38.756710, 33.272903, 39.870865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008350, 33.208271, 40.743744>,  <39.431026, 33.267139, 40.058659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008350, 33.208271, 40.743744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778530, 33.061092, 40.451305>,  <38.640636, 32.972786, 40.275841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778530, 33.061092, 40.451305>,  <39.008350, 33.208271, 40.743744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778530, 33.061092, 40.451305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434196, -0.620175, 0.653343,
		-0.693802, 0.692821, 0.196565,
		-0.574555, -0.367943, -0.731099,
		38.606163, 32.950710, 40.231976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249096, 33.004784, 41.466228>,  <39.008350, 33.208271, 40.743744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249096, 33.004784, 41.466228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020977, 33.332905, 41.483463>,  <38.884106, 33.529778, 41.493805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020977, 33.332905, 41.483463>,  <39.249096, 33.004784, 41.466228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020977, 33.332905, 41.483463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735334, -0.533200, 0.418308,
		0.366114, 0.206878, 0.907283,
		-0.570302, 0.820304, 0.043087,
		38.849888, 33.578995, 41.496391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902416, 33.047600, 42.231270>,  <39.249096, 33.004784, 41.466228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902416, 33.047600, 42.231270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703007, 33.183937, 41.912449>,  <38.583359, 33.265739, 41.721157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703007, 33.183937, 41.912449>,  <38.902416, 33.047600, 42.231270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703007, 33.183937, 41.912449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758043, -0.617440, 0.210091,
		-0.420525, 0.708938, 0.566185,
		-0.498527, 0.340844, -0.797055,
		38.553448, 33.286190, 41.673332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206024, 33.160591, 42.373260>,  <38.902416, 33.047600, 42.231270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206024, 33.160591, 42.373260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208733, 33.083862, 41.980698>,  <38.210358, 33.037827, 41.745159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208733, 33.083862, 41.980698>,  <38.206024, 33.160591, 42.373260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208733, 33.083862, 41.980698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706997, -0.694986, 0.130960,
		-0.707184, 0.692964, -0.140325,
		0.006773, -0.191822, -0.981406,
		38.210766, 33.026314, 41.686275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606140, 32.888737, 42.375675>,  <38.206024, 33.160591, 42.373260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606140, 32.888737, 42.375675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730053, 32.802650, 42.005222>,  <37.804401, 32.750999, 41.782951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730053, 32.802650, 42.005222>,  <37.606140, 32.888737, 42.375675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730053, 32.802650, 42.005222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528887, -0.848451, 0.020250,
		-0.790134, 0.483545, -0.376660,
		0.309786, -0.215211, -0.926130,
		37.822990, 32.738087, 41.727383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167538, 32.487415, 42.195976>,  <37.606140, 32.888737, 42.375675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167538, 32.487415, 42.195976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440605, 32.418163, 41.912006>,  <37.604446, 32.376614, 41.741627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.440605, 32.418163, 41.912006>,  <37.167538, 32.487415, 42.195976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440605, 32.418163, 41.912006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375243, -0.916704, -0.137281,
		-0.627022, 0.360111, -0.690770,
		0.682668, -0.173129, -0.709923,
		37.645405, 32.366226, 41.699028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929287, 32.270603, 41.504658>,  <37.167538, 32.487415, 42.195976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929287, 32.270603, 41.504658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294834, 32.126213, 41.578999>,  <37.514164, 32.039577, 41.623604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294834, 32.126213, 41.578999>,  <36.929287, 32.270603, 41.504658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294834, 32.126213, 41.578999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362689, -0.931550, -0.025927,
		0.182489, -0.043713, -0.982236,
		0.913868, -0.360977, 0.185851,
		37.568996, 32.017921, 41.634754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966312, 31.632114, 41.054928>,  <36.929287, 32.270603, 41.504658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966312, 31.632114, 41.054928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215645, 31.583942, 41.363979>,  <37.365242, 31.555038, 41.549412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215645, 31.583942, 41.363979>,  <36.966312, 31.632114, 41.054928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215645, 31.583942, 41.363979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366382, -0.917880, 0.152513,
		0.690816, -0.378144, -0.616264,
		0.623328, -0.120429, 0.772631,
		37.402645, 31.547813, 41.595768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493843, 31.117006, 40.969112>,  <36.966312, 31.632114, 41.054928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493843, 31.117006, 40.969112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417664, 31.149950, 41.360405>,  <37.371956, 31.169716, 41.595181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417664, 31.149950, 41.360405>,  <37.493843, 31.117006, 40.969112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417664, 31.149950, 41.360405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293514, -0.955670, 0.023315,
		0.936791, -0.282686, 0.206181,
		-0.190450, 0.082358, 0.978236,
		37.360527, 31.174658, 41.653877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272804, 30.429800, 41.133545>,  <37.493843, 31.117006, 40.969112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272804, 30.429800, 41.133545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244526, 30.619661, 41.484478>,  <37.227558, 30.733578, 41.695038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244526, 30.619661, 41.484478>,  <37.272804, 30.429800, 41.133545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244526, 30.619661, 41.484478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498250, -0.778752, 0.381171,
		0.864147, -0.410184, 0.291547,
		-0.070693, 0.474651, 0.877330,
		37.223316, 30.762056, 41.747677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435009, 29.977526, 41.672916>,  <37.272804, 30.429800, 41.133545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435009, 29.977526, 41.672916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211437, 30.202116, 41.916996>,  <37.077293, 30.336870, 42.063442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211437, 30.202116, 41.916996>,  <37.435009, 29.977526, 41.672916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211437, 30.202116, 41.916996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407931, -0.826855, 0.387173,
		0.721934, -0.032517, 0.691197,
		-0.558930, 0.561475, 0.610199,
		37.043758, 30.370558, 42.100056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410675, 29.655132, 42.303062>,  <37.435009, 29.977526, 41.672916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410675, 29.655132, 42.303062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071381, 29.866890, 42.296879>,  <36.867805, 29.993944, 42.293167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.071381, 29.866890, 42.296879>,  <37.410675, 29.655132, 42.303062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071381, 29.866890, 42.296879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465997, -0.732149, 0.496795,
		0.251680, 0.428604, 0.867730,
		-0.848236, 0.529393, -0.015461,
		36.816910, 30.025707, 42.292240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137291, 29.546951, 42.908104>,  <37.410675, 29.655132, 42.303062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137291, 29.546951, 42.908104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834717, 29.617737, 42.656235>,  <36.653172, 29.660208, 42.505112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834717, 29.617737, 42.656235>,  <37.137291, 29.546951, 42.908104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834717, 29.617737, 42.656235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442586, -0.847315, 0.293555,
		-0.481587, 0.500741, 0.719258,
		-0.756433, 0.176962, -0.629677,
		36.607788, 29.670826, 42.467331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413223, 29.606585, 43.265678>,  <37.137291, 29.546951, 42.908104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413223, 29.606585, 43.265678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455551, 29.438278, 42.905289>,  <36.480949, 29.337296, 42.689053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455551, 29.438278, 42.905289>,  <36.413223, 29.606585, 43.265678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455551, 29.438278, 42.905289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330607, -0.869408, 0.367190,
		-0.937817, 0.259013, -0.231111,
		0.105823, -0.420764, -0.900977,
		36.487297, 29.312050, 42.634995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348614, 28.819548, 43.010529>,  <36.413223, 29.606585, 43.265678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348614, 28.819548, 43.010529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612152, 28.891500, 42.718346>,  <36.770275, 28.934673, 42.543037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612152, 28.891500, 42.718346>,  <36.348614, 28.819548, 43.010529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612152, 28.891500, 42.718346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601866, 0.708565, -0.368365,
		0.451314, 0.682332, 0.575099,
		0.658842, 0.179884, -0.730458,
		36.809803, 28.945465, 42.499207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785606, 28.402393, 42.712963>,  <36.348614, 28.819548, 43.010529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785606, 28.402393, 42.712963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526146, 28.706827, 42.712994>,  <35.370468, 28.889488, 42.713013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526146, 28.706827, 42.712994>,  <35.785606, 28.402393, 42.712963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526146, 28.706827, 42.712994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698502, 0.595351, -0.397054,
		-0.302238, -0.257497, -0.917795,
		-0.648650, 0.761087, 0.000075,
		35.331551, 28.935154, 42.713017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818783, 28.793600, 42.000374>,  <35.785606, 28.402393, 42.712963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818783, 28.793600, 42.000374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720428, 29.041965, 42.298100>,  <35.661415, 29.190985, 42.476734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720428, 29.041965, 42.298100>,  <35.818783, 28.793600, 42.000374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720428, 29.041965, 42.298100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710468, 0.637815, -0.297366,
		-0.659376, 0.455697, -0.597966,
		-0.245883, 0.620912, 0.744318,
		35.646664, 29.228239, 42.521397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740028, 29.531248, 41.759827>,  <35.818783, 28.793600, 42.000374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740028, 29.531248, 41.759827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871906, 29.560421, 42.136333>,  <35.951035, 29.577925, 42.362236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871906, 29.560421, 42.136333>,  <35.740028, 29.531248, 41.759827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871906, 29.560421, 42.136333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563810, 0.784483, -0.258271,
		-0.757243, 0.615846, 0.217523,
		0.329698, 0.072932, 0.941265,
		35.970818, 29.582300, 42.418713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566547, 30.200186, 41.963055>,  <35.740028, 29.531248, 41.759827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566547, 30.200186, 41.963055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861824, 30.097916, 42.212761>,  <36.038990, 30.036552, 42.362583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861824, 30.097916, 42.212761>,  <35.566547, 30.200186, 41.963055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861824, 30.097916, 42.212761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516215, 0.809829, -0.278746,
		-0.434279, 0.528022, 0.729791,
		0.738189, -0.255676, 0.624264,
		36.083282, 30.021214, 42.400040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739788, 30.739515, 42.426495>,  <35.566547, 30.200186, 41.963055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739788, 30.739515, 42.426495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072304, 30.522951, 42.376156>,  <36.271812, 30.393013, 42.345951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072304, 30.522951, 42.376156>,  <35.739788, 30.739515, 42.426495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072304, 30.522951, 42.376156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501672, 0.828282, -0.249549,
		0.239344, 0.144314, 0.960150,
		0.831288, -0.541408, -0.125846,
		36.321690, 30.360529, 42.338402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210960, 31.230936, 42.626160>,  <35.739788, 30.739515, 42.426495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210960, 31.230936, 42.626160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464184, 30.958620, 42.478779>,  <36.616119, 30.795231, 42.390350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464184, 30.958620, 42.478779>,  <36.210960, 31.230936, 42.626160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464184, 30.958620, 42.478779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686366, 0.713749, -0.139510,
		0.357963, -0.164578, 0.919117,
		0.633059, -0.680791, -0.368457,
		36.654102, 30.754383, 42.368240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964409, 31.528730, 42.756783>,  <36.210960, 31.230936, 42.626160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964409, 31.528730, 42.756783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066254, 31.250963, 42.487576>,  <37.127361, 31.084303, 42.326050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066254, 31.250963, 42.487576>,  <36.964409, 31.528730, 42.756783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066254, 31.250963, 42.487576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699314, 0.612910, -0.367833,
		0.667930, -0.376995, 0.641673,
		0.254616, -0.694418, -0.673019,
		37.142639, 31.042639, 42.285671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627712, 31.090986, 42.849422>,  <36.964409, 31.528730, 42.756783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627712, 31.090986, 42.849422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528805, 31.160778, 42.468178>,  <37.469460, 31.202654, 42.239433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.528805, 31.160778, 42.468178>,  <37.627712, 31.090986, 42.849422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528805, 31.160778, 42.468178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774773, 0.626316, -0.086346,
		0.581881, -0.759793, -0.290050,
		-0.247268, 0.174480, -0.953108,
		37.454624, 31.213121, 42.182247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228355, 31.346375, 42.557301>,  <37.627712, 31.090986, 42.849422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.228355, 31.346375, 42.557301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961300, 31.416092, 42.267784>,  <37.801067, 31.457922, 42.094074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961300, 31.416092, 42.267784>,  <38.228355, 31.346375, 42.557301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961300, 31.416092, 42.267784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525496, 0.799000, -0.292324,
		0.527358, -0.575518, -0.625038,
		-0.667643, 0.174296, -0.723791,
		37.761005, 31.468380, 42.050648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712654, 31.511730, 42.055004>,  <38.228355, 31.346375, 42.557301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712654, 31.511730, 42.055004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361263, 31.663576, 41.938953>,  <38.150429, 31.754683, 41.869324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361263, 31.663576, 41.938953>,  <38.712654, 31.511730, 42.055004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361263, 31.663576, 41.938953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458182, 0.841495, -0.286278,
		0.135469, -0.384421, -0.913164,
		-0.878474, 0.379614, -0.290131,
		38.097721, 31.777460, 41.851913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.882149, 31.741276, 41.448143>,  <38.712654, 31.511730, 42.055004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.882149, 31.741276, 41.448143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557842, 31.929499, 41.587418>,  <38.363258, 32.042431, 41.670982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557842, 31.929499, 41.587418>,  <38.882149, 31.741276, 41.448143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557842, 31.929499, 41.587418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202325, 0.783425, -0.587630,
		-0.549293, -0.405983, -0.730380,
		-0.810766, 0.470555, 0.348189,
		38.314613, 32.070663, 41.691875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563393, 31.950106, 40.863461>,  <38.882149, 31.741276, 41.448143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563393, 31.950106, 40.863461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447056, 32.179966, 41.169449>,  <38.377254, 32.317883, 41.353043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.447056, 32.179966, 41.169449>,  <38.563393, 31.950106, 40.863461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447056, 32.179966, 41.169449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340646, 0.809341, -0.478464,
		-0.894076, 0.121428, -0.431143,
		-0.290843, 0.574650, 0.764975,
		38.359802, 32.352360, 41.398941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122040, 31.421524, 40.788681>,  <38.563393, 31.950106, 40.863461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122040, 31.421524, 40.788681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819172, 31.326784, 40.545174>,  <38.637451, 31.269939, 40.399071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819172, 31.326784, 40.545174>,  <39.122040, 31.421524, 40.788681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819172, 31.326784, 40.545174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173889, 0.971405, -0.161663,
		0.629647, -0.016549, -0.776705,
		-0.757171, -0.236851, -0.608764,
		38.592022, 31.255730, 40.362545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158188, 31.995201, 40.326565>,  <39.122040, 31.421524, 40.788681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158188, 31.995201, 40.326565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800465, 31.830271, 40.257046>,  <38.585831, 31.731312, 40.215336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.800465, 31.830271, 40.257046>,  <39.158188, 31.995201, 40.326565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800465, 31.830271, 40.257046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337929, 0.876960, -0.341680,
		0.293297, -0.246835, -0.923607,
		-0.894305, -0.412327, -0.173797,
		38.532173, 31.706573, 40.204906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.092556, 31.930376, 39.597073>,  <39.158188, 31.995201, 40.326565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.092556, 31.930376, 39.597073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783432, 31.980278, 39.845978>,  <38.597958, 32.010220, 39.995319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783432, 31.980278, 39.845978>,  <39.092556, 31.930376, 39.597073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783432, 31.980278, 39.845978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267756, 0.824860, -0.497909,
		-0.575393, -0.551401, -0.604054,
		-0.772807, 0.124754, 0.622259,
		38.551590, 32.017704, 40.032654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384808, 32.069431, 39.261658>,  <39.092556, 31.930376, 39.597073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384808, 32.069431, 39.261658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340141, 32.240681, 39.620377>,  <38.313339, 32.343430, 39.835609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340141, 32.240681, 39.620377>,  <38.384808, 32.069431, 39.261658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340141, 32.240681, 39.620377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342530, 0.830554, -0.439150,
		-0.932847, -0.356219, 0.053896,
		-0.111670, 0.428121, 0.896796,
		38.306641, 32.369118, 39.889416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802376, 32.583069, 39.265987>,  <38.384808, 32.069431, 39.261658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802376, 32.583069, 39.265987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050053, 32.706345, 39.554882>,  <38.198658, 32.780312, 39.728218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050053, 32.706345, 39.554882>,  <37.802376, 32.583069, 39.265987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050053, 32.706345, 39.554882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090141, 0.941579, -0.324506,
		-0.780048, 0.135829, 0.610799,
		0.619192, 0.308188, 0.722234,
		38.235809, 32.798801, 39.771553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448051, 33.166798, 39.661888>,  <37.802376, 32.583069, 39.265987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448051, 33.166798, 39.661888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845158, 33.185993, 39.705906>,  <38.083424, 33.197510, 39.732315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845158, 33.185993, 39.705906>,  <37.448051, 33.166798, 39.661888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845158, 33.185993, 39.705906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017171, 0.963961, -0.265487,
		-0.118821, 0.261678, 0.957813,
		0.992767, 0.047993, 0.110045,
		38.142986, 33.200390, 39.738918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557999, 33.782272, 40.041401>,  <37.448051, 33.166798, 39.661888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557999, 33.782272, 40.041401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920395, 33.705524, 39.890469>,  <38.137833, 33.659477, 39.799911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920395, 33.705524, 39.890469>,  <37.557999, 33.782272, 40.041401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920395, 33.705524, 39.890469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137142, 0.976342, -0.167177,
		0.400475, 0.099712, 0.910866,
		0.905986, -0.191868, -0.377326,
		38.192192, 33.647964, 39.777271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070953, 34.306290, 40.313046>,  <37.557999, 33.782272, 40.041401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070953, 34.306290, 40.313046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276443, 34.196949, 39.987747>,  <38.399738, 34.131344, 39.792568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.276443, 34.196949, 39.987747>,  <38.070953, 34.306290, 40.313046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276443, 34.196949, 39.987747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187218, 0.960761, -0.204666,
		0.837277, -0.047111, 0.544745,
		0.513728, -0.273348, -0.813243,
		38.430561, 34.114944, 39.743774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720055, 34.716511, 40.275818>,  <38.070953, 34.306290, 40.313046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720055, 34.716511, 40.275818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646019, 34.567551, 39.912045>,  <38.601597, 34.478172, 39.693783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646019, 34.567551, 39.912045>,  <38.720055, 34.716511, 40.275818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646019, 34.567551, 39.912045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352913, 0.838498, -0.415180,
		0.917168, -0.397793, -0.023768,
		-0.185085, -0.372402, -0.909429,
		38.590492, 34.455830, 39.639217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.224342, 35.022907, 39.912807>,  <38.720055, 34.716511, 40.275818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.224342, 35.022907, 39.912807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988304, 34.884563, 39.621010>,  <38.846680, 34.801556, 39.445930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988304, 34.884563, 39.621010>,  <39.224342, 35.022907, 39.912807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988304, 34.884563, 39.621010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260503, 0.773688, -0.577534,
		0.764142, -0.530841, -0.366462,
		-0.590106, -0.345854, -0.729493,
		38.811275, 34.780804, 39.402161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583794, 35.125614, 39.310513>,  <39.224342, 35.022907, 39.912807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583794, 35.125614, 39.310513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209755, 35.082382, 39.175507>,  <38.985332, 35.056442, 39.094501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209755, 35.082382, 39.175507>,  <39.583794, 35.125614, 39.310513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209755, 35.082382, 39.175507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207928, 0.603908, -0.769455,
		0.286990, -0.789692, -0.542238,
		-0.935095, -0.108079, -0.337515,
		38.929226, 35.049957, 39.074253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594852, 34.916351, 38.540993>,  <39.583794, 35.125614, 39.310513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594852, 34.916351, 38.540993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237507, 35.076630, 38.622326>,  <39.023098, 35.172794, 38.671127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237507, 35.076630, 38.622326>,  <39.594852, 34.916351, 38.540993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237507, 35.076630, 38.622326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131642, 0.666068, -0.734182,
		-0.429616, -0.629125, -0.647790,
		-0.893365, 0.400693, 0.203334,
		38.969498, 35.196838, 38.683327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852867, 34.379192, 38.787407>,  <39.594852, 34.916351, 38.540993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852867, 34.379192, 38.787407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073341, 34.208401, 38.500664>,  <40.205627, 34.105927, 38.328617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.073341, 34.208401, 38.500664>,  <39.852867, 34.379192, 38.787407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073341, 34.208401, 38.500664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188544, 0.900658, -0.391493,
		0.812801, 0.080627, 0.576935,
		0.551186, -0.426984, -0.716854,
		40.238697, 34.080307, 38.285606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528133, 34.635803, 38.465271>,  <39.852867, 34.379192, 38.787407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528133, 34.635803, 38.465271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292694, 34.486004, 38.178692>,  <40.151428, 34.396126, 38.006744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292694, 34.486004, 38.178692>,  <40.528133, 34.635803, 38.465271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292694, 34.486004, 38.178692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060917, 0.904256, -0.422622,
		0.806125, -0.205112, -0.555059,
		-0.588601, -0.374499, -0.716449,
		40.116116, 34.373653, 37.963757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104946, 34.302181, 38.669674>,  <40.528133, 34.635803, 38.465271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104946, 34.302181, 38.669674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998615, 34.033573, 38.946339>,  <40.934818, 33.872410, 39.112339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998615, 34.033573, 38.946339>,  <41.104946, 34.302181, 38.669674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998615, 34.033573, 38.946339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872335, -0.137832, -0.469077,
		0.410327, -0.728058, -0.549148,
		-0.265825, -0.671517, 0.691667,
		40.918869, 33.832119, 39.153839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771374, 34.428879, 38.581837>,  <41.104946, 34.302181, 38.669674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771374, 34.428879, 38.581837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942463, 34.620682, 38.275341>,  <42.045116, 34.735764, 38.091442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.942463, 34.620682, 38.275341>,  <41.771374, 34.428879, 38.581837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.942463, 34.620682, 38.275341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903753, -0.211074, 0.372396,
		0.016834, -0.851773, -0.523640,
		0.427723, 0.479510, -0.766239,
		42.070782, 34.764534, 38.045467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279823, 34.013302, 38.187588>,  <41.771374, 34.428879, 38.581837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279823, 34.013302, 38.187588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405796, 34.383801, 38.104752>,  <42.481380, 34.606098, 38.055050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.405796, 34.383801, 38.104752>,  <42.279823, 34.013302, 38.187588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.405796, 34.383801, 38.104752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923439, -0.248620, 0.292315,
		0.219267, -0.283298, -0.933630,
		0.314931, 0.926245, -0.207094,
		42.500275, 34.661674, 38.042622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.655926, 33.403217, 38.407200>,  <42.279823, 34.013302, 38.187588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.655926, 33.403217, 38.407200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661705, 33.018082, 38.515068>,  <42.665173, 32.786999, 38.579788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661705, 33.018082, 38.515068>,  <42.655926, 33.403217, 38.407200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661705, 33.018082, 38.515068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824676, -0.141036, -0.547740,
		0.565421, 0.230307, 0.791996,
		0.014448, -0.962843, 0.269674,
		42.666039, 32.729229, 38.595970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.189594, 33.835514, 38.105900>,  <42.655926, 33.403217, 38.407200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.189594, 33.835514, 38.105900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472538, 33.567154, 38.016869>,  <43.642303, 33.406139, 37.963451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472538, 33.567154, 38.016869>,  <43.189594, 33.835514, 38.105900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472538, 33.567154, 38.016869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509521, 0.702199, -0.497298,
		0.489930, 0.238360, 0.838543,
		0.707359, -0.670896, -0.222578,
		43.684746, 33.365887, 37.950096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854980, 34.019928, 38.359062>,  <43.189594, 33.835514, 38.105900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854980, 34.019928, 38.359062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879375, 33.790981, 38.031971>,  <43.894012, 33.653614, 37.835716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879375, 33.790981, 38.031971>,  <43.854980, 34.019928, 38.359062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879375, 33.790981, 38.031971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643542, 0.648785, -0.406117,
		0.762977, -0.501473, 0.407910,
		0.060990, -0.572365, -0.817728,
		43.897671, 33.619270, 37.786652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.548546, 33.864670, 38.208099>,  <43.854980, 34.019928, 38.359062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.548546, 33.864670, 38.208099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355030, 33.861351, 37.858040>,  <44.238922, 33.859360, 37.648003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355030, 33.861351, 37.858040>,  <44.548546, 33.864670, 38.208099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355030, 33.861351, 37.858040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587767, 0.737810, -0.331912,
		0.648445, -0.674957, -0.352068,
		-0.483786, -0.008293, -0.875147,
		44.209896, 33.858864, 37.595497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.012302, 34.043221, 37.661537>,  <44.548546, 33.864670, 38.208099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.012302, 34.043221, 37.661537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646755, 34.140877, 37.531773>,  <44.427425, 34.199471, 37.453915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646755, 34.140877, 37.531773>,  <45.012302, 34.043221, 37.661537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646755, 34.140877, 37.531773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394392, 0.723573, -0.566478,
		0.096435, -0.645631, -0.757537,
		-0.913869, 0.244138, -0.324409,
		44.372593, 34.214119, 37.434448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045181, 34.103172, 36.829414>,  <45.012302, 34.043221, 37.661537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045181, 34.103172, 36.829414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769173, 34.317570, 37.023972>,  <44.603565, 34.446209, 37.140705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.769173, 34.317570, 37.023972>,  <45.045181, 34.103172, 36.829414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769173, 34.317570, 37.023972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306807, 0.825253, -0.474159,
		-0.655542, -0.177953, -0.733892,
		-0.690025, 0.535994, 0.486391,
		44.562164, 34.478367, 37.169888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779747, 34.895611, 36.804672>,  <45.045181, 34.103172, 36.829414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779747, 34.895611, 36.804672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.857033, 35.065533, 37.158443>,  <44.903404, 35.167484, 37.370705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.857033, 35.065533, 37.158443>,  <44.779747, 34.895611, 36.804672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.857033, 35.065533, 37.158443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878811, 0.325911, -0.348530,
		-0.436300, 0.844586, -0.310349,
		0.193217, 0.424802, 0.884427,
		44.914997, 35.192974, 37.423771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.909100, 35.587849, 36.603680>,  <44.779747, 34.895611, 36.804672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.909100, 35.587849, 36.603680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087200, 35.499580, 36.950794>,  <45.194061, 35.446621, 37.159065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087200, 35.499580, 36.950794>,  <44.909100, 35.587849, 36.603680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087200, 35.499580, 36.950794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893317, 0.175662, -0.413677,
		-0.061152, 0.959400, 0.275341,
		0.445248, -0.220670, 0.867790,
		45.220776, 35.433380, 37.211132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424030, 36.136986, 36.895008>,  <44.909100, 35.587849, 36.603680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424030, 36.136986, 36.895008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512428, 35.765194, 37.013142>,  <45.565468, 35.542118, 37.084023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.512428, 35.765194, 37.013142>,  <45.424030, 36.136986, 36.895008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.512428, 35.765194, 37.013142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904025, 0.081612, -0.419616,
		0.365924, 0.359722, 0.858312,
		0.220993, -0.929483, 0.295335,
		45.578728, 35.486347, 37.101742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.093151, 36.172691, 37.151867>,  <45.424030, 36.136986, 36.895008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.093151, 36.172691, 37.151867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033703, 35.796471, 37.029709>,  <45.998035, 35.570736, 36.956413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.033703, 35.796471, 37.029709>,  <46.093151, 36.172691, 37.151867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033703, 35.796471, 37.029709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921688, -0.019845, -0.387424,
		0.358334, -0.339059, 0.869848,
		-0.148621, -0.940556, -0.305396,
		45.989117, 35.514305, 36.938091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656200, 35.777721, 37.578407>,  <46.093151, 36.172691, 37.151867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656200, 35.777721, 37.578407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.508247, 35.616432, 37.243599>,  <46.419476, 35.519661, 37.042713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.508247, 35.616432, 37.243599>,  <46.656200, 35.777721, 37.578407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.508247, 35.616432, 37.243599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917115, -0.014344, -0.398365,
		0.148623, -0.914990, 0.375106,
		-0.369881, -0.403221, -0.837019,
		46.397282, 35.495464, 36.992493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.082184, 35.148239, 37.332050>,  <46.656200, 35.777721, 37.578407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.082184, 35.148239, 37.332050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.878567, 35.277893, 37.013100>,  <46.756397, 35.355686, 36.821728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.878567, 35.277893, 37.013100>,  <47.082184, 35.148239, 37.332050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.878567, 35.277893, 37.013100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813380, -0.121905, -0.568816,
		-0.281579, -0.938123, -0.201591,
		-0.509045, 0.324137, -0.797376,
		46.725853, 35.375134, 36.773888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.037151, 34.590126, 36.745174>,  <47.082184, 35.148239, 37.332050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.037151, 34.590126, 36.745174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.054577, 34.976109, 36.641663>,  <47.065033, 35.207699, 36.579556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.054577, 34.976109, 36.641663>,  <47.037151, 34.590126, 36.745174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.054577, 34.976109, 36.641663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866559, -0.165400, -0.470869,
		-0.497169, -0.203734, -0.843395,
		0.043565, 0.964954, -0.258779,
		47.067646, 35.265594, 36.564030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.764442, 34.610638, 36.051613>,  <47.037151, 34.590126, 36.745174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.764442, 34.610638, 36.051613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.872608, 34.949993, 35.869579>,  <46.937508, 35.153606, 35.760357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.872608, 34.949993, 35.869579>,  <46.764442, 34.610638, 36.051613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.872608, 34.949993, 35.869579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899699, -0.390937, -0.194191,
		-0.342661, -0.356930, -0.869013,
		0.270416, 0.848392, -0.455089,
		46.953732, 35.204510, 35.733051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.925976, 34.670296, 35.221188>,  <46.764442, 34.610638, 36.051613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.925976, 34.670296, 35.221188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.153637, 34.929451, 35.423695>,  <47.290234, 35.084946, 35.545200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.153637, 34.929451, 35.423695>,  <46.925976, 34.670296, 35.221188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.153637, 34.929451, 35.423695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822227, -0.451122, -0.347032,
		0.003549, 0.613779, -0.789470,
		0.569148, 0.647892, 0.506267,
		47.324383, 35.123817, 35.575573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.403328, 34.927124, 34.744457>,  <46.925976, 34.670296, 35.221188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.403328, 34.927124, 34.744457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531174, 34.933506, 35.123425>,  <47.607880, 34.937336, 35.350803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531174, 34.933506, 35.123425>,  <47.403328, 34.927124, 34.744457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.531174, 34.933506, 35.123425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862912, -0.417958, -0.284067,
		0.391446, 0.908326, -0.147355,
		0.319613, 0.015958, 0.947414,
		47.627056, 34.938293, 35.407650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.381813, 38.282314, 28.410261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.022537, 38.289886, 28.234579>,  <39.806973, 38.294430, 28.129169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.022537, 38.289886, 28.234579>,  <40.381813, 38.282314, 28.410261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022537, 38.289886, 28.234579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414379, -0.370053, 0.831475,
		-0.146792, 0.928818, 0.340220,
		-0.898188, 0.018926, -0.439203,
		39.753082, 38.295563, 28.102818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885292, 38.419544, 29.023453>,  <40.381813, 38.282314, 28.410261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885292, 38.419544, 29.023453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.647747, 38.283352, 28.731863>,  <39.505222, 38.201637, 28.556910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.647747, 38.283352, 28.731863>,  <39.885292, 38.419544, 29.023453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647747, 38.283352, 28.731863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564286, -0.469585, 0.679022,
		-0.573507, 0.814595, 0.086742,
		-0.593861, -0.340477, -0.728975,
		39.469589, 38.181210, 28.513170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149914, 38.640549, 29.130707>,  <39.885292, 38.419544, 29.023453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149914, 38.640549, 29.130707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.154198, 38.318497, 28.893505>,  <39.156769, 38.125267, 28.751184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.154198, 38.318497, 28.893505>,  <39.149914, 38.640549, 29.130707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154198, 38.318497, 28.893505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608064, -0.476034, 0.635334,
		-0.793816, 0.353784, -0.494665,
		0.010706, -0.805127, -0.593007,
		39.157410, 38.076958, 28.715603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540142, 38.384361, 29.250109>,  <39.149914, 38.640549, 29.130707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540142, 38.384361, 29.250109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728405, 38.071590, 29.086617>,  <38.841362, 37.883926, 28.988522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.728405, 38.071590, 29.086617>,  <38.540142, 38.384361, 29.250109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728405, 38.071590, 29.086617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464089, -0.613388, 0.639043,
		-0.750399, -0.111085, -0.651583,
		0.470661, -0.781930, -0.408733,
		38.869602, 37.837009, 28.963997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059185, 37.991440, 29.180550>,  <38.540142, 38.384361, 29.250109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059185, 37.991440, 29.180550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381878, 37.755569, 29.165232>,  <38.575493, 37.614048, 29.156042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.381878, 37.755569, 29.165232>,  <38.059185, 37.991440, 29.180550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381878, 37.755569, 29.165232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288408, -0.449470, 0.845457,
		-0.515762, -0.671010, -0.532669,
		0.806729, -0.589680, -0.038295,
		38.623898, 37.578667, 29.153744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877232, 37.276802, 29.408016>,  <38.059185, 37.991440, 29.180550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877232, 37.276802, 29.408016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.276779, 37.278820, 29.426935>,  <38.516506, 37.280029, 29.438288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.276779, 37.278820, 29.426935>,  <37.877232, 37.276802, 29.408016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276779, 37.278820, 29.426935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032219, -0.659773, 0.750774,
		0.034996, -0.751448, -0.658864,
		0.998868, 0.005046, 0.047300,
		38.576439, 37.280334, 29.441126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152531, 36.478550, 29.420277>,  <37.877232, 37.276802, 29.408016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152531, 36.478550, 29.420277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441048, 36.720741, 29.554811>,  <38.614159, 36.866058, 29.635532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.441048, 36.720741, 29.554811>,  <38.152531, 36.478550, 29.420277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441048, 36.720741, 29.554811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066788, -0.544138, 0.836333,
		0.689400, -0.580779, -0.432923,
		0.721295, 0.605483, 0.336339,
		38.657436, 36.902386, 29.655714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801060, 36.092045, 29.560530>,  <38.152531, 36.478550, 29.420277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801060, 36.092045, 29.560530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802738, 36.420742, 29.788467>,  <38.803745, 36.617962, 29.925230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802738, 36.420742, 29.788467>,  <38.801060, 36.092045, 29.560530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802738, 36.420742, 29.788467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199009, -0.559137, 0.804836,
		0.979989, 0.110024, -0.165882,
		0.004199, 0.821742, 0.569844,
		38.803997, 36.667263, 29.959421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183739, 35.848579, 30.077551>,  <38.801060, 36.092045, 29.560530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183739, 35.848579, 30.077551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.035046, 36.188507, 30.227011>,  <38.945831, 36.392464, 30.316687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.035046, 36.188507, 30.227011>,  <39.183739, 35.848579, 30.077551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035046, 36.188507, 30.227011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054363, -0.381876, 0.922613,
		0.926746, 0.363279, 0.095757,
		-0.371733, 0.849823, 0.373652,
		38.923527, 36.443455, 30.339106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646687, 36.022846, 30.656178>,  <39.183739, 35.848579, 30.077551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646687, 36.022846, 30.656178> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.306763, 36.225906, 30.712904>,  <39.102810, 36.347744, 30.746941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.306763, 36.225906, 30.712904>,  <39.646687, 36.022846, 30.656178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306763, 36.225906, 30.712904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058285, -0.357914, 0.931934,
		0.523856, 0.783701, 0.333747,
		-0.849810, 0.507652, 0.141818,
		39.051819, 36.378201, 30.755449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713024, 36.287758, 31.298725>,  <39.646687, 36.022846, 30.656178>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713024, 36.287758, 31.298725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.323860, 36.272121, 31.207590>,  <39.090363, 36.262741, 31.152908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.323860, 36.272121, 31.207590>,  <39.713024, 36.287758, 31.298725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323860, 36.272121, 31.207590> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196535, -0.379033, 0.904272,
		-0.121709, 0.924557, 0.361083,
		-0.972914, -0.039093, -0.227839,
		39.031986, 36.260395, 31.139238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375809, 36.502701, 31.935574>,  <39.713024, 36.287758, 31.298725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375809, 36.502701, 31.935574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086586, 36.317554, 31.730459>,  <38.913052, 36.206467, 31.607389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086586, 36.317554, 31.730459>,  <39.375809, 36.502701, 31.935574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086586, 36.317554, 31.730459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211097, -0.558758, 0.802015,
		-0.657749, 0.688147, 0.306302,
		-0.723052, -0.462865, -0.512788,
		38.869671, 36.178696, 31.576622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892696, 36.498177, 32.461224>,  <39.375809, 36.502701, 31.935574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892696, 36.498177, 32.461224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789890, 36.233986, 32.179028>,  <38.728207, 36.075470, 32.009712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.789890, 36.233986, 32.179028>,  <38.892696, 36.498177, 32.461224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789890, 36.233986, 32.179028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420299, -0.580964, 0.697015,
		-0.870225, 0.475661, -0.128280,
		-0.257017, -0.660476, -0.705488,
		38.712784, 36.035843, 31.967381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213509, 36.348915, 32.719971>,  <38.892696, 36.498177, 32.461224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213509, 36.348915, 32.719971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342182, 36.063332, 32.471207>,  <38.419388, 35.891979, 32.321949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.342182, 36.063332, 32.471207>,  <38.213509, 36.348915, 32.719971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342182, 36.063332, 32.471207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339773, -0.700123, 0.627999,
		-0.883783, 0.009291, -0.467805,
		0.321686, -0.713962, -0.621913,
		38.438686, 35.849144, 32.284634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698639, 35.878494, 32.789547>,  <38.213509, 36.348915, 32.719971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698639, 35.878494, 32.789547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.002781, 35.674221, 32.629013>,  <38.185265, 35.551659, 32.532692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.002781, 35.674221, 32.629013>,  <37.698639, 35.878494, 32.789547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002781, 35.674221, 32.629013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261897, -0.806502, 0.530060,
		-0.594366, -0.297926, -0.746973,
		0.760354, -0.510680, -0.401332,
		38.230888, 35.521015, 32.508614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391644, 35.197224, 32.517834>,  <37.698639, 35.878494, 32.789547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391644, 35.197224, 32.517834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787750, 35.188702, 32.572853>,  <38.025414, 35.183586, 32.605865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787750, 35.188702, 32.572853>,  <37.391644, 35.197224, 32.517834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787750, 35.188702, 32.572853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116827, -0.664464, 0.738132,
		0.075670, -0.747016, -0.660485,
		0.990266, -0.021308, 0.137552,
		38.084831, 35.182308, 32.614120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597889, 34.509155, 32.520267>,  <37.391644, 35.197224, 32.517834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597889, 34.509155, 32.520267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.897186, 34.698963, 32.705727>,  <38.076763, 34.812847, 32.817001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.897186, 34.698963, 32.705727>,  <37.597889, 34.509155, 32.520267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897186, 34.698963, 32.705727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076689, -0.632318, 0.770904,
		0.658982, -0.612377, -0.436735,
		0.748239, 0.474519, 0.463649,
		38.121658, 34.841320, 32.844822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101833, 33.880428, 32.795258>,  <37.597889, 34.509155, 32.520267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101833, 33.880428, 32.795258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170055, 34.207428, 33.015297>,  <38.210987, 34.403625, 33.147320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.170055, 34.207428, 33.015297>,  <38.101833, 33.880428, 32.795258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170055, 34.207428, 33.015297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061911, -0.566069, 0.822030,
		0.983401, -0.106145, -0.147159,
		0.170557, 0.817496, 0.550101,
		38.221222, 34.452675, 33.180328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699905, 33.724293, 33.255688>,  <38.101833, 33.880428, 32.795258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699905, 33.724293, 33.255688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.495083, 34.033157, 33.406189>,  <38.372189, 34.218475, 33.496490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.495083, 34.033157, 33.406189>,  <38.699905, 33.724293, 33.255688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495083, 34.033157, 33.406189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177765, -0.523818, 0.833075,
		0.840355, 0.359699, 0.405489,
		-0.512059, 0.772160, 0.376251,
		38.341465, 34.264805, 33.519066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962341, 33.882225, 34.055649>,  <38.699905, 33.724293, 33.255688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962341, 33.882225, 34.055649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594604, 34.038776, 34.039436>,  <38.373962, 34.132706, 34.029709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.594604, 34.038776, 34.039436>,  <38.962341, 33.882225, 34.055649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594604, 34.038776, 34.039436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178110, -0.322085, 0.929806,
		0.350849, 0.862024, 0.365813,
		-0.919338, 0.391377, -0.040532,
		38.318802, 34.156189, 34.027275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928242, 33.971752, 34.715149>,  <38.962341, 33.882225, 34.055649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928242, 33.971752, 34.715149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.553673, 34.045937, 34.596004>,  <38.328934, 34.090446, 34.524517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.553673, 34.045937, 34.596004>,  <38.928242, 33.971752, 34.715149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553673, 34.045937, 34.596004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339826, -0.267951, 0.901510,
		0.087379, 0.945414, 0.313938,
		-0.936420, 0.185457, -0.297863,
		38.272747, 34.101574, 34.506645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623077, 34.353951, 35.239536>,  <38.928242, 33.971752, 34.715149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623077, 34.353951, 35.239536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.316650, 34.189987, 35.041496>,  <38.132793, 34.091610, 34.922672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.316650, 34.189987, 35.041496>,  <38.623077, 34.353951, 35.239536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316650, 34.189987, 35.041496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412838, -0.276598, 0.867789,
		-0.492656, 0.869177, 0.042667,
		-0.766064, -0.409908, -0.495097,
		38.086830, 34.067017, 34.892967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326614, 34.571167, 35.346970>,  <38.623077, 34.353951, 35.239536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326614, 34.571167, 35.346970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.420380, 34.768013, 35.682320>,  <39.476639, 34.886120, 35.883530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.420380, 34.768013, 35.682320>,  <39.326614, 34.571167, 35.346970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420380, 34.768013, 35.682320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487657, 0.686519, -0.539335,
		-0.840976, 0.535267, -0.079054,
		0.234417, 0.492119, 0.838372,
		39.490704, 34.915649, 35.933830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355873, 35.324780, 35.425072>,  <39.326614, 34.571167, 35.346970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355873, 35.324780, 35.425072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.669048, 35.135021, 35.586044>,  <39.856953, 35.021168, 35.682629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.669048, 35.135021, 35.586044>,  <39.355873, 35.324780, 35.425072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669048, 35.135021, 35.586044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617678, 0.515862, -0.593600,
		0.074000, 0.713328, 0.696913,
		0.782942, -0.474394, 0.402433,
		39.903931, 34.992702, 35.706776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879463, 35.842819, 35.395248>,  <39.355873, 35.324780, 35.425072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879463, 35.842819, 35.395248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.092655, 35.509132, 35.451824>,  <40.220570, 35.308918, 35.485771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.092655, 35.509132, 35.451824>,  <39.879463, 35.842819, 35.395248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092655, 35.509132, 35.451824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662702, 0.307635, -0.682779,
		0.526076, 0.457642, 0.716804,
		0.532983, -0.834220, 0.141441,
		40.252548, 35.258865, 35.494255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644672, 36.027542, 35.526844>,  <39.879463, 35.842819, 35.395248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644672, 36.027542, 35.526844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.600586, 35.665249, 35.363132>,  <40.574135, 35.447872, 35.264904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.600586, 35.665249, 35.363132>,  <40.644672, 36.027542, 35.526844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600586, 35.665249, 35.363132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512489, 0.301035, -0.804197,
		0.851591, -0.298385, 0.430997,
		-0.110216, -0.905728, -0.409278,
		40.567520, 35.393532, 35.240349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254871, 35.991413, 35.168552>,  <40.644672, 36.027542, 35.526844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254871, 35.991413, 35.168552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.029301, 35.695663, 35.021416>,  <40.893959, 35.518211, 34.933132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.029301, 35.695663, 35.021416>,  <41.254871, 35.991413, 35.168552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.029301, 35.695663, 35.021416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394907, 0.149760, -0.906433,
		0.725285, -0.656424, 0.207533,
		-0.563924, -0.739378, -0.367845,
		40.860123, 35.473850, 34.911060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675987, 35.571907, 34.777218>,  <41.254871, 35.991413, 35.168552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675987, 35.571907, 34.777218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.315620, 35.477665, 34.631432>,  <41.099400, 35.421120, 34.543961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.315620, 35.477665, 34.631432>,  <41.675987, 35.571907, 34.777218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315620, 35.477665, 34.631432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358096, 0.070860, -0.930992,
		0.245175, -0.969261, 0.020531,
		-0.900920, -0.235608, -0.364462,
		41.045345, 35.406982, 34.522095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858433, 35.185394, 34.176323>,  <41.675987, 35.571907, 34.777218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858433, 35.185394, 34.176323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.481548, 35.307976, 34.122181>,  <41.255417, 35.381527, 34.089695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.481548, 35.307976, 34.122181>,  <41.858433, 35.185394, 34.176323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481548, 35.307976, 34.122181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220390, 0.262705, -0.939369,
		-0.252318, -0.914916, -0.315064,
		-0.942212, 0.306457, -0.135353,
		41.198883, 35.399914, 34.081573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635975, 34.820061, 33.559769>,  <41.858433, 35.185394, 34.176323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635975, 34.820061, 33.559769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.418606, 35.146572, 33.638130>,  <41.288185, 35.342480, 33.685146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.418606, 35.146572, 33.638130>,  <41.635975, 34.820061, 33.559769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418606, 35.146572, 33.638130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056377, 0.268328, -0.961676,
		-0.837562, -0.511555, -0.191836,
		-0.543425, 0.816279, 0.195901,
		41.255577, 35.391457, 33.696899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206615, 34.851089, 32.980782>,  <41.635975, 34.820061, 33.559769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206615, 34.851089, 32.980782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.211887, 35.215916, 33.144718>,  <41.215050, 35.434811, 33.243080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.211887, 35.215916, 33.144718>,  <41.206615, 34.851089, 32.980782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211887, 35.215916, 33.144718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069350, 0.408054, -0.910320,
		-0.997505, 0.040423, -0.057872,
		0.013183, 0.912062, 0.409840,
		41.215843, 35.489532, 33.267670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748581, 35.286098, 32.573437>,  <41.206615, 34.851089, 32.980782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748581, 35.286098, 32.573437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.953499, 35.557995, 32.783390>,  <41.076450, 35.721134, 32.909363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.953499, 35.557995, 32.783390>,  <40.748581, 35.286098, 32.573437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953499, 35.557995, 32.783390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112790, 0.552625, -0.825762,
		-0.851368, 0.482239, 0.206441,
		0.512299, 0.679743, 0.524880,
		41.107189, 35.761917, 32.940853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579033, 35.813812, 32.282349>,  <40.748581, 35.286098, 32.573437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579033, 35.813812, 32.282349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.905819, 35.918758, 32.487766>,  <41.101891, 35.981728, 32.611015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.905819, 35.918758, 32.487766>,  <40.579033, 35.813812, 32.282349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905819, 35.918758, 32.487766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237350, 0.658612, -0.714069,
		-0.525575, 0.705261, 0.475791,
		0.816967, 0.262368, 0.513544,
		41.150909, 35.997467, 32.641830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502132, 36.502644, 32.375717>,  <40.579033, 35.813812, 32.282349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502132, 36.502644, 32.375717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.890377, 36.407978, 32.393211>,  <41.123322, 36.351177, 32.403709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.890377, 36.407978, 32.393211>,  <40.502132, 36.502644, 32.375717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890377, 36.407978, 32.393211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173132, 0.560381, -0.809937,
		0.167173, 0.793702, 0.584884,
		0.970607, -0.236662, 0.043735,
		41.181561, 36.336979, 32.406330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890606, 37.084873, 32.324848>,  <40.502132, 36.502644, 32.375717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890606, 37.084873, 32.324848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.138916, 36.799355, 32.195148>,  <41.287903, 36.628044, 32.117329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.138916, 36.799355, 32.195148>,  <40.890606, 37.084873, 32.324848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138916, 36.799355, 32.195148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240763, 0.567167, -0.787626,
		0.746108, 0.410869, 0.523937,
		0.620771, -0.713798, -0.324246,
		41.325146, 36.585217, 32.097874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441719, 37.488972, 32.077847>,  <40.890606, 37.084873, 32.324848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441719, 37.488972, 32.077847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.517612, 37.125423, 31.929283>,  <41.563148, 36.907295, 31.840145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.517612, 37.125423, 31.929283>,  <41.441719, 37.488972, 32.077847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517612, 37.125423, 31.929283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477612, 0.415948, -0.773870,
		0.857839, -0.030560, 0.513009,
		0.189736, -0.908875, -0.371412,
		41.574532, 36.852760, 31.817860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183769, 37.452515, 31.851524>,  <41.441719, 37.488972, 32.077847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183769, 37.452515, 31.851524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.977657, 37.168369, 31.659744>,  <41.853992, 36.997883, 31.544676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.977657, 37.168369, 31.659744>,  <42.183769, 37.452515, 31.851524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977657, 37.168369, 31.659744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321318, 0.358497, -0.876490,
		0.794509, -0.605690, 0.043528,
		-0.515276, -0.710366, -0.479448,
		41.823074, 36.955261, 31.515909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679077, 37.302116, 31.312204>,  <42.183769, 37.452515, 31.851524>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679077, 37.302116, 31.312204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.311123, 37.182686, 31.210480>,  <42.090351, 37.111027, 31.149445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.311123, 37.182686, 31.210480>,  <42.679077, 37.302116, 31.312204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311123, 37.182686, 31.210480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134762, 0.368318, -0.919881,
		0.368318, -0.880453, -0.298572,
		0.919881, 0.298572, 0.254310,
		42.035160, 37.093113, 31.134188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728485, 36.865856, 30.780346>,  <42.679077, 37.302116, 31.312204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728485, 36.865856, 30.780346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.351051, 36.995667, 30.754000>,  <42.124592, 37.073551, 30.738192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.351051, 36.995667, 30.754000>,  <42.728485, 36.865856, 30.780346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351051, 36.995667, 30.754000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198268, 0.394362, -0.897312,
		-0.265226, -0.859745, -0.436455,
		-0.943581, 0.324526, -0.065865,
		42.067978, 37.093025, 30.734240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512733, 36.659332, 30.084450>,  <42.728485, 36.865856, 30.780346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512733, 36.659332, 30.084450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.253490, 36.941650, 30.198858>,  <42.097942, 37.111042, 30.267504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.253490, 36.941650, 30.198858>,  <42.512733, 36.659332, 30.084450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253490, 36.941650, 30.198858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096885, 0.448946, -0.888291,
		-0.755359, -0.547999, -0.359347,
		-0.648110, 0.705794, 0.286022,
		42.059059, 37.153389, 30.284664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.030865, 36.601532, 29.491840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.005398, 36.948639, 29.688992>,  <41.990120, 37.156902, 29.807281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.005398, 36.948639, 29.688992>,  <42.030865, 36.601532, 29.491840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.005398, 36.948639, 29.688992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035280, 0.495528, -0.867875,
		-0.997348, -0.037863, -0.062161,
		-0.063663, 0.867766, 0.492878,
		41.986298, 37.208969, 29.836855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357227, 37.061646, 29.309370>,  <42.030865, 36.601532, 29.491840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357227, 37.061646, 29.309370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.607002, 37.322483, 29.481344>,  <41.756866, 37.478985, 29.584528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.607002, 37.322483, 29.481344>,  <41.357227, 37.061646, 29.309370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.607002, 37.322483, 29.481344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048866, 0.516746, -0.854743,
		-0.779543, 0.554744, 0.290812,
		0.624440, 0.652098, 0.429934,
		41.794334, 37.518112, 29.610325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049805, 37.688229, 29.079893>,  <41.357227, 37.061646, 29.309370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049805, 37.688229, 29.079893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406479, 37.782963, 29.234196>,  <41.620483, 37.839806, 29.326777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.406479, 37.782963, 29.234196>,  <41.049805, 37.688229, 29.079893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406479, 37.782963, 29.234196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120754, 0.696860, -0.706969,
		-0.436255, 0.676974, 0.592779,
		0.891684, 0.236839, 0.385756,
		41.673985, 37.854015, 29.349922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015759, 38.398506, 29.023239>,  <41.049805, 37.688229, 29.079893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015759, 38.398506, 29.023239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.398571, 38.286404, 29.053005>,  <41.628258, 38.219143, 29.070866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.398571, 38.286404, 29.053005>,  <41.015759, 38.398506, 29.023239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398571, 38.286404, 29.053005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268694, 0.760621, -0.590982,
		0.109024, 0.585586, 0.803245,
		0.957036, -0.280259, 0.074417,
		41.685680, 38.202328, 29.075331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343693, 39.108433, 29.107773>,  <41.015759, 38.398506, 29.023239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343693, 39.108433, 29.107773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.610741, 38.820358, 29.032284>,  <41.770969, 38.647514, 28.986990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.610741, 38.820358, 29.032284>,  <41.343693, 39.108433, 29.107773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610741, 38.820358, 29.032284> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549756, 0.647825, -0.527343,
		0.502043, 0.248315, 0.828428,
		0.667623, -0.720183, -0.188724,
		41.811028, 38.604305, 28.975666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947037, 39.300724, 29.189270>,  <41.343693, 39.108433, 29.107773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947037, 39.300724, 29.189270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.015228, 38.994286, 28.941387>,  <42.056145, 38.810421, 28.792658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.015228, 38.994286, 28.941387>,  <41.947037, 39.300724, 29.189270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015228, 38.994286, 28.941387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663603, 0.554168, -0.502522,
		0.728401, -0.325569, 0.602857,
		0.170479, -0.766095, -0.619705,
		42.066372, 38.764458, 28.755476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.751850, 39.301849, 29.064358>,  <41.947037, 39.300724, 29.189270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.751850, 39.301849, 29.064358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.541653, 39.120831, 28.776175>,  <42.415535, 39.012218, 28.603264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.541653, 39.120831, 28.776175>,  <42.751850, 39.301849, 29.064358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541653, 39.120831, 28.776175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379356, 0.633336, -0.674518,
		0.761544, -0.627763, -0.161135,
		-0.525490, -0.452548, -0.720459,
		42.384007, 38.985065, 28.560038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.193745, 39.379234, 28.514668>,  <42.751850, 39.301849, 29.064358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.193745, 39.379234, 28.514668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.856266, 39.271290, 28.329041>,  <42.653778, 39.206524, 28.217665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.856266, 39.271290, 28.329041>,  <43.193745, 39.379234, 28.514668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856266, 39.271290, 28.329041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220380, 0.614150, -0.757794,
		0.489505, -0.741617, -0.458683,
		-0.843693, -0.269859, -0.464067,
		42.603157, 39.190331, 28.189819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271881, 38.994026, 27.804693>,  <43.193745, 39.379234, 28.514668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271881, 38.994026, 27.804693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.910423, 39.164997, 27.793819>,  <42.693550, 39.267578, 27.787294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.910423, 39.164997, 27.793819>,  <43.271881, 38.994026, 27.804693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910423, 39.164997, 27.793819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256176, 0.488545, -0.834085,
		-0.343227, -0.760679, -0.550966,
		-0.903643, 0.427424, -0.027186,
		42.639332, 39.293224, 27.785664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.039017, 39.023350, 27.078987>,  <43.271881, 38.994026, 27.804693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.039017, 39.023350, 27.078987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.836838, 39.307728, 27.274570>,  <42.715530, 39.478355, 27.391920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.836838, 39.307728, 27.274570>,  <43.039017, 39.023350, 27.078987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.836838, 39.307728, 27.274570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244820, 0.661545, -0.708817,
		-0.827399, -0.238561, -0.508429,
		-0.505445, 0.710948, 0.488957,
		42.685204, 39.521011, 27.421257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787567, 39.315212, 26.572542>,  <43.039017, 39.023350, 27.078987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787567, 39.315212, 26.572542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.767776, 39.582458, 26.869505>,  <42.755901, 39.742805, 27.047684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.767776, 39.582458, 26.869505>,  <42.787567, 39.315212, 26.572542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.767776, 39.582458, 26.869505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426263, 0.686346, -0.589261,
		-0.903245, 0.287308, -0.318750,
		-0.049473, 0.668119, 0.742408,
		42.752934, 39.782894, 27.092228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692997, 39.848515, 26.189695>,  <42.787567, 39.315212, 26.572542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692997, 39.848515, 26.189695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.762707, 40.014870, 26.546721>,  <42.804535, 40.114681, 26.760935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.762707, 40.014870, 26.546721>,  <42.692997, 39.848515, 26.189695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762707, 40.014870, 26.546721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454071, 0.770366, -0.447611,
		-0.873754, 0.483295, -0.054584,
		0.174278, 0.415887, 0.892561,
		42.814991, 40.139637, 26.814489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.409431, 40.628422, 26.252909>,  <42.692997, 39.848515, 26.189695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.409431, 40.628422, 26.252909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.709270, 40.595173, 26.515570>,  <42.889175, 40.575226, 26.673166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.709270, 40.595173, 26.515570>,  <42.409431, 40.628422, 26.252909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709270, 40.595173, 26.515570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415880, 0.830940, -0.369570,
		-0.514919, 0.550118, 0.657441,
		0.749601, -0.083118, 0.656650,
		42.934151, 40.570236, 26.712564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587997, 41.285362, 26.577335>,  <42.409431, 40.628422, 26.252909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587997, 41.285362, 26.577335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.915600, 41.058311, 26.610868>,  <43.112160, 40.922081, 26.630989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.915600, 41.058311, 26.610868>,  <42.587997, 41.285362, 26.577335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915600, 41.058311, 26.610868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555414, 0.747601, -0.364154,
		0.144031, 0.344806, 0.927558,
		0.819005, -0.567629, 0.083833,
		43.161301, 40.888023, 26.636019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094025, 41.806198, 27.013124>,  <42.587997, 41.285362, 26.577335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094025, 41.806198, 27.013124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.251339, 41.514545, 26.789089>,  <43.345726, 41.339554, 26.654669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.251339, 41.514545, 26.789089>,  <43.094025, 41.806198, 27.013124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251339, 41.514545, 26.789089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540426, 0.676154, -0.500754,
		0.743820, -0.105748, 0.659961,
		0.393282, -0.729131, -0.560086,
		43.369324, 41.295807, 26.621063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772911, 41.970928, 27.088169>,  <43.094025, 41.806198, 27.013124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772911, 41.970928, 27.088169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.738880, 41.741779, 26.762083>,  <43.718464, 41.604290, 26.566431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.738880, 41.741779, 26.762083>,  <43.772911, 41.970928, 27.088169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.738880, 41.741779, 26.762083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671699, 0.571335, -0.471591,
		0.735924, -0.587699, 0.336194,
		-0.085074, -0.572876, -0.815215,
		43.713356, 41.569916, 26.517519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.364864, 42.031040, 26.853518>,  <43.772911, 41.970928, 27.088169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.364864, 42.031040, 26.853518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.160316, 41.895493, 26.537626>,  <44.037590, 41.814163, 26.348091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.160316, 41.895493, 26.537626>,  <44.364864, 42.031040, 26.853518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.160316, 41.895493, 26.537626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356386, 0.752594, -0.553706,
		0.781981, -0.564595, -0.264082,
		-0.511366, -0.338872, -0.789728,
		44.006905, 41.793831, 26.300709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853073, 41.996841, 26.236227>,  <44.364864, 42.031040, 26.853518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853073, 41.996841, 26.236227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.481197, 42.006607, 26.089209>,  <44.258072, 42.012466, 26.000998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.481197, 42.006607, 26.089209>,  <44.853073, 41.996841, 26.236227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481197, 42.006607, 26.089209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301872, 0.622297, -0.722232,
		0.211087, -0.782400, -0.585912,
		-0.929686, 0.024417, -0.367544,
		44.202293, 42.013931, 25.978945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961842, 41.933475, 25.490124>,  <44.853073, 41.996841, 26.236227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961842, 41.933475, 25.490124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.579880, 42.049244, 25.516617>,  <44.350700, 42.118706, 25.532513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.579880, 42.049244, 25.516617>,  <44.961842, 41.933475, 25.490124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579880, 42.049244, 25.516617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153811, 0.673043, -0.723433,
		-0.253951, -0.680625, -0.687211,
		-0.954909, 0.289417, 0.066233,
		44.293407, 42.136070, 25.536486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693256, 41.960117, 24.760700>,  <44.961842, 41.933475, 25.490124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693256, 41.960117, 24.760700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.488811, 42.204174, 25.002853>,  <44.366146, 42.350609, 25.148146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.488811, 42.204174, 25.002853>,  <44.693256, 41.960117, 24.760700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488811, 42.204174, 25.002853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174825, 0.763406, -0.621810,
		-0.841547, -0.211978, -0.496854,
		-0.511111, 0.610145, 0.605383,
		44.335480, 42.387218, 25.184469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499352, 42.423260, 24.371868>,  <44.693256, 41.960117, 24.760700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499352, 42.423260, 24.371868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.447098, 42.612026, 24.720633>,  <44.415745, 42.725288, 24.929892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.447098, 42.612026, 24.720633>,  <44.499352, 42.423260, 24.371868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.447098, 42.612026, 24.720633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235680, 0.869018, -0.435043,
		-0.963011, 0.148660, -0.224744,
		-0.130633, 0.471919, 0.871910,
		44.407909, 42.753601, 24.982206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883587, 42.966381, 24.341457>,  <44.499352, 42.423260, 24.371868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883587, 42.966381, 24.341457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.158001, 43.068005, 24.614166>,  <44.322647, 43.128979, 24.777792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.158001, 43.068005, 24.614166>,  <43.883587, 42.966381, 24.341457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158001, 43.068005, 24.614166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218923, 0.821546, -0.526437,
		-0.693854, 0.510408, 0.507986,
		0.686032, 0.254061, 0.681773,
		44.363811, 43.144222, 24.818699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.845947, 43.694553, 24.428570>,  <43.883587, 42.966381, 24.341457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.845947, 43.694553, 24.428570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.218102, 43.605659, 24.545179>,  <44.441395, 43.552322, 24.615145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.218102, 43.605659, 24.545179>,  <43.845947, 43.694553, 24.428570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.218102, 43.605659, 24.545179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344202, 0.803194, -0.486216,
		-0.126096, 0.552713, 0.823777,
		0.930390, -0.222236, 0.291524,
		44.497219, 43.538990, 24.632637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392586, 44.053329, 23.942636>,  <43.845947, 43.694553, 24.428570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392586, 44.053329, 23.942636> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.059391, 44.262074, 23.869093>,  <42.859474, 44.387318, 23.824966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.059391, 44.262074, 23.869093>,  <43.392586, 44.053329, 23.942636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059391, 44.262074, 23.869093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549746, -0.743008, 0.381732,
		0.062600, 0.419053, 0.905801,
		-0.832983, 0.521856, -0.183860,
		42.809498, 44.418629, 23.813934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034206, 44.195778, 24.608419>,  <43.392586, 44.053329, 23.942636>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034206, 44.195778, 24.608419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.807247, 44.189449, 24.279102>,  <42.671074, 44.185654, 24.081512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.807247, 44.189449, 24.279102>,  <43.034206, 44.195778, 24.608419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807247, 44.189449, 24.279102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565130, -0.719703, 0.403305,
		-0.598907, 0.694101, 0.399416,
		-0.567396, -0.015821, -0.823293,
		42.637028, 44.184704, 24.032114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.390137, 44.325657, 24.848747>,  <43.034206, 44.195778, 24.608419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.390137, 44.325657, 24.848747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.329094, 44.139362, 24.500080>,  <42.292469, 44.027588, 24.290880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.329094, 44.139362, 24.500080>,  <42.390137, 44.325657, 24.848747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329094, 44.139362, 24.500080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653265, -0.614296, 0.442589,
		-0.741590, 0.636972, -0.210501,
		-0.152607, -0.465733, -0.871668,
		42.283310, 43.999641, 24.238581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657825, 44.340919, 24.756966>,  <42.390137, 44.325657, 24.848747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657825, 44.340919, 24.756966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.789944, 44.049862, 24.516485>,  <41.869213, 43.875229, 24.372196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.789944, 44.049862, 24.516485>,  <41.657825, 44.340919, 24.756966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789944, 44.049862, 24.516485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745032, -0.592050, 0.307252,
		-0.579511, 0.346431, -0.737667,
		0.330294, -0.727642, -0.601202,
		41.889030, 43.831570, 24.336124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070271, 44.101688, 24.353449>,  <41.657825, 44.340919, 24.756966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070271, 44.101688, 24.353449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.356220, 43.822044, 24.347765>,  <41.527790, 43.654259, 24.344355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.356220, 43.822044, 24.347765>,  <41.070271, 44.101688, 24.353449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.356220, 43.822044, 24.347765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631698, -0.654388, 0.415612,
		-0.299858, -0.288132, -0.909431,
		0.714872, -0.699111, -0.014211,
		41.570683, 43.612312, 24.343502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753063, 43.560703, 24.087345>,  <41.070271, 44.101688, 24.353449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753063, 43.560703, 24.087345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067593, 43.397709, 24.273096>,  <41.256310, 43.299911, 24.384546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.067593, 43.397709, 24.273096>,  <40.753063, 43.560703, 24.087345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.067593, 43.397709, 24.273096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575102, -0.757395, 0.309209,
		0.225720, -0.510205, -0.829905,
		0.786326, -0.407485, 0.464379,
		41.303490, 43.275463, 24.412409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794388, 42.884701, 23.889894>,  <40.753063, 43.560703, 24.087345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794388, 42.884701, 23.889894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.012280, 42.893379, 24.225227>,  <41.143013, 42.898586, 24.426428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.012280, 42.893379, 24.225227>,  <40.794388, 42.884701, 23.889894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012280, 42.893379, 24.225227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380175, -0.884653, 0.269916,
		0.747490, -0.465744, -0.473646,
		0.544725, 0.021691, 0.838335,
		41.175697, 42.899887, 24.476728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199554, 42.252968, 24.002588>,  <40.794388, 42.884701, 23.889894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199554, 42.252968, 24.002588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.239883, 42.373238, 24.381941>,  <41.264080, 42.445400, 24.609552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.239883, 42.373238, 24.381941>,  <41.199554, 42.252968, 24.002588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239883, 42.373238, 24.381941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281547, -0.905653, 0.317055,
		0.954236, -0.298981, -0.006655,
		0.100821, 0.300672, 0.948384,
		41.270130, 42.463440, 24.666456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555119, 41.705143, 24.207045>,  <41.199554, 42.252968, 24.002588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555119, 41.705143, 24.207045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.403301, 41.893845, 24.525389>,  <41.312210, 42.007065, 24.716394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.403301, 41.893845, 24.525389>,  <41.555119, 41.705143, 24.207045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403301, 41.893845, 24.525389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228357, -0.881382, 0.413544,
		0.896548, -0.024781, 0.442253,
		-0.379546, 0.471754, 0.795860,
		41.289436, 42.035370, 24.764147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954647, 41.428009, 24.767326>,  <41.555119, 41.705143, 24.207045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954647, 41.428009, 24.767326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.621655, 41.579498, 24.929092>,  <41.421860, 41.670391, 25.026152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.621655, 41.579498, 24.929092>,  <41.954647, 41.428009, 24.767326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621655, 41.579498, 24.929092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145487, -0.853717, 0.500001,
		0.534617, 0.357402, 0.765799,
		-0.832477, 0.378723, 0.404414,
		41.371910, 41.693115, 25.050417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985767, 41.354366, 25.506422>,  <41.954647, 41.428009, 24.767326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985767, 41.354366, 25.506422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.594059, 41.389393, 25.433363>,  <41.359035, 41.410408, 25.389528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.594059, 41.389393, 25.433363>,  <41.985767, 41.354366, 25.506422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594059, 41.389393, 25.433363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189941, -0.710226, 0.677866,
		-0.070359, 0.698506, 0.712137,
		-0.979271, 0.087570, -0.182646,
		41.300278, 41.415665, 25.378569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.652607, 41.194817, 26.145586>,  <41.985767, 41.354366, 25.506422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.652607, 41.194817, 26.145586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.361786, 41.170185, 25.872061>,  <41.187294, 41.155407, 25.707945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.361786, 41.170185, 25.872061>,  <41.652607, 41.194817, 26.145586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361786, 41.170185, 25.872061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518534, -0.603554, 0.605677,
		-0.450018, 0.794940, 0.406883,
		-0.727054, -0.061583, -0.683813,
		41.143669, 41.151711, 25.666916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030277, 41.395386, 26.457520>,  <41.652607, 41.194817, 26.145586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.030277, 41.395386, 26.457520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.908005, 41.156494, 26.160904>,  <40.834641, 41.013161, 25.982935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.908005, 41.156494, 26.160904>,  <41.030277, 41.395386, 26.457520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908005, 41.156494, 26.160904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450308, -0.595525, 0.665262,
		-0.838916, 0.537279, -0.086895,
		-0.305683, -0.597228, -0.741537,
		40.816299, 40.977325, 25.938442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374908, 41.232880, 26.564896>,  <41.030277, 41.395386, 26.457520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374908, 41.232880, 26.564896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.472466, 40.928322, 26.324629>,  <40.531002, 40.745586, 26.180470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.472466, 40.928322, 26.324629>,  <40.374908, 41.232880, 26.564896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472466, 40.928322, 26.324629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411455, -0.642102, 0.646846,
		-0.878191, 0.089385, -0.469883,
		0.243894, -0.761391, -0.600666,
		40.545635, 40.699905, 26.144428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778774, 40.788498, 26.656694>,  <40.374908, 41.232880, 26.564896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778774, 40.788498, 26.656694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.055702, 40.573357, 26.464275>,  <40.221859, 40.444271, 26.348824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.055702, 40.573357, 26.464275>,  <39.778774, 40.788498, 26.656694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.055702, 40.573357, 26.464275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329316, -0.828684, 0.452586,
		-0.642061, -0.154918, -0.750838,
		0.692321, -0.537851, -0.481048,
		40.263397, 40.412003, 26.319962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406895, 40.234859, 26.374586>,  <39.778774, 40.788498, 26.656694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406895, 40.234859, 26.374586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.783142, 40.099545, 26.385838>,  <40.008892, 40.018356, 26.392588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.783142, 40.099545, 26.385838>,  <39.406895, 40.234859, 26.374586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783142, 40.099545, 26.385838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312882, -0.831869, 0.458365,
		-0.131659, -0.439950, -0.888319,
		0.940622, -0.338287, 0.028129,
		40.065331, 39.998058, 26.394276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307468, 39.611305, 26.090576>,  <39.406895, 40.234859, 26.374586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307468, 39.611305, 26.090576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.644699, 39.616169, 26.305637>,  <39.847038, 39.619087, 26.434673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.644699, 39.616169, 26.305637>,  <39.307468, 39.611305, 26.090576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644699, 39.616169, 26.305637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253547, -0.872673, 0.417320,
		0.474269, -0.488154, -0.732649,
		0.843079, 0.012161, 0.537652,
		39.897621, 39.619816, 26.466932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634136, 38.905945, 26.017014>,  <39.307468, 39.611305, 26.090576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634136, 38.905945, 26.017014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.780807, 39.056190, 26.357473>,  <39.868813, 39.146339, 26.561750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.780807, 39.056190, 26.357473>,  <39.634136, 38.905945, 26.017014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780807, 39.056190, 26.357473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280079, -0.827865, 0.485999,
		0.887186, -0.416597, -0.198361,
		0.366682, 0.375615, 0.851151,
		39.890812, 39.168877, 26.612818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966595, 38.332500, 26.347788>,  <39.634136, 38.905945, 26.017014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966595, 38.332500, 26.347788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.902985, 38.595543, 26.642344>,  <39.864819, 38.753368, 26.819077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.902985, 38.595543, 26.642344>,  <39.966595, 38.332500, 26.347788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902985, 38.595543, 26.642344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178328, -0.752745, 0.633698,
		0.971036, -0.030547, 0.236972,
		-0.159022, 0.657603, 0.736390,
		39.855278, 38.792824, 26.863260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134365, 37.857594, 26.816969>,  <39.966595, 38.332500, 26.347788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134365, 37.857594, 26.816969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.979927, 38.173569, 27.007517>,  <39.887264, 38.363155, 27.121845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.979927, 38.173569, 27.007517>,  <40.134365, 37.857594, 26.816969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979927, 38.173569, 27.007517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458627, -0.612445, 0.643872,
		0.800369, 0.030121, 0.598750,
		-0.386096, 0.789939, 0.476368,
		39.864098, 38.410549, 27.150427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407116, 37.814644, 27.518906>,  <40.134365, 37.857594, 26.816969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407116, 37.814644, 27.518906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.079830, 38.042206, 27.552063>,  <39.883457, 38.178741, 27.571959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.079830, 38.042206, 27.552063>,  <40.407116, 37.814644, 27.518906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079830, 38.042206, 27.552063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349585, -0.606795, 0.713856,
		0.456417, 0.555108, 0.695369,
		-0.818214, 0.568906, 0.082895,
		39.834366, 38.212879, 27.576931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.425365, 36.011478, 32.506252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.039944, 36.111465, 32.468121>,  <41.808693, 36.171459, 32.445240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.039944, 36.111465, 32.468121>,  <42.425365, 36.011478, 32.506252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039944, 36.111465, 32.468121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189466, -0.386022, 0.902823,
		0.188876, 0.887977, 0.419311,
		-0.963550, 0.249967, -0.095331,
		41.750877, 36.186455, 32.439522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312374, 36.232433, 33.145901>,  <42.425365, 36.011478, 32.506252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312374, 36.232433, 33.145901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.946632, 36.195595, 32.988182>,  <41.727188, 36.173492, 32.893551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.946632, 36.195595, 32.988182>,  <42.312374, 36.232433, 33.145901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946632, 36.195595, 32.988182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340008, -0.354179, 0.871178,
		-0.219883, 0.930632, 0.292533,
		-0.914356, -0.092094, -0.394300,
		41.672325, 36.167965, 32.869892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846920, 36.593822, 33.547424>,  <42.312374, 36.232433, 33.145901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846920, 36.593822, 33.547424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.624908, 36.322773, 33.354439>,  <41.491699, 36.160145, 33.238647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.624908, 36.322773, 33.354439>,  <41.846920, 36.593822, 33.547424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624908, 36.322773, 33.354439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472482, -0.220539, 0.853301,
		-0.684616, 0.701565, -0.197757,
		-0.555033, -0.677620, -0.482461,
		41.458397, 36.119488, 33.209702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074383, 36.645741, 33.782345>,  <41.846920, 36.593822, 33.547424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074383, 36.645741, 33.782345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.138069, 36.280373, 33.632511>,  <41.176281, 36.061153, 33.542610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.138069, 36.280373, 33.632511>,  <41.074383, 36.645741, 33.782345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138069, 36.280373, 33.632511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395381, -0.406666, 0.823588,
		-0.904612, 0.016973, -0.425898,
		0.159219, -0.913419, -0.374586,
		41.185837, 36.006348, 33.520134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407051, 36.372375, 33.902275>,  <41.074383, 36.645741, 33.782345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407051, 36.372375, 33.902275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.666561, 36.071411, 33.856728>,  <40.822269, 35.890831, 33.829399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.666561, 36.071411, 33.856728>,  <40.407051, 36.372375, 33.902275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666561, 36.071411, 33.856728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443327, -0.495324, 0.747072,
		-0.618507, -0.434202, -0.654918,
		0.648776, -0.752411, -0.113868,
		40.861195, 35.845688, 33.822567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945110, 35.805401, 33.905415>,  <40.407051, 36.372375, 33.902275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945110, 35.805401, 33.905415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.317421, 35.667377, 33.953728>,  <40.540806, 35.584564, 33.982716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.317421, 35.667377, 33.953728>,  <39.945110, 35.805401, 33.905415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317421, 35.667377, 33.953728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210838, -0.236734, 0.948422,
		-0.298669, -0.908235, -0.293098,
		0.930776, -0.345060, 0.120786,
		40.596653, 35.563862, 33.989964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832912, 35.096779, 34.138645>,  <39.945110, 35.805401, 33.905415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832912, 35.096779, 34.138645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.210667, 35.167519, 34.249538>,  <40.437321, 35.209965, 34.316074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.210667, 35.167519, 34.249538>,  <39.832912, 35.096779, 34.138645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210667, 35.167519, 34.249538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178958, -0.430880, 0.884486,
		0.275879, -0.884910, -0.375268,
		0.944386, 0.176854, 0.277233,
		40.493984, 35.220573, 34.332706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095642, 34.533356, 34.526485>,  <39.832912, 35.096779, 34.138645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095642, 34.533356, 34.526485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.347862, 34.816193, 34.654507>,  <40.499195, 34.985893, 34.731319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.347862, 34.816193, 34.654507>,  <40.095642, 34.533356, 34.526485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.347862, 34.816193, 34.654507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215646, -0.236523, 0.947393,
		0.745592, -0.666394, 0.003342,
		0.630547, 0.707089, 0.320055,
		40.537025, 35.028320, 34.750523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569122, 34.141674, 34.915619>,  <40.095642, 34.533356, 34.526485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569122, 34.141674, 34.915619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.572132, 34.528522, 35.017296>,  <40.573936, 34.760632, 35.078300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.572132, 34.528522, 35.017296>,  <40.569122, 34.141674, 34.915619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572132, 34.528522, 35.017296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118452, -0.251545, 0.960570,
		0.992931, -0.037338, 0.112665,
		0.007526, 0.967125, 0.254190,
		40.574390, 34.818661, 35.093552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922092, 34.141754, 35.600636>,  <40.569122, 34.141674, 34.915619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922092, 34.141754, 35.600636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.739914, 34.497845, 35.597172>,  <40.630608, 34.711498, 35.595093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.739914, 34.497845, 35.597172>,  <40.922092, 34.141754, 35.600636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739914, 34.497845, 35.597172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390382, -0.190962, 0.900630,
		0.800109, 0.413565, 0.434500,
		-0.455443, 0.890223, -0.008658,
		40.603283, 34.764912, 35.594574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881466, 34.457329, 36.336708>,  <40.922092, 34.141754, 35.600636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881466, 34.457329, 36.336708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576969, 34.615795, 36.131355>,  <40.394272, 34.710876, 36.008144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576969, 34.615795, 36.131355>,  <40.881466, 34.457329, 36.336708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576969, 34.615795, 36.131355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630258, -0.265735, 0.729493,
		0.152578, 0.878884, 0.451976,
		-0.761245, 0.396167, -0.513379,
		40.348595, 34.734646, 35.977341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435406, 34.123150, 36.946667>,  <40.881466, 34.457329, 36.336708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435406, 34.123150, 36.946667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.532772, 34.343491, 37.265991>,  <40.591190, 34.475697, 37.457588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.532772, 34.343491, 37.265991>,  <40.435406, 34.123150, 36.946667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532772, 34.343491, 37.265991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056813, -0.813561, 0.578698,
		0.968257, -0.186217, -0.166736,
		0.243414, 0.550856, 0.798315,
		40.605797, 34.508747, 37.505486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698273, 33.802612, 37.270081>,  <40.435406, 34.123150, 36.946667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698273, 33.802612, 37.270081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032330, 33.901878, 37.466427>,  <40.232765, 33.961437, 37.584232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.032330, 33.901878, 37.466427>,  <39.698273, 33.802612, 37.270081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032330, 33.901878, 37.466427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055225, 0.925753, -0.374075,
		-0.547251, 0.285299, 0.786842,
		0.835144, 0.248167, 0.490864,
		40.282871, 33.976330, 37.613686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507957, 34.338558, 37.751438>,  <39.698273, 33.802612, 37.270081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.507957, 34.338558, 37.751438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.890587, 34.365875, 37.638084>,  <40.120163, 34.382267, 37.570072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.890587, 34.365875, 37.638084>,  <39.507957, 34.338558, 37.751438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890587, 34.365875, 37.638084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151586, 0.946919, -0.283488,
		0.248978, 0.314133, 0.916150,
		0.956573, 0.068293, -0.283381,
		40.177559, 34.386364, 37.553070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125046, 34.879978, 37.956867>,  <39.507957, 34.338558, 37.751438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125046, 34.879978, 37.956867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.949177, 35.187454, 38.142681>,  <38.843655, 35.371941, 38.254169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.949177, 35.187454, 38.142681>,  <39.125046, 34.879978, 37.956867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949177, 35.187454, 38.142681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085810, 0.550799, -0.830215,
		-0.894049, -0.325162, -0.308133,
		-0.439674, 0.768694, 0.464539,
		38.817276, 35.418064, 38.282043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737289, 35.216049, 37.410812>,  <39.125046, 34.879978, 37.956867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737289, 35.216049, 37.410812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773502, 35.490097, 37.699924>,  <38.795231, 35.654526, 37.873394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.773502, 35.490097, 37.699924>,  <38.737289, 35.216049, 37.410812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773502, 35.490097, 37.699924> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159796, 0.706367, -0.689573,
		-0.982990, 0.177925, -0.045533,
		0.090529, 0.685119, 0.722784,
		38.800663, 35.695633, 37.916759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365826, 35.762051, 37.113785>,  <38.737289, 35.216049, 37.410812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365826, 35.762051, 37.113785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556591, 35.944172, 37.414516>,  <38.671051, 36.053444, 37.594955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.556591, 35.944172, 37.414516>,  <38.365826, 35.762051, 37.113785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.556591, 35.944172, 37.414516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296031, 0.722198, -0.625137,
		-0.827597, 0.520704, 0.209644,
		0.476916, 0.455300, 0.751833,
		38.699665, 36.080761, 37.640068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083157, 36.489002, 37.250271>,  <38.365826, 35.762051, 37.113785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083157, 36.489002, 37.250271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.468807, 36.434372, 37.341324>,  <38.700195, 36.401592, 37.395954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.468807, 36.434372, 37.341324>,  <38.083157, 36.489002, 37.250271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468807, 36.434372, 37.341324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250536, 0.751609, -0.610177,
		-0.087754, 0.645315, 0.758860,
		0.964122, -0.136576, 0.227631,
		38.758045, 36.393398, 37.409615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196491, 37.025871, 37.121571>,  <38.083157, 36.489002, 37.250271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196491, 37.025871, 37.121571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569656, 36.896839, 37.185596>,  <38.793556, 36.819420, 37.224014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.569656, 36.896839, 37.185596>,  <38.196491, 37.025871, 37.121571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569656, 36.896839, 37.185596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345514, 0.676539, -0.650319,
		0.101487, 0.661995, 0.742605,
		0.932910, -0.322579, 0.160069,
		38.849529, 36.800064, 37.233616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586781, 37.629684, 37.184662>,  <38.196491, 37.025871, 37.121571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586781, 37.629684, 37.184662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.864208, 37.351475, 37.109604>,  <39.030663, 37.184547, 37.064568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.864208, 37.351475, 37.109604>,  <38.586781, 37.629684, 37.184662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864208, 37.351475, 37.109604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385631, 0.578467, -0.718794,
		0.608485, 0.426171, 0.669421,
		0.693567, -0.695525, -0.187644,
		39.072277, 37.142818, 37.053310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243305, 37.970081, 37.237488>,  <38.586781, 37.629684, 37.184662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243305, 37.970081, 37.237488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.286659, 37.631924, 37.028275>,  <39.312672, 37.429028, 36.902748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.286659, 37.631924, 37.028275>,  <39.243305, 37.970081, 37.237488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286659, 37.631924, 37.028275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423097, 0.515331, -0.745266,
		0.899578, -0.140516, 0.413539,
		0.108388, -0.845393, -0.523032,
		39.319176, 37.378307, 36.871365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953411, 37.966373, 37.039253>,  <39.243305, 37.970081, 37.237488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953411, 37.966373, 37.039253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.772816, 37.744240, 36.759892>,  <39.664459, 37.610962, 36.592274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.772816, 37.744240, 36.759892>,  <39.953411, 37.966373, 37.039253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772816, 37.744240, 36.759892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528061, 0.464638, -0.710819,
		0.719245, -0.689724, 0.083471,
		-0.451485, -0.555330, -0.698405,
		39.637371, 37.577641, 36.550369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526722, 37.876945, 36.548088>,  <39.953411, 37.966373, 37.039253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526722, 37.876945, 36.548088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.192162, 37.792877, 36.345600>,  <39.991425, 37.742435, 36.224106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.192162, 37.792877, 36.345600>,  <40.526722, 37.876945, 36.548088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192162, 37.792877, 36.345600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435790, 0.305179, -0.846731,
		0.332450, -0.928813, -0.163659,
		-0.836399, -0.210175, -0.506224,
		39.941242, 37.729824, 36.193733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797375, 37.581928, 35.924282>,  <40.526722, 37.876945, 36.548088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797375, 37.581928, 35.924282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.423958, 37.690475, 35.830597>,  <40.199909, 37.755604, 35.774387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.423958, 37.690475, 35.830597>,  <40.797375, 37.581928, 35.924282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423958, 37.690475, 35.830597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318699, 0.329223, -0.888844,
		-0.164100, -0.904417, -0.393830,
		-0.933543, 0.271372, -0.234211,
		40.143894, 37.771889, 35.760334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614666, 37.288292, 35.255150>,  <40.797375, 37.581928, 35.924282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614666, 37.288292, 35.255150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.383495, 37.612865, 35.289963>,  <40.244793, 37.807610, 35.310848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.383495, 37.612865, 35.289963>,  <40.614666, 37.288292, 35.255150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383495, 37.612865, 35.289963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357479, 0.347578, -0.866832,
		-0.733627, -0.469855, -0.490946,
		-0.577927, 0.811435, 0.087029,
		40.210117, 37.856297, 35.316071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474625, 37.421642, 34.632271>,  <40.614666, 37.288292, 35.255150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474625, 37.421642, 34.632271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.357853, 37.765419, 34.800148>,  <40.287788, 37.971684, 34.900875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.357853, 37.765419, 34.800148>,  <40.474625, 37.421642, 34.632271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357853, 37.765419, 34.800148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299166, 0.498839, -0.813424,
		-0.908448, -0.111904, -0.402740,
		-0.291929, 0.859440, 0.419692,
		40.270275, 38.023251, 34.926056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997009, 37.825073, 34.159081>,  <40.474625, 37.421642, 34.632271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997009, 37.825073, 34.159081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.151402, 38.103699, 34.401012>,  <40.244038, 38.270874, 34.546173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.151402, 38.103699, 34.401012>,  <39.997009, 37.825073, 34.159081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151402, 38.103699, 34.401012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376558, 0.479568, -0.792602,
		-0.842154, 0.533684, -0.077192,
		0.385980, 0.696560, 0.604833,
		40.267197, 38.312668, 34.582462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829006, 38.514004, 33.806244>,  <39.997009, 37.825073, 34.159081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829006, 38.514004, 33.806244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135506, 38.570141, 34.057056>,  <40.319405, 38.603821, 34.207542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.135506, 38.570141, 34.057056>,  <39.829006, 38.514004, 33.806244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135506, 38.570141, 34.057056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515097, 0.449194, -0.730000,
		-0.384105, 0.882343, 0.271907,
		0.766249, 0.140338, 0.627030,
		40.365379, 38.612244, 34.245167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438114, 39.093384, 34.105564>,  <39.829006, 38.514004, 33.806244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438114, 39.093384, 34.105564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.210110, 39.420654, 34.075447>,  <39.073307, 39.617016, 34.057377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.210110, 39.420654, 34.075447>,  <39.438114, 39.093384, 34.105564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210110, 39.420654, 34.075447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514444, -0.283943, 0.809150,
		0.640650, 0.499960, 0.582758,
		-0.570013, 0.818179, -0.075293,
		39.039104, 39.666107, 34.052860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308594, 39.402805, 34.804199>,  <39.438114, 39.093384, 34.105564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308594, 39.402805, 34.804199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.013203, 39.521908, 34.562210>,  <38.835968, 39.593369, 34.417015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.013203, 39.521908, 34.562210>,  <39.308594, 39.402805, 34.804199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013203, 39.521908, 34.562210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668057, -0.201504, 0.716307,
		0.091379, 0.933134, 0.347723,
		-0.738478, 0.297755, -0.604973,
		38.791660, 39.611233, 34.380718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924011, 39.923946, 35.226944>,  <39.308594, 39.402805, 34.804199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924011, 39.923946, 35.226944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.700951, 39.815815, 34.913013>,  <38.567116, 39.750935, 34.724655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.700951, 39.815815, 34.913013>,  <38.924011, 39.923946, 35.226944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700951, 39.815815, 34.913013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769252, -0.186963, 0.610980,
		-0.311901, 0.944439, -0.103693,
		-0.557647, -0.270331, -0.784826,
		38.533657, 39.734715, 34.677567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305286, 40.308201, 35.250134>,  <38.924011, 39.923946, 35.226944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305286, 40.308201, 35.250134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.239452, 39.970051, 35.046860>,  <38.199951, 39.767159, 34.924896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.239452, 39.970051, 35.046860>,  <38.305286, 40.308201, 35.250134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239452, 39.970051, 35.046860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764405, -0.216289, 0.607375,
		-0.623376, 0.488421, -0.610613,
		-0.164585, -0.845378, -0.508180,
		38.190079, 39.716438, 34.894405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641197, 40.352280, 35.324371>,  <38.305286, 40.308201, 35.250134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641197, 40.352280, 35.324371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.689831, 39.981770, 35.181686>,  <37.719009, 39.759464, 35.096077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.689831, 39.981770, 35.181686>,  <37.641197, 40.352280, 35.324371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689831, 39.981770, 35.181686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623230, -0.350941, 0.698874,
		-0.772530, 0.137342, -0.619947,
		0.121580, -0.926271, -0.356708,
		37.726303, 39.703888, 35.074673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974216, 40.089191, 35.254993>,  <37.641197, 40.352280, 35.324371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974216, 40.089191, 35.254993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.209675, 39.766075, 35.267437>,  <37.350948, 39.572205, 35.274902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.209675, 39.766075, 35.267437>,  <36.974216, 40.089191, 35.254993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209675, 39.766075, 35.267437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637353, -0.440089, 0.632537,
		-0.497271, -0.392163, -0.773906,
		0.588644, -0.807794, 0.031103,
		37.386269, 39.523739, 35.276768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464558, 39.452583, 35.366230>,  <36.974216, 40.089191, 35.254993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464558, 39.452583, 35.366230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.818104, 39.287067, 35.453461>,  <37.030231, 39.187759, 35.505798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.818104, 39.287067, 35.453461>,  <36.464558, 39.452583, 35.366230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818104, 39.287067, 35.453461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446544, -0.607739, 0.656697,
		-0.139202, -0.677813, -0.721936,
		0.883867, -0.413790, 0.218075,
		37.083263, 39.162930, 35.518883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480038, 38.711376, 35.157269>,  <36.464558, 39.452583, 35.366230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480038, 38.711376, 35.157269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.716999, 38.789192, 35.469990>,  <36.859177, 38.835880, 35.657623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.716999, 38.789192, 35.469990>,  <36.480038, 38.711376, 35.157269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716999, 38.789192, 35.469990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551632, -0.609299, 0.569611,
		0.587163, -0.768706, -0.253635,
		0.592403, 0.194541, 0.781801,
		36.894718, 38.847553, 35.704529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528843, 38.116135, 35.500862>,  <36.480038, 38.711376, 35.157269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528843, 38.116135, 35.500862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687557, 38.350307, 35.783657>,  <36.782787, 38.490810, 35.953335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687557, 38.350307, 35.783657>,  <36.528843, 38.116135, 35.500862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687557, 38.350307, 35.783657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481394, -0.523071, 0.703318,
		0.781550, -0.619405, 0.074277,
		0.396787, 0.585435, 0.706984,
		36.806595, 38.525936, 35.995754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815712, 37.662594, 36.044689>,  <36.528843, 38.116135, 35.500862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815712, 37.662594, 36.044689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.819923, 38.013832, 36.236038>,  <36.822453, 38.224575, 36.350849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.819923, 38.013832, 36.236038>,  <36.815712, 37.662594, 36.044689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819923, 38.013832, 36.236038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366125, -0.441795, 0.819005,
		0.930506, -0.183772, 0.316837,
		0.010533, 0.878092, 0.478377,
		36.823082, 38.277260, 36.379551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113667, 37.556606, 36.748756>,  <36.815712, 37.662594, 36.044689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113667, 37.556606, 36.748756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.899826, 37.891701, 36.793289>,  <36.771523, 38.092758, 36.820011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.899826, 37.891701, 36.793289>,  <37.113667, 37.556606, 36.748756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899826, 37.891701, 36.793289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460835, -0.399409, 0.792529,
		0.708401, 0.372380, 0.599584,
		-0.534602, 0.837738, 0.111336,
		36.739445, 38.143021, 36.826691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135391, 37.660477, 37.472641>,  <37.113667, 37.556606, 36.748756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135391, 37.660477, 37.472641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.818394, 37.840988, 37.308544>,  <36.628197, 37.949295, 37.210087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.818394, 37.840988, 37.308544>,  <37.135391, 37.660477, 37.472641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818394, 37.840988, 37.308544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588892, -0.391276, 0.707185,
		0.158618, 0.802029, 0.575838,
		-0.792494, 0.451278, -0.410245,
		36.580647, 37.976372, 37.185471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.270218, 41.966545, 31.979815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880299, 42.047161, 31.941568>,  <40.646347, 42.095531, 31.918621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880299, 42.047161, 31.941568>,  <41.270218, 41.966545, 31.979815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880299, 42.047161, 31.941568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221317, -0.820106, 0.527679,
		0.027938, 0.535543, 0.844046,
		-0.974802, 0.201544, -0.095613,
		40.587856, 42.107624, 31.912884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998131, 41.826088, 32.602512>,  <41.270218, 41.966545, 31.979815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998131, 41.826088, 32.602512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694561, 41.809101, 32.342594>,  <40.512421, 41.798908, 32.186642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694561, 41.809101, 32.342594>,  <40.998131, 41.826088, 32.602512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694561, 41.809101, 32.342594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390777, -0.768515, 0.506634,
		-0.520895, 0.638420, 0.566646,
		-0.758922, -0.042471, -0.649796,
		40.466885, 41.796360, 32.147655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354874, 41.946526, 32.995647>,  <40.998131, 41.826088, 32.602512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354874, 41.946526, 32.995647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238346, 41.755367, 32.664165>,  <40.168430, 41.640671, 32.465279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238346, 41.755367, 32.664165>,  <40.354874, 41.946526, 32.995647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.238346, 41.755367, 32.664165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665988, -0.520548, 0.534313,
		-0.686725, 0.707563, -0.166625,
		-0.291323, -0.477896, -0.828701,
		40.150948, 41.612000, 32.415554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573605, 42.041771, 32.980278>,  <40.354874, 41.946526, 32.995647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573605, 42.041771, 32.980278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685665, 41.734970, 32.749374>,  <39.752903, 41.550892, 32.610832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685665, 41.734970, 32.749374>,  <39.573605, 42.041771, 32.980278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685665, 41.734970, 32.749374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659784, -0.590640, 0.464575,
		-0.697280, 0.250713, -0.671524,
		0.280154, -0.767000, -0.577257,
		39.769711, 41.504871, 32.576199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967308, 41.670422, 32.770477>,  <39.573605, 42.041771, 32.980278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967308, 41.670422, 32.770477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252296, 41.391983, 32.735073>,  <39.423290, 41.224918, 32.713833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252296, 41.391983, 32.735073>,  <38.967308, 41.670422, 32.770477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252296, 41.391983, 32.735073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559438, -0.639624, 0.527172,
		-0.423576, -0.326079, -0.845137,
		0.712469, -0.696099, -0.088508,
		39.466038, 41.183155, 32.708519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640221, 41.057873, 32.672527>,  <38.967308, 41.670422, 32.770477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640221, 41.057873, 32.672527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011475, 40.951530, 32.776749>,  <39.234226, 40.887726, 32.839283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011475, 40.951530, 32.776749>,  <38.640221, 41.057873, 32.672527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011475, 40.951530, 32.776749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371602, -0.620548, 0.690530,
		-0.021894, -0.737727, -0.674744,
		0.928134, -0.265854, 0.260555,
		39.289913, 40.871773, 32.854916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581406, 40.336952, 32.801327>,  <38.640221, 41.057873, 32.672527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581406, 40.336952, 32.801327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932693, 40.447361, 32.957554>,  <39.143467, 40.513607, 33.051292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932693, 40.447361, 32.957554>,  <38.581406, 40.336952, 32.801327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932693, 40.447361, 32.957554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197734, -0.534030, 0.822018,
		0.435469, -0.799140, -0.414417,
		0.878219, 0.276019, 0.390571,
		39.196159, 40.530167, 33.074726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062626, 39.759033, 32.774075>,  <38.581406, 40.336952, 32.801327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062626, 39.759033, 32.774075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146446, 40.007698, 33.075970>,  <39.196739, 40.156898, 33.257107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146446, 40.007698, 33.075970>,  <39.062626, 39.759033, 32.774075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146446, 40.007698, 33.075970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228063, -0.719508, 0.655969,
		0.950829, -0.309587, -0.008997,
		0.209553, 0.621662, 0.754735,
		39.209312, 40.194195, 33.302391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390896, 39.298534, 33.268070>,  <39.062626, 39.759033, 32.774075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390896, 39.298534, 33.268070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285164, 39.627468, 33.469620>,  <39.221725, 39.824829, 33.590549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285164, 39.627468, 33.469620>,  <39.390896, 39.298534, 33.268070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285164, 39.627468, 33.469620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433134, -0.568026, 0.699815,
		0.861698, -0.033260, 0.506331,
		-0.264333, 0.822338, 0.503873,
		39.205864, 39.874168, 33.620781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021164, 39.188213, 33.665173>,  <39.390896, 39.298534, 33.268070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021164, 39.188213, 33.665173> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331779, 39.063068, 33.883930>,  <40.518150, 38.987980, 34.015186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331779, 39.063068, 33.883930>,  <40.021164, 39.188213, 33.665173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331779, 39.063068, 33.883930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630018, 0.396208, -0.667904,
		-0.007721, 0.863211, 0.504784,
		0.776542, -0.312866, 0.546898,
		40.564743, 38.969208, 34.048000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500854, 39.685249, 33.772545>,  <40.021164, 39.188213, 33.665173>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500854, 39.685249, 33.772545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719124, 39.357334, 33.842041>,  <40.850086, 39.160583, 33.883739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719124, 39.357334, 33.842041>,  <40.500854, 39.685249, 33.772545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719124, 39.357334, 33.842041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645493, 0.278971, -0.710995,
		0.534396, 0.500122, 0.681395,
		0.545673, -0.819789, 0.173745,
		40.882824, 39.111397, 33.894165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218906, 39.943462, 33.999592>,  <40.500854, 39.685249, 33.772545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218906, 39.943462, 33.999592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242519, 39.578178, 33.838310>,  <41.256687, 39.359009, 33.741543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242519, 39.578178, 33.838310>,  <41.218906, 39.943462, 33.999592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242519, 39.578178, 33.838310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666629, 0.336706, -0.665008,
		0.743049, -0.229532, 0.628644,
		0.059028, -0.913206, -0.403202,
		41.260227, 39.304218, 33.717350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955654, 39.783169, 33.987999>,  <41.218906, 39.943462, 33.999592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955654, 39.783169, 33.987999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783962, 39.556694, 33.706520>,  <41.680946, 39.420811, 33.537632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783962, 39.556694, 33.706520>,  <41.955654, 39.783169, 33.987999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783962, 39.556694, 33.706520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633125, 0.367036, -0.681496,
		0.644136, -0.738051, 0.200922,
		-0.429233, -0.566185, -0.703700,
		41.655193, 39.386837, 33.495411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503624, 39.544048, 33.507259>,  <41.955654, 39.783169, 33.987999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503624, 39.544048, 33.507259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172417, 39.493126, 33.288834>,  <41.973694, 39.462570, 33.157780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172417, 39.493126, 33.288834>,  <42.503624, 39.544048, 33.507259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172417, 39.493126, 33.288834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511740, 0.226440, -0.828763,
		0.229132, -0.965673, -0.122364,
		-0.828022, -0.127278, -0.546058,
		41.924011, 39.454933, 33.125015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821621, 39.320351, 32.945297>,  <42.503624, 39.544048, 33.507259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821621, 39.320351, 32.945297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446507, 39.411942, 32.840900>,  <42.221436, 39.466896, 32.778263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.446507, 39.411942, 32.840900>,  <42.821621, 39.320351, 32.945297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446507, 39.411942, 32.840900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328741, 0.343742, -0.879643,
		-0.111707, -0.910719, -0.397634,
		-0.937791, 0.228981, -0.260992,
		42.165169, 39.480637, 32.762604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747517, 39.038372, 32.330673>,  <42.821621, 39.320351, 32.945297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747517, 39.038372, 32.330673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465103, 39.321606, 32.325939>,  <42.295654, 39.491547, 32.323097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465103, 39.321606, 32.325939>,  <42.747517, 39.038372, 32.330673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465103, 39.321606, 32.325939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353380, 0.337771, -0.872372,
		-0.613714, -0.620103, -0.488699,
		-0.706030, 0.708084, -0.011837,
		42.253296, 39.534031, 32.322388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490227, 38.994625, 31.667921>,  <42.747517, 39.038372, 32.330673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490227, 38.994625, 31.667921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419155, 39.354084, 31.828356>,  <42.376511, 39.569759, 31.924616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419155, 39.354084, 31.828356>,  <42.490227, 38.994625, 31.667921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419155, 39.354084, 31.828356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223917, 0.433798, -0.872743,
		-0.958275, -0.065258, -0.278298,
		-0.177679, 0.898643, 0.401086,
		42.365852, 39.623676, 31.948681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251926, 39.378326, 31.029806>,  <42.490227, 38.994625, 31.667921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251926, 39.378326, 31.029806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293968, 39.683975, 31.284386>,  <42.319191, 39.867367, 31.437134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293968, 39.683975, 31.284386>,  <42.251926, 39.378326, 31.029806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.293968, 39.683975, 31.284386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328866, 0.577277, -0.747395,
		-0.938510, 0.287859, -0.190621,
		0.105103, 0.764126, 0.636447,
		42.325500, 39.913212, 31.475319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982731, 40.014122, 30.713140>,  <42.251926, 39.378326, 31.029806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982731, 40.014122, 30.713140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248554, 40.110310, 30.996136>,  <42.408047, 40.168022, 31.165934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248554, 40.110310, 30.996136>,  <41.982731, 40.014122, 30.713140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248554, 40.110310, 30.996136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422714, 0.659766, -0.621307,
		-0.616179, 0.711959, 0.336804,
		0.664557, 0.240465, 0.707489,
		42.447922, 40.182449, 31.208382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216122, 40.756233, 30.611742>,  <41.982731, 40.014122, 30.713140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216122, 40.756233, 30.611742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502022, 40.620197, 30.856190>,  <42.673561, 40.538574, 31.002857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502022, 40.620197, 30.856190>,  <42.216122, 40.756233, 30.611742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502022, 40.620197, 30.856190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682489, 0.530047, -0.503249,
		-0.152770, 0.776780, 0.610962,
		0.714752, -0.340093, 0.611118,
		42.716446, 40.518169, 31.039526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.579933, 41.359837, 30.960476>,  <42.216122, 40.756233, 30.611742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.579933, 41.359837, 30.960476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830971, 41.048504, 30.953287>,  <42.981594, 40.861702, 30.948975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830971, 41.048504, 30.953287>,  <42.579933, 41.359837, 30.960476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830971, 41.048504, 30.953287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668385, 0.550485, -0.500228,
		0.399237, 0.301927, 0.865708,
		0.627592, -0.778335, -0.017971,
		43.019249, 40.815002, 30.947895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329544, 41.649773, 30.978645>,  <42.579933, 41.359837, 30.960476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329544, 41.649773, 30.978645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392036, 41.274406, 30.855381>,  <43.429531, 41.049187, 30.781422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392036, 41.274406, 30.855381>,  <43.329544, 41.649773, 30.978645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392036, 41.274406, 30.855381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716915, 0.322347, -0.618163,
		0.679431, -0.124350, 0.723126,
		0.156229, -0.938419, -0.308161,
		43.438904, 40.992882, 30.762934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.025963, 41.551998, 30.986431>,  <43.329544, 41.649773, 30.978645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.025963, 41.551998, 30.986431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925350, 41.277729, 30.713203>,  <43.864983, 41.113167, 30.549267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.925350, 41.277729, 30.713203>,  <44.025963, 41.551998, 30.986431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.925350, 41.277729, 30.713203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634538, 0.416083, -0.651334,
		0.730816, -0.597266, 0.330427,
		-0.251534, -0.685673, -0.683068,
		43.849892, 41.072025, 30.508284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.657681, 40.408905, 26.752571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982151, 40.475494, 26.976814>,  <37.176834, 40.515450, 27.111361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.982151, 40.475494, 26.976814>,  <36.657681, 40.408905, 26.752571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982151, 40.475494, 26.976814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281021, -0.729722, 0.623324,
		0.512855, -0.663167, -0.545150,
		0.811176, 0.166476, 0.560606,
		37.225502, 40.525436, 27.144997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801537, 39.781075, 27.046051>,  <36.657681, 40.408905, 26.752571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801537, 39.781075, 27.046051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984329, 40.038265, 27.291895>,  <37.094006, 40.192581, 27.439402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.984329, 40.038265, 27.291895>,  <36.801537, 39.781075, 27.046051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984329, 40.038265, 27.291895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317114, -0.527803, 0.787948,
		0.831027, -0.554981, -0.037299,
		0.456983, 0.642978, 0.614611,
		37.121426, 40.231159, 27.476278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241360, 39.374237, 27.451910>,  <36.801537, 39.781075, 27.046051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241360, 39.374237, 27.451910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.160591, 39.714725, 27.645676>,  <37.112129, 39.919018, 27.761934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.160591, 39.714725, 27.645676>,  <37.241360, 39.374237, 27.451910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160591, 39.714725, 27.645676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185713, -0.518906, 0.834415,
		0.961633, 0.078526, 0.262861,
		-0.201923, 0.851217, 0.484414,
		37.100014, 39.970089, 27.791000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379185, 39.165241, 28.054111>,  <37.241360, 39.374237, 27.451910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379185, 39.165241, 28.054111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.221153, 39.520206, 28.149113>,  <37.126335, 39.733185, 28.206114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.221153, 39.520206, 28.149113>,  <37.379185, 39.165241, 28.054111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221153, 39.520206, 28.149113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135342, -0.311944, 0.940411,
		0.908622, 0.339394, 0.243347,
		-0.395081, 0.887413, 0.237505,
		37.102631, 39.786430, 28.220364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738968, 39.411728, 28.677195>,  <37.379185, 39.165241, 28.054111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738968, 39.411728, 28.677195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374580, 39.571625, 28.636520>,  <37.155949, 39.667561, 28.612116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.374580, 39.571625, 28.636520>,  <37.738968, 39.411728, 28.677195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374580, 39.571625, 28.636520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269249, -0.389542, 0.880773,
		0.312469, 0.829738, 0.462491,
		-0.910971, 0.399740, -0.101686,
		37.101288, 39.691547, 28.606014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617790, 39.758808, 29.386602>,  <37.738968, 39.411728, 28.677195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617790, 39.758808, 29.386602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262787, 39.729584, 29.204620>,  <37.049786, 39.712048, 29.095430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.262787, 39.729584, 29.204620>,  <37.617790, 39.758808, 29.386602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262787, 39.729584, 29.204620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358087, -0.512027, 0.780771,
		-0.289994, 0.855857, 0.428267,
		-0.887512, -0.073062, -0.454955,
		36.996532, 39.707664, 29.068134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181202, 39.918350, 29.968454>,  <37.617790, 39.758808, 29.386602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181202, 39.918350, 29.968454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.963669, 39.731091, 29.689863>,  <36.833149, 39.618736, 29.522709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.963669, 39.731091, 29.689863>,  <37.181202, 39.918350, 29.968454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963669, 39.731091, 29.689863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245186, -0.705087, 0.665384,
		-0.802575, 0.532626, 0.268669,
		-0.543836, -0.468147, -0.696478,
		36.800518, 39.590645, 29.480921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577335, 39.751976, 30.308395>,  <37.181202, 39.918350, 29.968454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577335, 39.751976, 30.308395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.622540, 39.517639, 29.987392>,  <36.649662, 39.377037, 29.794790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.622540, 39.517639, 29.987392>,  <36.577335, 39.751976, 30.308395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622540, 39.517639, 29.987392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194206, -0.805129, 0.560403,
		-0.974429, 0.092520, -0.204763,
		0.113012, -0.585839, -0.802509,
		36.656445, 39.341888, 29.746639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072983, 39.241341, 30.433426>,  <36.577335, 39.751976, 30.308395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072983, 39.241341, 30.433426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321861, 39.080265, 30.164886>,  <36.471188, 38.983620, 30.003763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.321861, 39.080265, 30.164886>,  <36.072983, 39.241341, 30.433426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321861, 39.080265, 30.164886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268827, -0.915318, 0.299876,
		-0.735254, -0.006107, -0.677765,
		0.622201, -0.402687, -0.671349,
		36.508522, 38.959457, 29.963482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720165, 38.717827, 30.187214>,  <36.072983, 39.241341, 30.433426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720165, 38.717827, 30.187214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.086441, 38.647411, 30.042706>,  <36.306206, 38.605160, 29.955999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.086441, 38.647411, 30.042706>,  <35.720165, 38.717827, 30.187214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086441, 38.647411, 30.042706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144109, -0.983003, 0.113739,
		-0.375155, -0.052087, -0.925497,
		0.915691, -0.176043, -0.361273,
		36.361149, 38.594597, 29.934324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737198, 38.035271, 29.784752>,  <35.720165, 38.717827, 30.187214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737198, 38.035271, 29.784752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098839, 38.119522, 29.933470>,  <36.315823, 38.170074, 30.022701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098839, 38.119522, 29.933470>,  <35.737198, 38.035271, 29.784752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098839, 38.119522, 29.933470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056018, -0.920992, 0.385534,
		0.423625, -0.327735, -0.844471,
		0.904104, 0.210628, 0.371796,
		36.370071, 38.182709, 30.045008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119621, 37.359390, 29.797750>,  <35.737198, 38.035271, 29.784752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119621, 37.359390, 29.797750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.320805, 37.590549, 30.054834>,  <36.441513, 37.729244, 30.209085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.320805, 37.590549, 30.054834>,  <36.119621, 37.359390, 29.797750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320805, 37.590549, 30.054834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174357, -0.796158, 0.579424,
		0.846544, -0.179363, -0.501191,
		0.502954, 0.577894, 0.642709,
		36.471691, 37.763916, 30.247646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703171, 36.967590, 29.957270>,  <36.119621, 37.359390, 29.797750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703171, 36.967590, 29.957270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.698868, 37.229618, 30.259466>,  <36.696285, 37.386833, 30.440784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.698868, 37.229618, 30.259466>,  <36.703171, 36.967590, 29.957270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698868, 37.229618, 30.259466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041703, -0.755173, 0.654198,
		0.999072, -0.024470, 0.035440,
		-0.010755, 0.655069, 0.755493,
		36.695641, 37.426140, 30.486115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159172, 36.660709, 30.611425>,  <36.703171, 36.967590, 29.957270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159172, 36.660709, 30.611425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.922020, 36.937405, 30.776344>,  <36.779728, 37.103424, 30.875296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.922020, 36.937405, 30.776344>,  <37.159172, 36.660709, 30.611425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922020, 36.937405, 30.776344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131933, -0.588504, 0.797657,
		0.794410, 0.418519, 0.440175,
		-0.592880, 0.691741, 0.412297,
		36.744156, 37.144928, 30.900034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882374, 36.964287, 30.826090>,  <37.159172, 36.660709, 30.611425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882374, 36.964287, 30.826090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252926, 36.813679, 30.823027>,  <38.475258, 36.723312, 30.821188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.252926, 36.813679, 30.823027>,  <37.882374, 36.964287, 30.826090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252926, 36.813679, 30.823027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250691, 0.631717, -0.733545,
		0.281032, 0.677619, 0.679598,
		0.926377, -0.376519, -0.007660,
		38.530838, 36.700722, 30.820728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441139, 37.517670, 30.764675>,  <37.882374, 36.964287, 30.826090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441139, 37.517670, 30.764675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.582680, 37.177402, 30.609159>,  <38.667603, 36.973244, 30.515850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.582680, 37.177402, 30.609159>,  <38.441139, 37.517670, 30.764675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582680, 37.177402, 30.609159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438648, 0.518068, -0.734298,
		0.826063, 0.089289, 0.556460,
		0.353849, -0.850666, -0.388790,
		38.688835, 36.922203, 30.492523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033234, 37.746784, 30.562304>,  <38.441139, 37.517670, 30.764675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033234, 37.746784, 30.562304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.946629, 37.401783, 30.379343>,  <38.894665, 37.194782, 30.269566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.946629, 37.401783, 30.379343>,  <39.033234, 37.746784, 30.562304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946629, 37.401783, 30.379343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308111, 0.384205, -0.870318,
		0.926386, -0.329363, 0.182561,
		-0.216510, -0.862500, -0.457403,
		38.881676, 37.143032, 30.242123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669701, 37.496193, 30.156715>,  <39.033234, 37.746784, 30.562304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669701, 37.496193, 30.156715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.328278, 37.352406, 30.005869>,  <39.123425, 37.266132, 29.915361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.328278, 37.352406, 30.005869>,  <39.669701, 37.496193, 30.156715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328278, 37.352406, 30.005869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216604, 0.413466, -0.884380,
		0.473837, -0.836555, -0.275054,
		-0.853558, -0.359475, -0.377117,
		39.072208, 37.244564, 29.892735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908592, 37.216522, 29.521152>,  <39.669701, 37.496193, 30.156715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908592, 37.216522, 29.521152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.510490, 37.243561, 29.493145>,  <39.271629, 37.259785, 29.476341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.510490, 37.243561, 29.493145>,  <39.908592, 37.216522, 29.521152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.510490, 37.243561, 29.493145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096287, 0.579263, -0.809434,
		-0.014156, -0.812333, -0.583021,
		-0.995253, 0.067596, -0.070017,
		39.211914, 37.263840, 29.472139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772053, 36.996189, 28.905256>,  <39.908592, 37.216522, 29.521152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772053, 36.996189, 28.905256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.422024, 37.166698, 28.996946>,  <39.212006, 37.269005, 29.051960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.422024, 37.166698, 28.996946>,  <39.772053, 36.996189, 28.905256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422024, 37.166698, 28.996946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065253, 0.365378, -0.928569,
		-0.479574, -0.827522, -0.291917,
		-0.875072, 0.426270, 0.229224,
		39.159504, 37.294579, 29.065714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307762, 36.770031, 28.413664>,  <39.772053, 36.996189, 28.905256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307762, 36.770031, 28.413664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.176758, 37.112450, 28.573622>,  <39.098156, 37.317902, 28.669598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.176758, 37.112450, 28.573622>,  <39.307762, 36.770031, 28.413664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176758, 37.112450, 28.573622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035264, 0.434019, -0.900213,
		-0.944188, -0.280731, -0.172335,
		-0.327514, 0.856048, 0.399896,
		39.078503, 37.369263, 28.693590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852943, 37.098022, 27.948151>,  <39.307762, 36.770031, 28.413664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852943, 37.098022, 27.948151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970207, 37.396381, 28.187382>,  <39.040565, 37.575397, 28.330921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.970207, 37.396381, 28.187382>,  <38.852943, 37.098022, 27.948151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970207, 37.396381, 28.187382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172876, 0.573896, -0.800473,
		-0.940304, 0.338060, 0.039296,
		0.293160, 0.745895, 0.598079,
		39.058155, 37.620152, 28.366806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620094, 37.744839, 27.642752>,  <38.852943, 37.098022, 27.948151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620094, 37.744839, 27.642752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.885494, 37.892036, 27.903318>,  <39.044735, 37.980354, 28.059658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.885494, 37.892036, 27.903318>,  <38.620094, 37.744839, 27.642752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885494, 37.892036, 27.903318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304310, 0.662665, -0.684303,
		-0.683491, 0.652270, 0.327696,
		0.663502, 0.367993, 0.651418,
		39.084545, 38.002434, 28.098743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677578, 38.421658, 27.451193>,  <38.620094, 37.744839, 27.642752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677578, 38.421658, 27.451193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.013462, 38.371944, 27.662643>,  <39.214993, 38.342117, 27.789515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.013462, 38.371944, 27.662643>,  <38.677578, 38.421658, 27.451193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013462, 38.371944, 27.662643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457344, 0.686716, -0.565029,
		-0.292795, 0.716223, 0.633478,
		0.839707, -0.124280, 0.528628,
		39.265373, 38.334660, 27.821232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880592, 39.124695, 27.628899>,  <38.677578, 38.421658, 27.451193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880592, 39.124695, 27.628899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.170353, 38.849087, 27.619959>,  <39.344208, 38.683723, 27.614595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.170353, 38.849087, 27.619959>,  <38.880592, 39.124695, 27.628899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.170353, 38.849087, 27.619959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590122, 0.636536, -0.496567,
		0.356368, 0.346526, 0.867711,
		0.724402, -0.689016, -0.022348,
		39.387672, 38.642384, 27.613255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366146, 39.512917, 27.724607>,  <38.880592, 39.124695, 27.628899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366146, 39.512917, 27.724607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530300, 39.173965, 27.589825>,  <39.628792, 38.970596, 27.508955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530300, 39.173965, 27.589825>,  <39.366146, 39.512917, 27.724607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530300, 39.173965, 27.589825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675620, 0.530702, -0.511755,
		0.612471, -0.017636, 0.790297,
		0.410386, -0.847375, -0.336955,
		39.653416, 38.919754, 27.488739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065811, 39.613884, 27.842228>,  <39.366146, 39.512917, 27.724607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065811, 39.613884, 27.842228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.998806, 39.351933, 27.547455>,  <39.958603, 39.194763, 27.370590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.998806, 39.351933, 27.547455>,  <40.065811, 39.613884, 27.842228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998806, 39.351933, 27.547455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678708, 0.465552, -0.567994,
		0.715048, -0.595311, 0.366484,
		-0.167516, -0.654878, -0.736935,
		39.948551, 39.155468, 27.326374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635166, 39.394653, 27.648905>,  <40.065811, 39.613884, 27.842228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635166, 39.394653, 27.648905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.389347, 39.356094, 27.335718>,  <40.241856, 39.332958, 27.147806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.389347, 39.356094, 27.335718>,  <40.635166, 39.394653, 27.648905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389347, 39.356094, 27.335718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596414, 0.592860, -0.541116,
		0.516350, -0.799515, -0.306852,
		-0.614551, -0.096395, -0.782966,
		40.204983, 39.327175, 27.100828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364529, 39.121201, 27.640392>,  <40.635166, 39.394653, 27.648905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364529, 39.121201, 27.640392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.733742, 39.120632, 27.794279>,  <41.955269, 39.120293, 27.886610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.733742, 39.120632, 27.794279>,  <41.364529, 39.121201, 27.640392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733742, 39.120632, 27.794279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232849, -0.798095, 0.555721,
		0.306251, -0.602530, -0.737000,
		0.923034, -0.001420, 0.384716,
		42.010651, 39.120205, 27.909695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803825, 38.429928, 27.577024>,  <41.364529, 39.121201, 27.640392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.803825, 38.429928, 27.577024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.980610, 38.598312, 27.893875>,  <42.086681, 38.699345, 28.083984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.980610, 38.598312, 27.893875>,  <41.803825, 38.429928, 27.577024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.980610, 38.598312, 27.893875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072357, -0.863442, 0.499232,
		0.894111, -0.277957, -0.351149,
		0.441961, 0.420961, 0.792125,
		42.113197, 38.724602, 28.131512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135548, 37.901894, 27.887899>,  <41.803825, 38.429928, 27.577024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135548, 37.901894, 27.887899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.161659, 38.185707, 28.168554>,  <42.177326, 38.355995, 28.336948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.161659, 38.185707, 28.168554>,  <42.135548, 37.901894, 27.887899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161659, 38.185707, 28.168554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027979, -0.701561, 0.712059,
		0.997475, -0.066113, -0.025945,
		0.065278, 0.709536, 0.701640,
		42.181244, 38.398567, 28.379045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673660, 37.797684, 28.390230>,  <42.135548, 37.901894, 27.887899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673660, 37.797684, 28.390230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.433777, 38.059521, 28.574339>,  <42.289845, 38.216625, 28.684805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.433777, 38.059521, 28.574339>,  <42.673660, 37.797684, 28.390230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433777, 38.059521, 28.574339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064009, -0.534101, 0.842994,
		0.797653, 0.535014, 0.278406,
		-0.599710, 0.654596, 0.460273,
		42.253864, 38.255901, 28.712421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964500, 37.908222, 29.045227>,  <42.673660, 37.797684, 28.390230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964500, 37.908222, 29.045227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.573574, 37.990456, 29.065615>,  <42.339020, 38.039795, 29.077847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.573574, 37.990456, 29.065615>,  <42.964500, 37.908222, 29.045227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573574, 37.990456, 29.065615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052508, -0.468288, 0.882014,
		0.205192, 0.859327, 0.468459,
		-0.977312, 0.205580, 0.050967,
		42.280380, 38.052128, 29.080904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872135, 38.111256, 29.735334>,  <42.964500, 37.908222, 29.045227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872135, 38.111256, 29.735334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.497635, 38.041077, 29.613573>,  <42.272934, 37.998970, 29.540516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.497635, 38.041077, 29.613573>,  <42.872135, 38.111256, 29.735334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497635, 38.041077, 29.613573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205562, -0.429085, 0.879563,
		-0.284933, 0.886061, 0.365663,
		-0.936247, -0.175449, -0.304401,
		42.216763, 37.988441, 29.522253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494511, 38.371094, 30.239862>,  <42.872135, 38.111256, 29.735334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494511, 38.371094, 30.239862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.260143, 38.104443, 30.055555>,  <42.119522, 37.944454, 29.944971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.260143, 38.104443, 30.055555>,  <42.494511, 38.371094, 30.239862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.260143, 38.104443, 30.055555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133964, -0.481092, 0.866374,
		-0.799218, 0.569354, 0.192579,
		-0.585922, -0.666623, -0.460770,
		42.084366, 37.904457, 29.917324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842098, 38.346012, 30.606970>,  <42.494511, 38.371094, 30.239862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842098, 38.346012, 30.606970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.894711, 38.012180, 30.392988>,  <41.926277, 37.811882, 30.264599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.894711, 38.012180, 30.392988>,  <41.842098, 38.346012, 30.606970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894711, 38.012180, 30.392988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328639, -0.545837, 0.770752,
		-0.935252, 0.074431, -0.346069,
		0.131529, -0.834579, -0.534956,
		41.934170, 37.761806, 30.232502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110420, 38.037525, 30.568111>,  <41.842098, 38.346012, 30.606970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110420, 38.037525, 30.568111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.378788, 37.750050, 30.495058>,  <41.539806, 37.577564, 30.451225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.378788, 37.750050, 30.495058>,  <41.110420, 38.037525, 30.568111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378788, 37.750050, 30.495058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430399, -0.577978, 0.693324,
		-0.603848, -0.386551, -0.697098,
		0.670913, -0.718693, -0.182640,
		41.580063, 37.534443, 30.440268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750801, 37.306717, 30.637758>,  <41.110420, 38.037525, 30.568111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750801, 37.306717, 30.637758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.145374, 37.250927, 30.672396>,  <41.382118, 37.217453, 30.693178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.145374, 37.250927, 30.672396>,  <40.750801, 37.306717, 30.637758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145374, 37.250927, 30.672396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160602, -0.710451, 0.685176,
		-0.034043, -0.689787, -0.723211,
		0.986432, -0.139475, 0.086595,
		41.441303, 37.209084, 30.698374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881203, 36.602482, 30.599583>,  <40.750801, 37.306717, 30.637758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881203, 36.602482, 30.599583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.223064, 36.731747, 30.762129>,  <41.428181, 36.809307, 30.859657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.223064, 36.731747, 30.762129>,  <40.881203, 36.602482, 30.599583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223064, 36.731747, 30.762129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046334, -0.732082, 0.679639,
		0.517130, -0.599683, -0.610702,
		0.854652, 0.323165, 0.406367,
		41.479462, 36.828697, 30.884039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184376, 36.068275, 30.889755>,  <40.881203, 36.602482, 30.599583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184376, 36.068275, 30.889755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.405331, 36.345737, 31.074669>,  <41.537903, 36.512215, 31.185617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.405331, 36.345737, 31.074669>,  <41.184376, 36.068275, 30.889755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405331, 36.345737, 31.074669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021531, -0.566259, 0.823946,
		0.833310, -0.445183, -0.327729,
		0.552386, 0.693659, 0.462284,
		41.571045, 36.553837, 31.213354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733074, 35.690323, 31.244728>,  <41.184376, 36.068275, 30.889755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733074, 35.690323, 31.244728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.687454, 36.045723, 31.422522>,  <41.660084, 36.258961, 31.529198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.687454, 36.045723, 31.422522>,  <41.733074, 35.690323, 31.244728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687454, 36.045723, 31.422522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044082, -0.442436, 0.895716,
		0.992497, 0.121750, 0.011292,
		-0.114049, 0.888497, 0.444483,
		41.653240, 36.312271, 31.555866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.352955, 35.935215, 31.740522>,  <41.733074, 35.690323, 31.244728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.352955, 35.935215, 31.740522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.998291, 36.086861, 31.846437>,  <41.785492, 36.177849, 31.909986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.998291, 36.086861, 31.846437>,  <42.352955, 35.935215, 31.740522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998291, 36.086861, 31.846437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070305, -0.455437, 0.887488,
		0.457051, 0.805514, 0.377163,
		-0.886658, 0.379111, 0.264789,
		41.732292, 36.200596, 31.925875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.758869, 41.288067, 30.670023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.464527, 41.156368, 30.433342>,  <44.287922, 41.077347, 30.291334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.464527, 41.156368, 30.433342>,  <44.758869, 41.288067, 30.670023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464527, 41.156368, 30.433342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547091, 0.225827, -0.806036,
		0.399011, -0.916840, 0.013955,
		-0.735854, -0.329252, -0.591703,
		44.243771, 41.057594, 30.255831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.092068, 41.053669, 30.042345>,  <44.758869, 41.288067, 30.670023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.092068, 41.053669, 30.042345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.712471, 41.137932, 29.948502>,  <44.484715, 41.188492, 29.892195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.712471, 41.137932, 29.948502>,  <45.092068, 41.053669, 30.042345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.712471, 41.137932, 29.948502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306286, 0.439186, -0.844574,
		-0.074881, -0.873349, -0.481305,
		-0.948990, 0.210660, -0.234608,
		44.427773, 41.201130, 29.878119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.003002, 40.939117, 29.243002>,  <45.092068, 41.053669, 30.042345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.003002, 40.939117, 29.243002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.710613, 41.180454, 29.370537>,  <44.535179, 41.325256, 29.447058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.710613, 41.180454, 29.370537>,  <45.003002, 40.939117, 29.243002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710613, 41.180454, 29.370537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114849, 0.569326, -0.814050,
		-0.672676, -0.558428, -0.485454,
		-0.730970, 0.603346, 0.318837,
		44.491322, 41.361458, 29.466188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.534847, 41.111046, 28.606276>,  <45.003002, 40.939117, 29.243002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.534847, 41.111046, 28.606276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.509747, 41.395691, 28.886179>,  <44.494686, 41.566479, 29.054121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.509747, 41.395691, 28.886179>,  <44.534847, 41.111046, 28.606276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509747, 41.395691, 28.886179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128948, 0.701047, -0.701360,
		-0.989664, 0.046222, -0.135752,
		-0.062750, 0.711616, 0.699761,
		44.490921, 41.609177, 29.096107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172825, 41.693439, 28.288469>,  <44.534847, 41.111046, 28.606276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172825, 41.693439, 28.288469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.339756, 41.864662, 28.609119>,  <44.439915, 41.967396, 28.801510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.339756, 41.864662, 28.609119>,  <44.172825, 41.693439, 28.288469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339756, 41.864662, 28.609119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143179, 0.840123, -0.523156,
		-0.897404, 0.333105, 0.289321,
		0.417332, 0.428058, 0.801624,
		44.464954, 41.993080, 28.849607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000130, 42.304119, 28.203955>,  <44.172825, 41.693439, 28.288469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000130, 42.304119, 28.203955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.274357, 42.375816, 28.486195>,  <44.438892, 42.418835, 28.655539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.274357, 42.375816, 28.486195>,  <44.000130, 42.304119, 28.203955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274357, 42.375816, 28.486195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176767, 0.899230, -0.400175,
		-0.706222, 0.399074, 0.584800,
		0.685569, 0.179239, 0.705599,
		44.480026, 42.429588, 28.697874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827560, 42.884163, 28.613871>,  <44.000130, 42.304119, 28.203955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827560, 42.884163, 28.613871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.223755, 42.829166, 28.615917>,  <44.461472, 42.796169, 28.617146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.223755, 42.829166, 28.615917>,  <43.827560, 42.884163, 28.613871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.223755, 42.829166, 28.615917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119069, 0.837968, -0.532572,
		0.068933, 0.528117, 0.846369,
		0.990490, -0.137488, 0.005119,
		44.520901, 42.787922, 28.617453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060238, 43.596565, 28.622126>,  <43.827560, 42.884163, 28.613871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060238, 43.596565, 28.622126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.373009, 43.363522, 28.533434>,  <44.560669, 43.223694, 28.480219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.373009, 43.363522, 28.533434>,  <44.060238, 43.596565, 28.622126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373009, 43.363522, 28.533434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351797, 0.706054, -0.614595,
		0.514621, 0.402562, 0.757040,
		0.781923, -0.582608, -0.221730,
		44.607586, 43.188740, 28.466915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591534, 44.065235, 28.577183>,  <44.060238, 43.596565, 28.622126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591534, 44.065235, 28.577183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.724178, 43.731384, 28.401257>,  <44.803764, 43.531075, 28.295702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.724178, 43.731384, 28.401257>,  <44.591534, 44.065235, 28.577183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.724178, 43.731384, 28.401257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313168, 0.537142, -0.783202,
		0.889923, 0.121980, 0.439498,
		0.331607, -0.834626, -0.439814,
		44.823662, 43.480995, 28.269312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253830, 44.273418, 28.396923>,  <44.591534, 44.065235, 28.577183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253830, 44.273418, 28.396923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.156685, 43.957928, 28.171028>,  <45.098396, 43.768635, 28.035492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.156685, 43.957928, 28.171028>,  <45.253830, 44.273418, 28.396923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.156685, 43.957928, 28.171028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217682, 0.523010, -0.824060,
		0.945321, -0.323067, 0.044672,
		-0.242862, -0.788726, -0.564738,
		45.083828, 43.721310, 28.001606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.769314, 44.071949, 27.971930>,  <45.253830, 44.273418, 28.396923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.769314, 44.071949, 27.971930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.453293, 43.920441, 27.779119>,  <45.263680, 43.829536, 27.663433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.453293, 43.920441, 27.779119>,  <45.769314, 44.071949, 27.971930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.453293, 43.920441, 27.779119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281630, 0.474150, -0.834186,
		0.544517, -0.794804, -0.267931,
		-0.790055, -0.378771, -0.482024,
		45.216278, 43.806808, 27.634512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936428, 43.808632, 27.307261>,  <45.769314, 44.071949, 27.971930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936428, 43.808632, 27.307261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.545212, 43.862198, 27.243393>,  <45.310482, 43.894337, 27.205072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.545212, 43.862198, 27.243393>,  <45.936428, 43.808632, 27.307261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.545212, 43.862198, 27.243393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203434, 0.447424, -0.870877,
		-0.045187, -0.884239, -0.464844,
		-0.978046, 0.133917, -0.159667,
		45.251797, 43.902374, 27.195494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.929749, 43.687088, 26.625793>,  <45.936428, 43.808632, 27.307261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.929749, 43.687088, 26.625793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.579124, 43.868614, 26.689909>,  <45.368752, 43.977531, 26.728378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.579124, 43.868614, 26.689909>,  <45.929749, 43.687088, 26.625793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.579124, 43.868614, 26.689909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169362, 0.602577, -0.779883,
		-0.450511, -0.656467, -0.605055,
		-0.876559, 0.453819, 0.160287,
		45.316158, 44.004761, 26.737995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619118, 43.796234, 25.980639>,  <45.929749, 43.687088, 26.625793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619118, 43.796234, 25.980639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.414280, 44.034969, 26.227716>,  <45.291378, 44.178211, 26.375963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.414280, 44.034969, 26.227716>,  <45.619118, 43.796234, 25.980639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.414280, 44.034969, 26.227716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263397, 0.793615, -0.548450,
		-0.817548, -0.118157, -0.563608,
		-0.512091, 0.596837, 0.617696,
		45.260654, 44.214020, 26.413025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973061, 43.387985, 25.935369>,  <45.619118, 43.796234, 25.980639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973061, 43.387985, 25.935369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.775791, 43.363148, 25.588285>,  <44.657429, 43.348244, 25.380035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.775791, 43.363148, 25.588285>,  <44.973061, 43.387985, 25.935369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.775791, 43.363148, 25.588285> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577392, -0.722705, 0.379889,
		-0.650687, 0.688361, 0.320569,
		-0.493178, -0.062094, -0.867710,
		44.627838, 43.344521, 25.327972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168102, 43.387058, 26.071909>,  <44.973061, 43.387985, 25.935369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168102, 43.387058, 26.071909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.253475, 43.187302, 25.736040>,  <44.304699, 43.067448, 25.534519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.253475, 43.187302, 25.736040>,  <44.168102, 43.387058, 26.071909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253475, 43.187302, 25.736040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488415, -0.798906, 0.350999,
		-0.846106, 0.335192, -0.414428,
		0.213437, -0.499396, -0.839672,
		44.317505, 43.037483, 25.484138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546982, 43.196281, 25.857494>,  <44.168102, 43.387058, 26.071909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546982, 43.196281, 25.857494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.802483, 42.945808, 25.678658>,  <43.955784, 42.795525, 25.571356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.802483, 42.945808, 25.678658>,  <43.546982, 43.196281, 25.857494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802483, 42.945808, 25.678658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495841, -0.779335, 0.383117,
		-0.588337, -0.023028, -0.808288,
		0.638750, -0.626184, -0.447094,
		43.994106, 42.757954, 25.544529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121777, 42.673058, 25.636621>,  <43.546982, 43.196281, 25.857494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121777, 42.673058, 25.636621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.480213, 42.497307, 25.611408>,  <43.695274, 42.391857, 25.596281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.480213, 42.497307, 25.611408>,  <43.121777, 42.673058, 25.636621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480213, 42.497307, 25.611408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348534, -0.784424, 0.513034,
		-0.274857, -0.437756, -0.856051,
		0.896090, -0.439374, -0.063032,
		43.749039, 42.365494, 25.592499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.050732, 42.004421, 25.350538>,  <43.121777, 42.673058, 25.636621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.050732, 42.004421, 25.350538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.384491, 42.022282, 25.570276>,  <43.584747, 42.032997, 25.702120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.384491, 42.022282, 25.570276>,  <43.050732, 42.004421, 25.350538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.384491, 42.022282, 25.570276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222837, -0.884285, 0.410347,
		0.504100, -0.464809, -0.727898,
		0.834402, 0.044653, 0.549345,
		43.634811, 42.035679, 25.735079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334229, 41.340176, 25.337626>,  <43.050732, 42.004421, 25.350538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334229, 41.340176, 25.337626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.528294, 41.518005, 25.638815>,  <43.644733, 41.624702, 25.819529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.528294, 41.518005, 25.638815>,  <43.334229, 41.340176, 25.337626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528294, 41.518005, 25.638815> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161917, -0.800541, 0.576990,
		0.859303, -0.401852, -0.316406,
		0.485160, 0.444578, 0.752974,
		43.673843, 41.651379, 25.864708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779385, 40.736061, 25.555664>,  <43.334229, 41.340176, 25.337626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779385, 40.736061, 25.555664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.744812, 41.008942, 25.846079>,  <43.724068, 41.172672, 26.020327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.744812, 41.008942, 25.846079>,  <43.779385, 40.736061, 25.555664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744812, 41.008942, 25.846079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292640, -0.713998, 0.636057,
		0.952309, -0.157492, 0.261352,
		-0.086431, 0.682204, 0.726035,
		43.718884, 41.213604, 26.063889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182331, 40.408611, 26.084030>,  <43.779385, 40.736061, 25.555664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182331, 40.408611, 26.084030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.923199, 40.684002, 26.214453>,  <43.767719, 40.849236, 26.292706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.923199, 40.684002, 26.214453>,  <44.182331, 40.408611, 26.084030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.923199, 40.684002, 26.214453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293678, -0.620649, 0.727013,
		0.702897, 0.375228, 0.604267,
		-0.647834, 0.688476, 0.326056,
		43.728848, 40.890545, 26.312269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.229694, 40.243061, 26.832159>,  <44.182331, 40.408611, 26.084030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.229694, 40.243061, 26.832159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.896011, 40.455826, 26.773954>,  <43.695801, 40.583485, 26.739031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.896011, 40.455826, 26.773954>,  <44.229694, 40.243061, 26.832159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896011, 40.455826, 26.773954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413621, -0.429011, 0.803037,
		0.364715, 0.730085, 0.577891,
		-0.834207, 0.531907, -0.145512,
		43.645748, 40.615398, 26.730301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899303, 40.402321, 27.579443>,  <44.229694, 40.243061, 26.832159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899303, 40.402321, 27.579443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.621948, 40.441265, 27.293859>,  <43.455536, 40.464630, 27.122509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.621948, 40.441265, 27.293859>,  <43.899303, 40.402321, 27.579443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.621948, 40.441265, 27.293859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620296, -0.584850, 0.522670,
		-0.366673, 0.805278, 0.465916,
		-0.693385, 0.097357, -0.713960,
		43.413933, 40.470470, 27.079672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312931, 40.763363, 27.929583>,  <43.899303, 40.402321, 27.579443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312931, 40.763363, 27.929583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.194042, 40.533356, 27.624687>,  <43.122707, 40.395351, 27.441750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.194042, 40.533356, 27.624687>,  <43.312931, 40.763363, 27.929583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194042, 40.533356, 27.624687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626698, -0.484801, 0.610097,
		-0.720352, 0.659030, -0.216269,
		-0.297225, -0.575020, -0.762240,
		43.104874, 40.360851, 27.396015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643585, 40.614727, 28.077868>,  <43.312931, 40.763363, 27.929583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643585, 40.614727, 28.077868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.683784, 40.367435, 27.766048>,  <42.707905, 40.219063, 27.578957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.683784, 40.367435, 27.766048>,  <42.643585, 40.614727, 28.077868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683784, 40.367435, 27.766048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531574, -0.695677, 0.483180,
		-0.841029, 0.365827, -0.398550,
		0.100502, -0.618227, -0.779548,
		42.713936, 40.181969, 27.532185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921761, 40.409477, 27.968216>,  <42.643585, 40.614727, 28.077868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921761, 40.409477, 27.968216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.168369, 40.135780, 27.812410>,  <42.316334, 39.971561, 27.718927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.168369, 40.135780, 27.812410>,  <41.921761, 40.409477, 27.968216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168369, 40.135780, 27.812410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459728, -0.714474, 0.527425,
		-0.639180, -0.146099, -0.755052,
		0.616521, -0.684239, -0.389511,
		42.353325, 39.930508, 27.695557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491543, 39.898422, 27.726812>,  <41.921761, 40.409477, 27.968216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491543, 39.898422, 27.726812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.852245, 39.728615, 27.759356>,  <42.068668, 39.626732, 27.778881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.852245, 39.728615, 27.759356>,  <41.491543, 39.898422, 27.726812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.852245, 39.728615, 27.759356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419423, -0.813874, 0.402112,
		-0.104487, -0.396731, -0.911969,
		0.901758, -0.424516, 0.081359,
		42.122772, 39.601261, 27.783764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104504, 39.619488, 27.136690>,  <41.491543, 39.898422, 27.726812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104504, 39.619488, 27.136690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.745270, 39.602390, 26.961592>,  <40.529732, 39.592133, 26.856533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.745270, 39.602390, 26.961592>,  <41.104504, 39.619488, 27.136690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745270, 39.602390, 26.961592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345189, 0.548274, -0.761735,
		0.272566, -0.835206, -0.477640,
		-0.898083, -0.042747, -0.437744,
		40.475845, 39.589565, 26.830269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301292, 39.563236, 26.432968>,  <41.104504, 39.619488, 27.136690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301292, 39.563236, 26.432968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.926643, 39.700878, 26.406633>,  <40.701855, 39.783463, 26.390833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.926643, 39.700878, 26.406633>,  <41.301292, 39.563236, 26.432968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926643, 39.700878, 26.406633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275773, 0.608216, -0.744327,
		-0.216083, -0.715308, -0.664562,
		-0.936620, 0.344104, -0.065837,
		40.645657, 39.804108, 26.386883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075134, 39.562496, 25.722034>,  <41.301292, 39.563236, 26.432968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075134, 39.562496, 25.722034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.843090, 39.833889, 25.902315>,  <40.703865, 39.996727, 26.010483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.843090, 39.833889, 25.902315>,  <41.075134, 39.562496, 25.722034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843090, 39.833889, 25.902315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206122, 0.657591, -0.724629,
		-0.788027, -0.327465, -0.521326,
		-0.580110, 0.678484, 0.450702,
		40.669056, 40.037434, 26.037525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793896, 39.867867, 25.158438>,  <41.075134, 39.562496, 25.722034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793896, 39.867867, 25.158438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.721062, 40.126026, 25.455170>,  <40.677361, 40.280922, 25.633209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.721062, 40.126026, 25.455170>,  <40.793896, 39.867867, 25.158438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721062, 40.126026, 25.455170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134756, 0.763700, -0.631350,
		-0.974006, -0.014992, -0.226028,
		-0.182082, 0.645397, 0.741828,
		40.666435, 40.319645, 25.677719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327534, 40.277004, 24.902060>,  <40.793896, 39.867867, 25.158438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327534, 40.277004, 24.902060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.493610, 40.477463, 25.205761>,  <40.593258, 40.597736, 25.387981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.493610, 40.477463, 25.205761>,  <40.327534, 40.277004, 24.902060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493610, 40.477463, 25.205761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148680, 0.785989, -0.600097,
		-0.897501, 0.362042, 0.251827,
		0.415194, 0.501146, 0.759254,
		40.618168, 40.627808, 25.433537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200241, 40.923141, 24.772694>,  <40.327534, 40.277004, 24.902060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200241, 40.923141, 24.772694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.461720, 41.002804, 25.064726>,  <40.618607, 41.050602, 25.239944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.461720, 41.002804, 25.064726>,  <40.200241, 40.923141, 24.772694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461720, 41.002804, 25.064726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175849, 0.898366, -0.402512,
		-0.736041, 0.391505, 0.552239,
		0.653698, 0.199155, 0.730080,
		40.657829, 41.062550, 25.283751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994465, 41.589821, 25.060669>,  <40.200241, 40.923141, 24.772694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994465, 41.589821, 25.060669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.374405, 41.517406, 25.162655>,  <40.602367, 41.473957, 25.223846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.374405, 41.517406, 25.162655>,  <39.994465, 41.589821, 25.060669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374405, 41.517406, 25.162655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248427, 0.932075, -0.263667,
		-0.189912, 0.313784, 0.930308,
		0.949851, -0.181040, 0.254965,
		40.659359, 41.463093, 25.239145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483044, 41.628891, 25.401899>,  <39.994465, 41.589821, 25.060669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483044, 41.628891, 25.401899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.198044, 41.874035, 25.538567>,  <39.027042, 42.021122, 25.620567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.198044, 41.874035, 25.538567>,  <39.483044, 41.628891, 25.401899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198044, 41.874035, 25.538567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344446, -0.729726, 0.590641,
		0.611306, 0.303149, 0.731031,
		-0.712504, 0.612863, 0.341667,
		38.984291, 42.057896, 25.641068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472740, 41.540939, 26.092405>,  <39.483044, 41.628891, 25.401899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472740, 41.540939, 26.092405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.108883, 41.684792, 26.009253>,  <38.890568, 41.771103, 25.959360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.108883, 41.684792, 26.009253>,  <39.472740, 41.540939, 26.092405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108883, 41.684792, 26.009253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413693, -0.739142, 0.531534,
		0.037501, 0.569506, 0.821132,
		-0.909644, 0.359629, -0.207882,
		38.835991, 41.792679, 25.946888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156284, 41.668793, 26.785332>,  <39.472740, 41.540939, 26.092405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156284, 41.668793, 26.785332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.883839, 41.638844, 26.493994>,  <38.720371, 41.620876, 26.319191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.883839, 41.638844, 26.493994>,  <39.156284, 41.668793, 26.785332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883839, 41.638844, 26.493994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586555, -0.539591, 0.603983,
		-0.438227, 0.838592, 0.323606,
		-0.681110, -0.074869, -0.728343,
		38.679504, 41.616383, 26.275492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574257, 41.972809, 27.042215>,  <39.156284, 41.668793, 26.785332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574257, 41.972809, 27.042215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.420547, 41.745049, 26.751528>,  <38.328320, 41.608395, 26.577116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.420547, 41.745049, 26.751528>,  <38.574257, 41.972809, 27.042215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420547, 41.745049, 26.751528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630345, -0.413303, 0.657149,
		-0.674533, 0.710611, -0.200093,
		-0.384278, -0.569397, -0.726717,
		38.305264, 41.574230, 26.533512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864990, 42.098316, 26.944698>,  <38.574257, 41.972809, 27.042215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864990, 42.098316, 26.944698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.907265, 41.736328, 26.779846>,  <37.932629, 41.519135, 26.680935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.907265, 41.736328, 26.779846>,  <37.864990, 42.098316, 26.944698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907265, 41.736328, 26.779846> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670985, -0.370782, 0.642106,
		-0.733900, 0.208670, -0.646411,
		0.105689, -0.904974, -0.412131,
		37.938972, 41.464836, 26.656206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179482, 41.714962, 26.864471>,  <37.864990, 42.098316, 26.944698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179482, 41.714962, 26.864471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.451168, 41.424500, 26.821835>,  <37.614178, 41.250221, 26.796251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.451168, 41.424500, 26.821835>,  <37.179482, 41.714962, 26.864471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451168, 41.424500, 26.821835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604482, -0.635847, 0.479895,
		-0.416257, -0.261518, -0.870826,
		0.679214, -0.726159, -0.106593,
		37.654934, 41.206654, 26.789856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814194, 41.102688, 26.698025>,  <37.179482, 41.714962, 26.864471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814194, 41.102688, 26.698025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.163254, 40.958073, 26.829336>,  <37.372692, 40.871304, 26.908123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.163254, 40.958073, 26.829336>,  <36.814194, 41.102688, 26.698025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163254, 40.958073, 26.829336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487742, -0.678469, 0.549352,
		0.024116, -0.639510, -0.768404,
		0.872655, -0.361535, 0.328278,
		37.425049, 40.849613, 26.927820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.658237, 46.694450, 27.653856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.751690, 46.437546, 27.361853>,  <42.807762, 46.283401, 27.186651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.751690, 46.437546, 27.361853>,  <42.658237, 46.694450, 27.653856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751690, 46.437546, 27.361853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769772, -0.580855, 0.264684,
		-0.594027, 0.500104, -0.630101,
		0.233628, -0.642264, -0.730010,
		42.821781, 46.244865, 27.142851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060547, 46.438309, 27.445284>,  <42.658237, 46.694450, 27.653856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060547, 46.438309, 27.445284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.338955, 46.156563, 27.389542>,  <42.506001, 45.987514, 27.356096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.338955, 46.156563, 27.389542>,  <42.060547, 46.438309, 27.445284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338955, 46.156563, 27.389542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598055, -0.676110, 0.430355,
		-0.397349, -0.216192, -0.891838,
		0.696020, -0.704369, -0.139357,
		42.547760, 45.945251, 27.347734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667770, 45.860157, 27.283783>,  <42.060547, 46.438309, 27.445284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667770, 45.860157, 27.283783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.025360, 45.737816, 27.414793>,  <42.239914, 45.664410, 27.493399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.025360, 45.737816, 27.414793>,  <41.667770, 45.860157, 27.283783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025360, 45.737816, 27.414793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447713, -0.641012, 0.623423,
		0.019270, -0.703958, -0.709980,
		0.893970, -0.305854, 0.327524,
		42.293552, 45.646061, 27.513050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619766, 45.120152, 27.360199>,  <41.667770, 45.860157, 27.283783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619766, 45.120152, 27.360199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.921757, 45.254993, 27.585186>,  <42.102951, 45.335899, 27.720179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.921757, 45.254993, 27.585186>,  <41.619766, 45.120152, 27.360199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921757, 45.254993, 27.585186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282462, -0.606918, 0.742877,
		0.591797, -0.719732, -0.362991,
		0.754978, 0.337101, 0.562469,
		42.148251, 45.356125, 27.753927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878883, 44.545368, 27.769056>,  <41.619766, 45.120152, 27.360199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878883, 44.545368, 27.769056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.034199, 44.838596, 27.992428>,  <42.127388, 45.014534, 28.126450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.034199, 44.838596, 27.992428>,  <41.878883, 44.545368, 27.769056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034199, 44.838596, 27.992428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333594, -0.453064, 0.826709,
		0.859040, -0.507287, 0.068631,
		0.388285, 0.733071, 0.558428,
		42.150684, 45.058517, 28.159956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206882, 44.141224, 28.301556>,  <41.878883, 44.545368, 27.769056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206882, 44.141224, 28.301556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193630, 44.517223, 28.437382>,  <42.185680, 44.742825, 28.518877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.193630, 44.517223, 28.437382>,  <42.206882, 44.141224, 28.301556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193630, 44.517223, 28.437382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391508, -0.324803, 0.860944,
		0.919578, -0.104421, 0.378777,
		-0.033127, 0.940000, 0.339563,
		42.183693, 44.799225, 28.539251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445290, 44.048378, 28.924320>,  <42.206882, 44.141224, 28.301556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445290, 44.048378, 28.924320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.254311, 44.399765, 28.931704>,  <42.139725, 44.610596, 28.936134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.254311, 44.399765, 28.931704>,  <42.445290, 44.048378, 28.924320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254311, 44.399765, 28.931704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394090, -0.232867, 0.889082,
		0.785328, 0.417213, 0.457376,
		-0.477444, 0.878469, 0.018458,
		42.111076, 44.663307, 28.937241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537167, 44.326092, 29.609104>,  <42.445290, 44.048378, 28.924320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537167, 44.326092, 29.609104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.209740, 44.493088, 29.451294>,  <42.013283, 44.593285, 29.356607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.209740, 44.493088, 29.451294>,  <42.537167, 44.326092, 29.609104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209740, 44.493088, 29.451294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496791, -0.169757, 0.851106,
		0.288354, 0.892684, 0.346362,
		-0.818566, 0.417490, -0.394527,
		41.964169, 44.618336, 29.332935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279377, 44.629059, 30.167948>,  <42.537167, 44.326092, 29.609104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279377, 44.629059, 30.167948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.992256, 44.603493, 29.890627>,  <41.819984, 44.588154, 29.724234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.992256, 44.603493, 29.890627>,  <42.279377, 44.629059, 30.167948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992256, 44.603493, 29.890627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636958, -0.341806, 0.690980,
		-0.281139, 0.937595, 0.204639,
		-0.717806, -0.063915, -0.693303,
		41.776913, 44.584316, 29.682636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.718262, 44.973652, 30.500340>,  <42.279377, 44.629059, 30.167948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.718262, 44.973652, 30.500340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.582657, 44.744225, 30.202053>,  <41.501293, 44.606567, 30.023081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.582657, 44.744225, 30.202053>,  <41.718262, 44.973652, 30.500340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582657, 44.744225, 30.202053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573522, -0.502328, 0.647100,
		-0.745748, 0.647061, -0.158655,
		-0.339017, -0.573565, -0.745714,
		41.480953, 44.572155, 29.978338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956127, 44.955830, 30.606319>,  <41.718262, 44.973652, 30.500340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956127, 44.955830, 30.606319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.995033, 44.645985, 30.356358>,  <41.018375, 44.460075, 30.206381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.995033, 44.645985, 30.356358>,  <40.956127, 44.955830, 30.606319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995033, 44.645985, 30.356358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633518, -0.532439, 0.561394,
		-0.767590, 0.341287, -0.542520,
		0.097262, -0.774617, -0.624907,
		41.024212, 44.413601, 30.168886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247917, 44.657372, 30.588034>,  <40.956127, 44.955830, 30.606319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247917, 44.657372, 30.588034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.531006, 44.402390, 30.466192>,  <40.700859, 44.249401, 30.393087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.531006, 44.402390, 30.466192>,  <40.247917, 44.657372, 30.588034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531006, 44.402390, 30.466192> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472066, -0.747448, 0.467413,
		-0.525632, -0.187003, -0.829904,
		0.707718, -0.637457, -0.304605,
		40.743320, 44.211151, 30.374811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770729, 44.632336, 30.056709>,  <40.247917, 44.657372, 30.588034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770729, 44.632336, 30.056709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.412663, 44.800171, 29.996548>,  <39.197823, 44.900871, 29.960451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.412663, 44.800171, 29.996548>,  <39.770729, 44.632336, 30.056709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412663, 44.800171, 29.996548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370544, 0.512972, -0.774311,
		-0.247741, -0.748867, -0.614672,
		-0.895166, 0.419592, -0.150404,
		39.144112, 44.926048, 29.951426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655148, 44.479702, 29.383085>,  <39.770729, 44.632336, 30.056709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655148, 44.479702, 29.383085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.438934, 44.798244, 29.491631>,  <39.309204, 44.989368, 29.556759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.438934, 44.798244, 29.491631>,  <39.655148, 44.479702, 29.383085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438934, 44.798244, 29.491631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200049, 0.434955, -0.877949,
		-0.817191, -0.420277, -0.394419,
		-0.540536, 0.796355, 0.271365,
		39.276772, 45.037151, 29.573040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383163, 44.685360, 28.805902>,  <39.655148, 44.479702, 29.383085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383163, 44.685360, 28.805902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.314144, 45.011665, 29.026720>,  <39.272732, 45.207447, 29.159210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.314144, 45.011665, 29.026720>,  <39.383163, 44.685360, 28.805902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314144, 45.011665, 29.026720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131483, 0.574512, -0.807867,
		-0.976186, -0.066812, -0.206390,
		-0.172549, 0.815765, 0.552046,
		39.262379, 45.256393, 29.192333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816437, 45.076756, 28.444139>,  <39.383163, 44.685360, 28.805902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816437, 45.076756, 28.444139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033447, 45.327934, 28.667334>,  <39.163654, 45.478642, 28.801250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.033447, 45.327934, 28.667334>,  <38.816437, 45.076756, 28.444139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033447, 45.327934, 28.667334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204180, 0.545741, -0.812697,
		-0.814849, 0.554836, 0.167862,
		0.542523, 0.627952, 0.557983,
		39.196205, 45.516319, 28.834728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563847, 45.681408, 28.141329>,  <38.816437, 45.076756, 28.444139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563847, 45.681408, 28.141329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.902092, 45.734844, 28.348053>,  <39.105038, 45.766907, 28.472088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.902092, 45.734844, 28.348053>,  <38.563847, 45.681408, 28.141329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.902092, 45.734844, 28.348053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352842, 0.586620, -0.728958,
		-0.400551, 0.798769, 0.448918,
		0.845613, 0.133587, 0.516810,
		39.155777, 45.774921, 28.503096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582577, 46.403965, 28.156820>,  <38.563847, 45.681408, 28.141329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582577, 46.403965, 28.156820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.935291, 46.221355, 28.204212>,  <39.146919, 46.111790, 28.232647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.935291, 46.221355, 28.204212>,  <38.582577, 46.403965, 28.156820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935291, 46.221355, 28.204212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371228, 0.516836, -0.771408,
		0.290931, 0.724201, 0.625214,
		0.881787, -0.456523, 0.118480,
		39.199829, 46.084400, 28.239756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037117, 46.857983, 28.006804>,  <38.582577, 46.403965, 28.156820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037117, 46.857983, 28.006804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.210224, 46.499290, 27.969740>,  <39.314087, 46.284077, 27.947502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.210224, 46.499290, 27.969740>,  <39.037117, 46.857983, 28.006804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210224, 46.499290, 27.969740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490341, 0.320390, -0.810503,
		0.756491, 0.305324, 0.578358,
		0.432766, -0.896731, -0.092660,
		39.340054, 46.230270, 27.941942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633549, 47.072006, 27.769312>,  <39.037117, 46.857983, 28.006804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633549, 47.072006, 27.769312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.627159, 46.681168, 27.684437>,  <39.623325, 46.446663, 27.633512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.627159, 46.681168, 27.684437>,  <39.633549, 47.072006, 27.769312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627159, 46.681168, 27.684437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634679, 0.154072, -0.757261,
		0.772611, -0.146766, 0.617683,
		-0.015972, -0.977099, -0.212187,
		39.622368, 46.388039, 27.620781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348526, 46.915047, 27.613171>,  <39.633549, 47.072006, 27.769312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348526, 46.915047, 27.613171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.157143, 46.607170, 27.444101>,  <40.042313, 46.422443, 27.342659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.157143, 46.607170, 27.444101>,  <40.348526, 46.915047, 27.613171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157143, 46.607170, 27.444101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647922, 0.015437, -0.761550,
		0.592680, -0.638234, 0.491312,
		-0.478463, -0.769688, -0.422675,
		40.013603, 46.376263, 27.317299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865948, 46.389816, 27.442757>,  <40.348526, 46.915047, 27.613171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865948, 46.389816, 27.442757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.541386, 46.314083, 27.221565>,  <40.346649, 46.268642, 27.088850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.541386, 46.314083, 27.221565>,  <40.865948, 46.389816, 27.442757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541386, 46.314083, 27.221565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554222, 0.051287, -0.830788,
		0.185654, -0.980573, 0.063317,
		-0.811401, -0.189330, -0.552976,
		40.297966, 46.257282, 27.055672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043713, 45.875637, 26.887142>,  <40.865948, 46.389816, 27.442757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043713, 45.875637, 26.887142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.714146, 46.063660, 26.760517>,  <40.516407, 46.176476, 26.684542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.714146, 46.063660, 26.760517>,  <41.043713, 45.875637, 26.887142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714146, 46.063660, 26.760517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378016, 0.039675, -0.924949,
		-0.422220, -0.881743, -0.210378,
		-0.823914, 0.470059, -0.316561,
		40.466972, 46.204678, 26.665548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749130, 45.550079, 26.239481>,  <41.043713, 45.875637, 26.887142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749130, 45.550079, 26.239481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.605331, 45.923336, 26.237982>,  <40.519051, 46.147289, 26.237082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.605331, 45.923336, 26.237982>,  <40.749130, 45.550079, 26.239481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605331, 45.923336, 26.237982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460935, 0.174083, -0.870192,
		-0.811357, -0.314558, -0.492699,
		-0.359496, 0.933139, -0.003748,
		40.497482, 46.203278, 26.236858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586987, 45.689720, 25.598661>,  <40.749130, 45.550079, 26.239481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586987, 45.689720, 25.598661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.592873, 46.066818, 25.731937>,  <40.596405, 46.293076, 25.811903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.592873, 46.066818, 25.731937>,  <40.586987, 45.689720, 25.598661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592873, 46.066818, 25.731937> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188024, 0.324674, -0.926949,
		-0.982054, 0.076291, -0.172480,
		0.014718, 0.942744, 0.333192,
		40.597286, 46.349640, 25.831894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915588, 45.523998, 25.273233>,  <40.586987, 45.689720, 25.598661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915588, 45.523998, 25.273233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.721016, 45.377052, 24.956141>,  <39.604271, 45.288883, 24.765884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.721016, 45.377052, 24.956141>,  <39.915588, 45.523998, 25.273233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721016, 45.377052, 24.956141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154389, -0.856891, 0.491835,
		-0.859971, 0.361633, 0.360100,
		-0.486430, -0.367368, -0.792733,
		39.575089, 45.266842, 24.718321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303711, 45.123177, 25.584259>,  <39.915588, 45.523998, 25.273233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303711, 45.123177, 25.584259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.347809, 44.998058, 25.206898>,  <39.374268, 44.922989, 24.980482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.347809, 44.998058, 25.206898>,  <39.303711, 45.123177, 25.584259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347809, 44.998058, 25.206898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450900, -0.861630, 0.232987,
		-0.885739, 0.399694, -0.236030,
		0.110247, -0.312792, -0.943402,
		39.380882, 44.904221, 24.923878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727909, 44.714352, 25.481144>,  <39.303711, 45.123177, 25.584259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727909, 44.714352, 25.481144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.006939, 44.583385, 25.226212>,  <39.174355, 44.504807, 25.073252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.006939, 44.583385, 25.226212>,  <38.727909, 44.714352, 25.481144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006939, 44.583385, 25.226212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244961, -0.944869, 0.217294,
		-0.673342, 0.004543, -0.739318,
		0.697571, -0.327417, -0.637333,
		39.216209, 44.485161, 25.035011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299267, 44.296627, 25.021873>,  <38.727909, 44.714352, 25.481144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299267, 44.296627, 25.021873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.680622, 44.176853, 25.006922>,  <38.909435, 44.104988, 24.997950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.680622, 44.176853, 25.006922>,  <38.299267, 44.296627, 25.021873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680622, 44.176853, 25.006922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291181, -0.945388, 0.146474,
		-0.079199, -0.128762, -0.988508,
		0.953384, -0.299435, -0.037381,
		38.966637, 44.087021, 24.995707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191048, 43.625252, 24.744007>,  <38.299267, 44.296627, 25.021873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191048, 43.625252, 24.744007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567142, 43.628834, 24.880169>,  <38.792801, 43.630981, 24.961866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.567142, 43.628834, 24.880169>,  <38.191048, 43.625252, 24.744007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567142, 43.628834, 24.880169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086859, -0.960280, 0.265175,
		0.329257, -0.278895, -0.902113,
		0.940237, 0.008954, 0.340403,
		38.849213, 43.631519, 24.982290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337627, 42.938984, 24.652708>,  <38.191048, 43.625252, 24.744007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337627, 42.938984, 24.652708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.613029, 43.081356, 24.905462>,  <38.778271, 43.166779, 25.057114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.613029, 43.081356, 24.905462>,  <38.337627, 42.938984, 24.652708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613029, 43.081356, 24.905462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209880, -0.931788, 0.296177,
		0.694201, -0.071299, -0.716241,
		0.688502, 0.355931, 0.631884,
		38.819580, 43.188137, 25.095028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934193, 42.477253, 24.533014>,  <38.337627, 42.938984, 24.652708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934193, 42.477253, 24.533014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.930347, 42.634968, 24.900589>,  <38.928040, 42.729599, 25.121134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.930347, 42.634968, 24.900589>,  <38.934193, 42.477253, 24.533014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930347, 42.634968, 24.900589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066875, -0.916668, 0.394015,
		0.997715, 0.065243, -0.017553,
		-0.009616, 0.394289, 0.918936,
		38.927464, 42.753254, 25.176270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517792, 42.165939, 24.919048>,  <38.934193, 42.477253, 24.533014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.517792, 42.165939, 24.919048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.250362, 42.300167, 25.184498>,  <39.089905, 42.380703, 25.343767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.250362, 42.300167, 25.184498>,  <39.517792, 42.165939, 24.919048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250362, 42.300167, 25.184498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107922, -0.926734, 0.359886,
		0.735769, 0.168993, 0.655809,
		-0.668578, 0.335569, 0.663624,
		39.049789, 42.400837, 25.383585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224518, 42.188843, 25.367044>,  <39.517792, 42.165939, 24.919048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224518, 42.188843, 25.367044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.580162, 42.024811, 25.285742>,  <40.793549, 41.926392, 25.236959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.580162, 42.024811, 25.285742>,  <40.224518, 42.188843, 25.367044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580162, 42.024811, 25.285742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377788, 0.908255, -0.179857,
		0.258364, 0.083126, 0.962465,
		0.889114, -0.410076, -0.203256,
		40.846897, 41.901787, 25.224766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734146, 42.609970, 25.769510>,  <40.224518, 42.188843, 25.367044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734146, 42.609970, 25.769510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.894596, 42.436352, 25.446846>,  <40.990868, 42.332180, 25.253248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.894596, 42.436352, 25.446846>,  <40.734146, 42.609970, 25.769510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894596, 42.436352, 25.446846> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459746, 0.857062, -0.232548,
		0.792294, -0.277577, 0.543343,
		0.401129, -0.434046, -0.806660,
		41.014935, 42.306137, 25.204847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318993, 42.875748, 25.861929>,  <40.734146, 42.609970, 25.769510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318993, 42.875748, 25.861929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.300747, 42.746227, 25.483919>,  <41.289799, 42.668514, 25.257113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.300747, 42.746227, 25.483919>,  <41.318993, 42.875748, 25.861929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300747, 42.746227, 25.483919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540053, 0.787855, -0.296020,
		0.840394, -0.523868, 0.138930,
		-0.045618, -0.323803, -0.945024,
		41.287060, 42.649086, 25.200413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906685, 43.101574, 25.532333>,  <41.318993, 42.875748, 25.861929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906685, 43.101574, 25.532333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.684410, 43.002090, 25.215006>,  <41.551044, 42.942402, 25.024609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.684410, 43.002090, 25.215006>,  <41.906685, 43.101574, 25.532333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684410, 43.002090, 25.215006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604835, 0.533760, -0.590995,
		0.570428, -0.808235, -0.146176,
		-0.555686, -0.248708, -0.793321,
		41.517704, 42.927479, 24.977009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264931, 42.756958, 25.025808>,  <41.906685, 43.101574, 25.532333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264931, 42.756958, 25.025808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.960052, 42.923664, 24.827669>,  <41.777126, 43.023685, 24.708786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.960052, 42.923664, 24.827669>,  <42.264931, 42.756958, 25.025808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960052, 42.923664, 24.827669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647290, 0.480326, -0.591864,
		-0.008737, -0.771749, -0.635867,
		-0.762194, 0.416761, -0.495349,
		41.731396, 43.048691, 24.679064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467869, 42.618130, 24.254368>,  <42.264931, 42.756958, 25.025808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467869, 42.618130, 24.254368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.208351, 42.919476, 24.297276>,  <42.052643, 43.100285, 24.323021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.208351, 42.919476, 24.297276>,  <42.467869, 42.618130, 24.254368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208351, 42.919476, 24.297276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475437, 0.511368, -0.715864,
		-0.594164, -0.413445, -0.689950,
		-0.648790, 0.753369, 0.107269,
		42.013714, 43.145485, 24.329456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318428, 42.861134, 23.551769>,  <42.467869, 42.618130, 24.254368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318428, 42.861134, 23.551769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.200958, 43.165768, 23.782852>,  <42.130474, 43.348549, 23.921503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.200958, 43.165768, 23.782852>,  <42.318428, 42.861134, 23.551769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200958, 43.165768, 23.782852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418489, 0.645798, -0.638602,
		-0.859430, 0.054221, -0.508370,
		-0.293679, 0.761581, 0.577709,
		42.112854, 43.394241, 23.956165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233406, 43.341625, 23.061670>,  <42.318428, 42.861134, 23.551769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.233406, 43.341625, 23.061670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.241817, 43.537266, 23.410460>,  <42.246864, 43.654652, 23.619734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.241817, 43.537266, 23.410460>,  <42.233406, 43.341625, 23.061670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.241817, 43.537266, 23.410460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468498, 0.765660, -0.440766,
		-0.883215, 0.417784, -0.213046,
		0.021024, 0.489102, 0.871973,
		42.248123, 43.683998, 23.672052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851475, 43.976746, 22.990870>,  <42.233406, 43.341625, 23.061670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851475, 43.976746, 22.990870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.117859, 44.041119, 23.282240>,  <42.277687, 44.079742, 23.457062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.117859, 44.041119, 23.282240>,  <41.851475, 43.976746, 22.990870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117859, 44.041119, 23.282240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356144, 0.789406, -0.500000,
		-0.655488, 0.592402, 0.468396,
		0.665956, 0.160928, 0.728426,
		42.317646, 44.089397, 23.500769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.243660, 33.427975, 34.169746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.465851, 33.654495, 34.413303>,  <37.599163, 33.790409, 34.559437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.465851, 33.654495, 34.413303>,  <37.243660, 33.427975, 34.169746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465851, 33.654495, 34.413303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163828, 0.643365, -0.747825,
		-0.815236, 0.515149, 0.264596,
		0.555473, 0.566306, 0.608890,
		37.632492, 33.824387, 34.595970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038124, 34.176620, 34.143993>,  <37.243660, 33.427975, 34.169746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038124, 34.176620, 34.143993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426357, 34.150520, 34.236691>,  <37.659298, 34.134861, 34.292309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.426357, 34.150520, 34.236691>,  <37.038124, 34.176620, 34.143993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.426357, 34.150520, 34.236691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227236, 0.566278, -0.792271,
		-0.079535, 0.821627, 0.564449,
		0.970587, -0.065250, 0.231742,
		37.717533, 34.130947, 34.306213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252647, 34.838928, 34.121067>,  <37.038124, 34.176620, 34.143993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252647, 34.838928, 34.121067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.583290, 34.618176, 34.076973>,  <37.781673, 34.485725, 34.050514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.583290, 34.618176, 34.076973>,  <37.252647, 34.838928, 34.121067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583290, 34.618176, 34.076973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232070, 0.512708, -0.826604,
		0.512708, 0.657691, 0.551882,
		0.826604, -0.551882, -0.110239,
		37.831272, 34.452610, 34.043900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673080, 35.325840, 33.948006>,  <37.252647, 34.838928, 34.121067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673080, 35.325840, 33.948006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.879665, 35.000229, 33.841705>,  <38.003616, 34.804863, 33.777927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.879665, 35.000229, 33.841705>,  <37.673080, 35.325840, 33.948006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879665, 35.000229, 33.841705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424401, 0.512877, -0.746218,
		0.743738, 0.272613, 0.610358,
		0.516467, -0.814027, -0.265748,
		38.034607, 34.756020, 33.761982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445915, 35.470490, 33.885025>,  <37.673080, 35.325840, 33.948006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445915, 35.470490, 33.885025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.348679, 35.154770, 33.659489>,  <38.290337, 34.965340, 33.524166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.348679, 35.154770, 33.659489>,  <38.445915, 35.470490, 33.885025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348679, 35.154770, 33.659489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475168, 0.409856, -0.778610,
		0.845649, -0.457191, 0.275417,
		-0.243092, -0.789300, -0.563837,
		38.275749, 34.917980, 33.490337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089447, 35.203972, 33.549496>,  <38.445915, 35.470490, 33.885025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089447, 35.203972, 33.549496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.783028, 35.092777, 33.317673>,  <38.599174, 35.026062, 33.178577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.783028, 35.092777, 33.317673>,  <39.089447, 35.203972, 33.549496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783028, 35.092777, 33.317673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547501, 0.190197, -0.814904,
		0.336760, -0.941568, 0.006495,
		-0.766052, -0.277984, -0.579560,
		38.553211, 35.009384, 33.143806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376637, 35.058514, 32.871410>,  <39.089447, 35.203972, 33.549496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376637, 35.058514, 32.871410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.985664, 35.094509, 32.794952>,  <38.751083, 35.116108, 32.749077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.985664, 35.094509, 32.794952>,  <39.376637, 35.058514, 32.871410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985664, 35.094509, 32.794952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207744, 0.244884, -0.947035,
		-0.038416, -0.965367, -0.258051,
		-0.977428, 0.089990, -0.191142,
		38.692436, 35.121506, 32.737610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288036, 34.914917, 32.190250>,  <39.376637, 35.058514, 32.871410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288036, 34.914917, 32.190250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.945339, 35.100166, 32.281040>,  <38.739723, 35.211315, 32.335514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.945339, 35.100166, 32.281040>,  <39.288036, 34.914917, 32.190250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945339, 35.100166, 32.281040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113406, 0.598476, -0.793074,
		-0.503129, -0.653716, -0.565258,
		-0.856738, 0.463122, 0.226975,
		38.688316, 35.239101, 32.349133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.807789, 34.845516, 31.625990>,  <39.288036, 34.914917, 32.190250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.807789, 34.845516, 31.625990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.720116, 35.183270, 31.821527>,  <38.667511, 35.385921, 31.938850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.720116, 35.183270, 31.821527>,  <38.807789, 34.845516, 31.625990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720116, 35.183270, 31.821527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128779, 0.471607, -0.872355,
		-0.967147, -0.254159, 0.005371,
		-0.219184, 0.844387, 0.488844,
		38.654362, 35.436584, 31.968182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412724, 35.160480, 31.041126>,  <38.807789, 34.845516, 31.625990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412724, 35.160480, 31.041126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.496342, 35.434982, 31.319796>,  <38.546513, 35.599686, 31.486998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.496342, 35.434982, 31.319796>,  <38.412724, 35.160480, 31.041126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496342, 35.434982, 31.319796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182657, 0.727276, -0.661594,
		-0.960696, 0.011052, 0.277384,
		0.209046, 0.686256, 0.696672,
		38.559055, 35.640858, 31.528797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802109, 35.536293, 31.144508>,  <38.412724, 35.160480, 31.041126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802109, 35.536293, 31.144508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128799, 35.741367, 31.250420>,  <38.324814, 35.864414, 31.313967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.128799, 35.741367, 31.250420>,  <37.802109, 35.536293, 31.144508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128799, 35.741367, 31.250420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219816, 0.700708, -0.678741,
		-0.533513, 0.496145, 0.684985,
		0.816728, 0.512688, 0.264776,
		38.373817, 35.895172, 31.329853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679092, 36.192513, 30.936752>,  <37.802109, 35.536293, 31.144508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679092, 36.192513, 30.936752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.073318, 36.236012, 30.988651>,  <38.309853, 36.262112, 31.019791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.073318, 36.236012, 30.988651>,  <37.679092, 36.192513, 30.936752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073318, 36.236012, 30.988651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028429, 0.649206, -0.760081,
		-0.166888, 0.752798, 0.636744,
		0.985566, 0.108747, 0.129746,
		38.368988, 36.268635, 31.027575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365219, 36.711166, 31.446779>,  <37.679092, 36.192513, 30.936752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365219, 36.711166, 31.446779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995426, 36.857975, 31.405533>,  <36.773552, 36.946060, 31.380785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995426, 36.857975, 31.405533>,  <37.365219, 36.711166, 31.446779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995426, 36.857975, 31.405533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275528, -0.456309, 0.846089,
		0.263480, 0.810603, 0.522973,
		-0.924480, 0.367021, -0.103115,
		36.718082, 36.968082, 31.374598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063339, 36.860294, 32.135136>,  <37.365219, 36.711166, 31.446779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063339, 36.860294, 32.135136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722584, 36.864056, 31.925682>,  <36.518131, 36.866314, 31.800009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.722584, 36.864056, 31.925682>,  <37.063339, 36.860294, 32.135136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722584, 36.864056, 31.925682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488764, -0.373450, 0.788445,
		-0.188135, 0.927603, 0.322736,
		-0.851889, 0.009408, -0.523638,
		36.467018, 36.866879, 31.768591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.544941, 37.346367, 32.468781>,  <37.063339, 36.860294, 32.135136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.544941, 37.346367, 32.468781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.324532, 37.087852, 32.257618>,  <36.192284, 36.932743, 32.130920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.324532, 37.087852, 32.257618>,  <36.544941, 37.346367, 32.468781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324532, 37.087852, 32.257618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502853, -0.247698, 0.828122,
		-0.665963, 0.721776, -0.188498,
		-0.551028, -0.646285, -0.527905,
		36.159222, 36.893967, 32.099247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977554, 37.525475, 32.660149>,  <36.544941, 37.346367, 32.468781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977554, 37.525475, 32.660149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895706, 37.163731, 32.510342>,  <35.846600, 36.946686, 32.420456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895706, 37.163731, 32.510342>,  <35.977554, 37.525475, 32.660149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895706, 37.163731, 32.510342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741222, -0.106744, 0.662718,
		-0.639313, 0.413206, -0.648490,
		-0.204616, -0.904360, -0.374520,
		35.834320, 36.892422, 32.397987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265606, 37.519264, 32.521828>,  <35.977554, 37.525475, 32.660149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265606, 37.519264, 32.521828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381241, 37.139225, 32.568718>,  <35.450623, 36.911201, 32.596851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.381241, 37.139225, 32.568718>,  <35.265606, 37.519264, 32.521828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381241, 37.139225, 32.568718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694552, -0.123886, 0.708696,
		-0.658808, -0.286292, -0.695707,
		0.289083, -0.950099, 0.117228,
		35.467964, 36.854195, 32.603886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688736, 37.214756, 32.702866>,  <35.265606, 37.519264, 32.521828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688736, 37.214756, 32.702866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.963001, 36.956596, 32.837521>,  <35.127560, 36.801701, 32.918312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.963001, 36.956596, 32.837521>,  <34.688736, 37.214756, 32.702866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963001, 36.956596, 32.837521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615359, -0.266892, 0.741689,
		-0.388839, -0.715702, -0.580150,
		0.685666, -0.645398, 0.336635,
		35.168701, 36.762978, 32.938511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319420, 36.678329, 32.929462>,  <34.688736, 37.214756, 32.702866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319420, 36.678329, 32.929462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670895, 36.608864, 33.107334>,  <34.881779, 36.567184, 33.214058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670895, 36.608864, 33.107334>,  <34.319420, 36.678329, 32.929462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670895, 36.608864, 33.107334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476629, -0.266532, 0.837727,
		-0.026958, -0.948052, -0.316971,
		0.878691, -0.173661, 0.444683,
		34.934502, 36.556767, 33.240738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264889, 35.996872, 33.245293>,  <34.319420, 36.678329, 32.929462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264889, 35.996872, 33.245293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554237, 36.194912, 33.437794>,  <34.727848, 36.313736, 33.553295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554237, 36.194912, 33.437794>,  <34.264889, 35.996872, 33.245293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554237, 36.194912, 33.437794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344833, -0.344798, 0.873043,
		0.598182, -0.797487, -0.078689,
		0.723373, 0.495104, 0.481252,
		34.771248, 36.343445, 33.582169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581799, 35.608265, 33.808273>,  <34.264889, 35.996872, 33.245293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581799, 35.608265, 33.808273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637711, 35.995121, 33.893215>,  <34.671257, 36.227234, 33.944180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.637711, 35.995121, 33.893215>,  <34.581799, 35.608265, 33.808273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637711, 35.995121, 33.893215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273545, -0.168398, 0.947003,
		0.951648, -0.190465, 0.241018,
		0.139784, 0.967143, 0.212356,
		34.679646, 36.285263, 33.956921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639015, 35.618065, 34.501877>,  <34.581799, 35.608265, 33.808273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639015, 35.618065, 34.501877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.598545, 36.013309, 34.455585>,  <34.574265, 36.250458, 34.427811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.598545, 36.013309, 34.455585>,  <34.639015, 35.618065, 34.501877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598545, 36.013309, 34.455585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372717, 0.070204, 0.925286,
		0.922413, 0.136747, 0.361185,
		-0.101173, 0.988115, -0.115725,
		34.568192, 36.309746, 34.420868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027252, 35.942711, 35.062893>,  <34.639015, 35.618065, 34.501877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027252, 35.942711, 35.062893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.780994, 36.226299, 34.925297>,  <34.633240, 36.396454, 34.842739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.780994, 36.226299, 34.925297>,  <35.027252, 35.942711, 35.062893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780994, 36.226299, 34.925297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277326, 0.213674, 0.936714,
		0.737610, 0.672084, 0.065070,
		-0.615647, 0.708976, -0.343994,
		34.596302, 36.438992, 34.822098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164612, 36.597569, 35.419750>,  <35.027252, 35.942711, 35.062893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164612, 36.597569, 35.419750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788010, 36.607590, 35.285324>,  <34.562050, 36.613602, 35.204666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788010, 36.607590, 35.285324>,  <35.164612, 36.597569, 35.419750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788010, 36.607590, 35.285324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322509, 0.222293, 0.920094,
		0.097760, 0.974658, -0.201208,
		-0.941504, 0.025057, -0.336068,
		34.505558, 36.615108, 35.184505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893681, 37.017986, 35.845184>,  <35.164612, 36.597569, 35.419750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893681, 37.017986, 35.845184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558922, 36.860439, 35.693146>,  <34.358067, 36.765911, 35.601925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.558922, 36.860439, 35.693146>,  <34.893681, 37.017986, 35.845184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.558922, 36.860439, 35.693146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419134, 0.014526, 0.907808,
		-0.352031, 0.919054, -0.177238,
		-0.836899, -0.393864, -0.380093,
		34.307854, 36.742279, 35.579117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.429047, 37.352451, 36.263672>,  <34.893681, 37.017986, 35.845184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.429047, 37.352451, 36.263672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.214161, 37.053185, 36.107906>,  <34.085228, 36.873627, 36.014446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.214161, 37.053185, 36.107906>,  <34.429047, 37.352451, 36.263672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214161, 37.053185, 36.107906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401284, -0.179379, 0.898217,
		-0.741867, 0.638807, -0.203860,
		-0.537219, -0.748164, -0.389418,
		34.052994, 36.828735, 35.991081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621296, 37.441696, 36.296257>,  <34.429047, 37.352451, 36.263672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621296, 37.441696, 36.296257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741871, 37.061939, 36.331547>,  <33.814217, 36.834084, 36.352722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.741871, 37.061939, 36.331547>,  <33.621296, 37.441696, 36.296257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741871, 37.061939, 36.331547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398634, -0.041431, 0.916174,
		-0.866157, -0.311337, -0.390950,
		0.301436, -0.949396, 0.088224,
		33.832302, 36.777119, 36.358013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498627, 38.142536, 36.336567>,  <33.621296, 37.441696, 36.296257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498627, 38.142536, 36.336567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876945, 38.189320, 36.457752>,  <34.103935, 38.217392, 36.530464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.876945, 38.189320, 36.457752>,  <33.498627, 38.142536, 36.336567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876945, 38.189320, 36.457752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140762, 0.693072, -0.706992,
		-0.292667, 0.711317, 0.639042,
		0.945797, 0.116961, 0.302965,
		34.160686, 38.224407, 36.548641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494312, 38.887516, 36.339645>,  <33.498627, 38.142536, 36.336567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494312, 38.887516, 36.339645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.845356, 38.696838, 36.319355>,  <34.055981, 38.582432, 36.307178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.845356, 38.696838, 36.319355>,  <33.494312, 38.887516, 36.339645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845356, 38.696838, 36.319355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339708, 0.693076, -0.635802,
		0.338242, 0.540749, 0.770183,
		0.877605, -0.476692, -0.050731,
		34.108639, 38.553829, 36.304134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013584, 39.427876, 36.560257>,  <33.494312, 38.887516, 36.339645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013584, 39.427876, 36.560257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187565, 39.133564, 36.352623>,  <34.291954, 38.956978, 36.228043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.187565, 39.133564, 36.352623>,  <34.013584, 39.427876, 36.560257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187565, 39.133564, 36.352623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502949, 0.676676, -0.537729,
		0.746902, -0.027190, 0.664378,
		0.434947, -0.735779, -0.519086,
		34.318050, 38.912830, 36.196896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699036, 39.653080, 36.454533>,  <34.013584, 39.427876, 36.560257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699036, 39.653080, 36.454533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611713, 39.395672, 36.161079>,  <34.559322, 39.241226, 35.985008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611713, 39.395672, 36.161079>,  <34.699036, 39.653080, 36.454533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611713, 39.395672, 36.161079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505569, 0.568441, -0.649057,
		0.834712, -0.512595, 0.201253,
		-0.218303, -0.643523, -0.733636,
		34.546223, 39.202614, 35.940987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310246, 39.626247, 36.050587>,  <34.699036, 39.653080, 36.454533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310246, 39.626247, 36.050587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032497, 39.475819, 35.805176>,  <34.865849, 39.385563, 35.657928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032497, 39.475819, 35.805176>,  <35.310246, 39.626247, 36.050587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032497, 39.475819, 35.805176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280262, 0.643939, -0.711896,
		0.662803, -0.666267, -0.341730,
		-0.694366, -0.376073, -0.613534,
		34.824184, 39.362999, 35.621117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654961, 39.539185, 35.498604>,  <35.310246, 39.626247, 36.050587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654961, 39.539185, 35.498604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.272457, 39.573139, 35.386627>,  <35.042957, 39.593510, 35.319443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.272457, 39.573139, 35.386627>,  <35.654961, 39.539185, 35.498604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272457, 39.573139, 35.386627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268195, 0.636523, -0.723125,
		0.116807, -0.766572, -0.631446,
		-0.956257, 0.084885, -0.279941,
		34.985580, 39.598606, 35.302647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706165, 39.578781, 34.772144>,  <35.654961, 39.539185, 35.498604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706165, 39.578781, 34.772144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350433, 39.743393, 34.851883>,  <35.136993, 39.842159, 34.899727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.350433, 39.743393, 34.851883>,  <35.706165, 39.578781, 34.772144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350433, 39.743393, 34.851883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167212, 0.698430, -0.695871,
		-0.425607, -0.585522, -0.689945,
		-0.889325, 0.411534, 0.199350,
		35.083637, 39.866852, 34.911690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334690, 39.630768, 34.191441>,  <35.706165, 39.578781, 34.772144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334690, 39.630768, 34.191441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.191856, 39.921810, 34.425732>,  <35.106155, 40.096436, 34.566307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.191856, 39.921810, 34.425732>,  <35.334690, 39.630768, 34.191441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191856, 39.921810, 34.425732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329410, 0.684876, -0.649949,
		-0.874059, -0.039144, -0.484241,
		-0.357087, 0.727607, 0.585728,
		35.084732, 40.140091, 34.601452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296463, 40.135719, 33.765003>,  <35.334690, 39.630768, 34.191441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296463, 40.135719, 33.765003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200020, 40.360016, 34.081848>,  <35.142155, 40.494595, 34.271954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.200020, 40.360016, 34.081848>,  <35.296463, 40.135719, 33.765003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200020, 40.360016, 34.081848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267899, 0.822932, -0.501012,
		-0.932790, 0.091406, -0.348638,
		-0.241110, 0.560738, 0.792110,
		35.127686, 40.528236, 34.319481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737640, 40.597851, 33.631458>,  <35.296463, 40.135719, 33.765003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737640, 40.597851, 33.631458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935471, 40.761215, 33.938339>,  <35.054169, 40.859234, 34.122467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.935471, 40.761215, 33.938339>,  <34.737640, 40.597851, 33.631458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935471, 40.761215, 33.938339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105616, 0.847935, -0.519473,
		-0.862692, 0.337948, 0.376235,
		0.494578, 0.408409, 0.767200,
		35.083843, 40.883739, 34.168499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457817, 41.248253, 33.729961>,  <34.737640, 40.597851, 33.631458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457817, 41.248253, 33.729961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820892, 41.281235, 33.894547>,  <35.038738, 41.301025, 33.993298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820892, 41.281235, 33.894547>,  <34.457817, 41.248253, 33.729961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820892, 41.281235, 33.894547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121387, 0.886999, -0.445532,
		-0.401703, 0.454350, 0.795110,
		0.907689, 0.082455, 0.411463,
		35.093201, 41.305973, 34.017986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522415, 41.900997, 33.729683>,  <34.457817, 41.248253, 33.729961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522415, 41.900997, 33.729683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.897541, 41.797119, 33.821831>,  <35.122616, 41.734791, 33.877117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.897541, 41.797119, 33.821831>,  <34.522415, 41.900997, 33.729683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897541, 41.797119, 33.821831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345010, 0.770764, -0.535622,
		-0.038459, 0.581791, 0.812429,
		0.937811, -0.259697, 0.230366,
		35.178883, 41.719212, 33.890942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862690, 42.522785, 34.041245>,  <34.522415, 41.900997, 33.729683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862690, 42.522785, 34.041245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129646, 42.280293, 33.868237>,  <35.289818, 42.134796, 33.764431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.129646, 42.280293, 33.868237>,  <34.862690, 42.522785, 34.041245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129646, 42.280293, 33.868237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376167, 0.775677, -0.506778,
		0.642724, 0.175516, 0.745721,
		0.667387, -0.606233, -0.432523,
		35.329861, 42.098423, 33.738480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359859, 42.953602, 34.018791>,  <34.862690, 42.522785, 34.041245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359859, 42.953602, 34.018791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.498924, 42.668766, 33.774803>,  <35.582363, 42.497864, 33.628410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.498924, 42.668766, 33.774803>,  <35.359859, 42.953602, 34.018791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498924, 42.668766, 33.774803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556335, 0.680323, -0.477128,
		0.754732, -0.173465, 0.632684,
		0.347665, -0.712089, -0.609967,
		35.603222, 42.455139, 33.591812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037971, 43.025650, 34.076469>,  <35.359859, 42.953602, 34.018791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037971, 43.025650, 34.076469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955780, 42.867313, 33.718456>,  <35.906467, 42.772312, 33.503647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.955780, 42.867313, 33.718456>,  <36.037971, 43.025650, 34.076469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955780, 42.867313, 33.718456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587947, 0.681184, -0.436242,
		0.782367, -0.615870, 0.092769,
		-0.205476, -0.395844, -0.895035,
		35.894138, 42.748562, 33.449947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633785, 43.208576, 33.743118>,  <36.037971, 43.025650, 34.076469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633785, 43.208576, 33.743118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378853, 43.100967, 33.454273>,  <36.225895, 43.036404, 33.280968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.378853, 43.100967, 33.454273>,  <36.633785, 43.208576, 33.743118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378853, 43.100967, 33.454273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572462, 0.462013, -0.677371,
		0.515850, -0.845087, -0.140449,
		-0.637327, -0.269020, -0.722110,
		36.187656, 43.020260, 33.237640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013771, 42.940681, 33.180832>,  <36.633785, 43.208576, 33.743118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013771, 42.940681, 33.180832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665398, 43.039745, 33.011063>,  <36.456371, 43.099186, 32.909203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.665398, 43.039745, 33.011063>,  <37.013771, 42.940681, 33.180832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665398, 43.039745, 33.011063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487594, 0.328358, -0.808970,
		-0.060991, -0.911506, -0.406739,
		-0.870937, 0.247663, -0.424419,
		36.404118, 43.114044, 32.883736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048080, 42.746418, 32.467720>,  <37.013771, 42.940681, 33.180832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048080, 42.746418, 32.467720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747334, 43.010090, 32.462288>,  <36.566887, 43.168293, 32.459030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.747334, 43.010090, 32.462288>,  <37.048080, 42.746418, 32.467720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747334, 43.010090, 32.462288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382257, 0.419037, -0.823582,
		-0.537195, -0.624414, -0.567035,
		-0.751865, 0.659177, -0.013582,
		36.521774, 43.207844, 32.458214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625862, 42.739933, 31.783018>,  <37.048080, 42.746418, 32.467720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625862, 42.739933, 31.783018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607910, 43.103592, 31.948637>,  <36.597137, 43.321789, 32.048008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607910, 43.103592, 31.948637>,  <36.625862, 42.739933, 31.783018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607910, 43.103592, 31.948637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396634, 0.396616, -0.827875,
		-0.916879, 0.127070, -0.378400,
		-0.044881, 0.909147, 0.414049,
		36.594444, 43.376335, 32.072853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442032, 43.154129, 31.270464>,  <36.625862, 42.739933, 31.783018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442032, 43.154129, 31.270464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603874, 43.411945, 31.529963>,  <36.700977, 43.566635, 31.685661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603874, 43.411945, 31.529963>,  <36.442032, 43.154129, 31.270464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603874, 43.411945, 31.529963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325718, 0.561313, -0.760813,
		-0.854521, 0.519133, 0.017170,
		0.404601, 0.644537, 0.648744,
		36.725254, 43.605305, 31.724586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275265, 43.879856, 31.020929>,  <36.442032, 43.154129, 31.270464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275265, 43.879856, 31.020929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.571774, 43.918480, 31.286617>,  <36.749680, 43.941654, 31.446030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.571774, 43.918480, 31.286617>,  <36.275265, 43.879856, 31.020929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571774, 43.918480, 31.286617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438344, 0.679775, -0.588014,
		-0.508300, 0.727036, 0.461572,
		0.741273, 0.096560, 0.664222,
		36.794155, 43.947449, 31.485884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555065, 44.495796, 30.906149>,  <36.275265, 43.879856, 31.020929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555065, 44.495796, 30.906149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850605, 44.340000, 31.126110>,  <37.027927, 44.246521, 31.258087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850605, 44.340000, 31.126110>,  <36.555065, 44.495796, 30.906149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850605, 44.340000, 31.126110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657011, 0.597754, -0.459376,
		-0.149785, 0.700704, 0.697551,
		0.738851, -0.389491, 0.549905,
		37.072262, 44.223152, 31.291082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047276, 45.041702, 31.017925>,  <36.555065, 44.495796, 30.906149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047276, 45.041702, 31.017925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267857, 44.716335, 31.091959>,  <37.400204, 44.521114, 31.136379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.267857, 44.716335, 31.091959>,  <37.047276, 45.041702, 31.017925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267857, 44.716335, 31.091959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716584, 0.348302, -0.604312,
		0.427093, 0.465876, 0.774952,
		0.551452, -0.813416, 0.185082,
		37.433292, 44.472309, 31.147484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737572, 45.296913, 31.233801>,  <37.047276, 45.041702, 31.017925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737572, 45.296913, 31.233801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797707, 44.919029, 31.117237>,  <37.833786, 44.692299, 31.047298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797707, 44.919029, 31.117237>,  <37.737572, 45.296913, 31.233801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797707, 44.919029, 31.117237> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734880, 0.303956, -0.606269,
		0.661324, -0.123006, 0.739946,
		0.150336, -0.944712, -0.291408,
		37.842808, 44.635616, 31.029814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423679, 45.150944, 31.314798>,  <37.737572, 45.296913, 31.233801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423679, 45.150944, 31.314798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.300846, 44.883797, 31.043608>,  <38.227146, 44.723507, 30.880894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.300846, 44.883797, 31.043608>,  <38.423679, 45.150944, 31.314798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300846, 44.883797, 31.043608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787077, 0.222245, -0.575427,
		0.534989, -0.710320, 0.457420,
		-0.307078, -0.667872, -0.677975,
		38.208721, 44.683434, 30.840216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994171, 44.862694, 31.133116>,  <38.423679, 45.150944, 31.314798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994171, 44.862694, 31.133116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768131, 44.762283, 30.818754>,  <38.632507, 44.702038, 30.630136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.768131, 44.762283, 30.818754>,  <38.994171, 44.862694, 31.133116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768131, 44.762283, 30.818754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714592, 0.327162, -0.618324,
		0.412335, -0.911016, -0.005497,
		-0.565101, -0.251029, -0.785905,
		38.598602, 44.686974, 30.582983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.382778, 44.469872, 30.664934>,  <38.994171, 44.862694, 31.133116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.382778, 44.469872, 30.664934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.096661, 44.650574, 30.451662>,  <38.924992, 44.758995, 30.323700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.096661, 44.650574, 30.451662>,  <39.382778, 44.469872, 30.664934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096661, 44.650574, 30.451662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686888, 0.314058, -0.655403,
		-0.128632, -0.835037, -0.534946,
		-0.715289, 0.451754, -0.533179,
		38.882072, 44.786098, 30.291708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921925, 43.951534, 30.466877>,  <39.382778, 44.469872, 30.664934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921925, 43.951534, 30.466877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.295624, 43.832027, 30.544775>,  <40.519844, 43.760323, 30.591513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.295624, 43.832027, 30.544775>,  <39.921925, 43.951534, 30.466877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295624, 43.832027, 30.544775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356617, -0.787235, 0.503076,
		0.003008, -0.539446, -0.842015,
		0.934246, -0.298763, 0.194743,
		40.575897, 43.742397, 30.603197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903950, 43.175465, 30.319534>,  <39.921925, 43.951534, 30.466877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903950, 43.175465, 30.319534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.248383, 43.248562, 30.509335>,  <40.455040, 43.292419, 30.623215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.248383, 43.248562, 30.509335>,  <39.903950, 43.175465, 30.319534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248383, 43.248562, 30.509335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130465, -0.822544, 0.553535,
		0.491449, -0.538542, -0.684434,
		0.861079, 0.182740, 0.474500,
		40.506706, 43.303383, 30.651684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206455, 42.500298, 30.339312>,  <39.903950, 43.175465, 30.319534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206455, 42.500298, 30.339312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.354305, 42.727558, 30.633410>,  <40.443016, 42.863914, 30.809868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.354305, 42.727558, 30.633410>,  <40.206455, 42.500298, 30.339312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354305, 42.727558, 30.633410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109775, -0.759040, 0.641722,
		0.922674, -0.317908, -0.218193,
		0.369626, 0.568148, 0.735245,
		40.465195, 42.898003, 30.853983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548893, 42.042595, 30.683737>,  <40.206455, 42.500298, 30.339312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548893, 42.042595, 30.683737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.534241, 42.340343, 30.950439>,  <40.525448, 42.518993, 31.110462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.534241, 42.340343, 30.950439>,  <40.548893, 42.042595, 30.683737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534241, 42.340343, 30.950439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168410, -0.653065, 0.738339,
		0.985036, 0.139334, -0.101438,
		-0.036630, 0.744374, 0.666757,
		40.523251, 42.563656, 31.150467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098415, 42.003025, 31.214108>,  <40.548893, 42.042595, 30.683737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098415, 42.003025, 31.214108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.800571, 42.224392, 31.363396>,  <40.621864, 42.357212, 31.452969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.800571, 42.224392, 31.363396>,  <41.098415, 42.003025, 31.214108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800571, 42.224392, 31.363396> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021170, -0.578425, 0.815461,
		0.667169, 0.599295, 0.442414,
		-0.744605, 0.553416, 0.373220,
		40.577190, 42.390415, 31.475363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
