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
	<24.260679, 35.150047, 35.254704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351809, 34.761108, 35.234192>,  <24.406487, 34.527744, 35.221886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351809, 34.761108, 35.234192>,  <24.260679, 35.150047, 35.254704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.351809, 34.761108, 35.234192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801409, 0.217159, -0.557303,
		0.553029, 0.085875, 0.828725,
		0.227823, -0.972352, -0.051274,
		24.420155, 34.469402, 35.218811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.948862, 35.125042, 35.211540>,  <24.260679, 35.150047, 35.254704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.948862, 35.125042, 35.211540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.844542, 34.772682, 35.053555>,  <24.781950, 34.561268, 34.958763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.844542, 34.772682, 35.053555>,  <24.948862, 35.125042, 35.211540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.844542, 34.772682, 35.053555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815266, 0.018148, -0.578802,
		0.517034, -0.472956, 0.713434,
		-0.260800, -0.880899, -0.394968,
		24.766302, 34.508411, 34.935062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.578800, 34.794559, 35.025486>,  <24.948862, 35.125042, 35.211540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.578800, 34.794559, 35.025486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329617, 34.548782, 34.831833>,  <25.180105, 34.401318, 34.715641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.329617, 34.548782, 34.831833>,  <25.578800, 34.794559, 35.025486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.329617, 34.548782, 34.831833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706912, -0.177181, -0.684750,
		0.334958, -0.768812, 0.544731,
		-0.622960, -0.614439, -0.484133,
		25.142729, 34.364452, 34.686592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947594, 34.093937, 35.012928>,  <25.578800, 34.794559, 35.025486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947594, 34.093937, 35.012928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710180, 34.124969, 34.692505>,  <25.567732, 34.143589, 34.500252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.710180, 34.124969, 34.692505>,  <25.947594, 34.093937, 35.012928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710180, 34.124969, 34.692505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803786, 0.006955, -0.594878,
		-0.040577, -0.996962, -0.066483,
		-0.593533, 0.077576, -0.801062,
		25.532120, 34.148243, 34.452187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123970, 33.611595, 34.545277>,  <25.947594, 34.093937, 35.012928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123970, 33.611595, 34.545277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963152, 33.924229, 34.354492>,  <25.866661, 34.111809, 34.240021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963152, 33.924229, 34.354492>,  <26.123970, 33.611595, 34.545277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963152, 33.924229, 34.354492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857815, 0.139366, -0.494702,
		-0.320178, -0.608035, -0.726484,
		-0.402043, 0.781582, -0.476960,
		25.842539, 34.158703, 34.211403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205280, 33.573933, 33.860714>,  <26.123970, 33.611595, 34.545277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205280, 33.573933, 33.860714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173340, 33.966972, 33.927780>,  <26.154175, 34.202797, 33.968021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.173340, 33.966972, 33.927780>,  <26.205280, 33.573933, 33.860714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173340, 33.966972, 33.927780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674140, 0.177140, -0.717047,
		-0.734275, 0.055775, -0.676557,
		-0.079852, 0.982604, 0.167670,
		26.149384, 34.261753, 33.978081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525869, 33.378986, 33.798199>,  <26.205280, 33.573933, 33.860714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525869, 33.378986, 33.798199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467882, 33.743252, 33.643452>,  <25.433090, 33.961811, 33.550602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.467882, 33.743252, 33.643452>,  <25.525869, 33.378986, 33.798199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467882, 33.743252, 33.643452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975954, 0.067282, -0.207332,
		-0.162782, -0.407624, -0.898524,
		-0.144968, 0.910668, -0.386870,
		25.424393, 34.016453, 33.527390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805321, 33.396912, 33.091217>,  <25.525869, 33.378986, 33.798199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805321, 33.396912, 33.091217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796846, 33.767456, 33.241638>,  <25.791761, 33.989780, 33.331890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.796846, 33.767456, 33.241638>,  <25.805321, 33.396912, 33.091217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.796846, 33.767456, 33.241638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898960, 0.182252, -0.398315,
		-0.437517, 0.329615, -0.836620,
		-0.021185, 0.926358, 0.376049,
		25.790491, 34.045364, 33.354454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.718836, 33.863110, 32.493519>,  <25.805321, 33.396912, 33.091217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.718836, 33.863110, 32.493519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895639, 34.055664, 32.796276>,  <26.001720, 34.171196, 32.977932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.895639, 34.055664, 32.796276>,  <25.718836, 33.863110, 32.493519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.895639, 34.055664, 32.796276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846390, 0.055630, -0.529650,
		-0.297075, 0.874740, -0.382854,
		0.442007, 0.481390, 0.756897,
		26.028242, 34.200081, 33.023346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143145, 34.383240, 32.181259>,  <25.718836, 33.863110, 32.493519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143145, 34.383240, 32.181259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276573, 34.424522, 32.556084>,  <26.356630, 34.449291, 32.780979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.276573, 34.424522, 32.556084>,  <26.143145, 34.383240, 32.181259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276573, 34.424522, 32.556084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870233, 0.348528, -0.348170,
		-0.362524, 0.931599, 0.026448,
		0.333573, 0.103204, 0.937058,
		26.376644, 34.455482, 32.837200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.386322, 35.134907, 32.287041>,  <26.143145, 34.383240, 32.181259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.386322, 35.134907, 32.287041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572977, 34.903511, 32.554653>,  <26.684971, 34.764675, 32.715221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572977, 34.903511, 32.554653>,  <26.386322, 35.134907, 32.287041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572977, 34.903511, 32.554653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881584, 0.365059, -0.299236,
		-0.071131, 0.729441, 0.680335,
		0.466637, -0.578488, 0.669030,
		26.712969, 34.729965, 32.755363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855335, 35.651970, 32.669518>,  <26.386322, 35.134907, 32.287041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855335, 35.651970, 32.669518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990200, 35.275944, 32.689915>,  <27.071119, 35.050327, 32.702152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990200, 35.275944, 32.689915>,  <26.855335, 35.651970, 32.669518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990200, 35.275944, 32.689915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889081, 0.300130, -0.345626,
		0.309606, 0.161871, 0.936986,
		0.337164, -0.940064, 0.050994,
		27.091349, 34.993923, 32.705212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.208025, 35.214062, 32.174343>,  <26.855335, 35.651970, 32.669518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.208025, 35.214062, 32.174343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277168, 35.235035, 32.567764>,  <27.318655, 35.247620, 32.803818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277168, 35.235035, 32.567764>,  <27.208025, 35.214062, 32.174343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277168, 35.235035, 32.567764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247255, -0.968916, 0.008200,
		0.953407, 0.241771, -0.180450,
		0.172858, 0.052435, 0.983550,
		27.329025, 35.250767, 32.862831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422682, 34.605366, 31.814379>,  <27.208025, 35.214062, 32.174343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422682, 34.605366, 31.814379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691401, 34.612179, 32.110596>,  <27.852631, 34.616268, 32.288326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.691401, 34.612179, 32.110596>,  <27.422682, 34.605366, 31.814379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691401, 34.612179, 32.110596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716598, -0.238200, 0.655552,
		0.187563, -0.971067, -0.147816,
		0.671795, 0.017033, 0.740542,
		27.892939, 34.617287, 32.332760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.539539, 33.873615, 32.238529>,  <27.422682, 34.605366, 31.814379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.539539, 33.873615, 32.238529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598862, 34.221893, 32.426102>,  <27.634455, 34.430859, 32.538647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.598862, 34.221893, 32.426102>,  <27.539539, 33.873615, 32.238529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598862, 34.221893, 32.426102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776967, -0.190773, 0.599940,
		0.611824, -0.453320, 0.648207,
		0.148304, 0.870693, 0.468934,
		27.643353, 34.483101, 32.566780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553921, 33.752258, 33.036488>,  <27.539539, 33.873615, 32.238529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553921, 33.752258, 33.036488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450594, 34.138405, 33.021805>,  <27.388597, 34.370090, 33.012997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450594, 34.138405, 33.021805>,  <27.553921, 33.752258, 33.036488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450594, 34.138405, 33.021805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863300, -0.213621, 0.457252,
		0.433572, 0.149805, 0.888580,
		-0.258317, 0.965362, -0.036706,
		27.373098, 34.428013, 33.010792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295134, 33.991959, 33.643341>,  <27.553921, 33.752258, 33.036488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295134, 33.991959, 33.643341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124718, 34.226311, 33.367592>,  <27.022469, 34.366920, 33.202141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.124718, 34.226311, 33.367592>,  <27.295134, 33.991959, 33.643341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.124718, 34.226311, 33.367592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892337, -0.146561, 0.426913,
		0.149085, 0.797034, 0.585244,
		-0.426038, 0.585881, -0.689372,
		26.996906, 34.402077, 33.160782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914852, 34.469955, 34.029713>,  <27.295134, 33.991959, 33.643341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914852, 34.469955, 34.029713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745432, 34.480480, 33.667515>,  <26.643780, 34.486794, 33.450195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.745432, 34.480480, 33.667515>,  <26.914852, 34.469955, 34.029713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.745432, 34.480480, 33.667515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905034, -0.055280, 0.421731,
		-0.038961, 0.998124, 0.047224,
		-0.423551, 0.026308, -0.905490,
		26.618366, 34.488373, 33.395866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451958, 35.005970, 33.990574>,  <26.914852, 34.469955, 34.029713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451958, 35.005970, 33.990574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345470, 34.750916, 33.701424>,  <26.281578, 34.597881, 33.527935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.345470, 34.750916, 33.701424>,  <26.451958, 35.005970, 33.990574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.345470, 34.750916, 33.701424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867561, -0.168322, 0.467980,
		-0.420076, 0.751723, -0.508378,
		-0.266220, -0.637637, -0.722874,
		26.265604, 34.559624, 33.484562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728827, 35.193604, 33.939472>,  <26.451958, 35.005970, 33.990574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728827, 35.193604, 33.939472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764818, 34.828789, 33.779423>,  <25.786413, 34.609901, 33.683392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.764818, 34.828789, 33.779423>,  <25.728827, 35.193604, 33.939472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764818, 34.828789, 33.779423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807999, -0.301733, 0.506057,
		-0.582272, 0.277766, -0.764072,
		0.089980, -0.912032, -0.400125,
		25.791813, 34.555180, 33.659386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061596, 34.971359, 33.620117>,  <25.728827, 35.193604, 33.939472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061596, 34.971359, 33.620117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298830, 34.675903, 33.748276>,  <25.441170, 34.498631, 33.825172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.298830, 34.675903, 33.748276>,  <25.061596, 34.971359, 33.620117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.298830, 34.675903, 33.748276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748384, -0.358988, 0.557718,
		-0.296934, -0.570557, -0.765699,
		0.593087, -0.738642, 0.320400,
		25.476755, 34.454311, 33.844395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.638889, 34.388798, 33.568455>,  <25.061596, 34.971359, 33.620117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.638889, 34.388798, 33.568455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.923326, 34.304768, 33.836845>,  <25.093988, 34.254349, 33.997879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.923326, 34.304768, 33.836845>,  <24.638889, 34.388798, 33.568455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.923326, 34.304768, 33.836845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702895, -0.235220, 0.671275,
		0.016808, -0.948968, -0.314925,
		0.711095, -0.210077, 0.670978,
		25.136656, 34.241745, 34.038139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.340170, 33.861610, 33.870007>,  <24.638889, 34.388798, 33.568455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.340170, 33.861610, 33.870007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614174, 33.966248, 34.141987>,  <24.778576, 34.029030, 34.305176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.614174, 33.966248, 34.141987>,  <24.340170, 33.861610, 33.870007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.614174, 33.966248, 34.141987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639002, -0.232537, 0.733214,
		0.349914, -0.936749, 0.007866,
		0.685008, 0.261589, 0.679952,
		24.819677, 34.044724, 34.345974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.355129, 33.412834, 34.372528>,  <24.340170, 33.861610, 33.870007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.355129, 33.412834, 34.372528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494635, 33.735474, 34.563423>,  <24.578339, 33.929058, 34.677959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494635, 33.735474, 34.563423>,  <24.355129, 33.412834, 34.372528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.494635, 33.735474, 34.563423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636419, -0.169977, 0.752382,
		0.687992, -0.566128, 0.454055,
		0.348765, 0.806602, 0.477238,
		24.599264, 33.977455, 34.706596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.570749, 33.239212, 35.055386>,  <24.355129, 33.412834, 34.372528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.570749, 33.239212, 35.055386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.515440, 33.633259, 35.096233>,  <24.482254, 33.869686, 35.120743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.515440, 33.633259, 35.096233>,  <24.570749, 33.239212, 35.055386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.515440, 33.633259, 35.096233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470409, -0.156061, 0.868539,
		0.871548, 0.072060, 0.484987,
		-0.138274, 0.985115, 0.102117,
		24.473957, 33.928795, 35.126869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.769423, 33.519188, 35.734962>,  <24.570749, 33.239212, 35.055386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.769423, 33.519188, 35.734962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471981, 33.743294, 35.589005>,  <24.293516, 33.877758, 35.501431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471981, 33.743294, 35.589005>,  <24.769423, 33.519188, 35.734962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471981, 33.743294, 35.589005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559910, -0.223506, 0.797838,
		0.365447, 0.797587, 0.479900,
		-0.743606, 0.560268, -0.364898,
		24.248899, 33.911373, 35.479534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.252996, 34.021530, 36.129303>,  <24.769423, 33.519188, 35.734962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.252996, 34.021530, 36.129303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557562, 34.248291, 36.003529>,  <25.740301, 34.384350, 35.928066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.557562, 34.248291, 36.003529>,  <25.252996, 34.021530, 36.129303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.557562, 34.248291, 36.003529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607984, -0.456165, 0.649823,
		0.224956, -0.685953, -0.692000,
		0.761414, 0.566906, -0.314431,
		25.785986, 34.418362, 35.909199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818640, 33.690800, 35.776661>,  <25.252996, 34.021530, 36.129303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818640, 33.690800, 35.776661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953194, 33.967747, 36.031994>,  <26.033926, 34.133915, 36.185192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953194, 33.967747, 36.031994>,  <25.818640, 33.690800, 35.776661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953194, 33.967747, 36.031994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355451, -0.721045, 0.594768,
		0.872066, 0.026824, -0.488653,
		0.336386, 0.692369, 0.638334,
		26.054110, 34.175457, 36.223495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520929, 33.593475, 35.919930>,  <25.818640, 33.690800, 35.776661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520929, 33.593475, 35.919930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369881, 33.798168, 36.228611>,  <26.279251, 33.920982, 36.413822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369881, 33.798168, 36.228611>,  <26.520929, 33.593475, 35.919930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369881, 33.798168, 36.228611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349637, -0.692916, 0.630572,
		0.857413, 0.507935, 0.082739,
		-0.377621, 0.511732, 0.771708,
		26.256594, 33.951687, 36.460125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900595, 33.762630, 36.633221>,  <26.520929, 33.593475, 35.919930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900595, 33.762630, 36.633221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510845, 33.673187, 36.642994>,  <26.276997, 33.619522, 36.648857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.510845, 33.673187, 36.642994>,  <26.900595, 33.762630, 36.633221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510845, 33.673187, 36.642994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191428, -0.767265, 0.612094,
		-0.118127, 0.601084, 0.790408,
		-0.974372, -0.223611, 0.024430,
		26.218533, 33.606102, 36.650322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.434917, 34.305950, 36.812889>,  <26.900595, 33.762630, 36.633221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.434917, 34.305950, 36.812889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052652, 34.290436, 36.696129>,  <26.823294, 34.281128, 36.626072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.052652, 34.290436, 36.696129>,  <27.434917, 34.305950, 36.812889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.052652, 34.290436, 36.696129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170754, -0.734602, 0.656660,
		-0.239901, 0.677388, 0.695408,
		-0.955662, -0.038789, -0.291898,
		26.765953, 34.278797, 36.608559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043110, 34.104931, 37.288986>,  <27.434917, 34.305950, 36.812889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043110, 34.104931, 37.288986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188910, 34.409267, 37.503746>,  <28.276390, 34.591869, 37.632603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188910, 34.409267, 37.503746>,  <28.043110, 34.104931, 37.288986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188910, 34.409267, 37.503746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468664, -0.348334, 0.811799,
		0.804670, -0.547526, 0.229611,
		0.364500, 0.760841, 0.536900,
		28.298260, 34.637520, 37.664818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.155449, 33.794094, 37.924706>,  <28.043110, 34.104931, 37.288986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.155449, 33.794094, 37.924706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139112, 34.187473, 37.995312>,  <28.129311, 34.423500, 38.037674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139112, 34.187473, 37.995312>,  <28.155449, 33.794094, 37.924706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139112, 34.187473, 37.995312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448454, -0.175911, 0.876324,
		0.892872, -0.043369, 0.448217,
		-0.040841, 0.983450, 0.176515,
		28.126860, 34.482510, 38.048267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.500340, 33.867786, 38.527905>,  <28.155449, 33.794094, 37.924706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.500340, 33.867786, 38.527905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279886, 34.199875, 38.494469>,  <28.147614, 34.399128, 38.474407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279886, 34.199875, 38.494469>,  <28.500340, 33.867786, 38.527905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279886, 34.199875, 38.494469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363655, -0.148820, 0.919569,
		0.751004, 0.537204, 0.383933,
		-0.551133, 0.830220, -0.083592,
		28.114546, 34.448940, 38.469391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646847, 34.309071, 39.097042>,  <28.500340, 33.867786, 38.527905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646847, 34.309071, 39.097042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281567, 34.432373, 38.990429>,  <28.062397, 34.506355, 38.926460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281567, 34.432373, 38.990429>,  <28.646847, 34.309071, 39.097042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281567, 34.432373, 38.990429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335884, -0.199021, 0.920637,
		0.230744, 0.930253, 0.285284,
		-0.913203, 0.308254, -0.266534,
		28.007607, 34.524849, 38.910469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355425, 34.435089, 39.798580>,  <28.646847, 34.309071, 39.097042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355425, 34.435089, 39.798580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650354, 34.702560, 39.760159>,  <28.827312, 34.863041, 39.737106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.650354, 34.702560, 39.760159>,  <28.355425, 34.435089, 39.798580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650354, 34.702560, 39.760159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556957, 0.521255, -0.646601,
		-0.382298, 0.530252, 0.756757,
		0.737325, 0.668675, -0.096053,
		28.871552, 34.903164, 39.731342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079851, 35.148220, 39.905258>,  <28.355425, 34.435089, 39.798580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079851, 35.148220, 39.905258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812609, 34.974644, 39.663486>,  <27.652264, 34.870499, 39.518425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.812609, 34.974644, 39.663486>,  <28.079851, 35.148220, 39.905258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.812609, 34.974644, 39.663486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464665, -0.391125, 0.794423,
		-0.581138, 0.811614, 0.059676,
		-0.668105, -0.433940, -0.604427,
		27.612177, 34.844463, 39.482159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442585, 35.229977, 40.247765>,  <28.079851, 35.148220, 39.905258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442585, 35.229977, 40.247765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406384, 34.918705, 39.999168>,  <27.384663, 34.731941, 39.850010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.406384, 34.918705, 39.999168>,  <27.442585, 35.229977, 40.247765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406384, 34.918705, 39.999168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482677, -0.511582, 0.710849,
		-0.871110, 0.364311, -0.329310,
		-0.090502, -0.778178, -0.621489,
		27.379232, 34.685253, 39.812721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716360, 34.983154, 40.326141>,  <27.442585, 35.229977, 40.247765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716360, 34.983154, 40.326141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958494, 34.696877, 40.186802>,  <27.103775, 34.525108, 40.103199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958494, 34.696877, 40.186802>,  <26.716360, 34.983154, 40.326141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958494, 34.696877, 40.186802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335823, -0.626426, 0.703431,
		-0.721660, -0.308826, -0.619544,
		0.605335, -0.715694, -0.348355,
		27.140095, 34.482170, 40.082294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353422, 34.367123, 40.754372>,  <26.716360, 34.983154, 40.326141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353422, 34.367123, 40.754372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323765, 33.982506, 40.648586>,  <26.305969, 33.751736, 40.585117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.323765, 33.982506, 40.648586>,  <26.353422, 34.367123, 40.754372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.323765, 33.982506, 40.648586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813929, 0.094879, -0.573165,
		0.576214, -0.257749, 0.775592,
		-0.074145, -0.961542, -0.264460,
		26.301521, 33.694042, 40.569248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.048279, 34.042286, 40.733139>,  <26.353422, 34.367123, 40.754372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.048279, 34.042286, 40.733139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824928, 33.854321, 40.459675>,  <26.690918, 33.741539, 40.295597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.824928, 33.854321, 40.459675>,  <27.048279, 34.042286, 40.733139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.824928, 33.854321, 40.459675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578232, 0.370472, -0.726910,
		0.594865, -0.801205, 0.064857,
		-0.558376, -0.469916, -0.683663,
		26.657415, 33.713345, 40.254578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509438, 33.728729, 40.283531>,  <27.048279, 34.042286, 40.733139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509438, 33.728729, 40.283531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153555, 33.789078, 40.111176>,  <26.940025, 33.825287, 40.007763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153555, 33.789078, 40.111176>,  <27.509438, 33.728729, 40.283531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153555, 33.789078, 40.111176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443349, 0.510738, -0.736606,
		0.108935, -0.846395, -0.521296,
		-0.889705, 0.150874, -0.430886,
		26.886644, 33.834339, 39.981911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515423, 33.501961, 39.582489>,  <27.509438, 33.728729, 40.283531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515423, 33.501961, 39.582489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265678, 33.810692, 39.630573>,  <27.115831, 33.995930, 39.659424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265678, 33.810692, 39.630573>,  <27.515423, 33.501961, 39.582489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265678, 33.810692, 39.630573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450490, 0.481509, -0.751803,
		-0.638147, -0.415243, -0.648337,
		-0.624361, 0.771831, 0.120211,
		27.078369, 34.042240, 39.666637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.260580, 33.710564, 38.936016>,  <27.515423, 33.501961, 39.582489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.260580, 33.710564, 38.936016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281439, 34.020092, 39.188519>,  <27.293955, 34.205811, 39.340019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.281439, 34.020092, 39.188519>,  <27.260580, 33.710564, 38.936016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.281439, 34.020092, 39.188519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444272, 0.548139, -0.708637,
		-0.894373, 0.317401, -0.315204,
		0.052147, 0.773822, 0.631253,
		27.297083, 34.252239, 39.377895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830990, 34.265759, 38.618908>,  <27.260580, 33.710564, 38.936016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830990, 34.265759, 38.618908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111521, 34.414570, 38.862129>,  <27.279840, 34.503857, 39.008064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111521, 34.414570, 38.862129>,  <26.830990, 34.265759, 38.618908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111521, 34.414570, 38.862129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458052, 0.418397, -0.784304,
		-0.546193, 0.828576, 0.123025,
		0.701328, 0.372029, 0.608057,
		27.321918, 34.526180, 39.044548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984911, 34.842751, 38.354874>,  <26.830990, 34.265759, 38.618908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984911, 34.842751, 38.354874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300589, 34.830757, 38.600239>,  <27.489994, 34.823559, 38.747459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300589, 34.830757, 38.600239>,  <26.984911, 34.842751, 38.354874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300589, 34.830757, 38.600239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565376, 0.425540, -0.706587,
		-0.239842, 0.904443, 0.352788,
		0.789193, -0.029988, 0.613412,
		27.537346, 34.821762, 38.784264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319756, 35.498085, 38.411270>,  <26.984911, 34.842751, 38.354874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319756, 35.498085, 38.411270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587738, 35.203045, 38.444988>,  <27.748528, 35.026020, 38.465218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587738, 35.203045, 38.444988>,  <27.319756, 35.498085, 38.411270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587738, 35.203045, 38.444988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557928, 0.425322, -0.712614,
		0.489774, 0.524447, 0.696474,
		0.669954, -0.737602, 0.084292,
		27.788725, 34.981766, 38.470276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016052, 35.747116, 38.257977>,  <27.319756, 35.498085, 38.411270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016052, 35.747116, 38.257977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084473, 35.354275, 38.226460>,  <28.125525, 35.118568, 38.207550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.084473, 35.354275, 38.226460>,  <28.016052, 35.747116, 38.257977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084473, 35.354275, 38.226460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610226, 0.168392, -0.774124,
		0.773541, 0.084333, 0.628110,
		0.171053, -0.982106, -0.078796,
		28.135788, 35.059643, 38.202820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724907, 35.690681, 38.310928>,  <28.016052, 35.747116, 38.257977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724907, 35.690681, 38.310928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587675, 35.381496, 38.097450>,  <28.505337, 35.195984, 37.969364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587675, 35.381496, 38.097450>,  <28.724907, 35.690681, 38.310928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587675, 35.381496, 38.097450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622106, 0.238717, -0.745653,
		0.703763, -0.587831, 0.398965,
		-0.343078, -0.772961, -0.533693,
		28.484751, 35.149609, 37.937344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299171, 35.367733, 37.987961>,  <28.724907, 35.690681, 38.310928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299171, 35.367733, 37.987961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991262, 35.272381, 37.751106>,  <28.806517, 35.215168, 37.608994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991262, 35.272381, 37.751106>,  <29.299171, 35.367733, 37.987961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991262, 35.272381, 37.751106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578158, 0.132770, -0.805050,
		0.270528, -0.962053, 0.035621,
		-0.769772, -0.238383, -0.592136,
		28.760330, 35.200867, 37.573467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356815, 34.789989, 37.585796>,  <29.299171, 35.367733, 37.987961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356815, 34.789989, 37.585796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167543, 35.092110, 37.404415>,  <29.053980, 35.273384, 37.295586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.167543, 35.092110, 37.404415>,  <29.356815, 34.789989, 37.585796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167543, 35.092110, 37.404415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798831, 0.150838, -0.582337,
		-0.371444, -0.637780, -0.674734,
		-0.473179, 0.755304, -0.453451,
		29.025589, 35.318703, 37.268379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893265, 35.297722, 37.122845>,  <29.356815, 34.789989, 37.585796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893265, 35.297722, 37.122845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243683, 35.120132, 37.198143>,  <30.453934, 35.013580, 37.243320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243683, 35.120132, 37.198143>,  <29.893265, 35.297722, 37.122845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243683, 35.120132, 37.198143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341525, 0.846800, 0.407786,
		-0.340448, -0.292950, 0.893462,
		0.876045, -0.443970, 0.188242,
		30.506496, 34.986942, 37.254616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070221, 35.361660, 37.875072>,  <29.893265, 35.297722, 37.122845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070221, 35.361660, 37.875072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380392, 35.327003, 37.624886>,  <30.566494, 35.306210, 37.474773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380392, 35.327003, 37.624886>,  <30.070221, 35.361660, 37.875072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380392, 35.327003, 37.624886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423791, 0.805716, 0.413790,
		0.468094, -0.585930, 0.661493,
		0.775428, -0.086642, -0.625463,
		30.613020, 35.301010, 37.437248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585108, 35.267101, 38.361877>,  <30.070221, 35.361660, 37.875072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585108, 35.267101, 38.361877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699358, 35.422798, 38.011585>,  <30.767908, 35.516216, 37.801411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.699358, 35.422798, 38.011585>,  <30.585108, 35.267101, 38.361877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699358, 35.422798, 38.011585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212736, 0.865250, 0.453967,
		0.934431, -0.315965, 0.164332,
		0.285625, 0.389242, -0.875733,
		30.785046, 35.539570, 37.748867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331244, 35.564201, 38.455658>,  <30.585108, 35.267101, 38.361877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331244, 35.564201, 38.455658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123856, 35.758453, 38.174133>,  <30.999424, 35.875004, 38.005219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123856, 35.758453, 38.174133>,  <31.331244, 35.564201, 38.455658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123856, 35.758453, 38.174133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328740, 0.873024, 0.360222,
		0.789380, -0.044606, -0.612282,
		-0.518468, 0.485634, -0.703811,
		30.968315, 35.904144, 37.962990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830654, 36.080345, 38.138004>,  <31.331244, 35.564201, 38.455658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830654, 36.080345, 38.138004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444443, 36.176018, 38.096931>,  <31.212715, 36.233421, 38.072289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444443, 36.176018, 38.096931>,  <31.830654, 36.080345, 38.138004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444443, 36.176018, 38.096931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218959, 0.959645, 0.176462,
		0.140745, 0.147896, -0.978937,
		-0.965530, 0.239183, -0.102683,
		31.154783, 36.247772, 38.066128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021645, 35.735718, 38.826363>,  <31.830654, 36.080345, 38.138004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021645, 35.735718, 38.826363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193081, 35.381653, 38.898811>,  <32.295944, 35.169216, 38.942280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193081, 35.381653, 38.898811>,  <32.021645, 35.735718, 38.826363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193081, 35.381653, 38.898811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044926, -0.221093, -0.974217,
		0.902380, 0.409405, -0.134525,
		0.428592, -0.885158, 0.181117,
		32.321659, 35.116104, 38.953148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615585, 35.563335, 38.415958>,  <32.021645, 35.735718, 38.826363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615585, 35.563335, 38.415958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466480, 35.212765, 38.537884>,  <32.377018, 35.002422, 38.611038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466480, 35.212765, 38.537884>,  <32.615585, 35.563335, 38.415958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466480, 35.212765, 38.537884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084117, -0.295225, -0.951718,
		0.924105, -0.380408, 0.036327,
		-0.372766, -0.876431, 0.304818,
		32.354652, 34.949837, 38.629330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856647, 35.015472, 37.945278>,  <32.615585, 35.563335, 38.415958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856647, 35.015472, 37.945278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528934, 34.893353, 38.139420>,  <32.332306, 34.820080, 38.255905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528934, 34.893353, 38.139420>,  <32.856647, 35.015472, 37.945278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528934, 34.893353, 38.139420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382693, -0.339194, -0.859357,
		0.426993, -0.889796, 0.161058,
		-0.819282, -0.305304, 0.485352,
		32.283150, 34.801762, 38.285027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888641, 34.390579, 37.800598>,  <32.856647, 35.015472, 37.945278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888641, 34.390579, 37.800598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518143, 34.508038, 37.895126>,  <32.295845, 34.578510, 37.951843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518143, 34.508038, 37.895126>,  <32.888641, 34.390579, 37.800598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518143, 34.508038, 37.895126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289958, -0.154519, -0.944483,
		-0.240825, -0.943344, 0.228266,
		-0.926244, 0.293642, 0.236318,
		32.240269, 34.596130, 37.966022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340603, 33.861996, 37.585339>,  <32.888641, 34.390579, 37.800598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340603, 33.861996, 37.585339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210789, 34.240345, 37.586544>,  <32.132900, 34.467354, 37.587269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210789, 34.240345, 37.586544>,  <32.340603, 33.861996, 37.585339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210789, 34.240345, 37.586544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259913, -0.086110, -0.961785,
		-0.909463, -0.312917, 0.273789,
		-0.324535, 0.945869, 0.003017,
		32.113426, 34.524105, 37.587448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612362, 33.987625, 37.487000>,  <32.340603, 33.861996, 37.585339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612362, 33.987625, 37.487000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883551, 34.253281, 37.360973>,  <32.046265, 34.412674, 37.285358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883551, 34.253281, 37.360973>,  <31.612362, 33.987625, 37.487000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883551, 34.253281, 37.360973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284185, -0.158482, -0.945580,
		-0.677934, 0.730614, 0.081294,
		0.677971, 0.664143, -0.315070,
		32.086941, 34.452522, 37.266453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349697, 34.509750, 36.927521>,  <31.612362, 33.987625, 37.487000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349697, 34.509750, 36.927521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740099, 34.433174, 36.886021>,  <31.974340, 34.387230, 36.861122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.740099, 34.433174, 36.886021>,  <31.349697, 34.509750, 36.927521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740099, 34.433174, 36.886021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110047, -0.022550, -0.993670,
		0.187887, 0.981245, -0.043077,
		0.976006, -0.191439, -0.103746,
		32.032902, 34.375744, 36.854897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723085, 35.007847, 36.445656>,  <31.349697, 34.509750, 36.927521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723085, 35.007847, 36.445656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867544, 34.635532, 36.422997>,  <31.954220, 34.412144, 36.409401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867544, 34.635532, 36.422997>,  <31.723085, 35.007847, 36.445656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867544, 34.635532, 36.422997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165370, -0.004137, -0.986223,
		0.917729, 0.365540, -0.155418,
		0.361147, -0.930786, -0.056652,
		31.975889, 34.356297, 36.406002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260662, 34.947937, 36.013290>,  <31.723085, 35.007847, 36.445656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260662, 34.947937, 36.013290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082153, 34.591125, 36.041935>,  <31.975048, 34.377041, 36.059124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082153, 34.591125, 36.041935>,  <32.260662, 34.947937, 36.013290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082153, 34.591125, 36.041935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305146, 0.076455, -0.949231,
		0.841265, -0.445469, -0.306318,
		-0.446273, -0.892027, 0.071615,
		31.948271, 34.323517, 36.063419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482014, 34.319691, 35.550869>,  <32.260662, 34.947937, 36.013290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482014, 34.319691, 35.550869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091908, 34.317425, 35.639259>,  <31.857843, 34.316067, 35.692295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091908, 34.317425, 35.639259>,  <32.482014, 34.319691, 35.550869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091908, 34.317425, 35.639259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218229, -0.134440, -0.966593,
		0.035184, -0.990906, 0.129877,
		-0.975263, -0.005666, 0.220975,
		31.799328, 34.315727, 35.705551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156124, 33.686333, 35.420319>,  <32.482014, 34.319691, 35.550869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156124, 33.686333, 35.420319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838276, 33.929111, 35.425880>,  <31.647568, 34.074780, 35.429218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838276, 33.929111, 35.425880>,  <32.156124, 33.686333, 35.420319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838276, 33.929111, 35.425880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251935, -0.308827, -0.917145,
		-0.552366, -0.732284, 0.398312,
		-0.794620, 0.606948, 0.013902,
		31.599890, 34.111195, 35.430050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613310, 33.343914, 35.080784>,  <32.156124, 33.686333, 35.420319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613310, 33.343914, 35.080784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504576, 33.728405, 35.062222>,  <31.439335, 33.959099, 35.051083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.504576, 33.728405, 35.062222>,  <31.613310, 33.343914, 35.080784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504576, 33.728405, 35.062222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307971, -0.132577, -0.942113,
		-0.911734, -0.241808, 0.332068,
		-0.271835, 0.961224, -0.046406,
		31.423025, 34.016773, 35.048302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902851, 33.338467, 34.973022>,  <31.613310, 33.343914, 35.080784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902851, 33.338467, 34.973022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064837, 33.677471, 34.835773>,  <31.162027, 33.880875, 34.753426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.064837, 33.677471, 34.835773>,  <30.902851, 33.338467, 34.973022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064837, 33.677471, 34.835773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359191, -0.197639, -0.912097,
		-0.840826, 0.492611, 0.224382,
		0.404962, 0.847510, -0.343121,
		31.186325, 33.931725, 34.732838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376144, 33.504379, 34.579571>,  <30.902851, 33.338467, 34.973022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376144, 33.504379, 34.579571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670366, 33.739548, 34.444923>,  <30.846899, 33.880650, 34.364136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.670366, 33.739548, 34.444923>,  <30.376144, 33.504379, 34.579571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670366, 33.739548, 34.444923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365882, -0.073431, -0.927760,
		-0.570165, 0.805580, 0.161096,
		0.735555, 0.587919, -0.336615,
		30.891033, 33.915924, 34.343941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096613, 34.177654, 34.354259>,  <30.376144, 33.504379, 34.579571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096613, 34.177654, 34.354259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450113, 34.129761, 34.173306>,  <30.662214, 34.101025, 34.064735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450113, 34.129761, 34.173306>,  <30.096613, 34.177654, 34.354259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450113, 34.129761, 34.173306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464057, -0.099678, -0.880179,
		0.060292, 0.987790, -0.143653,
		0.883751, -0.119731, -0.452381,
		30.715239, 34.093842, 34.037590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919109, 34.334892, 33.597618>,  <30.096613, 34.177654, 34.354259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919109, 34.334892, 33.597618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299881, 34.213253, 33.582890>,  <30.528343, 34.140270, 33.574051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299881, 34.213253, 33.582890>,  <29.919109, 34.334892, 33.597618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299881, 34.213253, 33.582890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008508, 0.093904, -0.995545,
		0.306206, 0.948000, 0.086803,
		0.951927, -0.304103, -0.036820,
		30.585459, 34.122021, 33.571842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222250, 34.807983, 33.216766>,  <29.919109, 34.334892, 33.597618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222250, 34.807983, 33.216766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402145, 34.451553, 33.192375>,  <30.510082, 34.237694, 33.177742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.402145, 34.451553, 33.192375>,  <30.222250, 34.807983, 33.216766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402145, 34.451553, 33.192375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209369, -0.038810, -0.977066,
		0.868273, 0.452193, -0.204018,
		0.449740, -0.891075, -0.060977,
		30.537067, 34.184231, 33.174084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533619, 34.895512, 32.602169>,  <30.222250, 34.807983, 33.216766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533619, 34.895512, 32.602169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492096, 34.503765, 32.671532>,  <30.467182, 34.268719, 32.713150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492096, 34.503765, 32.671532>,  <30.533619, 34.895512, 32.602169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492096, 34.503765, 32.671532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470496, -0.105256, -0.876102,
		0.876274, -0.172537, -0.449860,
		-0.103809, -0.979363, 0.173411,
		30.460953, 34.209957, 32.723557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795237, 34.519630, 31.958441>,  <30.533619, 34.895512, 32.602169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795237, 34.519630, 31.958441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547136, 34.272736, 32.152061>,  <30.398277, 34.124599, 32.268234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.547136, 34.272736, 32.152061>,  <30.795237, 34.519630, 31.958441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547136, 34.272736, 32.152061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516230, -0.143412, -0.844357,
		0.590591, -0.773592, -0.229688,
		-0.620248, -0.617242, 0.484050,
		30.361061, 34.087563, 32.297276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768843, 33.884300, 31.544670>,  <30.795237, 34.519630, 31.958441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768843, 33.884300, 31.544670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426407, 33.888783, 31.751354>,  <30.220945, 33.891472, 31.875364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426407, 33.888783, 31.751354>,  <30.768843, 33.884300, 31.544670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426407, 33.888783, 31.751354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516828, -0.021222, -0.855826,
		0.001376, -0.999712, 0.023959,
		-0.856088, 0.011205, 0.516709,
		30.169580, 33.892143, 31.906366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369549, 33.304653, 31.319460>,  <30.768843, 33.884300, 31.544670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369549, 33.304653, 31.319460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103689, 33.561817, 31.471727>,  <29.944174, 33.716118, 31.563087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103689, 33.561817, 31.471727>,  <30.369549, 33.304653, 31.319460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103689, 33.561817, 31.471727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612455, -0.176984, -0.770438,
		-0.427953, -0.745211, 0.511388,
		-0.664646, 0.642914, 0.380667,
		29.904295, 33.754692, 31.585928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783096, 33.010845, 31.066420>,  <30.369549, 33.304653, 31.319460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783096, 33.010845, 31.066420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697706, 33.387569, 31.170286>,  <29.646473, 33.613602, 31.232605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697706, 33.387569, 31.170286>,  <29.783096, 33.010845, 31.066420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697706, 33.387569, 31.170286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516719, 0.116725, -0.848161,
		-0.829114, -0.315234, 0.461733,
		-0.213474, 0.941808, 0.259665,
		29.633663, 33.670113, 31.248186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100201, 33.098286, 30.828543>,  <29.783096, 33.010845, 31.066420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100201, 33.098286, 30.828543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223064, 33.472099, 30.900421>,  <29.296783, 33.696388, 30.943548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223064, 33.472099, 30.900421>,  <29.100201, 33.098286, 30.828543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223064, 33.472099, 30.900421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570058, 0.331881, -0.751591,
		-0.762028, 0.128423, 0.634682,
		0.307161, 0.934538, 0.179694,
		29.315212, 33.752460, 30.954329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585661, 33.393219, 30.568317>,  <29.100201, 33.098286, 30.828543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585661, 33.393219, 30.568317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850958, 33.692448, 30.577261>,  <29.010136, 33.871986, 30.582626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.850958, 33.692448, 30.577261>,  <28.585661, 33.393219, 30.568317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850958, 33.692448, 30.577261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407020, 0.385611, -0.828033,
		-0.628049, 0.540086, 0.560233,
		0.663242, 0.748071, 0.022357,
		29.049931, 33.916870, 30.583967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.190586, 33.987984, 30.550508>,  <28.585661, 33.393219, 30.568317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.190586, 33.987984, 30.550508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549475, 34.116570, 30.429407>,  <28.764807, 34.193722, 30.356747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.549475, 34.116570, 30.429407>,  <28.190586, 33.987984, 30.550508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549475, 34.116570, 30.429407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421699, 0.420323, -0.803429,
		-0.131018, 0.848523, 0.512682,
		0.897220, 0.321461, -0.302751,
		28.818642, 34.213009, 30.338581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.132019, 34.584648, 30.720009>,  <28.190586, 33.987984, 30.550508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.132019, 34.584648, 30.720009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408035, 34.544064, 30.433361>,  <28.573645, 34.519711, 30.261372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.408035, 34.544064, 30.433361>,  <28.132019, 34.584648, 30.720009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.408035, 34.544064, 30.433361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565984, 0.541481, -0.621659,
		0.451113, 0.834568, 0.316217,
		0.690042, -0.101465, -0.716621,
		28.615047, 34.513622, 30.218374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182436, 35.284088, 30.518330>,  <28.132019, 34.584648, 30.720009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182436, 35.284088, 30.518330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329582, 35.067814, 30.215719>,  <28.417870, 34.938049, 30.034153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329582, 35.067814, 30.215719>,  <28.182436, 35.284088, 30.518330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329582, 35.067814, 30.215719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648652, 0.433731, -0.625403,
		0.666276, 0.720786, -0.191163,
		0.367868, -0.540689, -0.756524,
		28.439943, 34.905605, 29.988762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414780, 35.818134, 29.898619>,  <28.182436, 35.284088, 30.518330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414780, 35.818134, 29.898619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386307, 35.459869, 29.723015>,  <28.369223, 35.244911, 29.617653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386307, 35.459869, 29.723015>,  <28.414780, 35.818134, 29.898619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386307, 35.459869, 29.723015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500173, 0.412842, -0.761176,
		0.862995, 0.165398, -0.477371,
		-0.071182, -0.895659, -0.439008,
		28.364952, 35.191170, 29.591312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613777, 35.870918, 29.188309>,  <28.414780, 35.818134, 29.898619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613777, 35.870918, 29.188309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415176, 35.525215, 29.155943>,  <28.296015, 35.317795, 29.136524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415176, 35.525215, 29.155943>,  <28.613777, 35.870918, 29.188309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415176, 35.525215, 29.155943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565435, 0.392738, -0.725286,
		0.658611, -0.314354, -0.683676,
		-0.496503, -0.864256, -0.080914,
		28.266226, 35.265938, 29.131668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534750, 35.674557, 28.398203>,  <28.613777, 35.870918, 29.188309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534750, 35.674557, 28.398203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265751, 35.441715, 28.581026>,  <28.104351, 35.302010, 28.690720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265751, 35.441715, 28.581026>,  <28.534750, 35.674557, 28.398203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265751, 35.441715, 28.581026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636761, 0.140332, -0.758183,
		0.377201, -0.800914, -0.465033,
		-0.672498, -0.582103, 0.457058,
		28.064001, 35.267086, 28.718143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357895, 35.106899, 27.962851>,  <28.534750, 35.674557, 28.398203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357895, 35.106899, 27.962851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057594, 35.153351, 28.222971>,  <27.877415, 35.181221, 28.379044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057594, 35.153351, 28.222971>,  <28.357895, 35.106899, 27.962851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057594, 35.153351, 28.222971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639250, 0.120459, -0.759506,
		-0.166537, -0.985902, -0.016198,
		-0.750749, 0.116131, 0.650299,
		27.832369, 35.188190, 28.418060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807871, 34.837566, 27.603016>,  <28.357895, 35.106899, 27.962851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807871, 34.837566, 27.603016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626669, 35.064144, 27.878386>,  <27.517948, 35.200092, 28.043608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626669, 35.064144, 27.878386>,  <27.807871, 34.837566, 27.603016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626669, 35.064144, 27.878386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750468, 0.174538, -0.637443,
		-0.481234, -0.805403, 0.346035,
		-0.453002, 0.566447, 0.688423,
		27.490768, 35.234077, 28.084913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122114, 34.672089, 27.384066>,  <27.807871, 34.837566, 27.603016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122114, 34.672089, 27.384066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090969, 34.996323, 27.616236>,  <27.072281, 35.190861, 27.755539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.090969, 34.996323, 27.616236>,  <27.122114, 34.672089, 27.384066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.090969, 34.996323, 27.616236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729436, 0.350547, -0.587401,
		-0.679603, -0.469121, 0.563972,
		-0.077864, 0.810582, 0.580427,
		27.067610, 35.239498, 27.790363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373116, 34.739365, 27.332371>,  <27.122114, 34.672089, 27.384066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373116, 34.739365, 27.332371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560829, 35.073391, 27.447220>,  <26.673458, 35.273808, 27.516129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.560829, 35.073391, 27.447220>,  <26.373116, 34.739365, 27.332371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560829, 35.073391, 27.447220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701658, 0.550039, -0.452916,
		-0.536142, 0.011085, 0.844055,
		0.469284, 0.835065, 0.287121,
		26.701614, 35.323910, 27.533356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.838369, 35.148525, 27.208759>,  <26.373116, 34.739365, 27.332371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.838369, 35.148525, 27.208759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145744, 35.397415, 27.268549>,  <26.330170, 35.546749, 27.304422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.145744, 35.397415, 27.268549>,  <25.838369, 35.148525, 27.208759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145744, 35.397415, 27.268549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444016, 0.686643, -0.575648,
		-0.460816, 0.375981, 0.803919,
		0.768439, 0.622221, 0.149475,
		26.376276, 35.584080, 27.313391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631475, 35.791882, 27.506907>,  <25.838369, 35.148525, 27.208759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631475, 35.791882, 27.506907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976667, 35.887356, 27.328785>,  <26.183783, 35.944641, 27.221912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976667, 35.887356, 27.328785>,  <25.631475, 35.791882, 27.506907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976667, 35.887356, 27.328785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484279, 0.642017, -0.594381,
		0.144020, 0.728589, 0.669639,
		0.862979, 0.238689, -0.445303,
		26.235561, 35.958961, 27.195194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.735029, 36.445034, 27.586033>,  <25.631475, 35.791882, 27.506907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.735029, 36.445034, 27.586033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935562, 36.338364, 27.256779>,  <26.055882, 36.274361, 27.059227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.935562, 36.338364, 27.256779>,  <25.735029, 36.445034, 27.586033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.935562, 36.338364, 27.256779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463341, 0.720686, -0.515682,
		0.730739, 0.639920, 0.237744,
		0.501333, -0.266673, -0.823135,
		26.085962, 36.258362, 27.009838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.852699, 37.011002, 27.307812>,  <25.735029, 36.445034, 27.586033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.852699, 37.011002, 27.307812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909197, 36.753380, 27.007082>,  <25.943096, 36.598808, 26.826643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.909197, 36.753380, 27.007082>,  <25.852699, 37.011002, 27.307812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909197, 36.753380, 27.007082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352267, 0.677037, -0.646165,
		0.925180, 0.356110, -0.131252,
		0.141244, -0.644055, -0.751827,
		25.951571, 36.560162, 26.781534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315294, 37.283291, 26.798721>,  <25.852699, 37.011002, 27.307812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315294, 37.283291, 26.798721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100197, 37.003929, 26.609802>,  <25.971138, 36.836311, 26.496450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.100197, 37.003929, 26.609802>,  <26.315294, 37.283291, 26.798721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.100197, 37.003929, 26.609802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159758, 0.634442, -0.756281,
		0.827833, -0.331233, -0.452743,
		-0.537745, -0.698404, -0.472295,
		25.938873, 36.794407, 26.468113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563574, 37.245132, 26.138407>,  <26.315294, 37.283291, 26.798721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563574, 37.245132, 26.138407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182095, 37.124893, 26.134342>,  <25.953207, 37.052750, 26.131903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182095, 37.124893, 26.134342>,  <26.563574, 37.245132, 26.138407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182095, 37.124893, 26.134342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162350, 0.542943, -0.823927,
		0.253186, -0.784127, -0.566605,
		-0.953697, -0.300595, -0.010162,
		25.895985, 37.034714, 26.131294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.484121, 37.191044, 25.473759>,  <26.563574, 37.245132, 26.138407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.484121, 37.191044, 25.473759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105190, 37.178658, 25.601263>,  <25.877831, 37.171227, 25.677765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105190, 37.178658, 25.601263>,  <26.484121, 37.191044, 25.473759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105190, 37.178658, 25.601263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308179, 0.358952, -0.881010,
		-0.087134, -0.932842, -0.349590,
		-0.947330, -0.030970, 0.318759,
		25.820992, 37.169365, 25.696890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.178665, 37.039089, 24.885490>,  <26.484121, 37.191044, 25.473759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.178665, 37.039089, 24.885490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897358, 37.177753, 25.133762>,  <25.728573, 37.260952, 25.282724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897358, 37.177753, 25.133762>,  <26.178665, 37.039089, 24.885490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897358, 37.177753, 25.133762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434128, 0.481965, -0.761080,
		-0.562979, -0.804698, -0.188457,
		-0.703269, 0.346658, 0.620678,
		25.686377, 37.281750, 25.319965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605850, 37.050465, 24.457806>,  <26.178665, 37.039089, 24.885490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605850, 37.050465, 24.457806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504181, 37.273521, 24.773888>,  <25.443178, 37.407356, 24.963537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.504181, 37.273521, 24.773888>,  <25.605850, 37.050465, 24.457806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.504181, 37.273521, 24.773888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494203, 0.627433, -0.601741,
		-0.831360, -0.543469, 0.116113,
		-0.254175, 0.557646, 0.790206,
		25.427929, 37.440815, 25.010950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.949249, 37.207600, 24.386421>,  <25.605850, 37.050465, 24.457806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.949249, 37.207600, 24.386421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091879, 37.495682, 24.624468>,  <25.177456, 37.668530, 24.767296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.091879, 37.495682, 24.624468>,  <24.949249, 37.207600, 24.386421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.091879, 37.495682, 24.624468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621566, 0.658434, -0.424406,
		-0.697504, -0.218574, 0.682432,
		0.356573, 0.720201, 0.595119,
		25.198851, 37.711742, 24.803003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.373579, 37.666397, 24.478558>,  <24.949249, 37.207600, 24.386421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.373579, 37.666397, 24.478558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699232, 37.878136, 24.574038>,  <24.894625, 38.005177, 24.631327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.699232, 37.878136, 24.574038>,  <24.373579, 37.666397, 24.478558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699232, 37.878136, 24.574038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311736, 0.745248, -0.589428,
		-0.489903, 0.405462, 0.771749,
		0.814135, 0.529344, 0.238702,
		24.943472, 38.036938, 24.645649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.101631, 38.303623, 24.583893>,  <24.373579, 37.666397, 24.478558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.101631, 38.303623, 24.583893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488089, 38.352749, 24.493130>,  <24.719963, 38.382225, 24.438671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.488089, 38.352749, 24.493130>,  <24.101631, 38.303623, 24.583893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.488089, 38.352749, 24.493130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226718, 0.823906, -0.519401,
		0.123163, 0.553260, 0.823853,
		0.966142, 0.122811, -0.226909,
		24.777931, 38.389591, 24.425056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.293734, 38.977734, 24.804693>,  <24.101631, 38.303623, 24.583893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.293734, 38.977734, 24.804693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.553612, 38.869450, 24.520548>,  <24.709538, 38.804482, 24.350061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.553612, 38.869450, 24.520548>,  <24.293734, 38.977734, 24.804693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.553612, 38.869450, 24.520548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156923, 0.866565, -0.473751,
		0.743823, 0.419266, 0.520522,
		0.649694, -0.270705, -0.710364,
		24.748520, 38.788239, 24.307438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.603209, 39.607994, 24.697699>,  <24.293734, 38.977734, 24.804693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.603209, 39.607994, 24.697699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687679, 39.383942, 24.377285>,  <24.738361, 39.249508, 24.185038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687679, 39.383942, 24.377285>,  <24.603209, 39.607994, 24.697699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687679, 39.383942, 24.377285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116821, 0.828104, -0.548266,
		0.970442, 0.022203, 0.240311,
		0.211176, -0.560134, -0.801034,
		24.751032, 39.215900, 24.136974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.320517, 39.852943, 24.318548>,  <24.603209, 39.607994, 24.697699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.320517, 39.852943, 24.318548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155958, 39.642132, 24.021093>,  <25.057224, 39.515644, 23.842621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.155958, 39.642132, 24.021093>,  <25.320517, 39.852943, 24.318548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.155958, 39.642132, 24.021093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160804, 0.761111, -0.628373,
		0.897161, -0.378088, -0.228368,
		-0.411393, -0.527029, -0.743637,
		25.032539, 39.484024, 23.798002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761364, 39.868919, 23.700470>,  <25.320517, 39.852943, 24.318548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761364, 39.868919, 23.700470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401060, 39.775036, 23.554295>,  <25.184877, 39.718704, 23.466589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.401060, 39.775036, 23.554295>,  <25.761364, 39.868919, 23.700470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.401060, 39.775036, 23.554295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107677, 0.694452, -0.711437,
		0.420760, -0.680182, -0.600261,
		-0.900759, -0.234709, -0.365437,
		25.130833, 39.704624, 23.444664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.833260, 39.880070, 22.992058>,  <25.761364, 39.868919, 23.700470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.833260, 39.880070, 22.992058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441114, 39.938618, 23.044918>,  <25.205828, 39.973747, 23.076635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441114, 39.938618, 23.044918>,  <25.833260, 39.880070, 22.992058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441114, 39.938618, 23.044918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014511, 0.721869, -0.691878,
		-0.196666, -0.676374, -0.709817,
		-0.980363, 0.146369, 0.132152,
		25.147005, 39.982529, 23.084564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.522501, 39.868927, 22.364109>,  <25.833260, 39.880070, 22.992058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.522501, 39.868927, 22.364109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240717, 40.048183, 22.584257>,  <25.071648, 40.155739, 22.716345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.240717, 40.048183, 22.584257>,  <25.522501, 39.868927, 22.364109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.240717, 40.048183, 22.584257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078652, 0.721377, -0.688062,
		-0.705374, -0.527999, -0.472933,
		-0.704458, 0.448144, 0.550369,
		25.029379, 40.182625, 22.749367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039646, 40.043591, 21.889618>,  <25.522501, 39.868927, 22.364109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039646, 40.043591, 21.889618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970425, 40.286499, 22.199787>,  <24.928892, 40.432243, 22.385889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970425, 40.286499, 22.199787>,  <25.039646, 40.043591, 21.889618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.970425, 40.286499, 22.199787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268250, 0.728475, -0.630370,
		-0.947678, -0.317095, 0.036834,
		-0.173054, 0.607268, 0.775421,
		24.918509, 40.468681, 22.432413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.611765, 40.561401, 21.577108>,  <25.039646, 40.043591, 21.889618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.611765, 40.561401, 21.577108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715445, 40.736340, 21.921560>,  <24.777653, 40.841301, 22.128231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.715445, 40.736340, 21.921560>,  <24.611765, 40.561401, 21.577108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.715445, 40.736340, 21.921560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134266, 0.899260, -0.416298,
		-0.956445, -0.007716, 0.291809,
		0.259200, 0.437347, 0.861129,
		24.793205, 40.867542, 22.179899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.189835, 41.110798, 21.649822>,  <24.611765, 40.561401, 21.577108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.189835, 41.110798, 21.649822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543310, 41.192066, 21.818493>,  <24.755396, 41.240829, 21.919695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543310, 41.192066, 21.818493>,  <24.189835, 41.110798, 21.649822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543310, 41.192066, 21.818493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014817, 0.912573, -0.408646,
		-0.467837, 0.354868, 0.809442,
		0.883691, 0.203173, 0.421677,
		24.808418, 41.253017, 21.944996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.182440, 41.725716, 22.061459>,  <24.189835, 41.110798, 21.649822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.182440, 41.725716, 22.061459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559523, 41.677685, 21.936953>,  <24.785772, 41.648865, 21.862249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.559523, 41.677685, 21.936953>,  <24.182440, 41.725716, 22.061459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.559523, 41.677685, 21.936953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002350, 0.930570, -0.366106,
		0.333613, 0.345862, 0.876973,
		0.942707, -0.120076, -0.311263,
		24.842335, 41.641663, 21.843575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.625175, 42.313259, 22.287952>,  <24.182440, 41.725716, 22.061459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.625175, 42.313259, 22.287952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709532, 42.146591, 21.934248>,  <24.760145, 42.046593, 21.722025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.709532, 42.146591, 21.934248>,  <24.625175, 42.313259, 22.287952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.709532, 42.146591, 21.934248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004139, 0.904215, -0.427056,
		0.977501, 0.093722, 0.188967,
		0.210892, -0.416666, -0.884259,
		24.772799, 42.021591, 21.668970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293015, 42.516853, 22.006647>,  <24.625175, 42.313259, 22.287952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293015, 42.516853, 22.006647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016294, 42.443195, 21.727364>,  <24.850262, 42.398998, 21.559793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.016294, 42.443195, 21.727364>,  <25.293015, 42.516853, 22.006647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016294, 42.443195, 21.727364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101434, 0.932564, -0.346460,
		0.714927, -0.310504, -0.626472,
		-0.691803, -0.184149, -0.698211,
		24.808754, 42.387951, 21.517900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523668, 42.711376, 21.338383>,  <25.293015, 42.516853, 22.006647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523668, 42.711376, 21.338383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.125214, 42.744125, 21.351109>,  <24.886141, 42.763775, 21.358744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.125214, 42.744125, 21.351109>,  <25.523668, 42.711376, 21.338383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.125214, 42.744125, 21.351109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070758, 0.962557, -0.261682,
		-0.052048, -0.258420, -0.964630,
		-0.996135, 0.081875, 0.031814,
		24.826374, 42.768688, 21.360653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200731, 43.130116, 20.676506>,  <25.523668, 42.711376, 21.338383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200731, 43.130116, 20.676506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958580, 43.175034, 20.991697>,  <24.813290, 43.201984, 21.180811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.958580, 43.175034, 20.991697>,  <25.200731, 43.130116, 20.676506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.958580, 43.175034, 20.991697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016241, 0.988048, -0.153289,
		-0.795772, -0.105596, -0.596319,
		-0.605378, 0.112298, 0.787976,
		24.776966, 43.208721, 21.228090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.768742, 43.381989, 20.360077>,  <25.200731, 43.130116, 20.676506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.768742, 43.381989, 20.360077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045610, 43.110180, 20.457355>,  <26.211733, 42.947094, 20.515722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.045610, 43.110180, 20.457355>,  <25.768742, 43.381989, 20.360077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045610, 43.110180, 20.457355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696386, 0.717321, 0.022275,
		-0.189585, 0.153939, 0.969722,
		0.692173, -0.679524, 0.243194,
		26.253262, 42.906322, 20.530313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.172411, 43.629665, 21.016499>,  <25.768742, 43.381989, 20.360077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.172411, 43.629665, 21.016499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358250, 43.372307, 20.773127>,  <26.469753, 43.217892, 20.627104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.358250, 43.372307, 20.773127>,  <26.172411, 43.629665, 21.016499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.358250, 43.372307, 20.773127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851573, 0.513049, 0.107720,
		0.242848, -0.568170, 0.786262,
		0.464595, -0.643400, -0.608431,
		26.497627, 43.179287, 20.590597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.822021, 43.229183, 21.307236>,  <26.172411, 43.629665, 21.016499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.822021, 43.229183, 21.307236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856304, 43.264565, 20.910282>,  <26.876875, 43.285793, 20.672110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.856304, 43.264565, 20.910282>,  <26.822021, 43.229183, 21.307236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.856304, 43.264565, 20.910282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970872, 0.216270, 0.103126,
		0.223744, -0.972319, -0.067341,
		0.085708, 0.088453, -0.992386,
		26.882017, 43.291100, 20.612566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658653, 43.704136, 21.787683>,  <26.822021, 43.229183, 21.307236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658653, 43.704136, 21.787683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749596, 43.358372, 21.967062>,  <26.804161, 43.150913, 22.074690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749596, 43.358372, 21.967062>,  <26.658653, 43.704136, 21.787683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749596, 43.358372, 21.967062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323798, -0.501409, -0.802337,
		0.918403, 0.037209, -0.393892,
		0.227355, -0.864410, 0.448447,
		26.817802, 43.099049, 22.101597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.897684, 43.488930, 22.586653>,  <26.658653, 43.704136, 21.787683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.897684, 43.488930, 22.586653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640026, 43.216141, 22.725210>,  <26.485432, 43.052467, 22.808346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.640026, 43.216141, 22.725210>,  <26.897684, 43.488930, 22.586653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640026, 43.216141, 22.725210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533371, -0.075867, 0.842472,
		-0.548265, 0.727430, 0.412615,
		-0.644144, -0.681975, 0.346395,
		26.446783, 43.011547, 22.829128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816143, 43.677906, 23.319338>,  <26.897684, 43.488930, 22.586653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816143, 43.677906, 23.319338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686388, 43.300392, 23.293919>,  <26.608536, 43.073883, 23.278667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686388, 43.300392, 23.293919>,  <26.816143, 43.677906, 23.319338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686388, 43.300392, 23.293919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468680, -0.218715, 0.855864,
		-0.821652, 0.247847, 0.513283,
		-0.324386, -0.943788, -0.063547,
		26.589071, 43.017258, 23.274855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576345, 43.499622, 23.935272>,  <26.816143, 43.677906, 23.319338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576345, 43.499622, 23.935272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672943, 43.142651, 23.782822>,  <26.730902, 42.928467, 23.691351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.672943, 43.142651, 23.782822>,  <26.576345, 43.499622, 23.935272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.672943, 43.142651, 23.782822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390761, -0.270068, 0.879983,
		-0.888249, -0.361440, 0.283505,
		0.241495, -0.892426, -0.381124,
		26.745392, 42.874924, 23.668484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557894, 42.964867, 24.461248>,  <26.576345, 43.499622, 23.935272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557894, 42.964867, 24.461248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774393, 42.774532, 24.183937>,  <26.904293, 42.660332, 24.017550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.774393, 42.774532, 24.183937>,  <26.557894, 42.964867, 24.461248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.774393, 42.774532, 24.183937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418315, -0.562847, 0.712892,
		-0.729427, -0.675859, -0.105592,
		0.541247, -0.475833, -0.693278,
		26.936768, 42.631783, 23.975954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543365, 42.235191, 24.665987>,  <26.557894, 42.964867, 24.461248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543365, 42.235191, 24.665987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866205, 42.315163, 24.443773>,  <27.059910, 42.363148, 24.310446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.866205, 42.315163, 24.443773>,  <26.543365, 42.235191, 24.665987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.866205, 42.315163, 24.443773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577073, -0.466031, 0.670673,
		-0.124808, -0.861884, -0.491508,
		0.807099, 0.199930, -0.555534,
		27.108335, 42.375141, 24.277113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862238, 41.712879, 24.693975>,  <26.543365, 42.235191, 24.665987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862238, 41.712879, 24.693975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142612, 41.966454, 24.563250>,  <27.310837, 42.118599, 24.484814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142612, 41.966454, 24.563250>,  <26.862238, 41.712879, 24.693975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142612, 41.966454, 24.563250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665569, -0.416708, 0.619170,
		0.256331, -0.651517, -0.714017,
		0.700936, 0.633940, -0.326815,
		27.352894, 42.156635, 24.465204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.506510, 41.319004, 24.648670>,  <26.862238, 41.712879, 24.693975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.506510, 41.319004, 24.648670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624714, 41.701141, 24.648783>,  <27.695637, 41.930424, 24.648849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624714, 41.701141, 24.648783>,  <27.506510, 41.319004, 24.648670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624714, 41.701141, 24.648783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736770, -0.228089, 0.636511,
		0.608148, -0.187889, -0.771268,
		0.295511, 0.955339, 0.000281,
		27.713367, 41.987743, 24.648867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217484, 41.297199, 24.558773>,  <27.506510, 41.319004, 24.648670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217484, 41.297199, 24.558773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129286, 41.648151, 24.729227>,  <28.076368, 41.858723, 24.831499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129286, 41.648151, 24.729227>,  <28.217484, 41.297199, 24.558773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129286, 41.648151, 24.729227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760031, -0.119282, 0.638846,
		0.611339, 0.464738, -0.640533,
		-0.220492, 0.877377, 0.426137,
		28.063139, 41.911366, 24.857069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.862701, 41.525829, 24.656227>,  <28.217484, 41.297199, 24.558773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.862701, 41.525829, 24.656227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630466, 41.762257, 24.880211>,  <28.491125, 41.904114, 25.014601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.630466, 41.762257, 24.880211>,  <28.862701, 41.525829, 24.656227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630466, 41.762257, 24.880211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672651, -0.039302, 0.738915,
		0.458758, 0.805663, -0.374765,
		-0.580587, 0.591069, 0.559960,
		28.456291, 41.939579, 25.048199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336729, 42.040642, 24.985489>,  <28.862701, 41.525829, 24.656227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336729, 42.040642, 24.985489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009687, 41.991268, 25.210447>,  <28.813463, 41.961643, 25.345423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009687, 41.991268, 25.210447>,  <29.336729, 42.040642, 24.985489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009687, 41.991268, 25.210447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572719, -0.073728, 0.816429,
		-0.059314, 0.989610, 0.130975,
		-0.817603, -0.123438, 0.562395,
		28.764406, 41.954235, 25.379166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399530, 42.485596, 25.638100>,  <29.336729, 42.040642, 24.985489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399530, 42.485596, 25.638100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135550, 42.195595, 25.716919>,  <28.977161, 42.021595, 25.764210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135550, 42.195595, 25.716919>,  <29.399530, 42.485596, 25.638100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135550, 42.195595, 25.716919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581228, -0.326495, 0.745369,
		-0.476062, 0.606439, 0.636865,
		-0.659954, -0.725006, 0.197048,
		28.937563, 41.978092, 25.776033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412523, 42.419476, 26.424850>,  <29.399530, 42.485596, 25.638100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412523, 42.419476, 26.424850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219013, 42.085163, 26.320984>,  <29.102907, 41.884575, 26.258665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.219013, 42.085163, 26.320984>,  <29.412523, 42.419476, 26.424850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.219013, 42.085163, 26.320984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395985, -0.473619, 0.786690,
		-0.780486, 0.277757, 0.560083,
		-0.483774, -0.835785, -0.259665,
		29.073881, 41.834427, 26.243084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126795, 42.133236, 27.005201>,  <29.412523, 42.419476, 26.424850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126795, 42.133236, 27.005201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140799, 41.803635, 26.778999>,  <29.149200, 41.605873, 26.643278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140799, 41.803635, 26.778999>,  <29.126795, 42.133236, 27.005201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140799, 41.803635, 26.778999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254886, -0.539775, 0.802294,
		-0.966337, -0.172228, 0.191129,
		0.035011, -0.824003, -0.565503,
		29.151302, 41.556435, 26.609348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.699104, 41.474499, 27.381020>,  <29.126795, 42.133236, 27.005201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.699104, 41.474499, 27.381020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001080, 41.372326, 27.139418>,  <29.182264, 41.311020, 26.994457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.001080, 41.372326, 27.139418>,  <28.699104, 41.474499, 27.381020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001080, 41.372326, 27.139418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492120, -0.388106, 0.779225,
		-0.433464, -0.885508, -0.167287,
		0.754935, -0.255440, -0.604006,
		29.227560, 41.295696, 26.958216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750486, 40.735977, 27.530405>,  <28.699104, 41.474499, 27.381020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750486, 40.735977, 27.530405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090986, 40.833038, 27.344288>,  <29.295286, 40.891277, 27.232618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090986, 40.833038, 27.344288>,  <28.750486, 40.735977, 27.530405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090986, 40.833038, 27.344288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511014, -0.584958, 0.629832,
		-0.119343, -0.773913, -0.621945,
		0.851247, 0.242656, -0.465291,
		29.346361, 40.905834, 27.204700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097942, 40.169159, 27.631477>,  <28.750486, 40.735977, 27.530405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097942, 40.169159, 27.631477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370338, 40.441303, 27.523129>,  <29.533775, 40.604588, 27.458120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370338, 40.441303, 27.523129>,  <29.097942, 40.169159, 27.631477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370338, 40.441303, 27.523129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660023, -0.410017, 0.629489,
		0.317215, -0.607455, -0.728267,
		0.680988, 0.680356, -0.270871,
		29.574635, 40.645409, 27.441868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683737, 39.701599, 27.436417>,  <29.097942, 40.169159, 27.631477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683737, 39.701599, 27.436417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804800, 40.068378, 27.540421>,  <29.877438, 40.288445, 27.602823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804800, 40.068378, 27.540421>,  <29.683737, 39.701599, 27.436417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804800, 40.068378, 27.540421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650470, -0.398114, 0.646834,
		0.696626, -0.026641, -0.716939,
		0.302656, 0.916949, 0.260008,
		29.895597, 40.343464, 27.618423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336983, 39.556526, 27.582603>,  <29.683737, 39.701599, 27.436417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336983, 39.556526, 27.582603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280249, 39.911892, 27.757235>,  <30.246208, 40.125111, 27.862013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280249, 39.911892, 27.757235>,  <30.336983, 39.556526, 27.582603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280249, 39.911892, 27.757235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671232, -0.237833, 0.702056,
		0.727550, 0.392621, -0.562600,
		-0.141837, 0.888417, 0.436576,
		30.237698, 40.178417, 27.888206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031277, 39.901096, 27.663916>,  <30.336983, 39.556526, 27.582603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031277, 39.901096, 27.663916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781080, 40.060219, 27.932396>,  <30.630962, 40.155693, 28.093485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.781080, 40.060219, 27.932396>,  <31.031277, 39.901096, 27.663916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781080, 40.060219, 27.932396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628201, -0.253428, 0.735621,
		0.462737, 0.881772, -0.091387,
		-0.625490, 0.397808, 0.671201,
		30.593433, 40.179562, 28.133757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528385, 40.056282, 28.178919>,  <31.031277, 39.901096, 27.663916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528385, 40.056282, 28.178919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178352, 40.112293, 28.364227>,  <30.968332, 40.145901, 28.475412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178352, 40.112293, 28.364227>,  <31.528385, 40.056282, 28.178919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178352, 40.112293, 28.364227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433860, -0.197198, 0.879135,
		0.214463, 0.970311, 0.111811,
		-0.875084, 0.140031, 0.463271,
		30.915827, 40.154305, 28.503208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586531, 40.661110, 28.616167>,  <31.528385, 40.056282, 28.178919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586531, 40.661110, 28.616167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304840, 40.417076, 28.761419>,  <31.135826, 40.270657, 28.848572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.304840, 40.417076, 28.761419>,  <31.586531, 40.661110, 28.616167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.304840, 40.417076, 28.761419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515840, -0.088237, 0.852129,
		-0.487828, 0.787409, 0.376844,
		-0.704225, -0.610083, 0.363133,
		31.093573, 40.234051, 28.870359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446901, 40.946411, 29.332687>,  <31.586531, 40.661110, 28.616167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446901, 40.946411, 29.332687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301283, 40.574745, 29.306997>,  <31.213911, 40.351746, 29.291584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301283, 40.574745, 29.306997>,  <31.446901, 40.946411, 29.332687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301283, 40.574745, 29.306997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424189, -0.226797, 0.876713,
		-0.829177, 0.291920, 0.476706,
		-0.364046, -0.929164, -0.064226,
		31.192070, 40.295998, 29.287729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009050, 40.791214, 29.944014>,  <31.446901, 40.946411, 29.332687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009050, 40.791214, 29.944014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059566, 40.414616, 29.819023>,  <31.089876, 40.188656, 29.744030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059566, 40.414616, 29.819023>,  <31.009050, 40.791214, 29.944014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059566, 40.414616, 29.819023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171764, -0.289484, 0.941645,
		-0.977010, -0.172590, 0.125157,
		0.126288, -0.941494, -0.312474,
		31.097452, 40.132168, 29.725281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.605232, 40.302433, 30.359015>,  <31.009050, 40.791214, 29.944014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.605232, 40.302433, 30.359015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923286, 40.108246, 30.213648>,  <31.114119, 39.991734, 30.126427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923286, 40.108246, 30.213648>,  <30.605232, 40.302433, 30.359015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923286, 40.108246, 30.213648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261492, -0.266223, 0.927765,
		-0.547155, -0.832731, -0.084736,
		0.795137, -0.485473, -0.363418,
		31.161827, 39.962605, 30.104622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484299, 39.612091, 30.527117>,  <30.605232, 40.302433, 30.359015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484299, 39.612091, 30.527117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876984, 39.642006, 30.457096>,  <31.112595, 39.659954, 30.415085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876984, 39.642006, 30.457096>,  <30.484299, 39.612091, 30.527117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876984, 39.642006, 30.457096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188499, -0.510153, 0.839173,
		-0.026538, -0.856825, -0.514924,
		0.981715, 0.074792, -0.175049,
		31.171497, 39.664444, 30.404581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803125, 39.072330, 30.854137>,  <30.484299, 39.612091, 30.527117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803125, 39.072330, 30.854137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153591, 39.253853, 30.789148>,  <31.363871, 39.362766, 30.750154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153591, 39.253853, 30.789148>,  <30.803125, 39.072330, 30.854137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153591, 39.253853, 30.789148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439820, -0.614777, 0.654681,
		0.197211, -0.645068, -0.738238,
		0.876166, 0.453802, -0.162473,
		31.416441, 39.389992, 30.740406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251699, 38.564274, 30.765699>,  <30.803125, 39.072330, 30.854137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251699, 38.564274, 30.765699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487452, 38.879471, 30.836916>,  <31.628902, 39.068588, 30.879646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.487452, 38.879471, 30.836916>,  <31.251699, 38.564274, 30.765699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487452, 38.879471, 30.836916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502225, -0.530023, 0.683261,
		0.632771, -0.313284, -0.708135,
		0.589382, 0.787991, 0.178044,
		31.664267, 39.115868, 30.890329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000816, 38.354538, 30.781580>,  <31.251699, 38.564274, 30.765699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000816, 38.354538, 30.781580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964869, 38.686634, 31.001623>,  <31.943300, 38.885891, 31.133650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964869, 38.686634, 31.001623>,  <32.000816, 38.354538, 30.781580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964869, 38.686634, 31.001623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482497, -0.446905, 0.753308,
		0.871275, 0.333123, -0.360428,
		-0.089867, 0.830244, 0.550109,
		31.937908, 38.935707, 31.166656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613533, 38.387470, 31.196125>,  <32.000816, 38.354538, 30.781580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613533, 38.387470, 31.196125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421967, 38.656551, 31.421730>,  <32.307026, 38.818001, 31.557093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.421967, 38.656551, 31.421730>,  <32.613533, 38.387470, 31.196125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.421967, 38.656551, 31.421730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373275, -0.425464, 0.824407,
		0.794546, 0.605356, -0.047339,
		-0.478918, 0.672699, 0.564015,
		32.278290, 38.858360, 31.590935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080879, 38.656811, 31.693771>,  <32.613533, 38.387470, 31.196125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080879, 38.656811, 31.693771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716061, 38.725922, 31.842533>,  <32.497169, 38.767387, 31.931791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716061, 38.725922, 31.842533>,  <33.080879, 38.656811, 31.693771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716061, 38.725922, 31.842533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221903, -0.554724, 0.801898,
		0.344854, 0.813898, 0.467596,
		-0.912050, 0.172777, 0.371905,
		32.442444, 38.777756, 31.954105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239548, 38.768787, 32.366291>,  <33.080879, 38.656811, 31.693771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239548, 38.768787, 32.366291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843475, 38.715527, 32.383316>,  <32.605831, 38.683571, 32.393532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843475, 38.715527, 32.383316>,  <33.239548, 38.768787, 32.366291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843475, 38.715527, 32.383316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110820, -0.562073, 0.819630,
		-0.085214, 0.816299, 0.571310,
		-0.990181, -0.133157, 0.042566,
		32.546421, 38.675579, 32.396088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.042835, 38.955265, 33.050468>,  <33.239548, 38.768787, 32.366291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.042835, 38.955265, 33.050468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766689, 38.703743, 32.907364>,  <32.601002, 38.552830, 32.821503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766689, 38.703743, 32.907364>,  <33.042835, 38.955265, 33.050468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766689, 38.703743, 32.907364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114299, -0.583108, 0.804314,
		-0.714372, 0.514380, 0.474431,
		-0.690368, -0.628807, -0.357763,
		32.559578, 38.515102, 32.800034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556339, 38.951374, 33.588829>,  <33.042835, 38.955265, 33.050468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556339, 38.951374, 33.588829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509178, 38.621387, 33.367729>,  <32.480881, 38.423397, 33.235069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509178, 38.621387, 33.367729>,  <32.556339, 38.951374, 33.588829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509178, 38.621387, 33.367729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122683, -0.540269, 0.832501,
		-0.985417, 0.165969, -0.037508,
		-0.117905, -0.824963, -0.552752,
		32.473808, 38.373898, 33.201904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994745, 38.670010, 33.817230>,  <32.556339, 38.951374, 33.588829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994745, 38.670010, 33.817230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154881, 38.357124, 33.626286>,  <32.250961, 38.169392, 33.511719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154881, 38.357124, 33.626286>,  <31.994745, 38.670010, 33.817230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154881, 38.357124, 33.626286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433316, -0.620597, 0.653527,
		-0.807445, -0.054784, -0.587393,
		0.400337, -0.782214, -0.477359,
		32.274982, 38.122459, 33.483078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568918, 38.159504, 33.750828>,  <31.994745, 38.670010, 33.817230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568918, 38.159504, 33.750828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912596, 37.958302, 33.713360>,  <32.118801, 37.837582, 33.690880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.912596, 37.958302, 33.713360>,  <31.568918, 38.159504, 33.750828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912596, 37.958302, 33.713360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260597, -0.587766, 0.765911,
		-0.440314, -0.633655, -0.636086,
		0.859193, -0.503004, -0.093673,
		32.170353, 37.807400, 33.685257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389345, 37.442928, 33.834419>,  <31.568918, 38.159504, 33.750828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389345, 37.442928, 33.834419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787292, 37.427757, 33.871937>,  <32.026062, 37.418655, 33.894447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787292, 37.427757, 33.871937>,  <31.389345, 37.442928, 33.834419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787292, 37.427757, 33.871937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091742, -0.729096, 0.678235,
		0.042659, -0.683360, -0.728834,
		0.994869, -0.037932, 0.093795,
		32.085754, 37.416378, 33.900074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513681, 36.806679, 33.874649>,  <31.389345, 37.442928, 33.834419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513681, 36.806679, 33.874649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862465, 36.946308, 34.011963>,  <32.071735, 37.030087, 34.094349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862465, 36.946308, 34.011963>,  <31.513681, 36.806679, 33.874649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862465, 36.946308, 34.011963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181071, -0.881387, 0.436314,
		0.454868, -0.318288, -0.831738,
		0.871956, 0.349069, 0.343282,
		32.124050, 37.051029, 34.114948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975660, 36.255016, 33.753876>,  <31.513681, 36.806679, 33.874649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975660, 36.255016, 33.753876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123928, 36.472290, 34.055222>,  <32.212891, 36.602654, 34.236031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.123928, 36.472290, 34.055222>,  <31.975660, 36.255016, 33.753876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.123928, 36.472290, 34.055222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100885, -0.829895, 0.548723,
		0.923269, -0.127393, -0.362417,
		0.370671, 0.543181, 0.753364,
		32.235130, 36.635246, 34.281231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591564, 35.827473, 33.939716>,  <31.975660, 36.255016, 33.753876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591564, 35.827473, 33.939716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462944, 36.071579, 34.229317>,  <32.385773, 36.218040, 34.403076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462944, 36.071579, 34.229317>,  <32.591564, 35.827473, 33.939716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462944, 36.071579, 34.229317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057943, -0.775860, 0.628238,
		0.945118, 0.160059, 0.284839,
		-0.321551, 0.610263, 0.724005,
		32.366478, 36.254658, 34.446518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644001, 35.491570, 33.299503>,  <32.591564, 35.827473, 33.939716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644001, 35.491570, 33.299503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929466, 35.345802, 33.060211>,  <33.100746, 35.258343, 32.916634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929466, 35.345802, 33.060211>,  <32.644001, 35.491570, 33.299503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929466, 35.345802, 33.060211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086592, 0.801578, -0.591586,
		0.695117, 0.473995, 0.540501,
		0.713663, -0.364419, -0.598235,
		33.143566, 35.236477, 32.880741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012932, 36.057041, 32.890545>,  <32.644001, 35.491570, 33.299503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012932, 36.057041, 32.890545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110321, 35.738789, 32.668663>,  <33.168755, 35.547836, 32.535534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.110321, 35.738789, 32.668663>,  <33.012932, 36.057041, 32.890545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.110321, 35.738789, 32.668663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303849, 0.480555, -0.822643,
		0.921084, 0.368840, -0.124747,
		0.243476, -0.795628, -0.554703,
		33.183365, 35.500099, 32.502251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479679, 36.315136, 32.426941>,  <33.012932, 36.057041, 32.890545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479679, 36.315136, 32.426941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353001, 35.972382, 32.264244>,  <33.276993, 35.766727, 32.166626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.353001, 35.972382, 32.264244>,  <33.479679, 36.315136, 32.426941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353001, 35.972382, 32.264244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024478, 0.421291, -0.906595,
		0.948210, -0.297075, -0.112448,
		-0.316700, -0.856890, -0.406743,
		33.257992, 35.715313, 32.142220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978512, 36.071808, 31.886105>,  <33.479679, 36.315136, 32.426941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978512, 36.071808, 31.886105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627762, 35.901073, 31.797649>,  <33.417313, 35.798634, 31.744577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627762, 35.901073, 31.797649>,  <33.978512, 36.071808, 31.886105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627762, 35.901073, 31.797649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064878, 0.350726, -0.934228,
		0.476318, -0.833549, -0.279851,
		-0.876876, -0.426834, -0.221137,
		33.364700, 35.773022, 31.731308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064976, 35.805519, 31.185207>,  <33.978512, 36.071808, 31.886105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064976, 35.805519, 31.185207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669228, 35.795361, 31.242483>,  <33.431778, 35.789265, 31.276848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669228, 35.795361, 31.242483>,  <34.064976, 35.805519, 31.185207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669228, 35.795361, 31.242483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135423, 0.519705, -0.843545,
		-0.052994, -0.853969, -0.517619,
		-0.989370, -0.025395, 0.143188,
		33.372417, 35.787743, 31.285439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748940, 35.597145, 30.569754>,  <34.064976, 35.805519, 31.185207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748940, 35.597145, 30.569754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451256, 35.782265, 30.762407>,  <33.272644, 35.893337, 30.877998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451256, 35.782265, 30.762407>,  <33.748940, 35.597145, 30.569754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451256, 35.782265, 30.762407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126674, 0.610189, -0.782063,
		-0.655826, -0.643028, -0.395483,
		-0.744208, 0.462800, 0.481633,
		33.227993, 35.921104, 30.906897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.333282, 35.565540, 30.042349>,  <33.748940, 35.597145, 30.569754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.333282, 35.565540, 30.042349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205776, 35.841873, 30.301929>,  <33.129272, 36.007671, 30.457678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205776, 35.841873, 30.301929>,  <33.333282, 35.565540, 30.042349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205776, 35.841873, 30.301929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171443, 0.631352, -0.756308,
		-0.932200, -0.352343, -0.082813,
		-0.318764, 0.690833, 0.648953,
		33.110146, 36.049122, 30.496614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706821, 35.986122, 29.734976>,  <33.333282, 35.565540, 30.042349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706821, 35.986122, 29.734976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880955, 36.227364, 30.002335>,  <32.985435, 36.372108, 30.162750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.880955, 36.227364, 30.002335>,  <32.706821, 35.986122, 29.734976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880955, 36.227364, 30.002335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057391, 0.759519, -0.647949,
		-0.898439, 0.243712, 0.365255,
		0.435331, 0.603105, 0.668395,
		33.011555, 36.408295, 30.202852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258347, 36.554649, 29.697132>,  <32.706821, 35.986122, 29.734976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258347, 36.554649, 29.697132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607140, 36.659569, 29.862463>,  <32.816418, 36.722523, 29.961660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607140, 36.659569, 29.862463>,  <32.258347, 36.554649, 29.697132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607140, 36.659569, 29.862463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028629, 0.815559, -0.577965,
		-0.488693, 0.515811, 0.703646,
		0.871986, 0.262303, 0.413325,
		32.868736, 36.738258, 29.986460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226765, 37.237373, 29.936121>,  <32.258347, 36.554649, 29.697132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226765, 37.237373, 29.936121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617569, 37.168400, 29.885988>,  <32.852051, 37.127018, 29.855907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617569, 37.168400, 29.885988>,  <32.226765, 37.237373, 29.936121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617569, 37.168400, 29.885988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055584, 0.773683, -0.631131,
		0.205795, 0.609658, 0.765484,
		0.977015, -0.172432, -0.125333,
		32.910675, 37.116669, 29.848389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526314, 37.972950, 29.947195>,  <32.226765, 37.237373, 29.936121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526314, 37.972950, 29.947195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801670, 37.724174, 29.797901>,  <32.966885, 37.574909, 29.708324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.801670, 37.724174, 29.797901>,  <32.526314, 37.972950, 29.947195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801670, 37.724174, 29.797901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205507, 0.660716, -0.721956,
		0.695617, 0.420287, 0.582646,
		0.688392, -0.621943, -0.373233,
		33.008186, 37.537590, 29.685930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133411, 38.362179, 29.913729>,  <32.526314, 37.972950, 29.947195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133411, 38.362179, 29.913729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157337, 38.074459, 29.636879>,  <33.171692, 37.901829, 29.470770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157337, 38.074459, 29.636879>,  <33.133411, 38.362179, 29.913729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157337, 38.074459, 29.636879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260603, 0.680571, -0.684769,
		0.963591, -0.139410, 0.228159,
		0.059815, -0.719296, -0.692123,
		33.175282, 37.858669, 29.429241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722431, 38.524090, 29.489986>,  <33.133411, 38.362179, 29.913729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722431, 38.524090, 29.489986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481106, 38.288025, 29.275427>,  <33.336311, 38.146385, 29.146690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481106, 38.288025, 29.275427>,  <33.722431, 38.524090, 29.489986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481106, 38.288025, 29.275427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191291, 0.545876, -0.815737,
		0.774226, -0.594750, -0.216439,
		-0.603309, -0.590163, -0.536402,
		33.300114, 38.110977, 29.114506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943615, 38.551048, 28.781460>,  <33.722431, 38.524090, 29.489986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943615, 38.551048, 28.781460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605545, 38.348251, 28.713772>,  <33.402702, 38.226574, 28.673159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605545, 38.348251, 28.713772>,  <33.943615, 38.551048, 28.781460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605545, 38.348251, 28.713772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247498, 0.651850, -0.716823,
		0.473726, -0.563963, -0.676409,
		-0.845179, -0.506988, -0.169219,
		33.351990, 38.196156, 28.663006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940220, 38.504738, 28.131933>,  <33.943615, 38.551048, 28.781460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940220, 38.504738, 28.131933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558964, 38.420078, 28.218401>,  <33.330212, 38.369282, 28.270281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558964, 38.420078, 28.218401>,  <33.940220, 38.504738, 28.131933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558964, 38.420078, 28.218401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301252, 0.598424, -0.742386,
		0.027763, -0.772719, -0.634141,
		-0.953140, -0.211647, 0.216169,
		33.273022, 38.356583, 28.283251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747814, 38.257164, 27.540323>,  <33.940220, 38.504738, 28.131933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747814, 38.257164, 27.540323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420326, 38.363773, 27.743761>,  <33.223835, 38.427738, 27.865824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420326, 38.363773, 27.743761>,  <33.747814, 38.257164, 27.540323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420326, 38.363773, 27.743761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268481, 0.605269, -0.749378,
		-0.507564, -0.750076, -0.423987,
		-0.818716, 0.266525, 0.508595,
		33.174713, 38.443729, 27.896339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163017, 37.977818, 27.198872>,  <33.747814, 38.257164, 27.540323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163017, 37.977818, 27.198872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056000, 38.295582, 27.416985>,  <32.991791, 38.486240, 27.547852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056000, 38.295582, 27.416985>,  <33.163017, 37.977818, 27.198872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056000, 38.295582, 27.416985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413902, 0.416286, -0.809562,
		-0.870119, -0.442284, 0.217435,
		-0.267541, 0.794412, 0.545281,
		32.975739, 38.533905, 27.580568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533325, 38.088856, 26.974020>,  <33.163017, 37.977818, 27.198872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533325, 38.088856, 26.974020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620461, 38.435730, 27.153143>,  <32.672741, 38.643856, 27.260616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620461, 38.435730, 27.153143>,  <32.533325, 38.088856, 26.974020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620461, 38.435730, 27.153143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423988, 0.497356, -0.756882,
		-0.879078, -0.024984, 0.476022,
		0.217843, 0.867187, 0.447808,
		32.685814, 38.695885, 27.287485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898125, 38.372765, 27.006809>,  <32.533325, 38.088856, 26.974020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898125, 38.372765, 27.006809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152748, 38.673672, 27.074799>,  <32.305523, 38.854218, 27.115593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152748, 38.673672, 27.074799>,  <31.898125, 38.372765, 27.006809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152748, 38.673672, 27.074799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562681, 0.603728, -0.564715,
		-0.527434, 0.263832, 0.807593,
		0.636556, 0.752267, 0.169973,
		32.343716, 38.899353, 27.125790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479942, 38.968990, 27.090796>,  <31.898125, 38.372765, 27.006809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479942, 38.968990, 27.090796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834480, 39.121727, 26.986040>,  <32.047203, 39.213367, 26.923187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834480, 39.121727, 26.986040>,  <31.479942, 38.968990, 27.090796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834480, 39.121727, 26.986040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439112, 0.513800, -0.737014,
		-0.146865, 0.768249, 0.623077,
		0.886347, 0.381842, -0.261889,
		32.100384, 39.236279, 26.907475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465158, 39.650414, 27.142576>,  <31.479942, 38.968990, 27.090796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465158, 39.650414, 27.142576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758781, 39.598221, 26.876003>,  <31.934956, 39.566906, 26.716059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758781, 39.598221, 26.876003>,  <31.465158, 39.650414, 27.142576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758781, 39.598221, 26.876003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574345, 0.404330, -0.711790,
		0.362333, 0.905258, 0.221862,
		0.734059, -0.130480, -0.666433,
		31.978998, 39.559078, 26.676073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608377, 40.287098, 26.880995>,  <31.465158, 39.650414, 27.142576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608377, 40.287098, 26.880995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714539, 40.006054, 26.616905>,  <31.778236, 39.837429, 26.458450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.714539, 40.006054, 26.616905>,  <31.608377, 40.287098, 26.880995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714539, 40.006054, 26.616905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620109, 0.399954, -0.674908,
		0.738258, 0.588536, -0.329545,
		0.265405, -0.702610, -0.660226,
		31.794161, 39.795269, 26.418837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699352, 40.638954, 26.319901>,  <31.608377, 40.287098, 26.880995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699352, 40.638954, 26.319901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673170, 40.274532, 26.157074>,  <31.657461, 40.055882, 26.059378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673170, 40.274532, 26.157074>,  <31.699352, 40.638954, 26.319901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673170, 40.274532, 26.157074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633936, 0.353007, -0.688121,
		0.770610, 0.213011, -0.600655,
		-0.065458, -0.911050, -0.407066,
		31.653532, 40.001217, 26.034954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755587, 40.720757, 25.620348>,  <31.699352, 40.638954, 26.319901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755587, 40.720757, 25.620348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563213, 40.370388, 25.635651>,  <31.447790, 40.160168, 25.644833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563213, 40.370388, 25.635651>,  <31.755587, 40.720757, 25.620348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563213, 40.370388, 25.635651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562181, 0.274596, -0.780096,
		0.672799, -0.396680, -0.624489,
		-0.480931, -0.875923, 0.038259,
		31.418934, 40.107613, 25.647129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607204, 40.598091, 24.944996>,  <31.755587, 40.720757, 25.620348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607204, 40.598091, 24.944996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372290, 40.331100, 25.128113>,  <31.231340, 40.170906, 25.237982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.372290, 40.331100, 25.128113>,  <31.607204, 40.598091, 24.944996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.372290, 40.331100, 25.128113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643354, 0.041777, -0.764428,
		0.491112, -0.743459, -0.453958,
		-0.587286, -0.667475, 0.457790,
		31.196104, 40.130859, 25.265450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467695, 40.012459, 24.552908>,  <31.607204, 40.598091, 24.944996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467695, 40.012459, 24.552908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139744, 40.028030, 24.781393>,  <30.942972, 40.037373, 24.918484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139744, 40.028030, 24.781393>,  <31.467695, 40.012459, 24.552908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139744, 40.028030, 24.781393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572123, -0.093622, -0.814807,
		0.021759, -0.994847, 0.099030,
		-0.819879, 0.038928, 0.571212,
		30.893780, 40.039711, 24.952757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039825, 39.432930, 24.325504>,  <31.467695, 40.012459, 24.552908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039825, 39.432930, 24.325504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789459, 39.682446, 24.512743>,  <30.639240, 39.832157, 24.625088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.789459, 39.682446, 24.512743>,  <31.039825, 39.432930, 24.325504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.789459, 39.682446, 24.512743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629642, -0.050010, -0.775275,
		-0.460200, -0.779989, 0.424067,
		-0.625914, 0.623791, 0.468099,
		30.601685, 39.869583, 24.653173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416193, 39.120220, 24.248674>,  <31.039825, 39.432930, 24.325504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416193, 39.120220, 24.248674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327847, 39.505283, 24.311296>,  <30.274837, 39.736320, 24.348869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327847, 39.505283, 24.311296>,  <30.416193, 39.120220, 24.248674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327847, 39.505283, 24.311296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770889, -0.073982, -0.632659,
		-0.597451, -0.260420, 0.758441,
		-0.220868, 0.962657, 0.156555,
		30.261585, 39.794079, 24.358263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721994, 39.146397, 24.220819>,  <30.416193, 39.120220, 24.248674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721994, 39.146397, 24.220819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800169, 39.536770, 24.182121>,  <29.847073, 39.770992, 24.158903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800169, 39.536770, 24.182121>,  <29.721994, 39.146397, 24.220819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800169, 39.536770, 24.182121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802826, 0.102547, -0.587328,
		-0.563272, 0.192454, 0.803546,
		0.195435, 0.975933, -0.096745,
		29.858799, 39.829552, 24.153097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.093267, 39.650761, 24.352688>,  <29.721994, 39.146397, 24.220819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.093267, 39.650761, 24.352688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365726, 39.853622, 24.141470>,  <29.529202, 39.975342, 24.014740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365726, 39.853622, 24.141470>,  <29.093267, 39.650761, 24.352688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365726, 39.853622, 24.141470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727315, 0.385997, -0.567468,
		-0.083972, 0.770583, 0.631784,
		0.681148, 0.507157, -0.528044,
		29.570070, 40.005768, 23.983057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742290, 40.308525, 24.291960>,  <29.093267, 39.650761, 24.352688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742290, 40.308525, 24.291960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018047, 40.308163, 24.002205>,  <29.183502, 40.307945, 23.828352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.018047, 40.308163, 24.002205>,  <28.742290, 40.308525, 24.291960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018047, 40.308163, 24.002205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644434, 0.455917, -0.613876,
		0.330818, 0.890022, 0.313721,
		0.689394, -0.000909, -0.724386,
		29.224865, 40.307892, 23.784889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576242, 40.977936, 23.838676>,  <28.742290, 40.308525, 24.291960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576242, 40.977936, 23.838676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818239, 40.752468, 23.613728>,  <28.963436, 40.617188, 23.478758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818239, 40.752468, 23.613728>,  <28.576242, 40.977936, 23.838676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818239, 40.752468, 23.613728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484668, 0.299675, -0.821761,
		0.631731, 0.769722, -0.091892,
		0.604990, -0.563669, -0.562373,
		28.999737, 40.583366, 23.445015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972837, 41.414009, 23.229458>,  <28.576242, 40.977936, 23.838676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972837, 41.414009, 23.229458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955513, 41.027962, 23.126175>,  <28.945118, 40.796333, 23.064205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.955513, 41.027962, 23.126175>,  <28.972837, 41.414009, 23.229458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955513, 41.027962, 23.126175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575410, 0.235378, -0.783263,
		0.816717, 0.114653, -0.565533,
		-0.043310, -0.965118, -0.258210,
		28.942520, 40.738426, 23.048712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141556, 41.405060, 22.490265>,  <28.972837, 41.414009, 23.229458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141556, 41.405060, 22.490265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949394, 41.058323, 22.543634>,  <28.834097, 40.850281, 22.575655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949394, 41.058323, 22.543634>,  <29.141556, 41.405060, 22.490265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949394, 41.058323, 22.543634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517745, 0.157504, -0.840912,
		0.707920, -0.473057, -0.524467,
		-0.480405, -0.866839, 0.133422,
		28.805273, 40.798271, 22.583662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046389, 41.203884, 21.820488>,  <29.141556, 41.405060, 22.490265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046389, 41.203884, 21.820488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784508, 40.982723, 22.026657>,  <28.627380, 40.850025, 22.150358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.784508, 40.982723, 22.026657>,  <29.046389, 41.203884, 21.820488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784508, 40.982723, 22.026657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672253, 0.114137, -0.731470,
		0.345605, -0.825389, -0.446418,
		-0.654700, -0.552906, 0.515424,
		28.588097, 40.816853, 22.181284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.839462, 40.840042, 21.303354>,  <29.046389, 41.203884, 21.820488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.839462, 40.840042, 21.303354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543524, 40.778442, 21.565321>,  <28.365961, 40.741482, 21.722502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543524, 40.778442, 21.565321>,  <28.839462, 40.840042, 21.303354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543524, 40.778442, 21.565321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672065, 0.124350, -0.729977,
		0.030972, -0.980216, -0.195492,
		-0.739844, -0.153992, 0.654917,
		28.321571, 40.732243, 21.761797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456335, 40.415745, 20.949221>,  <28.839462, 40.840042, 21.303354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456335, 40.415745, 20.949221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224384, 40.566196, 21.238293>,  <28.085213, 40.656467, 21.411736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224384, 40.566196, 21.238293>,  <28.456335, 40.415745, 20.949221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224384, 40.566196, 21.238293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699664, 0.224538, -0.678272,
		-0.417387, -0.898950, 0.132958,
		-0.579878, 0.376128, 0.722681,
		28.050421, 40.679035, 21.455097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.832954, 40.207825, 20.789150>,  <28.456335, 40.415745, 20.949221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.832954, 40.207825, 20.789150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760742, 40.526737, 21.019541>,  <27.717415, 40.718086, 21.157776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760742, 40.526737, 21.019541>,  <27.832954, 40.207825, 20.789150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760742, 40.526737, 21.019541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747357, 0.269509, -0.607308,
		-0.639427, -0.540096, 0.547201,
		-0.180529, 0.797283, 0.575976,
		27.706583, 40.765923, 21.192333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.733038, 39.977158, 20.037094>,  <27.832954, 40.207825, 20.789150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.733038, 39.977158, 20.037094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961763, 39.796707, 19.763008>,  <28.098999, 39.688438, 19.598557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961763, 39.796707, 19.763008>,  <27.733038, 39.977158, 20.037094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961763, 39.796707, 19.763008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571302, -0.380459, 0.727231,
		-0.588767, -0.807304, 0.040177,
		0.571811, -0.451122, -0.685216,
		28.133307, 39.661369, 19.557444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781485, 39.308353, 20.272604>,  <27.733038, 39.977158, 20.037094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781485, 39.308353, 20.272604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091461, 39.377071, 20.029310>,  <28.277447, 39.418304, 19.883333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091461, 39.377071, 20.029310>,  <27.781485, 39.308353, 20.272604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091461, 39.377071, 20.029310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626292, -0.338119, 0.702448,
		-0.084976, -0.925290, -0.369620,
		0.774943, 0.171799, -0.608234,
		28.323944, 39.428612, 19.846840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082624, 38.629635, 20.300016>,  <27.781485, 39.308353, 20.272604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082624, 38.629635, 20.300016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348888, 38.902435, 20.178839>,  <28.508646, 39.066116, 20.106133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348888, 38.902435, 20.178839>,  <28.082624, 38.629635, 20.300016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348888, 38.902435, 20.178839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643580, -0.319143, 0.695667,
		0.377762, -0.658045, -0.651362,
		0.665658, 0.682000, -0.302945,
		28.548586, 39.107037, 20.087955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672861, 38.300213, 20.183949>,  <28.082624, 38.629635, 20.300016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672861, 38.300213, 20.183949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791004, 38.679089, 20.233910>,  <28.861891, 38.906414, 20.263885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791004, 38.679089, 20.233910>,  <28.672861, 38.300213, 20.183949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791004, 38.679089, 20.233910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788543, -0.315499, 0.527882,
		0.539409, -0.057423, -0.840083,
		0.295358, 0.947187, 0.124903,
		28.879612, 38.963245, 20.271381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328215, 38.328602, 20.017538>,  <28.672861, 38.300213, 20.183949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328215, 38.328602, 20.017538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286362, 38.643696, 20.260363>,  <29.261250, 38.832752, 20.406057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.286362, 38.643696, 20.260363>,  <29.328215, 38.328602, 20.017538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286362, 38.643696, 20.260363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627356, -0.421359, 0.654890,
		0.771671, 0.449367, -0.450103,
		-0.104631, 0.787735, 0.607064,
		29.254972, 38.880016, 20.442482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890074, 38.245987, 20.347471>,  <29.328215, 38.328602, 20.017538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890074, 38.245987, 20.347471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705709, 38.523949, 20.568258>,  <29.595091, 38.690727, 20.700731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.705709, 38.523949, 20.568258>,  <29.890074, 38.245987, 20.347471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705709, 38.523949, 20.568258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562132, -0.252675, 0.787504,
		0.686708, 0.673249, -0.274167,
		-0.460911, 0.694903, 0.551969,
		29.567436, 38.732418, 20.733849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389065, 38.599598, 20.567278>,  <29.890074, 38.245987, 20.347471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389065, 38.599598, 20.567278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084141, 38.656471, 20.819838>,  <29.901186, 38.690594, 20.971375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.084141, 38.656471, 20.819838>,  <30.389065, 38.599598, 20.567278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.084141, 38.656471, 20.819838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596170, -0.225471, 0.770548,
		0.251920, 0.963819, 0.087115,
		-0.762311, 0.142181, 0.631400,
		29.855448, 38.699127, 21.009258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.670246, 39.059612, 21.109213>,  <30.389065, 38.599598, 20.567278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.670246, 39.059612, 21.109213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350307, 38.865993, 21.251163>,  <30.158344, 38.749821, 21.336334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350307, 38.865993, 21.251163>,  <30.670246, 39.059612, 21.109213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350307, 38.865993, 21.251163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522687, -0.271114, 0.808267,
		-0.295030, 0.831980, 0.469857,
		-0.799847, -0.484051, 0.354878,
		30.110353, 38.720779, 21.357628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534893, 39.371391, 21.790796>,  <30.670246, 39.059612, 21.109213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534893, 39.371391, 21.790796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370325, 39.007439, 21.769436>,  <30.271584, 38.789066, 21.756620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370325, 39.007439, 21.769436>,  <30.534893, 39.371391, 21.790796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370325, 39.007439, 21.769436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400905, -0.233273, 0.885922,
		-0.818539, 0.343079, 0.460749,
		-0.411422, -0.909879, -0.053401,
		30.246899, 38.734474, 21.753416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398993, 39.229832, 22.511696>,  <30.534893, 39.371391, 21.790796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398993, 39.229832, 22.511696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372105, 38.867195, 22.345051>,  <30.355972, 38.649612, 22.245064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372105, 38.867195, 22.345051>,  <30.398993, 39.229832, 22.511696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372105, 38.867195, 22.345051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423564, -0.403992, 0.810792,
		-0.903369, -0.121962, 0.411157,
		-0.067218, -0.906595, -0.416613,
		30.351940, 38.595215, 22.220066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121885, 38.887131, 23.082609>,  <30.398993, 39.229832, 22.511696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121885, 38.887131, 23.082609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311014, 38.664097, 22.809689>,  <30.424492, 38.530277, 22.645935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.311014, 38.664097, 22.809689>,  <30.121885, 38.887131, 23.082609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311014, 38.664097, 22.809689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481464, -0.485037, 0.730022,
		-0.737991, -0.673676, 0.039120,
		0.472823, -0.557584, -0.682303,
		30.452862, 38.496822, 22.604998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029190, 38.224380, 23.268263>,  <30.121885, 38.887131, 23.082609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029190, 38.224380, 23.268263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363314, 38.198853, 23.049837>,  <30.563787, 38.183537, 22.918781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363314, 38.198853, 23.049837>,  <30.029190, 38.224380, 23.268263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363314, 38.198853, 23.049837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474351, -0.418471, 0.774515,
		-0.277940, -0.905985, -0.319280,
		0.835309, -0.063818, -0.546064,
		30.613907, 38.179707, 22.886017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257082, 37.518661, 23.196444>,  <30.029190, 38.224380, 23.268263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257082, 37.518661, 23.196444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583193, 37.739334, 23.126043>,  <30.778860, 37.871735, 23.083803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583193, 37.739334, 23.126043>,  <30.257082, 37.518661, 23.196444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583193, 37.739334, 23.126043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486805, -0.488354, 0.724245,
		0.313599, -0.676138, -0.666703,
		0.815277, 0.551677, -0.176000,
		30.827776, 37.904839, 23.073244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703865, 37.107330, 23.345304>,  <30.257082, 37.518661, 23.196444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703865, 37.107330, 23.345304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960312, 37.414234, 23.338551>,  <31.114180, 37.598377, 23.334499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960312, 37.414234, 23.338551>,  <30.703865, 37.107330, 23.345304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960312, 37.414234, 23.338551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528696, -0.425617, 0.734392,
		0.556282, -0.479757, -0.678516,
		0.641117, 0.767257, -0.016883,
		31.152647, 37.644413, 23.333487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389387, 36.820980, 23.383493>,  <30.703865, 37.107330, 23.345304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389387, 36.820980, 23.383493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420197, 37.194958, 23.522024>,  <31.438683, 37.419346, 23.605143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.420197, 37.194958, 23.522024>,  <31.389387, 36.820980, 23.383493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420197, 37.194958, 23.522024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617550, -0.317441, 0.719627,
		0.782751, 0.158448, -0.601826,
		0.077021, 0.934947, 0.346327,
		31.443302, 37.475441, 23.625923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097775, 36.893726, 23.487032>,  <31.389387, 36.820980, 23.383493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097775, 36.893726, 23.487032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935539, 37.180500, 23.713835>,  <31.838198, 37.352566, 23.849916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935539, 37.180500, 23.713835>,  <32.097775, 36.893726, 23.487032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935539, 37.180500, 23.713835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635640, -0.224545, 0.738607,
		0.656854, 0.659985, -0.364641,
		-0.405591, 0.716938, 0.567006,
		31.813862, 37.395580, 23.883936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691490, 37.020897, 23.849371>,  <32.097775, 36.893726, 23.487032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691490, 37.020897, 23.849371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396549, 37.179245, 24.068312>,  <32.219585, 37.274254, 24.199677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396549, 37.179245, 24.068312>,  <32.691490, 37.020897, 23.849371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396549, 37.179245, 24.068312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554221, -0.108723, 0.825238,
		0.386197, 0.911848, -0.139232,
		-0.737354, 0.395870, 0.547354,
		32.175343, 37.298004, 24.232517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085342, 37.288162, 24.316025>,  <32.691490, 37.020897, 23.849371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085342, 37.288162, 24.316025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712521, 37.272179, 24.460066>,  <32.488827, 37.262589, 24.546490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712521, 37.272179, 24.460066>,  <33.085342, 37.288162, 24.316025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712521, 37.272179, 24.460066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357379, -0.264864, 0.895616,
		0.059592, 0.963458, 0.261148,
		-0.932056, -0.039957, 0.360103,
		32.432903, 37.260193, 24.568096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262901, 37.677841, 24.904593>,  <33.085342, 37.288162, 24.316025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262901, 37.677841, 24.904593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916737, 37.483215, 24.952463>,  <32.709038, 37.366440, 24.981186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916737, 37.483215, 24.952463>,  <33.262901, 37.677841, 24.904593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916737, 37.483215, 24.952463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268782, -0.249214, 0.930402,
		-0.422874, 0.837346, 0.346452,
		-0.865410, -0.486563, 0.119677,
		32.657112, 37.337246, 24.988367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115250, 37.799244, 25.595327>,  <33.262901, 37.677841, 24.904593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115250, 37.799244, 25.595327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895004, 37.484608, 25.483541>,  <32.762856, 37.295826, 25.416470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895004, 37.484608, 25.483541>,  <33.115250, 37.799244, 25.595327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895004, 37.484608, 25.483541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219399, -0.459378, 0.860718,
		-0.805412, 0.412610, 0.425518,
		-0.550614, -0.786591, -0.279462,
		32.729820, 37.248631, 25.399702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605724, 37.749943, 26.013851>,  <33.115250, 37.799244, 25.595327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605724, 37.749943, 26.013851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703121, 37.381935, 25.891031>,  <32.761559, 37.161133, 25.817339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703121, 37.381935, 25.891031>,  <32.605724, 37.749943, 26.013851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703121, 37.381935, 25.891031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158045, -0.274713, 0.948448,
		-0.956939, -0.279471, 0.078513,
		0.243495, -0.920016, -0.307052,
		32.776169, 37.105930, 25.798916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497749, 37.437801, 26.598953>,  <32.605724, 37.749943, 26.013851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497749, 37.437801, 26.598953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691059, 37.166698, 26.377293>,  <32.807045, 37.004036, 26.244297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691059, 37.166698, 26.377293>,  <32.497749, 37.437801, 26.598953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691059, 37.166698, 26.377293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291357, -0.472381, 0.831846,
		-0.825563, -0.563468, -0.030820,
		0.483278, -0.677761, -0.554150,
		32.836044, 36.963371, 26.211048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185265, 36.770679, 26.825987>,  <32.497749, 37.437801, 26.598953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185265, 36.770679, 26.825987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541039, 36.683750, 26.665152>,  <32.754501, 36.631592, 26.568651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541039, 36.683750, 26.665152>,  <32.185265, 36.770679, 26.825987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541039, 36.683750, 26.665152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173636, -0.653103, 0.737093,
		-0.422793, -0.725414, -0.543158,
		0.889436, -0.217327, -0.402086,
		32.807869, 36.618553, 26.544525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158073, 36.077942, 26.846756>,  <32.185265, 36.770679, 26.825987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158073, 36.077942, 26.846756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542652, 36.183884, 26.817167>,  <32.773399, 36.247448, 26.799414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542652, 36.183884, 26.817167>,  <32.158073, 36.077942, 26.846756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542652, 36.183884, 26.817167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221377, -0.585913, 0.779550,
		0.163125, -0.765872, -0.621957,
		0.961448, 0.264851, -0.073970,
		32.831085, 36.263340, 26.794977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637508, 35.366596, 26.893887>,  <32.158073, 36.077942, 26.846756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637508, 35.366596, 26.893887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870068, 35.683144, 26.969481>,  <33.009602, 35.873074, 27.014837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870068, 35.683144, 26.969481>,  <32.637508, 35.366596, 26.893887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870068, 35.683144, 26.969481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403501, -0.482148, 0.777637,
		0.706516, -0.375859, -0.599637,
		0.581396, 0.791368, 0.188986,
		33.044487, 35.920555, 27.026176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323376, 35.112408, 27.006664>,  <32.637508, 35.366596, 26.893887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323376, 35.112408, 27.006664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306194, 35.469025, 27.187019>,  <33.295887, 35.682995, 27.295233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306194, 35.469025, 27.187019>,  <33.323376, 35.112408, 27.006664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306194, 35.469025, 27.187019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426091, -0.391857, 0.815411,
		0.903660, 0.227146, -0.363048,
		-0.042954, 0.891545, 0.450890,
		33.293308, 35.736488, 27.322287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961018, 35.234425, 27.178175>,  <33.323376, 35.112408, 27.006664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961018, 35.234425, 27.178175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782452, 35.483418, 27.435307>,  <33.675312, 35.632812, 27.589586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782452, 35.483418, 27.435307>,  <33.961018, 35.234425, 27.178175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782452, 35.483418, 27.435307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608440, -0.315603, 0.728146,
		0.656135, 0.716180, -0.237851,
		-0.446417, 0.622480, 0.642831,
		33.648525, 35.670162, 27.628157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473297, 35.594040, 27.353769>,  <33.961018, 35.234425, 27.178175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473297, 35.594040, 27.353769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196869, 35.601402, 27.642790>,  <34.031013, 35.605820, 27.816202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196869, 35.601402, 27.642790>,  <34.473297, 35.594040, 27.353769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196869, 35.601402, 27.642790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682385, -0.312928, 0.660626,
		0.238268, 0.949598, 0.203694,
		-0.691071, 0.018408, 0.722553,
		33.989548, 35.606926, 27.859556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752705, 35.879261, 27.928648>,  <34.473297, 35.594040, 27.353769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752705, 35.879261, 27.928648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440491, 35.698925, 28.101860>,  <34.253162, 35.590725, 28.205788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440491, 35.698925, 28.101860>,  <34.752705, 35.879261, 27.928648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440491, 35.698925, 28.101860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612726, -0.414526, 0.672856,
		-0.123847, 0.790514, 0.599791,
		-0.780531, -0.450839, 0.433031,
		34.206333, 35.563675, 28.231770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871517, 35.896267, 28.629702>,  <34.752705, 35.879261, 27.928648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871517, 35.896267, 28.629702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600487, 35.603340, 28.602552>,  <34.437870, 35.427586, 28.586264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600487, 35.603340, 28.602552>,  <34.871517, 35.896267, 28.629702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600487, 35.603340, 28.602552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482194, -0.512035, 0.710851,
		-0.555319, 0.448928, 0.700060,
		-0.677576, -0.732314, -0.067873,
		34.397213, 35.383644, 28.582190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819687, 35.598030, 29.399181>,  <34.871517, 35.896267, 28.629702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819687, 35.598030, 29.399181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689598, 35.323532, 29.138933>,  <34.611546, 35.158833, 28.982784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689598, 35.323532, 29.138933>,  <34.819687, 35.598030, 29.399181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689598, 35.323532, 29.138933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350818, -0.726479, 0.590895,
		-0.878158, -0.036080, 0.477009,
		-0.325217, -0.686242, -0.650620,
		34.592033, 35.117661, 28.943747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548912, 35.099453, 29.822187>,  <34.819687, 35.598030, 29.399181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548912, 35.099453, 29.822187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592770, 34.910843, 29.472183>,  <34.619083, 34.797676, 29.262180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592770, 34.910843, 29.472183>,  <34.548912, 35.099453, 29.822187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592770, 34.910843, 29.472183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416151, -0.777671, 0.471217,
		-0.902661, -0.415800, 0.110962,
		0.109640, -0.471526, -0.875010,
		34.625660, 34.769386, 29.209681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345425, 34.407673, 29.952583>,  <34.548912, 35.099453, 29.822187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345425, 34.407673, 29.952583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562675, 34.405617, 29.616730>,  <34.693027, 34.404385, 29.415218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562675, 34.405617, 29.616730>,  <34.345425, 34.407673, 29.952583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562675, 34.405617, 29.616730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546075, -0.757450, 0.357872,
		-0.637819, -0.652873, -0.408587,
		0.543129, -0.005138, -0.839633,
		34.725613, 34.404076, 29.364840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.237263, 33.686764, 29.674406>,  <34.345425, 34.407673, 29.952583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.237263, 33.686764, 29.674406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585468, 33.834942, 29.544802>,  <34.794392, 33.923847, 29.467039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585468, 33.834942, 29.544802>,  <34.237263, 33.686764, 29.674406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585468, 33.834942, 29.544802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456194, -0.854387, 0.248818,
		-0.184657, -0.364410, -0.912747,
		0.870511, 0.370444, -0.324010,
		34.846622, 33.946075, 29.447599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485226, 33.201706, 29.184456>,  <34.237263, 33.686764, 29.674406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485226, 33.201706, 29.184456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799351, 33.431805, 29.275997>,  <34.987827, 33.569862, 29.330921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799351, 33.431805, 29.275997>,  <34.485226, 33.201706, 29.184456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799351, 33.431805, 29.275997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534292, -0.816473, 0.218867,
		0.312754, -0.049605, -0.948538,
		0.785313, 0.575248, 0.228852,
		35.034946, 33.604378, 29.344652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071552, 32.819256, 28.935507>,  <34.485226, 33.201706, 29.184456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071552, 32.819256, 28.935507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261478, 33.084175, 29.167339>,  <35.375435, 33.243126, 29.306438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.261478, 33.084175, 29.167339>,  <35.071552, 32.819256, 28.935507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261478, 33.084175, 29.167339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719735, -0.671210, 0.177370,
		0.506492, 0.332927, -0.795378,
		0.474814, 0.662297, 0.579581,
		35.403923, 33.282864, 29.341213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788471, 32.969788, 28.645132>,  <35.071552, 32.819256, 28.935507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788471, 32.969788, 28.645132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771778, 33.045139, 29.037615>,  <35.761761, 33.090351, 29.273106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771778, 33.045139, 29.037615>,  <35.788471, 32.969788, 28.645132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771778, 33.045139, 29.037615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835491, -0.531979, 0.137668,
		0.547917, 0.825537, -0.135188,
		-0.041733, 0.188379, 0.981209,
		35.759258, 33.101654, 29.331978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366116, 32.776264, 28.873165>,  <35.788471, 32.969788, 28.645132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366116, 32.776264, 28.873165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228409, 32.831547, 29.244623>,  <36.145786, 32.864716, 29.467499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.228409, 32.831547, 29.244623>,  <36.366116, 32.776264, 28.873165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228409, 32.831547, 29.244623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740790, -0.567689, 0.359110,
		0.576812, 0.811560, 0.093053,
		-0.344264, 0.138206, 0.928645,
		36.125130, 32.873009, 29.523216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922943, 32.995235, 29.293661>,  <36.366116, 32.776264, 28.873165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922943, 32.995235, 29.293661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632069, 32.813972, 29.499905>,  <36.457542, 32.705215, 29.623650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632069, 32.813972, 29.499905>,  <36.922943, 32.995235, 29.293661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632069, 32.813972, 29.499905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673904, -0.614178, 0.410656,
		0.130585, 0.646094, 0.752004,
		-0.727187, -0.453153, 0.515608,
		36.413914, 32.678028, 29.654587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219688, 33.011887, 29.871450>,  <36.922943, 32.995235, 29.293661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219688, 33.011887, 29.871450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936592, 32.730415, 29.896591>,  <36.766735, 32.561535, 29.911676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936592, 32.730415, 29.896591>,  <37.219688, 33.011887, 29.871450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936592, 32.730415, 29.896591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622081, -0.578554, 0.527532,
		-0.334847, 0.412454, 0.847207,
		-0.707737, -0.703674, 0.062853,
		36.724270, 32.519314, 29.915447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212662, 32.937977, 30.585287>,  <37.219688, 33.011887, 29.871450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212662, 32.937977, 30.585287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104420, 32.635002, 30.347612>,  <37.039474, 32.453217, 30.205008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104420, 32.635002, 30.347612>,  <37.212662, 32.937977, 30.585287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104420, 32.635002, 30.347612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746752, -0.554686, 0.366994,
		-0.607563, -0.344399, 0.715721,
		-0.270609, -0.757438, -0.594188,
		37.023235, 32.407772, 30.169355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817860, 33.456703, 30.606459>,  <37.212662, 32.937977, 30.585287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817860, 33.456703, 30.606459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823917, 33.463959, 31.006348>,  <37.827553, 33.468311, 31.246281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823917, 33.463959, 31.006348>,  <37.817860, 33.456703, 30.606459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823917, 33.463959, 31.006348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495977, 0.868024, -0.023263,
		-0.868203, 0.496191, 0.004148,
		0.015144, 0.018140, 0.999721,
		37.828461, 33.469402, 31.306263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406979, 33.989040, 30.981960>,  <37.817860, 33.456703, 30.606459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406979, 33.989040, 30.981960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743275, 33.897156, 31.178078>,  <37.945053, 33.842026, 31.295748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.743275, 33.897156, 31.178078>,  <37.406979, 33.989040, 30.981960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743275, 33.897156, 31.178078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366045, 0.908392, -0.202078,
		-0.398956, 0.349364, 0.847808,
		0.840741, -0.229716, 0.490291,
		37.995499, 33.828239, 31.325165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614330, 34.622448, 31.345284>,  <37.406979, 33.989040, 30.981960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614330, 34.622448, 31.345284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933075, 34.385273, 31.298923>,  <38.124321, 34.242970, 31.271107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.933075, 34.385273, 31.298923>,  <37.614330, 34.622448, 31.345284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933075, 34.385273, 31.298923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570692, 0.801707, -0.177698,
		0.198283, 0.075457, 0.977236,
		0.796866, -0.592935, -0.115902,
		38.172134, 34.207394, 31.264153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215084, 34.700630, 31.852072>,  <37.614330, 34.622448, 31.345284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215084, 34.700630, 31.852072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354919, 34.564816, 31.502785>,  <38.438820, 34.483326, 31.293213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354919, 34.564816, 31.502785>,  <38.215084, 34.700630, 31.852072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354919, 34.564816, 31.502785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680236, 0.732884, -0.012641,
		0.644258, -0.589573, 0.487171,
		0.349587, -0.339535, -0.873215,
		38.459797, 34.462955, 31.240820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668495, 35.276855, 31.823193>,  <38.215084, 34.700630, 31.852072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668495, 35.276855, 31.823193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698875, 35.047253, 31.497065>,  <38.717102, 34.909492, 31.301388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698875, 35.047253, 31.497065>,  <38.668495, 35.276855, 31.823193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698875, 35.047253, 31.497065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687420, 0.622449, -0.374182,
		0.722278, -0.532048, 0.441858,
		0.075952, -0.574005, -0.815322,
		38.721661, 34.875050, 31.252468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091114, 35.434845, 32.298904>,  <38.668495, 35.276855, 31.823193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091114, 35.434845, 32.298904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964706, 35.156193, 32.556538>,  <37.888863, 34.989002, 32.711117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964706, 35.156193, 32.556538>,  <38.091114, 35.434845, 32.298904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964706, 35.156193, 32.556538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061813, 0.692548, 0.718718,
		-0.946738, 0.187313, -0.261917,
		-0.316015, -0.696628, 0.644084,
		37.869904, 34.947205, 32.749763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480728, 35.665585, 32.671253>,  <38.091114, 35.434845, 32.298904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480728, 35.665585, 32.671253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651329, 35.394459, 32.910809>,  <37.753689, 35.231785, 33.054543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651329, 35.394459, 32.910809>,  <37.480728, 35.665585, 32.671253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651329, 35.394459, 32.910809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305122, 0.515494, 0.800728,
		-0.851467, -0.524247, 0.013044,
		0.426503, -0.677814, 0.598885,
		37.779282, 35.191116, 33.090473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020397, 35.418652, 33.169178>,  <37.480728, 35.665585, 32.671253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020397, 35.418652, 33.169178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371696, 35.318546, 33.332172>,  <37.582478, 35.258484, 33.429970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371696, 35.318546, 33.332172>,  <37.020397, 35.418652, 33.169178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371696, 35.318546, 33.332172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280726, 0.420023, 0.863002,
		-0.387136, -0.872323, 0.298628,
		0.878247, -0.250267, 0.407490,
		37.635170, 35.243465, 33.454418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027924, 34.977604, 33.745945>,  <37.020397, 35.418652, 33.169178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027924, 34.977604, 33.745945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347652, 35.217018, 33.767242>,  <37.539490, 35.360664, 33.780022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347652, 35.217018, 33.767242>,  <37.027924, 34.977604, 33.745945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347652, 35.217018, 33.767242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268241, 0.276123, 0.922932,
		0.537703, -0.752006, 0.381264,
		0.799326, 0.598534, 0.053246,
		37.587452, 35.396580, 33.783215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223362, 34.890846, 34.395622>,  <37.027924, 34.977604, 33.745945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223362, 34.890846, 34.395622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383224, 35.243935, 34.296764>,  <37.479141, 35.455788, 34.237450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.383224, 35.243935, 34.296764>,  <37.223362, 34.890846, 34.395622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383224, 35.243935, 34.296764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263269, 0.368790, 0.891450,
		0.878044, -0.291210, 0.379782,
		0.399659, 0.882718, -0.247148,
		37.503120, 35.508751, 34.222622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274223, 34.210686, 34.315693>,  <37.223362, 34.890846, 34.395622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274223, 34.210686, 34.315693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585220, 34.412655, 34.165730>,  <37.771820, 34.533836, 34.075752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585220, 34.412655, 34.165730>,  <37.274223, 34.210686, 34.315693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585220, 34.412655, 34.165730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605920, -0.441798, 0.661570,
		0.168406, -0.741532, -0.649438,
		0.777496, 0.504920, -0.374908,
		37.818470, 34.564133, 34.053257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041561, 34.350845, 34.651211>,  <37.274223, 34.210686, 34.315693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041561, 34.350845, 34.651211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028687, 34.747620, 34.602177>,  <38.020962, 34.985683, 34.572758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028687, 34.747620, 34.602177>,  <38.041561, 34.350845, 34.651211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028687, 34.747620, 34.602177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326986, 0.105446, 0.939128,
		0.944481, 0.070307, 0.320955,
		-0.032184, 0.991937, -0.122582,
		38.019032, 35.045200, 34.565403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222317, 34.582333, 35.306927>,  <38.041561, 34.350845, 34.651211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222317, 34.582333, 35.306927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037979, 34.884876, 35.121223>,  <37.927376, 35.066402, 35.009800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.037979, 34.884876, 35.121223>,  <38.222317, 34.582333, 35.306927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037979, 34.884876, 35.121223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223859, 0.407139, 0.885509,
		0.858784, 0.512011, -0.018308,
		-0.460844, 0.756362, -0.464263,
		37.899727, 35.111786, 34.981945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346825, 35.102394, 35.757034>,  <38.222317, 34.582333, 35.306927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346825, 35.102394, 35.757034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061386, 35.264709, 35.528610>,  <37.890121, 35.362099, 35.391556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061386, 35.264709, 35.528610>,  <38.346825, 35.102394, 35.757034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061386, 35.264709, 35.528610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306198, 0.552501, 0.775232,
		0.630094, 0.728062, -0.270011,
		-0.713599, 0.405793, -0.571059,
		37.847305, 35.386448, 35.357292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321735, 35.780529, 35.871132>,  <38.346825, 35.102394, 35.757034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321735, 35.780529, 35.871132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952080, 35.713600, 35.733742>,  <37.730286, 35.673443, 35.651306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952080, 35.713600, 35.733742>,  <38.321735, 35.780529, 35.871132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952080, 35.713600, 35.733742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376656, 0.549717, 0.745615,
		0.064055, 0.818421, -0.571037,
		-0.924136, -0.167325, -0.343476,
		37.674839, 35.663403, 35.630699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029095, 36.341290, 35.820087>,  <38.321735, 35.780529, 35.871132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029095, 36.341290, 35.820087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727036, 36.085957, 35.879795>,  <37.545799, 35.932758, 35.915619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727036, 36.085957, 35.879795>,  <38.029095, 36.341290, 35.820087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727036, 36.085957, 35.879795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329290, 0.566248, 0.755600,
		-0.566844, 0.521440, -0.637799,
		-0.755153, -0.638328, 0.149269,
		37.500488, 35.894459, 35.924576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463032, 36.852997, 35.966228>,  <38.029095, 36.341290, 35.820087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463032, 36.852997, 35.966228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317093, 36.498188, 36.079418>,  <37.229530, 36.285301, 36.147331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317093, 36.498188, 36.079418>,  <37.463032, 36.852997, 35.966228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317093, 36.498188, 36.079418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290185, 0.397119, 0.870683,
		-0.884694, 0.235547, -0.402287,
		-0.364843, -0.887025, 0.282976,
		37.207642, 36.232079, 36.164310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728886, 36.973766, 36.361515>,  <37.463032, 36.852997, 35.966228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728886, 36.973766, 36.361515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893967, 36.623497, 36.461807>,  <36.993015, 36.413334, 36.521984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893967, 36.623497, 36.461807>,  <36.728886, 36.973766, 36.361515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893967, 36.623497, 36.461807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183226, 0.189832, 0.964568,
		-0.892247, -0.444020, -0.082103,
		0.412701, -0.875677, 0.250733,
		37.017776, 36.360794, 36.537025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222420, 36.685589, 36.819378>,  <36.728886, 36.973766, 36.361515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222420, 36.685589, 36.819378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556515, 36.488991, 36.918018>,  <36.756973, 36.371033, 36.977203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556515, 36.488991, 36.918018>,  <36.222420, 36.685589, 36.819378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556515, 36.488991, 36.918018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120313, 0.274257, 0.954101,
		-0.536565, -0.826571, 0.169937,
		0.835238, -0.491492, 0.246604,
		36.807087, 36.341545, 36.992001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006329, 36.162529, 37.384991>,  <36.222420, 36.685589, 36.819378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006329, 36.162529, 37.384991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371967, 36.323120, 37.362244>,  <36.591351, 36.419476, 37.348595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371967, 36.323120, 37.362244>,  <36.006329, 36.162529, 37.384991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371967, 36.323120, 37.362244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034002, 0.215649, 0.975879,
		0.404063, -0.890116, 0.210776,
		0.914099, 0.401484, -0.056870,
		36.646198, 36.443565, 37.345184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326805, 35.982433, 38.105816>,  <36.006329, 36.162529, 37.384991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326805, 35.982433, 38.105816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555668, 36.259224, 37.929726>,  <36.692986, 36.425297, 37.824070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.555668, 36.259224, 37.929726>,  <36.326805, 35.982433, 38.105816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555668, 36.259224, 37.929726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297662, 0.324964, 0.897661,
		0.764218, -0.644646, -0.020043,
		0.572160, 0.691975, -0.440230,
		36.727318, 36.466816, 37.797657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164185, 35.988041, 38.183243>,  <36.326805, 35.982433, 38.105816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164185, 35.988041, 38.183243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993977, 36.348656, 38.151825>,  <36.891853, 36.565025, 38.132977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993977, 36.348656, 38.151825>,  <37.164185, 35.988041, 38.183243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993977, 36.348656, 38.151825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313383, 0.228222, 0.921795,
		0.848956, 0.367626, -0.379638,
		-0.425517, 0.901535, -0.078542,
		36.866322, 36.619118, 38.128262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603748, 36.712132, 38.136883>,  <37.164185, 35.988041, 38.183243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603748, 36.712132, 38.136883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248188, 36.776115, 38.308586>,  <37.034851, 36.814507, 38.411610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248188, 36.776115, 38.308586>,  <37.603748, 36.712132, 38.136883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248188, 36.776115, 38.308586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457871, 0.280786, 0.843513,
		0.014399, 0.946346, -0.322833,
		-0.888902, 0.159962, 0.429261,
		36.981518, 36.824104, 38.437363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920204, 36.543034, 37.450882>,  <37.603748, 36.712132, 38.136883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920204, 36.543034, 37.450882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552128, 36.398182, 37.510361>,  <37.331284, 36.311272, 37.546047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552128, 36.398182, 37.510361>,  <37.920204, 36.543034, 37.450882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552128, 36.398182, 37.510361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070140, -0.221190, -0.972705,
		0.385139, -0.905503, 0.178137,
		-0.920189, -0.362132, 0.148700,
		37.276070, 36.289543, 37.554970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927422, 35.808453, 37.187435>,  <37.920204, 36.543034, 37.450882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927422, 35.808453, 37.187435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543274, 35.913963, 37.151417>,  <37.312786, 35.977268, 37.129807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.543274, 35.913963, 37.151417>,  <37.927422, 35.808453, 37.187435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.543274, 35.913963, 37.151417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015259, -0.272818, -0.961945,
		-0.278347, -0.925186, 0.257978,
		-0.960359, 0.263818, -0.090056,
		37.255161, 35.993095, 37.124405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368290, 35.150349, 37.028702>,  <37.927422, 35.808453, 37.187435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368290, 35.150349, 37.028702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258144, 35.507587, 36.886402>,  <37.192059, 35.721931, 36.801022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258144, 35.507587, 36.886402>,  <37.368290, 35.150349, 37.028702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258144, 35.507587, 36.886402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194415, -0.414143, -0.889207,
		-0.941476, -0.175694, 0.287671,
		-0.275365, 0.893094, -0.355748,
		37.175533, 35.775517, 36.779678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698360, 35.101734, 36.686085>,  <37.368290, 35.150349, 37.028702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698360, 35.101734, 36.686085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891132, 35.417671, 36.534355>,  <37.006794, 35.607235, 36.443317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891132, 35.417671, 36.534355>,  <36.698360, 35.101734, 36.686085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891132, 35.417671, 36.534355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134131, -0.361311, -0.922748,
		-0.865884, 0.495576, -0.068183,
		0.481927, 0.789847, -0.379325,
		37.035709, 35.654625, 36.420559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523842, 35.042927, 35.951271>,  <36.698360, 35.101734, 36.686085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523842, 35.042927, 35.951271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815929, 35.315697, 35.934551>,  <36.991184, 35.479359, 35.924519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815929, 35.315697, 35.934551>,  <36.523842, 35.042927, 35.951271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815929, 35.315697, 35.934551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228036, -0.300943, -0.925976,
		-0.644030, 0.666637, -0.375260,
		0.730223, 0.681929, -0.041799,
		37.034996, 35.520275, 35.922012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443565, 35.610626, 35.401257>,  <36.523842, 35.042927, 35.951271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443565, 35.610626, 35.401257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839676, 35.604637, 35.456585>,  <37.077343, 35.601044, 35.489784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.839676, 35.604637, 35.456585>,  <36.443565, 35.610626, 35.401257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839676, 35.604637, 35.456585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137296, -0.055754, -0.988960,
		0.022517, 0.998332, -0.053156,
		0.990274, -0.014971, 0.138323,
		37.136757, 35.600147, 35.498081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738167, 35.666451, 34.717674>,  <36.443565, 35.610626, 35.401257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738167, 35.666451, 34.717674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094086, 35.630695, 34.896679>,  <37.307636, 35.609241, 35.004082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094086, 35.630695, 34.896679>,  <36.738167, 35.666451, 34.717674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094086, 35.630695, 34.896679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426226, -0.187613, -0.884948,
		0.163060, 0.978167, -0.128840,
		0.889800, -0.089385, 0.447512,
		37.361027, 35.603878, 35.030933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398815, 36.196754, 34.491032>,  <36.738167, 35.666451, 34.717674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398815, 36.196754, 34.491032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525318, 35.833408, 34.600471>,  <37.601219, 35.615402, 34.666134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525318, 35.833408, 34.600471>,  <37.398815, 36.196754, 34.491032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525318, 35.833408, 34.600471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306255, -0.175201, -0.935688,
		0.897880, 0.379710, 0.222782,
		0.316259, -0.908364, 0.273597,
		37.620197, 35.560898, 34.682552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169903, 36.135883, 34.320267>,  <37.398815, 36.196754, 34.491032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169903, 36.135883, 34.320267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016483, 35.767349, 34.345684>,  <37.924431, 35.546230, 34.360935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016483, 35.767349, 34.345684>,  <38.169903, 36.135883, 34.320267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016483, 35.767349, 34.345684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415343, -0.233539, -0.879176,
		0.824853, -0.310814, 0.472242,
		-0.383547, -0.921333, 0.063541,
		37.901421, 35.490948, 34.364746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713776, 35.742729, 33.954117>,  <38.169903, 36.135883, 34.320267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713776, 35.742729, 33.954117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353741, 35.568649, 33.962559>,  <38.137718, 35.464203, 33.967625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353741, 35.568649, 33.962559>,  <38.713776, 35.742729, 33.954117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353741, 35.568649, 33.962559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171872, -0.399147, -0.900634,
		0.400375, -0.807024, 0.434065,
		-0.900089, -0.435195, 0.021104,
		38.083714, 35.438091, 33.968891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841782, 34.984066, 33.955235>,  <38.713776, 35.742729, 33.954117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841782, 34.984066, 33.955235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489128, 35.085850, 33.796249>,  <38.277534, 35.146919, 33.700859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489128, 35.085850, 33.796249>,  <38.841782, 34.984066, 33.955235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489128, 35.085850, 33.796249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173812, -0.607913, -0.774746,
		-0.438764, -0.752124, 0.491727,
		-0.881633, 0.254462, -0.397459,
		38.224640, 35.162189, 33.677013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498066, 34.319572, 33.717678>,  <38.841782, 34.984066, 33.955235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498066, 34.319572, 33.717678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293610, 34.607029, 33.529087>,  <38.170937, 34.779503, 33.415932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293610, 34.607029, 33.529087>,  <38.498066, 34.319572, 33.717678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293610, 34.607029, 33.529087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144461, -0.468917, -0.871349,
		-0.847272, -0.513489, 0.135865,
		-0.511137, 0.718642, -0.471479,
		38.140266, 34.822620, 33.387642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864811, 34.054550, 33.565971>,  <38.498066, 34.319572, 33.717678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864811, 34.054550, 33.565971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003197, 34.327419, 33.308304>,  <38.086227, 34.491138, 33.153702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.003197, 34.327419, 33.308304>,  <37.864811, 34.054550, 33.565971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003197, 34.327419, 33.308304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199793, -0.617257, -0.760970,
		-0.916730, 0.391968, -0.077254,
		0.345962, 0.682169, -0.644171,
		38.106987, 34.532070, 33.115051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281025, 33.442436, 33.542637>,  <37.864811, 34.054550, 33.565971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281025, 33.442436, 33.542637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242012, 33.058300, 33.438148>,  <38.218605, 32.827820, 33.375458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242012, 33.058300, 33.438148>,  <38.281025, 33.442436, 33.542637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242012, 33.058300, 33.438148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988144, -0.124713, 0.089539,
		-0.118565, -0.249387, 0.961118,
		-0.097534, -0.960340, -0.261217,
		38.212753, 32.770199, 33.359783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707275, 33.074596, 33.954552>,  <38.281025, 33.442436, 33.542637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707275, 33.074596, 33.954552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641708, 32.836170, 33.640141>,  <38.602367, 32.693115, 33.451492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641708, 32.836170, 33.640141>,  <38.707275, 33.074596, 33.954552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641708, 32.836170, 33.640141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981871, -0.175470, -0.071695,
		-0.095190, -0.783531, 0.614018,
		-0.163917, -0.596061, -0.786029,
		38.592533, 32.657352, 33.404331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128574, 32.528999, 33.993282>,  <38.707275, 33.074596, 33.954552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128574, 32.528999, 33.993282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073921, 32.590576, 33.601849>,  <39.041130, 32.627522, 33.366989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.073921, 32.590576, 33.601849>,  <39.128574, 32.528999, 33.993282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073921, 32.590576, 33.601849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990342, -0.002250, -0.138624,
		-0.023543, -0.988077, -0.152151,
		-0.136629, 0.153945, -0.978587,
		39.032932, 32.636761, 33.308273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027527, 31.974697, 33.607140>,  <39.128574, 32.528999, 33.993282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027527, 31.974697, 33.607140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202587, 32.262596, 33.391575>,  <39.307625, 32.435333, 33.262238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202587, 32.262596, 33.391575>,  <39.027527, 31.974697, 33.607140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202587, 32.262596, 33.391575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831685, -0.551823, -0.061570,
		-0.341698, -0.421257, -0.840110,
		0.437655, 0.719746, -0.538910,
		39.333885, 32.478519, 33.229900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404869, 31.628099, 32.939014>,  <39.027527, 31.974697, 33.607140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404869, 31.628099, 32.939014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540329, 31.974434, 33.086338>,  <39.621605, 32.182236, 33.174732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540329, 31.974434, 33.086338>,  <39.404869, 31.628099, 32.939014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540329, 31.974434, 33.086338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929318, -0.369048, 0.013102,
		0.147267, 0.337837, -0.929612,
		0.338645, 0.865835, 0.368307,
		39.641922, 32.234184, 33.196831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928444, 31.951443, 32.447060>,  <39.404869, 31.628099, 32.939014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928444, 31.951443, 32.447060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018635, 32.037479, 32.827141>,  <40.072750, 32.089104, 33.055191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018635, 32.037479, 32.827141>,  <39.928444, 31.951443, 32.447060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018635, 32.037479, 32.827141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899206, -0.421311, -0.118010,
		0.374949, 0.881040, -0.288411,
		0.225482, 0.215093, 0.950207,
		40.086281, 32.102009, 33.112202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531746, 32.379208, 32.517822>,  <39.928444, 31.951443, 32.447060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531746, 32.379208, 32.517822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501686, 32.124165, 32.824497>,  <40.483650, 31.971138, 33.008503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501686, 32.124165, 32.824497>,  <40.531746, 32.379208, 32.517822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501686, 32.124165, 32.824497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962054, -0.248609, -0.112449,
		0.262303, 0.729143, 0.632098,
		-0.075154, -0.637608, 0.766686,
		40.479141, 31.932882, 33.054504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158508, 32.500912, 32.885094>,  <40.531746, 32.379208, 32.517822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158508, 32.500912, 32.885094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011135, 32.138992, 32.970501>,  <40.922710, 31.921841, 33.021744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.011135, 32.138992, 32.970501>,  <41.158508, 32.500912, 32.885094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011135, 32.138992, 32.970501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914912, -0.393640, -0.089349,
		0.164891, 0.162428, 0.972845,
		-0.368438, -0.904801, 0.213515,
		40.900604, 31.867552, 33.034554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508980, 32.192570, 33.645683>,  <41.158508, 32.500912, 32.885094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508980, 32.192570, 33.645683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427406, 31.984612, 33.313873>,  <41.378464, 31.859837, 33.114784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.427406, 31.984612, 33.313873>,  <41.508980, 32.192570, 33.645683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.427406, 31.984612, 33.313873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908923, -0.415332, 0.036856,
		-0.363692, -0.746462, 0.557245,
		-0.203930, -0.519897, -0.829530,
		41.366226, 31.828642, 33.065014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429726, 31.385307, 33.739021>,  <41.508980, 32.192570, 33.645683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429726, 31.385307, 33.739021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568756, 31.501390, 33.382378>,  <41.652172, 31.571041, 33.168392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568756, 31.501390, 33.382378>,  <41.429726, 31.385307, 33.739021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568756, 31.501390, 33.382378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834697, -0.528966, 0.153215,
		-0.427168, -0.797480, -0.426091,
		0.347574, 0.290208, -0.891612,
		41.673027, 31.588453, 33.114895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619156, 30.717386, 33.528255>,  <41.429726, 31.385307, 33.739021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619156, 30.717386, 33.528255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797348, 31.017963, 33.333576>,  <41.904263, 31.198311, 33.216770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797348, 31.017963, 33.333576>,  <41.619156, 30.717386, 33.528255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797348, 31.017963, 33.333576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895184, -0.382260, 0.229181,
		-0.013828, -0.537780, -0.842972,
		0.445483, 0.751445, -0.486698,
		41.930992, 31.243397, 33.187569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263535, 30.565401, 33.423721>,  <41.619156, 30.717386, 33.528255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263535, 30.565401, 33.423721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316032, 30.960382, 33.458847>,  <42.347530, 31.197371, 33.479923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316032, 30.960382, 33.458847>,  <42.263535, 30.565401, 33.423721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316032, 30.960382, 33.458847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823898, -0.157908, 0.544295,
		0.551332, 0.000915, -0.834285,
		0.131242, 0.987454, 0.087813,
		42.355404, 31.256618, 33.485191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937958, 30.886938, 33.160152>,  <42.263535, 30.565401, 33.423721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937958, 30.886938, 33.160152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774139, 31.069136, 33.476330>,  <42.675850, 31.178453, 33.666035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774139, 31.069136, 33.476330>,  <42.937958, 30.886938, 33.160152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774139, 31.069136, 33.476330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890570, 0.011680, 0.454696,
		0.197879, 0.890162, -0.410433,
		-0.409547, 0.455494, 0.790441,
		42.651276, 31.205784, 33.713463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315170, 31.470791, 33.489723>,  <42.937958, 30.886938, 33.160152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315170, 31.470791, 33.489723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137955, 31.260321, 33.780060>,  <43.031624, 31.134039, 33.954262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.137955, 31.260321, 33.780060>,  <43.315170, 31.470791, 33.489723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.137955, 31.260321, 33.780060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880244, -0.101833, 0.463466,
		-0.169950, 0.844256, 0.508280,
		-0.443043, -0.526177, 0.725845,
		43.005043, 31.102468, 33.997814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.820400, 31.275440, 33.070774>,  <43.315170, 31.470791, 33.489723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.820400, 31.275440, 33.070774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176743, 31.406488, 32.944889>,  <44.390549, 31.485117, 32.869358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.176743, 31.406488, 32.944889>,  <43.820400, 31.275440, 33.070774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176743, 31.406488, 32.944889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265360, 0.187003, 0.945840,
		0.368728, -0.926118, 0.079656,
		0.890856, 0.327620, -0.314708,
		44.444000, 31.504774, 32.850475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458565, 30.898233, 33.392849>,  <43.820400, 31.275440, 33.070774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458565, 30.898233, 33.392849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546806, 31.274179, 33.288551>,  <44.599751, 31.499746, 33.225971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546806, 31.274179, 33.288551>,  <44.458565, 30.898233, 33.392849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546806, 31.274179, 33.288551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323828, 0.181590, 0.928526,
		0.920038, -0.289270, -0.264296,
		0.220601, 0.939866, -0.260744,
		44.612988, 31.556139, 33.210327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.083542, 31.056953, 33.550209>,  <44.458565, 30.898233, 33.392849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.083542, 31.056953, 33.550209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815983, 31.352827, 33.579731>,  <44.655449, 31.530352, 33.597446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815983, 31.352827, 33.579731>,  <45.083542, 31.056953, 33.550209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815983, 31.352827, 33.579731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174583, 0.059805, 0.982824,
		0.722564, 0.670293, -0.169140,
		-0.668896, 0.739683, 0.073809,
		44.615314, 31.574732, 33.601875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410393, 31.622437, 33.867947>,  <45.083542, 31.056953, 33.550209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410393, 31.622437, 33.867947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.013840, 31.631819, 33.919487>,  <44.775906, 31.637449, 33.950413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.013840, 31.631819, 33.919487>,  <45.410393, 31.622437, 33.867947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013840, 31.631819, 33.919487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127523, 0.397098, 0.908873,
		-0.029848, 0.917476, -0.396669,
		-0.991386, 0.023457, 0.128852,
		44.716423, 31.638855, 33.958141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194908, 32.359989, 34.080143>,  <45.410393, 31.622437, 33.867947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.194908, 32.359989, 34.080143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.924431, 32.109146, 34.234802>,  <44.762146, 31.958641, 34.327599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.924431, 32.109146, 34.234802>,  <45.194908, 32.359989, 34.080143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924431, 32.109146, 34.234802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031859, 0.499439, 0.865763,
		-0.736034, 0.597742, -0.317739,
		-0.676194, -0.627108, 0.386648,
		44.721573, 31.921013, 34.350796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899010, 32.733109, 34.500587>,  <45.194908, 32.359989, 34.080143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899010, 32.733109, 34.500587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764282, 32.372269, 34.608498>,  <44.683445, 32.155766, 34.673244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.764282, 32.372269, 34.608498>,  <44.899010, 32.733109, 34.500587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764282, 32.372269, 34.608498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114151, 0.245279, 0.962709,
		-0.934624, 0.355053, 0.020361,
		-0.336819, -0.902095, 0.269773,
		44.663235, 32.101639, 34.689430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.249756, 32.792263, 34.976440>,  <44.899010, 32.733109, 34.500587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.249756, 32.792263, 34.976440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491268, 32.475849, 35.015865>,  <44.636177, 32.286003, 35.039520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491268, 32.475849, 35.015865>,  <44.249756, 32.792263, 34.976440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491268, 32.475849, 35.015865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333145, 0.362725, 0.870313,
		-0.724197, -0.492644, 0.482536,
		0.603782, -0.791033, 0.098562,
		44.672401, 32.238541, 35.045433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156471, 32.599743, 35.590351>,  <44.249756, 32.792263, 34.976440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156471, 32.599743, 35.590351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514538, 32.459476, 35.480289>,  <44.729378, 32.375317, 35.414253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514538, 32.459476, 35.480289>,  <44.156471, 32.599743, 35.590351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514538, 32.459476, 35.480289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422357, 0.470019, 0.775046,
		-0.142453, -0.810009, 0.568852,
		0.895165, -0.350666, -0.275158,
		44.783089, 32.354275, 35.397743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388161, 32.479149, 36.217373>,  <44.156471, 32.599743, 35.590351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388161, 32.479149, 36.217373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658321, 32.562496, 35.934414>,  <44.820419, 32.612503, 35.764637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.658321, 32.562496, 35.934414>,  <44.388161, 32.479149, 36.217373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658321, 32.562496, 35.934414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444559, 0.650313, 0.616003,
		0.588383, -0.730532, 0.346595,
		0.675405, 0.208364, -0.707398,
		44.860943, 32.625004, 35.722195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137627, 32.526520, 36.423180>,  <44.388161, 32.479149, 36.217373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137627, 32.526520, 36.423180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088768, 32.769104, 36.108910>,  <45.059452, 32.914654, 35.920349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088768, 32.769104, 36.108910>,  <45.137627, 32.526520, 36.423180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088768, 32.769104, 36.108910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287297, 0.779319, 0.556887,
		0.950021, -0.157699, -0.269428,
		-0.122150, 0.606460, -0.785675,
		45.052124, 32.951042, 35.873207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838299, 32.893387, 36.303391>,  <45.137627, 32.526520, 36.423180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838299, 32.893387, 36.303391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503738, 33.077934, 36.185020>,  <45.303001, 33.188663, 36.113998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.503738, 33.077934, 36.185020>,  <45.838299, 32.893387, 36.303391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503738, 33.077934, 36.185020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309316, 0.843015, 0.440056,
		0.452498, 0.276529, -0.847807,
		-0.836403, 0.461365, -0.295928,
		45.252819, 33.216343, 36.096241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.080326, 33.461876, 35.983456>,  <45.838299, 32.893387, 36.303391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.080326, 33.461876, 35.983456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736248, 33.478634, 36.186752>,  <45.529800, 33.488689, 36.308731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.736248, 33.478634, 36.186752>,  <46.080326, 33.461876, 35.983456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.736248, 33.478634, 36.186752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323967, 0.814569, 0.481168,
		-0.393840, 0.578552, -0.714260,
		-0.860195, 0.041894, 0.508242,
		45.478191, 33.491203, 36.339226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.250111, 34.220505, 36.232990>,  <46.080326, 33.461876, 35.983456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.250111, 34.220505, 36.232990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129444, 34.446316, 35.925663>,  <46.057045, 34.581802, 35.741268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129444, 34.446316, 35.925663>,  <46.250111, 34.220505, 36.232990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129444, 34.446316, 35.925663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537368, 0.766337, 0.352085,
		0.787549, -0.306657, -0.534535,
		-0.301664, 0.564526, -0.768315,
		46.038944, 34.615673, 35.695168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.764328, 34.401497, 35.712524>,  <46.250111, 34.220505, 36.232990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.764328, 34.401497, 35.712524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489483, 34.691097, 35.736851>,  <46.324577, 34.864857, 35.751446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489483, 34.691097, 35.736851>,  <46.764328, 34.401497, 35.712524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489483, 34.691097, 35.736851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659343, 0.586203, 0.470780,
		0.305195, 0.363577, -0.880152,
		-0.687113, 0.724001, 0.060816,
		46.283348, 34.908298, 35.755096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.866295, 35.188728, 35.333588>,  <46.764328, 34.401497, 35.712524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.866295, 35.188728, 35.333588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639706, 35.196812, 35.663120>,  <46.503754, 35.201660, 35.860840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.639706, 35.196812, 35.663120>,  <46.866295, 35.188728, 35.333588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.639706, 35.196812, 35.663120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723435, 0.490951, 0.485395,
		-0.394655, 0.870953, -0.292726,
		-0.566470, 0.020205, 0.823834,
		46.469765, 35.202873, 35.910271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.460377, 34.713417, 35.143112>,  <46.866295, 35.188728, 35.333588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.460377, 34.713417, 35.143112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.780094, 34.829067, 34.932388>,  <47.971924, 34.898457, 34.805954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.780094, 34.829067, 34.932388>,  <47.460377, 34.713417, 35.143112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.780094, 34.829067, 34.932388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282220, 0.593362, 0.753839,
		0.530543, -0.751219, 0.392677,
		0.799298, 0.289123, -0.526813,
		48.019882, 34.915806, 34.774345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.651028, 35.267929, 24.941936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.363461, 35.305126, 25.217476>,  <29.190920, 35.327446, 25.382799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.363461, 35.305126, 25.217476>,  <29.651028, 35.267929, 24.941936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363461, 35.305126, 25.217476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688451, -0.041449, 0.724097,
		0.095888, 0.994804, -0.034222,
		-0.718916, 0.092992, 0.688848,
		29.147785, 35.333023, 25.424129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860632, 35.780602, 25.498228>,  <29.651028, 35.267929, 24.941936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860632, 35.780602, 25.498228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.578318, 35.561275, 25.677656>,  <29.408930, 35.429680, 25.785313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.578318, 35.561275, 25.677656>,  <29.860632, 35.780602, 25.498228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578318, 35.561275, 25.677656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592903, -0.110643, 0.797637,
		-0.387727, 0.828918, 0.403189,
		-0.705786, -0.548318, 0.448569,
		29.366583, 35.396782, 25.812227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655315, 36.068653, 26.181519>,  <29.860632, 35.780602, 25.498228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655315, 36.068653, 26.181519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.500198, 35.703518, 26.232658>,  <29.407129, 35.484436, 26.263342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.500198, 35.703518, 26.232658>,  <29.655315, 36.068653, 26.181519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500198, 35.703518, 26.232658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482546, -0.082874, 0.871941,
		-0.785346, 0.399824, 0.472624,
		-0.387791, -0.912838, 0.127849,
		29.383862, 35.429665, 26.271013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226408, 36.010204, 26.907293>,  <29.655315, 36.068653, 26.181519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226408, 36.010204, 26.907293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.340933, 35.644875, 26.791454>,  <29.409647, 35.425678, 26.721951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.340933, 35.644875, 26.791454>,  <29.226408, 36.010204, 26.907293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340933, 35.644875, 26.791454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322584, -0.192717, 0.926714,
		-0.902200, -0.358748, 0.239446,
		0.286311, -0.913324, -0.289596,
		29.426826, 35.370876, 26.704576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985178, 35.544476, 27.481899>,  <29.226408, 36.010204, 26.907293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985178, 35.544476, 27.481899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.263651, 35.336681, 27.283722>,  <29.430735, 35.212006, 27.164816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.263651, 35.336681, 27.283722>,  <28.985178, 35.544476, 27.481899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263651, 35.336681, 27.283722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301685, -0.414537, 0.858572,
		-0.651399, -0.747188, -0.131870,
		0.696179, -0.519489, -0.495444,
		29.472506, 35.180836, 27.135088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974890, 34.837799, 27.750477>,  <28.985178, 35.544476, 27.481899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974890, 34.837799, 27.750477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.330118, 34.865849, 27.568745>,  <29.543255, 34.882679, 27.459705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.330118, 34.865849, 27.568745>,  <28.974890, 34.837799, 27.750477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330118, 34.865849, 27.568745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425023, -0.501853, 0.753326,
		-0.175179, -0.862106, -0.475485,
		0.888070, 0.070125, -0.454329,
		29.596539, 34.886887, 27.432446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292322, 34.156265, 27.811970>,  <28.974890, 34.837799, 27.750477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292322, 34.156265, 27.811970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.613945, 34.374409, 27.717251>,  <29.806919, 34.505295, 27.660419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.613945, 34.374409, 27.717251>,  <29.292322, 34.156265, 27.811970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.613945, 34.374409, 27.717251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534707, -0.489160, 0.689065,
		0.259957, -0.680666, -0.684921,
		0.804059, 0.545359, -0.236796,
		29.855164, 34.538017, 27.646212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746872, 33.699482, 27.767666>,  <29.292322, 34.156265, 27.811970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746872, 33.699482, 27.767666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.948708, 34.039070, 27.830458>,  <30.069809, 34.242821, 27.868134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.948708, 34.039070, 27.830458>,  <29.746872, 33.699482, 27.767666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948708, 34.039070, 27.830458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584906, -0.469890, 0.661127,
		0.635038, -0.241780, -0.733668,
		0.504591, 0.848967, 0.156980,
		30.100084, 34.293762, 27.877552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497147, 33.584969, 27.536549>,  <29.746872, 33.699482, 27.767666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497147, 33.584969, 27.536549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.495619, 33.883224, 27.803085>,  <30.494703, 34.062176, 27.963007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.495619, 33.883224, 27.803085>,  <30.497147, 33.584969, 27.536549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495619, 33.883224, 27.803085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716407, -0.462856, 0.522040,
		0.697672, 0.479366, -0.532412,
		-0.003818, 0.745636, 0.666343,
		30.494473, 34.106915, 28.002989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190966, 33.506855, 27.731697>,  <30.497147, 33.584969, 27.536549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190966, 33.506855, 27.731697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.011688, 33.746414, 27.997160>,  <30.904121, 33.890152, 28.156437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.011688, 33.746414, 27.997160>,  <31.190966, 33.506855, 27.731697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011688, 33.746414, 27.997160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657293, -0.282389, 0.698729,
		0.605879, 0.749383, -0.267087,
		-0.448194, 0.598900, 0.663658,
		30.877230, 33.926083, 28.196257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707552, 33.820412, 28.026995>,  <31.190966, 33.506855, 27.731697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707552, 33.820412, 28.026995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.382587, 33.832623, 28.259909>,  <31.187609, 33.839951, 28.399656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.382587, 33.832623, 28.259909>,  <31.707552, 33.820412, 28.026995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382587, 33.832623, 28.259909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518087, -0.420390, 0.744888,
		0.267528, 0.906829, 0.325713,
		-0.812413, 0.030531, 0.582283,
		31.138863, 33.841782, 28.434593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936975, 34.077656, 28.665096>,  <31.707552, 33.820412, 28.026995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936975, 34.077656, 28.665096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.593044, 33.911301, 28.783575>,  <31.386686, 33.811489, 28.854662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.593044, 33.911301, 28.783575>,  <31.936975, 34.077656, 28.665096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593044, 33.911301, 28.783575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504193, -0.600092, 0.621031,
		-0.080532, 0.683321, 0.725663,
		-0.859828, -0.415887, 0.296199,
		31.335096, 33.786533, 28.872435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.938189, 34.198151, 29.339972>,  <31.936975, 34.077656, 28.665096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.938189, 34.198151, 29.339972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.711039, 33.878578, 29.260742>,  <31.574749, 33.686836, 29.213205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.711039, 33.878578, 29.260742>,  <31.938189, 34.198151, 29.339972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711039, 33.878578, 29.260742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510697, -0.530701, 0.676420,
		-0.645529, 0.282965, 0.709382,
		-0.567873, -0.798929, -0.198073,
		31.540676, 33.638901, 29.201321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867844, 33.913006, 29.911806>,  <31.938189, 34.198151, 29.339972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867844, 33.913006, 29.911806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.742710, 33.607803, 29.685547>,  <31.667629, 33.424683, 29.549791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.742710, 33.607803, 29.685547>,  <31.867844, 33.913006, 29.911806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742710, 33.607803, 29.685547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370274, -0.646391, 0.667140,
		-0.874662, -0.000740, 0.484734,
		-0.312834, -0.763006, -0.565648,
		31.648861, 33.378902, 29.515852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623560, 33.536167, 30.393957>,  <31.867844, 33.913006, 29.911806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623560, 33.536167, 30.393957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.652130, 33.268318, 30.098253>,  <31.669271, 33.107609, 29.920832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.652130, 33.268318, 30.098253>,  <31.623560, 33.536167, 30.393957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652130, 33.268318, 30.098253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245163, -0.706630, 0.663754,
		-0.966847, -0.228648, 0.113696,
		0.071425, -0.669622, -0.739259,
		31.673557, 33.067432, 29.876476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346363, 32.892582, 30.678688>,  <31.623560, 33.536167, 30.393957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346363, 32.892582, 30.678688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.580898, 32.821030, 30.362661>,  <31.721619, 32.778099, 30.173044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.580898, 32.821030, 30.362661>,  <31.346363, 32.892582, 30.678688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580898, 32.821030, 30.362661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434469, -0.753723, 0.493090,
		-0.683699, -0.632378, -0.364217,
		0.586338, -0.178884, -0.790069,
		31.756800, 32.767365, 30.125641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.310760, 32.124397, 30.556084>,  <31.346363, 32.892582, 30.678688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.310760, 32.124397, 30.556084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.653219, 32.262638, 30.402422>,  <31.858694, 32.345581, 30.310225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.653219, 32.262638, 30.402422>,  <31.310760, 32.124397, 30.556084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653219, 32.262638, 30.402422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489402, -0.780900, 0.388177,
		-0.165833, -0.520342, -0.837701,
		0.856145, 0.345600, -0.384156,
		31.910063, 32.366318, 30.287174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743126, 31.502016, 30.592165>,  <31.310760, 32.124397, 30.556084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743126, 31.502016, 30.592165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.996559, 31.793791, 30.489023>,  <32.148621, 31.968857, 30.427137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.996559, 31.793791, 30.489023>,  <31.743126, 31.502016, 30.592165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996559, 31.793791, 30.489023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758767, -0.520740, 0.391282,
		0.151141, -0.443563, -0.883407,
		0.633584, 0.729439, -0.257856,
		32.186634, 32.012623, 30.411667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208618, 31.180410, 30.119263>,  <31.743126, 31.502016, 30.592165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208618, 31.180410, 30.119263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.368336, 31.493052, 30.310953>,  <32.464165, 31.680637, 30.425968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.368336, 31.493052, 30.310953>,  <32.208618, 31.180410, 30.119263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368336, 31.493052, 30.310953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713303, -0.593226, 0.373205,
		0.575989, 0.192815, -0.794392,
		0.399294, 0.781604, 0.479227,
		32.488125, 31.727533, 30.454721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999668, 31.213472, 29.989292>,  <32.208618, 31.180410, 30.119263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999668, 31.213472, 29.989292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.947666, 31.454149, 30.304522>,  <32.916466, 31.598557, 30.493660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.947666, 31.454149, 30.304522>,  <32.999668, 31.213472, 29.989292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947666, 31.454149, 30.304522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797175, -0.409196, 0.443927,
		0.589585, 0.685947, -0.426456,
		-0.130007, 0.601693, 0.788076,
		32.908665, 31.634657, 30.540945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687817, 31.591812, 30.111380>,  <32.999668, 31.213472, 29.989292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687817, 31.591812, 30.111380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.466389, 31.625345, 30.442808>,  <33.333530, 31.645464, 30.641665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.466389, 31.625345, 30.442808>,  <33.687817, 31.591812, 30.111380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466389, 31.625345, 30.442808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798918, -0.227451, 0.556773,
		0.235134, 0.970174, 0.058937,
		-0.553573, 0.083830, 0.828571,
		33.300316, 31.650494, 30.691380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337452, 31.185188, 30.009384>,  <33.687817, 31.591812, 30.111380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337452, 31.185188, 30.009384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.720078, 31.104996, 29.924726>,  <34.949654, 31.056881, 29.873932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.720078, 31.104996, 29.924726>,  <34.337452, 31.185188, 30.009384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720078, 31.104996, 29.924726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055497, 0.587491, -0.807326,
		0.286193, 0.784004, 0.550846,
		0.956563, -0.200481, -0.211645,
		35.007046, 31.044851, 29.861233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690411, 31.827486, 29.987560>,  <34.337452, 31.185188, 30.009384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690411, 31.827486, 29.987560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.912521, 31.570646, 29.776136>,  <35.045788, 31.416542, 29.649282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.912521, 31.570646, 29.776136>,  <34.690411, 31.827486, 29.987560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912521, 31.570646, 29.776136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110157, 0.573161, -0.812005,
		0.824337, 0.509113, 0.247533,
		0.555279, -0.642098, -0.528560,
		35.079105, 31.378017, 29.617569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075848, 32.160568, 29.658745>,  <34.690411, 31.827486, 29.987560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075848, 32.160568, 29.658745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.044586, 31.837456, 29.425034>,  <35.025829, 31.643587, 29.284807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.044586, 31.837456, 29.425034>,  <35.075848, 32.160568, 29.658745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044586, 31.837456, 29.425034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203989, 0.586627, -0.783746,
		0.975848, 0.057930, -0.210628,
		-0.078157, -0.807783, -0.584276,
		35.021137, 31.595121, 29.249750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537342, 32.246502, 29.048542>,  <35.075848, 32.160568, 29.658745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537342, 32.246502, 29.048542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.266800, 31.972000, 28.941504>,  <35.104477, 31.807301, 28.877281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.266800, 31.972000, 28.941504>,  <35.537342, 32.246502, 29.048542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266800, 31.972000, 28.941504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177377, 0.504351, -0.845084,
		0.714902, -0.524109, -0.462844,
		-0.676353, -0.686250, -0.267597,
		35.063892, 31.766125, 28.861225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415936, 32.364052, 28.431841>,  <35.537342, 32.246502, 29.048542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415936, 32.364052, 28.431841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104988, 32.112656, 28.442430>,  <34.918419, 31.961819, 28.448784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104988, 32.112656, 28.442430>,  <35.415936, 32.364052, 28.431841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104988, 32.112656, 28.442430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325711, 0.366150, -0.871692,
		0.538157, -0.686247, -0.489339,
		-0.777367, -0.628490, 0.026472,
		34.871777, 31.924109, 28.450373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269291, 32.217739, 27.759031>,  <35.415936, 32.364052, 28.431841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269291, 32.217739, 27.759031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924789, 32.114468, 27.934109>,  <34.718086, 32.052505, 28.039156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.924789, 32.114468, 27.934109>,  <35.269291, 32.217739, 27.759031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924789, 32.114468, 27.934109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496847, 0.247027, -0.831938,
		0.106668, -0.933981, -0.341030,
		-0.861258, -0.258181, 0.437696,
		34.666412, 32.037014, 28.065418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944416, 32.026787, 27.216503>,  <35.269291, 32.217739, 27.759031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944416, 32.026787, 27.216503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661175, 32.086159, 27.492638>,  <34.491230, 32.121780, 27.658318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.661175, 32.086159, 27.492638>,  <34.944416, 32.026787, 27.216503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661175, 32.086159, 27.492638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680565, 0.117138, -0.723263,
		-0.188220, -0.981961, 0.018073,
		-0.708099, 0.148432, 0.690336,
		34.448746, 32.130688, 27.699738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.413525, 31.600414, 27.002651>,  <34.944416, 32.026787, 27.216503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.413525, 31.600414, 27.002651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.264057, 31.881952, 27.244305>,  <34.174377, 32.050877, 27.389296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.264057, 31.881952, 27.244305>,  <34.413525, 31.600414, 27.002651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264057, 31.881952, 27.244305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731057, 0.177400, -0.658852,
		-0.570903, -0.687844, 0.448264,
		-0.373665, 0.703846, 0.604131,
		34.151958, 32.093105, 27.425545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687199, 31.473610, 27.107342>,  <34.413525, 31.600414, 27.002651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687199, 31.473610, 27.107342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.743183, 31.856375, 27.209108>,  <33.776775, 32.086033, 27.270168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.743183, 31.856375, 27.209108>,  <33.687199, 31.473610, 27.107342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743183, 31.856375, 27.209108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729906, 0.273334, -0.626519,
		-0.669065, -0.098012, 0.736713,
		0.139963, 0.956913, 0.254418,
		33.785172, 32.143448, 27.285433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049637, 31.814648, 27.305889>,  <33.687199, 31.473610, 27.107342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049637, 31.814648, 27.305889> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.289268, 32.116154, 27.197859>,  <33.433048, 32.297058, 27.133039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.289268, 32.116154, 27.197859>,  <33.049637, 31.814648, 27.305889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289268, 32.116154, 27.197859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721907, 0.362572, -0.589400,
		-0.346348, 0.548067, 0.761358,
		0.599077, 0.753767, -0.270077,
		33.468990, 32.342285, 27.116837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614788, 32.381870, 27.216536>,  <33.049637, 31.814648, 27.305889>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614788, 32.381870, 27.216536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.930752, 32.507507, 27.005865>,  <33.120331, 32.582890, 26.879463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.930752, 32.507507, 27.005865>,  <32.614788, 32.381870, 27.216536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930752, 32.507507, 27.005865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608018, 0.512792, -0.606101,
		0.079704, 0.798994, 0.596033,
		0.789912, 0.314090, -0.526674,
		33.167725, 32.601734, 26.847862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576454, 33.215523, 27.039289>,  <32.614788, 32.381870, 27.216536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576454, 33.215523, 27.039289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.829227, 33.050282, 26.776989>,  <32.980892, 32.951138, 26.619608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.829227, 33.050282, 26.776989>,  <32.576454, 33.215523, 27.039289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829227, 33.050282, 26.776989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417776, 0.531082, -0.737167,
		0.652784, 0.739795, 0.163022,
		0.631931, -0.413104, -0.655750,
		33.018806, 32.926350, 26.580263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789799, 33.723488, 26.602831>,  <32.576454, 33.215523, 27.039289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789799, 33.723488, 26.602831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.921391, 33.416168, 26.383200>,  <33.000347, 33.231777, 26.251421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.921391, 33.416168, 26.383200>,  <32.789799, 33.723488, 26.602831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921391, 33.416168, 26.383200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366003, 0.432260, -0.824132,
		0.870524, 0.472091, -0.138993,
		0.328983, -0.768298, -0.549079,
		33.020084, 33.185680, 26.218475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252655, 33.931488, 26.045803>,  <32.789799, 33.723488, 26.602831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252655, 33.931488, 26.045803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.125221, 33.571381, 25.927130>,  <33.048759, 33.355316, 25.855927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.125221, 33.571381, 25.927130>,  <33.252655, 33.931488, 26.045803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125221, 33.571381, 25.927130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402470, 0.411850, -0.817555,
		0.858209, -0.141054, -0.493540,
		-0.318584, -0.900269, -0.296684,
		33.029648, 33.301300, 25.838125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344704, 33.854450, 25.272959>,  <33.252655, 33.931488, 26.045803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344704, 33.854450, 25.272959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.046886, 33.602848, 25.362413>,  <32.868198, 33.451889, 25.416086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.046886, 33.602848, 25.362413>,  <33.344704, 33.854450, 25.272959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046886, 33.602848, 25.362413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520473, 0.337156, -0.784496,
		0.418052, -0.700484, -0.578407,
		-0.744541, -0.629005, 0.223635,
		32.823524, 33.414146, 25.429504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086929, 33.655548, 24.654190>,  <33.344704, 33.854450, 25.272959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086929, 33.655548, 24.654190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.783428, 33.548355, 24.891672>,  <32.601330, 33.484039, 25.034161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.783428, 33.548355, 24.891672>,  <33.086929, 33.655548, 24.654190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783428, 33.548355, 24.891672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645218, 0.184092, -0.741488,
		0.089411, -0.945672, -0.312587,
		-0.758749, -0.267984, 0.593705,
		32.555805, 33.467960, 25.069784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771477, 33.316502, 24.258875>,  <33.086929, 33.655548, 24.654190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771477, 33.316502, 24.258875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.489983, 33.379681, 24.535946>,  <32.321087, 33.417587, 24.702188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.489983, 33.379681, 24.535946>,  <32.771477, 33.316502, 24.258875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489983, 33.379681, 24.535946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659076, 0.218906, -0.719513,
		-0.265275, -0.962878, -0.049956,
		-0.703739, 0.157944, 0.692680,
		32.278862, 33.427063, 24.743750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120461, 32.922211, 24.086432>,  <32.771477, 33.316502, 24.258875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120461, 32.922211, 24.086432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.005535, 33.213825, 24.334932>,  <31.936581, 33.388794, 24.484034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.005535, 33.213825, 24.334932>,  <32.120461, 32.922211, 24.086432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005535, 33.213825, 24.334932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756364, 0.225261, -0.614143,
		-0.587678, -0.646342, 0.486699,
		-0.287312, 0.729040, 0.621251,
		31.919342, 33.432537, 24.521307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370119, 32.902245, 24.139008>,  <32.120461, 32.922211, 24.086432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370119, 32.902245, 24.139008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.438284, 33.285950, 24.229147>,  <31.479183, 33.516171, 24.283232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.438284, 33.285950, 24.229147>,  <31.370119, 32.902245, 24.139008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438284, 33.285950, 24.229147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758261, 0.273710, -0.591711,
		-0.629285, -0.070039, 0.774012,
		0.170412, 0.959258, 0.225350,
		31.489408, 33.573727, 24.296751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.562618, 33.343735, 24.296747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.876274, 33.583210, 24.231392>,  <31.064466, 33.726894, 24.192179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.876274, 33.583210, 24.231392>,  <30.562618, 33.343735, 24.296747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876274, 33.583210, 24.231392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543382, 0.535184, -0.646772,
		-0.299774, 0.595941, 0.744977,
		0.784137, 0.598692, -0.163390,
		31.111515, 33.762817, 24.182375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379900, 33.991451, 24.536175>,  <30.562618, 33.343735, 24.296747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379900, 33.991451, 24.536175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.663523, 34.039284, 24.258200>,  <30.833696, 34.067982, 24.091415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.663523, 34.039284, 24.258200>,  <30.379900, 33.991451, 24.536175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.663523, 34.039284, 24.258200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650929, 0.489979, -0.579838,
		0.271167, 0.863493, 0.425262,
		0.709056, 0.119582, -0.694939,
		30.876240, 34.075157, 24.049719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218445, 34.613636, 24.344856>,  <30.379900, 33.991451, 24.536175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218445, 34.613636, 24.344856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.488384, 34.506767, 24.069698>,  <30.650347, 34.442646, 23.904604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.488384, 34.506767, 24.069698>,  <30.218445, 34.613636, 24.344856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488384, 34.506767, 24.069698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450910, 0.588626, -0.670970,
		0.584176, 0.762981, 0.276763,
		0.674847, -0.267169, -0.687897,
		30.690838, 34.426617, 23.863329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466255, 35.233589, 24.171095>,  <30.218445, 34.613636, 24.344856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466255, 35.233589, 24.171095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.553015, 34.991241, 23.864923>,  <30.605070, 34.845833, 23.681221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.553015, 34.991241, 23.864923>,  <30.466255, 35.233589, 24.171095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.553015, 34.991241, 23.864923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470156, 0.622330, -0.625826,
		0.855517, 0.495611, -0.149869,
		0.216898, -0.605867, -0.765429,
		30.618084, 34.809483, 23.635296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769037, 35.673271, 23.699894>,  <30.466255, 35.233589, 24.171095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769037, 35.673271, 23.699894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.666805, 35.342625, 23.499338>,  <30.605465, 35.144238, 23.379005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.666805, 35.342625, 23.499338>,  <30.769037, 35.673271, 23.699894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666805, 35.342625, 23.499338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629764, 0.535836, -0.562385,
		0.733536, 0.172021, -0.657520,
		-0.255581, -0.826612, -0.501388,
		30.590130, 35.094643, 23.348923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843794, 35.839489, 22.975805>,  <30.769037, 35.673271, 23.699894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843794, 35.839489, 22.975805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610725, 35.514618, 22.964022>,  <30.470884, 35.319695, 22.956951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.610725, 35.514618, 22.964022>,  <30.843794, 35.839489, 22.975805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610725, 35.514618, 22.964022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637382, 0.479159, -0.603450,
		0.504221, -0.332836, -0.796857,
		-0.582671, -0.812174, -0.029459,
		30.435925, 35.270966, 22.955185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658663, 35.729218, 22.290915>,  <30.843794, 35.839489, 22.975805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658663, 35.729218, 22.290915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.373255, 35.549652, 22.506088>,  <30.202011, 35.441914, 22.635193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.373255, 35.549652, 22.506088>,  <30.658663, 35.729218, 22.290915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373255, 35.549652, 22.506088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700002, 0.489435, -0.520049,
		-0.029827, -0.747618, -0.663459,
		-0.713518, -0.448911, 0.537932,
		30.159199, 35.414978, 22.667467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220455, 35.357639, 21.884760>,  <30.658663, 35.729218, 22.290915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220455, 35.357639, 21.884760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.010466, 35.411591, 22.220905>,  <29.884472, 35.443962, 22.422592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.010466, 35.411591, 22.220905>,  <30.220455, 35.357639, 21.884760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010466, 35.411591, 22.220905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682766, 0.522773, -0.510430,
		-0.508165, -0.841734, -0.182351,
		-0.524975, 0.134880, 0.840363,
		29.852974, 35.452053, 22.473015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607677, 35.037296, 21.714710>,  <30.220455, 35.357639, 21.884760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607677, 35.037296, 21.714710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484665, 35.281403, 22.006739>,  <29.410858, 35.427868, 22.181955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484665, 35.281403, 22.006739>,  <29.607677, 35.037296, 21.714710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484665, 35.281403, 22.006739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690034, 0.385272, -0.612714,
		-0.655194, -0.692200, 0.302622,
		-0.307529, 0.610266, 0.730070,
		29.392406, 35.464481, 22.225760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916470, 34.982727, 21.700510>,  <29.607677, 35.037296, 21.714710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916470, 34.982727, 21.700510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.958132, 35.307732, 21.929934>,  <28.983130, 35.502735, 22.067589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.958132, 35.307732, 21.929934>,  <28.916470, 34.982727, 21.700510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958132, 35.307732, 21.929934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750233, 0.442781, -0.491014,
		-0.652918, -0.379163, 0.655693,
		0.104154, 0.812514, 0.573561,
		28.989378, 35.551487, 22.102001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285347, 35.129200, 22.156612>,  <28.916470, 34.982727, 21.700510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285347, 35.129200, 22.156612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.481483, 35.466831, 22.069803>,  <28.599165, 35.669411, 22.017717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.481483, 35.466831, 22.069803>,  <28.285347, 35.129200, 22.156612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481483, 35.466831, 22.069803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785884, 0.320579, -0.528787,
		-0.376764, 0.429841, 0.820540,
		0.490343, 0.844076, -0.217023,
		28.628586, 35.720055, 22.004696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.767509, 35.547146, 22.074772>,  <28.285347, 35.129200, 22.156612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.767509, 35.547146, 22.074772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.064190, 35.761738, 21.913742>,  <28.242199, 35.890491, 21.817123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.064190, 35.761738, 21.913742>,  <27.767509, 35.547146, 22.074772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064190, 35.761738, 21.913742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628427, 0.346057, -0.696652,
		-0.234426, 0.769697, 0.593810,
		0.741703, 0.536480, -0.402574,
		28.286701, 35.922684, 21.792971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628834, 36.288395, 22.070454>,  <27.767509, 35.547146, 22.074772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628834, 36.288395, 22.070454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.886356, 36.243454, 21.767696>,  <28.040871, 36.216488, 21.586042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.886356, 36.243454, 21.767696>,  <27.628834, 36.288395, 22.070454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886356, 36.243454, 21.767696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535988, 0.639736, -0.550867,
		0.546104, 0.760338, 0.351645,
		0.643806, -0.112353, -0.756895,
		28.079498, 36.209747, 21.540628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616850, 36.937641, 21.730345>,  <27.628834, 36.288395, 22.070454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616850, 36.937641, 21.730345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.801947, 36.709858, 21.458584>,  <27.913006, 36.573189, 21.295527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.801947, 36.709858, 21.458584>,  <27.616850, 36.937641, 21.730345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801947, 36.709858, 21.458584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437784, 0.519628, -0.733711,
		0.770853, 0.636952, -0.008843,
		0.462744, -0.569454, -0.679404,
		27.940769, 36.539021, 21.254763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692690, 37.368275, 21.176344>,  <27.616850, 36.937641, 21.730345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692690, 37.368275, 21.176344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.750427, 37.005630, 21.017738>,  <27.785069, 36.788044, 20.922575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.750427, 37.005630, 21.017738>,  <27.692690, 37.368275, 21.176344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750427, 37.005630, 21.017738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360498, 0.324992, -0.874312,
		0.921524, 0.269142, -0.279922,
		0.144342, -0.906611, -0.396513,
		27.793730, 36.733646, 20.898785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183546, 37.427849, 20.674534>,  <27.692690, 37.368275, 21.176344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183546, 37.427849, 20.674534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.983143, 37.097801, 20.570101>,  <27.862902, 36.899773, 20.507441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.983143, 37.097801, 20.570101>,  <28.183546, 37.427849, 20.674534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983143, 37.097801, 20.570101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167511, 0.388427, -0.906126,
		0.849077, -0.410241, -0.332822,
		-0.501007, -0.825122, -0.261085,
		27.832840, 36.850266, 20.491776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395611, 37.282299, 20.010820>,  <28.183546, 37.427849, 20.674534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395611, 37.282299, 20.010820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.051348, 37.080597, 20.039091>,  <27.844790, 36.959576, 20.056053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.051348, 37.080597, 20.039091>,  <28.395611, 37.282299, 20.010820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051348, 37.080597, 20.039091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299669, 0.389395, -0.870960,
		0.411669, -0.770775, -0.486245,
		-0.860655, -0.504259, 0.070675,
		27.793150, 36.929321, 20.060295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304613, 37.022331, 19.396366>,  <28.395611, 37.282299, 20.010820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304613, 37.022331, 19.396366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.939156, 37.028763, 19.558844>,  <27.719881, 37.032623, 19.656330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.939156, 37.028763, 19.558844>,  <28.304613, 37.022331, 19.396366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939156, 37.028763, 19.558844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342574, 0.507486, -0.790634,
		-0.218852, -0.861510, -0.458153,
		-0.913645, 0.016081, 0.406195,
		27.665062, 37.033588, 19.680702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799355, 36.874069, 18.836296>,  <28.304613, 37.022331, 19.396366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799355, 36.874069, 18.836296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.606552, 37.050365, 19.139194>,  <27.490871, 37.156143, 19.320934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.606552, 37.050365, 19.139194>,  <27.799355, 36.874069, 18.836296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606552, 37.050365, 19.139194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413980, 0.647152, -0.640168,
		-0.772200, -0.622048, -0.129473,
		-0.482004, 0.440738, 0.757246,
		27.461950, 37.182587, 19.366369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249060, 37.040089, 18.438793>,  <27.799355, 36.874069, 18.836296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249060, 37.040089, 18.438793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.217209, 37.245525, 18.780527>,  <27.198097, 37.368786, 18.985567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.217209, 37.245525, 18.780527>,  <27.249060, 37.040089, 18.438793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217209, 37.245525, 18.780527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387814, 0.773571, -0.501186,
		-0.918292, -0.371231, 0.137580,
		-0.079628, 0.513591, 0.854333,
		27.193321, 37.399601, 19.036827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603977, 37.259190, 18.392939>,  <27.249060, 37.040089, 18.438793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603977, 37.259190, 18.392939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.773403, 37.492912, 18.669828>,  <26.875059, 37.633148, 18.835962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.773403, 37.492912, 18.669828>,  <26.603977, 37.259190, 18.392939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773403, 37.492912, 18.669828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426451, 0.802803, -0.416710,
		-0.799207, -0.118694, 0.589220,
		0.423566, 0.584311, 0.692223,
		26.900473, 37.668205, 18.877495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142725, 37.733070, 18.567303>,  <26.603977, 37.259190, 18.392939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142725, 37.733070, 18.567303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.474083, 37.916992, 18.695265>,  <26.672897, 38.027344, 18.772041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.474083, 37.916992, 18.695265>,  <26.142725, 37.733070, 18.567303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474083, 37.916992, 18.695265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313192, 0.853713, -0.416036,
		-0.464402, 0.244451, 0.851219,
		0.828397, 0.459803, 0.319906,
		26.722603, 38.054932, 18.791237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000147, 38.188122, 19.087204>,  <26.142725, 37.733070, 18.567303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000147, 38.188122, 19.087204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.322124, 38.283566, 18.869902>,  <26.515312, 38.340832, 18.739521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.322124, 38.283566, 18.869902>,  <26.000147, 38.188122, 19.087204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322124, 38.283566, 18.869902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478855, 0.801887, -0.357316,
		0.350371, 0.547761, 0.759736,
		0.804946, 0.238610, -0.543257,
		26.563608, 38.355148, 18.706924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252800, 38.968014, 19.061674>,  <26.000147, 38.188122, 19.087204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252800, 38.968014, 19.061674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.353758, 38.770695, 18.728699>,  <26.414333, 38.652306, 18.528913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.353758, 38.770695, 18.728699>,  <26.252800, 38.968014, 19.061674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353758, 38.770695, 18.728699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422237, 0.717919, -0.553451,
		0.870640, 0.491175, -0.027088,
		0.252394, -0.493294, -0.832441,
		26.429476, 38.622707, 18.478966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.796469, 38.637455, 19.696238>,  <26.252800, 38.968014, 19.061674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.796469, 38.637455, 19.696238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.443110, 38.739929, 19.853199>,  <25.231094, 38.801414, 19.947376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.443110, 38.739929, 19.853199>,  <25.796469, 38.637455, 19.696238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443110, 38.739929, 19.853199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385136, -0.080156, 0.919372,
		0.266982, 0.963299, -0.027856,
		-0.883397, 0.256184, 0.392402,
		25.178091, 38.816784, 19.970919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931360, 39.168003, 20.178259>,  <25.796469, 38.637455, 19.696238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931360, 39.168003, 20.178259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.575418, 39.020248, 20.285379>,  <25.361853, 38.931595, 20.349651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.575418, 39.020248, 20.285379>,  <25.931360, 39.168003, 20.178259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.575418, 39.020248, 20.285379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248500, 0.099864, 0.963470,
		-0.382633, 0.923896, 0.002927,
		-0.889854, -0.369383, 0.267799,
		25.308462, 38.909435, 20.365719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.723785, 39.544441, 20.731730>,  <25.931360, 39.168003, 20.178259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.723785, 39.544441, 20.731730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.499386, 39.215061, 20.765697>,  <25.364746, 39.017433, 20.786079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.499386, 39.215061, 20.765697>,  <25.723785, 39.544441, 20.731730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.499386, 39.215061, 20.765697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183389, -0.023588, 0.982757,
		-0.807246, 0.566901, 0.164244,
		-0.561001, -0.823448, 0.084922,
		25.331085, 38.968025, 20.791174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.332771, 39.569855, 21.346294>,  <25.723785, 39.544441, 20.731730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.332771, 39.569855, 21.346294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.328291, 39.177849, 21.266851>,  <25.325602, 38.942646, 21.219185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.328291, 39.177849, 21.266851>,  <25.332771, 39.569855, 21.346294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328291, 39.177849, 21.266851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102410, -0.198699, 0.974695,
		-0.994679, -0.009421, 0.102589,
		-0.011202, -0.980015, -0.198607,
		25.324930, 38.883842, 21.207270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975473, 39.182598, 21.914591>,  <25.332771, 39.569855, 21.346294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.975473, 39.182598, 21.914591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.186224, 38.898727, 21.727505>,  <25.312674, 38.728405, 21.615253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.186224, 38.898727, 21.727505>,  <24.975473, 39.182598, 21.914591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.186224, 38.898727, 21.727505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187096, -0.439952, 0.878315,
		-0.829094, -0.550271, -0.099023,
		0.526876, -0.709679, -0.467715,
		25.344288, 38.685825, 21.587191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.779068, 38.469959, 22.182343>,  <24.975473, 39.182598, 21.914591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.779068, 38.469959, 22.182343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.151249, 38.430630, 22.041155>,  <25.374557, 38.407032, 21.956442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.151249, 38.430630, 22.041155>,  <24.779068, 38.469959, 22.182343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.151249, 38.430630, 22.041155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211783, -0.641794, 0.737054,
		-0.299006, -0.760548, -0.576335,
		0.930453, -0.098326, -0.352971,
		25.430386, 38.401131, 21.935263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.025263, 37.794128, 22.373159>,  <24.779068, 38.469959, 22.182343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.025263, 37.794128, 22.373159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.382883, 37.946831, 22.279408>,  <25.597456, 38.038452, 22.223156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.382883, 37.946831, 22.279408>,  <25.025263, 37.794128, 22.373159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382883, 37.946831, 22.279408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431671, -0.594379, 0.678508,
		0.119716, -0.707796, -0.696199,
		0.894052, 0.381757, -0.234379,
		25.651098, 38.061359, 22.209093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466074, 37.268105, 22.054260>,  <25.025263, 37.794128, 22.373159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466074, 37.268105, 22.054260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.708788, 37.544876, 22.210745>,  <25.854416, 37.710938, 22.304636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.708788, 37.544876, 22.210745>,  <25.466074, 37.268105, 22.054260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.708788, 37.544876, 22.210745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514782, -0.717097, 0.469862,
		0.605648, -0.083717, -0.791317,
		0.606787, 0.691927, 0.391212,
		25.890823, 37.752453, 22.328108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115334, 36.968967, 21.987906>,  <25.466074, 37.268105, 22.054260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115334, 36.968967, 21.987906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.146538, 37.253407, 22.267405>,  <26.165260, 37.424072, 22.435104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.146538, 37.253407, 22.267405>,  <26.115334, 36.968967, 21.987906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146538, 37.253407, 22.267405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531371, -0.622687, 0.574374,
		0.843540, 0.326488, -0.426434,
		0.078008, 0.711102, 0.698748,
		26.169941, 37.466736, 22.477030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730238, 36.999180, 22.005793>,  <26.115334, 36.968967, 21.987906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730238, 36.999180, 22.005793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.628994, 37.162804, 22.356472>,  <26.568247, 37.260979, 22.566879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.628994, 37.162804, 22.356472>,  <26.730238, 36.999180, 22.005793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.628994, 37.162804, 22.356472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695102, -0.553398, 0.458894,
		0.672880, 0.725547, -0.144268,
		-0.253111, 0.409062, 0.876700,
		26.553061, 37.285522, 22.619482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358500, 37.138569, 22.391430>,  <26.730238, 36.999180, 22.005793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358500, 37.138569, 22.391430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.081734, 37.135754, 22.680208>,  <26.915674, 37.134064, 22.853476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.081734, 37.135754, 22.680208>,  <27.358500, 37.138569, 22.391430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081734, 37.135754, 22.680208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640631, -0.467108, 0.609427,
		0.332936, 0.884172, 0.327709,
		-0.691914, -0.007040, 0.721945,
		26.874159, 37.133640, 22.896791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683468, 37.375538, 23.014090>,  <27.358500, 37.138569, 22.391430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683468, 37.375538, 23.014090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.355249, 37.178738, 23.130461>,  <27.158318, 37.060658, 23.200283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.355249, 37.178738, 23.130461>,  <27.683468, 37.375538, 23.014090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355249, 37.178738, 23.130461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552700, -0.553244, 0.623253,
		-0.145687, 0.672204, 0.725891,
		-0.820548, -0.491999, 0.290927,
		27.109085, 37.031139, 23.217739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.777174, 37.261841, 23.751093>,  <27.683468, 37.375538, 23.014090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.777174, 37.261841, 23.751093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.494434, 37.007896, 23.626308>,  <27.324791, 36.855530, 23.551437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.494434, 37.007896, 23.626308>,  <27.777174, 37.261841, 23.751093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.494434, 37.007896, 23.626308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369726, -0.707570, 0.602202,
		-0.603047, 0.310326, 0.734869,
		-0.706850, -0.634856, -0.311962,
		27.282379, 36.817440, 23.532721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.384945, 36.927383, 24.409685>,  <27.777174, 37.261841, 23.751093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.384945, 36.927383, 24.409685> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.352253, 36.687759, 24.091076>,  <27.332638, 36.543983, 23.899910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.352253, 36.687759, 24.091076>,  <27.384945, 36.927383, 24.409685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.352253, 36.687759, 24.091076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418561, -0.745934, 0.518064,
		-0.904504, -0.291053, 0.311707,
		-0.081729, -0.599059, -0.796523,
		27.327734, 36.508041, 23.852119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049217, 36.345451, 24.682119>,  <27.384945, 36.927383, 24.409685>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049217, 36.345451, 24.682119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.211094, 36.197704, 24.347504>,  <27.308220, 36.109058, 24.146734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.211094, 36.197704, 24.347504>,  <27.049217, 36.345451, 24.682119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.211094, 36.197704, 24.347504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437357, -0.725205, 0.531786,
		-0.803085, -0.581074, -0.131939,
		0.404689, -0.369365, -0.836538,
		27.332500, 36.086895, 24.096542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030319, 35.681568, 24.759663>,  <27.049217, 36.345451, 24.682119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030319, 35.681568, 24.759663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.296862, 35.706772, 24.462477>,  <27.456787, 35.721893, 24.284164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.296862, 35.706772, 24.462477>,  <27.030319, 35.681568, 24.759663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296862, 35.706772, 24.462477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624980, -0.590632, 0.510444,
		-0.406656, -0.804477, -0.432952,
		0.666356, 0.063011, -0.742966,
		27.496769, 35.725674, 24.239588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219204, 34.952339, 24.518175>,  <27.030319, 35.681568, 24.759663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219204, 34.952339, 24.518175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.503939, 35.221291, 24.436991>,  <27.674780, 35.382664, 24.388281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.503939, 35.221291, 24.436991>,  <27.219204, 34.952339, 24.518175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.503939, 35.221291, 24.436991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614607, -0.456474, 0.643343,
		0.339926, -0.582695, -0.738185,
		0.711834, 0.672383, -0.202961,
		27.717489, 35.423004, 24.376102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.788595, 34.587345, 24.586151>,  <27.219204, 34.952339, 24.518175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.788595, 34.587345, 24.586151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.928810, 34.961620, 24.602184>,  <28.012939, 35.186188, 24.611805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.928810, 34.961620, 24.602184>,  <27.788595, 34.587345, 24.586151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928810, 34.961620, 24.602184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736286, -0.301778, 0.605651,
		0.578798, -0.182790, -0.794720,
		0.350536, 0.935691, 0.040082,
		28.033972, 35.242329, 24.614208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.461618, 34.583447, 24.465120>,  <27.788595, 34.587345, 24.586151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.461618, 34.583447, 24.465120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.399261, 34.918625, 24.674328>,  <28.361847, 35.119732, 24.799852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.399261, 34.918625, 24.674328>,  <28.461618, 34.583447, 24.465120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.399261, 34.918625, 24.674328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673836, -0.296943, 0.676587,
		0.722248, 0.457904, -0.518345,
		-0.155893, 0.837943, 0.523019,
		28.352493, 35.170010, 24.831234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.113703, 34.690723, 24.732386>,  <28.461618, 34.583447, 24.465120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.113703, 34.690723, 24.732386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.925596, 34.944386, 24.977890>,  <28.812733, 35.096581, 25.125193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.925596, 34.944386, 24.977890>,  <29.113703, 34.690723, 24.732386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925596, 34.944386, 24.977890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739864, -0.095822, 0.665897,
		0.481091, 0.767249, -0.424124,
		-0.470268, 0.634151, 0.613759,
		28.784515, 35.134632, 25.162018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.253471, 32.046246, 25.625097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.186874, 32.399845, 25.799829>,  <33.146915, 32.612003, 25.904669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.186874, 32.399845, 25.799829>,  <33.253471, 32.046246, 25.625097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186874, 32.399845, 25.799829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731136, -0.186572, 0.656224,
		0.661603, 0.428643, -0.615261,
		-0.166496, 0.884000, 0.436833,
		33.136925, 32.665047, 25.930880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915493, 32.532543, 25.743603>,  <33.253471, 32.046246, 25.625097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915493, 32.532543, 25.743603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.667583, 32.684799, 26.018116>,  <33.518837, 32.776154, 26.182825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.667583, 32.684799, 26.018116>,  <33.915493, 32.532543, 25.743603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667583, 32.684799, 26.018116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718454, -0.076644, 0.691339,
		0.315751, 0.921541, -0.225971,
		-0.619778, 0.380641, 0.686285,
		33.481651, 32.798992, 26.224001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276646, 32.994370, 26.162649>,  <33.915493, 32.532543, 25.743603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276646, 32.994370, 26.162649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.962032, 32.857952, 26.368584>,  <33.773266, 32.776104, 26.492144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.962032, 32.857952, 26.368584>,  <34.276646, 32.994370, 26.162649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962032, 32.857952, 26.368584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586816, -0.153032, 0.795128,
		-0.192384, 0.927509, 0.320492,
		-0.786534, -0.341040, 0.514836,
		33.726070, 32.755642, 26.523035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218536, 33.330704, 26.774450>,  <34.276646, 32.994370, 26.162649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218536, 33.330704, 26.774450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.987911, 33.016651, 26.864908>,  <33.849537, 32.828220, 26.919182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.987911, 33.016651, 26.864908>,  <34.218536, 33.330704, 26.774450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987911, 33.016651, 26.864908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527791, -0.146612, 0.836625,
		-0.623705, 0.601726, 0.498916,
		-0.576566, -0.785131, 0.226143,
		33.814941, 32.781113, 26.932751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155598, 33.408401, 27.493105>,  <34.218536, 33.330704, 26.774450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155598, 33.408401, 27.493105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.023773, 33.035118, 27.435804>,  <33.944679, 32.811150, 27.401424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.023773, 33.035118, 27.435804>,  <34.155598, 33.408401, 27.493105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023773, 33.035118, 27.435804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550139, -0.313115, 0.774149,
		-0.767293, 0.176317, 0.616582,
		-0.329557, -0.933205, -0.143252,
		33.924908, 32.755157, 27.392828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808167, 33.125565, 28.098783>,  <34.155598, 33.408401, 27.493105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808167, 33.125565, 28.098783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.920670, 32.803391, 27.890104>,  <33.988171, 32.610088, 27.764896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.920670, 32.803391, 27.890104>,  <33.808167, 33.125565, 28.098783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920670, 32.803391, 27.890104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512000, -0.333852, 0.791454,
		-0.811633, -0.489715, 0.318481,
		0.281261, -0.805433, -0.521700,
		34.005047, 32.561760, 27.733595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446205, 32.383415, 28.406435>,  <33.808167, 33.125565, 28.098783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446205, 32.383415, 28.406435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.795414, 32.338875, 28.216518>,  <34.004940, 32.312149, 28.102568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.795414, 32.338875, 28.216518>,  <33.446205, 32.383415, 28.406435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795414, 32.338875, 28.216518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353884, -0.525234, 0.773884,
		-0.335549, -0.843642, -0.419137,
		0.873025, -0.111350, -0.474793,
		34.057320, 32.305470, 28.074080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604542, 31.677683, 28.687431>,  <33.446205, 32.383415, 28.406435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604542, 31.677683, 28.687431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.933720, 31.803621, 28.498274>,  <34.131226, 31.879185, 28.384779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.933720, 31.803621, 28.498274>,  <33.604542, 31.677683, 28.687431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933720, 31.803621, 28.498274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561201, -0.580003, 0.590466,
		-0.088371, -0.751310, -0.654006,
		0.822949, 0.314848, -0.472891,
		34.180603, 31.898075, 28.356407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906944, 31.048546, 28.507521>,  <33.604542, 31.677683, 28.687431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906944, 31.048546, 28.507521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.205639, 31.313803, 28.487009>,  <34.384857, 31.472956, 28.474701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.205639, 31.313803, 28.487009>,  <33.906944, 31.048546, 28.507521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205639, 31.313803, 28.487009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565580, -0.592519, 0.573620,
		0.350006, -0.457346, -0.817515,
		0.746736, 0.663140, -0.051281,
		34.429661, 31.512745, 28.471624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432949, 30.689791, 28.512527>,  <33.906944, 31.048546, 28.507521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432949, 30.689791, 28.512527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.611351, 31.030977, 28.620993>,  <34.718391, 31.235689, 28.686071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.611351, 31.030977, 28.620993>,  <34.432949, 30.689791, 28.512527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611351, 31.030977, 28.620993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410587, -0.464188, 0.784824,
		0.795299, -0.238698, -0.557246,
		0.446002, 0.852967, 0.271162,
		34.745152, 31.286867, 28.702341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063934, 30.494188, 28.590309>,  <34.432949, 30.689791, 28.512527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063934, 30.494188, 28.590309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.038765, 30.833046, 28.801359>,  <35.023663, 31.036360, 28.927990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.038765, 30.833046, 28.801359>,  <35.063934, 30.494188, 28.590309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038765, 30.833046, 28.801359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450561, -0.447618, 0.772420,
		0.890525, 0.286332, -0.353524,
		-0.062925, 0.847143, 0.527625,
		35.019886, 31.087189, 28.959646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765461, 30.618429, 28.798855>,  <35.063934, 30.494188, 28.590309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765461, 30.618429, 28.798855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.532803, 30.818941, 29.055107>,  <35.393208, 30.939249, 29.208858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.532803, 30.818941, 29.055107>,  <35.765461, 30.618429, 28.798855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532803, 30.818941, 29.055107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431750, -0.477216, 0.765413,
		0.689404, 0.721791, 0.061143,
		-0.581647, 0.501280, 0.640629,
		35.358307, 30.969326, 29.247295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234341, 30.710869, 29.463785>,  <35.765461, 30.618429, 28.798855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234341, 30.710869, 29.463785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.858494, 30.788458, 29.576559>,  <35.632984, 30.835012, 29.644224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.858494, 30.788458, 29.576559>,  <36.234341, 30.710869, 29.463785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858494, 30.788458, 29.576559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193609, -0.378016, 0.905328,
		0.282187, 0.905250, 0.317636,
		-0.939620, 0.193974, 0.281936,
		35.576607, 30.846651, 29.661140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362988, 31.446825, 29.718447>,  <36.234341, 30.710869, 29.463785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362988, 31.446825, 29.718447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.432804, 31.697277, 30.022419>,  <36.474693, 31.847549, 30.204802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.432804, 31.697277, 30.022419>,  <36.362988, 31.446825, 29.718447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432804, 31.697277, 30.022419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637964, 0.659788, -0.397092,
		-0.750025, -0.415499, 0.514610,
		0.174542, 0.626132, 0.759930,
		36.485168, 31.885117, 30.250399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755875, 31.669943, 30.095898>,  <36.362988, 31.446825, 29.718447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755875, 31.669943, 30.095898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.047894, 31.940813, 30.059095>,  <36.223106, 32.103336, 30.037014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.047894, 31.940813, 30.059095>,  <35.755875, 31.669943, 30.095898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047894, 31.940813, 30.059095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657790, 0.659787, -0.363310,
		-0.185320, 0.325754, 0.927114,
		0.730047, 0.677175, -0.092006,
		36.266907, 32.143967, 30.031494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495888, 32.218643, 30.440166>,  <35.755875, 31.669943, 30.095898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495888, 32.218643, 30.440166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.794182, 32.362862, 30.216066>,  <35.973160, 32.449394, 30.081606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.794182, 32.362862, 30.216066>,  <35.495888, 32.218643, 30.440166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794182, 32.362862, 30.216066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618964, 0.686052, -0.382381,
		0.246494, 0.631931, 0.734782,
		0.745737, 0.360549, -0.560250,
		36.017902, 32.471027, 30.047991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493267, 32.844715, 30.661564>,  <35.495888, 32.218643, 30.440166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493267, 32.844715, 30.661564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.700253, 32.866928, 30.320004>,  <35.824444, 32.880257, 30.115067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.700253, 32.866928, 30.320004>,  <35.493267, 32.844715, 30.661564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700253, 32.866928, 30.320004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565775, 0.770851, -0.292726,
		0.641973, 0.634591, 0.430308,
		0.517464, 0.055535, -0.853901,
		35.855492, 32.883587, 30.063833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722515, 33.501781, 30.589828>,  <35.493267, 32.844715, 30.661564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722515, 33.501781, 30.589828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.755795, 33.389202, 30.207443>,  <35.775761, 33.321655, 29.978012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.755795, 33.389202, 30.207443>,  <35.722515, 33.501781, 30.589828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755795, 33.389202, 30.207443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459972, 0.840141, -0.287382,
		0.884027, 0.463625, -0.059563,
		0.083196, -0.281451, -0.955962,
		35.780754, 33.304768, 29.920654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922153, 33.994347, 30.263824>,  <35.722515, 33.501781, 30.589828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922153, 33.994347, 30.263824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.764275, 33.786659, 29.960609>,  <35.669548, 33.662048, 29.778679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.764275, 33.786659, 29.960609>,  <35.922153, 33.994347, 30.263824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764275, 33.786659, 29.960609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476010, 0.821226, -0.314645,
		0.785891, 0.236644, -0.571293,
		-0.394702, -0.519217, -0.758039,
		35.645863, 33.630894, 29.733198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991867, 34.441727, 29.676394>,  <35.922153, 33.994347, 30.263824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991867, 34.441727, 29.676394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.714436, 34.167976, 29.586435>,  <35.547977, 34.003727, 29.532461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.714436, 34.167976, 29.586435>,  <35.991867, 34.441727, 29.676394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714436, 34.167976, 29.586435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586121, 0.717616, -0.376151,
		0.418815, -0.129076, -0.898851,
		-0.693582, -0.684373, -0.224895,
		35.506363, 33.962666, 29.518967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896732, 34.516819, 28.894823>,  <35.991867, 34.441727, 29.676394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896732, 34.516819, 28.894823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.579453, 34.336777, 29.058891>,  <35.389084, 34.228752, 29.157333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.579453, 34.336777, 29.058891>,  <35.896732, 34.516819, 28.894823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579453, 34.336777, 29.058891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603733, 0.669327, -0.433023,
		-0.079635, -0.591108, -0.802652,
		-0.793199, -0.450104, 0.410173,
		35.341492, 34.201744, 29.181944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.488544, 34.404419, 28.327454>,  <35.896732, 34.516819, 28.894823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.488544, 34.404419, 28.327454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.259315, 34.401028, 28.655239>,  <35.121780, 34.398991, 28.851910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.259315, 34.401028, 28.655239>,  <35.488544, 34.404419, 28.327454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259315, 34.401028, 28.655239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638005, 0.632198, -0.439630,
		-0.514333, -0.774760, -0.367706,
		-0.573071, -0.008482, 0.819462,
		35.087395, 34.398483, 28.901077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896149, 34.183361, 28.070959>,  <35.488544, 34.404419, 28.327454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896149, 34.183361, 28.070959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.815845, 34.369919, 28.415556>,  <34.767662, 34.481853, 28.622314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.815845, 34.369919, 28.415556>,  <34.896149, 34.183361, 28.070959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815845, 34.369919, 28.415556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718119, 0.528087, -0.453243,
		-0.666334, -0.709648, 0.228907,
		-0.200760, 0.466394, 0.861494,
		34.755619, 34.509838, 28.674004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154938, 34.275692, 28.096344>,  <34.896149, 34.183361, 28.070959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154938, 34.275692, 28.096344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.281155, 34.538872, 28.369850>,  <34.356884, 34.696781, 28.533955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.281155, 34.538872, 28.369850>,  <34.154938, 34.275692, 28.096344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281155, 34.538872, 28.369850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724046, 0.632700, -0.274677,
		-0.613342, -0.408405, 0.676031,
		0.315545, 0.657948, 0.683766,
		34.375816, 34.736256, 28.574980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522503, 34.413261, 28.394976>,  <34.154938, 34.275692, 28.096344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522503, 34.413261, 28.394976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.782433, 34.707485, 28.471575>,  <33.938393, 34.884022, 28.517534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.782433, 34.707485, 28.471575>,  <33.522503, 34.413261, 28.394976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782433, 34.707485, 28.471575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663047, 0.671758, -0.330318,
		-0.371611, 0.087676, 0.924239,
		0.649826, 0.735564, 0.191499,
		33.977379, 34.928154, 28.529024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160290, 34.969654, 28.804396>,  <33.522503, 34.413261, 28.394976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160290, 34.969654, 28.804396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.481377, 35.128922, 28.626812>,  <33.674030, 35.224483, 28.520262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.481377, 35.128922, 28.626812>,  <33.160290, 34.969654, 28.804396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481377, 35.128922, 28.626812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585942, 0.665126, -0.462903,
		0.110975, 0.631716, 0.767215,
		0.802718, 0.398173, -0.443962,
		33.722191, 35.248375, 28.493624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153038, 35.855473, 28.812025>,  <33.160290, 34.969654, 28.804396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153038, 35.855473, 28.812025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.413288, 35.753719, 28.525814>,  <33.569439, 35.692665, 28.354088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.413288, 35.753719, 28.525814>,  <33.153038, 35.855473, 28.812025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413288, 35.753719, 28.525814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417872, 0.666820, -0.617036,
		0.634094, 0.700456, 0.327546,
		0.650621, -0.254387, -0.715528,
		33.608475, 35.677402, 28.311155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043861, 36.457355, 28.425913>,  <33.153038, 35.855473, 28.812025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043861, 36.457355, 28.425913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.233257, 36.209438, 28.175581>,  <33.346893, 36.060688, 28.025381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.233257, 36.209438, 28.175581>,  <33.043861, 36.457355, 28.425913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233257, 36.209438, 28.175581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314720, 0.544572, -0.777427,
		0.822653, 0.565066, 0.062789,
		0.473490, -0.619792, -0.625831,
		33.375305, 36.023502, 27.987831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519733, 36.981052, 28.586279>,  <33.043861, 36.457355, 28.425913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519733, 36.981052, 28.586279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.367680, 37.239624, 28.850895>,  <33.276447, 37.394768, 29.009665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.367680, 37.239624, 28.850895>,  <33.519733, 36.981052, 28.586279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367680, 37.239624, 28.850895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273673, -0.604596, 0.748042,
		0.883516, 0.465402, 0.052918,
		-0.380134, 0.646425, 0.661539,
		33.253639, 37.433552, 29.049356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968903, 36.811016, 29.180059>,  <33.519733, 36.981052, 28.586279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968903, 36.811016, 29.180059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.662197, 37.024754, 29.322359>,  <33.478176, 37.152996, 29.407740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.662197, 37.024754, 29.322359>,  <33.968903, 36.811016, 29.180059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662197, 37.024754, 29.322359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097532, -0.450779, 0.887291,
		0.634482, 0.715036, 0.293524,
		-0.766760, 0.534342, 0.355750,
		33.432171, 37.185055, 29.429085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196640, 36.957794, 29.864532>,  <33.968903, 36.811016, 29.180059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196640, 36.957794, 29.864532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.799664, 37.005463, 29.852844>,  <33.561478, 37.034065, 29.845831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.799664, 37.005463, 29.852844>,  <34.196640, 36.957794, 29.864532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799664, 37.005463, 29.852844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093571, -0.581008, 0.808502,
		0.079374, 0.805126, 0.587768,
		-0.992444, 0.119172, -0.029219,
		33.501930, 37.041214, 29.844078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991764, 37.231510, 30.600618>,  <34.196640, 36.957794, 29.864532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991764, 37.231510, 30.600618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.683495, 37.069950, 30.403463>,  <33.498535, 36.973015, 30.285172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.683495, 37.069950, 30.403463>,  <33.991764, 37.231510, 30.600618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683495, 37.069950, 30.403463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197339, -0.584183, 0.787266,
		-0.605909, 0.703987, 0.370507,
		-0.770669, -0.403896, -0.492886,
		33.452293, 36.948780, 30.255598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540318, 37.126324, 31.095623>,  <33.991764, 37.231510, 30.600618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540318, 37.126324, 31.095623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.364063, 36.917030, 30.803852>,  <33.258308, 36.791454, 30.628790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.364063, 36.917030, 30.803852>,  <33.540318, 37.126324, 31.095623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364063, 36.917030, 30.803852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396837, -0.615319, 0.681105,
		-0.805207, 0.589585, 0.063495,
		-0.440638, -0.523233, -0.729428,
		33.231873, 36.760059, 30.585024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808090, 37.000576, 31.369453>,  <33.540318, 37.126324, 31.095623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808090, 37.000576, 31.369453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.904446, 36.721214, 31.099874>,  <32.962257, 36.553596, 30.938128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.904446, 36.721214, 31.099874>,  <32.808090, 37.000576, 31.369453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904446, 36.721214, 31.099874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216586, -0.715568, 0.664118,
		-0.946078, -0.014010, -0.323635,
		0.240887, -0.698403, -0.673949,
		32.976711, 36.511692, 30.897690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286228, 36.539791, 31.447563>,  <32.808090, 37.000576, 31.369453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286228, 36.539791, 31.447563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.590401, 36.324562, 31.302118>,  <32.772903, 36.195423, 31.214851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.590401, 36.324562, 31.302118>,  <32.286228, 36.539791, 31.447563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590401, 36.324562, 31.302118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154641, -0.693833, 0.703336,
		-0.630733, -0.478613, -0.610824,
		0.760435, -0.538076, -0.363610,
		32.818531, 36.163139, 31.193035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022053, 35.847370, 31.418283>,  <32.286228, 36.539791, 31.447563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022053, 35.847370, 31.418283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.420616, 35.818424, 31.400656>,  <32.659752, 35.801056, 31.390079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.420616, 35.818424, 31.400656>,  <32.022053, 35.847370, 31.418283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420616, 35.818424, 31.400656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020186, -0.707901, 0.706023,
		-0.082289, -0.702595, -0.706816,
		0.996404, -0.072366, -0.044070,
		32.719536, 35.796715, 31.387434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123623, 35.225853, 31.539227>,  <32.022053, 35.847370, 31.418283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123623, 35.225853, 31.539227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.486053, 35.384941, 31.596970>,  <32.703514, 35.480392, 31.631615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.486053, 35.384941, 31.596970>,  <32.123623, 35.225853, 31.539227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486053, 35.384941, 31.596970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167923, -0.651189, 0.740104,
		0.388358, -0.646352, -0.656815,
		0.906079, 0.397720, 0.144358,
		32.757877, 35.504257, 31.640278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684330, 34.665035, 31.586903>,  <32.123623, 35.225853, 31.539227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684330, 34.665035, 31.586903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.865986, 34.977329, 31.758581>,  <32.974979, 35.164707, 31.861588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.865986, 34.977329, 31.758581>,  <32.684330, 34.665035, 31.586903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865986, 34.977329, 31.758581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388318, -0.607030, 0.693342,
		0.801852, -0.148210, -0.578851,
		0.454140, 0.780736, 0.429195,
		33.002228, 35.211552, 31.887341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301254, 34.393532, 31.825539>,  <32.684330, 34.665035, 31.586903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301254, 34.393532, 31.825539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.280720, 34.740440, 32.023613>,  <33.268398, 34.948586, 32.142456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.280720, 34.740440, 32.023613>,  <33.301254, 34.393532, 31.825539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280720, 34.740440, 32.023613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376473, -0.442451, 0.813945,
		0.925004, 0.228211, -0.303789,
		-0.051340, 0.867270, 0.495184,
		33.265316, 35.000622, 32.172169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951210, 34.463875, 32.209641>,  <33.301254, 34.393532, 31.825539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951210, 34.463875, 32.209641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.703308, 34.720619, 32.390274>,  <33.554565, 34.874664, 32.498653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.703308, 34.720619, 32.390274>,  <33.951210, 34.463875, 32.209641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703308, 34.720619, 32.390274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277785, -0.358746, 0.891144,
		0.733990, 0.677731, 0.044036,
		-0.619754, 0.641858, 0.451579,
		33.517384, 34.913177, 32.525749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.978687, 39.311905, 25.928402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665997, 39.393528, 26.164116>,  <32.478382, 39.442501, 26.305544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665997, 39.393528, 26.164116>,  <32.978687, 39.311905, 25.928402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665997, 39.393528, 26.164116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544403, -0.237598, 0.804470,
		0.304174, 0.949687, 0.074647,
		-0.781731, 0.204061, 0.589284,
		32.431477, 39.454746, 26.340900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216259, 39.773636, 26.516544>,  <32.978687, 39.311905, 25.928402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216259, 39.773636, 26.516544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883377, 39.586712, 26.635910>,  <32.683647, 39.474556, 26.707529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883377, 39.586712, 26.635910>,  <33.216259, 39.773636, 26.516544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883377, 39.586712, 26.635910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469374, -0.307257, 0.827817,
		-0.295161, 0.828982, 0.475046,
		-0.832207, -0.467313, 0.298412,
		32.633717, 39.446518, 26.725433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263405, 39.837521, 27.217617>,  <33.216259, 39.773636, 26.516544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263405, 39.837521, 27.217617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968433, 39.568001, 27.198935>,  <32.791451, 39.406288, 27.187725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968433, 39.568001, 27.198935>,  <33.263405, 39.837521, 27.217617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.968433, 39.568001, 27.198935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321903, -0.411412, 0.852713,
		-0.593776, 0.613783, 0.520288,
		-0.737433, -0.673803, -0.046708,
		32.747204, 39.365860, 27.184923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907673, 39.849133, 27.885487>,  <33.263405, 39.837521, 27.217617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907673, 39.849133, 27.885487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842621, 39.497345, 27.706560>,  <32.803589, 39.286274, 27.599205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842621, 39.497345, 27.706560>,  <32.907673, 39.849133, 27.885487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842621, 39.497345, 27.706560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303614, -0.475957, 0.825399,
		-0.938814, -0.001580, 0.344421,
		-0.162626, -0.879467, -0.447315,
		32.793835, 39.233505, 27.572365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558788, 39.450638, 28.385378>,  <32.907673, 39.849133, 27.885487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558788, 39.450638, 28.385378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705994, 39.185593, 28.124454>,  <32.794315, 39.026566, 27.967899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705994, 39.185593, 28.124454>,  <32.558788, 39.450638, 28.385378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705994, 39.185593, 28.124454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171056, -0.641325, 0.747959,
		-0.913952, -0.386839, -0.122671,
		0.368012, -0.662615, -0.652311,
		32.816399, 38.986809, 27.928761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184052, 38.907158, 28.567139>,  <32.558788, 39.450638, 28.385378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184052, 38.907158, 28.567139> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468422, 38.744331, 28.337746>,  <32.639046, 38.646633, 28.200109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468422, 38.744331, 28.337746>,  <32.184052, 38.907158, 28.567139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468422, 38.744331, 28.337746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179324, -0.683568, 0.707516,
		-0.680000, -0.605842, -0.412985,
		0.710945, -0.407052, -0.573467,
		32.681698, 38.622211, 28.165701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038284, 38.239777, 28.628710>,  <32.184052, 38.907158, 28.567139>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038284, 38.239777, 28.628710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419250, 38.255032, 28.507748>,  <32.647831, 38.264183, 28.435171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419250, 38.255032, 28.507748>,  <32.038284, 38.239777, 28.628710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419250, 38.255032, 28.507748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247894, -0.674187, 0.695716,
		-0.177345, -0.737576, -0.651560,
		0.952416, 0.038136, -0.302405,
		32.704975, 38.266472, 28.417027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219845, 37.563919, 28.558746>,  <32.038284, 38.239777, 28.628710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219845, 37.563919, 28.558746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569931, 37.754986, 28.589294>,  <32.779984, 37.869625, 28.607624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569931, 37.754986, 28.589294>,  <32.219845, 37.563919, 28.558746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569931, 37.754986, 28.589294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280325, -0.629493, 0.724676,
		0.394229, -0.612839, -0.684844,
		0.875215, 0.477668, 0.076370,
		32.832497, 37.898285, 28.612206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765591, 37.148819, 28.331818>,  <32.219845, 37.563919, 28.558746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765591, 37.148819, 28.331818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901241, 37.415794, 28.597002>,  <32.982632, 37.575981, 28.756113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901241, 37.415794, 28.597002>,  <32.765591, 37.148819, 28.331818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901241, 37.415794, 28.597002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208784, -0.740546, 0.638749,
		0.917278, -0.078204, -0.390493,
		0.339131, 0.667440, 0.662959,
		33.002979, 37.616028, 28.795889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263382, 36.933647, 27.838398>,  <32.765591, 37.148819, 28.331818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263382, 36.933647, 27.838398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276482, 36.566574, 27.680017>,  <33.284340, 36.346329, 27.584990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276482, 36.566574, 27.680017>,  <33.263382, 36.933647, 27.838398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276482, 36.566574, 27.680017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168007, 0.385474, -0.907295,
		0.985242, 0.096237, -0.141553,
		0.032750, -0.917686, -0.395953,
		33.286308, 36.291267, 27.561232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746471, 36.967419, 27.319725>,  <33.263382, 36.933647, 27.838398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746471, 36.967419, 27.319725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584938, 36.620434, 27.203499>,  <33.488018, 36.412243, 27.133764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584938, 36.620434, 27.203499>,  <33.746471, 36.967419, 27.319725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584938, 36.620434, 27.203499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133186, 0.369979, -0.919444,
		0.905086, -0.332602, -0.264943,
		-0.403833, -0.867463, -0.290565,
		33.463787, 36.360195, 27.116329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025509, 36.715599, 26.688877>,  <33.746471, 36.967419, 27.319725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025509, 36.715599, 26.688877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666786, 36.540478, 26.714397>,  <33.451553, 36.435406, 26.729710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666786, 36.540478, 26.714397>,  <34.025509, 36.715599, 26.688877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666786, 36.540478, 26.714397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272400, 0.432748, -0.859376,
		0.348626, -0.788072, -0.507348,
		-0.896804, -0.437803, 0.063804,
		33.397747, 36.409138, 26.733538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994709, 36.376968, 26.039438>,  <34.025509, 36.715599, 26.688877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994709, 36.376968, 26.039438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632896, 36.435753, 26.199549>,  <33.415810, 36.471024, 26.295614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632896, 36.435753, 26.199549>,  <33.994709, 36.376968, 26.039438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632896, 36.435753, 26.199549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317089, 0.395788, -0.861862,
		-0.285086, -0.906506, -0.311404,
		-0.904533, 0.146963, 0.400277,
		33.361538, 36.479843, 26.319632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465118, 36.003944, 25.598148>,  <33.994709, 36.376968, 26.039438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465118, 36.003944, 25.598148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270470, 36.293385, 25.793941>,  <33.153679, 36.467049, 25.911417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270470, 36.293385, 25.793941>,  <33.465118, 36.003944, 25.598148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270470, 36.293385, 25.793941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521572, 0.208838, -0.827254,
		-0.700828, -0.657862, 0.275787,
		-0.486624, 0.723605, 0.489482,
		33.124481, 36.510468, 25.940786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780518, 35.868706, 25.467955>,  <33.465118, 36.003944, 25.598148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780518, 35.868706, 25.467955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826111, 36.256870, 25.553091>,  <32.853466, 36.489769, 25.604174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826111, 36.256870, 25.553091>,  <32.780518, 35.868706, 25.467955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826111, 36.256870, 25.553091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475731, 0.241394, -0.845818,
		-0.872174, -0.004846, 0.489172,
		0.113985, 0.970415, 0.212843,
		32.860306, 36.547997, 25.616943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.202904, 36.093681, 25.086437>,  <32.780518, 35.868706, 25.467955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.202904, 36.093681, 25.086437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344467, 36.453648, 25.188339>,  <32.429405, 36.669628, 25.249481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344467, 36.453648, 25.188339>,  <32.202904, 36.093681, 25.086437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344467, 36.453648, 25.188339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558454, 0.421829, -0.714275,
		-0.750249, 0.110522, 0.651852,
		0.353913, 0.899914, 0.254755,
		32.450642, 36.723621, 25.264767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624317, 36.539047, 24.978771>,  <32.202904, 36.093681, 25.086437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624317, 36.539047, 24.978771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916941, 36.810459, 25.005358>,  <32.092514, 36.973309, 25.021311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916941, 36.810459, 25.005358>,  <31.624317, 36.539047, 24.978771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916941, 36.810459, 25.005358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397225, 0.503431, -0.767313,
		-0.554109, 0.534931, 0.637819,
		0.731557, 0.678532, 0.066468,
		32.136406, 37.014019, 25.025297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243500, 37.092613, 25.111954>,  <31.624317, 36.539047, 24.978771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243500, 37.092613, 25.111954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600058, 37.164104, 24.945353>,  <31.813992, 37.207001, 24.845392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600058, 37.164104, 24.945353>,  <31.243500, 37.092613, 25.111954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600058, 37.164104, 24.945353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450865, 0.443449, -0.774645,
		0.046246, 0.878299, 0.475870,
		0.891394, 0.178729, -0.416501,
		31.867476, 37.217724, 24.820402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148584, 37.715767, 24.863735>,  <31.243500, 37.092613, 25.111954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148584, 37.715767, 24.863735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479336, 37.593914, 24.674644>,  <31.677786, 37.520802, 24.561190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479336, 37.593914, 24.674644>,  <31.148584, 37.715767, 24.863735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479336, 37.593914, 24.674644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302692, 0.467357, -0.830635,
		0.473971, 0.829925, 0.294237,
		0.826879, -0.304634, -0.472725,
		31.727400, 37.502525, 24.532827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390333, 38.382030, 24.613783>,  <31.148584, 37.715767, 24.863735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390333, 38.382030, 24.613783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522457, 38.081142, 24.385725>,  <31.601730, 37.900608, 24.248890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522457, 38.081142, 24.385725>,  <31.390333, 38.382030, 24.613783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522457, 38.081142, 24.385725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402792, 0.433947, -0.805884,
		0.853613, 0.495839, -0.159652,
		0.330308, -0.752219, -0.570143,
		31.621550, 37.855476, 24.214682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567980, 38.657169, 24.069918>,  <31.390333, 38.382030, 24.613783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567980, 38.657169, 24.069918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553844, 38.297878, 23.894676>,  <31.545362, 38.082302, 23.789532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553844, 38.297878, 23.894676>,  <31.567980, 38.657169, 24.069918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553844, 38.297878, 23.894676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386489, 0.416553, -0.822867,
		0.921617, 0.140244, -0.361876,
		-0.035339, -0.898229, -0.438105,
		31.543243, 38.028408, 23.763245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739136, 38.834461, 23.420557>,  <31.567980, 38.657169, 24.069918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739136, 38.834461, 23.420557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575962, 38.469566, 23.405542>,  <31.478058, 38.250629, 23.396534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575962, 38.469566, 23.405542>,  <31.739136, 38.834461, 23.420557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575962, 38.469566, 23.405542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312447, 0.178113, -0.933088,
		0.857885, -0.368910, -0.357685,
		-0.407934, -0.912240, -0.037536,
		31.453581, 38.195896, 23.394281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870764, 38.578003, 22.798122>,  <31.739136, 38.834461, 23.420557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870764, 38.578003, 22.798122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548138, 38.360542, 22.890985>,  <31.354561, 38.230068, 22.946703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548138, 38.360542, 22.890985>,  <31.870764, 38.578003, 22.798122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548138, 38.360542, 22.890985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387346, 0.189373, -0.902276,
		0.446557, -0.817670, -0.363322,
		-0.806567, -0.543648, 0.232156,
		31.306168, 38.197449, 22.960632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<25.393202, 35.826447, 25.932409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.576511, 36.155602, 26.066780>,  <25.686497, 36.353092, 26.147404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.576511, 36.155602, 26.066780>,  <25.393202, 35.826447, 25.932409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.576511, 36.155602, 26.066780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638136, -0.567704, 0.520091,
		0.618682, -0.023976, -0.785275,
		0.458273, 0.822884, 0.335928,
		25.713993, 36.402466, 26.167559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153765, 35.860668, 25.718386>,  <25.393202, 35.826447, 25.932409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153765, 35.860668, 25.718386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.078836, 36.046181, 26.064753>,  <26.033880, 36.157490, 26.272573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.078836, 36.046181, 26.064753>,  <26.153765, 35.860668, 25.718386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.078836, 36.046181, 26.064753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674614, -0.580016, 0.456593,
		0.714007, 0.669690, -0.204228,
		-0.187320, 0.463786, 0.865918,
		26.022640, 36.185318, 26.324528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739456, 35.852047, 25.981298>,  <26.153765, 35.860668, 25.718386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739456, 35.852047, 25.981298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.536402, 35.968224, 26.305756>,  <26.414568, 36.037930, 26.500429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.536402, 35.968224, 26.305756>,  <26.739456, 35.852047, 25.981298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536402, 35.968224, 26.305756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764608, -0.282043, 0.579504,
		0.397087, 0.914383, -0.078896,
		-0.507637, 0.290439, 0.811141,
		26.384111, 36.055355, 26.549097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302515, 36.068188, 26.500172>,  <26.739456, 35.852047, 25.981298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302515, 36.068188, 26.500172> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.964237, 36.037102, 26.711365>,  <26.761271, 36.018452, 26.838079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.964237, 36.037102, 26.711365>,  <27.302515, 36.068188, 26.500172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.964237, 36.037102, 26.711365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523465, -0.313341, 0.792339,
		0.103865, 0.946456, 0.305669,
		-0.845693, -0.077711, 0.527982,
		26.710529, 36.013790, 26.869759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481003, 36.333549, 27.285034>,  <27.302515, 36.068188, 26.500172>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481003, 36.333549, 27.285034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.164963, 36.088585, 27.295563>,  <26.975338, 35.941605, 27.301880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.164963, 36.088585, 27.295563>,  <27.481003, 36.333549, 27.285034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.164963, 36.088585, 27.295563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330957, -0.390051, 0.859260,
		-0.515952, 0.687615, 0.510861,
		-0.790102, -0.612410, 0.026323,
		26.927933, 35.904861, 27.303459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106018, 36.530861, 27.879845>,  <27.481003, 36.333549, 27.285034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106018, 36.530861, 27.879845> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.036480, 36.146626, 27.793083>,  <26.994757, 35.916084, 27.741026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.036480, 36.146626, 27.793083>,  <27.106018, 36.530861, 27.879845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036480, 36.146626, 27.793083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390550, -0.269447, 0.880267,
		-0.904018, 0.068321, 0.422000,
		-0.173848, -0.960589, -0.216901,
		26.984325, 35.858448, 27.728012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157259, 36.382084, 28.435682>,  <27.106018, 36.530861, 27.879845>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157259, 36.382084, 28.435682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.122309, 36.029022, 28.250948>,  <27.101337, 35.817184, 28.140108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.122309, 36.029022, 28.250948>,  <27.157259, 36.382084, 28.435682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122309, 36.029022, 28.250948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532746, -0.433146, 0.727026,
		-0.841752, -0.182515, 0.508077,
		-0.087378, -0.882651, -0.461835,
		27.096096, 35.764225, 28.112398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.066919, 36.022518, 29.086876>,  <27.157259, 36.382084, 28.435682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.066919, 36.022518, 29.086876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.178396, 35.786629, 28.783678>,  <27.245281, 35.645096, 28.601759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.178396, 35.786629, 28.783678>,  <27.066919, 36.022518, 29.086876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.178396, 35.786629, 28.783678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466349, -0.606866, 0.643609,
		-0.839554, -0.532857, 0.105890,
		0.278691, -0.589726, -0.757994,
		27.262003, 35.609711, 28.556280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912689, 35.412708, 29.280804>,  <27.066919, 36.022518, 29.086876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912689, 35.412708, 29.280804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.205053, 35.354946, 29.013994>,  <27.380470, 35.320290, 28.853909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.205053, 35.354946, 29.013994>,  <26.912689, 35.412708, 29.280804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205053, 35.354946, 29.013994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548252, -0.457814, 0.699876,
		-0.406438, -0.877241, -0.255450,
		0.730909, -0.144405, -0.667023,
		27.424326, 35.311623, 28.813887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201756, 34.759785, 29.531061>,  <26.912689, 35.412708, 29.280804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201756, 34.759785, 29.531061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.463940, 34.906364, 29.266912>,  <27.621250, 34.994312, 29.108423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.463940, 34.906364, 29.266912>,  <27.201756, 34.759785, 29.531061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463940, 34.906364, 29.266912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739273, -0.490109, 0.461810,
		-0.154426, -0.790892, -0.592150,
		0.655460, 0.366445, -0.660371,
		27.660578, 35.016296, 29.068802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554407, 34.204052, 29.210522>,  <27.201756, 34.759785, 29.531061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554407, 34.204052, 29.210522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.776754, 34.534443, 29.173071>,  <27.910164, 34.732677, 29.150600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.776754, 34.534443, 29.173071>,  <27.554407, 34.204052, 29.210522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776754, 34.534443, 29.173071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739361, -0.439786, 0.509838,
		0.379941, -0.352626, -0.855161,
		0.555869, 0.825980, -0.093625,
		27.943516, 34.782238, 29.144983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.172213, 33.951027, 28.981058>,  <27.554407, 34.204052, 29.210522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.172213, 33.951027, 28.981058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.220049, 34.307034, 29.157042>,  <28.248751, 34.520638, 29.262630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.220049, 34.307034, 29.157042>,  <28.172213, 33.951027, 28.981058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220049, 34.307034, 29.157042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775012, -0.360654, 0.518927,
		0.620528, 0.278913, -0.732907,
		0.119590, 0.890020, 0.439957,
		28.255926, 34.574039, 29.289028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849100, 34.185562, 28.924665>,  <28.172213, 33.951027, 28.981058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849100, 34.185562, 28.924665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.708220, 34.358540, 29.256678>,  <28.623692, 34.462326, 29.455885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.708220, 34.358540, 29.256678>,  <28.849100, 34.185562, 28.924665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708220, 34.358540, 29.256678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838428, -0.248335, 0.485147,
		0.415922, 0.866791, -0.275106,
		-0.352203, 0.432440, 0.830030,
		28.602558, 34.488270, 29.505686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478071, 34.359306, 29.259533>,  <28.849100, 34.185562, 28.924665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478071, 34.359306, 29.259533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.202686, 34.405155, 29.545996>,  <29.037455, 34.432663, 29.717875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.202686, 34.405155, 29.545996>,  <29.478071, 34.359306, 29.259533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202686, 34.405155, 29.545996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637028, -0.376484, 0.672647,
		0.346721, 0.919305, 0.186179,
		-0.688462, 0.114620, 0.716158,
		28.996147, 34.439541, 29.760843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.260113, 34.669144, 29.103022>,  <29.478071, 34.359306, 29.259533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.260113, 34.669144, 29.103022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.444771, 34.443447, 28.829227>,  <30.555565, 34.308029, 28.664951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.444771, 34.443447, 28.829227>,  <30.260113, 34.669144, 29.103022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444771, 34.443447, 28.829227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302758, 0.625076, -0.719456,
		0.833800, 0.539366, 0.117735,
		0.461644, -0.564238, -0.684486,
		30.583263, 34.274178, 28.623882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608755, 35.158184, 28.728987>,  <30.260113, 34.669144, 29.103022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608755, 35.158184, 28.728987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.581478, 34.831554, 28.499710>,  <30.565111, 34.635574, 28.362144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.581478, 34.831554, 28.499710>,  <30.608755, 35.158184, 28.728987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.581478, 34.831554, 28.499710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387523, 0.551097, -0.738998,
		0.919334, 0.171730, -0.354024,
		-0.068193, -0.816579, -0.573192,
		30.561020, 34.586582, 28.327753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902624, 35.301189, 28.126083>,  <30.608755, 35.158184, 28.728987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902624, 35.301189, 28.126083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.658754, 34.995415, 28.042244>,  <30.512432, 34.811951, 27.991940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.658754, 34.995415, 28.042244>,  <30.902624, 35.301189, 28.126083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658754, 34.995415, 28.042244> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311768, 0.474379, -0.823265,
		0.728764, -0.436577, -0.527545,
		-0.609675, -0.764437, -0.209599,
		30.475851, 34.766083, 27.979364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912239, 35.261284, 27.344139>,  <30.902624, 35.301189, 28.126083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912239, 35.261284, 27.344139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.585772, 35.051826, 27.441849>,  <30.389891, 34.926151, 27.500475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.585772, 35.051826, 27.441849>,  <30.912239, 35.261284, 27.344139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585772, 35.051826, 27.441849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469586, 0.354770, -0.808472,
		0.336684, -0.774559, -0.535445,
		-0.816170, -0.523637, 0.244277,
		30.340921, 34.894733, 27.515131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733898, 34.959656, 26.739414>,  <30.912239, 35.261284, 27.344139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733898, 34.959656, 26.739414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.398954, 34.930454, 26.956116>,  <30.197989, 34.912933, 27.086138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.398954, 34.930454, 26.956116>,  <30.733898, 34.959656, 26.739414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398954, 34.930454, 26.956116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546623, 0.122048, -0.828437,
		-0.005639, -0.989835, -0.142106,
		-0.837360, -0.073007, 0.541755,
		30.147747, 34.908554, 27.118643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375957, 34.541641, 26.420391>,  <30.733898, 34.959656, 26.739414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375957, 34.541641, 26.420391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.101933, 34.734627, 26.638720>,  <29.937517, 34.850418, 26.769716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.101933, 34.734627, 26.638720>,  <30.375957, 34.541641, 26.420391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101933, 34.734627, 26.638720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605388, 0.039721, -0.794939,
		-0.405208, -0.875016, 0.264865,
		-0.685063, 0.482462, 0.545820,
		29.896414, 34.879364, 26.802465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762423, 34.124207, 26.393681>,  <30.375957, 34.541641, 26.420391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762423, 34.124207, 26.393681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.648445, 34.498684, 26.476004>,  <29.580059, 34.723370, 26.525398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.648445, 34.498684, 26.476004>,  <29.762423, 34.124207, 26.393681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648445, 34.498684, 26.476004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544362, 0.018678, -0.838642,
		-0.788972, -0.350999, 0.504304,
		-0.284944, 0.936190, 0.205807,
		29.562962, 34.779541, 26.537746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073326, 34.158764, 26.334047>,  <29.762423, 34.124207, 26.393681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073326, 34.158764, 26.334047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.160975, 34.547333, 26.297546>,  <29.213564, 34.780476, 26.275646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.160975, 34.547333, 26.297546>,  <29.073326, 34.158764, 26.334047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160975, 34.547333, 26.297546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750873, 0.108171, -0.651529,
		-0.623038, 0.211281, 0.753116,
		0.219121, 0.971421, -0.091251,
		29.226711, 34.838760, 26.270170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526197, 34.693630, 26.432350>,  <29.073326, 34.158764, 26.334047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526197, 34.693630, 26.432350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.776464, 34.937904, 26.238194>,  <28.926624, 35.084469, 26.121698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.776464, 34.937904, 26.238194>,  <28.526197, 34.693630, 26.432350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776464, 34.937904, 26.238194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701723, 0.168782, -0.692169,
		-0.340769, 0.773680, 0.534131,
		0.625669, 0.610681, -0.485393,
		28.964165, 35.121109, 26.092575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.144617, 35.313900, 26.222132>,  <28.526197, 34.693630, 26.432350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.144617, 35.313900, 26.222132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.453150, 35.319363, 25.967615>,  <28.638269, 35.322639, 25.814905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.453150, 35.319363, 25.967615>,  <28.144617, 35.313900, 26.222132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453150, 35.319363, 25.967615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617134, 0.260400, -0.742521,
		0.155552, 0.965404, 0.209280,
		0.771330, 0.013653, -0.636289,
		28.684549, 35.323460, 25.776728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.052526, 35.974705, 25.780632>,  <28.144617, 35.313900, 26.222132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.052526, 35.974705, 25.780632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.290745, 35.714558, 25.592016>,  <28.433676, 35.558472, 25.478848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.290745, 35.714558, 25.592016>,  <28.052526, 35.974705, 25.780632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290745, 35.714558, 25.592016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329574, 0.337504, -0.881744,
		0.732603, 0.680526, -0.013345,
		0.595545, -0.650366, -0.471539,
		28.469408, 35.519447, 25.450554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384686, 36.380657, 25.344732>,  <28.052526, 35.974705, 25.780632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384686, 36.380657, 25.344732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.412523, 36.015270, 25.184368>,  <28.429226, 35.796036, 25.088150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.412523, 36.015270, 25.184368>,  <28.384686, 36.380657, 25.344732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412523, 36.015270, 25.184368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434408, 0.334028, -0.836490,
		0.898023, 0.232372, -0.373573,
		0.069593, -0.913470, -0.400909,
		28.433401, 35.741230, 25.064095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548702, 36.438892, 24.667976>,  <28.384686, 36.380657, 25.344732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.548702, 36.438892, 24.667976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.386576, 36.073463, 24.654728>,  <28.289299, 35.854206, 24.646778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.386576, 36.073463, 24.654728>,  <28.548702, 36.438892, 24.667976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386576, 36.073463, 24.654728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425114, 0.220434, -0.877888,
		0.809318, -0.341744, -0.477720,
		-0.405318, -0.913575, -0.033122,
		28.264980, 35.799393, 24.644791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.784657, 35.992214, 24.061344>,  <28.548702, 36.438892, 24.667976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.784657, 35.992214, 24.061344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.420750, 35.852482, 24.151047>,  <28.202406, 35.768642, 24.204868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.420750, 35.852482, 24.151047>,  <28.784657, 35.992214, 24.061344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.420750, 35.852482, 24.151047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326642, 0.269035, -0.906049,
		0.256161, -0.897552, -0.358861,
		-0.909773, -0.349314, 0.224262,
		28.147820, 35.747681, 24.218323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158110, 35.563194, 23.531515>,  <28.784657, 35.992214, 24.061344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158110, 35.563194, 23.531515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.343973, 35.509853, 23.181358>,  <29.455492, 35.477848, 22.971264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.343973, 35.509853, 23.181358>,  <29.158110, 35.563194, 23.531515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343973, 35.509853, 23.181358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612311, -0.665756, 0.426433,
		-0.639664, -0.734156, -0.227694,
		0.464657, -0.133354, -0.875392,
		29.483370, 35.469849, 22.918741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204416, 34.918232, 23.364470>,  <29.158110, 35.563194, 23.531515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204416, 34.918232, 23.364470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.499973, 35.067936, 23.140339>,  <29.677307, 35.157761, 23.005861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.499973, 35.067936, 23.140339>,  <29.204416, 34.918232, 23.364470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499973, 35.067936, 23.140339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629991, -0.678733, 0.377403,
		-0.239063, -0.631861, -0.737293,
		0.738891, 0.374265, -0.560327,
		29.721642, 35.180214, 22.972240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662474, 34.270729, 23.046061>,  <29.204416, 34.918232, 23.364470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662474, 34.270729, 23.046061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.899532, 34.592117, 23.023422>,  <30.041767, 34.784950, 23.009838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.899532, 34.592117, 23.023422>,  <29.662474, 34.270729, 23.046061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899532, 34.592117, 23.023422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783780, -0.559077, 0.270412,
		0.185626, -0.204619, -0.961080,
		0.592649, 0.803470, -0.056598,
		30.077328, 34.833157, 23.006443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168062, 34.115955, 22.644928>,  <29.662474, 34.270729, 23.046061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168062, 34.115955, 22.644928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.321487, 34.423748, 22.849192>,  <30.413542, 34.608425, 22.971750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.321487, 34.423748, 22.849192>,  <30.168062, 34.115955, 22.644928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321487, 34.423748, 22.849192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733490, -0.589809, 0.337813,
		0.561134, 0.244993, -0.790637,
		0.383563, 0.769483, 0.510662,
		30.436556, 34.654594, 23.002390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893091, 34.233208, 22.512802>,  <30.168062, 34.115955, 22.644928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893091, 34.233208, 22.512802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.813210, 34.369564, 22.880260>,  <30.765282, 34.451378, 23.100735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.813210, 34.369564, 22.880260>,  <30.893091, 34.233208, 22.512802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813210, 34.369564, 22.880260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820722, -0.453974, 0.346877,
		0.535289, 0.823225, -0.189119,
		-0.199703, 0.340893, 0.918646,
		30.753298, 34.471832, 23.155853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485064, 34.095173, 22.891926>,  <30.893091, 34.233208, 22.512802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485064, 34.095173, 22.891926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.240677, 34.213039, 23.185835>,  <31.094046, 34.283760, 23.362181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.240677, 34.213039, 23.185835>,  <31.485064, 34.095173, 22.891926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240677, 34.213039, 23.185835> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671818, -0.298001, 0.678127,
		0.418786, 0.907946, -0.015895,
		-0.610965, 0.294669, 0.734773,
		31.057386, 34.301441, 23.406267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910686, 34.399422, 23.398319>,  <31.485064, 34.095173, 22.891926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910686, 34.399422, 23.398319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.575951, 34.311188, 23.598738>,  <31.375109, 34.258247, 23.718988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.575951, 34.311188, 23.598738>,  <31.910686, 34.399422, 23.398319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575951, 34.311188, 23.598738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547449, -0.339449, 0.764901,
		0.001354, 0.914395, 0.404822,
		-0.836838, -0.220583, 0.501044,
		31.324900, 34.245014, 23.749050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994917, 34.656509, 24.042578>,  <31.910686, 34.399422, 23.398319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994917, 34.656509, 24.042578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.710989, 34.378292, 24.087061>,  <31.540632, 34.211361, 24.113750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.710989, 34.378292, 24.087061>,  <31.994917, 34.656509, 24.042578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710989, 34.378292, 24.087061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418262, -0.289174, 0.861066,
		-0.566753, 0.657718, 0.496183,
		-0.709822, -0.695547, 0.111208,
		31.498043, 34.169628, 24.120424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768633, 34.766018, 24.662689>,  <31.994917, 34.656509, 24.042578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768633, 34.766018, 24.662689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.700094, 34.391666, 24.539547>,  <31.658970, 34.167057, 24.465662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.700094, 34.391666, 24.539547>,  <31.768633, 34.766018, 24.662689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700094, 34.391666, 24.539547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499942, -0.351852, 0.791365,
		-0.848939, -0.018310, 0.528174,
		-0.171349, -0.935877, -0.307855,
		31.648689, 34.110905, 24.447191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567221, 34.414406, 25.266537>,  <31.768633, 34.766018, 24.662689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567221, 34.414406, 25.266537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.671553, 34.102970, 25.038231>,  <31.734152, 33.916111, 24.901247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.671553, 34.102970, 25.038231>,  <31.567221, 34.414406, 25.266537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671553, 34.102970, 25.038231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514753, -0.388004, 0.764515,
		-0.816700, -0.493209, 0.299577,
		0.260828, -0.778587, -0.570764,
		31.749802, 33.869392, 24.867002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499556, 33.812870, 25.694448>,  <31.567221, 34.414406, 25.266537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499556, 33.812870, 25.694448> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.730440, 33.663784, 25.403820>,  <31.868971, 33.574333, 25.229443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.730440, 33.663784, 25.403820>,  <31.499556, 33.812870, 25.694448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730440, 33.663784, 25.403820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499364, -0.542892, 0.675206,
		-0.646112, -0.752561, -0.127241,
		0.577212, -0.372719, -0.726571,
		31.903605, 33.551968, 25.185848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596485, 33.092106, 25.770111>,  <31.499556, 33.812870, 25.694448>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596485, 33.092106, 25.770111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.903408, 33.188587, 25.532436>,  <32.087563, 33.246475, 25.389832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.903408, 33.188587, 25.532436>,  <31.596485, 33.092106, 25.770111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903408, 33.188587, 25.532436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627262, -0.474960, 0.617215,
		-0.133343, -0.846306, -0.515738,
		0.767308, 0.241202, -0.594189,
		32.133602, 33.260948, 25.354179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931723, 32.526665, 25.656094>,  <31.596485, 33.092106, 25.770111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931723, 32.526665, 25.656094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.227951, 32.781929, 25.571894>,  <32.405689, 32.935085, 25.521374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.227951, 32.781929, 25.571894>,  <31.931723, 32.526665, 25.656094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.227951, 32.781929, 25.571894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540117, -0.378923, 0.751459,
		0.399785, -0.670204, -0.625298,
		0.740571, 0.638156, -0.210501,
		32.450123, 32.973377, 25.508743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539181, 32.132263, 25.429575>,  <31.931723, 32.526665, 25.656094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539181, 32.132263, 25.429575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.685074, 32.478802, 25.566057>,  <32.772610, 32.686726, 25.647947>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.685074, 32.478802, 25.566057>,  <32.539181, 32.132263, 25.429575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685074, 32.478802, 25.566057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526349, -0.494116, 0.691958,
		0.768069, -0.072785, -0.636218,
		0.364730, 0.866344, 0.341205,
		32.794495, 32.738705, 25.668419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.651442, 38.012684, 22.194231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.308641, 38.068993, 22.392517>,  <31.102962, 38.102779, 22.511490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.308641, 38.068993, 22.392517>,  <31.651442, 38.012684, 22.194231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.308641, 38.068993, 22.392517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458384, 0.231276, -0.858135,
		-0.235449, -0.962650, -0.133675,
		-0.856999, 0.140773, 0.495717,
		31.051542, 38.111225, 22.541233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078537, 37.636791, 21.825911>,  <31.651442, 38.012684, 22.194231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078537, 37.636791, 21.825911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.904070, 37.917362, 22.051394>,  <30.799391, 38.085705, 22.186684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.904070, 37.917362, 22.051394>,  <31.078537, 37.636791, 21.825911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904070, 37.917362, 22.051394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445382, 0.376054, -0.812538,
		-0.781917, -0.605466, 0.148379,
		-0.436166, 0.701423, 0.563707,
		30.773220, 38.127789, 22.220505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389750, 37.392914, 21.733749>,  <31.078537, 37.636791, 21.825911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389750, 37.392914, 21.733749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.375412, 37.767059, 21.874491>,  <30.366810, 37.991547, 21.958937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.375412, 37.767059, 21.874491>,  <30.389750, 37.392914, 21.733749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375412, 37.767059, 21.874491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683944, 0.233748, -0.691073,
		-0.728653, -0.265420, 0.631361,
		-0.035845, 0.935368, 0.351854,
		30.364658, 38.047668, 21.980047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692656, 37.573452, 21.712513>,  <30.389750, 37.392914, 21.733749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692656, 37.573452, 21.712513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.873129, 37.929890, 21.732037>,  <29.981413, 38.143753, 21.743750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.873129, 37.929890, 21.732037>,  <29.692656, 37.573452, 21.712513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873129, 37.929890, 21.732037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688370, 0.382303, -0.616434,
		-0.567961, 0.244527, 0.785892,
		0.451184, 0.891095, 0.048808,
		30.008484, 38.197220, 21.746679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124569, 38.070751, 21.887457>,  <29.692656, 37.573452, 21.712513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124569, 38.070751, 21.887457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.419142, 38.291512, 21.730957>,  <29.595884, 38.423969, 21.637056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.419142, 38.291512, 21.730957>,  <29.124569, 38.070751, 21.887457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419142, 38.291512, 21.730957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640618, 0.383020, -0.665511,
		-0.217440, 0.740744, 0.635625,
		0.736430, 0.551901, -0.391250,
		29.640070, 38.457081, 21.613583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964716, 38.806274, 21.979082>,  <29.124569, 38.070751, 21.887457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964716, 38.806274, 21.979082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.212292, 38.772907, 21.666683>,  <29.360838, 38.752888, 21.479244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.212292, 38.772907, 21.666683>,  <28.964716, 38.806274, 21.979082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212292, 38.772907, 21.666683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643292, 0.516680, -0.564993,
		0.450655, 0.852106, 0.266132,
		0.618939, -0.083417, -0.780997,
		29.397974, 38.747883, 21.432384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.864252, 39.459980, 21.566772>,  <28.964716, 38.806274, 21.979082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.864252, 39.459980, 21.566772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.071310, 39.245033, 21.300455>,  <29.195545, 39.116066, 21.140665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.071310, 39.245033, 21.300455>,  <28.864252, 39.459980, 21.566772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071310, 39.245033, 21.300455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470639, 0.471023, -0.746080,
		0.714524, 0.699552, -0.009085,
		0.517643, -0.537368, -0.665794,
		29.226603, 39.083824, 21.100718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045868, 39.938240, 21.094969>,  <28.864252, 39.459980, 21.566772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.045868, 39.938240, 21.094969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.129131, 39.604889, 20.890165>,  <29.179090, 39.404877, 20.767282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.129131, 39.604889, 20.890165>,  <29.045868, 39.938240, 21.094969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129131, 39.604889, 20.890165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440818, 0.387361, -0.809710,
		0.873126, 0.394251, -0.286734,
		0.208159, -0.833377, -0.512008,
		29.191580, 39.354877, 20.736563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334990, 40.152878, 20.385773>,  <29.045868, 39.938240, 21.094969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334990, 40.152878, 20.385773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.168201, 39.789402, 20.377548>,  <29.068129, 39.571316, 20.372614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.168201, 39.789402, 20.377548>,  <29.334990, 40.152878, 20.385773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168201, 39.789402, 20.377548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445623, 0.224095, -0.866719,
		0.792183, -0.352236, -0.498373,
		-0.416972, -0.908687, -0.020560,
		29.043110, 39.516796, 20.371380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430847, 39.953926, 19.630951>,  <29.334990, 40.152878, 20.385773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430847, 39.953926, 19.630951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.154076, 39.696125, 19.761091>,  <28.988012, 39.541447, 19.839174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.154076, 39.696125, 19.761091>,  <29.430847, 39.953926, 19.630951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154076, 39.696125, 19.761091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477086, 0.069949, -0.876068,
		0.541869, -0.761397, -0.355883,
		-0.691929, -0.644501, 0.325349,
		28.946497, 39.502773, 19.858696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308245, 39.618481, 19.044392>,  <29.430847, 39.953926, 19.630951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308245, 39.618481, 19.044392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.003025, 39.532154, 19.288090>,  <28.819893, 39.480358, 19.434309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.003025, 39.532154, 19.288090>,  <29.308245, 39.618481, 19.044392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.003025, 39.532154, 19.288090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632970, 0.058765, -0.771943,
		0.130794, -0.974664, -0.181445,
		-0.763048, -0.215815, 0.609247,
		28.774111, 39.467411, 19.470863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926239, 39.122276, 18.685383>,  <29.308245, 39.618481, 19.044392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926239, 39.122276, 18.685383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.680584, 39.306221, 18.941933>,  <28.533192, 39.416588, 19.095861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.680584, 39.306221, 18.941933>,  <28.926239, 39.122276, 18.685383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.680584, 39.306221, 18.941933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694161, 0.071881, -0.716222,
		-0.375469, -0.885074, 0.275076,
		-0.614137, 0.459866, 0.641373,
		28.496344, 39.444180, 19.134344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301014, 38.830299, 18.669956>,  <28.926239, 39.122276, 18.685383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301014, 38.830299, 18.669956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.234447, 39.206261, 18.789206>,  <28.194508, 39.431839, 18.860756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.234447, 39.206261, 18.789206>,  <28.301014, 38.830299, 18.669956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234447, 39.206261, 18.789206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712289, 0.094485, -0.695497,
		-0.681872, -0.328094, 0.653762,
		-0.166417, 0.939908, 0.298125,
		28.184523, 39.488232, 18.878643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730440, 38.351025, 18.507259>,  <28.301014, 38.830299, 18.669956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730440, 38.351025, 18.507259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.389915, 38.497063, 18.657974>,  <27.185600, 38.584686, 18.748404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.389915, 38.497063, 18.657974>,  <27.730440, 38.351025, 18.507259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389915, 38.497063, 18.657974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063450, -0.784533, 0.616832,
		0.520806, 0.501210, 0.691049,
		-0.851314, 0.365097, 0.376788,
		27.134521, 38.606590, 18.771011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.828531, 38.584923, 19.146275>,  <27.730440, 38.351025, 18.507259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.828531, 38.584923, 19.146275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.463930, 38.447704, 19.055521>,  <27.245169, 38.365372, 19.001068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.463930, 38.447704, 19.055521>,  <27.828531, 38.584923, 19.146275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463930, 38.447704, 19.055521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128639, -0.761752, 0.634969,
		-0.390656, 0.549591, 0.738470,
		-0.911504, -0.343051, -0.226884,
		27.190479, 38.344788, 18.987455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.489178, 38.478172, 19.812639>,  <27.828531, 38.584923, 19.146275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.489178, 38.478172, 19.812639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.326988, 38.236515, 19.538237>,  <27.229675, 38.091522, 19.373596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.326988, 38.236515, 19.538237>,  <27.489178, 38.478172, 19.812639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326988, 38.236515, 19.538237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032908, -0.759625, 0.649528,
		-0.913515, 0.240791, 0.327888,
		-0.405472, -0.604144, -0.686005,
		27.205347, 38.055271, 19.332436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016376, 38.077732, 20.131113>,  <27.489178, 38.478172, 19.812639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016376, 38.077732, 20.131113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.056772, 37.871510, 19.790760>,  <27.081011, 37.747776, 19.586548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.056772, 37.871510, 19.790760>,  <27.016376, 38.077732, 20.131113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056772, 37.871510, 19.790760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121040, -0.842536, 0.524864,
		-0.987497, -0.155997, -0.022685,
		0.100990, -0.515556, -0.850884,
		27.087069, 37.716843, 19.535496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.655127, 37.593697, 20.322401>,  <27.016376, 38.077732, 20.131113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.655127, 37.593697, 20.322401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.895271, 37.455708, 20.033800>,  <27.039358, 37.372913, 19.860640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.895271, 37.455708, 20.033800>,  <26.655127, 37.593697, 20.322401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895271, 37.455708, 20.033800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271294, -0.760833, 0.589518,
		-0.752294, -0.549671, -0.363203,
		0.600378, -0.344956, -0.721493,
		27.075380, 37.352219, 19.817350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.502947, 36.941383, 20.298132>,  <26.655127, 37.593697, 20.322401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.502947, 36.941383, 20.298132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.864027, 36.977669, 20.129894>,  <27.080675, 36.999439, 20.028952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.864027, 36.977669, 20.129894>,  <26.502947, 36.941383, 20.298132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864027, 36.977669, 20.129894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355217, -0.708732, 0.609524,
		-0.242794, -0.699621, -0.671998,
		0.902702, 0.090717, -0.420593,
		27.134838, 37.004883, 20.003716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.712950, 36.285400, 20.257830>,  <26.502947, 36.941383, 20.298132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.712950, 36.285400, 20.257830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.051741, 36.492401, 20.209122>,  <27.255014, 36.616600, 20.179897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.051741, 36.492401, 20.209122>,  <26.712950, 36.285400, 20.257830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051741, 36.492401, 20.209122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436578, -0.546346, 0.714777,
		0.303369, -0.658560, -0.688670,
		0.846975, 0.517500, -0.121768,
		27.305834, 36.647652, 20.172592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215597, 35.733032, 20.180414>,  <26.712950, 36.285400, 20.257830>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215597, 35.733032, 20.180414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.408216, 36.068623, 20.281790>,  <27.523788, 36.269978, 20.342615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.408216, 36.068623, 20.281790>,  <27.215597, 35.733032, 20.180414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.408216, 36.068623, 20.281790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536027, -0.510722, 0.672189,
		0.693388, -0.187841, -0.695650,
		0.481549, 0.838975, 0.253441,
		27.552681, 36.320316, 20.357822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779421, 35.472652, 20.519045>,  <27.215597, 35.733032, 20.180414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779421, 35.472652, 20.519045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.804699, 35.863918, 20.598232>,  <27.819866, 36.098679, 20.645744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.804699, 35.863918, 20.598232>,  <27.779421, 35.472652, 20.519045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804699, 35.863918, 20.598232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699495, -0.184899, 0.690303,
		0.711837, 0.094852, -0.695910,
		0.063196, 0.978169, 0.197967,
		27.823658, 36.157368, 20.657621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498405, 35.749367, 20.383596>,  <27.779421, 35.472652, 20.519045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498405, 35.749367, 20.383596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.331089, 35.985683, 20.659569>,  <28.230700, 36.127472, 20.825151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.331089, 35.985683, 20.659569>,  <28.498405, 35.749367, 20.383596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331089, 35.985683, 20.659569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572867, -0.417862, 0.705134,
		0.704880, 0.690189, -0.163655,
		-0.418291, 0.590788, 0.689929,
		28.205603, 36.162918, 20.866549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067724, 36.090717, 20.728825>,  <28.498405, 35.749367, 20.383596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067724, 36.090717, 20.728825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.751257, 36.129925, 20.970301>,  <28.561377, 36.153450, 21.115187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.751257, 36.129925, 20.970301>,  <29.067724, 36.090717, 20.728825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751257, 36.129925, 20.970301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605615, -0.012170, 0.795665,
		0.085337, 0.995110, -0.049733,
		-0.791169, 0.098019, 0.603692,
		28.513906, 36.159332, 21.151409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281420, 36.539223, 21.274252>,  <29.067724, 36.090717, 20.728825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281420, 36.539223, 21.274252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.975471, 36.333961, 21.430021>,  <28.791903, 36.210804, 21.523483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.975471, 36.333961, 21.430021>,  <29.281420, 36.539223, 21.274252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975471, 36.333961, 21.430021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519870, -0.134722, 0.843555,
		-0.380409, 0.847658, 0.369817,
		-0.764869, -0.513153, 0.389422,
		28.746012, 36.180016, 21.546848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288811, 36.818130, 21.919464>,  <29.281420, 36.539223, 21.274252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288811, 36.818130, 21.919464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.092978, 36.469372, 21.923485>,  <28.975477, 36.260117, 21.925898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.092978, 36.469372, 21.923485>,  <29.288811, 36.818130, 21.919464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092978, 36.469372, 21.923485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512092, -0.278177, 0.812637,
		-0.705740, 0.403003, 0.582683,
		-0.489585, -0.871898, 0.010054,
		28.946102, 36.207802, 21.926500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321833, 36.676964, 22.611746>,  <29.288811, 36.818130, 21.919464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321833, 36.676964, 22.611746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.221453, 36.329037, 22.441835>,  <29.161224, 36.120281, 22.339890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.221453, 36.329037, 22.441835>,  <29.321833, 36.676964, 22.611746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221453, 36.329037, 22.441835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422365, -0.493234, 0.760479,
		-0.870995, 0.011432, 0.491159,
		-0.250950, -0.869822, -0.424776,
		29.146168, 36.068089, 22.314404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203104, 36.299000, 23.215338>,  <29.321833, 36.676964, 22.611746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203104, 36.299000, 23.215338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.251995, 36.047050, 22.908531>,  <29.281330, 35.895882, 22.724447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.251995, 36.047050, 22.908531>,  <29.203104, 36.299000, 23.215338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251995, 36.047050, 22.908531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636627, -0.543127, 0.547466,
		-0.761424, -0.555221, 0.334610,
		0.122229, -0.629876, -0.767018,
		29.288664, 35.858089, 22.678425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432198, 35.985420, 23.430214>,  <29.203104, 36.299000, 23.215338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432198, 35.985420, 23.430214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.135702, 35.888016, 23.680418>,  <27.957804, 35.829575, 23.830542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.135702, 35.888016, 23.680418>,  <28.432198, 35.985420, 23.430214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135702, 35.888016, 23.680418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644183, 0.519976, -0.560939,
		-0.188656, -0.818735, -0.542293,
		-0.741240, -0.243512, 0.625512,
		27.913330, 35.814960, 23.868073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.861748, 35.784317, 22.961670>,  <28.432198, 35.985420, 23.430214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.861748, 35.784317, 22.961670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.698732, 35.875381, 23.315413>,  <27.600924, 35.930019, 23.527658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.698732, 35.875381, 23.315413>,  <27.861748, 35.784317, 22.961670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.698732, 35.875381, 23.315413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792040, 0.393890, -0.466394,
		-0.454518, -0.890518, 0.019790,
		-0.407537, 0.227659, 0.884356,
		27.576471, 35.943680, 23.580719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091618, 35.659878, 22.914145>,  <27.861748, 35.784317, 22.961670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091618, 35.659878, 22.914145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.169865, 35.922009, 23.205973>,  <27.216812, 36.079288, 23.381069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.169865, 35.922009, 23.205973>,  <27.091618, 35.659878, 22.914145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169865, 35.922009, 23.205973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640148, 0.648915, -0.411242,
		-0.742930, -0.386589, 0.546446,
		0.195615, 0.655331, 0.729573,
		27.228550, 36.118607, 23.424845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.391331, 35.908279, 23.196476>,  <27.091618, 35.659878, 22.914145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.391331, 35.908279, 23.196476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.660124, 36.188763, 23.291761>,  <26.821400, 36.357052, 23.348932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.660124, 36.188763, 23.291761>,  <26.391331, 35.908279, 23.196476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.660124, 36.188763, 23.291761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673813, 0.712380, -0.196190,
		-0.307267, -0.028674, 0.951191,
		0.671984, 0.701208, 0.238212,
		26.861719, 36.399124, 23.363224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006609, 36.397961, 23.725866>,  <26.391331, 35.908279, 23.196476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006609, 36.397961, 23.725866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.316292, 36.604309, 23.579182>,  <26.502102, 36.728119, 23.491171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.316292, 36.604309, 23.579182>,  <26.006609, 36.397961, 23.725866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316292, 36.604309, 23.579182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626714, 0.705839, -0.330182,
		0.088506, 0.485451, 0.869772,
		0.774207, 0.515876, -0.366710,
		26.548553, 36.759071, 23.469168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966238, 37.155617, 23.805372>,  <26.006609, 36.397961, 23.725866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966238, 37.155617, 23.805372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.237242, 37.145321, 23.511347>,  <26.399843, 37.139145, 23.334930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.237242, 37.145321, 23.511347>,  <25.966238, 37.155617, 23.805372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237242, 37.145321, 23.511347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454086, 0.771554, -0.445544,
		0.578610, 0.635642, 0.511047,
		0.677507, -0.025738, -0.735066,
		26.440495, 37.137600, 23.290827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230234, 37.882843, 23.766577>,  <25.966238, 37.155617, 23.805372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230234, 37.882843, 23.766577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.343069, 37.715538, 23.421209>,  <26.410770, 37.615154, 23.213989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.343069, 37.715538, 23.421209>,  <26.230234, 37.882843, 23.766577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343069, 37.715538, 23.421209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357666, 0.789238, -0.499177,
		0.890226, 0.449625, 0.073036,
		0.282086, -0.418258, -0.863416,
		26.427694, 37.590061, 23.162184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.989037, 38.482735, 24.270557>,  <26.230234, 37.882843, 23.766577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.989037, 38.482735, 24.270557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.613962, 38.554131, 24.389812>,  <25.388918, 38.596970, 24.461365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.613962, 38.554131, 24.389812>,  <25.989037, 38.482735, 24.270557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613962, 38.554131, 24.389812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176579, -0.494187, 0.851234,
		0.299273, 0.850835, 0.431875,
		-0.937686, 0.178492, 0.298137,
		25.332657, 38.607677, 24.479254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.986404, 38.788425, 24.912252>,  <25.989037, 38.482735, 24.270557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.986404, 38.788425, 24.912252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.663534, 38.567879, 24.827915>,  <25.469812, 38.435551, 24.777313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.663534, 38.567879, 24.827915>,  <25.986404, 38.788425, 24.912252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.663534, 38.567879, 24.827915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236333, -0.629141, 0.740492,
		-0.540935, 0.547879, 0.638136,
		-0.807177, -0.551371, -0.210842,
		25.421381, 38.402466, 24.764662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587811, 38.681393, 25.624714>,  <25.986404, 38.788425, 24.912252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587811, 38.681393, 25.624714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.462336, 38.387653, 25.383936>,  <25.387051, 38.211411, 25.239470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.462336, 38.387653, 25.383936>,  <25.587811, 38.681393, 25.624714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462336, 38.387653, 25.383936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040828, -0.643789, 0.764113,
		-0.948648, 0.215117, 0.231930,
		-0.313687, -0.734344, -0.601946,
		25.368229, 38.167351, 25.203352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077803, 38.270531, 25.937208>,  <25.587811, 38.681393, 25.624714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077803, 38.270531, 25.937208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.201374, 38.019585, 25.651278>,  <25.275517, 37.869019, 25.479719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.201374, 38.019585, 25.651278>,  <25.077803, 38.270531, 25.937208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201374, 38.019585, 25.651278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025972, -0.756875, 0.653044,
		-0.950731, -0.183178, -0.250113,
		0.308927, -0.627365, -0.714827,
		25.294052, 37.831375, 25.436829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.691359, 37.636787, 26.096664>,  <25.077803, 38.270531, 25.937208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.691359, 37.636787, 26.096664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.998337, 37.537701, 25.860134>,  <25.182524, 37.478249, 25.718216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.998337, 37.537701, 25.860134>,  <24.691359, 37.636787, 26.096664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.998337, 37.537701, 25.860134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244725, -0.739305, 0.627325,
		-0.592569, -0.626149, -0.506753,
		0.767444, -0.247719, -0.591324,
		25.228569, 37.463387, 25.682737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615561, 37.001423, 26.166756>,  <24.691359, 37.636787, 26.096664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615561, 37.001423, 26.166756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.979715, 37.033306, 26.004354>,  <25.198208, 37.052437, 25.906914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.979715, 37.033306, 26.004354>,  <24.615561, 37.001423, 26.166756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979715, 37.033306, 26.004354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298777, -0.805458, 0.511829,
		-0.286226, -0.587268, -0.757094,
		0.910389, 0.079703, -0.406005,
		25.252832, 37.057217, 25.882553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793568, 36.348087, 26.072981>,  <24.615561, 37.001423, 26.166756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793568, 36.348087, 26.072981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.133539, 36.558838, 26.074814>,  <25.337523, 36.685287, 26.075912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.133539, 36.558838, 26.074814>,  <24.793568, 36.348087, 26.072981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133539, 36.558838, 26.074814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455680, -0.739386, 0.495645,
		0.264531, -0.419175, -0.868513,
		0.849929, 0.526877, 0.004581,
		25.388517, 36.716900, 26.076189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.351816, 41.812241, 21.827065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449408, 41.472279, 21.640247>,  <27.507963, 41.268299, 21.528158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449408, 41.472279, 21.640247>,  <27.351816, 41.812241, 21.827065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449408, 41.472279, 21.640247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574214, -0.261494, 0.775822,
		-0.781507, -0.457466, 0.424231,
		0.243978, -0.849910, -0.467042,
		27.522600, 41.217304, 21.500135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.378609, 41.295181, 22.400230>,  <27.351816, 41.812241, 21.827065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.378609, 41.295181, 22.400230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580267, 41.117676, 22.103876>,  <27.701262, 41.011173, 21.926064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580267, 41.117676, 22.103876>,  <27.378609, 41.295181, 22.400230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580267, 41.117676, 22.103876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609875, -0.424468, 0.669238,
		-0.611464, -0.789242, 0.056645,
		0.504146, -0.443762, -0.740886,
		27.731510, 40.984547, 21.881611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.368824, 40.635067, 22.596272>,  <27.378609, 41.295181, 22.400230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.368824, 40.635067, 22.596272> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686756, 40.682674, 22.358253>,  <27.877516, 40.711239, 22.215443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.686756, 40.682674, 22.358253>,  <27.368824, 40.635067, 22.596272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.686756, 40.682674, 22.358253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599829, -0.302622, 0.740692,
		-0.091921, -0.945651, -0.311922,
		0.794831, 0.119014, -0.595046,
		27.925205, 40.718380, 22.179739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748575, 40.129055, 22.884991>,  <27.368824, 40.635067, 22.596272>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748575, 40.129055, 22.884991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.003025, 40.333740, 22.653994>,  <28.155695, 40.456551, 22.515396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.003025, 40.333740, 22.653994>,  <27.748575, 40.129055, 22.884991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003025, 40.333740, 22.653994> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734639, -0.172848, 0.656071,
		0.235901, -0.841591, -0.485876,
		0.636126, 0.511711, -0.577491,
		28.193863, 40.487255, 22.480747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326340, 39.610794, 22.799591>,  <27.748575, 40.129055, 22.884991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326340, 39.610794, 22.799591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.481279, 39.974663, 22.739656>,  <28.574244, 40.192986, 22.703695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.481279, 39.974663, 22.739656>,  <28.326340, 39.610794, 22.799591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481279, 39.974663, 22.739656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689424, -0.177906, 0.702171,
		0.612091, -0.375286, -0.696064,
		0.387349, 0.909676, -0.149836,
		28.597485, 40.247566, 22.694706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050457, 39.523014, 22.646143>,  <28.326340, 39.610794, 22.799591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050457, 39.523014, 22.646143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.023439, 39.897808, 22.783249>,  <29.007229, 40.122684, 22.865513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.023439, 39.897808, 22.783249>,  <29.050457, 39.523014, 22.646143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.023439, 39.897808, 22.783249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761494, -0.173561, 0.624502,
		0.644643, 0.303196, -0.701788,
		-0.067543, 0.936989, 0.342767,
		29.003176, 40.178905, 22.886080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716908, 39.695564, 22.752005>,  <29.050457, 39.523014, 22.646143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716908, 39.695564, 22.752005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541353, 40.000420, 22.942381>,  <29.436020, 40.183334, 23.056606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.541353, 40.000420, 22.942381>,  <29.716908, 39.695564, 22.752005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541353, 40.000420, 22.942381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601584, -0.144214, 0.785684,
		0.667439, 0.631145, -0.395198,
		-0.438887, 0.762141, 0.475941,
		29.409687, 40.229061, 23.085163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.155968, 40.288109, 22.919132>,  <29.716908, 39.695564, 22.752005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.155968, 40.288109, 22.919132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860998, 40.305534, 23.188742>,  <29.684017, 40.315990, 23.350508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860998, 40.305534, 23.188742>,  <30.155968, 40.288109, 22.919132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860998, 40.305534, 23.188742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672895, -0.039000, 0.738709,
		0.058465, 0.998289, -0.000552,
		-0.737424, 0.043560, 0.674024,
		29.639771, 40.318604, 23.390949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391264, 40.800995, 23.369781>,  <30.155968, 40.288109, 22.919132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391264, 40.800995, 23.369781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.126276, 40.574799, 23.566294>,  <29.967283, 40.439079, 23.684200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.126276, 40.574799, 23.566294>,  <30.391264, 40.800995, 23.369781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126276, 40.574799, 23.566294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638632, -0.083581, 0.764960,
		-0.391516, 0.820509, 0.416510,
		-0.662468, -0.565491, 0.491280,
		29.927536, 40.405151, 23.713678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.318981, 41.005665, 24.034090>,  <30.391264, 40.800995, 23.369781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.318981, 41.005665, 24.034090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.181139, 40.630520, 24.050348>,  <30.098433, 40.405434, 24.060102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.181139, 40.630520, 24.050348>,  <30.318981, 41.005665, 24.034090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181139, 40.630520, 24.050348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613812, -0.192356, 0.765659,
		-0.710268, 0.288800, 0.641961,
		-0.344608, -0.937866, 0.040645,
		30.077757, 40.349159, 24.062542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101233, 41.031822, 24.721573>,  <30.318981, 41.005665, 24.034090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101233, 41.031822, 24.721573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.130793, 40.647209, 24.615742>,  <30.148529, 40.416443, 24.552244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.130793, 40.647209, 24.615742>,  <30.101233, 41.031822, 24.721573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.130793, 40.647209, 24.615742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484667, -0.197236, 0.852172,
		-0.871572, -0.191206, 0.451446,
		0.073899, -0.961529, -0.264576,
		30.152962, 40.358749, 24.536369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829596, 40.642757, 25.343155>,  <30.101233, 41.031822, 24.721573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829596, 40.642757, 25.343155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.069792, 40.406101, 25.127983>,  <30.213909, 40.264107, 24.998880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.069792, 40.406101, 25.127983>,  <29.829596, 40.642757, 25.343155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069792, 40.406101, 25.127983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457023, -0.298079, 0.838021,
		-0.656155, -0.749070, 0.091402,
		0.600491, -0.591644, -0.537928,
		30.249939, 40.228607, 24.966604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289736, 40.538937, 25.833984>,  <29.829596, 40.642757, 25.343155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289736, 40.538937, 25.833984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256626, 40.861031, 26.068842>,  <29.236761, 41.054287, 26.209757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.256626, 40.861031, 26.068842>,  <29.289736, 40.538937, 25.833984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.256626, 40.861031, 26.068842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640591, 0.408332, -0.650314,
		-0.763408, -0.429948, 0.482030,
		-0.082773, 0.805239, 0.587145,
		29.231794, 41.102604, 26.244986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563086, 40.672291, 25.799183>,  <29.289736, 40.538937, 25.833984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563086, 40.672291, 25.799183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713171, 41.017368, 25.934816>,  <28.803223, 41.224415, 26.016197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.713171, 41.017368, 25.934816>,  <28.563086, 40.672291, 25.799183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713171, 41.017368, 25.934816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642139, 0.505728, -0.576105,
		-0.668486, -0.001578, 0.743723,
		0.375212, 0.862691, 0.339086,
		28.825735, 41.276176, 26.036543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.999458, 41.169971, 26.075544>,  <28.563086, 40.672291, 25.799183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.999458, 41.169971, 26.075544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295065, 41.427555, 25.996378>,  <28.472429, 41.582104, 25.948877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.295065, 41.427555, 25.996378>,  <27.999458, 41.169971, 26.075544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295065, 41.427555, 25.996378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633126, 0.563477, -0.530702,
		-0.230228, 0.517505, 0.824126,
		0.739017, 0.643958, -0.197918,
		28.516769, 41.620743, 25.937002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683847, 41.814960, 26.088877>,  <27.999458, 41.169971, 26.075544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683847, 41.814960, 26.088877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015074, 41.850616, 25.867477>,  <28.213810, 41.872009, 25.734638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.015074, 41.850616, 25.867477>,  <27.683847, 41.814960, 26.088877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015074, 41.850616, 25.867477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507558, 0.538495, -0.672612,
		0.238096, 0.837900, 0.491156,
		0.828067, 0.089144, -0.553497,
		28.263494, 41.877361, 25.701427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725868, 42.585770, 25.890741>,  <27.683847, 41.814960, 26.088877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725868, 42.585770, 25.890741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.942041, 42.381195, 25.623501>,  <28.071745, 42.258450, 25.463156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.942041, 42.381195, 25.623501>,  <27.725868, 42.585770, 25.890741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942041, 42.381195, 25.623501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485219, 0.459264, -0.744069,
		0.687382, 0.726296, 0.000042,
		0.540434, -0.511439, -0.668103,
		28.104172, 42.227764, 25.423071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815630, 43.079018, 25.332939>,  <27.725868, 42.585770, 25.890741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815630, 43.079018, 25.332939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906218, 42.719975, 25.181673>,  <27.960571, 42.504547, 25.090914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.906218, 42.719975, 25.181673>,  <27.815630, 43.079018, 25.332939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.906218, 42.719975, 25.181673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464149, 0.241880, -0.852091,
		0.856315, 0.368499, -0.361846,
		0.226471, -0.897609, -0.378164,
		27.974159, 42.450691, 25.068224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084141, 43.200684, 24.598845>,  <27.815630, 43.079018, 25.332939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084141, 43.200684, 24.598845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.965450, 42.819084, 24.616024>,  <27.894236, 42.590126, 24.626331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.965450, 42.819084, 24.616024>,  <28.084141, 43.200684, 24.598845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.965450, 42.819084, 24.616024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497290, 0.115969, -0.859799,
		0.815265, -0.276482, -0.508824,
		-0.296726, -0.953996, 0.042946,
		27.876432, 42.532887, 24.628908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257877, 42.941902, 23.929522>,  <28.084141, 43.200684, 24.598845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257877, 42.941902, 23.929522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.985249, 42.700161, 24.094551>,  <27.821671, 42.555119, 24.193569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.985249, 42.700161, 24.094551>,  <28.257877, 42.941902, 23.929522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985249, 42.700161, 24.094551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528218, 0.016151, -0.848955,
		0.506404, -0.796554, -0.330237,
		-0.681573, -0.604351, 0.412575,
		27.780777, 42.518856, 24.218323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085569, 42.488132, 23.406708>,  <28.257877, 42.941902, 23.929522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085569, 42.488132, 23.406708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.796988, 42.442429, 23.679895>,  <27.623838, 42.415005, 23.843807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.796988, 42.442429, 23.679895>,  <28.085569, 42.488132, 23.406708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796988, 42.442429, 23.679895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667787, -0.146131, -0.729867,
		0.183200, -0.982644, 0.029123,
		-0.721456, -0.114264, 0.682968,
		27.580551, 42.408150, 23.884787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660051, 42.108341, 23.070778>,  <28.085569, 42.488132, 23.406708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660051, 42.108341, 23.070778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.428944, 42.257576, 23.361155>,  <27.290279, 42.347118, 23.535381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.428944, 42.257576, 23.361155>,  <27.660051, 42.108341, 23.070778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428944, 42.257576, 23.361155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790267, -0.033287, -0.611857,
		-0.204114, -0.927198, 0.314073,
		-0.577767, 0.373090, 0.725940,
		27.255613, 42.369503, 23.578938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.981369, 41.688900, 23.209373>,  <27.660051, 42.108341, 23.070778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.981369, 41.688900, 23.209373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.928900, 42.063511, 23.339424>,  <26.897419, 42.288277, 23.417454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.928900, 42.063511, 23.339424>,  <26.981369, 41.688900, 23.209373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.928900, 42.063511, 23.339424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770880, 0.109852, -0.627437,
		-0.623329, -0.332935, 0.707542,
		-0.131171, 0.936529, 0.325126,
		26.889549, 42.344471, 23.436962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351366, 41.780376, 23.047127>,  <26.981369, 41.688900, 23.209373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351366, 41.780376, 23.047127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.424438, 42.165237, 23.128019>,  <26.468283, 42.396152, 23.176554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.424438, 42.165237, 23.128019>,  <26.351366, 41.780376, 23.047127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424438, 42.165237, 23.128019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763743, 0.268405, -0.587074,
		-0.619132, -0.047204, 0.783867,
		0.182682, 0.962149, 0.202230,
		26.479242, 42.453880, 23.188688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749203, 42.036533, 23.260427>,  <26.351366, 41.780376, 23.047127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749203, 42.036533, 23.260427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.936619, 42.363708, 23.126894>,  <26.049068, 42.560013, 23.046774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.936619, 42.363708, 23.126894>,  <25.749203, 42.036533, 23.260427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.936619, 42.363708, 23.126894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726953, 0.142234, -0.671795,
		-0.502004, 0.557447, 0.661245,
		0.468542, 0.817938, -0.333836,
		26.077181, 42.609089, 23.026743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.196711, 41.570866, 23.111513>,  <25.749203, 42.036533, 23.260427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.196711, 41.570866, 23.111513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.039930, 41.326237, 22.836601>,  <24.945862, 41.179459, 22.671654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.039930, 41.326237, 22.836601>,  <25.196711, 41.570866, 23.111513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.039930, 41.326237, 22.836601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135339, -0.777255, 0.614458,
		-0.909978, 0.147820, 0.387414,
		-0.391949, -0.611575, -0.687279,
		24.922346, 41.142765, 22.630417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.766798, 41.242138, 23.482168>,  <25.196711, 41.570866, 23.111513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.766798, 41.242138, 23.482168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.790100, 41.012947, 23.155169>,  <24.804081, 40.875431, 22.958969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.790100, 41.012947, 23.155169>,  <24.766798, 41.242138, 23.482168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.790100, 41.012947, 23.155169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034855, -0.817223, 0.575267,
		-0.997693, -0.062006, -0.027636,
		0.058255, -0.572976, -0.817499,
		24.807577, 40.841053, 22.909920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.217997, 40.798279, 23.559877>,  <24.766798, 41.242138, 23.482168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.217997, 40.798279, 23.559877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.474855, 40.615463, 23.313704>,  <24.628971, 40.505772, 23.166000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.474855, 40.615463, 23.313704>,  <24.217997, 40.798279, 23.559877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.474855, 40.615463, 23.313704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129557, -0.855985, 0.500505,
		-0.755553, -0.241665, -0.608882,
		0.642149, -0.457043, -0.615432,
		24.667500, 40.478352, 23.129074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.858118, 40.091309, 23.372059>,  <24.217997, 40.798279, 23.559877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.858118, 40.091309, 23.372059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.250017, 40.056335, 23.299999>,  <24.485157, 40.035351, 23.256763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.250017, 40.056335, 23.299999>,  <23.858118, 40.091309, 23.372059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.250017, 40.056335, 23.299999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025340, -0.946548, 0.321568,
		-0.198637, -0.310490, -0.929591,
		0.979746, -0.087431, -0.180151,
		24.543941, 40.030106, 23.245955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.899586, 39.525253, 23.021379>,  <23.858118, 40.091309, 23.372059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.899586, 39.525253, 23.021379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.278105, 39.578621, 23.139175>,  <24.505217, 39.610641, 23.209854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.278105, 39.578621, 23.139175>,  <23.899586, 39.525253, 23.021379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.278105, 39.578621, 23.139175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002464, -0.907881, 0.419220,
		0.323294, -0.397432, -0.858795,
		0.946296, 0.133415, 0.294491,
		24.561993, 39.618645, 23.227522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.248446, 38.938416, 23.001642>,  <23.899586, 39.525253, 23.021379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.248446, 38.938416, 23.001642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.502666, 39.123501, 23.248856>,  <24.655199, 39.234554, 23.397184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.502666, 39.123501, 23.248856>,  <24.248446, 38.938416, 23.001642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.502666, 39.123501, 23.248856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129743, -0.853128, 0.505310,
		0.761079, -0.240965, -0.602241,
		0.635551, 0.462718, 0.618035,
		24.693333, 39.262318, 23.434265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.891813, 38.493366, 23.076361>,  <24.248446, 38.938416, 23.001642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.891813, 38.493366, 23.076361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.849419, 38.725750, 23.399160>,  <24.823982, 38.865181, 23.592840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.849419, 38.725750, 23.399160>,  <24.891813, 38.493366, 23.076361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.849419, 38.725750, 23.399160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211866, -0.779741, 0.589166,
		0.971535, 0.233419, -0.040445,
		-0.105986, 0.580964, 0.806999,
		24.817623, 38.900040, 23.641260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545481, 38.631287, 23.319004>,  <24.891813, 38.493366, 23.076361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545481, 38.631287, 23.319004> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.296272, 38.672482, 23.629162>,  <25.146748, 38.697197, 23.815256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.296272, 38.672482, 23.629162>,  <25.545481, 38.631287, 23.319004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.296272, 38.672482, 23.629162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498074, -0.712121, 0.494778,
		0.603132, 0.694461, 0.392371,
		-0.623020, 0.102987, 0.775396,
		25.109365, 38.703377, 23.861780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.333797, 38.486393, 23.285555>,  <25.545481, 38.631287, 23.319004>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.333797, 38.486393, 23.285555> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.312124, 38.164268, 23.049406>,  <26.299120, 37.970993, 22.907717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.312124, 38.164268, 23.049406>,  <26.333797, 38.486393, 23.285555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312124, 38.164268, 23.049406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300662, 0.576957, -0.759423,
		0.952190, 0.136356, -0.273387,
		-0.054181, -0.805312, -0.590370,
		26.295870, 37.922676, 22.872295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.763050, 38.626663, 22.676865>,  <26.333797, 38.486393, 23.285555>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.763050, 38.626663, 22.676865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.478645, 38.358009, 22.593567>,  <26.308002, 38.196815, 22.543589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.478645, 38.358009, 22.593567>,  <26.763050, 38.626663, 22.676865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478645, 38.358009, 22.593567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453049, 0.664037, -0.594813,
		0.537779, -0.328575, -0.776423,
		-0.711014, -0.671635, -0.208244,
		26.265341, 38.156517, 22.531094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789108, 38.528790, 21.919468>,  <26.763050, 38.626663, 22.676865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789108, 38.528790, 21.919468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423735, 38.392700, 22.008814>,  <26.204512, 38.311047, 22.062422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.423735, 38.392700, 22.008814>,  <26.789108, 38.528790, 21.919468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423735, 38.392700, 22.008814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333001, 0.309232, -0.890778,
		0.233990, -0.888046, -0.395756,
		-0.913432, -0.340221, 0.223363,
		26.149704, 38.290634, 22.075823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518934, 38.120872, 21.344458>,  <26.789108, 38.528790, 21.919468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518934, 38.120872, 21.344458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.160780, 38.185081, 21.510599>,  <25.945887, 38.223606, 21.610285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.160780, 38.185081, 21.510599>,  <26.518934, 38.120872, 21.344458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160780, 38.185081, 21.510599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416489, 0.028133, -0.908706,
		-0.157551, -0.986632, 0.041665,
		-0.895386, 0.160520, 0.415353,
		25.892164, 38.233238, 21.635204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926910, 37.733772, 20.961302>,  <26.518934, 38.120872, 21.344458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926910, 37.733772, 20.961302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.759115, 38.043503, 21.150803>,  <25.658438, 38.229343, 21.264503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.759115, 38.043503, 21.150803>,  <25.926910, 37.733772, 20.961302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759115, 38.043503, 21.150803> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581565, 0.171478, -0.795222,
		-0.697003, -0.609103, 0.378391,
		-0.419486, 0.774331, 0.473754,
		25.633268, 38.275803, 21.292929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184902, 37.555283, 20.967768>,  <25.926910, 37.733772, 20.961302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184902, 37.555283, 20.967768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.242062, 37.947063, 21.024694>,  <25.276358, 38.182133, 21.058849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.242062, 37.947063, 21.024694>,  <25.184902, 37.555283, 20.967768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242062, 37.947063, 21.024694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540299, 0.197672, -0.817926,
		-0.829251, 0.039986, 0.557444,
		0.142896, 0.979452, 0.142315,
		25.284931, 38.240898, 21.067389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.602962, 37.893181, 20.834118>,  <25.184902, 37.555283, 20.967768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.602962, 37.893181, 20.834118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.799566, 38.241489, 20.839354>,  <24.917528, 38.450474, 20.842495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.799566, 38.241489, 20.839354>,  <24.602962, 37.893181, 20.834118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.799566, 38.241489, 20.839354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483795, 0.285516, -0.827298,
		-0.724127, 0.400293, 0.561610,
		0.491510, 0.870773, 0.013090,
		24.947020, 38.502720, 20.843281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.142202, 38.414074, 20.661890>,  <24.602962, 37.893181, 20.834118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.142202, 38.414074, 20.661890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.506227, 38.554649, 20.573999>,  <24.724642, 38.638992, 20.521265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.506227, 38.554649, 20.573999>,  <24.142202, 38.414074, 20.661890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.506227, 38.554649, 20.573999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331689, 0.299645, -0.894536,
		-0.248533, 0.886964, 0.389263,
		0.910063, 0.351436, -0.219724,
		24.779245, 38.660080, 20.508081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.975807, 38.989326, 20.489962>,  <24.142202, 38.414074, 20.661890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.975807, 38.989326, 20.489962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.332426, 38.907707, 20.328217>,  <24.546398, 38.858738, 20.231169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.332426, 38.907707, 20.328217>,  <23.975807, 38.989326, 20.489962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.332426, 38.907707, 20.328217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324327, 0.335586, -0.884417,
		0.316160, 0.919645, 0.233013,
		0.891546, -0.204045, -0.404365,
		24.599890, 38.846493, 20.206907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.393215, 31.671499, 32.416103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.051365, 31.561773, 32.239754>,  <31.846254, 31.495937, 32.133945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.051365, 31.561773, 32.239754>,  <32.393215, 31.671499, 32.416103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051365, 31.561773, 32.239754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176431, -0.951955, 0.250306,
		-0.488353, 0.136134, 0.861962,
		-0.854624, -0.274315, -0.440872,
		31.794977, 31.479479, 32.107491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649776, 31.667757, 31.756317>,  <32.393215, 31.671499, 32.416103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649776, 31.667757, 31.756317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880959, 31.698914, 31.431379>,  <33.019669, 31.717607, 31.236416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.880959, 31.698914, 31.431379>,  <32.649776, 31.667757, 31.756317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880959, 31.698914, 31.431379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724833, 0.506357, -0.467140,
		0.374950, 0.858799, 0.349110,
		0.577953, 0.077893, -0.812344,
		33.054344, 31.722281, 31.187675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706348, 32.431892, 31.506329>,  <32.649776, 31.667757, 31.756317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706348, 32.431892, 31.506329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.772755, 32.178082, 31.204384>,  <32.812599, 32.025795, 31.023216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.772755, 32.178082, 31.204384>,  <32.706348, 32.431892, 31.506329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772755, 32.178082, 31.204384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608903, 0.536166, -0.584605,
		0.775678, 0.556692, -0.297351,
		0.166016, -0.634523, -0.754864,
		32.822559, 31.987724, 30.977924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845119, 32.881405, 30.952482>,  <32.706348, 32.431892, 31.506329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845119, 32.881405, 30.952482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731331, 32.523537, 30.814703>,  <32.663059, 32.308815, 30.732037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731331, 32.523537, 30.814703>,  <32.845119, 32.881405, 30.952482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731331, 32.523537, 30.814703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498240, 0.444929, -0.744174,
		0.819043, -0.040080, -0.572330,
		-0.284473, -0.894669, -0.344446,
		32.645988, 32.255135, 30.711369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972706, 33.047867, 30.224754>,  <32.845119, 32.881405, 30.952482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972706, 33.047867, 30.224754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.741882, 32.725845, 30.279745>,  <32.603390, 32.532635, 30.312740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.741882, 32.725845, 30.279745>,  <32.972706, 33.047867, 30.224754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741882, 32.725845, 30.279745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608373, 0.311418, -0.730001,
		0.544873, -0.504890, -0.669476,
		-0.577057, -0.805049, 0.137479,
		32.568764, 32.484329, 30.320990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851429, 32.849506, 29.568741>,  <32.972706, 33.047867, 30.224754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851429, 32.849506, 29.568741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566833, 32.687729, 29.798595>,  <32.396076, 32.590664, 29.936508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.566833, 32.687729, 29.798595>,  <32.851429, 32.849506, 29.568741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566833, 32.687729, 29.798595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669222, 0.140611, -0.729638,
		0.214295, -0.903691, -0.370704,
		-0.711492, -0.404441, 0.574637,
		32.353386, 32.566399, 29.970987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505505, 32.389668, 29.073242>,  <32.851429, 32.849506, 29.568741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505505, 32.389668, 29.073242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.285229, 32.501972, 29.387672>,  <32.153065, 32.569355, 29.576330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.285229, 32.501972, 29.387672>,  <32.505505, 32.389668, 29.073242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285229, 32.501972, 29.387672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721607, 0.313220, -0.617395,
		-0.419559, -0.907229, 0.030118,
		-0.550685, 0.280767, 0.786077,
		32.120022, 32.586201, 29.623495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858723, 32.263351, 28.845743>,  <32.505505, 32.389668, 29.073242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858723, 32.263351, 28.845743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813484, 32.509918, 29.157446>,  <31.786341, 32.657860, 29.344467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.813484, 32.509918, 29.157446>,  <31.858723, 32.263351, 28.845743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813484, 32.509918, 29.157446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677999, 0.525437, -0.514036,
		-0.726310, -0.586471, 0.358504,
		-0.113096, 0.616415, 0.779257,
		31.779556, 32.694843, 29.391224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213223, 32.415123, 28.845358>,  <31.858723, 32.263351, 28.845743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213223, 32.415123, 28.845358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.346684, 32.722172, 29.064240>,  <31.426760, 32.906403, 29.195568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.346684, 32.722172, 29.064240>,  <31.213223, 32.415123, 28.845358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346684, 32.722172, 29.064240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660790, 0.604432, -0.444992,
		-0.672333, -0.213113, 0.708908,
		0.333653, 0.767623, 0.547203,
		31.446779, 32.952457, 29.228401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626577, 32.717060, 29.046492>,  <31.213223, 32.415123, 28.845358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626577, 32.717060, 29.046492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.897814, 32.999958, 29.126495>,  <31.060555, 33.169697, 29.174498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.897814, 32.999958, 29.126495>,  <30.626577, 32.717060, 29.046492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897814, 32.999958, 29.126495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605902, 0.691942, -0.392555,
		-0.416026, 0.145001, 0.897718,
		0.678090, 0.707242, 0.200009,
		31.101240, 33.212132, 29.186499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295376, 33.266933, 29.350447>,  <30.626577, 32.717060, 29.046492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295376, 33.266933, 29.350447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.615133, 33.414204, 29.160534>,  <30.806988, 33.502563, 29.046587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.615133, 33.414204, 29.160534>,  <30.295376, 33.266933, 29.350447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615133, 33.414204, 29.160534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580662, 0.676351, -0.453189,
		0.154267, 0.637964, 0.754456,
		0.799396, 0.368172, -0.474780,
		30.854952, 33.524654, 29.018101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140165, 33.994904, 29.278387>,  <30.295376, 33.266933, 29.350447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140165, 33.994904, 29.278387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.435452, 33.929710, 29.016554>,  <30.612623, 33.890594, 28.859455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.435452, 33.929710, 29.016554>,  <30.140165, 33.994904, 29.278387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435452, 33.929710, 29.016554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414579, 0.655862, -0.630848,
		0.532130, 0.737077, 0.416600,
		0.738215, -0.162979, -0.654581,
		30.656916, 33.880817, 28.820179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988527, 34.435356, 29.887602>,  <30.140165, 33.994904, 29.278387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988527, 34.435356, 29.887602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.617767, 34.369579, 30.022549>,  <29.395311, 34.330112, 30.103518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.617767, 34.369579, 30.022549>,  <29.988527, 34.435356, 29.887602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617767, 34.369579, 30.022549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373571, -0.317741, 0.871485,
		-0.036116, 0.933809, 0.355945,
		-0.926898, -0.164446, 0.337368,
		29.339699, 34.320244, 30.123758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869562, 34.923454, 30.463078>,  <29.988527, 34.435356, 29.887602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869562, 34.923454, 30.463078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.606758, 34.627197, 30.519333>,  <29.449076, 34.449444, 30.553085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.606758, 34.627197, 30.519333>,  <29.869562, 34.923454, 30.463078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606758, 34.627197, 30.519333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377048, -0.161288, 0.912042,
		-0.652818, 0.652249, 0.385228,
		-0.657011, -0.740647, 0.140638,
		29.409655, 34.405003, 30.561523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.629179, 34.981110, 31.099216>,  <29.869562, 34.923454, 30.463078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.629179, 34.981110, 31.099216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.558887, 34.592003, 31.038752>,  <29.516712, 34.358540, 31.002474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.558887, 34.592003, 31.038752>,  <29.629179, 34.981110, 31.099216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558887, 34.592003, 31.038752> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234888, -0.190547, 0.953163,
		-0.956006, 0.131991, 0.261975,
		-0.175727, -0.972764, -0.151161,
		29.506168, 34.300175, 30.993402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177643, 34.855335, 31.557690>,  <29.629179, 34.981110, 31.099216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177643, 34.855335, 31.557690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.347458, 34.507439, 31.457031>,  <29.449347, 34.298702, 31.396637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.347458, 34.507439, 31.457031>,  <29.177643, 34.855335, 31.557690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347458, 34.507439, 31.457031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239014, -0.160420, 0.957673,
		-0.873293, -0.466715, 0.139775,
		0.424538, -0.869737, -0.251645,
		29.474819, 34.246517, 31.381538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929892, 34.380764, 32.078300>,  <29.177643, 34.855335, 31.557690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929892, 34.380764, 32.078300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.254107, 34.220089, 31.907804>,  <29.448635, 34.123684, 31.805506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.254107, 34.220089, 31.907804>,  <28.929892, 34.380764, 32.078300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254107, 34.220089, 31.907804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470735, 0.013772, 0.882167,
		-0.348482, -0.915675, 0.200250,
		0.810536, -0.401684, -0.426241,
		29.497267, 34.099583, 31.779932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069485, 33.934216, 32.648701>,  <28.929892, 34.380764, 32.078300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069485, 33.934216, 32.648701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.398033, 33.884769, 32.425964>,  <29.595163, 33.855103, 32.292324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.398033, 33.884769, 32.425964>,  <29.069485, 33.934216, 32.648701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398033, 33.884769, 32.425964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529651, -0.197041, 0.825012,
		-0.211708, -0.972570, -0.096367,
		0.821370, -0.123621, -0.556838,
		29.644445, 33.847687, 32.258915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489658, 33.253613, 32.853294>,  <29.069485, 33.934216, 32.648701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489658, 33.253613, 32.853294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.749496, 33.515133, 32.698078>,  <29.905399, 33.672043, 32.604950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.749496, 33.515133, 32.698078>,  <29.489658, 33.253613, 32.853294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749496, 33.515133, 32.698078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659224, -0.230101, 0.715875,
		0.378749, -0.720835, -0.580471,
		0.649595, 0.653798, -0.388041,
		29.944374, 33.711273, 32.581665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238317, 32.934593, 32.924992>,  <29.489658, 33.253613, 32.853294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238317, 32.934593, 32.924992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.286270, 33.328964, 32.878380>,  <30.315042, 33.565586, 32.850414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.286270, 33.328964, 32.878380>,  <30.238317, 32.934593, 32.924992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.286270, 33.328964, 32.878380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731247, -0.008301, 0.682063,
		0.671496, -0.166980, -0.721950,
		0.119884, 0.985925, -0.116529,
		30.322235, 33.624741, 32.843422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992090, 32.987736, 33.026566>,  <30.238317, 32.934593, 32.924992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992090, 32.987736, 33.026566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.835764, 33.353313, 33.070339>,  <30.741968, 33.572659, 33.096603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.835764, 33.353313, 33.070339>,  <30.992090, 32.987736, 33.026566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.835764, 33.353313, 33.070339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530571, 0.126524, 0.838144,
		0.752170, 0.385619, -0.534358,
		-0.390814, 0.913942, 0.109430,
		30.718519, 33.627495, 33.103168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500296, 33.253540, 33.427254>,  <30.992090, 32.987736, 33.026566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500296, 33.253540, 33.427254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.217508, 33.531635, 33.479156>,  <31.047836, 33.698494, 33.510300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.217508, 33.531635, 33.479156>,  <31.500296, 33.253540, 33.427254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217508, 33.531635, 33.479156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522503, 0.389787, 0.758325,
		0.476640, 0.603911, -0.638832,
		-0.706969, 0.695239, 0.129757,
		31.005417, 33.740208, 33.518085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874119, 33.863010, 33.518299>,  <31.500296, 33.253540, 33.427254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874119, 33.863010, 33.518299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.514360, 33.958202, 33.664974>,  <31.298506, 34.015316, 33.752979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.514360, 33.958202, 33.664974>,  <31.874119, 33.863010, 33.518299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514360, 33.958202, 33.664974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435965, 0.426874, 0.792283,
		0.032016, 0.872437, -0.487677,
		-0.899394, 0.237976, 0.366685,
		31.244543, 34.029594, 33.774979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839352, 34.641899, 33.752182>,  <31.874119, 33.863010, 33.518299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839352, 34.641899, 33.752182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.567564, 34.417145, 33.940907>,  <31.404491, 34.282291, 34.054142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.567564, 34.417145, 33.940907>,  <31.839352, 34.641899, 33.752182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.567564, 34.417145, 33.940907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286032, 0.389321, 0.875566,
		-0.675653, 0.729874, -0.103815,
		-0.679470, -0.561884, 0.471813,
		31.363724, 34.248581, 34.082451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539911, 35.115604, 34.281723>,  <31.839352, 34.641899, 33.752182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539911, 35.115604, 34.281723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449829, 34.751167, 34.419823>,  <31.395781, 34.532505, 34.502682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.449829, 34.751167, 34.419823>,  <31.539911, 35.115604, 34.281723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449829, 34.751167, 34.419823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165375, 0.313466, 0.935088,
		-0.960174, 0.267683, 0.080077,
		-0.225205, -0.911090, 0.345250,
		31.382267, 34.477840, 34.523399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023649, 35.285263, 34.941799>,  <31.539911, 35.115604, 34.281723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023649, 35.285263, 34.941799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.171806, 34.915550, 34.978706>,  <31.260700, 34.693722, 35.000851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.171806, 34.915550, 34.978706>,  <31.023649, 35.285263, 34.941799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171806, 34.915550, 34.978706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213528, 0.181399, 0.959948,
		-0.903999, -0.335856, 0.264549,
		0.370393, -0.924281, 0.092270,
		31.282925, 34.638268, 35.006386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306732, 36.002884, 35.132507>,  <31.023649, 35.285263, 34.941799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306732, 36.002884, 35.132507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698828, 35.940144, 35.084297>,  <31.934086, 35.902500, 35.055370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698828, 35.940144, 35.084297>,  <31.306732, 36.002884, 35.132507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698828, 35.940144, 35.084297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090553, 0.897526, -0.431564,
		0.175863, 0.412123, 0.893995,
		0.980241, -0.156850, -0.120522,
		31.992901, 35.893089, 35.048141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565554, 36.631874, 35.463341>,  <31.306732, 36.002884, 35.132507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565554, 36.631874, 35.463341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862711, 36.445972, 35.270626>,  <32.041004, 36.334431, 35.154999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.862711, 36.445972, 35.270626>,  <31.565554, 36.631874, 35.463341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862711, 36.445972, 35.270626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320662, 0.878833, -0.353311,
		0.587608, 0.107983, 0.801908,
		0.742895, -0.464750, -0.481783,
		32.085579, 36.306549, 35.126091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056187, 37.074039, 35.437214>,  <31.565554, 36.631874, 35.463341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056187, 37.074039, 35.437214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.179478, 36.827396, 35.147446>,  <32.253452, 36.679409, 34.973583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.179478, 36.827396, 35.147446>,  <32.056187, 37.074039, 35.437214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179478, 36.827396, 35.147446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449287, 0.765575, -0.460474,
		0.838532, -0.183543, 0.513006,
		0.308228, -0.616610, -0.724423,
		32.271946, 36.642414, 34.930119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691074, 37.326008, 35.267467>,  <32.056187, 37.074039, 35.437214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691074, 37.326008, 35.267467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551304, 37.109795, 34.961338>,  <32.467442, 36.980064, 34.777660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551304, 37.109795, 34.961338>,  <32.691074, 37.326008, 35.267467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551304, 37.109795, 34.961338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368401, 0.671766, -0.642659,
		0.861499, -0.506510, -0.035600,
		-0.349428, -0.540535, -0.765325,
		32.446476, 36.947636, 34.731739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177620, 37.441639, 34.783108>,  <32.691074, 37.326008, 35.267467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177620, 37.441639, 34.783108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857723, 37.332630, 34.569138>,  <32.665787, 37.267227, 34.440754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.857723, 37.332630, 34.569138>,  <33.177620, 37.441639, 34.783108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857723, 37.332630, 34.569138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191795, 0.728359, -0.657805,
		0.568884, -0.628670, -0.530231,
		-0.799741, -0.272519, -0.534927,
		32.617802, 37.250874, 34.408661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404411, 37.474827, 34.124413>,  <33.177620, 37.441639, 34.783108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404411, 37.474827, 34.124413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011150, 37.463348, 34.052200>,  <32.775196, 37.456459, 34.008873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.011150, 37.463348, 34.052200>,  <33.404411, 37.474827, 34.124413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011150, 37.463348, 34.052200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115341, 0.668792, -0.734448,
		0.141816, -0.742896, -0.654213,
		-0.983150, -0.028699, -0.180532,
		32.716206, 37.454739, 33.998039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292118, 37.252190, 33.406391>,  <33.404411, 37.474827, 34.124413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292118, 37.252190, 33.406391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947826, 37.428249, 33.508694>,  <32.741253, 37.533886, 33.570076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947826, 37.428249, 33.508694>,  <33.292118, 37.252190, 33.406391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947826, 37.428249, 33.508694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003004, 0.498013, -0.867164,
		-0.509056, -0.747161, -0.427332,
		-0.860728, 0.440152, 0.255761,
		32.689610, 37.560295, 33.585423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808193, 37.135250, 32.914143>,  <33.292118, 37.252190, 33.406391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808193, 37.135250, 32.914143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669628, 37.460419, 33.101402>,  <32.586491, 37.655521, 33.213757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.669628, 37.460419, 33.101402>,  <32.808193, 37.135250, 32.914143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669628, 37.460419, 33.101402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111308, 0.459900, -0.880967,
		-0.931456, -0.357284, -0.068829,
		-0.346410, 0.812921, 0.468145,
		32.565704, 37.704296, 33.241844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246830, 37.289188, 32.527508>,  <32.808193, 37.135250, 32.914143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246830, 37.289188, 32.527508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.284580, 37.623131, 32.744434>,  <32.307232, 37.823498, 32.874592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.284580, 37.623131, 32.744434>,  <32.246830, 37.289188, 32.527508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284580, 37.623131, 32.744434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257523, 0.546678, -0.796759,
		-0.961652, -0.064465, 0.266588,
		0.094375, 0.834858, 0.542315,
		32.312893, 37.873589, 32.907127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602852, 37.716461, 32.474724>,  <32.246830, 37.289188, 32.527508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602852, 37.716461, 32.474724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.906616, 37.961102, 32.563488>,  <32.088875, 38.107887, 32.616745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.906616, 37.961102, 32.563488>,  <31.602852, 37.716461, 32.474724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906616, 37.961102, 32.563488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375676, 0.690671, -0.617933,
		-0.531192, 0.385899, 0.754266,
		0.759409, 0.611601, 0.221906,
		32.134438, 38.144581, 32.630058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248672, 38.319256, 32.424145>,  <31.602852, 37.716461, 32.474724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248672, 38.319256, 32.424145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.636457, 38.414188, 32.399433>,  <31.869129, 38.471149, 32.384605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.636457, 38.414188, 32.399433>,  <31.248672, 38.319256, 32.424145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636457, 38.414188, 32.399433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219052, 0.724742, -0.653272,
		-0.110267, 0.646856, 0.754598,
		0.969463, 0.237331, -0.061780,
		31.927296, 38.485386, 32.380898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203812, 38.965565, 32.300400>,  <31.248672, 38.319256, 32.424145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203812, 38.965565, 32.300400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.588867, 38.908028, 32.208630>,  <31.819901, 38.873505, 32.153568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.588867, 38.908028, 32.208630>,  <31.203812, 38.965565, 32.300400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588867, 38.908028, 32.208630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053821, 0.728702, -0.682713,
		0.265387, 0.669553, 0.693735,
		0.962639, -0.143846, -0.229423,
		31.877659, 38.864876, 32.139801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505835, 39.649067, 32.259201>,  <31.203812, 38.965565, 32.300400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505835, 39.649067, 32.259201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720959, 39.391220, 32.041862>,  <31.850033, 39.236511, 31.911459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.720959, 39.391220, 32.041862>,  <31.505835, 39.649067, 32.259201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720959, 39.391220, 32.041862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127418, 0.574935, -0.808217,
		0.833382, 0.503898, 0.227070,
		0.537809, -0.644621, -0.543347,
		31.882301, 39.197834, 31.878859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005718, 40.095001, 31.741421>,  <31.505835, 39.649067, 32.259201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005718, 40.095001, 31.741421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989834, 39.728493, 31.581989>,  <31.980305, 39.508587, 31.486330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989834, 39.728493, 31.581989>,  <32.005718, 40.095001, 31.741421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989834, 39.728493, 31.581989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171066, 0.399238, -0.900747,
		0.984459, 0.032417, -0.172596,
		-0.039707, -0.916274, -0.398579,
		31.977922, 39.453609, 31.462416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370438, 40.194630, 31.127762>,  <32.005718, 40.095001, 31.741421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370438, 40.194630, 31.127762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.168697, 39.856750, 31.056084>,  <32.047653, 39.654022, 31.013077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.168697, 39.856750, 31.056084>,  <32.370438, 40.194630, 31.127762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.168697, 39.856750, 31.056084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258870, 0.345885, -0.901859,
		0.823781, -0.408467, -0.393115,
		-0.504352, -0.844700, -0.179194,
		32.017391, 39.603340, 31.002325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402580, 40.139736, 30.466442>,  <32.370438, 40.194630, 31.127762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402580, 40.139736, 30.466442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.121323, 39.867348, 30.548279>,  <31.952566, 39.703915, 30.597380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.121323, 39.867348, 30.548279>,  <32.402580, 40.139736, 30.466442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121323, 39.867348, 30.548279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412601, 0.156429, -0.897380,
		0.579088, -0.715405, -0.390963,
		-0.703148, -0.680974, 0.204590,
		31.910378, 39.663055, 30.609655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398510, 39.631943, 30.002510>,  <32.402580, 40.139736, 30.466442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398510, 39.631943, 30.002510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.028641, 39.683395, 30.145864>,  <31.806719, 39.714268, 30.231876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.028641, 39.683395, 30.145864>,  <32.398510, 39.631943, 30.002510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028641, 39.683395, 30.145864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347064, 0.102439, -0.932230,
		-0.156623, -0.986388, -0.050080,
		-0.924671, 0.128628, 0.358384,
		31.751240, 39.721985, 30.253380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092480, 39.339237, 29.500669>,  <32.398510, 39.631943, 30.002510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092480, 39.339237, 29.500669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804911, 39.537621, 29.695475>,  <31.632370, 39.656651, 29.812357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.804911, 39.537621, 29.695475>,  <32.092480, 39.339237, 29.500669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804911, 39.537621, 29.695475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578850, -0.039281, -0.814487,
		-0.384822, -0.867457, 0.315326,
		-0.718919, 0.495959, 0.487011,
		31.589235, 39.686409, 29.841578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430496, 39.024956, 29.204409>,  <32.092480, 39.339237, 29.500669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430496, 39.024956, 29.204409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.338247, 39.371262, 29.382069>,  <31.282898, 39.579044, 29.488665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.338247, 39.371262, 29.382069>,  <31.430496, 39.024956, 29.204409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338247, 39.371262, 29.382069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809808, 0.082289, -0.580895,
		-0.539466, -0.493643, 0.682124,
		-0.230624, 0.865763, 0.444148,
		31.269060, 39.630989, 29.515312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.607985, 39.095364, 29.169252>,  <31.430496, 39.024956, 29.204409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.607985, 39.095364, 29.169252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.758154, 39.460880, 29.231274>,  <30.848255, 39.680191, 29.268486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.758154, 39.460880, 29.231274>,  <30.607985, 39.095364, 29.169252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758154, 39.460880, 29.231274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625356, 0.373206, -0.685308,
		-0.684095, 0.160320, 0.711556,
		0.375425, 0.913791, 0.155051,
		30.870781, 39.735016, 29.277788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088852, 39.538021, 29.334785>,  <30.607985, 39.095364, 29.169252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088852, 39.538021, 29.334785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.393734, 39.758793, 29.199482>,  <30.576664, 39.891254, 29.118299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.393734, 39.758793, 29.199482>,  <30.088852, 39.538021, 29.334785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393734, 39.758793, 29.199482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611564, 0.442667, -0.655771,
		-0.212202, 0.706699, 0.674942,
		0.762207, 0.551926, -0.338257,
		30.622396, 39.924370, 29.098005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758125, 40.134045, 29.170940>,  <30.088852, 39.538021, 29.334785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758125, 40.134045, 29.170940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.108234, 40.168346, 28.980553>,  <30.318300, 40.188927, 28.866320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.108234, 40.168346, 28.980553>,  <29.758125, 40.134045, 29.170940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108234, 40.168346, 28.980553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452391, 0.493141, -0.743071,
		0.171001, 0.865713, 0.470425,
		0.875272, 0.085750, -0.475968,
		30.370815, 40.194073, 28.837763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882408, 40.811577, 29.003986>,  <29.758125, 40.134045, 29.170940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882408, 40.811577, 29.003986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.074816, 40.592590, 28.730080>,  <30.190260, 40.461201, 28.565735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.074816, 40.592590, 28.730080>,  <29.882408, 40.811577, 29.003986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074816, 40.592590, 28.730080> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654411, 0.295550, -0.695985,
		0.583408, 0.782902, -0.216100,
		0.481020, -0.547462, -0.684766,
		30.219122, 40.428352, 28.524651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908203, 41.247597, 28.543036>,  <29.882408, 40.811577, 29.003986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908203, 41.247597, 28.543036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.007927, 40.909367, 28.354206>,  <30.067762, 40.706429, 28.240910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.007927, 40.909367, 28.354206>,  <29.908203, 41.247597, 28.543036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007927, 40.909367, 28.354206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474489, 0.318288, -0.820703,
		0.844218, 0.428603, -0.321862,
		0.249311, -0.845572, -0.472072,
		30.082720, 40.655693, 28.212585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219812, 41.576447, 27.917154>,  <29.908203, 41.247597, 28.543036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219812, 41.576447, 27.917154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.112370, 41.198257, 27.843479>,  <30.047903, 40.971344, 27.799274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.112370, 41.198257, 27.843479>,  <30.219812, 41.576447, 27.917154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.112370, 41.198257, 27.843479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223799, 0.247238, -0.942755,
		0.936890, -0.212011, -0.278007,
		-0.268608, -0.945476, -0.184187,
		30.031788, 40.914616, 27.788223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556591, 41.450848, 27.250582>,  <30.219812, 41.576447, 27.917154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556591, 41.450848, 27.250582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.245935, 41.201202, 27.284803>,  <30.059542, 41.051414, 27.305336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.245935, 41.201202, 27.284803>,  <30.556591, 41.450848, 27.250582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245935, 41.201202, 27.284803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211795, 0.130792, -0.968523,
		0.593274, -0.770313, -0.233762,
		-0.776639, -0.624109, 0.085553,
		30.012943, 41.013969, 27.310469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484318, 41.128315, 26.619688>,  <30.556591, 41.450848, 27.250582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484318, 41.128315, 26.619688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.120146, 41.072586, 26.775488>,  <29.901644, 41.039150, 26.868969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.120146, 41.072586, 26.775488>,  <30.484318, 41.128315, 26.619688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.120146, 41.072586, 26.775488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402744, 0.083579, -0.911489,
		0.094492, -0.986705, -0.132228,
		-0.910422, -0.139382, 0.389492,
		29.847017, 41.030788, 26.892338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038637, 40.639103, 26.201981>,  <30.484318, 41.128315, 26.619688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038637, 40.639103, 26.201981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.800186, 40.870491, 26.424692>,  <29.657116, 41.009323, 26.558319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.800186, 40.870491, 26.424692>,  <30.038637, 40.639103, 26.201981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800186, 40.870491, 26.424692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586477, 0.159879, -0.794030,
		-0.548340, -0.799882, 0.243951,
		-0.596127, 0.578470, 0.556781,
		29.621347, 41.044033, 26.591726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.899590, 39.954483, 25.762741>,  <30.038637, 40.639103, 26.201981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.899590, 39.954483, 25.762741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.213680, 39.991611, 25.517857>,  <30.402134, 40.013889, 25.370926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.213680, 39.991611, 25.517857>,  <29.899590, 39.954483, 25.762741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213680, 39.991611, 25.517857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612466, -0.261938, 0.745837,
		-0.091128, -0.960610, -0.262534,
		0.785226, 0.092826, -0.612211,
		30.449247, 40.019459, 25.334192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.349983, 39.346088, 25.912376>,  <29.899590, 39.954483, 25.762741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.349983, 39.346088, 25.912376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.593540, 39.591606, 25.711378>,  <30.739674, 39.738918, 25.590778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.593540, 39.591606, 25.711378>,  <30.349983, 39.346088, 25.912376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.593540, 39.591606, 25.711378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759827, -0.269344, 0.591706,
		0.227844, -0.742095, -0.630382,
		0.608892, 0.613798, -0.502496,
		30.776207, 39.775745, 25.560629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922953, 38.957382, 25.852728>,  <30.349983, 39.346088, 25.912376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922953, 38.957382, 25.852728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.062645, 39.327457, 25.793306>,  <31.146460, 39.549503, 25.757652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.062645, 39.327457, 25.793306>,  <30.922953, 38.957382, 25.852728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062645, 39.327457, 25.793306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834706, -0.235115, 0.497982,
		0.425799, -0.297910, -0.854368,
		0.349229, 0.925187, -0.148556,
		31.167414, 39.605015, 25.748739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550718, 38.801342, 25.590662>,  <30.922953, 38.957382, 25.852728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550718, 38.801342, 25.590662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558363, 39.179501, 25.720810>,  <31.562950, 39.406395, 25.798899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.558363, 39.179501, 25.720810>,  <31.550718, 38.801342, 25.590662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558363, 39.179501, 25.720810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837065, -0.193099, 0.511894,
		0.546770, 0.262573, -0.795046,
		0.019113, 0.945393, 0.325371,
		31.564096, 39.463120, 25.818420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215256, 38.818386, 25.637390>,  <31.550718, 38.801342, 25.590662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215256, 38.818386, 25.637390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.090527, 39.103878, 25.888260>,  <32.015690, 39.275173, 26.038782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.090527, 39.103878, 25.888260>,  <32.215256, 38.818386, 25.637390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090527, 39.103878, 25.888260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826613, -0.121683, 0.549457,
		0.468483, 0.689766, -0.552039,
		-0.311824, 0.713734, 0.627176,
		31.996979, 39.317997, 26.076412>
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
