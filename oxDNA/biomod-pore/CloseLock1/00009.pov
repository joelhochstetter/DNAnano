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
	<24.789660, 34.910110, 34.968445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493134, 35.061378, 35.190235>,  <24.315218, 35.152138, 35.323307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.493134, 35.061378, 35.190235>,  <24.789660, 34.910110, 34.968445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.493134, 35.061378, 35.190235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220216, -0.917459, 0.331320,
		0.634003, 0.123508, 0.763404,
		-0.741313, 0.378172, 0.554474,
		24.270741, 35.174831, 35.356579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148148, 35.308876, 34.416763>,  <24.789660, 34.910110, 34.968445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148148, 35.308876, 34.416763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244263, 35.348652, 34.803001>,  <25.301931, 35.372517, 35.034744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.244263, 35.348652, 34.803001>,  <25.148148, 35.308876, 34.416763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.244263, 35.348652, 34.803001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945448, -0.201450, 0.256021,
		0.219979, -0.974437, 0.045615,
		0.240287, 0.099446, 0.965594,
		25.316349, 35.378487, 35.092678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561178, 35.708332, 33.854984>,  <25.148148, 35.308876, 34.416763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561178, 35.708332, 33.854984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892954, 35.914379, 33.941410>,  <26.092018, 36.038010, 33.993267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892954, 35.914379, 33.941410>,  <25.561178, 35.708332, 33.854984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892954, 35.914379, 33.941410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511686, -0.545479, -0.663799,
		-0.224078, 0.661138, -0.716021,
		0.829437, 0.515121, 0.216066,
		26.141785, 36.068916, 34.006229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181383, 35.442699, 34.166592>,  <25.561178, 35.708332, 33.854984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181383, 35.442699, 34.166592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544769, 35.526451, 34.021900>,  <26.762802, 35.576702, 33.935085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.544769, 35.526451, 34.021900>,  <26.181383, 35.442699, 34.166592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.544769, 35.526451, 34.021900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061540, -0.789032, -0.611262,
		-0.413402, 0.577572, -0.703925,
		0.908467, 0.209377, -0.361731,
		26.817308, 35.589264, 33.913380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.319101, 35.335571, 33.441139>,  <26.181383, 35.442699, 34.166592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.319101, 35.335571, 33.441139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696917, 35.319611, 33.571529>,  <26.923605, 35.310032, 33.649761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696917, 35.319611, 33.571529>,  <26.319101, 35.335571, 33.441139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696917, 35.319611, 33.571529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160825, -0.809218, -0.565068,
		0.286330, 0.586152, -0.757919,
		0.944537, -0.039904, 0.325971,
		26.980278, 35.307640, 33.669319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700087, 35.315266, 32.879360>,  <26.319101, 35.335571, 33.441139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700087, 35.315266, 32.879360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915646, 35.136276, 33.164837>,  <27.044981, 35.028881, 33.336124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.915646, 35.136276, 33.164837>,  <26.700087, 35.315266, 32.879360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915646, 35.136276, 33.164837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029165, -0.856644, -0.515082,
		0.841867, 0.256761, -0.474694,
		0.538897, -0.447475, 0.713692,
		27.077314, 35.002033, 33.378944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.104010, 34.853119, 32.514507>,  <26.700087, 35.315266, 32.879360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.104010, 34.853119, 32.514507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110743, 34.715420, 32.889999>,  <27.114782, 34.632801, 33.115295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110743, 34.715420, 32.889999>,  <27.104010, 34.853119, 32.514507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110743, 34.715420, 32.889999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039513, -0.938358, -0.343398,
		0.999077, -0.031311, -0.029399,
		0.016835, -0.344243, 0.938730,
		27.115793, 34.612148, 33.171619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658630, 34.301048, 32.543728>,  <27.104010, 34.853119, 32.514507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658630, 34.301048, 32.543728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392599, 34.243225, 32.836788>,  <27.232981, 34.208530, 33.012623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392599, 34.243225, 32.836788>,  <27.658630, 34.301048, 32.543728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392599, 34.243225, 32.836788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167632, -0.927148, -0.335105,
		0.727715, -0.345687, 0.592395,
		-0.665079, -0.144557, 0.732648,
		27.193075, 34.199860, 33.056583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.865803, 33.712437, 32.807175>,  <27.658630, 34.301048, 32.543728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.865803, 33.712437, 32.807175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482470, 33.742371, 32.917446>,  <27.252470, 33.760330, 32.983608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.482470, 33.742371, 32.917446>,  <27.865803, 33.712437, 32.807175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.482470, 33.742371, 32.917446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180900, -0.905881, -0.382956,
		0.221077, -0.416870, 0.881671,
		-0.958332, 0.074832, 0.275682,
		27.194969, 33.764820, 33.000149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742060, 33.036667, 32.956680>,  <27.865803, 33.712437, 32.807175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742060, 33.036667, 32.956680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391054, 33.224392, 32.917259>,  <27.180450, 33.337029, 32.893604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.391054, 33.224392, 32.917259>,  <27.742060, 33.036667, 32.956680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391054, 33.224392, 32.917259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357671, -0.777418, -0.517391,
		-0.319437, -0.418768, 0.850055,
		-0.877514, 0.469314, -0.098555,
		27.127800, 33.365185, 32.887691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236410, 32.565697, 33.116608>,  <27.742060, 33.036667, 32.956680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236410, 32.565697, 33.116608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057787, 32.824986, 32.869904>,  <26.950613, 32.980560, 32.721882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.057787, 32.824986, 32.869904>,  <27.236410, 32.565697, 33.116608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.057787, 32.824986, 32.869904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401084, -0.761192, -0.509626,
		-0.799825, 0.019796, 0.599907,
		-0.446556, 0.648224, -0.616760,
		26.923820, 33.019451, 32.684875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684893, 32.255474, 32.979652>,  <27.236410, 32.565697, 33.116608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684893, 32.255474, 32.979652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671431, 32.538399, 32.697212>,  <26.663353, 32.708153, 32.527748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671431, 32.538399, 32.697212>,  <26.684893, 32.255474, 32.979652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671431, 32.538399, 32.697212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472066, -0.633971, -0.612564,
		-0.880921, 0.312709, 0.355234,
		-0.033654, 0.707314, -0.706097,
		26.661335, 32.750591, 32.485382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.947428, 32.238235, 32.683773>,  <26.684893, 32.255474, 32.979652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.947428, 32.238235, 32.683773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181646, 32.410305, 32.408939>,  <26.322178, 32.513546, 32.244038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.181646, 32.410305, 32.408939>,  <25.947428, 32.238235, 32.683773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.181646, 32.410305, 32.408939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469471, -0.511026, -0.720035,
		-0.660856, 0.744182, -0.097278,
		0.585548, 0.430170, -0.687086,
		26.357311, 32.539356, 32.202812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526262, 32.228142, 32.182514>,  <25.947428, 32.238235, 32.683773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526262, 32.228142, 32.182514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885988, 32.280872, 32.015728>,  <26.101824, 32.312511, 31.915657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.885988, 32.280872, 32.015728>,  <25.526262, 32.228142, 32.182514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.885988, 32.280872, 32.015728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314106, -0.468661, -0.825648,
		-0.304259, 0.873486, -0.380064,
		0.899313, 0.131831, -0.416961,
		26.155783, 32.320423, 31.890640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337193, 32.480145, 31.463593>,  <25.526262, 32.228142, 32.182514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337193, 32.480145, 31.463593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712206, 32.341022, 31.466747>,  <25.937214, 32.257549, 31.468639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712206, 32.341022, 31.466747>,  <25.337193, 32.480145, 31.463593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712206, 32.341022, 31.466747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203329, -0.566203, -0.798794,
		0.282291, 0.747292, -0.601553,
		0.937533, -0.347805, 0.007887,
		25.993465, 32.236679, 31.469114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.564049, 32.586212, 30.809401>,  <25.337193, 32.480145, 31.463593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.564049, 32.586212, 30.809401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789415, 32.288006, 30.951822>,  <25.924635, 32.109081, 31.037275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789415, 32.288006, 30.951822>,  <25.564049, 32.586212, 30.809401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789415, 32.288006, 30.951822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221933, -0.551696, -0.803975,
		0.795808, 0.373951, -0.476288,
		0.563414, -0.745514, 0.356052,
		25.958439, 32.064350, 31.058638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.902155, 32.204086, 30.153372>,  <25.564049, 32.586212, 30.809401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.902155, 32.204086, 30.153372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944572, 31.956577, 30.464722>,  <25.970024, 31.808071, 30.651531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944572, 31.956577, 30.464722>,  <25.902155, 32.204086, 30.153372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944572, 31.956577, 30.464722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082417, -0.774627, -0.627025,
		0.990940, 0.130644, -0.031148,
		0.106045, -0.618777, 0.778376,
		25.976385, 31.770945, 30.698235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455759, 31.868567, 29.998493>,  <25.902155, 32.204086, 30.153372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455759, 31.868567, 29.998493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286121, 31.617558, 30.259680>,  <26.184340, 31.466953, 30.416391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.286121, 31.617558, 30.259680>,  <26.455759, 31.868567, 29.998493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286121, 31.617558, 30.259680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060029, -0.738908, -0.671127,
		0.903626, -0.245424, 0.351037,
		-0.424094, -0.627520, 0.652964,
		26.158894, 31.429302, 30.455568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.840803, 31.245867, 29.878536>,  <26.455759, 31.868567, 29.998493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.840803, 31.245867, 29.878536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525600, 31.123394, 30.092188>,  <26.336479, 31.049910, 30.220379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.525600, 31.123394, 30.092188>,  <26.840803, 31.245867, 29.878536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525600, 31.123394, 30.092188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043045, -0.838043, -0.543903,
		0.614158, -0.451592, 0.647205,
		-0.788008, -0.306183, 0.534130,
		26.289198, 31.031540, 30.252426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030407, 30.516178, 30.073948>,  <26.840803, 31.245867, 29.878536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030407, 30.516178, 30.073948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635513, 30.578255, 30.088272>,  <26.398577, 30.615499, 30.096867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.635513, 30.578255, 30.088272>,  <27.030407, 30.516178, 30.073948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635513, 30.578255, 30.088272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144722, -0.780223, -0.608530,
		-0.066496, -0.605945, 0.792723,
		-0.987235, 0.155189, 0.035812,
		26.339342, 30.624811, 30.099016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745653, 29.848801, 30.161127>,  <27.030407, 30.516178, 30.073948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745653, 29.848801, 30.161127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449589, 30.070429, 30.008724>,  <26.271950, 30.203405, 29.917282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449589, 30.070429, 30.008724>,  <26.745653, 29.848801, 30.161127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449589, 30.070429, 30.008724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169771, -0.702235, -0.691407,
		-0.650643, -0.447070, 0.613834,
		-0.740163, 0.554070, -0.381005,
		26.227539, 30.236650, 29.894423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071848, 29.481739, 30.202124>,  <26.745653, 29.848801, 30.161127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071848, 29.481739, 30.202124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028809, 29.772871, 29.931217>,  <26.002985, 29.947550, 29.768673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028809, 29.772871, 29.931217>,  <26.071848, 29.481739, 30.202124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028809, 29.772871, 29.931217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381959, -0.659203, -0.647733,
		-0.917894, 0.188992, 0.348931,
		-0.107600, 0.727828, -0.677266,
		25.996529, 29.991219, 29.728037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422985, 29.405403, 29.943317>,  <26.071848, 29.481739, 30.202124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422985, 29.405403, 29.943317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613632, 29.617180, 29.662596>,  <25.728020, 29.744246, 29.494164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613632, 29.617180, 29.662596>,  <25.422985, 29.405403, 29.943317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613632, 29.617180, 29.662596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310929, -0.645190, -0.697892,
		-0.822290, 0.550838, -0.142889,
		0.476616, 0.529441, -0.701804,
		25.756617, 29.776012, 29.452055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.940531, 29.548323, 29.321388>,  <25.422985, 29.405403, 29.943317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.940531, 29.548323, 29.321388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.313108, 29.574520, 29.178213>,  <25.536655, 29.590239, 29.092308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.313108, 29.574520, 29.178213>,  <24.940531, 29.548323, 29.321388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.313108, 29.574520, 29.178213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288651, -0.465947, -0.836405,
		-0.221561, 0.882385, -0.415099,
		0.931446, 0.065496, -0.357937,
		25.592543, 29.594170, 29.070831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.897152, 29.782017, 28.648607>,  <24.940531, 29.548323, 29.321388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.897152, 29.782017, 28.648607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225777, 29.562214, 28.709379>,  <25.422951, 29.430332, 28.745842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225777, 29.562214, 28.709379>,  <24.897152, 29.782017, 28.648607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225777, 29.562214, 28.709379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226701, -0.559383, -0.797306,
		0.523111, 0.620592, -0.584141,
		0.821560, -0.549505, 0.151930,
		25.472244, 29.397362, 28.754959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.290422, 29.668669, 28.008022>,  <24.897152, 29.782017, 28.648607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.290422, 29.668669, 28.008022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.283512, 29.384764, 28.289713>,  <25.279366, 29.214420, 28.458727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.283512, 29.384764, 28.289713>,  <25.290422, 29.668669, 28.008022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.283512, 29.384764, 28.289713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066901, -0.701934, -0.709094,
		0.997610, -0.059363, -0.035358,
		-0.017275, -0.709764, 0.704228,
		25.278330, 29.171835, 28.500980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806957, 29.157461, 28.035635>,  <25.290422, 29.668669, 28.008022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806957, 29.157461, 28.035635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446686, 29.021919, 28.144411>,  <25.230522, 28.940594, 28.209677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.446686, 29.021919, 28.144411>,  <25.806957, 29.157461, 28.035635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446686, 29.021919, 28.144411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040450, -0.557781, -0.829002,
		0.432597, -0.757665, 0.488675,
		-0.900680, -0.338856, 0.271942,
		25.176481, 28.920263, 28.225994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.499144, 29.156630, 27.880625>,  <25.806957, 29.157461, 28.035635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.499144, 29.156630, 27.880625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256069, 28.943110, 27.645414>,  <26.110224, 28.814997, 27.504288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256069, 28.943110, 27.645414>,  <26.499144, 29.156630, 27.880625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256069, 28.943110, 27.645414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295015, 0.839168, -0.456906,
		0.737349, -0.104180, -0.667431,
		-0.607687, -0.533802, -0.588025,
		26.073763, 28.782969, 27.469007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227369, 28.978634, 27.555513>,  <26.499144, 29.156630, 27.880625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227369, 28.978634, 27.555513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182863, 29.354866, 27.683846>,  <27.156158, 29.580605, 27.760845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.182863, 29.354866, 27.683846>,  <27.227369, 28.978634, 27.555513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182863, 29.354866, 27.683846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520578, -0.219834, 0.825028,
		0.846533, 0.258815, -0.465184,
		-0.111266, 0.940579, 0.320830,
		27.149483, 29.637039, 27.780094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.946838, 29.070034, 27.793749>,  <27.227369, 28.978634, 27.555513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.946838, 29.070034, 27.793749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721138, 29.364422, 27.943398>,  <27.585718, 29.541056, 28.033186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721138, 29.364422, 27.943398>,  <27.946838, 29.070034, 27.793749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721138, 29.364422, 27.943398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510176, -0.045456, 0.858868,
		0.649107, 0.675486, -0.349826,
		-0.564252, 0.735970, 0.374122,
		27.551863, 29.585213, 28.055634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355171, 29.594025, 27.997366>,  <27.946838, 29.070034, 27.793749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355171, 29.594025, 27.997366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028755, 29.609167, 28.228067>,  <27.832905, 29.618252, 28.366489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.028755, 29.609167, 28.228067>,  <28.355171, 29.594025, 27.997366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028755, 29.609167, 28.228067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563495, -0.170015, 0.808436,
		0.128661, 0.984714, 0.117407,
		-0.816039, 0.037856, 0.576755,
		27.783943, 29.620523, 28.401094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049286, 29.328741, 28.383268>,  <28.355171, 29.594025, 27.997366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049286, 29.328741, 28.383268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184456, 29.380333, 28.756186>,  <29.265558, 29.411289, 28.979937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184456, 29.380333, 28.756186>,  <29.049286, 29.328741, 28.383268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184456, 29.380333, 28.756186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764804, -0.614945, -0.192140,
		0.548527, 0.777950, -0.306451,
		0.337926, 0.128981, 0.932293,
		29.285833, 29.419027, 29.035873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664415, 29.558165, 28.479925>,  <29.049286, 29.328741, 28.383268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664415, 29.558165, 28.479925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575270, 29.328836, 28.795300>,  <29.521782, 29.191240, 28.984524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575270, 29.328836, 28.795300>,  <29.664415, 29.558165, 28.479925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575270, 29.328836, 28.795300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769549, -0.599956, -0.218739,
		0.598436, 0.557993, 0.574907,
		-0.222865, -0.573321, 0.788438,
		29.508410, 29.156839, 29.031832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192532, 29.492413, 28.922302>,  <29.664415, 29.558165, 28.479925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192532, 29.492413, 28.922302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956892, 29.174875, 28.982666>,  <29.815508, 28.984352, 29.018885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.956892, 29.174875, 28.982666>,  <30.192532, 29.492413, 28.922302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.956892, 29.174875, 28.982666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774442, -0.607963, -0.174986,
		0.230658, 0.013786, 0.972937,
		-0.589098, -0.793846, 0.150908,
		29.780163, 28.936722, 29.027939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411484, 29.136005, 29.500727>,  <30.192532, 29.492413, 28.922302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411484, 29.136005, 29.500727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287743, 28.937744, 29.176102>,  <30.213499, 28.818787, 28.981327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.287743, 28.937744, 29.176102>,  <30.411484, 29.136005, 29.500727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287743, 28.937744, 29.176102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874685, -0.483174, -0.038319,
		-0.373132, -0.721714, 0.583010,
		-0.309351, -0.495652, -0.811561,
		30.194937, 28.789049, 28.932634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377430, 28.933064, 30.254650>,  <30.411484, 29.136005, 29.500727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377430, 28.933064, 30.254650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002283, 28.992498, 30.380079>,  <29.777195, 29.028160, 30.455336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002283, 28.992498, 30.380079>,  <30.377430, 28.933064, 30.254650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002283, 28.992498, 30.380079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250752, 0.914862, 0.316467,
		-0.239851, 0.375433, -0.895277,
		-0.937867, 0.148588, 0.313572,
		29.720922, 29.037075, 30.474152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186047, 29.629873, 30.011593>,  <30.377430, 28.933064, 30.254650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186047, 29.629873, 30.011593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977230, 29.527836, 30.337145>,  <29.851940, 29.466614, 30.532476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977230, 29.527836, 30.337145>,  <30.186047, 29.629873, 30.011593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977230, 29.527836, 30.337145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275941, 0.852394, 0.444162,
		-0.807048, 0.456455, -0.374596,
		-0.522043, -0.255094, 0.813878,
		29.820618, 29.451307, 30.581308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673889, 30.185884, 30.124151>,  <30.186047, 29.629873, 30.011593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673889, 30.185884, 30.124151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676634, 30.011951, 30.484346>,  <29.678280, 29.907593, 30.700462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676634, 30.011951, 30.484346>,  <29.673889, 30.185884, 30.124151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676634, 30.011951, 30.484346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067344, 0.898663, 0.433438,
		-0.997706, 0.057669, 0.035448,
		0.006860, -0.434831, 0.900486,
		29.678692, 29.881502, 30.754492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187490, 30.585810, 30.572769>,  <29.673889, 30.185884, 30.124151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187490, 30.585810, 30.572769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430042, 30.375832, 30.811678>,  <29.575573, 30.249844, 30.955023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.430042, 30.375832, 30.811678>,  <29.187490, 30.585810, 30.572769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.430042, 30.375832, 30.811678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056774, 0.777785, 0.625962,
		-0.793146, -0.345661, 0.501436,
		0.606379, -0.524948, 0.597272,
		29.611956, 30.218348, 30.990860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910250, 30.699268, 31.272804>,  <29.187490, 30.585810, 30.572769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910250, 30.699268, 31.272804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298193, 30.602762, 31.286478>,  <29.530958, 30.544859, 31.294682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298193, 30.602762, 31.286478>,  <28.910250, 30.699268, 31.272804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298193, 30.602762, 31.286478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166301, 0.757890, 0.630831,
		-0.178105, -0.606131, 0.775167,
		0.969857, -0.241265, 0.034184,
		29.589149, 30.530382, 31.296734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127865, 30.958265, 31.912298>,  <28.910250, 30.699268, 31.272804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127865, 30.958265, 31.912298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484949, 30.865499, 31.757751>,  <29.699200, 30.809839, 31.665024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484949, 30.865499, 31.757751>,  <29.127865, 30.958265, 31.912298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484949, 30.865499, 31.757751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436018, 0.661080, 0.610624,
		0.113804, -0.713574, 0.691275,
		0.892713, -0.231917, -0.386365,
		29.752764, 30.795925, 31.641842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.575869, 30.820396, 32.444210>,  <29.127865, 30.958265, 31.912298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.575869, 30.820396, 32.444210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824907, 30.915400, 32.145958>,  <29.974331, 30.972403, 31.967007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.824907, 30.915400, 32.145958>,  <29.575869, 30.820396, 32.444210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.824907, 30.915400, 32.145958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502386, 0.609231, 0.613551,
		0.599985, -0.756588, 0.259983,
		0.622596, 0.237510, -0.745630,
		30.011686, 30.986652, 31.922270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320011, 30.805777, 32.725483>,  <29.575869, 30.820396, 32.444210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320011, 30.805777, 32.725483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357187, 31.040207, 32.403519>,  <30.379492, 31.180866, 32.210342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.357187, 31.040207, 32.403519>,  <30.320011, 30.805777, 32.725483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357187, 31.040207, 32.403519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483489, 0.680133, 0.551052,
		0.870403, -0.440378, -0.220151,
		0.092939, 0.586078, -0.804907,
		30.385069, 31.216030, 32.162048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950092, 31.021648, 32.727814>,  <30.320011, 30.805777, 32.725483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950092, 31.021648, 32.727814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756306, 31.284838, 32.497211>,  <30.640034, 31.442751, 32.358849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756306, 31.284838, 32.497211>,  <30.950092, 31.021648, 32.727814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756306, 31.284838, 32.497211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315352, 0.746055, 0.586477,
		0.815993, 0.102327, -0.568933,
		-0.484467, 0.657975, -0.576507,
		30.610966, 31.482231, 32.324261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227886, 31.571207, 32.778214>,  <30.950092, 31.021648, 32.727814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227886, 31.571207, 32.778214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894773, 31.743446, 32.639038>,  <30.694906, 31.846790, 32.555534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894773, 31.743446, 32.639038>,  <31.227886, 31.571207, 32.778214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894773, 31.743446, 32.639038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141325, 0.773030, 0.618427,
		0.535257, 0.465844, -0.704620,
		-0.832783, 0.430597, -0.347934,
		30.644939, 31.872625, 32.534657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353802, 32.377777, 32.764790>,  <31.227886, 31.571207, 32.778214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353802, 32.377777, 32.764790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956015, 32.336128, 32.759239>,  <30.717342, 32.311138, 32.755909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956015, 32.336128, 32.759239>,  <31.353802, 32.377777, 32.764790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956015, 32.336128, 32.759239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096161, 0.849244, 0.519171,
		-0.042276, 0.517633, -0.854558,
		-0.994467, -0.104124, -0.013874,
		30.657675, 32.304890, 32.755077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155725, 33.043213, 32.602406>,  <31.353802, 32.377777, 32.764790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155725, 33.043213, 32.602406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817883, 32.890907, 32.752953>,  <30.615177, 32.799522, 32.843281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.817883, 32.890907, 32.752953>,  <31.155725, 33.043213, 32.602406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817883, 32.890907, 32.752953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159669, 0.850143, 0.501760,
		-0.511022, 0.363695, -0.778834,
		-0.844608, -0.380766, 0.376371,
		30.564501, 32.776676, 32.865864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659815, 33.575943, 32.693970>,  <31.155725, 33.043213, 32.602406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659815, 33.575943, 32.693970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500029, 33.299889, 32.935345>,  <30.404156, 33.134254, 33.080170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500029, 33.299889, 32.935345>,  <30.659815, 33.575943, 32.693970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500029, 33.299889, 32.935345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345183, 0.723024, 0.598403,
		-0.849279, 0.030746, -0.527048,
		-0.399466, -0.690139, 0.603436,
		30.380188, 33.092846, 33.116375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057079, 33.886738, 32.872223>,  <30.659815, 33.575943, 32.693970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057079, 33.886738, 32.872223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110294, 33.602219, 33.148296>,  <30.142223, 33.431507, 33.313942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.110294, 33.602219, 33.148296>,  <30.057079, 33.886738, 32.872223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.110294, 33.602219, 33.148296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202229, 0.662240, 0.721486,
		-0.970260, -0.235560, -0.055742,
		0.133039, -0.711301, 0.690182,
		30.150206, 33.388828, 33.355350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413378, 33.832867, 33.189491>,  <30.057079, 33.886738, 32.872223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413378, 33.832867, 33.189491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690037, 33.682777, 33.436337>,  <29.856033, 33.592724, 33.584442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.690037, 33.682777, 33.436337>,  <29.413378, 33.832867, 33.189491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690037, 33.682777, 33.436337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189613, 0.730140, 0.656462,
		-0.696898, -0.571055, 0.433854,
		0.691650, -0.375223, 0.617113,
		29.897532, 33.570210, 33.621471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051552, 33.802940, 33.766533>,  <29.413378, 33.832867, 33.189491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051552, 33.802940, 33.766533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435974, 33.798626, 33.876991>,  <29.666628, 33.796036, 33.943264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435974, 33.798626, 33.876991>,  <29.051552, 33.802940, 33.766533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435974, 33.798626, 33.876991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191316, 0.695091, 0.692998,
		-0.199422, -0.718841, 0.665957,
		0.961056, -0.010791, 0.276142,
		29.724291, 33.795387, 33.959835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976746, 34.029648, 34.498341>,  <29.051552, 33.802940, 33.766533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976746, 34.029648, 34.498341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366640, 34.041862, 34.409832>,  <29.600576, 34.049191, 34.356728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366640, 34.041862, 34.409832>,  <28.976746, 34.029648, 34.498341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366640, 34.041862, 34.409832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116012, 0.777304, 0.618335,
		0.190874, -0.628383, 0.754123,
		0.974735, 0.030536, -0.221267,
		29.659061, 34.051022, 34.343452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255560, 34.068005, 35.094406>,  <28.976746, 34.029648, 34.498341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255560, 34.068005, 35.094406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552393, 34.201630, 34.861954>,  <29.730492, 34.281803, 34.722481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.552393, 34.201630, 34.861954>,  <29.255560, 34.068005, 35.094406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552393, 34.201630, 34.861954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097229, 0.804150, 0.586421,
		0.663221, -0.491675, 0.564264,
		0.742081, 0.334063, -0.581135,
		29.775017, 34.301849, 34.687614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929735, 34.215672, 35.520187>,  <29.255560, 34.068005, 35.094406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929735, 34.215672, 35.520187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902134, 34.435085, 35.186878>,  <29.885572, 34.566734, 34.986893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.902134, 34.435085, 35.186878>,  <29.929735, 34.215672, 35.520187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902134, 34.435085, 35.186878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090077, 0.828426, 0.552808,
		0.993541, 0.113205, -0.007755,
		-0.069005, 0.548539, -0.833273,
		29.881432, 34.599648, 34.936897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099937, 34.866463, 35.694225>,  <29.929735, 34.215672, 35.520187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099937, 34.866463, 35.694225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921066, 34.950649, 35.346493>,  <29.813744, 35.001163, 35.137856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921066, 34.950649, 35.346493>,  <30.099937, 34.866463, 35.694225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921066, 34.950649, 35.346493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195008, 0.925599, 0.324405,
		0.872927, 0.314594, -0.372866,
		-0.447180, 0.210470, -0.869329,
		29.786913, 35.013790, 35.085693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420816, 35.544456, 35.486954>,  <30.099937, 34.866463, 35.694225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420816, 35.544456, 35.486954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078640, 35.489967, 35.287090>,  <29.873333, 35.457272, 35.167171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078640, 35.489967, 35.287090>,  <30.420816, 35.544456, 35.486954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078640, 35.489967, 35.287090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256727, 0.949447, 0.180673,
		0.449787, 0.282831, -0.847171,
		-0.855443, -0.136227, -0.499659,
		29.822006, 35.449100, 35.137192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347460, 36.122566, 34.972454>,  <30.420816, 35.544456, 35.486954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347460, 36.122566, 34.972454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993227, 35.956707, 35.056183>,  <29.780687, 35.857193, 35.106422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993227, 35.956707, 35.056183>,  <30.347460, 36.122566, 34.972454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993227, 35.956707, 35.056183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340905, 0.886315, 0.313417,
		-0.315485, 0.206196, -0.926257,
		-0.885581, -0.414644, 0.209326,
		29.727552, 35.832314, 35.118980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.962688, 36.333591, 35.350643>,  <30.347460, 36.122566, 34.972454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.962688, 36.333591, 35.350643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321960, 36.158730, 35.332027>,  <31.537523, 36.053814, 35.320858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321960, 36.158730, 35.332027>,  <30.962688, 36.333591, 35.350643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321960, 36.158730, 35.332027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329463, 0.599243, 0.729631,
		-0.291073, -0.670674, 0.682255,
		0.898181, -0.437154, -0.046539,
		31.591415, 36.027584, 35.318066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366814, 36.150013, 36.016502>,  <30.962688, 36.333591, 35.350643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366814, 36.150013, 36.016502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654985, 36.252312, 35.758644>,  <31.827888, 36.313690, 35.603928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654985, 36.252312, 35.758644>,  <31.366814, 36.150013, 36.016502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654985, 36.252312, 35.758644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301486, 0.721607, 0.623209,
		0.624569, -0.643331, 0.442762,
		0.720430, 0.255750, -0.644649,
		31.871115, 36.329037, 35.565250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947929, 36.043320, 36.283222>,  <31.366814, 36.150013, 36.016502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947929, 36.043320, 36.283222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018547, 36.362762, 36.053070>,  <32.060917, 36.554428, 35.914978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018547, 36.362762, 36.053070>,  <31.947929, 36.043320, 36.283222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018547, 36.362762, 36.053070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240689, 0.531790, 0.811953,
		0.954411, -0.281835, -0.098330,
		0.176546, 0.798604, -0.575381,
		32.071510, 36.602345, 35.880455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720707, 36.313702, 36.225025>,  <31.947929, 36.043320, 36.283222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720707, 36.313702, 36.225025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428299, 36.586632, 36.227909>,  <32.252853, 36.750389, 36.229641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428299, 36.586632, 36.227909>,  <32.720707, 36.313702, 36.225025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428299, 36.586632, 36.227909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333663, 0.348217, 0.876021,
		0.595219, 0.642791, -0.482218,
		-0.731015, 0.682323, 0.007210,
		32.208996, 36.791328, 36.230072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884640, 37.021919, 36.151447>,  <32.720707, 36.313702, 36.225025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884640, 37.021919, 36.151447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558590, 37.011921, 36.382942>,  <32.362961, 37.005920, 36.521839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558590, 37.011921, 36.382942>,  <32.884640, 37.021919, 36.151447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558590, 37.011921, 36.382942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539284, 0.332051, 0.773896,
		-0.211514, 0.942930, -0.257185,
		-0.815129, -0.024995, 0.578740,
		32.314053, 37.004421, 36.556564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737320, 37.751900, 36.427887>,  <32.884640, 37.021919, 36.151447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737320, 37.751900, 36.427887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671593, 37.419373, 36.640270>,  <32.632156, 37.219856, 36.767700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671593, 37.419373, 36.640270>,  <32.737320, 37.751900, 36.427887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671593, 37.419373, 36.640270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716111, 0.269646, 0.643798,
		-0.678369, 0.486011, 0.551007,
		-0.164316, -0.831315, 0.530957,
		32.622299, 37.169979, 36.799557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649559, 37.893177, 37.190887>,  <32.737320, 37.751900, 36.427887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649559, 37.893177, 37.190887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727730, 37.501022, 37.201130>,  <32.774632, 37.265732, 37.207275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727730, 37.501022, 37.201130>,  <32.649559, 37.893177, 37.190887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727730, 37.501022, 37.201130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631968, 0.145854, 0.761146,
		-0.749950, -0.132565, 0.648075,
		0.195426, -0.980384, 0.025606,
		32.786358, 37.206905, 37.208813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765465, 37.792072, 37.922543>,  <32.649559, 37.893177, 37.190887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765465, 37.792072, 37.922543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915527, 37.451328, 37.776337>,  <33.005566, 37.246883, 37.688614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915527, 37.451328, 37.776337>,  <32.765465, 37.792072, 37.922543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915527, 37.451328, 37.776337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624506, -0.059131, 0.778778,
		-0.685020, -0.520427, 0.509807,
		0.375152, -0.851856, -0.365516,
		33.028072, 37.195770, 37.666683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592133, 37.213203, 38.376671>,  <32.765465, 37.792072, 37.922543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592133, 37.213203, 38.376671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922863, 37.125423, 38.169521>,  <33.121304, 37.072754, 38.045231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922863, 37.125423, 38.169521>,  <32.592133, 37.213203, 38.376671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922863, 37.125423, 38.169521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488262, -0.177000, 0.854559,
		-0.279201, -0.959432, -0.039198,
		0.826830, -0.219455, -0.517873,
		33.170914, 37.059589, 38.014160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743526, 36.562141, 38.611465>,  <32.592133, 37.213203, 38.376671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743526, 36.562141, 38.611465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082806, 36.718410, 38.468395>,  <33.286373, 36.812172, 38.382553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.082806, 36.718410, 38.468395>,  <32.743526, 36.562141, 38.611465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.082806, 36.718410, 38.468395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469837, -0.243137, 0.848609,
		0.244565, -0.887839, -0.389782,
		0.848199, 0.390674, -0.357677,
		33.337265, 36.835613, 38.361092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291748, 36.145546, 38.778606>,  <32.743526, 36.562141, 38.611465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291748, 36.145546, 38.778606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487911, 36.483871, 38.694603>,  <33.605610, 36.686867, 38.644199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487911, 36.483871, 38.694603>,  <33.291748, 36.145546, 38.778606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487911, 36.483871, 38.694603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323306, 0.047212, 0.945116,
		0.809306, -0.531387, -0.250304,
		0.490404, 0.845813, -0.210010,
		33.635033, 36.737614, 38.631599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949860, 36.014084, 38.997704>,  <33.291748, 36.145546, 38.778606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949860, 36.014084, 38.997704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910625, 36.411930, 38.984337>,  <33.887085, 36.650639, 38.976318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910625, 36.411930, 38.984337>,  <33.949860, 36.014084, 38.997704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910625, 36.411930, 38.984337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333605, 0.064495, 0.940504,
		0.937596, 0.081100, -0.338135,
		-0.098082, 0.994617, -0.033415,
		33.881199, 36.710316, 38.974312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657063, 36.310284, 39.218544>,  <33.949860, 36.014084, 38.997704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657063, 36.310284, 39.218544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365360, 36.577000, 39.279968>,  <34.190338, 36.737030, 39.316822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365360, 36.577000, 39.279968>,  <34.657063, 36.310284, 39.218544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365360, 36.577000, 39.279968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295154, 0.104081, 0.949764,
		0.617312, 0.737941, -0.272707,
		-0.729254, 0.666791, 0.153556,
		34.146584, 36.777039, 39.326035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973793, 36.865883, 39.723755>,  <34.657063, 36.310284, 39.218544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973793, 36.865883, 39.723755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576305, 36.900108, 39.752605>,  <34.337814, 36.920643, 39.769917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.576305, 36.900108, 39.752605>,  <34.973793, 36.865883, 39.723755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576305, 36.900108, 39.752605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091000, 0.242671, 0.965831,
		0.065132, 0.966328, -0.248932,
		-0.993719, 0.085560, 0.072130,
		34.278191, 36.925777, 39.774246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858883, 37.461147, 40.111168>,  <34.973793, 36.865883, 39.723755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858883, 37.461147, 40.111168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499928, 37.290707, 40.157013>,  <34.284554, 37.188442, 40.184521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.499928, 37.290707, 40.157013>,  <34.858883, 37.461147, 40.111168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.499928, 37.290707, 40.157013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085228, 0.087482, 0.992514,
		-0.432941, 0.900435, -0.042189,
		-0.897384, -0.426104, 0.114617,
		34.230713, 37.162876, 40.191399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437222, 37.924404, 40.446659>,  <34.858883, 37.461147, 40.111168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437222, 37.924404, 40.446659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298241, 37.559162, 40.531994>,  <34.214851, 37.340015, 40.583195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.298241, 37.559162, 40.531994>,  <34.437222, 37.924404, 40.446659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298241, 37.559162, 40.531994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079295, 0.198090, 0.976971,
		-0.934338, 0.356370, 0.003577,
		-0.347455, -0.913105, 0.213341,
		34.194004, 37.285233, 40.595997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452286, 38.043308, 41.180355>,  <34.437222, 37.924404, 40.446659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452286, 38.043308, 41.180355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345802, 37.659992, 41.138763>,  <34.281914, 37.430004, 41.113808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345802, 37.659992, 41.138763>,  <34.452286, 38.043308, 41.180355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345802, 37.659992, 41.138763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116029, -0.138947, 0.983479,
		-0.956907, 0.249744, 0.148178,
		-0.266207, -0.958291, -0.103982,
		34.265942, 37.372505, 41.107571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892162, 37.886986, 41.586376>,  <34.452286, 38.043308, 41.180355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892162, 37.886986, 41.586376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061424, 37.526237, 41.551571>,  <34.162983, 37.309788, 41.530689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061424, 37.526237, 41.551571>,  <33.892162, 37.886986, 41.586376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061424, 37.526237, 41.551571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032884, -0.080683, 0.996197,
		-0.905459, -0.424410, -0.004484,
		0.423158, -0.901868, -0.087011,
		34.188374, 37.255676, 41.525467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564045, 37.391071, 42.048553>,  <33.892162, 37.886986, 41.586376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564045, 37.391071, 42.048553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922474, 37.233875, 41.965973>,  <34.137531, 37.139557, 41.916424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.922474, 37.233875, 41.965973>,  <33.564045, 37.391071, 42.048553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922474, 37.233875, 41.965973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190584, -0.079459, 0.978450,
		-0.400923, -0.916104, 0.003696,
		0.896068, -0.392988, -0.206452,
		34.191296, 37.115978, 41.904037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432194, 36.714706, 42.259140>,  <33.564045, 37.391071, 42.048553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432194, 36.714706, 42.259140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827042, 36.776630, 42.275265>,  <34.063950, 36.813786, 42.284939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.827042, 36.776630, 42.275265>,  <33.432194, 36.714706, 42.259140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827042, 36.776630, 42.275265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001792, -0.262674, 0.964883,
		0.159959, -0.952385, -0.259568,
		0.987122, 0.154807, 0.040311,
		34.123177, 36.823071, 42.287357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644325, 36.090107, 42.568089>,  <33.432194, 36.714706, 42.259140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644325, 36.090107, 42.568089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932308, 36.364670, 42.609097>,  <34.105099, 36.529408, 42.633701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932308, 36.364670, 42.609097>,  <33.644325, 36.090107, 42.568089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932308, 36.364670, 42.609097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191780, -0.338738, 0.921128,
		0.666995, -0.643510, -0.375515,
		0.719957, 0.686404, 0.102524,
		34.148296, 36.570591, 42.639854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135033, 35.743534, 42.858475>,  <33.644325, 36.090107, 42.568089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135033, 35.743534, 42.858475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199776, 36.129192, 42.942600>,  <34.238621, 36.360588, 42.993076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199776, 36.129192, 42.942600>,  <34.135033, 35.743534, 42.858475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199776, 36.129192, 42.942600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057956, -0.222044, 0.973313,
		0.985110, -0.145353, -0.091818,
		0.161861, 0.964142, 0.210314,
		34.248333, 36.418434, 43.005695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521618, 35.639172, 43.491154>,  <34.135033, 35.743534, 42.858475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521618, 35.639172, 43.491154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466682, 36.035374, 43.493294>,  <34.433720, 36.273094, 43.494579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466682, 36.035374, 43.493294>,  <34.521618, 35.639172, 43.491154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466682, 36.035374, 43.493294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038493, -0.010737, 0.999201,
		0.989776, 0.137026, 0.039603,
		-0.137342, 0.990509, 0.005352,
		34.425480, 36.332527, 43.494900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049629, 35.923340, 43.853512>,  <34.521618, 35.639172, 43.491154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049629, 35.923340, 43.853512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759968, 36.197727, 43.881931>,  <34.586170, 36.362358, 43.898983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759968, 36.197727, 43.881931>,  <35.049629, 35.923340, 43.853512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759968, 36.197727, 43.881931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154710, 0.061197, 0.986063,
		0.672057, 0.725057, -0.150442,
		-0.724158, 0.685965, 0.071046,
		34.542721, 36.403515, 43.903244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349926, 36.497501, 44.316311>,  <35.049629, 35.923340, 43.853512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349926, 36.497501, 44.316311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957355, 36.573174, 44.329094>,  <34.721813, 36.618576, 44.336765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957355, 36.573174, 44.329094>,  <35.349926, 36.497501, 44.316311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957355, 36.573174, 44.329094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095406, 0.336671, 0.936777,
		0.166459, 0.922423, -0.348465,
		-0.981422, 0.189181, 0.031962,
		34.662930, 36.629929, 44.338684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181351, 37.140697, 44.734402>,  <35.349926, 36.497501, 44.316311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181351, 37.140697, 44.734402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862175, 36.900658, 44.756916>,  <34.670670, 36.756634, 44.770424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862175, 36.900658, 44.756916>,  <35.181351, 37.140697, 44.734402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862175, 36.900658, 44.756916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119384, 0.248887, 0.961147,
		-0.590794, 0.760219, -0.270239,
		-0.797941, -0.600102, 0.056283,
		34.622791, 36.720627, 44.773800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734329, 37.477333, 45.254906>,  <35.181351, 37.140697, 44.734402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734329, 37.477333, 45.254906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614292, 37.098930, 45.205879>,  <34.542271, 36.871891, 45.176464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614292, 37.098930, 45.205879>,  <34.734329, 37.477333, 45.254906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614292, 37.098930, 45.205879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050565, -0.112531, 0.992361,
		-0.952568, 0.304000, -0.014064,
		-0.300095, -0.946002, -0.122565,
		34.524265, 36.815128, 45.169109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044575, 37.521946, 45.585663>,  <34.734329, 37.477333, 45.254906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044575, 37.521946, 45.585663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147610, 37.136337, 45.559406>,  <34.209431, 36.904972, 45.543652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147610, 37.136337, 45.559406>,  <34.044575, 37.521946, 45.585663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147610, 37.136337, 45.559406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423097, -0.173604, 0.889298,
		-0.868699, -0.201297, -0.452594,
		0.257585, -0.964024, -0.065641,
		34.224884, 36.847130, 45.539715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424244, 37.067905, 45.746353>,  <34.044575, 37.521946, 45.585663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424244, 37.067905, 45.746353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745274, 36.834690, 45.796864>,  <33.937889, 36.694759, 45.827171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.745274, 36.834690, 45.796864>,  <33.424244, 37.067905, 45.746353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745274, 36.834690, 45.796864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322469, -0.245910, 0.914080,
		-0.501890, -0.774335, -0.385372,
		0.802571, -0.583038, 0.126279,
		33.986046, 36.659779, 45.834747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197910, 36.446213, 45.973007>,  <33.424244, 37.067905, 45.746353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197910, 36.446213, 45.973007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576553, 36.496067, 46.091930>,  <33.803741, 36.525978, 46.163284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576553, 36.496067, 46.091930>,  <33.197910, 36.446213, 45.973007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576553, 36.496067, 46.091930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234757, -0.365574, 0.900691,
		0.220946, -0.922400, -0.316798,
		0.946611, 0.124633, 0.297312,
		33.860538, 36.533459, 46.181126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372337, 35.867744, 46.249710>,  <33.197910, 36.446213, 45.973007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372337, 35.867744, 46.249710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690804, 36.073444, 46.377258>,  <33.881882, 36.196865, 46.453785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690804, 36.073444, 46.377258>,  <33.372337, 35.867744, 46.249710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690804, 36.073444, 46.377258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035428, -0.486460, 0.872984,
		0.604046, -0.706333, -0.369081,
		0.796161, 0.514247, 0.318868,
		33.929653, 36.227718, 46.472919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740204, 35.417355, 46.626518>,  <33.372337, 35.867744, 46.249710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740204, 35.417355, 46.626518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877316, 35.770267, 46.755566>,  <33.959583, 35.982014, 46.832996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.877316, 35.770267, 46.755566>,  <33.740204, 35.417355, 46.626518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877316, 35.770267, 46.755566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043692, -0.328085, 0.943637,
		0.938399, -0.337557, -0.073912,
		0.342781, 0.882279, 0.322623,
		33.980148, 36.034950, 46.852352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193565, 35.287735, 47.137379>,  <33.740204, 35.417355, 46.626518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193565, 35.287735, 47.137379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125340, 35.670490, 47.231415>,  <34.084404, 35.900143, 47.287838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125340, 35.670490, 47.231415>,  <34.193565, 35.287735, 47.137379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125340, 35.670490, 47.231415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004998, -0.239422, 0.970903,
		0.985334, 0.164427, 0.045619,
		-0.170565, 0.956891, 0.235089,
		34.074169, 35.957558, 47.301941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660252, 35.483910, 47.555561>,  <34.193565, 35.287735, 47.137379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660252, 35.483910, 47.555561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412102, 35.782887, 47.650604>,  <34.263210, 35.962273, 47.707630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412102, 35.782887, 47.650604>,  <34.660252, 35.483910, 47.555561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412102, 35.782887, 47.650604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238907, -0.108469, 0.964965,
		0.747030, 0.655411, -0.111277,
		-0.620379, 0.747443, 0.237612,
		34.225986, 36.007118, 47.721889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978970, 35.902416, 48.057804>,  <34.660252, 35.483910, 47.555561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978970, 35.902416, 48.057804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585407, 35.970760, 48.078705>,  <34.349270, 36.011768, 48.091244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585407, 35.970760, 48.078705>,  <34.978970, 35.902416, 48.057804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585407, 35.970760, 48.078705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036915, -0.091728, 0.995100,
		0.174818, 0.981016, 0.083945,
		-0.983909, 0.170862, 0.052250,
		34.290234, 36.022018, 48.094379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862961, 36.449757, 48.512302>,  <34.978970, 35.902416, 48.057804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862961, 36.449757, 48.512302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517879, 36.248272, 48.494362>,  <34.310829, 36.127380, 48.483597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517879, 36.248272, 48.494362>,  <34.862961, 36.449757, 48.512302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517879, 36.248272, 48.494362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027921, -0.135996, 0.990316,
		-0.504936, 0.853098, 0.131389,
		-0.862705, -0.503715, -0.044850,
		34.259068, 36.097157, 48.480907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352516, 36.870796, 49.002033>,  <34.862961, 36.449757, 48.512302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352516, 36.870796, 49.002033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220558, 36.500572, 48.927723>,  <34.141384, 36.278439, 48.883137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220558, 36.500572, 48.927723>,  <34.352516, 36.870796, 49.002033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220558, 36.500572, 48.927723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014672, -0.201793, 0.979318,
		-0.943904, 0.320346, 0.080150,
		-0.329895, -0.925558, -0.185773,
		34.121590, 36.222904, 48.871990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945171, 36.766212, 49.601860>,  <34.352516, 36.870796, 49.002033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945171, 36.766212, 49.601860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976475, 36.393513, 49.460037>,  <33.995255, 36.169891, 49.374943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976475, 36.393513, 49.460037>,  <33.945171, 36.766212, 49.601860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976475, 36.393513, 49.460037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137703, -0.342136, 0.929505,
		-0.987377, -0.121563, 0.101531,
		0.078256, -0.931754, -0.354557,
		33.999950, 36.113987, 49.353668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476360, 36.298828, 50.006210>,  <33.945171, 36.766212, 49.601860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476360, 36.298828, 50.006210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787796, 36.109539, 49.841354>,  <33.974659, 35.995964, 49.742443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787796, 36.109539, 49.841354>,  <33.476360, 36.298828, 50.006210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787796, 36.109539, 49.841354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254108, -0.362753, 0.896571,
		-0.573783, -0.802788, -0.162185,
		0.778590, -0.473225, -0.412136,
		34.021374, 35.967571, 49.717712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582748, 35.696808, 50.427494>,  <33.476360, 36.298828, 50.006210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582748, 35.696808, 50.427494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929043, 35.689499, 50.227428>,  <34.136822, 35.685116, 50.107391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929043, 35.689499, 50.227428>,  <33.582748, 35.696808, 50.427494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929043, 35.689499, 50.227428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469866, -0.314551, 0.824793,
		-0.172393, -0.949065, -0.263737,
		0.865741, -0.018267, -0.500160,
		34.188766, 35.684017, 50.077381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844612, 35.059368, 50.667881>,  <33.582748, 35.696808, 50.427494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844612, 35.059368, 50.667881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148418, 35.272373, 50.518448>,  <34.330700, 35.400177, 50.428787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148418, 35.272373, 50.518448>,  <33.844612, 35.059368, 50.667881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148418, 35.272373, 50.518448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619273, -0.416138, 0.665830,
		0.199103, -0.737058, -0.645836,
		0.759512, 0.532517, -0.373586,
		34.376270, 35.432129, 50.406372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471111, 34.682835, 50.914619>,  <33.844612, 35.059368, 50.667881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471111, 34.682835, 50.914619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600262, 35.038715, 50.785503>,  <34.677750, 35.252243, 50.708035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600262, 35.038715, 50.785503>,  <34.471111, 34.682835, 50.914619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600262, 35.038715, 50.785503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767377, -0.046467, 0.639510,
		0.553971, -0.454180, -0.697737,
		0.322874, 0.889697, -0.322786,
		34.697124, 35.305626, 50.688667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142853, 34.678165, 50.866039>,  <34.471111, 34.682835, 50.914619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142853, 34.678165, 50.866039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116920, 35.074627, 50.912357>,  <35.101360, 35.312504, 50.940147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116920, 35.074627, 50.912357>,  <35.142853, 34.678165, 50.866039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116920, 35.074627, 50.912357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713109, -0.035160, 0.700171,
		0.698049, 0.127970, -0.704522,
		-0.064830, 0.991155, 0.115800,
		35.097473, 35.371975, 50.947098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900291, 34.846951, 50.868473>,  <35.142853, 34.678165, 50.866039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900291, 34.846951, 50.868473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650719, 35.093555, 51.060566>,  <35.500977, 35.241516, 51.175823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650719, 35.093555, 51.060566>,  <35.900291, 34.846951, 50.868473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650719, 35.093555, 51.060566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654590, 0.076622, 0.752091,
		0.426875, 0.783610, -0.451368,
		-0.623931, 0.616510, 0.480235,
		35.463539, 35.278507, 51.204636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319771, 35.334393, 51.187840>,  <35.900291, 34.846951, 50.868473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319771, 35.334393, 51.187840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989197, 35.366642, 51.410732>,  <35.790852, 35.385990, 51.544468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989197, 35.366642, 51.410732>,  <36.319771, 35.334393, 51.187840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989197, 35.366642, 51.410732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560255, 0.019488, 0.828091,
		0.055904, 0.996554, -0.061275,
		-0.826432, 0.080624, 0.557234,
		35.741268, 35.390827, 51.577904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308434, 35.953060, 51.651028>,  <36.319771, 35.334393, 51.187840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308434, 35.953060, 51.651028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097366, 35.652084, 51.808712>,  <35.970726, 35.471500, 51.903324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097366, 35.652084, 51.808712>,  <36.308434, 35.953060, 51.651028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097366, 35.652084, 51.808712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674434, -0.088962, 0.732956,
		-0.516433, 0.652630, 0.554411,
		-0.527670, -0.752436, 0.394213,
		35.939064, 35.426353, 51.926975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377422, 36.097393, 52.333286>,  <36.308434, 35.953060, 51.651028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377422, 36.097393, 52.333286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226360, 35.727036, 52.337273>,  <36.135723, 35.504822, 52.339664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226360, 35.727036, 52.337273>,  <36.377422, 36.097393, 52.333286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226360, 35.727036, 52.337273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520704, -0.203462, 0.829138,
		-0.765667, 0.318314, 0.558955,
		-0.377653, -0.925894, 0.009963,
		36.113064, 35.449268, 52.340263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943157, 35.863918, 52.935040>,  <36.377422, 36.097393, 52.333286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943157, 35.863918, 52.935040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128685, 35.551247, 52.768261>,  <36.240002, 35.363644, 52.668194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128685, 35.551247, 52.768261>,  <35.943157, 35.863918, 52.935040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128685, 35.551247, 52.768261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464286, -0.186352, 0.865859,
		-0.754526, -0.595184, 0.276491,
		0.463821, -0.781684, -0.416943,
		36.267830, 35.316742, 52.643177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844334, 35.252590, 53.310463>,  <35.943157, 35.863918, 52.935040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844334, 35.252590, 53.310463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187996, 35.220329, 53.108334>,  <36.394192, 35.200974, 52.987057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187996, 35.220329, 53.108334>,  <35.844334, 35.252590, 53.310463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187996, 35.220329, 53.108334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459298, -0.313832, 0.830996,
		-0.225605, -0.946047, -0.232588,
		0.859155, -0.080649, -0.505320,
		36.445744, 35.196133, 52.956738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587482, 35.002567, 54.019676>,  <35.844334, 35.252590, 53.310463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587482, 35.002567, 54.019676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667809, 35.387012, 53.943848>,  <35.716003, 35.617680, 53.898350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667809, 35.387012, 53.943848>,  <35.587482, 35.002567, 54.019676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667809, 35.387012, 53.943848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878481, 0.091042, -0.469022,
		-0.433523, 0.260724, 0.862601,
		0.200818, 0.961111, -0.189573,
		35.728054, 35.675346, 53.886974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211021, 34.497177, 53.679153>,  <35.587482, 35.002567, 54.019676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211021, 34.497177, 53.679153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599098, 34.549503, 53.597557>,  <35.831944, 34.580898, 53.548599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599098, 34.549503, 53.597557>,  <35.211021, 34.497177, 53.679153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599098, 34.549503, 53.597557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241885, 0.573808, -0.782455,
		0.014692, 0.808474, 0.588348,
		0.970194, 0.130817, -0.203988,
		35.890156, 34.588749, 53.536362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503590, 34.072304, 53.623871>,  <35.211021, 34.497177, 53.679153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503590, 34.072304, 53.623871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344257, 34.033772, 53.988739>,  <34.248657, 34.010654, 54.207661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344257, 34.033772, 53.988739>,  <34.503590, 34.072304, 53.623871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344257, 34.033772, 53.988739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442988, 0.891005, -0.099353,
		-0.803177, -0.443655, -0.397589,
		-0.398332, -0.096329, 0.912169,
		34.224758, 34.004871, 54.262390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726475, 33.639946, 54.143570>,  <34.503590, 34.072304, 53.623871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726475, 33.639946, 54.143570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054317, 33.512203, 53.953304>,  <35.251022, 33.435558, 53.839146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.054317, 33.512203, 53.953304>,  <34.726475, 33.639946, 54.143570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.054317, 33.512203, 53.953304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572640, 0.430435, 0.697717,
		-0.018076, -0.844238, 0.535663,
		0.819607, -0.319354, -0.475664,
		35.300201, 33.416397, 53.810604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180119, 33.304585, 54.662254>,  <34.726475, 33.639946, 54.143570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180119, 33.304585, 54.662254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403709, 33.444683, 54.361622>,  <35.537865, 33.528740, 54.181244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403709, 33.444683, 54.361622>,  <35.180119, 33.304585, 54.662254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403709, 33.444683, 54.361622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545499, 0.527306, 0.651443,
		0.624476, -0.774130, 0.103697,
		0.558981, 0.350244, -0.751577,
		35.571404, 33.549755, 54.136150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026733, 33.086803, 54.624840>,  <35.180119, 33.304585, 54.662254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026733, 33.086803, 54.624840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939507, 33.449169, 54.479641>,  <35.887169, 33.666588, 54.392521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939507, 33.449169, 54.479641>,  <36.026733, 33.086803, 54.624840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939507, 33.449169, 54.479641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533922, 0.422094, 0.732642,
		0.816928, -0.034044, -0.575734,
		-0.218072, 0.905913, -0.362997,
		35.874084, 33.720943, 54.370743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581398, 33.562141, 54.555470>,  <36.026733, 33.086803, 54.624840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581398, 33.562141, 54.555470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246468, 33.768200, 54.628693>,  <36.045509, 33.891834, 54.672626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246468, 33.768200, 54.628693>,  <36.581398, 33.562141, 54.555470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246468, 33.768200, 54.628693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482027, 0.537673, 0.691779,
		0.257940, 0.667484, -0.698521,
		-0.837327, 0.515143, 0.183058,
		35.995270, 33.922745, 54.683609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223789, 33.664501, 53.944599>,  <36.581398, 33.562141, 54.555470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223789, 33.664501, 53.944599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859394, 33.721569, 53.789810>,  <35.640759, 33.755810, 53.696938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859394, 33.721569, 53.789810>,  <36.223789, 33.664501, 53.944599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859394, 33.721569, 53.789810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348005, -0.237664, -0.906867,
		-0.221351, -0.960813, 0.166859,
		-0.910987, 0.142668, -0.386975,
		35.586098, 33.764370, 53.673717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808563, 33.114906, 53.510471>,  <36.223789, 33.664501, 53.944599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808563, 33.114906, 53.510471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738632, 33.475311, 53.351673>,  <35.696674, 33.691555, 53.256393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738632, 33.475311, 53.351673>,  <35.808563, 33.114906, 53.510471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738632, 33.475311, 53.351673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320257, -0.329245, -0.888275,
		-0.931059, -0.282434, -0.230996,
		-0.174825, 0.901015, -0.396999,
		35.686184, 33.745617, 53.232574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398659, 33.032848, 52.949898>,  <35.808563, 33.114906, 53.510471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398659, 33.032848, 52.949898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631977, 33.354988, 52.907600>,  <35.771969, 33.548271, 52.882221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631977, 33.354988, 52.907600>,  <35.398659, 33.032848, 52.949898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631977, 33.354988, 52.907600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197295, -0.266760, -0.943353,
		-0.787934, 0.529392, -0.314491,
		0.583297, 0.805347, -0.105742,
		35.806965, 33.596592, 52.875877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236988, 33.372868, 52.361034>,  <35.398659, 33.032848, 52.949898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236988, 33.372868, 52.361034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613613, 33.495464, 52.416927>,  <35.839588, 33.569023, 52.450462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613613, 33.495464, 52.416927>,  <35.236988, 33.372868, 52.361034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613613, 33.495464, 52.416927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169978, -0.074189, -0.982651,
		-0.290807, 0.948978, -0.121950,
		0.941562, 0.306491, 0.139731,
		35.896080, 33.587410, 52.458847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314316, 33.813751, 51.903572>,  <35.236988, 33.372868, 52.361034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314316, 33.813751, 51.903572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694817, 33.731705, 51.995693>,  <35.923119, 33.682476, 52.050964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694817, 33.731705, 51.995693>,  <35.314316, 33.813751, 51.903572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694817, 33.731705, 51.995693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202668, -0.147105, -0.968135,
		0.232461, 0.967619, -0.098364,
		0.951256, -0.205118, 0.230301,
		35.980194, 33.670170, 52.064785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673904, 34.048782, 51.305653>,  <35.314316, 33.813751, 51.903572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673904, 34.048782, 51.305653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915997, 33.792141, 51.494141>,  <36.061253, 33.638157, 51.607231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915997, 33.792141, 51.494141>,  <35.673904, 34.048782, 51.305653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915997, 33.792141, 51.494141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382597, -0.284646, -0.878975,
		0.698083, 0.712265, 0.073200,
		0.605227, -0.641604, 0.471217,
		36.097565, 33.599659, 51.635506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321686, 34.320900, 51.190338>,  <35.673904, 34.048782, 51.305653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321686, 34.320900, 51.190338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348053, 33.924908, 51.240284>,  <36.363873, 33.687313, 51.270252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.348053, 33.924908, 51.240284>,  <36.321686, 34.320900, 51.190338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348053, 33.924908, 51.240284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425894, -0.085254, -0.900748,
		0.902368, 0.112558, 0.416007,
		0.065920, -0.989981, 0.124868,
		36.367828, 33.627914, 51.277744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909725, 34.295582, 50.979572>,  <36.321686, 34.320900, 51.190338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909725, 34.295582, 50.979572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788795, 33.914406, 50.970631>,  <36.716240, 33.685699, 50.965263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788795, 33.914406, 50.970631>,  <36.909725, 34.295582, 50.979572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788795, 33.914406, 50.970631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542441, -0.152709, -0.826098,
		0.783811, -0.261874, 0.563083,
		-0.302321, -0.952944, -0.022356,
		36.698097, 33.628521, 50.963924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515564, 33.876457, 50.763447>,  <36.909725, 34.295582, 50.979572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515564, 33.876457, 50.763447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211353, 33.626904, 50.691475>,  <37.028828, 33.477173, 50.648293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211353, 33.626904, 50.691475>,  <37.515564, 33.876457, 50.763447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211353, 33.626904, 50.691475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440353, -0.291937, -0.849036,
		0.477173, -0.724942, 0.496754,
		-0.760523, -0.623884, -0.179926,
		36.983196, 33.439739, 50.637497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844818, 33.234402, 50.677689>,  <37.515564, 33.876457, 50.763447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844818, 33.234402, 50.677689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495197, 33.234917, 50.483356>,  <37.285423, 33.235226, 50.366756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495197, 33.234917, 50.483356>,  <37.844818, 33.234402, 50.677689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495197, 33.234917, 50.483356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485301, 0.048850, -0.872981,
		0.022610, -0.998805, -0.043322,
		-0.874055, 0.001286, -0.485826,
		37.232983, 33.235302, 50.337608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907570, 32.719563, 50.083389>,  <37.844818, 33.234402, 50.677689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907570, 32.719563, 50.083389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589172, 32.935978, 49.974823>,  <37.398132, 33.065826, 49.909683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589172, 32.935978, 49.974823>,  <37.907570, 32.719563, 50.083389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589172, 32.935978, 49.974823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368704, 0.077772, -0.926288,
		-0.480053, -0.837391, -0.261391,
		-0.795994, 0.541043, -0.271415,
		37.350372, 33.098289, 49.893398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868774, 32.489880, 49.429256>,  <37.907570, 32.719563, 50.083389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868774, 32.489880, 49.429256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646259, 32.821468, 49.406113>,  <37.512749, 33.020420, 49.392227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646259, 32.821468, 49.406113>,  <37.868774, 32.489880, 49.429256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646259, 32.821468, 49.406113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365999, 0.181903, -0.912664,
		-0.746048, -0.528883, -0.404593,
		-0.556290, 0.828972, -0.057862,
		37.479374, 33.070160, 49.388756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557190, 32.393555, 48.724987>,  <37.868774, 32.489880, 49.429256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557190, 32.393555, 48.724987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524555, 32.780106, 48.822525>,  <37.504974, 33.012035, 48.881046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524555, 32.780106, 48.822525>,  <37.557190, 32.393555, 48.724987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524555, 32.780106, 48.822525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278113, 0.257016, -0.925525,
		-0.957077, -0.007697, -0.289732,
		-0.081590, 0.966376, 0.243844,
		37.500080, 33.070019, 48.895679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970047, 32.749989, 48.245445>,  <37.557190, 32.393555, 48.724987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970047, 32.749989, 48.245445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250092, 33.000694, 48.382275>,  <37.418118, 33.151115, 48.464371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.250092, 33.000694, 48.382275>,  <36.970047, 32.749989, 48.245445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250092, 33.000694, 48.382275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039241, 0.444570, -0.894884,
		-0.712952, 0.639943, 0.286655,
		0.700113, 0.626761, 0.342070,
		37.460125, 33.188721, 48.484894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828823, 33.343384, 47.876415>,  <36.970047, 32.749989, 48.245445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828823, 33.343384, 47.876415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193779, 33.428310, 48.016392>,  <37.412754, 33.479267, 48.100380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.193779, 33.428310, 48.016392>,  <36.828823, 33.343384, 47.876415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193779, 33.428310, 48.016392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197791, 0.519814, -0.831066,
		-0.358353, 0.827475, 0.432281,
		0.912393, 0.212314, 0.349945,
		37.467499, 33.492004, 48.121376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745789, 33.990238, 47.768826>,  <36.828823, 33.343384, 47.876415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745789, 33.990238, 47.768826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134480, 33.904926, 47.809338>,  <37.367695, 33.853741, 47.833645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134480, 33.904926, 47.809338>,  <36.745789, 33.990238, 47.768826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134480, 33.904926, 47.809338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206224, 0.557829, -0.803927,
		0.114963, 0.802084, 0.586041,
		0.971728, -0.213278, 0.101279,
		37.425999, 33.840942, 47.839722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069675, 34.551941, 47.712009>,  <36.745789, 33.990238, 47.768826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069675, 34.551941, 47.712009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375156, 34.317081, 47.604664>,  <37.558445, 34.176167, 47.540257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.375156, 34.317081, 47.604664>,  <37.069675, 34.551941, 47.712009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375156, 34.317081, 47.604664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112440, 0.530325, -0.840305,
		0.635701, 0.611568, 0.471029,
		0.763703, -0.587145, -0.268363,
		37.604267, 34.140938, 47.524155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602997, 34.998680, 47.414013>,  <37.069675, 34.551941, 47.712009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.602997, 34.998680, 47.414013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663353, 34.629398, 47.272636>,  <37.699566, 34.407829, 47.187813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663353, 34.629398, 47.272636>,  <37.602997, 34.998680, 47.414013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663353, 34.629398, 47.272636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099406, 0.369890, -0.923742,
		0.983540, 0.104249, 0.147585,
		0.150890, -0.923208, -0.353439,
		37.708618, 34.352436, 47.166603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.079567, 35.063885, 46.843285>,  <37.602997, 34.998680, 47.414013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.079567, 35.063885, 46.843285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892071, 34.718021, 46.771004>,  <37.779575, 34.510502, 46.727634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892071, 34.718021, 46.771004>,  <38.079567, 35.063885, 46.843285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892071, 34.718021, 46.771004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138819, 0.129923, -0.981758,
		0.872362, -0.485271, 0.059131,
		-0.468736, -0.864657, -0.180705,
		37.751450, 34.458626, 46.716793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433601, 34.835114, 46.359596>,  <38.079567, 35.063885, 46.843285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433601, 34.835114, 46.359596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105625, 34.607792, 46.332096>,  <37.908840, 34.471401, 46.315594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105625, 34.607792, 46.332096>,  <38.433601, 34.835114, 46.359596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105625, 34.607792, 46.332096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010694, 0.104878, -0.994428,
		0.572345, -0.816110, -0.079917,
		-0.819944, -0.568301, -0.068753,
		37.859642, 34.437302, 46.311470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577164, 34.326088, 45.824825>,  <38.433601, 34.835114, 46.359596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577164, 34.326088, 45.824825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179520, 34.361958, 45.849174>,  <37.940933, 34.383480, 45.863785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179520, 34.361958, 45.849174>,  <38.577164, 34.326088, 45.824825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179520, 34.361958, 45.849174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060211, 0.010109, -0.998134,
		-0.090127, -0.995919, -0.004650,
		-0.994108, 0.089679, 0.060877,
		37.881287, 34.388859, 45.867439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313248, 34.147713, 45.178024>,  <38.577164, 34.326088, 45.824825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313248, 34.147713, 45.178024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988445, 34.317165, 45.338612>,  <37.793564, 34.418839, 45.434963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988445, 34.317165, 45.338612>,  <38.313248, 34.147713, 45.178024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988445, 34.317165, 45.338612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384632, 0.128952, -0.914018,
		-0.438980, -0.896608, 0.058234,
		-0.812006, 0.423634, 0.401472,
		37.744843, 34.444256, 45.459053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763168, 33.841686, 44.732830>,  <38.313248, 34.147713, 45.178024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763168, 33.841686, 44.732830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622948, 34.177795, 44.898270>,  <37.538815, 34.379459, 44.997532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622948, 34.177795, 44.898270>,  <37.763168, 33.841686, 44.732830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622948, 34.177795, 44.898270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277295, 0.328699, -0.902809,
		-0.894551, -0.431168, 0.117777,
		-0.350550, 0.840269, 0.413599,
		37.517784, 34.429874, 45.022350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002182, 33.826305, 44.543613>,  <37.763168, 33.841686, 44.732830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002182, 33.826305, 44.543613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123383, 34.196590, 44.634163>,  <37.196102, 34.418762, 44.688492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123383, 34.196590, 44.634163>,  <37.002182, 33.826305, 44.543613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123383, 34.196590, 44.634163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423736, 0.343641, -0.838068,
		-0.853602, 0.158013, 0.496382,
		0.303003, 0.925712, 0.226377,
		37.214283, 34.474304, 44.702076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366665, 34.245464, 44.406822>,  <37.002182, 33.826305, 44.543613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366665, 34.245464, 44.406822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659573, 34.517845, 44.403149>,  <36.835316, 34.681274, 44.400944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.659573, 34.517845, 44.403149>,  <36.366665, 34.245464, 44.406822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659573, 34.517845, 44.403149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377776, 0.394944, -0.837439,
		-0.566629, 0.616702, 0.546453,
		0.732268, 0.680954, -0.009188,
		36.879253, 34.722130, 44.400391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066795, 34.913170, 44.206642>,  <36.366665, 34.245464, 44.406822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066795, 34.913170, 44.206642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449619, 34.966400, 44.103626>,  <36.679314, 34.998337, 44.041817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.449619, 34.966400, 44.103626>,  <36.066795, 34.913170, 44.206642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449619, 34.966400, 44.103626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289863, 0.427917, -0.856077,
		-0.003720, 0.893968, 0.448116,
		0.957061, 0.133076, -0.257536,
		36.736736, 35.006325, 44.026367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024426, 35.523777, 43.878242>,  <36.066795, 34.913170, 44.206642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024426, 35.523777, 43.878242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375935, 35.355515, 43.788078>,  <36.586842, 35.254559, 43.733978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.375935, 35.355515, 43.788078>,  <36.024426, 35.523777, 43.878242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375935, 35.355515, 43.788078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065402, 0.361715, -0.929992,
		0.472739, 0.831993, 0.290353,
		0.878772, -0.420654, -0.225411,
		36.639565, 35.229317, 43.720455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370541, 36.031715, 43.507378>,  <36.024426, 35.523777, 43.878242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370541, 36.031715, 43.507378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532352, 35.688442, 43.380955>,  <36.629440, 35.482479, 43.305103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532352, 35.688442, 43.380955>,  <36.370541, 36.031715, 43.507378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532352, 35.688442, 43.380955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068997, 0.315968, -0.946258,
		0.911920, 0.404592, 0.068605,
		0.404525, -0.858178, -0.316053,
		36.653709, 35.430988, 43.286140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921867, 36.267960, 42.999855>,  <36.370541, 36.031715, 43.507378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921867, 36.267960, 42.999855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818295, 35.888077, 42.929424>,  <36.756153, 35.660145, 42.887165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818295, 35.888077, 42.929424>,  <36.921867, 36.267960, 42.999855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818295, 35.888077, 42.929424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000481, 0.182421, -0.983220,
		0.965896, -0.254500, -0.047691,
		-0.258929, -0.949712, -0.176077,
		36.740616, 35.603165, 42.876602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219734, 36.152855, 42.334648>,  <36.921867, 36.267960, 42.999855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219734, 36.152855, 42.334648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984703, 35.831146, 42.370220>,  <36.843685, 35.638123, 42.391563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984703, 35.831146, 42.370220>,  <37.219734, 36.152855, 42.334648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984703, 35.831146, 42.370220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080521, -0.051242, -0.995435,
		0.805154, -0.592053, -0.034652,
		-0.587575, -0.804268, 0.088931,
		36.808430, 35.589867, 42.396900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303753, 35.912033, 41.701080>,  <37.219734, 36.152855, 42.334648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303753, 35.912033, 41.701080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987152, 35.727280, 41.861176>,  <36.797192, 35.616428, 41.957233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987152, 35.727280, 41.861176>,  <37.303753, 35.912033, 41.701080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987152, 35.727280, 41.861176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299470, -0.277773, -0.912776,
		0.532771, -0.842322, 0.081538,
		-0.791500, -0.461883, 0.400239,
		36.749702, 35.588715, 41.981247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358593, 35.171101, 41.584728>,  <37.303753, 35.912033, 41.701080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358593, 35.171101, 41.584728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972595, 35.253834, 41.649242>,  <36.740997, 35.303474, 41.687950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972595, 35.253834, 41.649242>,  <37.358593, 35.171101, 41.584728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972595, 35.253834, 41.649242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207453, -0.225624, -0.951870,
		-0.160484, -0.952006, 0.260633,
		-0.964991, 0.206829, 0.161287,
		36.683098, 35.315884, 41.697628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013840, 34.472164, 41.496864>,  <37.358593, 35.171101, 41.584728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013840, 34.472164, 41.496864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735786, 34.755882, 41.450047>,  <36.568954, 34.926113, 41.421955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735786, 34.755882, 41.450047>,  <37.013840, 34.472164, 41.496864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735786, 34.755882, 41.450047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185834, -0.334573, -0.923865,
		-0.694449, -0.620457, 0.364382,
		-0.695131, 0.709291, -0.117042,
		36.527248, 34.968670, 41.414932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482395, 34.100632, 41.165272>,  <37.013840, 34.472164, 41.496864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482395, 34.100632, 41.165272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327465, 34.466110, 41.116066>,  <36.234509, 34.685398, 41.086540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327465, 34.466110, 41.116066>,  <36.482395, 34.100632, 41.165272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327465, 34.466110, 41.116066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440502, -0.300622, -0.845923,
		-0.809902, -0.273455, 0.518924,
		-0.387321, 0.913701, -0.123016,
		36.211269, 34.740219, 41.079163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750549, 34.035797, 41.141293>,  <36.482395, 34.100632, 41.165272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750549, 34.035797, 41.141293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856712, 34.363216, 40.937515>,  <35.920410, 34.559669, 40.815247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856712, 34.363216, 40.937515>,  <35.750549, 34.035797, 41.141293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856712, 34.363216, 40.937515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606823, -0.268788, -0.748011,
		-0.749216, 0.507673, 0.425375,
		0.265409, 0.818548, -0.509448,
		35.936337, 34.608780, 40.784679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185425, 34.215431, 40.758572>,  <35.750549, 34.035797, 41.141293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185425, 34.215431, 40.758572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482456, 34.415752, 40.580685>,  <35.660675, 34.535946, 40.473953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482456, 34.415752, 40.580685>,  <35.185425, 34.215431, 40.758572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482456, 34.415752, 40.580685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409664, -0.185677, -0.893140,
		-0.529863, 0.845410, 0.067282,
		0.742577, 0.500805, -0.444717,
		35.705231, 34.565994, 40.447269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825264, 34.657719, 40.247925>,  <35.185425, 34.215431, 40.758572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825264, 34.657719, 40.247925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209511, 34.612068, 40.146580>,  <35.440060, 34.584679, 40.085773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209511, 34.612068, 40.146580>,  <34.825264, 34.657719, 40.247925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209511, 34.612068, 40.146580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276972, -0.319580, -0.906176,
		0.022453, 0.940661, -0.338605,
		0.960615, -0.114131, -0.253361,
		35.497696, 34.577827, 40.070572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946915, 35.109436, 39.694359>,  <34.825264, 34.657719, 40.247925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946915, 35.109436, 39.694359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225826, 34.823013, 39.681309>,  <35.393173, 34.651157, 39.673477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225826, 34.823013, 39.681309>,  <34.946915, 35.109436, 39.694359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225826, 34.823013, 39.681309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290835, -0.241019, -0.925918,
		0.655151, 0.655107, -0.376312,
		0.697274, -0.716061, -0.032624,
		35.435009, 34.608196, 39.671520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191299, 35.185730, 38.993763>,  <34.946915, 35.109436, 39.694359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191299, 35.185730, 38.993763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326622, 34.832096, 39.122726>,  <35.407814, 34.619915, 39.200104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326622, 34.832096, 39.122726>,  <35.191299, 35.185730, 38.993763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326622, 34.832096, 39.122726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023516, -0.350444, -0.936289,
		0.940743, 0.309168, -0.139347,
		0.338303, -0.884084, 0.322407,
		35.428112, 34.566872, 39.219448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642746, 34.997849, 38.504608>,  <35.191299, 35.185730, 38.993763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642746, 34.997849, 38.504608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532394, 34.646809, 38.661427>,  <35.466183, 34.436184, 38.755516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532394, 34.646809, 38.661427>,  <35.642746, 34.997849, 38.504608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532394, 34.646809, 38.661427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138505, -0.439916, -0.887294,
		0.951160, -0.190487, 0.242917,
		-0.275881, -0.877604, 0.392047,
		35.449631, 34.383526, 38.779041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005428, 34.543259, 38.149307>,  <35.642746, 34.997849, 38.504608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005428, 34.543259, 38.149307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723282, 34.312290, 38.313766>,  <35.553993, 34.173710, 38.412441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.723282, 34.312290, 38.313766>,  <36.005428, 34.543259, 38.149307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723282, 34.312290, 38.313766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105721, -0.487844, -0.866505,
		0.700916, -0.654669, 0.283062,
		-0.705365, -0.577422, 0.411150,
		35.511673, 34.139065, 38.437111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734768, 34.494579, 38.114986>,  <36.005428, 34.543259, 38.149307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734768, 34.494579, 38.114986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005825, 34.249454, 37.952377>,  <37.168461, 34.102379, 37.854813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005825, 34.249454, 37.952377>,  <36.734768, 34.494579, 38.114986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005825, 34.249454, 37.952377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405139, -0.150242, 0.901826,
		-0.613727, -0.775814, 0.146465,
		0.677644, -0.612814, -0.406520,
		37.209118, 34.065609, 37.830421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638023, 33.863201, 38.456894>,  <36.734768, 34.494579, 38.114986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638023, 33.863201, 38.456894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002964, 33.843769, 38.294289>,  <37.221928, 33.832111, 38.196724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002964, 33.843769, 38.294289>,  <36.638023, 33.863201, 38.456894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002964, 33.843769, 38.294289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365037, -0.353072, 0.861445,
		-0.185376, -0.934334, -0.304393,
		0.912351, -0.048576, -0.406517,
		37.276669, 33.829197, 38.172333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930050, 33.206326, 38.727673>,  <36.638023, 33.863201, 38.456894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930050, 33.206326, 38.727673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247890, 33.409229, 38.594227>,  <37.438595, 33.530972, 38.514160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.247890, 33.409229, 38.594227>,  <36.930050, 33.206326, 38.727673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.247890, 33.409229, 38.594227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566096, -0.420432, 0.709064,
		0.219414, -0.752283, -0.621232,
		0.794602, 0.507255, -0.333615,
		37.486271, 33.561405, 38.494141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528423, 32.783508, 38.785126>,  <36.930050, 33.206326, 38.727673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528423, 32.783508, 38.785126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670113, 33.157574, 38.784306>,  <37.755127, 33.382011, 38.783813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670113, 33.157574, 38.784306>,  <37.528423, 32.783508, 38.785126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670113, 33.157574, 38.784306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500817, -0.187844, 0.844925,
		0.789753, -0.300320, -0.534882,
		0.354222, 0.935159, -0.002055,
		37.776379, 33.438122, 38.783688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215710, 32.801338, 39.115425>,  <37.528423, 32.783508, 38.785126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215710, 32.801338, 39.115425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120373, 33.189133, 39.138371>,  <38.063171, 33.421810, 39.152138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120373, 33.189133, 39.138371>,  <38.215710, 32.801338, 39.115425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120373, 33.189133, 39.138371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581620, 0.095190, 0.807872,
		0.777760, 0.225916, -0.586560,
		-0.238346, 0.969485, 0.057362,
		38.048870, 33.479977, 39.155579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788742, 33.014950, 39.356232>,  <38.215710, 32.801338, 39.115425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788742, 33.014950, 39.356232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523781, 33.300987, 39.445545>,  <38.364803, 33.472610, 39.499134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523781, 33.300987, 39.445545>,  <38.788742, 33.014950, 39.356232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523781, 33.300987, 39.445545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358387, 0.040757, 0.932683,
		0.657858, 0.697837, -0.283279,
		-0.662406, 0.715096, 0.223284,
		38.325058, 33.515514, 39.512531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150768, 33.571480, 39.675972>,  <38.788742, 33.014950, 39.356232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150768, 33.571480, 39.675972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778332, 33.643555, 39.802837>,  <38.554871, 33.686798, 39.878956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.778332, 33.643555, 39.802837>,  <39.150768, 33.571480, 39.675972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778332, 33.643555, 39.802837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325120, 0.015671, 0.945543,
		0.165405, 0.983507, -0.073173,
		-0.931095, 0.180188, 0.317166,
		38.499004, 33.697613, 39.897987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123215, 34.233810, 40.012501>,  <39.150768, 33.571480, 39.675972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123215, 34.233810, 40.012501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831745, 33.994759, 40.146290>,  <38.656864, 33.851326, 40.226562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831745, 33.994759, 40.146290>,  <39.123215, 34.233810, 40.012501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831745, 33.994759, 40.146290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411780, 0.007920, 0.911249,
		-0.547240, 0.801731, 0.240322,
		-0.728673, -0.597632, 0.334471,
		38.613144, 33.815468, 40.246632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912727, 34.451725, 40.749874>,  <39.123215, 34.233810, 40.012501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912727, 34.451725, 40.749874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766804, 34.082172, 40.703640>,  <38.679249, 33.860439, 40.675900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.766804, 34.082172, 40.703640>,  <38.912727, 34.451725, 40.749874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.766804, 34.082172, 40.703640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049324, -0.143141, 0.988472,
		-0.929777, 0.354899, 0.097788,
		-0.364805, -0.923882, -0.115584,
		38.657364, 33.805008, 40.668964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757042, 34.243767, 41.389797>,  <38.912727, 34.451725, 40.749874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757042, 34.243767, 41.389797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657116, 33.906620, 41.199150>,  <38.597160, 33.704330, 41.084763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.657116, 33.906620, 41.199150>,  <38.757042, 34.243767, 41.389797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657116, 33.906620, 41.199150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114105, -0.514421, 0.849912,
		-0.961546, 0.157939, 0.224687,
		-0.249818, -0.842868, -0.476618,
		38.582172, 33.653759, 41.056164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153801, 33.983356, 41.810345>,  <38.757042, 34.243767, 41.389797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153801, 33.983356, 41.810345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357182, 33.714146, 41.595490>,  <38.479210, 33.552620, 41.466576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357182, 33.714146, 41.595490>,  <38.153801, 33.983356, 41.810345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357182, 33.714146, 41.595490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240569, -0.487921, 0.839083,
		-0.826805, -0.555849, -0.086174,
		0.508449, -0.673027, -0.537135,
		38.509716, 33.512238, 41.434349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061497, 33.253803, 42.175911>,  <38.153801, 33.983356, 41.810345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061497, 33.253803, 42.175911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391769, 33.233994, 41.951130>,  <38.589935, 33.222107, 41.816261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391769, 33.233994, 41.951130>,  <38.061497, 33.253803, 42.175911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391769, 33.233994, 41.951130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470634, -0.488763, 0.734585,
		-0.311044, -0.871010, -0.380255,
		0.825685, -0.049527, -0.561954,
		38.639473, 33.219135, 41.782543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245281, 32.676125, 42.354137>,  <38.061497, 33.253803, 42.175911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245281, 32.676125, 42.354137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581741, 32.837391, 42.209957>,  <38.783619, 32.934151, 42.123447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.581741, 32.837391, 42.209957>,  <38.245281, 32.676125, 42.354137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.581741, 32.837391, 42.209957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524278, -0.444426, 0.726373,
		0.132654, -0.799966, -0.585199,
		0.841151, 0.403164, -0.360450,
		38.834087, 32.958340, 42.101822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789963, 32.179470, 42.295918>,  <38.245281, 32.676125, 42.354137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789963, 32.179470, 42.295918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007637, 32.514938, 42.304867>,  <39.138241, 32.716217, 42.310238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007637, 32.514938, 42.304867>,  <38.789963, 32.179470, 42.295918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007637, 32.514938, 42.304867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572695, -0.390830, 0.720605,
		0.613092, -0.379328, -0.692985,
		0.544185, 0.838667, 0.022376,
		39.170891, 32.766537, 42.311581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446766, 31.957537, 42.531261>,  <38.789963, 32.179470, 42.295918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446766, 31.957537, 42.531261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457287, 32.353970, 42.583508>,  <39.463600, 32.591831, 42.614857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457287, 32.353970, 42.583508>,  <39.446766, 31.957537, 42.531261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457287, 32.353970, 42.583508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674460, -0.114037, 0.729451,
		0.737842, 0.068907, -0.671447,
		0.026306, 0.991084, 0.130617,
		39.465179, 32.651295, 42.622692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095230, 32.065483, 42.646847>,  <39.446766, 31.957537, 42.531261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095230, 32.065483, 42.646847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930004, 32.404053, 42.781281>,  <39.830868, 32.607193, 42.861942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930004, 32.404053, 42.781281>,  <40.095230, 32.065483, 42.646847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930004, 32.404053, 42.781281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580509, -0.039634, 0.813289,
		0.701705, 0.531037, -0.474984,
		-0.413061, 0.846421, 0.336083,
		39.806087, 32.657978, 42.882107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574970, 32.527481, 42.901833>,  <40.095230, 32.065483, 42.646847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574970, 32.527481, 42.901833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246677, 32.669209, 43.081104>,  <40.049702, 32.754246, 43.188667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246677, 32.669209, 43.081104>,  <40.574970, 32.527481, 42.901833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246677, 32.669209, 43.081104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465877, -0.039014, 0.883989,
		0.330699, 0.934311, -0.133049,
		-0.820730, 0.354319, 0.448176,
		40.000458, 32.775505, 43.215557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859272, 32.966560, 43.414837>,  <40.574970, 32.527481, 42.901833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859272, 32.966560, 43.414837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484863, 32.898415, 43.538013>,  <40.260216, 32.857525, 43.611919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.484863, 32.898415, 43.538013>,  <40.859272, 32.966560, 43.414837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484863, 32.898415, 43.538013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297923, 0.082212, 0.951043,
		-0.187345, 0.981945, -0.026196,
		-0.936026, -0.170369, 0.307946,
		40.204056, 32.847305, 43.630398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714046, 33.455284, 43.886276>,  <40.859272, 32.966560, 43.414837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714046, 33.455284, 43.886276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396282, 33.228203, 43.972652>,  <40.205624, 33.091953, 44.024479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396282, 33.228203, 43.972652>,  <40.714046, 33.455284, 43.886276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396282, 33.228203, 43.972652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220157, 0.062207, 0.973479,
		-0.566078, 0.820881, 0.075566,
		-0.794409, -0.567702, 0.215937,
		40.157959, 33.057892, 44.037434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182762, 33.778576, 44.296215>,  <40.714046, 33.455284, 43.886276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182762, 33.778576, 44.296215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142189, 33.386703, 44.365417>,  <40.117847, 33.151581, 44.406937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.142189, 33.386703, 44.365417>,  <40.182762, 33.778576, 44.296215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142189, 33.386703, 44.365417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066087, 0.180152, 0.981416,
		-0.992645, 0.088111, -0.083017,
		-0.101429, -0.979684, 0.173004,
		40.111759, 33.092796, 44.417320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645527, 33.743076, 44.808723>,  <40.182762, 33.778576, 44.296215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645527, 33.743076, 44.808723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793571, 33.371540, 44.815399>,  <39.882401, 33.148621, 44.819405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793571, 33.371540, 44.815399>,  <39.645527, 33.743076, 44.808723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793571, 33.371540, 44.815399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228733, -0.073706, 0.970695,
		-0.900387, -0.363086, -0.239735,
		0.370115, -0.928836, 0.016686,
		39.904606, 33.092888, 44.820404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169868, 33.282139, 45.113461>,  <39.645527, 33.743076, 44.808723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169868, 33.282139, 45.113461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521667, 33.097961, 45.161575>,  <39.732746, 32.987453, 45.190445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521667, 33.097961, 45.161575>,  <39.169868, 33.282139, 45.113461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521667, 33.097961, 45.161575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188005, -0.103963, 0.976650,
		-0.437186, -0.881581, -0.178001,
		0.879501, -0.460443, 0.120291,
		39.785519, 32.959827, 45.197662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068413, 32.688076, 45.554897>,  <39.169868, 33.282139, 45.113461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068413, 32.688076, 45.554897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454014, 32.784359, 45.600090>,  <39.685375, 32.842129, 45.627205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454014, 32.784359, 45.600090>,  <39.068413, 32.688076, 45.554897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454014, 32.784359, 45.600090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108544, -0.031651, 0.993588,
		0.242741, -0.970081, -0.004384,
		0.964000, 0.240709, 0.112979,
		39.743214, 32.856571, 45.633984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.289333, 32.214432, 46.040604>,  <39.068413, 32.688076, 45.554897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.289333, 32.214432, 46.040604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587738, 32.480068, 46.060410>,  <39.766781, 32.639450, 46.072292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587738, 32.480068, 46.060410>,  <39.289333, 32.214432, 46.040604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587738, 32.480068, 46.060410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025703, -0.045577, 0.998630,
		0.665438, -0.746261, -0.016932,
		0.746011, 0.664091, 0.049510,
		39.811543, 32.679295, 46.075264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738091, 31.905676, 46.538998>,  <39.289333, 32.214432, 46.040604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738091, 31.905676, 46.538998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856186, 32.287083, 46.514858>,  <39.927044, 32.515926, 46.500374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856186, 32.287083, 46.514858>,  <39.738091, 31.905676, 46.538998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856186, 32.287083, 46.514858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030601, 0.053698, 0.998088,
		0.954934, -0.296520, -0.013325,
		0.295238, 0.953516, -0.060352,
		39.944756, 32.573139, 46.496754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354462, 31.924551, 47.028061>,  <39.738091, 31.905676, 46.538998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354462, 31.924551, 47.028061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273602, 32.311924, 46.969711>,  <40.225086, 32.544346, 46.934704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273602, 32.311924, 46.969711>,  <40.354462, 31.924551, 47.028061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273602, 32.311924, 46.969711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177946, 0.182786, 0.966915,
		0.963053, 0.169503, -0.209278,
		-0.202148, 0.968431, -0.145870,
		40.212955, 32.602455, 46.925949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995712, 32.389858, 47.207382>,  <40.354462, 31.924551, 47.028061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995712, 32.389858, 47.207382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650719, 32.580360, 47.275856>,  <40.443722, 32.694664, 47.316940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650719, 32.580360, 47.275856>,  <40.995712, 32.389858, 47.207382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650719, 32.580360, 47.275856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319996, 0.251152, 0.913524,
		0.392080, 0.842675, -0.369014,
		-0.862483, 0.476257, 0.171181,
		40.391975, 32.723236, 47.327209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152309, 33.079136, 47.532009>,  <40.995712, 32.389858, 47.207382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152309, 33.079136, 47.532009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765873, 33.002567, 47.601318>,  <40.534012, 32.956627, 47.642902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765873, 33.002567, 47.601318>,  <41.152309, 33.079136, 47.532009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765873, 33.002567, 47.601318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089751, 0.380275, 0.920508,
		-0.242093, 0.904848, -0.350201,
		-0.966093, -0.191418, 0.173273,
		40.476044, 32.945141, 47.653301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914581, 33.675217, 47.785942>,  <41.152309, 33.079136, 47.532009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914581, 33.675217, 47.785942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653709, 33.399719, 47.912617>,  <40.497185, 33.234421, 47.988621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.653709, 33.399719, 47.912617>,  <40.914581, 33.675217, 47.785942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653709, 33.399719, 47.912617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008285, 0.424212, 0.905525,
		-0.758018, 0.587943, -0.282369,
		-0.652181, -0.688743, 0.316689,
		40.458054, 33.193096, 48.007622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308651, 33.972271, 48.182987>,  <40.914581, 33.675217, 47.785942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308651, 33.972271, 48.182987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343773, 33.592701, 48.304203>,  <40.364845, 33.364960, 48.376934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343773, 33.592701, 48.304203>,  <40.308651, 33.972271, 48.182987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343773, 33.592701, 48.304203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126901, 0.291082, 0.948244,
		-0.988021, -0.121717, -0.094861,
		0.087805, -0.948923, 0.303042,
		40.370113, 33.308025, 48.395115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823803, 34.036285, 48.632980>,  <40.308651, 33.972271, 48.182987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823803, 34.036285, 48.632980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004398, 33.689991, 48.719379>,  <40.112755, 33.482212, 48.771217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004398, 33.689991, 48.719379>,  <39.823803, 34.036285, 48.632980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004398, 33.689991, 48.719379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223654, 0.124546, 0.966678,
		-0.863792, -0.484753, -0.137394,
		0.451488, -0.865738, 0.215999,
		40.139843, 33.430271, 48.784180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259457, 33.637222, 48.944225>,  <39.823803, 34.036285, 48.632980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259457, 33.637222, 48.944225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617741, 33.523842, 49.081249>,  <39.832710, 33.455814, 49.163464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617741, 33.523842, 49.081249>,  <39.259457, 33.637222, 48.944225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617741, 33.523842, 49.081249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339979, 0.059902, 0.938523,
		-0.286549, -0.957113, -0.042713,
		0.895714, -0.283455, 0.342563,
		39.886456, 33.438805, 49.184017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065456, 33.332138, 49.561749>,  <39.259457, 33.637222, 48.944225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065456, 33.332138, 49.561749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462479, 33.376938, 49.580910>,  <39.700691, 33.403820, 49.592407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.462479, 33.376938, 49.580910>,  <39.065456, 33.332138, 49.561749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462479, 33.376938, 49.580910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035832, -0.107401, 0.993570,
		0.116428, -0.987887, -0.102588,
		0.992553, 0.112004, 0.047903,
		39.760246, 33.410538, 49.595280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330021, 32.777458, 49.890163>,  <39.065456, 33.332138, 49.561749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330021, 32.777458, 49.890163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606049, 33.059280, 49.956367>,  <39.771667, 33.228374, 49.996090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.606049, 33.059280, 49.956367>,  <39.330021, 32.777458, 49.890163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606049, 33.059280, 49.956367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002820, -0.226071, 0.974107,
		0.723734, -0.672672, -0.154019,
		0.690074, 0.704559, 0.165513,
		39.813072, 33.270649, 50.006020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648228, 32.489880, 50.492695>,  <39.330021, 32.777458, 49.890163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648228, 32.489880, 50.492695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793407, 32.862263, 50.476791>,  <39.880516, 33.085693, 50.467247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793407, 32.862263, 50.476791>,  <39.648228, 32.489880, 50.492695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793407, 32.862263, 50.476791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122238, -0.005265, 0.992487,
		0.923757, -0.365080, -0.115710,
		0.362947, 0.930961, -0.039763,
		39.902290, 33.141552, 50.464863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227936, 32.531548, 51.005650>,  <39.648228, 32.489880, 50.492695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227936, 32.531548, 51.005650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132877, 32.913063, 50.932106>,  <40.075844, 33.141972, 50.887981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132877, 32.913063, 50.932106>,  <40.227936, 32.531548, 51.005650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132877, 32.913063, 50.932106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188671, 0.231000, 0.954485,
		0.952852, 0.192141, -0.234849,
		-0.237646, 0.953793, -0.183857,
		40.061584, 33.199200, 50.876949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771378, 32.927868, 51.317261>,  <40.227936, 32.531548, 51.005650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771378, 32.927868, 51.317261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481556, 33.200859, 51.278801>,  <40.307663, 33.364655, 51.255726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481556, 33.200859, 51.278801>,  <40.771378, 32.927868, 51.317261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481556, 33.200859, 51.278801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245013, 0.385441, 0.889609,
		0.644200, 0.621011, -0.446489,
		-0.724552, 0.682481, -0.096146,
		40.264191, 33.405605, 51.249958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083752, 33.549183, 51.375195>,  <40.771378, 32.927868, 51.317261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083752, 33.549183, 51.375195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708626, 33.596149, 51.505859>,  <40.483551, 33.624329, 51.584259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708626, 33.596149, 51.505859>,  <41.083752, 33.549183, 51.375195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708626, 33.596149, 51.505859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346760, 0.273682, 0.897137,
		0.015940, 0.954626, -0.297381,
		-0.937818, 0.117421, 0.326664,
		40.427280, 33.631374, 51.603859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098751, 34.174492, 51.722240>,  <41.083752, 33.549183, 51.375195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098751, 34.174492, 51.722240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798683, 33.949379, 51.861107>,  <40.618645, 33.814312, 51.944427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798683, 33.949379, 51.861107>,  <41.098751, 34.174492, 51.722240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798683, 33.949379, 51.861107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201247, 0.305806, 0.930582,
		-0.629882, 0.767957, -0.116147,
		-0.750166, -0.562783, 0.347170,
		40.573635, 33.780544, 51.965260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559963, 34.783695, 51.794323>,  <41.098751, 34.174492, 51.722240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559963, 34.783695, 51.794323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619869, 35.175964, 51.844677>,  <40.655811, 35.411327, 51.874889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619869, 35.175964, 51.844677>,  <40.559963, 34.783695, 51.794323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619869, 35.175964, 51.844677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189654, 0.153447, -0.969786,
		-0.970362, 0.121367, 0.208970,
		0.149766, 0.980675, 0.125881,
		40.664799, 35.470165, 51.882442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923504, 35.150330, 51.488277>,  <40.559963, 34.783695, 51.794323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923504, 35.150330, 51.488277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239315, 35.395691, 51.496101>,  <40.428802, 35.542908, 51.500797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.239315, 35.395691, 51.496101>,  <39.923504, 35.150330, 51.488277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239315, 35.395691, 51.496101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197712, 0.284395, -0.938099,
		-0.580994, 0.736789, 0.345815,
		0.789529, 0.613402, 0.019560,
		40.476173, 35.579712, 51.501968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629471, 35.820274, 51.274555>,  <39.923504, 35.150330, 51.488277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629471, 35.820274, 51.274555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024212, 35.831936, 51.210972>,  <40.261059, 35.838932, 51.172821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024212, 35.831936, 51.210972>,  <39.629471, 35.820274, 51.274555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024212, 35.831936, 51.210972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161095, 0.256120, -0.953127,
		0.012923, 0.966205, 0.257450,
		0.986854, 0.029157, -0.158960,
		40.320267, 35.840683, 51.163284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729786, 36.355469, 50.777176>,  <39.629471, 35.820274, 51.274555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729786, 36.355469, 50.777176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079948, 36.163864, 50.751228>,  <40.290047, 36.048901, 50.735661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.079948, 36.163864, 50.751228>,  <39.729786, 36.355469, 50.777176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079948, 36.163864, 50.751228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079552, 0.275139, -0.958108,
		0.476796, 0.833573, 0.278965,
		0.875407, -0.479014, -0.064873,
		40.342571, 36.020161, 50.731766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351456, 36.853493, 50.509506>,  <39.729786, 36.355469, 50.777176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351456, 36.853493, 50.509506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481476, 36.487679, 50.413204>,  <40.559486, 36.268188, 50.355423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481476, 36.487679, 50.413204>,  <40.351456, 36.853493, 50.509506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481476, 36.487679, 50.413204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131409, 0.295788, -0.946172,
		0.936522, 0.275917, 0.216325,
		0.325051, -0.914538, -0.240754,
		40.578991, 36.213318, 50.340977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738762, 36.908192, 49.901520>,  <40.351456, 36.853493, 50.509506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738762, 36.908192, 49.901520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736774, 36.508224, 49.906094>,  <40.735580, 36.268242, 49.908836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.736774, 36.508224, 49.906094>,  <40.738762, 36.908192, 49.901520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.736774, 36.508224, 49.906094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093086, -0.011847, -0.995588,
		0.995646, -0.003884, 0.093137,
		-0.004970, -0.999922, 0.011434,
		40.735283, 36.208248, 49.909523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369251, 36.678940, 49.544487>,  <40.738762, 36.908192, 49.901520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369251, 36.678940, 49.544487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099312, 36.387794, 49.495834>,  <40.937347, 36.213108, 49.466640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099312, 36.387794, 49.495834>,  <41.369251, 36.678940, 49.544487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099312, 36.387794, 49.495834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247310, -0.067769, -0.966564,
		0.695286, -0.682362, 0.225742,
		-0.674845, -0.727866, -0.121636,
		40.896858, 36.169434, 49.459343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661884, 36.326195, 48.969894>,  <41.369251, 36.678940, 49.544487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661884, 36.326195, 48.969894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283855, 36.196716, 48.987999>,  <41.057037, 36.119030, 48.998863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.283855, 36.196716, 48.987999>,  <41.661884, 36.326195, 48.969894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283855, 36.196716, 48.987999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043991, -0.263198, -0.963738,
		0.323876, -0.908815, 0.262982,
		-0.945076, -0.323700, 0.045264,
		41.000332, 36.099606, 49.001579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703922, 35.661777, 48.717941>,  <41.661884, 36.326195, 48.969894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703922, 35.661777, 48.717941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339336, 35.819836, 48.672176>,  <41.120586, 35.914669, 48.644718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339336, 35.819836, 48.672176>,  <41.703922, 35.661777, 48.717941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339336, 35.819836, 48.672176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057299, -0.153475, -0.986490,
		-0.407368, -0.905707, 0.117245,
		-0.911465, 0.395146, -0.114417,
		41.065895, 35.938381, 48.637852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359913, 35.252140, 48.294067>,  <41.703922, 35.661777, 48.717941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359913, 35.252140, 48.294067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133358, 35.580978, 48.270870>,  <40.997425, 35.778282, 48.256954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133358, 35.580978, 48.270870>,  <41.359913, 35.252140, 48.294067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133358, 35.580978, 48.270870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043484, -0.100075, -0.994029,
		-0.822993, -0.560481, 0.092429,
		-0.566385, 0.822098, -0.057989,
		40.963444, 35.827606, 48.253475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816170, 35.037819, 47.882504>,  <41.359913, 35.252140, 48.294067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816170, 35.037819, 47.882504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812195, 35.437794, 47.880444>,  <40.809811, 35.677780, 47.879208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.812195, 35.437794, 47.880444>,  <40.816170, 35.037819, 47.882504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.812195, 35.437794, 47.880444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046643, -0.005612, -0.998896,
		-0.998862, -0.009684, 0.046696,
		-0.009935, 0.999937, -0.005154,
		40.809216, 35.737774, 47.878899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292171, 35.229027, 47.592121>,  <40.816170, 35.037819, 47.882504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292171, 35.229027, 47.592121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527451, 35.549774, 47.550091>,  <40.668617, 35.742222, 47.524872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527451, 35.549774, 47.550091>,  <40.292171, 35.229027, 47.592121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527451, 35.549774, 47.550091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096573, -0.059353, -0.993554,
		-0.802933, 0.594551, 0.042527,
		0.588194, 0.801865, -0.105074,
		40.703907, 35.790333, 47.518570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.902180, 35.577282, 47.062126>,  <40.292171, 35.229027, 47.592121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.902180, 35.577282, 47.062126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283947, 35.695641, 47.077747>,  <40.513008, 35.766655, 47.087120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283947, 35.695641, 47.077747>,  <39.902180, 35.577282, 47.062126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283947, 35.695641, 47.077747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056625, -0.051064, -0.997089,
		-0.293043, 0.953853, -0.065492,
		0.954421, 0.295899, 0.039048,
		40.570274, 35.784409, 47.089462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932381, 36.076778, 46.642891>,  <39.902180, 35.577282, 47.062126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932381, 36.076778, 46.642891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313282, 35.958710, 46.674088>,  <40.541824, 35.887867, 46.692806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313282, 35.958710, 46.674088>,  <39.932381, 36.076778, 46.642891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313282, 35.958710, 46.674088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067048, -0.047027, -0.996641,
		0.297852, 0.954285, -0.024991,
		0.952255, -0.295175, 0.077990,
		40.598957, 35.870155, 46.697483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184483, 36.423439, 46.052876>,  <39.932381, 36.076778, 46.642891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184483, 36.423439, 46.052876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475712, 36.180214, 46.179474>,  <40.650448, 36.034279, 46.255432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475712, 36.180214, 46.179474>,  <40.184483, 36.423439, 46.052876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475712, 36.180214, 46.179474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251479, -0.192591, -0.948508,
		0.637710, 0.770172, 0.012696,
		0.728069, -0.608066, 0.316499,
		40.694134, 35.997795, 46.274426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821739, 36.698895, 45.830593>,  <40.184483, 36.423439, 46.052876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821739, 36.698895, 45.830593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831524, 36.300888, 45.869267>,  <40.837395, 36.062084, 45.892471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831524, 36.300888, 45.869267>,  <40.821739, 36.698895, 45.830593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831524, 36.300888, 45.869267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008057, -0.096509, -0.995299,
		0.999668, 0.025129, 0.005656,
		0.024465, -0.995015, 0.096680,
		40.838863, 36.002384, 45.898270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266159, 36.535156, 45.334675>,  <40.821739, 36.698895, 45.830593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266159, 36.535156, 45.334675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070404, 36.193653, 45.405777>,  <40.952950, 35.988750, 45.448441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070404, 36.193653, 45.405777>,  <41.266159, 36.535156, 45.334675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070404, 36.193653, 45.405777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022195, -0.215963, -0.976149,
		0.871784, -0.473769, 0.124639,
		-0.489387, -0.853758, 0.177758,
		40.923588, 35.937527, 45.459103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609840, 35.976837, 44.970016>,  <41.266159, 36.535156, 45.334675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609840, 35.976837, 44.970016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264313, 35.785641, 45.033691>,  <41.056995, 35.670925, 45.071896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.264313, 35.785641, 45.033691>,  <41.609840, 35.976837, 44.970016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264313, 35.785641, 45.033691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107187, -0.483114, -0.868972,
		0.492264, -0.733573, 0.468558,
		-0.863821, -0.477987, 0.159191,
		41.005165, 35.642246, 45.081448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723202, 35.231632, 44.968060>,  <41.609840, 35.976837, 44.970016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723202, 35.231632, 44.968060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339745, 35.297791, 44.875420>,  <41.109669, 35.337486, 44.819836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339745, 35.297791, 44.875420>,  <41.723202, 35.231632, 44.968060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339745, 35.297791, 44.875420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112835, -0.526201, -0.842841,
		-0.261272, -0.834120, 0.485779,
		-0.958647, 0.165398, -0.231599,
		41.052151, 35.347408, 44.805939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426270, 34.642975, 44.566673>,  <41.723202, 35.231632, 44.968060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426270, 34.642975, 44.566673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172424, 34.946671, 44.508938>,  <41.020119, 35.128887, 44.474297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.172424, 34.946671, 44.508938>,  <41.426270, 34.642975, 44.566673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.172424, 34.946671, 44.508938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150640, -0.304701, -0.940460,
		-0.758010, -0.575081, 0.307737,
		-0.634609, 0.759236, -0.144336,
		40.982040, 35.174442, 44.465637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847164, 34.352249, 44.115978>,  <41.426270, 34.642975, 44.566673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847164, 34.352249, 44.115978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811871, 34.748867, 44.077923>,  <40.790695, 34.986839, 44.055092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.811871, 34.748867, 44.077923>,  <40.847164, 34.352249, 44.115978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811871, 34.748867, 44.077923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027735, -0.097916, -0.994808,
		-0.995714, -0.085133, 0.036140,
		-0.088229, 0.991547, -0.095135,
		40.785400, 35.046329, 44.049381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164619, 34.481213, 43.745094>,  <40.847164, 34.352249, 44.115978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164619, 34.481213, 43.745094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391853, 34.806885, 43.697102>,  <40.528194, 35.002289, 43.668304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391853, 34.806885, 43.697102>,  <40.164619, 34.481213, 43.745094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391853, 34.806885, 43.697102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115306, -0.065613, -0.991161,
		-0.814852, 0.576898, 0.056606,
		0.568085, 0.814176, -0.119984,
		40.562279, 35.051136, 43.661106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738857, 34.845242, 43.390305>,  <40.164619, 34.481213, 43.745094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738857, 34.845242, 43.390305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095058, 35.018238, 43.333805>,  <40.308781, 35.122036, 43.299908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095058, 35.018238, 43.333805>,  <39.738857, 34.845242, 43.390305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095058, 35.018238, 43.333805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144080, -0.026398, -0.989214,
		-0.431553, 0.901253, 0.038806,
		0.890507, 0.432489, -0.141244,
		40.362209, 35.147984, 43.291431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648067, 35.319839, 42.912052>,  <39.738857, 34.845242, 43.390305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648067, 35.319839, 42.912052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044624, 35.288521, 42.870079>,  <40.282558, 35.269730, 42.844894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.044624, 35.288521, 42.870079>,  <39.648067, 35.319839, 42.912052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044624, 35.288521, 42.870079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098081, 0.086720, -0.991393,
		0.086720, 0.993152, 0.078294,
		0.991393, -0.078294, -0.104930,
		40.342041, 35.265034, 42.838600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924828, 35.886066, 42.351139>,  <39.648067, 35.319839, 42.912052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924828, 35.886066, 42.351139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194424, 35.592129, 42.381451>,  <40.356182, 35.415768, 42.399639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.194424, 35.592129, 42.381451>,  <39.924828, 35.886066, 42.351139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194424, 35.592129, 42.381451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141898, 0.028107, -0.989482,
		0.724982, 0.677657, 0.123216,
		0.673992, -0.734841, 0.075781,
		40.396622, 35.371677, 42.404186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443226, 36.104580, 41.997452>,  <39.924828, 35.886066, 42.351139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443226, 36.104580, 41.997452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511631, 35.710800, 42.013542>,  <40.552673, 35.474533, 42.023197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.511631, 35.710800, 42.013542>,  <40.443226, 36.104580, 41.997452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.511631, 35.710800, 42.013542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085330, -0.025873, -0.996017,
		0.981568, 0.173760, 0.079579,
		0.171009, -0.984448, 0.040223,
		40.562935, 35.415466, 42.025608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050327, 35.931110, 41.607018>,  <40.443226, 36.104580, 41.997452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050327, 35.931110, 41.607018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866890, 35.576233, 41.627316>,  <40.756828, 35.363304, 41.639496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866890, 35.576233, 41.627316>,  <41.050327, 35.931110, 41.607018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866890, 35.576233, 41.627316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331939, -0.223991, -0.916321,
		0.824324, -0.403372, 0.397216,
		-0.458591, -0.887197, 0.050747,
		40.729313, 35.310074, 41.642540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566883, 35.506771, 41.433174>,  <41.050327, 35.931110, 41.607018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566883, 35.506771, 41.433174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211246, 35.340313, 41.356926>,  <40.997864, 35.240437, 41.311176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.211246, 35.340313, 41.356926>,  <41.566883, 35.506771, 41.433174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211246, 35.340313, 41.356926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257033, -0.109313, -0.960200,
		0.378746, -0.902703, 0.204153,
		-0.889092, -0.416146, -0.190622,
		40.944519, 35.215469, 41.299740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745583, 34.915569, 41.131657>,  <41.566883, 35.506771, 41.433174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745583, 34.915569, 41.131657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365509, 34.976376, 41.022816>,  <41.137466, 35.012859, 40.957512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.365509, 34.976376, 41.022816>,  <41.745583, 34.915569, 41.131657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365509, 34.976376, 41.022816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217443, -0.302180, -0.928119,
		-0.223308, -0.941053, 0.254073,
		-0.950185, 0.152010, -0.272104,
		41.080452, 35.021980, 40.941185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648930, 34.404671, 40.580353>,  <41.745583, 34.915569, 41.131657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648930, 34.404671, 40.580353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355736, 34.674213, 40.543133>,  <41.179821, 34.835938, 40.520802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355736, 34.674213, 40.543133>,  <41.648930, 34.404671, 40.580353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355736, 34.674213, 40.543133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060489, -0.071678, -0.995592,
		-0.677555, -0.735378, 0.011778,
		-0.732981, 0.673856, -0.093048,
		41.135841, 34.876369, 40.515217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241066, 34.098003, 40.128208>,  <41.648930, 34.404671, 40.580353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241066, 34.098003, 40.128208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082783, 34.465355, 40.128922>,  <40.987812, 34.685764, 40.129349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.082783, 34.465355, 40.128922>,  <41.241066, 34.098003, 40.128208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.082783, 34.465355, 40.128922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037164, -0.014074, -0.999210,
		-0.917625, -0.395461, 0.039699,
		-0.395707, 0.918375, 0.001782,
		40.964069, 34.740868, 40.129456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602020, 34.070061, 39.778069>,  <41.241066, 34.098003, 40.128208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602020, 34.070061, 39.778069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749943, 34.441101, 39.756874>,  <40.838696, 34.663723, 39.744156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749943, 34.441101, 39.756874>,  <40.602020, 34.070061, 39.778069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749943, 34.441101, 39.756874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249208, 0.044085, -0.967446,
		-0.895065, 0.370971, 0.247468,
		0.369804, 0.927598, -0.052990,
		40.860886, 34.719379, 39.740978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119583, 34.518990, 39.423931>,  <40.602020, 34.070061, 39.778069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119583, 34.518990, 39.423931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469288, 34.709911, 39.388515>,  <40.679111, 34.824467, 39.367264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469288, 34.709911, 39.388515>,  <40.119583, 34.518990, 39.423931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469288, 34.709911, 39.388515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100411, -0.000648, -0.994946,
		-0.474951, 0.878737, 0.047360,
		0.874265, 0.477306, -0.088543,
		40.731567, 34.853104, 39.361954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934284, 35.108219, 39.060654>,  <40.119583, 34.518990, 39.423931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934284, 35.108219, 39.060654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332397, 35.112572, 39.022110>,  <40.571266, 35.115185, 38.998985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332397, 35.112572, 39.022110>,  <39.934284, 35.108219, 39.060654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332397, 35.112572, 39.022110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094277, 0.341169, -0.935262,
		0.022698, 0.939939, 0.340587,
		0.995287, 0.010880, -0.096358,
		40.630985, 35.115837, 38.993202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116096, 35.740376, 38.727467>,  <39.934284, 35.108219, 39.060654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116096, 35.740376, 38.727467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407379, 35.476158, 38.654373>,  <40.582150, 35.317627, 38.610516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407379, 35.476158, 38.654373>,  <40.116096, 35.740376, 38.727467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407379, 35.476158, 38.654373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097951, 0.364201, -0.926155,
		0.678318, 0.656537, 0.329916,
		0.728211, -0.660543, -0.182736,
		40.625843, 35.277996, 38.599552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559078, 36.162659, 38.360310>,  <40.116096, 35.740376, 38.727467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559078, 36.162659, 38.360310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664684, 35.786526, 38.274460>,  <40.728046, 35.560844, 38.222950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.664684, 35.786526, 38.274460>,  <40.559078, 36.162659, 38.360310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664684, 35.786526, 38.274460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205681, 0.272293, -0.939974,
		0.942334, 0.204020, 0.265298,
		0.264012, -0.940336, -0.214628,
		40.743889, 35.504425, 38.210072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153233, 36.207073, 37.865707>,  <40.559078, 36.162659, 38.360310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153233, 36.207073, 37.865707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025658, 35.829575, 37.830780>,  <40.949112, 35.603077, 37.809826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025658, 35.829575, 37.830780>,  <41.153233, 36.207073, 37.865707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025658, 35.829575, 37.830780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015064, 0.087067, -0.996089,
		0.947655, -0.319009, -0.013553,
		-0.318941, -0.943744, -0.087315,
		40.929974, 35.546452, 37.804585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599117, 35.835716, 37.387962>,  <41.153233, 36.207073, 37.865707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599117, 35.835716, 37.387962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259651, 35.624580, 37.401566>,  <41.055973, 35.497898, 37.409725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259651, 35.624580, 37.401566>,  <41.599117, 35.835716, 37.387962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259651, 35.624580, 37.401566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008919, -0.050001, -0.998709,
		0.528861, -0.847869, 0.037726,
		-0.848662, -0.527842, 0.034006,
		41.005054, 35.466228, 37.411766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768841, 35.166351, 36.911762>,  <41.599117, 35.835716, 37.387962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768841, 35.166351, 36.911762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377945, 35.241585, 36.951008>,  <41.143406, 35.286724, 36.974556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.377945, 35.241585, 36.951008>,  <41.768841, 35.166351, 36.911762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377945, 35.241585, 36.951008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110718, -0.057688, -0.992176,
		-0.180956, -0.980457, 0.077200,
		-0.977239, 0.188087, 0.098115,
		41.084774, 35.298012, 36.980442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498596, 34.785610, 36.382278>,  <41.768841, 35.166351, 36.911762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498596, 34.785610, 36.382278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195038, 35.010490, 36.513733>,  <41.012901, 35.145420, 36.592606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.195038, 35.010490, 36.513733>,  <41.498596, 34.785610, 36.382278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195038, 35.010490, 36.513733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409468, -0.019547, -0.912115,
		-0.506371, -0.826767, 0.245039,
		-0.758897, 0.562204, 0.328637,
		40.967369, 35.179153, 36.612324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240734, 34.111393, 36.276711>,  <41.498596, 34.785610, 36.382278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240734, 34.111393, 36.276711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008007, 34.433319, 36.229801>,  <40.868370, 34.626476, 36.201656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008007, 34.433319, 36.229801>,  <41.240734, 34.111393, 36.276711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008007, 34.433319, 36.229801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281449, 0.063953, -0.957443,
		-0.763066, -0.590068, -0.263724,
		-0.581822, 0.804817, -0.117273,
		40.833462, 34.674763, 36.194618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843880, 33.999474, 35.679356>,  <41.240734, 34.111393, 36.276711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843880, 33.999474, 35.679356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933674, 34.380775, 35.760262>,  <40.987549, 34.609558, 35.808807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.933674, 34.380775, 35.760262>,  <40.843880, 33.999474, 35.679356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.933674, 34.380775, 35.760262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408931, 0.096256, -0.907475,
		-0.884524, 0.286426, -0.368208,
		0.224482, 0.953255, 0.202269,
		41.001019, 34.666752, 35.820942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430038, 34.544079, 35.336784>,  <40.843880, 33.999474, 35.679356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430038, 34.544079, 35.336784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818050, 34.597481, 35.417999>,  <41.050858, 34.629520, 35.466728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.818050, 34.597481, 35.417999>,  <40.430038, 34.544079, 35.336784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818050, 34.597481, 35.417999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226600, -0.195242, -0.954219,
		-0.087749, 0.971626, -0.219641,
		0.970027, 0.133503, 0.203038,
		41.109058, 34.637531, 35.478912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714912, 34.965946, 34.788658>,  <40.430038, 34.544079, 35.336784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714912, 34.965946, 34.788658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950237, 34.688961, 34.955696>,  <41.091431, 34.522770, 35.055920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950237, 34.688961, 34.955696>,  <40.714912, 34.965946, 34.788658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950237, 34.688961, 34.955696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237753, -0.345469, -0.907813,
		0.772891, 0.633363, -0.038609,
		0.588313, -0.692461, 0.417594,
		41.126732, 34.481224, 35.080975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474285, 35.006081, 34.556606>,  <40.714912, 34.965946, 34.788658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474285, 35.006081, 34.556606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349449, 34.643589, 34.670692>,  <41.274548, 34.426094, 34.739143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349449, 34.643589, 34.670692>,  <41.474285, 35.006081, 34.556606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349449, 34.643589, 34.670692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216746, -0.360206, -0.907344,
		0.924998, -0.221353, 0.308839,
		-0.312089, -0.906231, 0.285212,
		41.255821, 34.371719, 34.756256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.695988, 35.286087, 33.812492>,  <41.474285, 35.006081, 34.556606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.695988, 35.286087, 33.812492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597900, 35.511917, 34.127735>,  <41.539047, 35.647415, 34.316883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.597900, 35.511917, 34.127735>,  <41.695988, 35.286087, 33.812492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597900, 35.511917, 34.127735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455908, 0.784589, -0.420200,
		-0.855578, 0.256263, -0.449795,
		-0.245222, 0.564579, 0.788109,
		41.524334, 35.681290, 34.364166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381859, 35.954166, 33.663219>,  <41.695988, 35.286087, 33.812492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381859, 35.954166, 33.663219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565063, 36.005920, 34.015011>,  <41.674988, 36.036972, 34.226086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565063, 36.005920, 34.015011>,  <41.381859, 35.954166, 33.663219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565063, 36.005920, 34.015011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436096, 0.829414, -0.349130,
		-0.774626, 0.543444, 0.323455,
		0.458011, 0.129388, 0.879480,
		41.702465, 36.044735, 34.278854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249893, 36.672562, 33.944870>,  <41.381859, 35.954166, 33.663219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249893, 36.672562, 33.944870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587597, 36.511585, 34.086441>,  <41.790218, 36.414997, 34.171383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.587597, 36.511585, 34.086441>,  <41.249893, 36.672562, 33.944870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.587597, 36.511585, 34.086441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469472, 0.873879, -0.126217,
		-0.258491, 0.272717, 0.926719,
		0.844262, -0.402443, 0.353923,
		41.840874, 36.390854, 34.192619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386951, 37.102276, 34.527805>,  <41.249893, 36.672562, 33.944870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386951, 37.102276, 34.527805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725388, 36.925819, 34.408123>,  <41.928448, 36.819946, 34.336311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.725388, 36.925819, 34.408123>,  <41.386951, 37.102276, 34.527805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725388, 36.925819, 34.408123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471717, 0.881059, 0.034895,
		0.248226, -0.170666, 0.953550,
		0.846089, -0.441144, -0.299207,
		41.979214, 36.793476, 34.318359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902428, 37.388180, 34.930653>,  <41.386951, 37.102276, 34.527805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902428, 37.388180, 34.930653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110264, 37.238087, 34.623608>,  <42.234966, 37.148029, 34.439381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110264, 37.238087, 34.623608>,  <41.902428, 37.388180, 34.930653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110264, 37.238087, 34.623608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671180, 0.735192, 0.094928,
		0.528719, -0.564527, 0.633849,
		0.519590, -0.375236, -0.767609,
		42.266140, 37.125515, 34.393326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517612, 37.527496, 35.178856>,  <41.902428, 37.388180, 34.930653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517612, 37.527496, 35.178856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560112, 37.511040, 34.781460>,  <42.585613, 37.501167, 34.543022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.560112, 37.511040, 34.781460>,  <42.517612, 37.527496, 35.178856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.560112, 37.511040, 34.781460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708481, 0.704189, 0.046610,
		0.697685, -0.708820, 0.103971,
		0.106254, -0.041142, -0.993488,
		42.591988, 37.498695, 34.483414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232475, 37.486420, 34.847858>,  <42.517612, 37.527496, 35.178856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232475, 37.486420, 34.847858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025997, 37.583408, 34.519287>,  <42.902111, 37.641602, 34.322144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.025997, 37.583408, 34.519287>,  <43.232475, 37.486420, 34.847858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025997, 37.583408, 34.519287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731329, 0.623949, -0.275399,
		0.445752, -0.742896, -0.499410,
		-0.516199, 0.242473, -0.821428,
		42.871136, 37.656151, 34.272858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694912, 37.539307, 34.330124>,  <43.232475, 37.486420, 34.847858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694912, 37.539307, 34.330124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390247, 37.776512, 34.225655>,  <43.207447, 37.918835, 34.162975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.390247, 37.776512, 34.225655>,  <43.694912, 37.539307, 34.330124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390247, 37.776512, 34.225655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642847, 0.742152, -0.189627,
		0.081377, -0.312324, -0.946484,
		-0.761660, 0.593012, -0.261171,
		43.161751, 37.954414, 34.147305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.029587, 37.860771, 33.884926>,  <43.694912, 37.539307, 34.330124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.029587, 37.860771, 33.884926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689610, 38.069965, 33.910458>,  <43.485622, 38.195484, 33.925777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689610, 38.069965, 33.910458>,  <44.029587, 37.860771, 33.884926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689610, 38.069965, 33.910458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502941, 0.841463, -0.197456,
		-0.156974, -0.135727, -0.978232,
		-0.849946, 0.522989, 0.063825,
		43.434624, 38.226864, 33.929604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150253, 38.317108, 33.356762>,  <44.029587, 37.860771, 33.884926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150253, 38.317108, 33.356762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848583, 38.461575, 33.576138>,  <43.667583, 38.548252, 33.707764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848583, 38.461575, 33.576138>,  <44.150253, 38.317108, 33.356762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848583, 38.461575, 33.576138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385780, 0.919534, -0.075041,
		-0.531410, 0.154983, -0.832816,
		-0.754173, 0.361161, 0.548439,
		43.622330, 38.569923, 33.740669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968414, 38.924080, 33.123352>,  <44.150253, 38.317108, 33.356762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968414, 38.924080, 33.123352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826126, 38.962181, 33.495243>,  <43.740753, 38.985043, 33.718376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.826126, 38.962181, 33.495243>,  <43.968414, 38.924080, 33.123352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.826126, 38.962181, 33.495243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358541, 0.932585, 0.041637,
		-0.863082, 0.348156, -0.365893,
		-0.355722, 0.095251, 0.929725,
		43.719410, 38.990757, 33.774162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826401, 39.623260, 33.080418>,  <43.968414, 38.924080, 33.123352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826401, 39.623260, 33.080418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820702, 39.506695, 33.463013>,  <43.817280, 39.436756, 33.692570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.820702, 39.506695, 33.463013>,  <43.826401, 39.623260, 33.080418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820702, 39.506695, 33.463013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259639, 0.922696, 0.284990,
		-0.965601, 0.252403, 0.062514,
		-0.014251, -0.291417, 0.956490,
		43.816425, 39.419270, 33.749958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.404831, 40.089069, 33.430508>,  <43.826401, 39.623260, 33.080418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.404831, 40.089069, 33.430508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641033, 39.940113, 33.716896>,  <43.782757, 39.850739, 33.888729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.641033, 39.940113, 33.716896>,  <43.404831, 40.089069, 33.430508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641033, 39.940113, 33.716896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272225, 0.927089, 0.257680,
		-0.759732, 0.042744, 0.648830,
		0.590509, -0.372395, 0.715976,
		43.818188, 39.828396, 33.931690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.368767, 40.630188, 33.993824>,  <43.404831, 40.089069, 33.430508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.368767, 40.630188, 33.993824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684231, 40.398365, 34.075924>,  <43.873508, 40.259270, 34.125183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684231, 40.398365, 34.075924>,  <43.368767, 40.630188, 33.993824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684231, 40.398365, 34.075924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529336, 0.809860, 0.252845,
		-0.312759, -0.090765, 0.945486,
		0.788660, -0.579560, 0.205246,
		43.920830, 40.224499, 34.137497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.670471, 40.753811, 34.776661>,  <43.368767, 40.630188, 33.993824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.670471, 40.753811, 34.776661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963058, 40.604347, 34.548508>,  <44.138611, 40.514668, 34.411617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.963058, 40.604347, 34.548508>,  <43.670471, 40.753811, 34.776661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963058, 40.604347, 34.548508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526088, 0.841424, 0.123436,
		0.433810, -0.390360, 0.812052,
		0.731465, -0.373663, -0.570382,
		44.182499, 40.492249, 34.377392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154984, 41.112118, 34.949181>,  <43.670471, 40.753811, 34.776661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154984, 41.112118, 34.949181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331703, 40.936932, 34.636002>,  <44.437733, 40.831818, 34.448093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.331703, 40.936932, 34.636002>,  <44.154984, 41.112118, 34.949181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331703, 40.936932, 34.636002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625362, 0.776092, -0.081259,
		0.643226, -0.453724, 0.616762,
		0.441795, -0.437967, -0.782945,
		44.464241, 40.805542, 34.401119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768456, 41.189747, 34.994316>,  <44.154984, 41.112118, 34.949181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768456, 41.189747, 34.994316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786118, 41.081318, 34.609699>,  <44.796715, 41.016262, 34.378929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786118, 41.081318, 34.609699>,  <44.768456, 41.189747, 34.994316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786118, 41.081318, 34.609699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546493, 0.812264, -0.203893,
		0.836299, -0.516476, 0.184001,
		0.044152, -0.271071, -0.961546,
		44.799362, 40.999996, 34.321236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.541889, 41.111664, 34.798031>,  <44.768456, 41.189747, 34.994316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.541889, 41.111664, 34.798031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.310314, 41.234486, 34.495892>,  <45.171368, 41.308178, 34.314610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.310314, 41.234486, 34.495892>,  <45.541889, 41.111664, 34.798031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.310314, 41.234486, 34.495892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672355, 0.703847, -0.229210,
		0.461269, -0.640560, -0.613934,
		-0.578938, 0.307054, -0.755346,
		45.136631, 41.326603, 34.269287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994858, 41.262775, 34.287876>,  <45.541889, 41.111664, 34.798031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994858, 41.262775, 34.287876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655598, 41.453625, 34.195789>,  <45.452042, 41.568134, 34.140537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655598, 41.453625, 34.195789>,  <45.994858, 41.262775, 34.287876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655598, 41.453625, 34.195789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525274, 0.813846, -0.248480,
		0.068807, -0.331675, -0.940881,
		-0.848147, 0.477123, -0.230219,
		45.401154, 41.596760, 34.126724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.150246, 41.621597, 33.706043>,  <45.994858, 41.262775, 34.287876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.150246, 41.621597, 33.706043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.823975, 41.803757, 33.848751>,  <45.628212, 41.913052, 33.934376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.823975, 41.803757, 33.848751>,  <46.150246, 41.621597, 33.706043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.823975, 41.803757, 33.848751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422371, 0.890212, -0.170661,
		-0.395324, 0.011487, -0.918470,
		-0.815673, 0.455401, 0.356774,
		45.579273, 41.940376, 33.955784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.112617, 42.016796, 33.301193>,  <46.150246, 41.621597, 33.706043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.112617, 42.016796, 33.301193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876369, 42.162300, 33.589317>,  <45.734619, 42.249603, 33.762192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.876369, 42.162300, 33.589317>,  <46.112617, 42.016796, 33.301193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876369, 42.162300, 33.589317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274054, 0.929999, -0.244941,
		-0.758985, 0.052735, -0.648969,
		-0.590623, 0.363759, 0.720308,
		45.699181, 42.271427, 33.805408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509102, 42.442268, 32.953537>,  <46.112617, 42.016796, 33.301193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509102, 42.442268, 32.953537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568161, 42.579002, 33.324772>,  <45.603596, 42.661041, 33.547512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.568161, 42.579002, 33.324772>,  <45.509102, 42.442268, 32.953537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.568161, 42.579002, 33.324772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202806, 0.907971, -0.366687,
		-0.968024, 0.242361, 0.064731,
		0.147644, 0.341834, 0.928090,
		45.612453, 42.681553, 33.603199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033955, 42.862164, 33.050266>,  <45.509102, 42.442268, 32.953537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033955, 42.862164, 33.050266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341492, 42.970135, 33.282135>,  <45.526016, 43.034916, 33.421257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.341492, 42.970135, 33.282135>,  <45.033955, 42.862164, 33.050266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.341492, 42.970135, 33.282135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075253, 0.862041, -0.501222,
		-0.634991, 0.428984, 0.642463,
		0.768845, 0.269924, 0.579670,
		45.572144, 43.051113, 33.456036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928631, 43.505455, 33.277981>,  <45.033955, 42.862164, 33.050266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928631, 43.505455, 33.277981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322994, 43.446323, 33.309315>,  <45.559612, 43.410847, 33.328114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322994, 43.446323, 33.309315>,  <44.928631, 43.505455, 33.277981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322994, 43.446323, 33.309315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161768, 0.722971, -0.671673,
		0.042659, 0.674878, 0.736695,
		0.985906, -0.147827, 0.078332,
		45.618767, 43.401974, 33.332813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250687, 44.168301, 33.319038>,  <44.928631, 43.505455, 33.277981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250687, 44.168301, 33.319038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506031, 43.898659, 33.170403>,  <45.659237, 43.736874, 33.081223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506031, 43.898659, 33.170403>,  <45.250687, 44.168301, 33.319038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506031, 43.898659, 33.170403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228682, 0.627038, -0.744667,
		0.734984, 0.390390, 0.554432,
		0.638360, -0.674106, -0.371587,
		45.697540, 43.696426, 33.058926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680977, 44.570999, 33.013435>,  <45.250687, 44.168301, 33.319038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680977, 44.570999, 33.013435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717075, 44.205475, 32.855042>,  <45.738735, 43.986160, 32.760006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717075, 44.205475, 32.855042>,  <45.680977, 44.570999, 33.013435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717075, 44.205475, 32.855042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261540, 0.405401, -0.875926,
		0.960964, -0.024517, 0.275584,
		0.090247, -0.913810, -0.395988,
		45.744148, 43.931332, 32.736244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355667, 44.364285, 32.725853>,  <45.680977, 44.570999, 33.013435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.355667, 44.364285, 32.725853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070957, 44.177517, 32.515953>,  <45.900131, 44.065456, 32.390015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.070957, 44.177517, 32.515953>,  <46.355667, 44.364285, 32.725853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.070957, 44.177517, 32.515953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368498, 0.387784, -0.844886,
		0.597986, -0.794737, -0.103955,
		-0.711774, -0.466923, -0.524748,
		45.857426, 44.037441, 32.358528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.657982, 44.445782, 32.077080>,  <46.355667, 44.364285, 32.725853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.657982, 44.445782, 32.077080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299751, 44.288666, 31.993507>,  <46.084812, 44.194397, 31.943363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299751, 44.288666, 31.993507>,  <46.657982, 44.445782, 32.077080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299751, 44.288666, 31.993507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152605, 0.169915, -0.973571,
		0.417907, -0.903796, -0.092231,
		-0.895581, -0.392787, -0.208932,
		46.031078, 44.170830, 31.930828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.614761, 43.840794, 31.603682>,  <46.657982, 44.445782, 32.077080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.614761, 43.840794, 31.603682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278656, 44.046997, 31.536501>,  <46.076992, 44.170719, 31.496193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.278656, 44.046997, 31.536501>,  <46.614761, 43.840794, 31.603682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.278656, 44.046997, 31.536501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202353, 0.010790, -0.979253,
		-0.503005, -0.856814, -0.113382,
		-0.840261, 0.515512, -0.167952,
		46.026577, 44.201653, 31.486115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.398331, 43.207504, 31.398670>,  <46.614761, 43.840794, 31.603682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.398331, 43.207504, 31.398670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689114, 43.139786, 31.132475>,  <46.863583, 43.099155, 30.972757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689114, 43.139786, 31.132475>,  <46.398331, 43.207504, 31.398670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.689114, 43.139786, 31.132475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002053, -0.969663, 0.244437,
		-0.686680, -0.176329, -0.705251,
		0.726957, -0.169298, -0.665486,
		46.907200, 43.088997, 30.932829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246414, 42.589306, 30.946985>,  <46.398331, 43.207504, 31.398670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246414, 42.589306, 30.946985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636791, 42.663300, 30.993155>,  <46.871017, 42.707695, 31.020857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.636791, 42.663300, 30.993155>,  <46.246414, 42.589306, 30.946985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.636791, 42.663300, 30.993155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120632, -0.899053, 0.420894,
		0.181630, -0.396843, -0.899737,
		0.975940, 0.184984, 0.115423,
		46.929573, 42.718796, 31.027781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.711391, 42.049091, 30.677000>,  <46.246414, 42.589306, 30.946985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.711391, 42.049091, 30.677000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810406, 42.262913, 31.000227>,  <46.869816, 42.391205, 31.194164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.810406, 42.262913, 31.000227>,  <46.711391, 42.049091, 30.677000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.810406, 42.262913, 31.000227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039369, -0.838886, 0.542882,
		0.968079, -0.102570, -0.228699,
		0.247536, 0.534556, 0.808069,
		46.884666, 42.423279, 31.242647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.314690, 41.706989, 31.052284>,  <46.711391, 42.049091, 30.677000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.314690, 41.706989, 31.052284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.123867, 41.928516, 31.325254>,  <47.009373, 42.061432, 31.489037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.123867, 41.928516, 31.325254>,  <47.314690, 41.706989, 31.052284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.123867, 41.928516, 31.325254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081467, -0.745269, 0.661768,
		0.875087, 0.371297, 0.310420,
		-0.477059, 0.553816, 0.682424,
		46.980751, 42.094662, 31.529982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.715160, 41.764481, 31.715197>,  <47.314690, 41.706989, 31.052284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.715160, 41.764481, 31.715197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315769, 41.778873, 31.731913>,  <47.076134, 41.787510, 31.741941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.315769, 41.778873, 31.731913>,  <47.715160, 41.764481, 31.715197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.315769, 41.778873, 31.731913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008980, -0.853792, 0.520536,
		0.054409, 0.519369, 0.852816,
		-0.998478, 0.035980, 0.041790,
		47.016224, 41.789669, 31.744450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.553501, 41.638577, 32.367489>,  <47.715160, 41.764481, 31.715197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.553501, 41.638577, 32.367489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.213062, 41.534817, 32.184906>,  <47.008801, 41.472561, 32.075356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.213062, 41.534817, 32.184906>,  <47.553501, 41.638577, 32.367489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.213062, 41.534817, 32.184906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087903, -0.786741, 0.610992,
		-0.517603, 0.560136, 0.646788,
		-0.851093, -0.259397, -0.456457,
		46.957733, 41.456997, 32.047970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.064838, 41.530659, 32.892101>,  <47.553501, 41.638577, 32.367489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.064838, 41.530659, 32.892101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937401, 41.308197, 32.585068>,  <46.860939, 41.174721, 32.400848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937401, 41.308197, 32.585068>,  <47.064838, 41.530659, 32.892101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.937401, 41.308197, 32.585068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160159, -0.829724, 0.534702,
		-0.934264, 0.047415, 0.353416,
		-0.318590, -0.556156, -0.767588,
		46.841824, 41.141350, 32.354790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549507, 41.057339, 33.122181>,  <47.064838, 41.530659, 32.892101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549507, 41.057339, 33.122181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.650616, 40.898777, 32.769146>,  <46.711281, 40.803638, 32.557323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.650616, 40.898777, 32.769146>,  <46.549507, 41.057339, 33.122181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.650616, 40.898777, 32.769146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127800, -0.890543, 0.436577,
		-0.959048, -0.223150, -0.174446,
		0.252774, -0.396404, -0.882592,
		46.726448, 40.779854, 32.504368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101891, 40.471195, 32.952248>,  <46.549507, 41.057339, 33.122181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101891, 40.471195, 32.952248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450485, 40.409752, 32.765953>,  <46.659641, 40.372887, 32.654179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.450485, 40.409752, 32.765953>,  <46.101891, 40.471195, 32.952248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450485, 40.409752, 32.765953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056602, -0.974837, 0.215613,
		-0.487134, -0.161544, -0.858257,
		0.871491, -0.153611, -0.465732,
		46.711933, 40.363670, 32.626232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937233, 39.841434, 32.629646>,  <46.101891, 40.471195, 32.952248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937233, 39.841434, 32.629646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335819, 39.873825, 32.620678>,  <46.574970, 39.893257, 32.615295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.335819, 39.873825, 32.620678>,  <45.937233, 39.841434, 32.629646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.335819, 39.873825, 32.620678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083230, -0.987811, 0.131539,
		-0.011497, -0.132940, -0.991058,
		0.996464, 0.080973, -0.022422,
		46.634758, 39.898117, 32.613953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.167221, 39.312794, 32.171715>,  <45.937233, 39.841434, 32.629646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.167221, 39.312794, 32.171715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495731, 39.418205, 32.374119>,  <46.692837, 39.481453, 32.495564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495731, 39.418205, 32.374119>,  <46.167221, 39.312794, 32.171715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495731, 39.418205, 32.374119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256918, -0.962740, 0.084409,
		0.509403, 0.060681, -0.858386,
		0.821280, 0.263533, 0.506013,
		46.742115, 39.497265, 32.525921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.746616, 38.923489, 31.867455>,  <46.167221, 39.312794, 32.171715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.746616, 38.923489, 31.867455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.842777, 39.036381, 32.238949>,  <46.900475, 39.104115, 32.461845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.842777, 39.036381, 32.238949>,  <46.746616, 38.923489, 31.867455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.842777, 39.036381, 32.238949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136647, -0.957108, 0.255482,
		0.961007, 0.065491, -0.268656,
		0.240401, 0.282232, 0.928737,
		46.914898, 39.121052, 32.517570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.277084, 38.437164, 32.183281>,  <46.746616, 38.923489, 31.867455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.277084, 38.437164, 32.183281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.108448, 38.599995, 32.507393>,  <47.007267, 38.697693, 32.701859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.108448, 38.599995, 32.507393>,  <47.277084, 38.437164, 32.183281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.108448, 38.599995, 32.507393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026248, -0.898674, 0.437831,
		0.906405, 0.163318, 0.389560,
		-0.421593, 0.407077, 0.810276,
		46.981972, 38.722118, 32.750477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.614334, 38.092167, 32.742077>,  <47.277084, 38.437164, 32.183281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.614334, 38.092167, 32.742077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268433, 38.243137, 32.874596>,  <47.060894, 38.333721, 32.954105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268433, 38.243137, 32.874596>,  <47.614334, 38.092167, 32.742077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.268433, 38.243137, 32.874596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197159, -0.861862, 0.467250,
		0.461881, 0.338737, 0.819709,
		-0.864751, 0.377427, 0.331293,
		47.009007, 38.356365, 32.973984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.567181, 37.721901, 33.421970>,  <47.614334, 38.092167, 32.742077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.567181, 37.721901, 33.421970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205093, 37.865799, 33.331493>,  <46.987843, 37.952137, 33.277206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205093, 37.865799, 33.331493>,  <47.567181, 37.721901, 33.421970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.205093, 37.865799, 33.331493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413432, -0.868640, 0.273017,
		-0.098259, 0.340654, 0.935040,
		-0.905218, 0.359749, -0.226189,
		46.933529, 37.973724, 33.263638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.165897, 37.527473, 34.094139>,  <47.567181, 37.721901, 33.421970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.165897, 37.527473, 34.094139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912342, 37.626228, 33.800953>,  <46.760208, 37.685482, 33.625042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.912342, 37.626228, 33.800953>,  <47.165897, 37.527473, 34.094139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.912342, 37.626228, 33.800953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562140, -0.797964, 0.217375,
		-0.531212, 0.549819, 0.644603,
		-0.633887, 0.246885, -0.732963,
		46.722176, 37.700294, 33.581062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.462410, 37.610920, 34.443008>,  <47.165897, 37.527473, 34.094139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.462410, 37.610920, 34.443008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402008, 37.536770, 34.054611>,  <46.365768, 37.492279, 33.821571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402008, 37.536770, 34.054611>,  <46.462410, 37.610920, 34.443008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.402008, 37.536770, 34.054611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703696, -0.669706, 0.237289,
		-0.694270, 0.719117, -0.029323,
		-0.151001, -0.185377, -0.970996,
		46.356709, 37.481155, 33.763313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.738747, 37.729893, 34.334087>,  <46.462410, 37.610920, 34.443008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.738747, 37.729893, 34.334087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893044, 37.480721, 34.061863>,  <45.985622, 37.331219, 33.898529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.893044, 37.480721, 34.061863>,  <45.738747, 37.729893, 34.334087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893044, 37.480721, 34.061863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726225, -0.659969, 0.192452,
		-0.569031, 0.420000, -0.706968,
		0.385747, -0.622930, -0.680557,
		46.008766, 37.293842, 33.857697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.188053, 37.589787, 34.045868>,  <45.738747, 37.729893, 34.334087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.188053, 37.589787, 34.045868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457932, 37.313644, 33.941410>,  <45.619858, 37.147961, 33.878735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457932, 37.313644, 33.941410>,  <45.188053, 37.589787, 34.045868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457932, 37.313644, 33.941410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637119, -0.723349, 0.266168,
		-0.372652, -0.013199, -0.927877,
		0.674692, -0.690356, -0.261149,
		45.660339, 37.106537, 33.863064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.806988, 37.039967, 33.662361>,  <45.188053, 37.589787, 34.045868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.806988, 37.039967, 33.662361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139759, 36.865143, 33.799107>,  <45.339420, 36.760246, 33.881153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139759, 36.865143, 33.799107>,  <44.806988, 37.039967, 33.662361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139759, 36.865143, 33.799107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541598, -0.773598, 0.328964,
		0.120689, -0.458828, -0.880290,
		0.831929, -0.437061, 0.341865,
		45.389339, 36.734024, 33.901665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.594643, 36.349400, 33.581123>,  <44.806988, 37.039967, 33.662361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.594643, 36.349400, 33.581123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.901836, 36.347717, 33.837303>,  <45.086155, 36.346706, 33.991013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.901836, 36.347717, 33.837303>,  <44.594643, 36.349400, 33.581123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.901836, 36.347717, 33.837303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443189, -0.725392, 0.526679,
		0.462359, -0.688324, -0.558958,
		0.767989, -0.004209, 0.640449,
		45.132233, 36.346455, 34.029438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.796707, 35.690254, 33.529350>,  <44.594643, 36.349400, 33.581123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.796707, 35.690254, 33.529350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917221, 35.846104, 33.877468>,  <44.989529, 35.939613, 34.086338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.917221, 35.846104, 33.877468>,  <44.796707, 35.690254, 33.529350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.917221, 35.846104, 33.877468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313460, -0.821513, 0.476298,
		0.900538, -0.416306, -0.125381,
		0.301288, 0.389622, 0.870299,
		45.007607, 35.962990, 34.138557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237385, 35.167187, 33.782661>,  <44.796707, 35.690254, 33.529350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237385, 35.167187, 33.782661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160404, 35.392418, 34.104134>,  <45.114216, 35.527557, 34.297016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160404, 35.392418, 34.104134>,  <45.237385, 35.167187, 33.782661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160404, 35.392418, 34.104134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348511, -0.804819, 0.480423,
		0.917333, -0.187632, 0.351131,
		-0.192454, 0.563081, 0.803679,
		45.102669, 35.561344, 34.345238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.461914, 34.795742, 34.370228>,  <45.237385, 35.167187, 33.782661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.461914, 34.795742, 34.370228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191036, 35.058178, 34.503468>,  <45.028511, 35.215641, 34.583412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.191036, 35.058178, 34.503468>,  <45.461914, 34.795742, 34.370228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.191036, 35.058178, 34.503468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488184, -0.739331, 0.463751,
		0.550534, 0.151435, 0.820963,
		-0.677192, 0.656092, 0.333099,
		44.987877, 35.255005, 34.603397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.345825, 34.751579, 35.045017>,  <45.461914, 34.795742, 34.370228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.345825, 34.751579, 35.045017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004189, 34.921288, 34.924664>,  <44.799206, 35.023113, 34.852451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.004189, 34.921288, 34.924664>,  <45.345825, 34.751579, 35.045017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004189, 34.921288, 34.924664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517679, -0.637306, 0.570832,
		0.050434, 0.643300, 0.763951,
		-0.854087, 0.424271, -0.300881,
		44.747963, 35.048569, 34.834400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.140331, 34.748943, 34.858791>,  <45.345825, 34.751579, 35.045017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.140331, 34.748943, 34.858791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.436172, 35.006413, 34.937443>,  <46.613678, 35.160896, 34.984634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.436172, 35.006413, 34.937443>,  <46.140331, 34.748943, 34.858791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.436172, 35.006413, 34.937443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644209, -0.761631, 0.070099,
		0.194881, 0.074826, -0.977969,
		0.739606, 0.643677, 0.196631,
		46.658054, 35.199516, 34.996433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.728004, 34.517654, 34.397789>,  <46.140331, 34.748943, 34.858791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.728004, 34.517654, 34.397789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864838, 34.756191, 34.688267>,  <46.946938, 34.899315, 34.862553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.864838, 34.756191, 34.688267>,  <46.728004, 34.517654, 34.397789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.864838, 34.756191, 34.688267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800043, -0.590181, 0.107785,
		0.492862, 0.544115, -0.678989,
		0.342079, 0.596343, 0.726193,
		46.967461, 34.935093, 34.906124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.452496, 34.863487, 34.318466>,  <46.728004, 34.517654, 34.397789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.452496, 34.863487, 34.318466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392860, 34.779816, 34.705044>,  <47.357079, 34.729614, 34.936993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.392860, 34.779816, 34.705044>,  <47.452496, 34.863487, 34.318466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.392860, 34.779816, 34.705044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898942, -0.435817, 0.044345,
		0.411918, 0.875391, 0.253012,
		-0.149086, -0.209177, 0.966446,
		47.348133, 34.717064, 34.994976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.920834, 35.143909, 34.834179>,  <47.452496, 34.863487, 34.318466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.920834, 35.143909, 34.834179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.808582, 34.774460, 34.938618>,  <47.741234, 34.552792, 35.001282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.808582, 34.774460, 34.938618>,  <47.920834, 35.143909, 34.834179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.808582, 34.774460, 34.938618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940875, -0.318490, -0.115408,
		0.189749, 0.213269, 0.958390,
		-0.280624, -0.923624, 0.261092,
		47.724396, 34.497372, 35.016945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.605373, 38.912704, 46.011208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216892, 38.836090, 45.954536>,  <36.983803, 38.790119, 45.920532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.216892, 38.836090, 45.954536>,  <37.605373, 38.912704, 46.011208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216892, 38.836090, 45.954536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198982, -0.325075, -0.924517,
		0.131023, -0.926088, 0.353827,
		-0.971205, -0.191538, -0.141682,
		36.925529, 38.778629, 45.912033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613579, 38.298969, 45.522530>,  <37.605373, 38.912704, 46.011208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613579, 38.298969, 45.522530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243149, 38.449787, 45.516647>,  <37.020889, 38.540279, 45.513119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.243149, 38.449787, 45.516647>,  <37.613579, 38.298969, 45.522530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243149, 38.449787, 45.516647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047273, -0.154607, -0.986845,
		-0.374364, -0.913198, 0.161002,
		-0.926076, 0.377050, -0.014709,
		36.965324, 38.562901, 45.512234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138882, 37.721859, 45.210770>,  <37.613579, 38.298969, 45.522530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138882, 37.721859, 45.210770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.962307, 38.079960, 45.186600>,  <36.856361, 38.294823, 45.172100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.962307, 38.079960, 45.186600>,  <37.138882, 37.721859, 45.210770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962307, 38.079960, 45.186600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262602, -0.193286, -0.945347,
		-0.858006, -0.401444, 0.320419,
		-0.441436, 0.895256, -0.060421,
		36.829876, 38.348537, 45.168472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381428, 37.711311, 45.007915>,  <37.138882, 37.721859, 45.210770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381428, 37.711311, 45.007915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.527473, 38.067928, 44.900696>,  <36.615101, 38.281898, 44.836365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.527473, 38.067928, 44.900696>,  <36.381428, 37.711311, 45.007915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527473, 38.067928, 44.900696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407075, -0.106051, -0.907217,
		-0.837247, 0.440354, 0.324202,
		0.365114, 0.891539, -0.268048,
		36.637009, 38.335388, 44.820282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965755, 37.825432, 44.545128>,  <36.381428, 37.711311, 45.007915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965755, 37.825432, 44.545128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.235229, 38.109699, 44.464031>,  <36.396915, 38.280258, 44.415375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.235229, 38.109699, 44.464031>,  <35.965755, 37.825432, 44.545128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235229, 38.109699, 44.464031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200720, -0.088071, -0.975682,
		-0.711239, 0.697996, 0.083312,
		0.673684, 0.710665, -0.202741,
		36.437336, 38.322899, 44.403210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662155, 38.199516, 44.021862>,  <35.965755, 37.825432, 44.545128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662155, 38.199516, 44.021862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035671, 38.339149, 43.990425>,  <36.259781, 38.422928, 43.971561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.035671, 38.339149, 43.990425>,  <35.662155, 38.199516, 44.021862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035671, 38.339149, 43.990425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000367, -0.218709, -0.975790,
		-0.357817, 0.911213, -0.204101,
		0.933792, 0.349080, -0.078592,
		36.315807, 38.443874, 43.966846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697674, 38.745964, 43.458248>,  <35.662155, 38.199516, 44.021862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697674, 38.745964, 43.458248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059330, 38.580994, 43.502846>,  <36.276325, 38.482010, 43.529606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.059330, 38.580994, 43.502846>,  <35.697674, 38.745964, 43.458248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059330, 38.580994, 43.502846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085758, -0.080464, -0.993062,
		0.418540, 0.907429, -0.037382,
		0.904141, -0.412430, 0.111496,
		36.330574, 38.457264, 43.536293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147133, 39.136513, 43.081120>,  <35.697674, 38.745964, 43.458248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147133, 39.136513, 43.081120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.320221, 38.777912, 43.119137>,  <36.424072, 38.562752, 43.141945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.320221, 38.777912, 43.119137>,  <36.147133, 39.136513, 43.081120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320221, 38.777912, 43.119137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130868, -0.041839, -0.990517,
		0.891979, 0.441055, 0.099220,
		0.432721, -0.896504, 0.095039,
		36.450039, 38.508961, 43.147648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581024, 39.047157, 42.509056>,  <36.147133, 39.136513, 43.081120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581024, 39.047157, 42.509056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610062, 38.667622, 42.631977>,  <36.627483, 38.439899, 42.705730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610062, 38.667622, 42.631977>,  <36.581024, 39.047157, 42.509056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610062, 38.667622, 42.631977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121577, -0.297398, -0.946981,
		0.989924, 0.106110, 0.093767,
		0.072598, -0.948839, 0.307301,
		36.631840, 38.382969, 42.724167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088215, 38.893318, 42.148476>,  <36.581024, 39.047157, 42.509056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088215, 38.893318, 42.148476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.918816, 38.553528, 42.274361>,  <36.817177, 38.349655, 42.349892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.918816, 38.553528, 42.274361>,  <37.088215, 38.893318, 42.148476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918816, 38.553528, 42.274361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029095, -0.359983, -0.932505,
		0.905432, -0.385754, 0.177166,
		-0.423494, -0.849474, 0.314717,
		36.791767, 38.298687, 42.368774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555691, 38.332722, 42.100586>,  <37.088215, 38.893318, 42.148476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555691, 38.332722, 42.100586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198475, 38.152737, 42.099583>,  <36.984146, 38.044746, 42.098980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.198475, 38.152737, 42.099583>,  <37.555691, 38.332722, 42.100586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198475, 38.152737, 42.099583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245852, -0.483267, -0.840244,
		0.376868, -0.750991, 0.542202,
		-0.893044, -0.449963, -0.002504,
		36.930561, 38.017750, 42.098831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715240, 37.624863, 42.053013>,  <37.555691, 38.332722, 42.100586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715240, 37.624863, 42.053013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343906, 37.669296, 41.911114>,  <37.121105, 37.695957, 41.825974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.343906, 37.669296, 41.911114>,  <37.715240, 37.624863, 42.053013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343906, 37.669296, 41.911114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262576, -0.479560, -0.837303,
		-0.263136, -0.870449, 0.416026,
		-0.928339, 0.111086, -0.354749,
		37.065403, 37.702621, 41.804688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439503, 36.960297, 41.697651>,  <37.715240, 37.624863, 42.053013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439503, 36.960297, 41.697651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.225853, 37.263039, 41.546978>,  <37.097664, 37.444683, 41.456573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.225853, 37.263039, 41.546978>,  <37.439503, 36.960297, 41.697651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225853, 37.263039, 41.546978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066891, -0.406329, -0.911275,
		-0.842758, -0.511927, 0.166403,
		-0.534121, 0.756853, -0.376680,
		37.065617, 37.490093, 41.433975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041615, 36.647190, 41.205429>,  <37.439503, 36.960297, 41.697651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041615, 36.647190, 41.205429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985535, 37.030918, 41.107414>,  <36.951889, 37.261154, 41.048603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985535, 37.030918, 41.107414>,  <37.041615, 36.647190, 41.205429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985535, 37.030918, 41.107414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161102, -0.266287, -0.950336,
		-0.976929, -0.093759, 0.191881,
		-0.140198, 0.959323, -0.245039,
		36.943474, 37.318714, 41.033901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529091, 36.629124, 40.823582>,  <37.041615, 36.647190, 41.205429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529091, 36.629124, 40.823582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713093, 36.970764, 40.726498>,  <36.823494, 37.175747, 40.668247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.713093, 36.970764, 40.726498>,  <36.529091, 36.629124, 40.823582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713093, 36.970764, 40.726498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064655, -0.240405, -0.968517,
		-0.885561, 0.461212, -0.055365,
		0.460001, 0.854102, -0.242713,
		36.851093, 37.226994, 40.653683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027355, 36.991802, 40.264252>,  <36.529091, 36.629124, 40.823582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027355, 36.991802, 40.264252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.400169, 37.130596, 40.222466>,  <36.623856, 37.213875, 40.197395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.400169, 37.130596, 40.222466>,  <36.027355, 36.991802, 40.264252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400169, 37.130596, 40.222466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017159, -0.245702, -0.969194,
		-0.361967, 0.905113, -0.223048,
		0.932033, 0.346988, -0.104467,
		36.679779, 37.234692, 40.191124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011471, 37.558624, 39.876602>,  <36.027355, 36.991802, 40.264252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011471, 37.558624, 39.876602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397648, 37.463337, 39.834339>,  <36.629356, 37.406166, 39.808979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397648, 37.463337, 39.834339>,  <36.011471, 37.558624, 39.876602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397648, 37.463337, 39.834339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085097, 0.095039, -0.991830,
		0.246315, 0.966550, 0.071483,
		0.965447, -0.238219, -0.105660,
		36.687283, 37.391872, 39.802643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232162, 38.052372, 39.371235>,  <36.011471, 37.558624, 39.876602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232162, 38.052372, 39.371235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486031, 37.743275, 39.374294>,  <36.638351, 37.557816, 39.376129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.486031, 37.743275, 39.374294>,  <36.232162, 38.052372, 39.371235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486031, 37.743275, 39.374294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035005, -0.038639, -0.998640,
		0.771990, 0.633539, -0.051573,
		0.634670, -0.772745, 0.007652,
		36.676430, 37.511452, 39.376591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701355, 38.166531, 38.862522>,  <36.232162, 38.052372, 39.371235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701355, 38.166531, 38.862522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.704029, 37.770809, 38.920822>,  <36.705635, 37.533379, 38.955803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.704029, 37.770809, 38.920822>,  <36.701355, 38.166531, 38.862522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704029, 37.770809, 38.920822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170829, -0.144740, -0.974612,
		0.985278, -0.018383, -0.169969,
		0.006685, -0.989299, 0.145749,
		36.706036, 37.474018, 38.964546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084923, 37.886143, 38.340160>,  <36.701355, 38.166531, 38.862522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084923, 37.886143, 38.340160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.895985, 37.555820, 38.463413>,  <36.782623, 37.357628, 38.537365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.895985, 37.555820, 38.463413>,  <37.084923, 37.886143, 38.340160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895985, 37.555820, 38.463413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031298, -0.333653, -0.942176,
		0.880860, -0.454672, 0.131751,
		-0.472340, -0.825802, 0.308132,
		36.754284, 37.308079, 38.555851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.473251, 37.337296, 38.023499>,  <37.084923, 37.886143, 38.340160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.473251, 37.337296, 38.023499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103920, 37.199982, 38.092339>,  <36.882320, 37.117596, 38.133644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103920, 37.199982, 38.092339>,  <37.473251, 37.337296, 38.023499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103920, 37.199982, 38.092339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108104, -0.197683, -0.974287,
		0.368475, -0.918194, 0.145416,
		-0.923331, -0.343281, 0.172102,
		36.826920, 37.096996, 38.143970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991604, 37.338680, 37.543758>,  <37.473251, 37.337296, 38.023499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991604, 37.338680, 37.543758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.372932, 37.254780, 37.456879>,  <38.601730, 37.204441, 37.404751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.372932, 37.254780, 37.456879>,  <37.991604, 37.338680, 37.543758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372932, 37.254780, 37.456879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226926, 0.023169, 0.973636,
		-0.199191, -0.977480, 0.069686,
		0.953324, -0.209753, -0.217201,
		38.658928, 37.191853, 37.391720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276169, 36.975464, 38.064648>,  <37.991604, 37.338680, 37.543758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276169, 36.975464, 38.064648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629467, 37.101173, 37.925449>,  <38.841446, 37.176598, 37.841930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.629467, 37.101173, 37.925449>,  <38.276169, 36.975464, 38.064648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629467, 37.101173, 37.925449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307316, 0.172555, 0.935832,
		0.354158, -0.933518, 0.055827,
		0.883249, 0.314276, -0.347996,
		38.894444, 37.195457, 37.821049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764153, 36.570782, 38.341400>,  <38.276169, 36.975464, 38.064648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764153, 36.570782, 38.341400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932449, 36.918133, 38.236404>,  <39.033428, 37.126545, 38.173409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932449, 36.918133, 38.236404>,  <38.764153, 36.570782, 38.341400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932449, 36.918133, 38.236404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436641, 0.059778, 0.897648,
		0.795188, -0.492287, -0.354019,
		0.420738, 0.868378, -0.262488,
		39.058670, 37.178646, 38.157658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364716, 36.650448, 38.711784>,  <38.764153, 36.570782, 38.341400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364716, 36.650448, 38.711784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.329838, 37.035053, 38.607559>,  <39.308910, 37.265816, 38.545025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.329838, 37.035053, 38.607559>,  <39.364716, 36.650448, 38.711784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329838, 37.035053, 38.607559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511740, 0.267642, 0.816388,
		0.854704, -0.062159, -0.515380,
		-0.087192, 0.961511, -0.260564,
		39.303680, 37.323505, 38.529388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001869, 36.857143, 38.638741>,  <39.364716, 36.650448, 38.711784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001869, 36.857143, 38.638741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.773067, 37.171314, 38.733330>,  <39.635784, 37.359818, 38.790081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.773067, 37.171314, 38.733330>,  <40.001869, 36.857143, 38.638741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773067, 37.171314, 38.733330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624426, 0.230023, 0.746446,
		0.531883, 0.574629, -0.622014,
		-0.572007, 0.785424, 0.236469,
		39.601467, 37.406940, 38.804272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351120, 37.172302, 39.087704>,  <40.001869, 36.857143, 38.638741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351120, 37.172302, 39.087704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.042751, 37.424129, 39.126328>,  <39.857731, 37.575226, 39.149502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.042751, 37.424129, 39.126328>,  <40.351120, 37.172302, 39.087704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042751, 37.424129, 39.126328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396599, 0.355861, 0.846210,
		0.498386, 0.690657, -0.524027,
		-0.770922, 0.629568, 0.096558,
		39.811474, 37.612999, 39.155296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709015, 37.860451, 39.366173>,  <40.351120, 37.172302, 39.087704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709015, 37.860451, 39.366173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.316418, 37.838383, 39.439529>,  <40.080860, 37.825142, 39.483543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.316418, 37.838383, 39.439529>,  <40.709015, 37.860451, 39.366173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316418, 37.838383, 39.439529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180150, 0.058933, 0.981872,
		-0.064978, 0.996736, -0.047903,
		-0.981491, -0.055171, 0.183391,
		40.021969, 37.821831, 39.494545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413803, 38.441689, 39.722092>,  <40.709015, 37.860451, 39.366173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413803, 38.441689, 39.722092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.161655, 38.141006, 39.799641>,  <40.010368, 37.960598, 39.846169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.161655, 38.141006, 39.799641>,  <40.413803, 38.441689, 39.722092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161655, 38.141006, 39.799641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124921, 0.148261, 0.981027,
		-0.766182, 0.642624, 0.000445,
		-0.630365, -0.751701, 0.193872,
		39.972546, 37.915497, 39.857803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968151, 38.706047, 40.244904>,  <40.413803, 38.441689, 39.722092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968151, 38.706047, 40.244904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924416, 38.308533, 40.253166>,  <39.898174, 38.070023, 40.258125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924416, 38.308533, 40.253166>,  <39.968151, 38.706047, 40.244904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924416, 38.308533, 40.253166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030703, 0.024147, 0.999237,
		-0.993531, 0.108618, -0.033153,
		-0.109335, -0.993790, 0.020656,
		39.891617, 38.010395, 40.259361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473042, 38.647762, 40.719227>,  <39.968151, 38.706047, 40.244904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473042, 38.647762, 40.719227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.668957, 38.299927, 40.694164>,  <39.786507, 38.091225, 40.679127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.668957, 38.299927, 40.694164>,  <39.473042, 38.647762, 40.719227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668957, 38.299927, 40.694164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068303, -0.033369, 0.997106,
		-0.869164, -0.492646, 0.043052,
		0.489783, -0.869590, -0.062652,
		39.815891, 38.039051, 40.675369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343781, 38.408531, 41.378464>,  <39.473042, 38.647762, 40.719227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343781, 38.408531, 41.378464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548553, 38.087311, 41.256454>,  <39.671417, 37.894581, 41.183247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.548553, 38.087311, 41.256454>,  <39.343781, 38.408531, 41.378464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548553, 38.087311, 41.256454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132105, -0.277264, 0.951668,
		-0.848808, -0.527483, -0.035853,
		0.511930, -0.803048, -0.305028,
		39.702133, 37.846397, 41.164948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969761, 37.826981, 41.664783>,  <39.343781, 38.408531, 41.378464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969761, 37.826981, 41.664783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.361603, 37.779621, 41.599857>,  <39.596710, 37.751205, 41.560902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.361603, 37.779621, 41.599857>,  <38.969761, 37.826981, 41.664783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361603, 37.779621, 41.599857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147115, -0.127512, 0.980866,
		-0.136847, -0.984743, -0.107491,
		0.979607, -0.118415, -0.162320,
		39.655487, 37.744102, 41.551163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222424, 37.239204, 42.070362>,  <38.969761, 37.826981, 41.664783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222424, 37.239204, 42.070362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555233, 37.452465, 42.009056>,  <39.754917, 37.580421, 41.972271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555233, 37.452465, 42.009056>,  <39.222424, 37.239204, 42.070362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555233, 37.452465, 42.009056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242759, -0.101499, 0.964762,
		0.498808, -0.839910, -0.213876,
		0.832021, 0.533151, -0.153267,
		39.804840, 37.612411, 41.963078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744621, 36.813885, 42.306210>,  <39.222424, 37.239204, 42.070362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744621, 36.813885, 42.306210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.834251, 37.203587, 42.316238>,  <39.888027, 37.437408, 42.322258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.834251, 37.203587, 42.316238>,  <39.744621, 36.813885, 42.306210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834251, 37.203587, 42.316238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309351, -0.095500, 0.946140,
		0.924172, -0.204246, -0.322784,
		0.224071, 0.974250, 0.025075,
		39.901474, 37.495861, 42.323761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352180, 36.905609, 42.753609>,  <39.744621, 36.813885, 42.306210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352180, 36.905609, 42.753609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.162148, 37.257572, 42.750427>,  <40.048126, 37.468750, 42.748516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.162148, 37.257572, 42.750427>,  <40.352180, 36.905609, 42.753609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162148, 37.257572, 42.750427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097968, 0.061877, 0.993264,
		0.874471, 0.471102, -0.115599,
		-0.475081, 0.879906, -0.007957,
		40.019623, 37.521545, 42.748039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791176, 37.250565, 43.247879>,  <40.352180, 36.905609, 42.753609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791176, 37.250565, 43.247879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.483017, 37.500198, 43.195705>,  <40.298122, 37.649979, 43.164402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.483017, 37.500198, 43.195705>,  <40.791176, 37.250565, 43.247879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483017, 37.500198, 43.195705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005732, 0.197794, 0.980227,
		0.637543, 0.755908, -0.148802,
		-0.770394, 0.624084, -0.130435,
		40.251900, 37.687424, 43.156574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918747, 37.821129, 43.627674>,  <40.791176, 37.250565, 43.247879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918747, 37.821129, 43.627674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.523487, 37.857079, 43.577915>,  <40.286331, 37.878647, 43.548061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.523487, 37.857079, 43.577915>,  <40.918747, 37.821129, 43.627674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523487, 37.857079, 43.577915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110203, 0.148535, 0.982748,
		0.106800, 0.984815, -0.136871,
		-0.988154, 0.089874, -0.124393,
		40.227039, 37.884041, 43.540596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727909, 38.439377, 43.902248>,  <40.918747, 37.821129, 43.627674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727909, 38.439377, 43.902248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.377514, 38.248146, 43.876675>,  <40.167278, 38.133408, 43.861328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.377514, 38.248146, 43.876675>,  <40.727909, 38.439377, 43.902248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377514, 38.248146, 43.876675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250077, 0.336816, 0.907754,
		-0.412441, 0.811170, -0.414603,
		-0.875987, -0.478078, -0.063939,
		40.114719, 38.104721, 43.857494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059402, 38.857197, 44.026299>,  <40.727909, 38.439377, 43.902248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059402, 38.857197, 44.026299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.904987, 38.499683, 44.117622>,  <39.812340, 38.285175, 44.172417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.904987, 38.499683, 44.117622>,  <40.059402, 38.857197, 44.026299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904987, 38.499683, 44.117622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415165, 0.389345, 0.822222,
		-0.823781, 0.222620, -0.521369,
		-0.386035, -0.893785, 0.228311,
		39.789177, 38.231548, 44.186115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.263443, 38.936466, 44.255085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398701, 38.583248, 44.385242>,  <39.479855, 38.371315, 44.463337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398701, 38.583248, 44.385242>,  <39.263443, 38.936466, 44.255085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398701, 38.583248, 44.385242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544389, 0.098501, 0.833030,
		-0.767657, -0.458828, -0.447414,
		0.338147, -0.883049, 0.325396,
		39.500145, 38.318333, 44.482861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691841, 38.648258, 44.674297>,  <39.263443, 38.936466, 44.255085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691841, 38.648258, 44.674297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009666, 38.444061, 44.805786>,  <39.200363, 38.321545, 44.884678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009666, 38.444061, 44.805786>,  <38.691841, 38.648258, 44.674297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009666, 38.444061, 44.805786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409316, -0.050469, 0.910996,
		-0.448466, -0.858400, -0.249053,
		0.794568, -0.510493, 0.328723,
		39.248035, 38.290913, 44.904404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436367, 38.124084, 45.061176>,  <38.691841, 38.648258, 44.674297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436367, 38.124084, 45.061176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816902, 38.154964, 45.180504>,  <39.045223, 38.173492, 45.252102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.816902, 38.154964, 45.180504>,  <38.436367, 38.124084, 45.061176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816902, 38.154964, 45.180504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300868, 0.023500, 0.953376,
		0.066599, -0.996738, 0.045587,
		0.951337, 0.077210, 0.298322,
		39.102303, 38.178123, 45.270000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417759, 37.802479, 45.662441>,  <38.436367, 38.124084, 45.061176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417759, 37.802479, 45.662441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.770920, 37.990089, 45.671345>,  <38.982815, 38.102657, 45.676689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.770920, 37.990089, 45.671345>,  <38.417759, 37.802479, 45.662441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770920, 37.990089, 45.671345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031721, 0.012275, 0.999421,
		0.468483, -0.883098, 0.025716,
		0.882903, 0.469028, 0.022262,
		39.035789, 38.130798, 45.678024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941456, 37.403126, 46.010281>,  <38.417759, 37.802479, 45.662441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941456, 37.403126, 46.010281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.075871, 37.778484, 46.042530>,  <39.156521, 38.003700, 46.061878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.075871, 37.778484, 46.042530>,  <38.941456, 37.403126, 46.010281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075871, 37.778484, 46.042530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147355, -0.032166, 0.988560,
		0.930250, -0.344073, 0.127468,
		0.336037, 0.938392, 0.080623,
		39.176682, 38.060001, 46.066715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427536, 37.434078, 46.474270>,  <38.941456, 37.403126, 46.010281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427536, 37.434078, 46.474270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349808, 37.826443, 46.471176>,  <39.303169, 38.061859, 46.469318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.349808, 37.826443, 46.471176>,  <39.427536, 37.434078, 46.474270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349808, 37.826443, 46.471176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006886, 0.006524, 0.999955,
		0.980914, 0.194367, 0.005487,
		-0.194322, 0.980907, -0.007737,
		39.291512, 38.120716, 46.468857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833878, 37.761139, 46.908852>,  <39.427536, 37.434078, 46.474270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833878, 37.761139, 46.908852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.538864, 38.031212, 46.903728>,  <39.361855, 38.193256, 46.900654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.538864, 38.031212, 46.903728>,  <39.833878, 37.761139, 46.908852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538864, 38.031212, 46.903728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040925, 0.063615, 0.997135,
		0.674067, 0.734898, -0.074550,
		-0.737536, 0.675187, -0.012805,
		39.317604, 38.233768, 46.899887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103802, 38.301460, 47.261677>,  <39.833878, 37.761139, 46.908852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103802, 38.301460, 47.261677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.707615, 38.356472, 47.264900>,  <39.469902, 38.389477, 47.266834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.707615, 38.356472, 47.264900>,  <40.103802, 38.301460, 47.261677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707615, 38.356472, 47.264900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035657, 0.199431, 0.979263,
		0.133069, 0.970213, -0.202433,
		-0.990465, 0.137528, 0.008056,
		39.410477, 38.397732, 47.267319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886585, 39.008118, 47.484821>,  <40.103802, 38.301460, 47.261677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886585, 39.008118, 47.484821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553864, 38.808109, 47.581226>,  <39.354233, 38.688103, 47.639069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.553864, 38.808109, 47.581226>,  <39.886585, 39.008118, 47.484821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553864, 38.808109, 47.581226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090649, 0.305996, 0.947708,
		-0.547623, 0.810151, -0.209201,
		-0.831800, -0.500023, 0.241009,
		39.304325, 38.658104, 47.653530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563740, 39.331512, 48.016388>,  <39.886585, 39.008118, 47.484821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563740, 39.331512, 48.016388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374527, 38.981625, 48.058552>,  <39.260998, 38.771694, 48.083851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.374527, 38.981625, 48.058552>,  <39.563740, 39.331512, 48.016388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374527, 38.981625, 48.058552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172112, 0.209077, 0.962634,
		-0.864070, 0.437216, -0.249449,
		-0.473034, -0.874716, 0.105407,
		39.232616, 38.719212, 48.090176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049492, 39.387657, 48.542122>,  <39.563740, 39.331512, 48.016388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049492, 39.387657, 48.542122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.067379, 38.989155, 48.512550>,  <39.078114, 38.750053, 48.494808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.067379, 38.989155, 48.512550>,  <39.049492, 39.387657, 48.542122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067379, 38.989155, 48.512550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020788, -0.074916, 0.996973,
		-0.998783, -0.043050, -0.024060,
		0.044722, -0.996260, -0.073930,
		39.080795, 38.690277, 48.490372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546597, 39.172188, 49.153900>,  <39.049492, 39.387657, 48.542122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546597, 39.172188, 49.153900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792645, 38.879417, 49.036659>,  <38.940273, 38.703754, 48.966316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.792645, 38.879417, 49.036659>,  <38.546597, 39.172188, 49.153900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792645, 38.879417, 49.036659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301963, -0.124705, 0.945128,
		-0.728316, -0.669875, 0.144305,
		0.615122, -0.731926, -0.293102,
		38.977180, 38.659840, 48.948730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376438, 38.540733, 49.699066>,  <38.546597, 39.172188, 49.153900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376438, 38.540733, 49.699066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731899, 38.506847, 49.518787>,  <38.945175, 38.486515, 49.410622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.731899, 38.506847, 49.518787>,  <38.376438, 38.540733, 49.699066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731899, 38.506847, 49.518787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446630, -0.063069, 0.892493,
		-0.104035, -0.994407, -0.018208,
		0.888650, -0.084718, -0.450693,
		38.998493, 38.481434, 49.383579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628910, 37.891350, 49.893375>,  <38.376438, 38.540733, 49.699066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628910, 37.891350, 49.893375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.939400, 38.116226, 49.779240>,  <39.125694, 38.251152, 49.710758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.939400, 38.116226, 49.779240>,  <38.628910, 37.891350, 49.893375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939400, 38.116226, 49.779240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497873, -0.268945, 0.824494,
		0.386783, -0.782054, -0.488662,
		0.776222, 0.562192, -0.285340,
		39.172268, 38.284885, 49.693638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184696, 37.541351, 50.143818>,  <38.628910, 37.891350, 49.893375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184696, 37.541351, 50.143818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.340931, 37.903431, 50.076817>,  <39.434673, 38.120678, 50.036617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.340931, 37.903431, 50.076817>,  <39.184696, 37.541351, 50.143818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340931, 37.903431, 50.076817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402578, -0.004323, 0.915375,
		0.827872, -0.424969, -0.366101,
		0.390588, 0.905198, -0.167505,
		39.458107, 38.174992, 50.026566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935757, 37.532959, 50.189728>,  <39.184696, 37.541351, 50.143818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935757, 37.532959, 50.189728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.804043, 37.902023, 50.270000>,  <39.725014, 38.123463, 50.318165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.804043, 37.902023, 50.270000>,  <39.935757, 37.532959, 50.189728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804043, 37.902023, 50.270000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493587, -0.012991, 0.869599,
		0.804950, 0.385400, -0.451134,
		-0.329284, 0.922658, 0.200685,
		39.705257, 38.178822, 50.330208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493698, 37.766369, 50.499702>,  <39.935757, 37.532959, 50.189728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493698, 37.766369, 50.499702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.193462, 38.017471, 50.582199>,  <40.013321, 38.168133, 50.631695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.193462, 38.017471, 50.582199>,  <40.493698, 37.766369, 50.499702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193462, 38.017471, 50.582199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336402, 0.094398, 0.936976,
		0.568726, 0.772663, -0.282033,
		-0.750589, 0.627759, 0.206239,
		39.968285, 38.205799, 50.644070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806026, 38.235924, 51.049911>,  <40.493698, 37.766369, 50.499702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.806026, 38.235924, 51.049911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.412998, 38.305988, 51.074841>,  <40.177181, 38.348026, 51.089798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.412998, 38.305988, 51.074841>,  <40.806026, 38.235924, 51.049911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412998, 38.305988, 51.074841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086452, 0.133698, 0.987244,
		0.164590, 0.975420, -0.146510,
		-0.982566, 0.175157, 0.062321,
		40.118229, 38.358536, 51.093536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773785, 38.717842, 51.561817>,  <40.806026, 38.235924, 51.049911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773785, 38.717842, 51.561817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.419907, 38.534943, 51.525505>,  <40.207581, 38.425201, 51.503719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.419907, 38.534943, 51.525505>,  <40.773785, 38.717842, 51.561817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419907, 38.534943, 51.525505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076970, -0.048779, 0.995840,
		-0.459776, 0.887999, 0.007960,
		-0.884693, -0.457250, -0.090777,
		40.154499, 38.397766, 51.498272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341400, 38.879429, 52.178829>,  <40.773785, 38.717842, 51.561817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341400, 38.879429, 52.178829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.141956, 38.559837, 52.044353>,  <40.022289, 38.368080, 51.963669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.141956, 38.559837, 52.044353>,  <40.341400, 38.879429, 52.178829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141956, 38.559837, 52.044353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198761, -0.272125, 0.941510,
		-0.843734, 0.536263, -0.023123,
		-0.498605, -0.798980, -0.336189,
		39.992374, 38.320145, 51.943497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697079, 38.913391, 52.526619>,  <40.341400, 38.879429, 52.178829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697079, 38.913391, 52.526619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.701073, 38.537251, 52.390594>,  <39.703468, 38.311565, 52.308979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.701073, 38.537251, 52.390594>,  <39.697079, 38.913391, 52.526619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701073, 38.537251, 52.390594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460805, -0.306143, 0.833028,
		-0.887445, 0.148382, -0.436376,
		0.009987, -0.940350, -0.340060,
		39.704067, 38.255146, 52.288578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068317, 38.615421, 52.655876>,  <39.697079, 38.913391, 52.526619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068317, 38.615421, 52.655876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331993, 38.315159, 52.638046>,  <39.490196, 38.135002, 52.627346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331993, 38.315159, 52.638046>,  <39.068317, 38.615421, 52.655876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331993, 38.315159, 52.638046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295743, -0.313297, 0.902430,
		-0.691382, -0.581686, -0.428523,
		0.659186, -0.750657, -0.044579,
		39.529751, 38.089962, 52.624672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752735, 37.916035, 52.859818>,  <39.068317, 38.615421, 52.655876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.752735, 37.916035, 52.859818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147526, 37.917503, 52.924137>,  <39.384399, 37.918385, 52.962730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.147526, 37.917503, 52.924137>,  <38.752735, 37.916035, 52.859818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147526, 37.917503, 52.924137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143068, -0.436811, 0.888104,
		0.073503, -0.899546, -0.430598,
		0.986980, 0.003674, 0.160803,
		39.443619, 37.918606, 52.972378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508297, 37.267334, 53.067188>,  <38.752735, 37.916035, 52.859818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508297, 37.267334, 53.067188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269718, 37.553562, 52.921749>,  <38.126572, 37.725300, 52.834484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.269718, 37.553562, 52.921749>,  <38.508297, 37.267334, 53.067188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269718, 37.553562, 52.921749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405922, 0.121887, 0.905743,
		0.692444, 0.687822, 0.217768,
		-0.596447, 0.715573, -0.363601,
		38.090782, 37.768234, 52.812668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854530, 37.413418, 53.273354>,  <38.508297, 37.267334, 53.067188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854530, 37.413418, 53.273354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460995, 37.411808, 53.344952>,  <37.224873, 37.410843, 53.387909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.460995, 37.411808, 53.344952>,  <37.854530, 37.413418, 53.273354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460995, 37.411808, 53.344952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176773, -0.136601, -0.974726,
		0.028376, -0.990618, 0.133682,
		-0.983842, -0.004027, 0.178991,
		37.165840, 37.410599, 53.398647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630760, 36.942131, 52.867680>,  <37.854530, 37.413418, 53.273354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630760, 36.942131, 52.867680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.359131, 37.225548, 52.944450>,  <37.196156, 37.395596, 52.990513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.359131, 37.225548, 52.944450>,  <37.630760, 36.942131, 52.867680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359131, 37.225548, 52.944450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080897, 0.187636, -0.978902,
		-0.729602, -0.680270, -0.070100,
		-0.679071, 0.708537, 0.191931,
		37.155411, 37.438110, 53.002029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037045, 36.777508, 52.486027>,  <37.630760, 36.942131, 52.867680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037045, 36.777508, 52.486027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981789, 37.160671, 52.586689>,  <36.948635, 37.390568, 52.647087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.981789, 37.160671, 52.586689>,  <37.037045, 36.777508, 52.486027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981789, 37.160671, 52.586689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579690, 0.127822, -0.804749,
		-0.803041, -0.257055, 0.537631,
		-0.138144, 0.957906, 0.251659,
		36.940346, 37.448044, 52.662186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304958, 36.935638, 52.470856>,  <37.037045, 36.777508, 52.486027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304958, 36.935638, 52.470856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493237, 37.285210, 52.422367>,  <36.606205, 37.494953, 52.393276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.493237, 37.285210, 52.422367>,  <36.304958, 36.935638, 52.470856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493237, 37.285210, 52.422367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499266, 0.150552, -0.853269,
		-0.727445, 0.462153, 0.507187,
		0.470699, 0.873927, -0.121219,
		36.634445, 37.547386, 52.386002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752449, 37.390533, 52.189373>,  <36.304958, 36.935638, 52.470856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752449, 37.390533, 52.189373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115047, 37.538811, 52.108532>,  <36.332607, 37.627777, 52.060028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.115047, 37.538811, 52.108532>,  <35.752449, 37.390533, 52.189373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115047, 37.538811, 52.108532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283988, 0.181120, -0.941566,
		-0.312422, 0.910926, 0.269456,
		0.906501, 0.370689, -0.202106,
		36.386997, 37.650017, 52.047901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603691, 37.920349, 51.617676>,  <35.752449, 37.390533, 52.189373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603691, 37.920349, 51.617676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995716, 37.841026, 51.622635>,  <36.230930, 37.793434, 51.625610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995716, 37.841026, 51.622635>,  <35.603691, 37.920349, 51.617676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995716, 37.841026, 51.622635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007200, -0.097812, -0.995179,
		0.198564, 0.975247, -0.097289,
		0.980061, -0.198307, 0.012401,
		36.289734, 37.781532, 51.626354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809956, 38.399479, 51.153034>,  <35.603691, 37.920349, 51.617676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809956, 38.399479, 51.153034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.107616, 38.132290, 51.150242>,  <36.286213, 37.971977, 51.148567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.107616, 38.132290, 51.150242>,  <35.809956, 38.399479, 51.153034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107616, 38.132290, 51.150242> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114570, -0.117331, -0.986462,
		0.658113, 0.734877, -0.163842,
		0.744151, -0.667974, -0.006978,
		36.330860, 37.931896, 51.148148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184532, 38.438625, 50.508732>,  <35.809956, 38.399479, 51.153034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184532, 38.438625, 50.508732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308426, 38.074417, 50.618290>,  <36.382763, 37.855892, 50.684025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.308426, 38.074417, 50.618290>,  <36.184532, 38.438625, 50.508732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308426, 38.074417, 50.618290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059574, -0.268907, -0.961322,
		0.948956, 0.314069, -0.029046,
		0.309732, -0.910522, 0.273891,
		36.401344, 37.801262, 50.700459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804230, 38.329548, 50.161655>,  <36.184532, 38.438625, 50.508732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804230, 38.329548, 50.161655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.649967, 37.969181, 50.241261>,  <36.557407, 37.752960, 50.289024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.649967, 37.969181, 50.241261>,  <36.804230, 38.329548, 50.161655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649967, 37.969181, 50.241261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107904, -0.258265, -0.960029,
		0.916310, -0.348768, 0.196815,
		-0.385658, -0.900922, 0.199017,
		36.534271, 37.698906, 50.300964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339821, 37.934601, 50.001709>,  <36.804230, 38.329548, 50.161655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339821, 37.934601, 50.001709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.002975, 37.719357, 49.987411>,  <36.800869, 37.590210, 49.978832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.002975, 37.719357, 49.987411>,  <37.339821, 37.934601, 50.001709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002975, 37.719357, 49.987411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039223, 0.004986, -0.999218,
		0.537866, -0.842861, 0.016907,
		-0.842118, -0.538108, -0.035741,
		36.750340, 37.557922, 49.976688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450748, 37.269222, 49.555637>,  <37.339821, 37.934601, 50.001709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450748, 37.269222, 49.555637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057915, 37.344566, 49.557896>,  <36.822216, 37.389774, 49.559250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.057915, 37.344566, 49.557896>,  <37.450748, 37.269222, 49.555637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057915, 37.344566, 49.557896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002577, 0.043383, -0.999055,
		-0.188432, -0.981140, -0.043091,
		-0.982083, 0.188365, 0.005646,
		36.763290, 37.401077, 49.559589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173325, 37.085373, 48.891327>,  <37.450748, 37.269222, 49.555637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173325, 37.085373, 48.891327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.833969, 37.262272, 49.007710>,  <36.630356, 37.368412, 49.077538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.833969, 37.262272, 49.007710>,  <37.173325, 37.085373, 48.891327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833969, 37.262272, 49.007710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266078, 0.118909, -0.956589,
		-0.457642, -0.888978, 0.016790,
		-0.848390, 0.442243, 0.290955,
		36.579453, 37.394943, 49.094997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641800, 36.690163, 48.618076>,  <37.173325, 37.085373, 48.891327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641800, 36.690163, 48.618076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541824, 37.072845, 48.677746>,  <36.481838, 37.302456, 48.713547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541824, 37.072845, 48.677746>,  <36.641800, 36.690163, 48.618076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541824, 37.072845, 48.677746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212835, 0.096010, -0.972360,
		-0.944581, -0.274777, 0.179623,
		-0.249937, 0.956702, 0.149172,
		36.466843, 37.359856, 48.722496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925106, 36.868568, 48.329166>,  <36.641800, 36.690163, 48.618076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925106, 36.868568, 48.329166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.136097, 37.208393, 48.328365>,  <36.262691, 37.412289, 48.327885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.136097, 37.208393, 48.328365>,  <35.925106, 36.868568, 48.329166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136097, 37.208393, 48.328365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225345, 0.137638, -0.964508,
		-0.819136, 0.509211, 0.264046,
		0.527481, 0.849564, -0.002004,
		36.294342, 37.463261, 48.327763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701015, 37.189037, 47.691696>,  <35.925106, 36.868568, 48.329166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701015, 37.189037, 47.691696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954948, 37.468227, 47.824253>,  <36.107307, 37.635742, 47.903786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.954948, 37.468227, 47.824253>,  <35.701015, 37.189037, 47.691696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954948, 37.468227, 47.824253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005022, 0.432621, -0.901562,
		-0.772631, 0.570679, 0.278148,
		0.634835, 0.697972, 0.331390,
		36.145397, 37.677620, 47.923672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506767, 37.872498, 47.430012>,  <35.701015, 37.189037, 47.691696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506767, 37.872498, 47.430012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.896290, 37.921570, 47.506584>,  <36.130005, 37.951012, 47.552528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.896290, 37.921570, 47.506584>,  <35.506767, 37.872498, 47.430012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896290, 37.921570, 47.506584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092955, 0.553571, -0.827598,
		-0.207499, 0.823717, 0.527669,
		0.973809, 0.122677, 0.191434,
		36.188431, 37.958374, 47.564014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599590, 38.635479, 47.348827>,  <35.506767, 37.872498, 47.430012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599590, 38.635479, 47.348827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.966576, 38.478798, 47.321030>,  <36.186768, 38.384789, 47.304352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.966576, 38.478798, 47.321030>,  <35.599590, 38.635479, 47.348827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966576, 38.478798, 47.321030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246193, 0.696262, -0.674247,
		0.312494, 0.601486, 0.735229,
		0.917462, -0.391706, -0.069496,
		36.241814, 38.361286, 47.300182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051052, 39.271385, 47.288357>,  <35.599590, 38.635479, 47.348827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051052, 39.271385, 47.288357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.233681, 38.942554, 47.152279>,  <36.343258, 38.745255, 47.070633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.233681, 38.942554, 47.152279>,  <36.051052, 39.271385, 47.288357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233681, 38.942554, 47.152279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109520, 0.431400, -0.895488,
		0.882922, 0.371593, 0.286998,
		0.456568, -0.822078, -0.340195,
		36.370651, 38.695930, 47.050220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610310, 39.525528, 46.910149>,  <36.051052, 39.271385, 47.288357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610310, 39.525528, 46.910149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587002, 39.145035, 46.788982>,  <36.573017, 38.916737, 46.716282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.587002, 39.145035, 46.788982>,  <36.610310, 39.525528, 46.910149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587002, 39.145035, 46.788982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221054, 0.283604, -0.933115,
		0.973519, -0.121333, 0.193749,
		-0.058269, -0.951235, -0.302915,
		36.569523, 38.859665, 46.698109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143024, 39.402817, 46.411293>,  <36.610310, 39.525528, 46.910149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143024, 39.402817, 46.411293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906670, 39.093903, 46.317974>,  <36.764858, 38.908554, 46.261982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.906670, 39.093903, 46.317974>,  <37.143024, 39.402817, 46.411293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906670, 39.093903, 46.317974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251264, 0.098629, -0.962881,
		0.766629, -0.627572, 0.135769,
		-0.590887, -0.772286, -0.233298,
		36.729404, 38.862217, 46.247986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.257637, 43.486015, 34.458454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.044369, 43.346581, 34.150112>,  <45.916409, 43.262920, 33.965107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.044369, 43.346581, 34.150112>,  <46.257637, 43.486015, 34.458454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.044369, 43.346581, 34.150112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304654, -0.770924, 0.559341,
		-0.789249, 0.533068, 0.304836,
		-0.533172, -0.348590, -0.770852,
		45.884418, 43.242004, 33.918858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.756702, 43.099941, 34.801128>,  <46.257637, 43.486015, 34.458454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.756702, 43.099941, 34.801128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.690273, 42.976505, 34.426495>,  <45.650417, 42.902443, 34.201714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.690273, 42.976505, 34.426495>,  <45.756702, 43.099941, 34.801128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690273, 42.976505, 34.426495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466250, -0.812332, 0.350325,
		-0.868925, 0.494862, -0.008973,
		-0.166073, -0.308590, -0.936585,
		45.640450, 42.883926, 34.145519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059956, 42.748199, 34.860229>,  <45.756702, 43.099941, 34.801128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059956, 42.748199, 34.860229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.250813, 42.612381, 34.535995>,  <45.365326, 42.530888, 34.341457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.250813, 42.612381, 34.535995>,  <45.059956, 42.748199, 34.860229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250813, 42.612381, 34.535995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443701, -0.889235, 0.111314,
		-0.758593, 0.306542, -0.574950,
		0.477143, -0.339548, -0.810581,
		45.393955, 42.510517, 34.292820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.500202, 42.453026, 34.457405>,  <45.059956, 42.748199, 34.860229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.500202, 42.453026, 34.457405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.840622, 42.314129, 34.299850>,  <45.044872, 42.230789, 34.205318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.840622, 42.314129, 34.299850>,  <44.500202, 42.453026, 34.457405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840622, 42.314129, 34.299850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432405, -0.889027, -0.150523,
		-0.297905, 0.298419, -0.906752,
		0.851046, -0.347242, -0.393883,
		45.095936, 42.209957, 34.181686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296570, 42.158600, 33.802597>,  <44.500202, 42.453026, 34.457405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296570, 42.158600, 33.802597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.639175, 42.004169, 33.939610>,  <44.844738, 41.911510, 34.021816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.639175, 42.004169, 33.939610>,  <44.296570, 42.158600, 33.802597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639175, 42.004169, 33.939610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335093, -0.920743, -0.199863,
		0.392547, 0.056404, -0.918001,
		0.856515, -0.386071, 0.342535,
		44.896130, 41.888348, 34.042370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.267155, 41.599339, 33.296204>,  <44.296570, 42.158600, 33.802597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.267155, 41.599339, 33.296204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.560364, 41.512722, 33.554131>,  <44.736290, 41.460751, 33.708889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.560364, 41.512722, 33.554131>,  <44.267155, 41.599339, 33.296204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560364, 41.512722, 33.554131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318627, -0.946847, 0.044237,
		0.600967, -0.237884, -0.763053,
		0.733019, -0.216544, 0.644820,
		44.780270, 41.447758, 33.747578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692661, 41.081516, 33.045364>,  <44.267155, 41.599339, 33.296204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692661, 41.081516, 33.045364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.745190, 41.054493, 33.440979>,  <44.776707, 41.038280, 33.678349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.745190, 41.054493, 33.440979>,  <44.692661, 41.081516, 33.045364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745190, 41.054493, 33.440979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490136, -0.871628, 0.005538,
		0.861697, -0.485489, -0.147573,
		0.131317, -0.067559, 0.989035,
		44.784584, 41.034225, 33.737690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048885, 40.419289, 33.235542>,  <44.692661, 41.081516, 33.045364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048885, 40.419289, 33.235542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.853184, 40.526955, 33.567371>,  <44.735764, 40.591557, 33.766468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.853184, 40.526955, 33.567371>,  <45.048885, 40.419289, 33.235542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853184, 40.526955, 33.567371> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343119, -0.933883, 0.100655,
		0.801813, -0.235395, 0.549258,
		-0.489249, 0.269168, 0.829568,
		44.706409, 40.607704, 33.816242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941036, 39.897049, 33.522110>,  <45.048885, 40.419289, 33.235542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941036, 39.897049, 33.522110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710453, 40.095932, 33.781487>,  <44.572102, 40.215260, 33.937115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.710453, 40.095932, 33.781487>,  <44.941036, 39.897049, 33.522110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710453, 40.095932, 33.781487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439603, -0.857648, 0.266811,
		0.688796, -0.131251, 0.712975,
		-0.576462, 0.497205, 0.648444,
		44.537514, 40.245094, 33.976021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993904, 39.549145, 34.268700>,  <44.941036, 39.897049, 33.522110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993904, 39.549145, 34.268700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652294, 39.754868, 34.237373>,  <44.447330, 39.878304, 34.218578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.652294, 39.754868, 34.237373>,  <44.993904, 39.549145, 34.268700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652294, 39.754868, 34.237373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514318, -0.812033, 0.275825,
		0.078262, 0.275841, 0.958012,
		-0.854022, 0.514309, -0.078319,
		44.396088, 39.909161, 34.213879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643398, 39.330864, 34.818218>,  <44.993904, 39.549145, 34.268700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643398, 39.330864, 34.818218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.392052, 39.465561, 34.537716>,  <44.241245, 39.546379, 34.369415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.392052, 39.465561, 34.537716>,  <44.643398, 39.330864, 34.818218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392052, 39.465561, 34.537716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534143, -0.842128, 0.074237,
		-0.565551, 0.421220, 0.709031,
		-0.628365, 0.336740, -0.701258,
		44.203541, 39.566582, 34.327339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969200, 39.161720, 35.014450>,  <44.643398, 39.330864, 34.818218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969200, 39.161720, 35.014450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.916946, 39.241661, 34.626019>,  <43.885593, 39.289627, 34.392960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.916946, 39.241661, 34.626019>,  <43.969200, 39.161720, 35.014450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916946, 39.241661, 34.626019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747484, -0.663306, -0.035957,
		-0.651309, 0.721168, 0.236036,
		-0.130633, 0.199853, -0.971079,
		43.877758, 39.301617, 34.334694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295628, 39.019051, 34.972900>,  <43.969200, 39.161720, 35.014450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295628, 39.019051, 34.972900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.424744, 39.018101, 34.594315>,  <43.502213, 39.017529, 34.367161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.424744, 39.018101, 34.594315>,  <43.295628, 39.019051, 34.972900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424744, 39.018101, 34.594315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633149, -0.743841, -0.214062,
		-0.703513, 0.668352, -0.241608,
		0.322787, -0.002379, -0.946469,
		43.521580, 39.017387, 34.310375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730015, 39.110615, 34.550358>,  <43.295628, 39.019051, 34.972900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730015, 39.110615, 34.550358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.009014, 38.936646, 34.322552>,  <43.176414, 38.832264, 34.185867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.009014, 38.936646, 34.322552>,  <42.730015, 39.110615, 34.550358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009014, 38.936646, 34.322552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647202, -0.723515, -0.240115,
		-0.307622, 0.536070, -0.786129,
		0.697494, -0.434919, -0.569514,
		43.218262, 38.806171, 34.151699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392471, 38.952602, 33.872143>,  <42.730015, 39.110615, 34.550358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392471, 38.952602, 33.872143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.720673, 38.727268, 33.910999>,  <42.917591, 38.592068, 33.934315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.720673, 38.727268, 33.910999>,  <42.392471, 38.952602, 33.872143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720673, 38.727268, 33.910999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530140, -0.813428, -0.239346,
		0.213850, 0.144884, -0.966063,
		0.820500, -0.563332, 0.097142,
		42.966824, 38.558270, 33.940144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.326897, 38.568157, 33.323673>,  <42.392471, 38.952602, 33.872143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.326897, 38.568157, 33.323673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567337, 38.393024, 33.591099>,  <42.711601, 38.287945, 33.751553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.567337, 38.393024, 33.591099>,  <42.326897, 38.568157, 33.323673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.567337, 38.393024, 33.591099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379777, -0.892572, -0.243076,
		0.703166, -0.107790, -0.702808,
		0.601105, -0.437832, 0.668562,
		42.747669, 38.261673, 33.791668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393951, 37.902145, 33.083763>,  <42.326897, 38.568157, 33.323673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393951, 37.902145, 33.083763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516518, 37.844082, 33.460068>,  <42.590057, 37.809242, 33.685852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.516518, 37.844082, 33.460068>,  <42.393951, 37.902145, 33.083763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516518, 37.844082, 33.460068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452800, -0.891557, 0.009912,
		0.837307, -0.429016, -0.338913,
		0.306413, -0.145161, 0.940765,
		42.608440, 37.800533, 33.742298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706692, 37.201405, 33.224449>,  <42.393951, 37.902145, 33.083763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706692, 37.201405, 33.224449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.685989, 37.289455, 33.614086>,  <42.673569, 37.342285, 33.847870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.685989, 37.289455, 33.614086>,  <42.706692, 37.201405, 33.224449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.685989, 37.289455, 33.614086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314793, -0.929274, 0.193274,
		0.947748, -0.296636, 0.117389,
		-0.051755, 0.220128, 0.974097,
		42.670464, 37.355495, 33.906315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140884, 36.729057, 33.587101>,  <42.706692, 37.201405, 33.224449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140884, 36.729057, 33.587101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833645, 36.854523, 33.810402>,  <42.649300, 36.929802, 33.944382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833645, 36.854523, 33.810402>,  <43.140884, 36.729057, 33.587101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833645, 36.854523, 33.810402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204439, -0.946309, 0.250408,
		0.606820, 0.078210, 0.790982,
		-0.768098, 0.313660, 0.558250,
		42.603214, 36.948620, 33.977879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.040405, 36.130783, 33.897362>,  <43.140884, 36.729057, 33.587101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.040405, 36.130783, 33.897362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.723782, 36.339344, 34.024845>,  <42.533810, 36.464481, 34.101334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.723782, 36.339344, 34.024845>,  <43.040405, 36.130783, 33.897362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.723782, 36.339344, 34.024845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438689, -0.847916, 0.297641,
		0.425429, 0.095787, 0.899909,
		-0.791557, 0.521405, 0.318707,
		42.486313, 36.495766, 34.120457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964779, 35.940845, 34.666779>,  <43.040405, 36.130783, 33.897362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964779, 35.940845, 34.666779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609383, 36.058659, 34.526016>,  <42.396145, 36.129345, 34.441559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.609383, 36.058659, 34.526016>,  <42.964779, 35.940845, 34.666779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.609383, 36.058659, 34.526016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415667, -0.841467, 0.345187,
		-0.194452, 0.452971, 0.870061,
		-0.888487, 0.294533, -0.351910,
		42.342838, 36.147018, 34.420444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683540, 35.760632, 34.471943>,  <42.964779, 35.940845, 34.666779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683540, 35.760632, 34.471943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002117, 35.563660, 34.612339>,  <44.193264, 35.445477, 34.696575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.002117, 35.563660, 34.612339>,  <43.683540, 35.760632, 34.471943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.002117, 35.563660, 34.612339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584033, 0.776880, -0.235294,
		-0.156808, 0.392386, 0.906336,
		0.796440, -0.492434, 0.350988,
		44.241051, 35.415928, 34.717636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117153, 36.202793, 34.977516>,  <43.683540, 35.760632, 34.471943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117153, 36.202793, 34.977516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371010, 35.914726, 34.865379>,  <44.523323, 35.741886, 34.798096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.371010, 35.914726, 34.865379>,  <44.117153, 36.202793, 34.977516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371010, 35.914726, 34.865379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703292, 0.688577, -0.176756,
		0.320331, -0.084986, 0.943486,
		0.634641, -0.720166, -0.280342,
		44.561401, 35.698677, 34.781277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783283, 36.174545, 35.417652>,  <44.117153, 36.202793, 34.977516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783283, 36.174545, 35.417652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870811, 35.991173, 35.073105>,  <44.923328, 35.881149, 34.866375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.870811, 35.991173, 35.073105>,  <44.783283, 36.174545, 35.417652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.870811, 35.991173, 35.073105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695699, 0.692280, -0.191705,
		0.684193, -0.557306, 0.470415,
		0.218820, -0.458430, -0.861371,
		44.936459, 35.853645, 34.814693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.504944, 36.559971, 35.291164>,  <44.783283, 36.174545, 35.417652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.504944, 36.559971, 35.291164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.407261, 36.353474, 34.962807>,  <45.348652, 36.229576, 34.765793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.407261, 36.353474, 34.962807>,  <45.504944, 36.559971, 35.291164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407261, 36.353474, 34.962807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655071, 0.536349, -0.532176,
		0.715013, -0.667703, 0.207193,
		-0.244208, -0.516239, -0.820890,
		45.334000, 36.198601, 34.716541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.065830, 36.375229, 34.924389>,  <45.504944, 36.559971, 35.291164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.065830, 36.375229, 34.924389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.786831, 36.366215, 34.637897>,  <45.619431, 36.360806, 34.466003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.786831, 36.366215, 34.637897>,  <46.065830, 36.375229, 34.924389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.786831, 36.366215, 34.637897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606702, 0.513299, -0.606990,
		0.381319, -0.857913, -0.344354,
		-0.697502, -0.022536, -0.716228,
		45.577579, 36.359455, 34.423027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394920, 36.139954, 34.370182>,  <46.065830, 36.375229, 34.924389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394920, 36.139954, 34.370182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083172, 36.342194, 34.222153>,  <45.896122, 36.463539, 34.133335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.083172, 36.342194, 34.222153>,  <46.394920, 36.139954, 34.370182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.083172, 36.342194, 34.222153> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616633, 0.514181, -0.596139,
		-0.111122, -0.692812, -0.712505,
		-0.779369, 0.505598, -0.370073,
		45.849361, 36.493874, 34.111130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612686, 36.290245, 33.669498>,  <46.394920, 36.139954, 34.370182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612686, 36.290245, 33.669498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.300838, 36.534794, 33.723770>,  <46.113728, 36.681522, 33.756332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.300838, 36.534794, 33.723770>,  <46.612686, 36.290245, 33.669498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.300838, 36.534794, 33.723770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441011, 0.689803, -0.574179,
		-0.444632, -0.387805, -0.807409,
		-0.779623, 0.611375, 0.135682,
		46.066952, 36.718204, 33.764473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.467697, 36.514431, 32.945595>,  <46.612686, 36.290245, 33.669498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.467697, 36.514431, 32.945595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.326416, 36.759632, 33.228287>,  <46.241646, 36.906754, 33.397903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.326416, 36.759632, 33.228287>,  <46.467697, 36.514431, 32.945595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.326416, 36.759632, 33.228287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367583, 0.785601, -0.497710,
		-0.860309, 0.083991, -0.502806,
		-0.353201, 0.613007, 0.706733,
		46.220455, 36.943535, 33.440308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.272869, 37.105133, 32.548153>,  <46.467697, 36.514431, 32.945595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.272869, 37.105133, 32.548153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280590, 37.220356, 32.931122>,  <46.285225, 37.289490, 33.160904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.280590, 37.220356, 32.931122>,  <46.272869, 37.105133, 32.548153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280590, 37.220356, 32.931122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370895, 0.887208, -0.274408,
		-0.928474, 0.360400, -0.089708,
		0.019307, 0.288053, 0.957420,
		46.286381, 37.306770, 33.218349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.890762, 37.839127, 32.570911>,  <46.272869, 37.105133, 32.548153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.890762, 37.839127, 32.570911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.140015, 37.805897, 32.881989>,  <46.289566, 37.785957, 33.068634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.140015, 37.805897, 32.881989>,  <45.890762, 37.839127, 32.570911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140015, 37.805897, 32.881989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420685, 0.873854, -0.243728,
		-0.659343, 0.479038, 0.579474,
		0.623131, -0.083076, 0.777693,
		46.326954, 37.780975, 33.115295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.712566, 38.408783, 33.031532>,  <45.890762, 37.839127, 32.570911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.712566, 38.408783, 33.031532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.086781, 38.274857, 33.076569>,  <46.311310, 38.194500, 33.103592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.086781, 38.274857, 33.076569>,  <45.712566, 38.408783, 33.031532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086781, 38.274857, 33.076569> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352995, 0.898081, -0.262384,
		-0.013266, 0.285213, 0.958372,
		0.935531, -0.334820, 0.112593,
		46.367439, 38.174412, 33.110348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.920414, 38.874527, 33.478813>,  <45.712566, 38.408783, 33.031532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.920414, 38.874527, 33.478813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.256485, 38.712433, 33.334656>,  <46.458126, 38.615177, 33.248161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.256485, 38.712433, 33.334656>,  <45.920414, 38.874527, 33.478813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.256485, 38.712433, 33.334656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388790, 0.913391, -0.120663,
		0.378079, -0.038740, 0.924963,
		0.840178, -0.405236, -0.360395,
		46.508537, 38.590862, 33.226536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.382229, 39.343643, 33.686264>,  <45.920414, 38.874527, 33.478813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.382229, 39.343643, 33.686264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.593796, 39.141243, 33.413731>,  <46.720734, 39.019802, 33.250210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.593796, 39.141243, 33.413731>,  <46.382229, 39.343643, 33.686264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.593796, 39.141243, 33.413731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374926, 0.859544, -0.347297,
		0.761367, -0.071759, 0.644338,
		0.528915, -0.506000, -0.681332,
		46.752472, 38.989445, 33.209332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.139671, 39.592472, 33.739059>,  <46.382229, 39.343643, 33.686264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.139671, 39.592472, 33.739059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.078480, 39.437599, 33.375370>,  <47.041763, 39.344677, 33.157158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.078480, 39.437599, 33.375370>,  <47.139671, 39.592472, 33.739059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.078480, 39.437599, 33.375370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208106, 0.886800, -0.412646,
		0.966068, -0.252343, -0.055091,
		-0.152982, -0.387179, -0.909224,
		47.032585, 39.321445, 33.102604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.701656, 39.794308, 33.373539>,  <47.139671, 39.592472, 33.739059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.701656, 39.794308, 33.373539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.410164, 39.698868, 33.116783>,  <47.235268, 39.641605, 32.962730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.410164, 39.698868, 33.116783>,  <47.701656, 39.794308, 33.373539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.410164, 39.698868, 33.116783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112580, 0.882845, -0.455973,
		0.675484, -0.404545, -0.616494,
		-0.728730, -0.238597, -0.641891,
		47.191544, 39.627289, 32.924217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.934429, 39.920620, 32.689087>,  <47.701656, 39.794308, 33.373539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.934429, 39.920620, 32.689087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.536064, 39.912193, 32.653950>,  <47.297047, 39.907135, 32.632870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.536064, 39.912193, 32.653950>,  <47.934429, 39.920620, 32.689087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.536064, 39.912193, 32.653950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033121, 0.819523, -0.572089,
		0.084038, -0.572660, -0.815475,
		-0.995912, -0.021068, -0.087838,
		47.237289, 39.905872, 32.627598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.732494, 40.046680, 31.939543>,  <47.934429, 39.920620, 32.689087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.732494, 40.046680, 31.939543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.426258, 40.146484, 32.176731>,  <47.242516, 40.206367, 32.319046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.426258, 40.146484, 32.176731>,  <47.732494, 40.046680, 31.939543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.426258, 40.146484, 32.176731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087747, 0.872613, -0.480466,
		-0.637315, -0.419872, -0.646171,
		-0.765591, 0.249509, 0.592972,
		47.196579, 40.221336, 32.354622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.242146, 40.270580, 31.449562>,  <47.732494, 40.046680, 31.939543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.242146, 40.270580, 31.449562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.097893, 40.428795, 31.787437>,  <47.011341, 40.523724, 31.990162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.097893, 40.428795, 31.787437>,  <47.242146, 40.270580, 31.449562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.097893, 40.428795, 31.787437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272842, 0.821277, -0.501060,
		-0.891910, -0.411164, -0.188257,
		-0.360629, 0.395536, 0.844688,
		46.989704, 40.547455, 32.040844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.540298, 40.515335, 31.263697>,  <47.242146, 40.270580, 31.449562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.540298, 40.515335, 31.263697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.633270, 40.700169, 31.606031>,  <46.689053, 40.811069, 31.811432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.633270, 40.700169, 31.606031>,  <46.540298, 40.515335, 31.263697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633270, 40.700169, 31.606031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328187, 0.865589, -0.378218,
		-0.915570, -0.192964, 0.352841,
		0.232432, 0.462083, 0.855835,
		46.702999, 40.838795, 31.862782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.918350, 41.057117, 31.438993>,  <46.540298, 40.515335, 31.263697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.918350, 41.057117, 31.438993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.254585, 41.169907, 31.623991>,  <46.456326, 41.237579, 31.734989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.254585, 41.169907, 31.623991>,  <45.918350, 41.057117, 31.438993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254585, 41.169907, 31.623991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113177, 0.926408, -0.359109,
		-0.529716, 0.249520, 0.810642,
		0.840590, 0.281972, 0.462493,
		46.506763, 41.254498, 31.762739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736149, 41.821678, 31.708891>,  <45.918350, 41.057117, 31.438993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736149, 41.821678, 31.708891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.135532, 41.836040, 31.725801>,  <46.375164, 41.844658, 31.735947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.135532, 41.836040, 31.725801>,  <45.736149, 41.821678, 31.708891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.135532, 41.836040, 31.725801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024508, 0.969363, -0.244406,
		-0.049754, 0.242994, 0.968751,
		0.998461, 0.035902, 0.042275,
		46.435070, 41.846809, 31.738483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.926331, 38.280636, 41.811733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580105, 38.084938, 41.854507>,  <40.372368, 37.967518, 41.880173>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580105, 38.084938, 41.854507>,  <40.926331, 38.280636, 41.811733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580105, 38.084938, 41.854507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016508, -0.241291, -0.970312,
		0.500524, -0.838103, 0.216929,
		-0.865565, -0.489246, 0.106937,
		40.320435, 37.938164, 41.886589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938046, 37.802208, 41.354321>,  <40.926331, 38.280636, 41.811733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938046, 37.802208, 41.354321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550537, 37.744644, 41.435097>,  <40.318031, 37.710106, 41.483562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550537, 37.744644, 41.435097>,  <40.938046, 37.802208, 41.354321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550537, 37.744644, 41.435097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153931, -0.289462, -0.944731,
		0.194409, -0.946310, 0.258269,
		-0.968768, -0.143908, 0.201940,
		40.259907, 37.701473, 41.495678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759483, 37.128029, 40.886749>,  <40.938046, 37.802208, 41.354321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759483, 37.128029, 40.886749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423237, 37.331120, 40.962193>,  <40.221489, 37.452972, 41.007458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423237, 37.331120, 40.962193>,  <40.759483, 37.128029, 40.886749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423237, 37.331120, 40.962193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279324, -0.108031, -0.954100,
		-0.464047, -0.854718, 0.232634,
		-0.840618, 0.507727, 0.188612,
		40.171051, 37.483437, 41.018776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232273, 36.795464, 40.642090>,  <40.759483, 37.128029, 40.886749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232273, 36.795464, 40.642090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101730, 37.173561, 40.641933>,  <40.023403, 37.400421, 40.641838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101730, 37.173561, 40.641933>,  <40.232273, 36.795464, 40.642090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101730, 37.173561, 40.641933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223904, -0.077707, -0.971508,
		-0.918344, -0.316974, 0.237005,
		-0.326359, 0.945246, -0.000390,
		40.003822, 37.457134, 40.641815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631546, 36.724567, 40.337322>,  <40.232273, 36.795464, 40.642090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631546, 36.724567, 40.337322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705215, 37.116947, 40.312637>,  <39.749416, 37.352375, 40.297825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705215, 37.116947, 40.312637>,  <39.631546, 36.724567, 40.337322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705215, 37.116947, 40.312637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409212, 0.019443, -0.912232,
		-0.893657, 0.193266, 0.404999,
		0.184178, 0.980954, -0.061711,
		39.760468, 37.411232, 40.294125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049774, 37.011974, 40.007904>,  <39.631546, 36.724567, 40.337322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049774, 37.011974, 40.007904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339748, 37.284904, 39.970154>,  <39.513733, 37.448662, 39.947502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339748, 37.284904, 39.970154>,  <39.049774, 37.011974, 40.007904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339748, 37.284904, 39.970154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362098, 0.260939, -0.894872,
		-0.585966, 0.682896, 0.436231,
		0.724934, 0.682323, -0.094374,
		39.557228, 37.489601, 39.941841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747845, 37.695770, 39.891460>,  <39.049774, 37.011974, 40.007904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747845, 37.695770, 39.891460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122746, 37.732513, 39.756927>,  <39.347687, 37.754559, 39.676208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122746, 37.732513, 39.756927>,  <38.747845, 37.695770, 39.891460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122746, 37.732513, 39.756927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348403, 0.210297, -0.913450,
		-0.013175, 0.973313, 0.229104,
		0.937252, 0.091856, -0.336334,
		39.403923, 37.760071, 39.656029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794682, 38.367973, 39.542538>,  <38.747845, 37.695770, 39.891460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794682, 38.367973, 39.542538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083687, 38.132675, 39.397243>,  <39.257092, 37.991497, 39.310066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083687, 38.132675, 39.397243>,  <38.794682, 38.367973, 39.542538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083687, 38.132675, 39.397243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294857, 0.213031, -0.931492,
		0.625329, 0.780117, -0.019532,
		0.722512, -0.588247, -0.363238,
		39.300442, 37.956200, 39.288273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043678, 38.670998, 38.978889>,  <38.794682, 38.367973, 39.542538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043678, 38.670998, 38.978889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174519, 38.296131, 38.930344>,  <39.253021, 38.071213, 38.901215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174519, 38.296131, 38.930344>,  <39.043678, 38.670998, 38.978889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174519, 38.296131, 38.930344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155562, 0.073280, -0.985104,
		0.932097, 0.341109, -0.121817,
		0.327101, -0.937163, -0.121368,
		39.272648, 38.014980, 38.893932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132698, 38.574421, 38.307865>,  <39.043678, 38.670998, 38.978889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132698, 38.574421, 38.307865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195282, 38.184639, 38.372322>,  <39.232830, 37.950771, 38.410995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195282, 38.184639, 38.372322>,  <39.132698, 38.574421, 38.307865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195282, 38.184639, 38.372322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026111, -0.167174, -0.985582,
		0.987340, 0.149993, -0.051599,
		0.156456, -0.974451, 0.161141,
		39.242218, 37.892303, 38.420666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471527, 38.331341, 37.786480>,  <39.132698, 38.574421, 38.307865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471527, 38.331341, 37.786480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373833, 37.967613, 37.921238>,  <39.315216, 37.749378, 38.002094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373833, 37.967613, 37.921238>,  <39.471527, 38.331341, 37.786480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.373833, 37.967613, 37.921238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015648, -0.343674, -0.938959,
		0.969590, -0.234596, 0.069707,
		-0.244232, -0.909314, 0.336894,
		39.300564, 37.694820, 38.022305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947884, 37.768307, 37.350708>,  <39.471527, 38.331341, 37.786480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947884, 37.768307, 37.350708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630154, 37.573891, 37.496483>,  <39.439518, 37.457241, 37.583946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630154, 37.573891, 37.496483>,  <39.947884, 37.768307, 37.350708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630154, 37.573891, 37.496483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328945, -0.160230, -0.930657,
		0.510733, -0.859121, -0.032607,
		-0.794322, -0.486043, 0.364438,
		39.391857, 37.428078, 37.605816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980473, 36.998699, 37.216175>,  <39.947884, 37.768307, 37.350708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980473, 36.998699, 37.216175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606163, 37.131874, 37.262615>,  <39.381577, 37.211781, 37.290482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606163, 37.131874, 37.262615>,  <39.980473, 36.998699, 37.216175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606163, 37.131874, 37.262615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234847, -0.342894, -0.909544,
		-0.263007, -0.878395, 0.399060,
		-0.935774, 0.332935, 0.116105,
		39.325432, 37.231754, 37.297447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.538780, 36.646523, 37.056423>,  <39.980473, 36.998699, 37.216175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.538780, 36.646523, 37.056423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291370, 36.952084, 36.982788>,  <39.142925, 37.135418, 36.938606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291370, 36.952084, 36.982788>,  <39.538780, 36.646523, 37.056423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291370, 36.952084, 36.982788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205164, -0.383150, -0.900613,
		-0.758509, -0.519283, 0.393712,
		-0.618524, 0.763899, -0.184085,
		39.105812, 37.181252, 36.927563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977394, 36.109997, 36.791771>,  <39.538780, 36.646523, 37.056423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977394, 36.109997, 36.791771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272362, 35.847736, 36.726868>,  <40.449345, 35.690380, 36.687927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272362, 35.847736, 36.726868>,  <39.977394, 36.109997, 36.791771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272362, 35.847736, 36.726868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008037, -0.231694, 0.972755,
		-0.675383, -0.718636, -0.165587,
		0.737424, -0.655652, -0.162258,
		40.493587, 35.651039, 36.678192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741283, 35.435066, 37.106567>,  <39.977394, 36.109997, 36.791771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741283, 35.435066, 37.106567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137917, 35.396999, 37.071453>,  <40.375896, 35.374161, 37.050385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137917, 35.396999, 37.071453>,  <39.741283, 35.435066, 37.106567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137917, 35.396999, 37.071453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077857, -0.103449, 0.991583,
		-0.103449, -0.990071, -0.095169,
		-0.991583, 0.095169, 0.087785,
		40.435390, 35.368450, 37.045116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901382, 34.803738, 37.378723>,  <39.741283, 35.435066, 37.106567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901382, 34.803738, 37.378723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243706, 35.010429, 37.388443>,  <40.449100, 35.134445, 37.394276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243706, 35.010429, 37.388443>,  <39.901382, 34.803738, 37.378723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243706, 35.010429, 37.388443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150852, -0.294221, 0.943757,
		0.494813, -0.804008, -0.329745,
		0.855806, 0.516726, 0.024298,
		40.500446, 35.165447, 37.395733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377804, 34.380215, 37.714275>,  <39.901382, 34.803738, 37.378723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377804, 34.380215, 37.714275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568981, 34.730511, 37.741535>,  <40.683689, 34.940689, 37.757893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568981, 34.730511, 37.741535>,  <40.377804, 34.380215, 37.714275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568981, 34.730511, 37.741535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108588, -0.135896, 0.984754,
		0.871651, -0.463260, -0.160047,
		0.477947, 0.875741, 0.068150,
		40.712364, 34.993233, 37.761978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043629, 34.263828, 38.066841>,  <40.377804, 34.380215, 37.714275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043629, 34.263828, 38.066841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954990, 34.650711, 38.116486>,  <40.901806, 34.882839, 38.146275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.954990, 34.650711, 38.116486>,  <41.043629, 34.263828, 38.066841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954990, 34.650711, 38.116486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276397, -0.059760, 0.959184,
		0.935146, 0.246860, -0.254090,
		-0.221599, 0.967207, 0.124116,
		40.888512, 34.940872, 38.153721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622730, 34.460796, 38.424454>,  <41.043629, 34.263828, 38.066841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622730, 34.460796, 38.424454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338280, 34.738346, 38.469776>,  <41.167610, 34.904877, 38.496971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338280, 34.738346, 38.469776>,  <41.622730, 34.460796, 38.424454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338280, 34.738346, 38.469776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254325, 0.103626, 0.961551,
		0.655452, 0.712603, -0.250160,
		-0.711127, 0.693872, 0.113311,
		41.124943, 34.946507, 38.503769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933136, 34.900532, 38.848122>,  <41.622730, 34.460796, 38.424454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933136, 34.900532, 38.848122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542324, 34.979237, 38.880852>,  <41.307835, 35.026459, 38.900490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542324, 34.979237, 38.880852>,  <41.933136, 34.900532, 38.848122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542324, 34.979237, 38.880852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123476, 0.209790, 0.969918,
		0.173674, 0.957744, -0.229266,
		-0.977032, 0.196758, 0.081823,
		41.249214, 35.038265, 38.905399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900738, 35.442326, 39.295544>,  <41.933136, 34.900532, 38.848122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900738, 35.442326, 39.295544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541634, 35.266754, 39.310341>,  <41.326172, 35.161411, 39.319218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541634, 35.266754, 39.310341>,  <41.900738, 35.442326, 39.295544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541634, 35.266754, 39.310341> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045265, 0.175469, 0.983444,
		-0.438149, 0.881224, -0.177398,
		-0.897762, -0.438925, 0.036993,
		41.272305, 35.135078, 39.321438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.377834, 35.924118, 39.725601>,  <41.900738, 35.442326, 39.295544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.377834, 35.924118, 39.725601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217430, 35.557789, 39.734138>,  <41.121185, 35.337990, 39.739262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.217430, 35.557789, 39.734138>,  <41.377834, 35.924118, 39.725601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217430, 35.557789, 39.734138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172005, 0.098164, 0.980193,
		-0.899779, 0.389398, -0.196891,
		-0.401013, -0.915824, 0.021348,
		41.097126, 35.283043, 39.740543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665173, 36.014275, 39.979347>,  <41.377834, 35.924118, 39.725601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665173, 36.014275, 39.979347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756950, 35.628651, 40.032932>,  <40.812019, 35.397278, 40.065083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756950, 35.628651, 40.032932>,  <40.665173, 36.014275, 39.979347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756950, 35.628651, 40.032932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263193, 0.071053, 0.962123,
		-0.937061, -0.256016, -0.237430,
		0.229448, -0.964058, 0.133963,
		40.825787, 35.339432, 40.073120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142399, 35.677105, 40.234516>,  <40.665173, 36.014275, 39.979347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142399, 35.677105, 40.234516> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444023, 35.442886, 40.353531>,  <40.624996, 35.302353, 40.424938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444023, 35.442886, 40.353531>,  <40.142399, 35.677105, 40.234516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444023, 35.442886, 40.353531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374515, -0.011178, 0.927154,
		-0.539568, -0.810560, -0.227726,
		0.754059, -0.585549, 0.297535,
		40.670242, 35.267223, 40.442791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867138, 35.075535, 40.576000>,  <40.142399, 35.677105, 40.234516>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867138, 35.075535, 40.576000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248684, 35.051449, 40.693653>,  <40.477612, 35.036995, 40.764244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248684, 35.051449, 40.693653>,  <39.867138, 35.075535, 40.576000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248684, 35.051449, 40.693653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295772, -0.020289, 0.955043,
		-0.051556, -0.997978, -0.037168,
		0.953867, -0.060231, 0.294128,
		40.534843, 35.033382, 40.781891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766640, 34.691628, 41.212448>,  <39.867138, 35.075535, 40.576000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766640, 34.691628, 41.212448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132126, 34.854164, 41.213512>,  <40.351418, 34.951687, 41.214149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132126, 34.854164, 41.213512>,  <39.766640, 34.691628, 41.212448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132126, 34.854164, 41.213512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011217, -0.031766, 0.999432,
		0.406200, -0.913167, -0.033584,
		0.913716, 0.406346, 0.002660,
		40.406242, 34.976067, 41.214310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165688, 34.183044, 41.627277>,  <39.766640, 34.691628, 41.212448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165688, 34.183044, 41.627277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358421, 34.533501, 41.633091>,  <40.474060, 34.743774, 41.636581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358421, 34.533501, 41.633091>,  <40.165688, 34.183044, 41.627277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358421, 34.533501, 41.633091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214901, -0.134235, 0.967367,
		0.849501, -0.462987, -0.252963,
		0.481834, 0.876142, 0.014536,
		40.502972, 34.796345, 41.637451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988583, 33.398277, 41.624672>,  <40.165688, 34.183044, 41.627277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988583, 33.398277, 41.624672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643410, 33.243465, 41.754623>,  <39.436306, 33.150578, 41.832596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643410, 33.243465, 41.754623>,  <39.988583, 33.398277, 41.624672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643410, 33.243465, 41.754623> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449223, 0.293169, -0.843950,
		0.231390, -0.874218, -0.426850,
		-0.862935, -0.387032, 0.324882,
		39.384529, 33.127357, 41.852089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670799, 33.164024, 41.025246>,  <39.988583, 33.398277, 41.624672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670799, 33.164024, 41.025246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360943, 33.184288, 41.277390>,  <39.175030, 33.196445, 41.428677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360943, 33.184288, 41.277390>,  <39.670799, 33.164024, 41.025246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360943, 33.184288, 41.277390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591613, 0.294107, -0.750663,
		-0.223423, -0.954429, -0.197857,
		-0.774646, 0.050661, 0.630363,
		39.128548, 33.199486, 41.466499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254856, 32.706760, 40.751232>,  <39.670799, 33.164024, 41.025246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254856, 32.706760, 40.751232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038937, 32.954079, 40.979733>,  <38.909386, 33.102470, 41.116833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038937, 32.954079, 40.979733>,  <39.254856, 32.706760, 40.751232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038937, 32.954079, 40.979733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583433, 0.214390, -0.783354,
		-0.606813, -0.756142, 0.245005,
		-0.539800, 0.618293, 0.571253,
		38.876995, 33.139568, 41.151108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591442, 32.488808, 40.667809>,  <39.254856, 32.706760, 40.751232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591442, 32.488808, 40.667809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636734, 32.874882, 40.762119>,  <38.663910, 33.106525, 40.818707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636734, 32.874882, 40.762119>,  <38.591442, 32.488808, 40.667809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636734, 32.874882, 40.762119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592938, 0.256054, -0.763453,
		-0.797247, -0.053351, 0.601291,
		0.113232, 0.965189, 0.235772,
		38.670704, 33.164440, 40.832851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920635, 32.792309, 40.597870>,  <38.591442, 32.488808, 40.667809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920635, 32.792309, 40.597870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162910, 33.110340, 40.610428>,  <38.308277, 33.301159, 40.617962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162910, 33.110340, 40.610428>,  <37.920635, 32.792309, 40.597870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162910, 33.110340, 40.610428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571913, 0.462438, -0.677544,
		-0.553222, 0.392425, 0.734812,
		0.605690, 0.795081, 0.031398,
		38.344616, 33.348866, 40.619846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495110, 33.414948, 40.675259>,  <37.920635, 32.792309, 40.597870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495110, 33.414948, 40.675259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848862, 33.517586, 40.519299>,  <38.061115, 33.579170, 40.425720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848862, 33.517586, 40.519299>,  <37.495110, 33.414948, 40.675259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848862, 33.517586, 40.519299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465497, 0.423408, -0.777199,
		-0.034340, 0.868840, 0.493900,
		0.884383, 0.256598, -0.389903,
		38.114178, 33.594566, 40.402328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273685, 33.874374, 40.292603>,  <37.495110, 33.414948, 40.675259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273685, 33.874374, 40.292603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656567, 33.845688, 40.180443>,  <37.886295, 33.828476, 40.113148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656567, 33.845688, 40.180443>,  <37.273685, 33.874374, 40.292603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656567, 33.845688, 40.180443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238727, 0.352140, -0.904990,
		0.163641, 0.933196, 0.319948,
		0.957200, -0.071713, -0.280403,
		37.943726, 33.824173, 40.096321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589863, 34.475159, 39.892685>,  <37.273685, 33.874374, 40.292603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589863, 34.475159, 39.892685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815399, 34.171940, 39.761570>,  <37.950722, 33.990009, 39.682899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815399, 34.171940, 39.761570>,  <37.589863, 34.475159, 39.892685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815399, 34.171940, 39.761570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256751, 0.216337, -0.941954,
		0.784959, 0.615274, -0.072650,
		0.563842, -0.758048, -0.327788,
		37.984550, 33.944527, 39.663235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913982, 34.701172, 39.235455>,  <37.589863, 34.475159, 39.892685>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913982, 34.701172, 39.235455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929592, 34.302124, 39.212692>,  <37.938957, 34.062695, 39.199036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929592, 34.302124, 39.212692>,  <37.913982, 34.701172, 39.235455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929592, 34.302124, 39.212692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137520, 0.051048, -0.989183,
		0.989730, 0.046429, -0.135200,
		0.039025, -0.997616, -0.056908,
		37.941299, 34.002838, 39.195621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184761, 34.586124, 38.522545>,  <37.913982, 34.701172, 39.235455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184761, 34.586124, 38.522545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080082, 34.219940, 38.644817>,  <38.017273, 34.000229, 38.718182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080082, 34.219940, 38.644817>,  <38.184761, 34.586124, 38.522545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080082, 34.219940, 38.644817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248025, -0.242295, -0.937964,
		0.932736, -0.321283, -0.163649,
		-0.261701, -0.915462, 0.305684,
		38.001572, 33.945301, 38.736523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583466, 34.167446, 38.037846>,  <38.184761, 34.586124, 38.522545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583466, 34.167446, 38.037846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264122, 33.976887, 38.185181>,  <38.072517, 33.862549, 38.273582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264122, 33.976887, 38.185181>,  <38.583466, 34.167446, 38.037846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264122, 33.976887, 38.185181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306612, -0.204851, -0.929530,
		0.518282, -0.855031, 0.017474,
		-0.798356, -0.476401, 0.368333,
		38.024616, 33.833965, 38.295681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.475391, 33.758381, 37.540112>,  <38.583466, 34.167446, 38.037846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.475391, 33.758381, 37.540112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130283, 33.812176, 37.735065>,  <37.923218, 33.844452, 37.852039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130283, 33.812176, 37.735065>,  <38.475391, 33.758381, 37.540112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130283, 33.812176, 37.735065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490447, 0.011615, -0.871394,
		-0.122853, -0.990847, 0.055938,
		-0.862768, 0.134488, 0.487385,
		37.871452, 33.852520, 37.881283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.969551, 32.436165, 45.378658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.617329, 32.618111, 45.325417>,  <40.405994, 32.727280, 45.293472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.617329, 32.618111, 45.325417>,  <40.969551, 32.436165, 45.378658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617329, 32.618111, 45.325417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010617, -0.261836, -0.965054,
		-0.473821, -0.851199, 0.225732,
		-0.880557, 0.454866, -0.133100,
		40.353161, 32.754570, 45.285488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576569, 31.994429, 44.962761>,  <40.969551, 32.436165, 45.378658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576569, 31.994429, 44.962761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.360100, 32.328209, 44.921135>,  <40.230217, 32.528477, 44.896160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.360100, 32.328209, 44.921135>,  <40.576569, 31.994429, 44.962761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360100, 32.328209, 44.921135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123578, -0.201322, -0.971699,
		-0.831782, -0.512996, 0.212069,
		-0.541172, 0.834449, -0.104061,
		40.197750, 32.578545, 44.889915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106846, 31.787600, 44.524376>,  <40.576569, 31.994429, 44.962761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106846, 31.787600, 44.524376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.067368, 32.184864, 44.499435>,  <40.043682, 32.423222, 44.484470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.067368, 32.184864, 44.499435>,  <40.106846, 31.787600, 44.524376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067368, 32.184864, 44.499435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355001, -0.093674, -0.930161,
		-0.929641, -0.069668, 0.361819,
		-0.098696, 0.993163, -0.062351,
		40.037758, 32.482811, 44.480732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498581, 31.917665, 44.059792>,  <40.106846, 31.787600, 44.524376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498581, 31.917665, 44.059792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.692459, 32.267529, 44.062347>,  <39.808784, 32.477448, 44.063881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.692459, 32.267529, 44.062347>,  <39.498581, 31.917665, 44.059792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692459, 32.267529, 44.062347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270172, 0.156655, -0.949983,
		-0.831912, 0.458726, 0.312238,
		0.484695, 0.874660, 0.006388,
		39.837868, 32.529926, 44.064262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006130, 32.530125, 44.036503>,  <39.498581, 31.917665, 44.059792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006130, 32.530125, 44.036503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.366161, 32.632820, 43.895683>,  <39.582180, 32.694439, 43.811192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.366161, 32.632820, 43.895683>,  <39.006130, 32.530125, 44.036503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.366161, 32.632820, 43.895683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418467, 0.284250, -0.862605,
		-0.121398, 0.923735, 0.363287,
		0.900082, 0.256742, -0.352045,
		39.636185, 32.709843, 43.790070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930775, 33.207672, 43.806458>,  <39.006130, 32.530125, 44.036503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930775, 33.207672, 43.806458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257591, 33.073814, 43.618649>,  <39.453682, 32.993500, 43.505962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.257591, 33.073814, 43.618649>,  <38.930775, 33.207672, 43.806458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257591, 33.073814, 43.618649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449790, 0.139535, -0.882167,
		0.360729, 0.931956, -0.036514,
		0.817046, -0.334647, -0.469518,
		39.502705, 32.973419, 43.477795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125061, 33.741386, 43.336819>,  <38.930775, 33.207672, 43.806458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125061, 33.741386, 43.336819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.325264, 33.418587, 43.211441>,  <39.445385, 33.224907, 43.136215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.325264, 33.418587, 43.211441>,  <39.125061, 33.741386, 43.336819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325264, 33.418587, 43.211441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253416, 0.209625, -0.944372,
		0.827811, 0.552097, -0.099587,
		0.500509, -0.806999, -0.313440,
		39.475418, 33.176487, 43.117409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639610, 33.920528, 42.866467>,  <39.125061, 33.741386, 43.336819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639610, 33.920528, 42.866467> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.571209, 33.534260, 42.788254>,  <39.530167, 33.302498, 42.741325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.571209, 33.534260, 42.788254>,  <39.639610, 33.920528, 42.866467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571209, 33.534260, 42.788254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351746, 0.245212, -0.903408,
		0.920343, -0.085710, -0.381604,
		-0.171005, -0.965673, -0.195531,
		39.519909, 33.244556, 42.729595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909683, 33.846424, 42.236317>,  <39.639610, 33.920528, 42.866467>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909683, 33.846424, 42.236317> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.674393, 33.525650, 42.278046>,  <39.533218, 33.333187, 42.303085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.674393, 33.525650, 42.278046>,  <39.909683, 33.846424, 42.236317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674393, 33.525650, 42.278046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466724, 0.231300, -0.853621,
		0.660420, -0.550815, -0.510340,
		-0.588229, -0.801937, 0.104324,
		39.497925, 33.285069, 42.309341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666878, 34.132809, 42.239681>,  <39.909683, 33.846424, 42.236317>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666878, 34.132809, 42.239681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.662708, 34.523052, 42.151974>,  <40.660206, 34.757198, 42.099350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.662708, 34.523052, 42.151974>,  <40.666878, 34.132809, 42.239681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.662708, 34.523052, 42.151974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240434, 0.215291, 0.946489,
		0.970610, -0.042849, -0.236815,
		-0.010428, 0.975609, -0.219266,
		40.659580, 34.815735, 42.086193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.294735, 34.465652, 42.536518>,  <40.666878, 34.132809, 42.239681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.294735, 34.465652, 42.536518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.033237, 34.762173, 42.475727>,  <40.876339, 34.940086, 42.439255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.033237, 34.762173, 42.475727>,  <41.294735, 34.465652, 42.536518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033237, 34.762173, 42.475727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138343, 0.314531, 0.939112,
		0.743964, 0.592912, -0.308176,
		-0.653742, 0.741300, -0.151974,
		40.837116, 34.984562, 42.430134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574684, 35.080898, 42.720287>,  <41.294735, 34.465652, 42.536518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574684, 35.080898, 42.720287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.180691, 35.139870, 42.756210>,  <40.944294, 35.175251, 42.777763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.180691, 35.139870, 42.756210>,  <41.574684, 35.080898, 42.720287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180691, 35.139870, 42.756210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127518, 0.270745, 0.954168,
		0.116357, 0.951295, -0.285480,
		-0.984987, 0.147428, 0.089804,
		40.885193, 35.184097, 42.783150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.558498, 35.667843, 43.053413>,  <41.574684, 35.080898, 42.720287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.558498, 35.667843, 43.053413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.198757, 35.513584, 43.135826>,  <40.982914, 35.421028, 43.185272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.198757, 35.513584, 43.135826>,  <41.558498, 35.667843, 43.053413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198757, 35.513584, 43.135826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122701, 0.229668, 0.965504,
		-0.419662, 0.893604, -0.159232,
		-0.899349, -0.385647, 0.206029,
		40.928951, 35.397888, 43.197636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261860, 36.114014, 43.514183>,  <41.558498, 35.667843, 43.053413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261860, 36.114014, 43.514183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.061142, 35.772034, 43.566727>,  <40.940712, 35.566845, 43.598251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.061142, 35.772034, 43.566727>,  <41.261860, 36.114014, 43.514183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061142, 35.772034, 43.566727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149000, 0.235029, 0.960500,
		-0.852057, 0.462401, -0.245324,
		-0.501794, -0.854954, 0.131361,
		40.910603, 35.515549, 43.606136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676521, 36.321964, 43.806728>,  <41.261860, 36.114014, 43.514183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676521, 36.321964, 43.806728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.716911, 35.938297, 43.912411>,  <40.741146, 35.708096, 43.975819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.716911, 35.938297, 43.912411>,  <40.676521, 36.321964, 43.806728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716911, 35.938297, 43.912411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309665, 0.222070, 0.924550,
		-0.945469, -0.175172, -0.274596,
		0.100976, -0.959166, 0.264205,
		40.747204, 35.650547, 43.991673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110382, 36.125801, 44.346821>,  <40.676521, 36.321964, 43.806728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110382, 36.125801, 44.346821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.371502, 35.823841, 44.372089>,  <40.528172, 35.642666, 44.387249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.371502, 35.823841, 44.372089>,  <40.110382, 36.125801, 44.346821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371502, 35.823841, 44.372089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031953, 0.055873, 0.997926,
		-0.756860, -0.653461, 0.012353,
		0.652796, -0.754895, 0.063168,
		40.567341, 35.597374, 44.391041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757984, 35.495586, 44.713562>,  <40.110382, 36.125801, 44.346821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757984, 35.495586, 44.713562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.156319, 35.465008, 44.733456>,  <40.395317, 35.446659, 44.745392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.156319, 35.465008, 44.733456>,  <39.757984, 35.495586, 44.713562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156319, 35.465008, 44.733456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038018, 0.147720, 0.988298,
		-0.082900, -0.986070, 0.144198,
		0.995832, -0.076448, 0.049734,
		40.455067, 35.442074, 44.748375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838806, 35.081169, 45.201809>,  <39.757984, 35.495586, 44.713562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838806, 35.081169, 45.201809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.191322, 35.269352, 45.183918>,  <40.402832, 35.382259, 45.173183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.191322, 35.269352, 45.183918>,  <39.838806, 35.081169, 45.201809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191322, 35.269352, 45.183918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093577, -0.080946, 0.992316,
		0.463217, -0.878705, -0.115360,
		0.881291, 0.470453, -0.044731,
		40.455711, 35.410488, 45.170498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209354, 34.881664, 45.737865>,  <39.838806, 35.081169, 45.201809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209354, 34.881664, 45.737865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467625, 35.176624, 45.658535>,  <40.622589, 35.353600, 45.610935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467625, 35.176624, 45.658535>,  <40.209354, 34.881664, 45.737865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467625, 35.176624, 45.658535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247698, 0.043428, 0.967864,
		0.722319, -0.674055, -0.154613,
		0.645679, 0.737404, -0.198331,
		40.661327, 35.397846, 45.599037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920856, 34.729187, 46.075100>,  <40.209354, 34.881664, 45.737865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920856, 34.729187, 46.075100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.858398, 35.119003, 46.010731>,  <40.820923, 35.352894, 45.972111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.858398, 35.119003, 46.010731>,  <40.920856, 34.729187, 46.075100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858398, 35.119003, 46.010731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213915, 0.192420, 0.957713,
		0.964293, 0.115114, -0.238513,
		-0.156141, 0.974538, -0.160924,
		40.811558, 35.411366, 45.962452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443832, 35.000286, 46.560665>,  <40.920856, 34.729187, 46.075100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443832, 35.000286, 46.560665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.231297, 35.324596, 46.462421>,  <41.103775, 35.519180, 46.403477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.231297, 35.324596, 46.462421>,  <41.443832, 35.000286, 46.560665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231297, 35.324596, 46.462421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040937, 0.314154, 0.948489,
		0.846167, 0.493918, -0.200114,
		-0.531343, 0.810773, -0.245607,
		41.071896, 35.567829, 46.388741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833729, 35.549435, 46.740612>,  <41.443832, 35.000286, 46.560665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833729, 35.549435, 46.740612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.452557, 35.668118, 46.715694>,  <41.223854, 35.739326, 46.700745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.452557, 35.668118, 46.715694>,  <41.833729, 35.549435, 46.740612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452557, 35.668118, 46.715694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100240, 0.502261, 0.858887,
		0.286127, 0.812218, -0.508364,
		-0.952934, 0.296709, -0.062293,
		41.166676, 35.757130, 46.697006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.784595, 36.228413, 47.072502>,  <41.833729, 35.549435, 46.740612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.784595, 36.228413, 47.072502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.404190, 36.105057, 47.063782>,  <41.175949, 36.031044, 47.058548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.404190, 36.105057, 47.063782>,  <41.784595, 36.228413, 47.072502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404190, 36.105057, 47.063782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166254, 0.450693, 0.877061,
		-0.260646, 0.837720, -0.479884,
		-0.951012, -0.308385, -0.021803,
		41.118885, 36.012543, 47.057240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.251675, 36.842087, 47.888828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.541519, 36.571705, 47.835129>,  <33.715427, 36.409477, 47.802910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.541519, 36.571705, 47.835129>,  <33.251675, 36.842087, 47.888828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541519, 36.571705, 47.835129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198107, 0.390892, -0.898864,
		0.660069, 0.624732, 0.417156,
		0.724612, -0.675954, -0.134252,
		33.758904, 36.368919, 47.794853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763878, 37.195801, 47.618942>,  <33.251675, 36.842087, 47.888828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763878, 37.195801, 47.618942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855461, 36.820732, 47.514374>,  <33.910412, 36.595688, 47.451633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.855461, 36.820732, 47.514374>,  <33.763878, 37.195801, 47.618942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855461, 36.820732, 47.514374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215850, 0.310775, -0.925650,
		0.949204, 0.155505, 0.273552,
		0.228957, -0.937676, -0.261423,
		33.924149, 36.539429, 47.435947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411667, 37.163403, 47.304581>,  <33.763878, 37.195801, 47.618942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411667, 37.163403, 47.304581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.244198, 36.825733, 47.170662>,  <34.143719, 36.623131, 47.090309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.244198, 36.825733, 47.170662>,  <34.411667, 37.163403, 47.304581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244198, 36.825733, 47.170662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338632, 0.196958, -0.920074,
		0.842642, -0.498580, 0.203403,
		-0.418669, -0.844172, -0.334800,
		34.118599, 36.572483, 47.070221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842232, 37.038395, 46.789989>,  <34.411667, 37.163403, 47.304581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842232, 37.038395, 46.789989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528881, 36.800701, 46.717106>,  <34.340870, 36.658085, 46.673374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.528881, 36.800701, 46.717106>,  <34.842232, 37.038395, 46.789989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528881, 36.800701, 46.717106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250693, -0.033826, -0.967475,
		0.568748, -0.803577, 0.175469,
		-0.783377, -0.594239, -0.182213,
		34.293869, 36.622429, 46.662441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142876, 36.591377, 46.326939>,  <34.842232, 37.038395, 46.789989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142876, 36.591377, 46.326939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749191, 36.533176, 46.286617>,  <34.512981, 36.498257, 46.262424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749191, 36.533176, 46.286617>,  <35.142876, 36.591377, 46.326939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749191, 36.533176, 46.286617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112758, -0.076377, -0.990683,
		0.136450, -0.986405, 0.091578,
		-0.984209, -0.145505, -0.100804,
		34.453930, 36.489525, 46.256374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072376, 35.947708, 46.058708>,  <35.142876, 36.591377, 46.326939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072376, 35.947708, 46.058708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.746315, 36.164463, 45.976856>,  <34.550678, 36.294518, 45.927746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.746315, 36.164463, 45.976856>,  <35.072376, 35.947708, 46.058708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746315, 36.164463, 45.976856> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160957, -0.127457, -0.978697,
		-0.556427, -0.830729, 0.016677,
		-0.815157, 0.541889, -0.204632,
		34.501766, 36.327030, 45.915466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580711, 35.562233, 45.631229>,  <35.072376, 35.947708, 46.058708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580711, 35.562233, 45.631229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.495220, 35.947891, 45.568321>,  <34.443924, 36.179287, 45.530575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.495220, 35.947891, 45.568321>,  <34.580711, 35.562233, 45.631229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495220, 35.947891, 45.568321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054177, -0.172443, -0.983529,
		-0.975389, -0.201691, 0.089092,
		-0.213732, 0.964149, -0.157272,
		34.431099, 36.237137, 45.521141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094421, 35.613682, 45.129353>,  <34.580711, 35.562233, 45.631229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094421, 35.613682, 45.129353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.188534, 36.002419, 45.124134>,  <34.244999, 36.235661, 45.121002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.188534, 36.002419, 45.124134>,  <34.094421, 35.613682, 45.129353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188534, 36.002419, 45.124134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108391, 0.012897, -0.994025,
		-0.965866, 0.235285, 0.108373,
		0.235277, 0.971841, -0.013046,
		34.259117, 36.293972, 45.120220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524963, 36.003437, 44.739788>,  <34.094421, 35.613682, 45.129353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524963, 36.003437, 44.739788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.857685, 36.224586, 44.759499>,  <34.057320, 36.357277, 44.771324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.857685, 36.224586, 44.759499>,  <33.524963, 36.003437, 44.739788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857685, 36.224586, 44.759499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112179, 0.254394, -0.960573,
		-0.543611, 0.793483, 0.273627,
		0.831807, 0.552873, 0.049280,
		34.107227, 36.390450, 44.774281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366646, 36.599140, 44.442009>,  <33.524963, 36.003437, 44.739788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366646, 36.599140, 44.442009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766106, 36.611507, 44.425354>,  <34.005783, 36.618927, 44.415359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.766106, 36.611507, 44.425354>,  <33.366646, 36.599140, 44.442009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766106, 36.611507, 44.425354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046990, 0.199565, -0.978757,
		-0.021952, 0.979397, 0.200749,
		0.998654, 0.030918, -0.041641,
		34.065701, 36.620785, 44.412861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604832, 37.249184, 44.003197>,  <33.366646, 36.599140, 44.442009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604832, 37.249184, 44.003197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.901413, 36.981087, 43.990414>,  <34.079361, 36.820229, 43.982746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.901413, 36.981087, 43.990414>,  <33.604832, 37.249184, 44.003197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901413, 36.981087, 43.990414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090817, 0.147420, -0.984896,
		0.664830, 0.727353, 0.170175,
		0.741454, -0.670243, -0.031953,
		34.123848, 36.780014, 43.980827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077938, 37.583160, 43.523464>,  <33.604832, 37.249184, 44.003197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077938, 37.583160, 43.523464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.184135, 37.197609, 43.532024>,  <34.247852, 36.966278, 43.537159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.184135, 37.197609, 43.532024>,  <34.077938, 37.583160, 43.523464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184135, 37.197609, 43.532024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290414, 0.058788, -0.955093,
		0.919333, 0.259784, 0.295531,
		0.265492, -0.963875, 0.021400,
		34.263783, 36.908447, 43.538445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618683, 37.601063, 43.318901>,  <34.077938, 37.583160, 43.523464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618683, 37.601063, 43.318901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512924, 37.228844, 43.217567>,  <34.449471, 37.005512, 43.156765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512924, 37.228844, 43.217567>,  <34.618683, 37.601063, 43.318901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512924, 37.228844, 43.217567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371027, 0.144322, -0.917339,
		0.890188, -0.336533, 0.307100,
		-0.264393, -0.930547, -0.253337,
		34.433605, 36.949680, 43.141567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170795, 37.318363, 42.889381>,  <34.618683, 37.601063, 43.318901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170795, 37.318363, 42.889381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.856503, 37.084438, 42.808765>,  <34.667927, 36.944084, 42.760395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.856503, 37.084438, 42.808765>,  <35.170795, 37.318363, 42.889381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856503, 37.084438, 42.808765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262474, -0.020178, -0.964728,
		0.560119, -0.810917, 0.169352,
		-0.785731, -0.584813, -0.201542,
		34.620785, 36.908993, 42.748302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950020, 37.270420, 42.621269>,  <35.170795, 37.318363, 42.889381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950020, 37.270420, 42.621269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.212112, 37.559292, 42.532612>,  <36.369370, 37.732613, 42.479416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.212112, 37.559292, 42.532612>,  <35.950020, 37.270420, 42.621269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212112, 37.559292, 42.532612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070114, 0.234003, 0.969705,
		0.752166, -0.650923, 0.102692,
		0.655234, 0.722178, -0.221648,
		36.408684, 37.775944, 42.466118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674507, 37.153606, 42.981842>,  <35.950020, 37.270420, 42.621269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674507, 37.153606, 42.981842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.652332, 37.546150, 42.908245>,  <36.639027, 37.781677, 42.864086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.652332, 37.546150, 42.908245>,  <36.674507, 37.153606, 42.981842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652332, 37.546150, 42.908245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089028, 0.188402, 0.978048,
		0.994485, 0.037842, -0.097814,
		-0.055439, 0.981363, -0.183994,
		36.635700, 37.840561, 42.853046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237270, 37.482750, 43.438709>,  <36.674507, 37.153606, 42.981842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237270, 37.482750, 43.438709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.974258, 37.759613, 43.319664>,  <36.816452, 37.925732, 43.248238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.974258, 37.759613, 43.319664>,  <37.237270, 37.482750, 43.438709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974258, 37.759613, 43.319664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077078, 0.454738, 0.887284,
		0.749474, 0.560477, -0.352355,
		-0.657531, 0.692155, -0.297614,
		36.777000, 37.967258, 43.230381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527775, 38.045456, 43.680046>,  <37.237270, 37.482750, 43.438709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527775, 38.045456, 43.680046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.155697, 38.183353, 43.629635>,  <36.932449, 38.266090, 43.599388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.155697, 38.183353, 43.629635>,  <37.527775, 38.045456, 43.680046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155697, 38.183353, 43.629635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072331, 0.508772, 0.857857,
		0.359860, 0.788862, -0.498195,
		-0.930198, 0.344744, -0.126028,
		36.876637, 38.286777, 43.591827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634159, 38.664715, 43.921814>,  <37.527775, 38.045456, 43.680046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634159, 38.664715, 43.921814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.238708, 38.606304, 43.936214>,  <37.001438, 38.571259, 43.944855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.238708, 38.606304, 43.936214>,  <37.634159, 38.664715, 43.921814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238708, 38.606304, 43.936214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048581, 0.536602, 0.842436,
		-0.142340, 0.831104, -0.537592,
		-0.988625, -0.146029, 0.036004,
		36.942120, 38.562496, 43.947014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411900, 39.263355, 44.192692>,  <37.634159, 38.664715, 43.921814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411900, 39.263355, 44.192692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134396, 38.982101, 44.255047>,  <36.967896, 38.813347, 44.292461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.134396, 38.982101, 44.255047>,  <37.411900, 39.263355, 44.192692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134396, 38.982101, 44.255047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079460, 0.289853, 0.953767,
		-0.715813, 0.649295, -0.256959,
		-0.693756, -0.703137, 0.155887,
		36.926270, 38.771160, 44.301811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897846, 39.537491, 44.486980>,  <37.411900, 39.263355, 44.192692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897846, 39.537491, 44.486980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832062, 39.155987, 44.587616>,  <36.792591, 38.927086, 44.647995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832062, 39.155987, 44.587616>,  <36.897846, 39.537491, 44.486980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832062, 39.155987, 44.587616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115833, 0.271968, 0.955309,
		-0.979559, 0.127967, -0.155204,
		-0.164459, -0.953760, 0.251586,
		36.782722, 38.869858, 44.663094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388809, 39.548996, 44.945160>,  <36.897846, 39.537491, 44.486980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388809, 39.548996, 44.945160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.518692, 39.177364, 45.016006>,  <36.596622, 38.954384, 45.058514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.518692, 39.177364, 45.016006>,  <36.388809, 39.548996, 44.945160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518692, 39.177364, 45.016006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322051, 0.067468, 0.944315,
		-0.889297, -0.363665, -0.277305,
		0.324706, -0.929083, 0.177117,
		36.616104, 38.898640, 45.069141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823017, 39.252884, 45.336578>,  <36.388809, 39.548996, 44.945160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823017, 39.252884, 45.336578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.152298, 39.034508, 45.398914>,  <36.349865, 38.903481, 45.436317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.152298, 39.034508, 45.398914>,  <35.823017, 39.252884, 45.336578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152298, 39.034508, 45.398914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163829, 0.034393, 0.985889,
		-0.543599, -0.837116, -0.061129,
		0.823201, -0.545943, 0.155839,
		36.399258, 38.870724, 45.445667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647266, 38.645702, 45.727245>,  <35.823017, 39.252884, 45.336578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647266, 38.645702, 45.727245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042263, 38.694252, 45.767506>,  <36.279263, 38.723381, 45.791660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.042263, 38.694252, 45.767506>,  <35.647266, 38.645702, 45.727245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042263, 38.694252, 45.767506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067304, -0.252769, 0.965183,
		0.142589, -0.959884, -0.241438,
		0.987491, 0.121374, 0.100646,
		36.338509, 38.730663, 45.797699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860809, 37.986736, 45.977345>,  <35.647266, 38.645702, 45.727245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860809, 37.986736, 45.977345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.119461, 38.279362, 46.063770>,  <36.274651, 38.454937, 46.115627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.119461, 38.279362, 46.063770>,  <35.860809, 37.986736, 45.977345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119461, 38.279362, 46.063770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229156, -0.456467, 0.859724,
		0.727569, -0.506411, -0.462808,
		0.646630, 0.731564, 0.216064,
		36.313450, 38.498833, 46.128590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438225, 37.684845, 46.212734>,  <35.860809, 37.986736, 45.977345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438225, 37.684845, 46.212734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.469585, 38.051216, 46.370178>,  <36.488400, 38.271038, 46.464645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.469585, 38.051216, 46.370178>,  <36.438225, 37.684845, 46.212734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469585, 38.051216, 46.370178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235637, -0.400660, 0.885408,
		0.968674, 0.023333, -0.247238,
		0.078399, 0.915930, 0.393606,
		36.493107, 38.325996, 46.488258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003159, 37.629158, 46.669590>,  <36.438225, 37.684845, 46.212734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003159, 37.629158, 46.669590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.805992, 37.958389, 46.782429>,  <36.687691, 38.155930, 46.850132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.805992, 37.958389, 46.782429>,  <37.003159, 37.629158, 46.669590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805992, 37.958389, 46.782429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202495, -0.206795, 0.957200,
		0.846186, 0.528941, -0.064737,
		-0.492915, 0.823078, 0.282095,
		36.658119, 38.205311, 46.867058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470425, 37.956600, 47.169216>,  <37.003159, 37.629158, 46.669590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470425, 37.956600, 47.169216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.081470, 38.038456, 47.214085>,  <36.848099, 38.087570, 47.241005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.081470, 38.038456, 47.214085>,  <37.470425, 37.956600, 47.169216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081470, 38.038456, 47.214085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025786, -0.383508, 0.923178,
		0.231933, 0.900581, 0.367642,
		-0.972390, 0.204635, 0.112170,
		36.789753, 38.099846, 47.247734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120659, 38.484276, 47.193810>,  <37.470425, 37.956600, 47.169216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120659, 38.484276, 47.193810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.516003, 38.521530, 47.241943>,  <38.753208, 38.543880, 47.270824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.516003, 38.521530, 47.241943>,  <38.120659, 38.484276, 47.193810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516003, 38.521530, 47.241943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100701, 0.192507, -0.976115,
		-0.114071, 0.976866, 0.180887,
		0.988356, 0.093131, 0.120331,
		38.812508, 38.549469, 47.278042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349682, 39.076565, 46.860603>,  <38.120659, 38.484276, 47.193810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349682, 39.076565, 46.860603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665176, 38.830826, 46.869312>,  <38.854473, 38.683384, 46.874538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665176, 38.830826, 46.869312>,  <38.349682, 39.076565, 46.860603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665176, 38.830826, 46.869312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115042, 0.112723, -0.986944,
		0.603868, 0.780946, 0.159584,
		0.788739, -0.614343, 0.021772,
		38.901798, 38.646523, 46.875843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838078, 39.326855, 46.347332>,  <38.349682, 39.076565, 46.860603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838078, 39.326855, 46.347332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.989342, 38.960049, 46.398064>,  <39.080101, 38.739967, 46.428501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.989342, 38.960049, 46.398064>,  <38.838078, 39.326855, 46.347332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989342, 38.960049, 46.398064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268422, -0.022503, -0.963039,
		0.885971, 0.398225, 0.237637,
		0.378159, -0.917012, 0.126829,
		39.102791, 38.684944, 46.436111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576118, 39.346939, 45.987728>,  <38.838078, 39.326855, 46.347332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576118, 39.346939, 45.987728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.435120, 38.973473, 46.013081>,  <39.350521, 38.749393, 46.028294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.435120, 38.973473, 46.013081>,  <39.576118, 39.346939, 45.987728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435120, 38.973473, 46.013081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244368, -0.157219, -0.956852,
		0.903344, -0.321799, 0.283576,
		-0.352498, -0.933664, 0.063386,
		39.329369, 38.693375, 46.032097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057507, 39.015697, 45.655678>,  <39.576118, 39.346939, 45.987728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057507, 39.015697, 45.655678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751415, 38.759750, 45.683956>,  <39.567760, 38.606182, 45.700924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751415, 38.759750, 45.683956>,  <40.057507, 39.015697, 45.655678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751415, 38.759750, 45.683956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290853, -0.441608, -0.848756,
		0.574309, -0.628930, 0.524038,
		-0.765228, -0.639866, 0.070694,
		39.521847, 38.567791, 45.705166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317818, 38.277145, 45.651951>,  <40.057507, 39.015697, 45.655678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317818, 38.277145, 45.651951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.940731, 38.254326, 45.520477>,  <39.714481, 38.240635, 45.441593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.940731, 38.254326, 45.520477>,  <40.317818, 38.277145, 45.651951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.940731, 38.254326, 45.520477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320113, -0.432043, -0.843129,
		-0.093906, -0.900046, 0.425556,
		-0.942714, -0.057051, -0.328688,
		39.657917, 38.237209, 45.421871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298737, 37.592167, 45.218029>,  <40.317818, 38.277145, 45.651951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298737, 37.592167, 45.218029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.960636, 37.793438, 45.146072>,  <39.757774, 37.914200, 45.102898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.960636, 37.793438, 45.146072>,  <40.298737, 37.592167, 45.218029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960636, 37.793438, 45.146072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011151, -0.319961, -0.947365,
		-0.534251, -0.802768, 0.264837,
		-0.845253, 0.503178, -0.179891,
		39.707062, 37.944389, 45.092106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877468, 37.136879, 44.828739>,  <40.298737, 37.592167, 45.218029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877468, 37.136879, 44.828739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.743439, 37.505272, 44.749214>,  <39.663021, 37.726307, 44.701500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.743439, 37.505272, 44.749214>,  <39.877468, 37.136879, 44.828739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743439, 37.505272, 44.749214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103769, -0.245797, -0.963751,
		-0.936462, -0.302293, 0.177928,
		-0.335069, 0.920979, -0.198811,
		39.642918, 37.781567, 44.689571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311737, 37.015999, 44.298553>,  <39.877468, 37.136879, 44.828739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311737, 37.015999, 44.298553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.448559, 37.390938, 44.272064>,  <39.530651, 37.615902, 44.256172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.448559, 37.390938, 44.272064>,  <39.311737, 37.015999, 44.298553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448559, 37.390938, 44.272064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027921, -0.080580, -0.996357,
		-0.939265, 0.338959, -0.053735,
		0.342054, 0.937344, -0.066222,
		39.551174, 37.672142, 44.252197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074402, 37.272797, 43.655338>,  <39.311737, 37.015999, 44.298553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074402, 37.272797, 43.655338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.372379, 37.524616, 43.743629>,  <39.551167, 37.675709, 43.796604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.372379, 37.524616, 43.743629>,  <39.074402, 37.272797, 43.655338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372379, 37.524616, 43.743629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147564, 0.167178, -0.974821,
		-0.650598, 0.758763, 0.031640,
		0.744947, 0.629548, 0.220732,
		39.595863, 37.713482, 43.809849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970425, 37.867577, 43.302723>,  <39.074402, 37.272797, 43.655338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970425, 37.867577, 43.302723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.357601, 37.894592, 43.399494>,  <39.589905, 37.910801, 43.457558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.357601, 37.894592, 43.399494>,  <38.970425, 37.867577, 43.302723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357601, 37.894592, 43.399494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229407, 0.154570, -0.960979,
		-0.102301, 0.985671, 0.134120,
		0.967939, 0.067541, 0.241932,
		39.647984, 37.914856, 43.472073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239590, 38.591003, 43.035286>,  <38.970425, 37.867577, 43.302723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239590, 38.591003, 43.035286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.513962, 38.300346, 43.050671>,  <39.678585, 38.125950, 43.059902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.513962, 38.300346, 43.050671>,  <39.239590, 38.591003, 43.035286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513962, 38.300346, 43.050671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145874, 0.085531, -0.985599,
		0.712892, 0.681667, 0.164667,
		0.685934, -0.726646, 0.038463,
		39.719742, 38.082352, 43.062210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816933, 38.763588, 42.597256>,  <39.239590, 38.591003, 43.035286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816933, 38.763588, 42.597256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.872501, 38.371937, 42.656593>,  <39.905842, 38.136944, 42.692196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.872501, 38.371937, 42.656593>,  <39.816933, 38.763588, 42.597256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872501, 38.371937, 42.656593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344116, -0.092734, -0.934336,
		0.928593, 0.180846, 0.324051,
		0.138921, -0.979130, 0.148345,
		39.914177, 38.078197, 42.701096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473499, 38.697495, 42.270718>,  <39.816933, 38.763588, 42.597256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473499, 38.697495, 42.270718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.284904, 38.344826, 42.278198>,  <40.171749, 38.133224, 42.282688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.284904, 38.344826, 42.278198>,  <40.473499, 38.697495, 42.270718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284904, 38.344826, 42.278198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214247, -0.135095, -0.967392,
		0.855453, -0.452104, 0.252592,
		-0.471485, -0.881675, 0.018705,
		40.143459, 38.080322, 42.283810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.585155, 29.115660, 28.691042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.240311, 29.311251, 28.637878>,  <26.033403, 29.428606, 28.605980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.240311, 29.311251, 28.637878>,  <26.585155, 29.115660, 28.691042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.240311, 29.311251, 28.637878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155546, 0.505005, 0.848985,
		0.482256, 0.711245, -0.511429,
		-0.862111, 0.488979, -0.132910,
		25.981678, 29.457945, 28.598005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.731226, 29.785801, 28.633638>,  <26.585155, 29.115660, 28.691042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.731226, 29.785801, 28.633638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.357479, 29.760557, 28.773912>,  <26.133232, 29.745411, 28.858076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.357479, 29.760557, 28.773912>,  <26.731226, 29.785801, 28.633638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357479, 29.760557, 28.773912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246216, 0.597073, 0.763467,
		-0.257564, 0.799701, -0.542346,
		-0.934365, -0.063108, 0.350684,
		26.077169, 29.741625, 28.879118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475718, 30.478174, 28.646126>,  <26.731226, 29.785801, 28.633638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475718, 30.478174, 28.646126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.232410, 30.266314, 28.882593>,  <26.086426, 30.139198, 29.024473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.232410, 30.266314, 28.882593>,  <26.475718, 30.478174, 28.646126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232410, 30.266314, 28.882593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116351, 0.677250, 0.726494,
		-0.785156, 0.510688, -0.350326,
		-0.608270, -0.529651, 0.591166,
		26.049929, 30.107418, 29.059942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.911423, 30.930162, 28.856615>,  <26.475718, 30.478174, 28.646126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.911423, 30.930162, 28.856615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.942991, 30.633488, 29.123051>,  <25.961933, 30.455482, 29.282911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.942991, 30.633488, 29.123051>,  <25.911423, 30.930162, 28.856615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942991, 30.633488, 29.123051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108714, 0.657784, 0.745320,
		-0.990935, -0.131236, -0.028718,
		0.078923, -0.741686, 0.666088,
		25.966667, 30.410982, 29.322878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.388060, 31.109285, 29.415762>,  <25.911423, 30.930162, 28.856615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.388060, 31.109285, 29.415762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.627947, 30.824097, 29.561096>,  <25.771879, 30.652985, 29.648296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.627947, 30.824097, 29.561096>,  <25.388060, 31.109285, 29.415762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627947, 30.824097, 29.561096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079534, 0.504911, 0.859500,
		-0.796250, -0.486559, 0.359508,
		0.599717, -0.712969, 0.363337,
		25.807861, 30.610207, 29.670097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044708, 30.760370, 30.068705>,  <25.388060, 31.109285, 29.415762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.044708, 30.760370, 30.068705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.442192, 30.720373, 30.088894>,  <25.680681, 30.696375, 30.101007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.442192, 30.720373, 30.088894>,  <25.044708, 30.760370, 30.068705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.442192, 30.720373, 30.088894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005835, 0.496224, 0.868175,
		-0.111856, -0.862417, 0.493685,
		0.993707, -0.099991, 0.050473,
		25.740305, 30.690376, 30.104036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174574, 30.582125, 30.815052>,  <25.044708, 30.760370, 30.068705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174574, 30.582125, 30.815052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.519211, 30.707626, 30.655443>,  <25.725992, 30.782927, 30.559677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.519211, 30.707626, 30.655443>,  <25.174574, 30.582125, 30.815052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519211, 30.707626, 30.655443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106521, 0.656831, 0.746476,
		0.496298, -0.685662, 0.532500,
		0.861592, 0.313752, -0.399021,
		25.777689, 30.801752, 30.535736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679253, 30.592133, 31.315012>,  <25.174574, 30.582125, 30.815052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679253, 30.592133, 31.315012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.827950, 30.856817, 31.054569>,  <25.917168, 31.015629, 30.898304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.827950, 30.856817, 31.054569>,  <25.679253, 30.592133, 31.315012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827950, 30.856817, 31.054569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088796, 0.672810, 0.734467,
		0.924079, -0.330849, 0.191355,
		0.371743, 0.661714, -0.651108,
		25.939472, 31.055332, 30.859238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140850, 30.923737, 31.676418>,  <25.679253, 30.592133, 31.315012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140850, 30.923737, 31.676418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.106432, 31.183218, 31.373953>,  <26.085781, 31.338907, 31.192474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.106432, 31.183218, 31.373953>,  <26.140850, 30.923737, 31.676418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106432, 31.183218, 31.373953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319626, 0.736833, 0.595749,
		0.943629, -0.190429, -0.270742,
		-0.086044, 0.648702, -0.756163,
		26.080618, 31.377829, 31.147104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777727, 31.091379, 31.491346>,  <26.140850, 30.923737, 31.676418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777727, 31.091379, 31.491346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.511482, 31.369858, 31.383814>,  <26.351736, 31.536945, 31.319294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.511482, 31.369858, 31.383814>,  <26.777727, 31.091379, 31.491346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.511482, 31.369858, 31.383814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371750, 0.621648, 0.689460,
		0.647118, 0.358975, -0.672589,
		-0.665612, 0.696197, -0.268831,
		26.311798, 31.578716, 31.303165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183804, 31.697140, 31.357594>,  <26.777727, 31.091379, 31.491346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183804, 31.697140, 31.357594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.815149, 31.841673, 31.414200>,  <26.593956, 31.928392, 31.448164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.815149, 31.841673, 31.414200>,  <27.183804, 31.697140, 31.357594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815149, 31.841673, 31.414200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378786, 0.758429, 0.530383,
		0.084315, 0.542424, -0.835863,
		-0.921636, 0.361333, 0.141516,
		26.538658, 31.950073, 31.456654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302338, 32.386009, 31.232405>,  <27.183804, 31.697140, 31.357594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302338, 32.386009, 31.232405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.957895, 32.383232, 31.435755>,  <26.751230, 32.381565, 31.557766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.957895, 32.383232, 31.435755>,  <27.302338, 32.386009, 31.232405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.957895, 32.383232, 31.435755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336901, 0.741084, 0.580769,
		-0.380779, 0.671377, -0.635815,
		-0.861107, -0.006938, 0.508377,
		26.699564, 32.381149, 31.588268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.069691, 33.064972, 31.253166>,  <27.302338, 32.386009, 31.232405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.069691, 33.064972, 31.253166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836424, 32.894466, 31.529779>,  <26.696465, 32.792164, 31.695747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836424, 32.894466, 31.529779>,  <27.069691, 33.064972, 31.253166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836424, 32.894466, 31.529779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130675, 0.790962, 0.597749,
		-0.801775, 0.438953, -0.405559,
		-0.583165, -0.426263, 0.691533,
		26.661474, 32.766586, 31.737240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697540, 33.640018, 31.509142>,  <27.069691, 33.064972, 31.253166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697540, 33.640018, 31.509142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.678108, 33.368519, 31.802248>,  <26.666449, 33.205620, 31.978111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.678108, 33.368519, 31.802248>,  <26.697540, 33.640018, 31.509142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678108, 33.368519, 31.802248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202436, 0.711713, 0.672670,
		-0.978090, 0.181015, 0.102828,
		-0.048579, -0.678747, 0.732763,
		26.663534, 33.164894, 32.022076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256580, 33.916309, 31.961880>,  <26.697540, 33.640018, 31.509142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256580, 33.916309, 31.961880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.474358, 33.658497, 32.176601>,  <26.605024, 33.503807, 32.305435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.474358, 33.658497, 32.176601>,  <26.256580, 33.916309, 31.961880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474358, 33.658497, 32.176601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010966, 0.645380, 0.763783,
		-0.838726, -0.409950, 0.358440,
		0.544443, -0.644535, 0.536802,
		26.637690, 33.465137, 32.337643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939951, 34.006855, 32.635254>,  <26.256580, 33.916309, 31.961880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939951, 34.006855, 32.635254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.260103, 33.782097, 32.718838>,  <26.452194, 33.647243, 32.768986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.260103, 33.782097, 32.718838>,  <25.939951, 34.006855, 32.635254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260103, 33.782097, 32.718838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064721, 0.427513, 0.901690,
		-0.595986, -0.708172, 0.378540,
		0.800382, -0.561894, 0.208958,
		26.500217, 33.613529, 32.781525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969959, 33.958260, 33.356903>,  <25.939951, 34.006855, 32.635254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969959, 33.958260, 33.356903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.351788, 33.893799, 33.256641>,  <26.580885, 33.855122, 33.196484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.351788, 33.893799, 33.256641>,  <25.969959, 33.958260, 33.356903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351788, 33.893799, 33.256641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290905, 0.686235, 0.666675,
		0.064569, -0.709304, 0.701939,
		0.954571, -0.161151, -0.250650,
		26.638159, 33.845455, 33.181446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340414, 34.103580, 34.007771>,  <25.969959, 33.958260, 33.356903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340414, 34.103580, 34.007771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.619171, 34.132664, 33.722378>,  <26.786425, 34.150112, 33.551144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.619171, 34.132664, 33.722378>,  <26.340414, 34.103580, 34.007771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619171, 34.132664, 33.722378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406302, 0.779771, 0.476315,
		0.590983, -0.621829, 0.513875,
		0.696891, 0.072706, -0.713482,
		26.828238, 34.154476, 33.508331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940891, 34.192844, 34.405010>,  <26.340414, 34.103580, 34.007771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940891, 34.192844, 34.405010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016485, 34.316788, 34.032284>,  <27.061842, 34.391151, 33.808647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.016485, 34.316788, 34.032284>,  <26.940891, 34.192844, 34.405010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016485, 34.316788, 34.032284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371598, 0.855780, 0.359938,
		0.908955, -0.414282, 0.046588,
		0.188985, 0.309855, -0.931812,
		27.073181, 34.409744, 33.752739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658037, 34.472656, 34.401310>,  <26.940891, 34.192844, 34.405010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658037, 34.472656, 34.401310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478909, 34.635799, 34.083038>,  <27.371431, 34.733685, 33.892075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.478909, 34.635799, 34.083038>,  <27.658037, 34.472656, 34.401310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478909, 34.635799, 34.083038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286600, 0.908425, 0.304342,
		0.846946, -0.091752, -0.523702,
		-0.447820, 0.407854, -0.795684,
		27.344563, 34.758156, 33.844334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.128201, 35.004826, 34.141384>,  <27.658037, 34.472656, 34.401310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.128201, 35.004826, 34.141384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761528, 35.100212, 34.013119>,  <27.541525, 35.157444, 33.936157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.761528, 35.100212, 34.013119>,  <28.128201, 35.004826, 34.141384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761528, 35.100212, 34.013119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059883, 0.875349, 0.479769,
		0.395104, 0.420593, -0.816697,
		-0.916682, 0.238465, -0.320668,
		27.486523, 35.171753, 33.916920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.718914, 35.369770, 34.456108>,  <28.128201, 35.004826, 34.141384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.718914, 35.369770, 34.456108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064077, 35.390816, 34.657154>,  <29.271175, 35.403442, 34.777782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.064077, 35.390816, 34.657154>,  <28.718914, 35.369770, 34.456108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064077, 35.390816, 34.657154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358208, -0.765233, -0.534888,
		0.356477, 0.641600, -0.679172,
		0.862909, 0.052610, 0.502614,
		29.322950, 35.406597, 34.807938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265501, 35.353516, 33.957970>,  <28.718914, 35.369770, 34.456108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265501, 35.353516, 33.957970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.429890, 35.243229, 34.305553>,  <29.528522, 35.177059, 34.514103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.429890, 35.243229, 34.305553>,  <29.265501, 35.353516, 33.957970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429890, 35.243229, 34.305553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447255, -0.769601, -0.455717,
		0.794397, 0.575931, -0.192968,
		0.410969, -0.275714, 0.868957,
		29.553181, 35.160515, 34.566242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016319, 35.317192, 33.840801>,  <29.265501, 35.353516, 33.957970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016319, 35.317192, 33.840801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.946535, 35.090641, 34.162991>,  <29.904665, 34.954712, 34.356304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.946535, 35.090641, 34.162991>,  <30.016319, 35.317192, 33.840801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946535, 35.090641, 34.162991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419842, -0.782718, -0.459440,
		0.890672, 0.258018, 0.374339,
		-0.174459, -0.566373, 0.805472,
		29.894197, 34.920731, 34.404633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642231, 34.932274, 33.931259>,  <30.016319, 35.317192, 33.840801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642231, 34.932274, 33.931259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358271, 34.745522, 34.142185>,  <30.187895, 34.633469, 34.268742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358271, 34.745522, 34.142185>,  <30.642231, 34.932274, 33.931259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358271, 34.745522, 34.142185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254807, -0.868245, -0.425704,
		0.656592, -0.167845, 0.735333,
		-0.709902, -0.466882, 0.527315,
		30.145300, 34.605457, 34.300381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934258, 34.321880, 34.064487>,  <30.642231, 34.932274, 33.931259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934258, 34.321880, 34.064487> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.551523, 34.223927, 34.127094>,  <30.321882, 34.165154, 34.164658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.551523, 34.223927, 34.127094>,  <30.934258, 34.321880, 34.064487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551523, 34.223927, 34.127094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147620, -0.873414, -0.464064,
		0.250346, -0.420928, 0.871864,
		-0.956836, -0.244881, 0.156519,
		30.264473, 34.150463, 34.174049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026493, 33.706783, 34.241577>,  <30.934258, 34.321880, 34.064487>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026493, 33.706783, 34.241577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.633308, 33.729443, 34.171627>,  <30.397398, 33.743038, 34.129658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.633308, 33.729443, 34.171627>,  <31.026493, 33.706783, 34.241577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633308, 33.729443, 34.171627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017104, -0.919016, -0.393850,
		-0.183020, -0.390130, 0.902387,
		-0.982960, 0.056648, -0.174871,
		30.338421, 33.746437, 34.119167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838562, 33.117058, 34.463249>,  <31.026493, 33.706783, 34.241577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838562, 33.117058, 34.463249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.567270, 33.252647, 34.202450>,  <30.404495, 33.334000, 34.045971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.567270, 33.252647, 34.202450>,  <30.838562, 33.117058, 34.463249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567270, 33.252647, 34.202450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110887, -0.829888, -0.546800,
		-0.726436, -0.443154, 0.525267,
		-0.678230, 0.338970, -0.652000,
		30.363802, 33.354340, 34.006851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431982, 32.522465, 34.255501>,  <30.838562, 33.117058, 34.463249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431982, 32.522465, 34.255501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.321302, 32.785564, 33.975273>,  <30.254894, 32.943424, 33.807137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.321302, 32.785564, 33.975273>,  <30.431982, 32.522465, 34.255501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.321302, 32.785564, 33.975273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057822, -0.739111, -0.671097,
		-0.959215, -0.145184, 0.242545,
		-0.276700, 0.657751, -0.700572,
		30.238293, 32.982891, 33.765102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902319, 32.248188, 33.957600>,  <30.431982, 32.522465, 34.255501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902319, 32.248188, 33.957600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.060051, 32.509567, 33.699142>,  <30.154690, 32.666397, 33.544067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.060051, 32.509567, 33.699142>,  <29.902319, 32.248188, 33.957600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060051, 32.509567, 33.699142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096508, -0.669787, -0.736255,
		-0.913887, 0.352687, -0.201055,
		0.394332, 0.653451, -0.646146,
		30.178350, 32.705601, 33.505299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444231, 32.180679, 33.379459>,  <29.902319, 32.248188, 33.957600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444231, 32.180679, 33.379459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795261, 32.319359, 33.246998>,  <30.005878, 32.402565, 33.167519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.795261, 32.319359, 33.246998>,  <29.444231, 32.180679, 33.379459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795261, 32.319359, 33.246998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038509, -0.637511, -0.769478,
		-0.477890, 0.688027, -0.546113,
		0.877575, 0.346696, -0.331156,
		30.058535, 32.423367, 33.147652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347685, 32.053165, 32.715015>,  <29.444231, 32.180679, 33.379459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347685, 32.053165, 32.715015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.736336, 32.143078, 32.744450>,  <29.969526, 32.197025, 32.762112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.736336, 32.143078, 32.744450>,  <29.347685, 32.053165, 32.715015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736336, 32.143078, 32.744450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184396, -0.525085, -0.830833,
		-0.148114, 0.820829, -0.551635,
		0.971628, 0.224777, 0.073585,
		30.027824, 32.210510, 32.766525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470201, 32.282188, 32.024506>,  <29.347685, 32.053165, 32.715015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470201, 32.282188, 32.024506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832890, 32.193905, 32.168251>,  <30.050503, 32.140934, 32.254498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832890, 32.193905, 32.168251>,  <29.470201, 32.282188, 32.024506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832890, 32.193905, 32.168251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120686, -0.680690, -0.722562,
		0.404096, 0.698532, -0.590558,
		0.906720, -0.220713, 0.359367,
		30.104906, 32.127689, 32.276062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069452, 32.248959, 31.476101>,  <29.470201, 32.282188, 32.024506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069452, 32.248959, 31.476101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.227522, 32.017044, 31.761106>,  <30.322365, 31.877893, 31.932110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.227522, 32.017044, 31.761106>,  <30.069452, 32.248959, 31.476101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227522, 32.017044, 31.761106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094331, -0.745936, -0.659303,
		0.913749, 0.327753, -0.240083,
		0.395175, -0.579791, 0.712516,
		30.346075, 31.843107, 31.974861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541565, 31.974754, 31.156879>,  <30.069452, 32.248959, 31.476101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541565, 31.974754, 31.156879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.474031, 31.734777, 31.469688>,  <30.433512, 31.590792, 31.657373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.474031, 31.734777, 31.469688>,  <30.541565, 31.974754, 31.156879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474031, 31.734777, 31.469688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009531, -0.794371, -0.607359,
		0.985598, -0.095090, 0.139836,
		-0.168835, -0.599945, 0.782024,
		30.423382, 31.554794, 31.704296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854483, 31.345535, 30.964560>,  <30.541565, 31.974754, 31.156879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854483, 31.345535, 30.964560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.616854, 31.218489, 31.260180>,  <30.474277, 31.142260, 31.437551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.616854, 31.218489, 31.260180>,  <30.854483, 31.345535, 30.964560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616854, 31.218489, 31.260180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116832, -0.874938, -0.469930,
		0.795883, -0.365517, 0.482667,
		-0.594071, -0.317618, 0.739052,
		30.438633, 31.123203, 31.481895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894836, 30.661190, 31.015141>,  <30.854483, 31.345535, 30.964560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894836, 30.661190, 31.015141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.556402, 30.689775, 31.226435>,  <30.353342, 30.706926, 31.353212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.556402, 30.689775, 31.226435>,  <30.894836, 30.661190, 31.015141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556402, 30.689775, 31.226435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199069, -0.961636, -0.188755,
		0.494482, -0.264858, 0.827851,
		-0.846084, 0.071463, 0.528237,
		30.302576, 30.711214, 31.384905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864521, 30.023643, 31.432039>,  <30.894836, 30.661190, 31.015141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864521, 30.023643, 31.432039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.491993, 30.163885, 31.392611>,  <30.268476, 30.248030, 31.368954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.491993, 30.163885, 31.392611>,  <30.864521, 30.023643, 31.432039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491993, 30.163885, 31.392611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334437, -0.930459, -0.149658,
		-0.144189, -0.106413, 0.983812,
		-0.931322, 0.350602, -0.098574,
		30.212597, 30.269066, 31.363039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436974, 29.565952, 31.810606>,  <30.864521, 30.023643, 31.432039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436974, 29.565952, 31.810606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.188768, 29.762413, 31.566071>,  <30.039845, 29.880289, 31.419350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.188768, 29.762413, 31.566071>,  <30.436974, 29.565952, 31.810606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188768, 29.762413, 31.566071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455081, -0.860408, -0.229346,
		-0.638643, 0.135896, 0.757408,
		-0.620512, 0.491153, -0.611338,
		30.002615, 29.909760, 31.382669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.664843, 29.311720, 31.934895>,  <30.436974, 29.565952, 31.810606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.664843, 29.311720, 31.934895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666298, 29.486412, 31.575060>,  <29.667171, 29.591227, 31.359159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666298, 29.486412, 31.575060>,  <29.664843, 29.311720, 31.934895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666298, 29.486412, 31.575060> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398795, -0.824327, -0.401805,
		-0.917033, 0.360212, 0.171167,
		0.003637, 0.436729, -0.899586,
		29.667389, 29.617432, 31.305183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034548, 29.108799, 31.556952>,  <29.664843, 29.311720, 31.934895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034548, 29.108799, 31.556952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280279, 29.216496, 31.260275>,  <29.427717, 29.281115, 31.082268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280279, 29.216496, 31.260275>,  <29.034548, 29.108799, 31.556952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280279, 29.216496, 31.260275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438728, -0.664728, -0.604693,
		-0.655833, 0.696882, -0.290238,
		0.614329, 0.269243, -0.741693,
		29.464579, 29.297268, 31.037767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562841, 29.094429, 30.959461>,  <29.034548, 29.108799, 31.556952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562841, 29.094429, 30.959461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.924351, 29.072287, 30.789696>,  <29.141256, 29.059000, 30.687836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.924351, 29.072287, 30.789696>,  <28.562841, 29.094429, 30.959461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924351, 29.072287, 30.789696> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371691, -0.593176, -0.714135,
		-0.212219, 0.803168, -0.556673,
		0.903775, -0.055358, -0.424413,
		29.195484, 29.055679, 30.662373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.345070, 36.892361, 47.332203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.147346, 36.548855, 47.386135>,  <41.028713, 36.342751, 47.418495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.147346, 36.548855, 47.386135>,  <41.345070, 36.892361, 47.332203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.147346, 36.548855, 47.386135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264494, 0.296331, 0.917731,
		-0.828070, 0.417983, -0.373618,
		-0.494310, -0.858766, 0.134829,
		40.999054, 36.291225, 47.426582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725441, 37.067951, 47.676201>,  <41.345070, 36.892361, 47.332203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725441, 37.067951, 47.676201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.758183, 36.673023, 47.730606>,  <40.777828, 36.436066, 47.763248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.758183, 36.673023, 47.730606>,  <40.725441, 37.067951, 47.676201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758183, 36.673023, 47.730606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309653, 0.104525, 0.945087,
		-0.947320, -0.119472, -0.297172,
		0.081850, -0.987320, 0.136014,
		40.782738, 36.376827, 47.771412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297314, 36.934135, 48.241737>,  <40.725441, 37.067951, 47.676201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297314, 36.934135, 48.241737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.492126, 36.584816, 48.236992>,  <40.609016, 36.375225, 48.234146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.492126, 36.584816, 48.236992>,  <40.297314, 36.934135, 48.241737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492126, 36.584816, 48.236992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320911, -0.191567, 0.927533,
		-0.812288, -0.447936, -0.373553,
		0.487036, -0.873302, -0.011860,
		40.638237, 36.322826, 48.233433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827168, 36.345364, 48.487438>,  <40.297314, 36.934135, 48.241737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827168, 36.345364, 48.487438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.201965, 36.210659, 48.524582>,  <40.426846, 36.129837, 48.546867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.201965, 36.210659, 48.524582>,  <39.827168, 36.345364, 48.487438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201965, 36.210659, 48.524582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204943, -0.314676, 0.926811,
		-0.282898, -0.887451, -0.363868,
		0.936999, -0.336765, 0.092855,
		40.483067, 36.109631, 48.552437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771893, 35.729271, 48.850960>,  <39.827168, 36.345364, 48.487438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771893, 35.729271, 48.850960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.146973, 35.854481, 48.911263>,  <40.372021, 35.929607, 48.947445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.146973, 35.854481, 48.911263>,  <39.771893, 35.729271, 48.850960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146973, 35.854481, 48.911263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097903, -0.178262, 0.979100,
		0.333356, -0.932865, -0.136511,
		0.937704, 0.313025, 0.150755,
		40.428284, 35.948387, 48.956490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040417, 35.217548, 49.323158>,  <39.771893, 35.729271, 48.850960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040417, 35.217548, 49.323158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.315956, 35.503643, 49.370342>,  <40.481281, 35.675301, 49.398651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.315956, 35.503643, 49.370342>,  <40.040417, 35.217548, 49.323158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315956, 35.503643, 49.370342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009540, -0.153762, 0.988062,
		0.724839, -0.681754, -0.099096,
		0.688852, 0.715240, 0.117957,
		40.522614, 35.718216, 49.405727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477829, 34.930901, 49.802940>,  <40.040417, 35.217548, 49.323158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477829, 34.930901, 49.802940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.563290, 35.320770, 49.829384>,  <40.614567, 35.554691, 49.845249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.563290, 35.320770, 49.829384>,  <40.477829, 34.930901, 49.802940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563290, 35.320770, 49.829384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275437, -0.125023, 0.953154,
		0.937276, -0.185436, -0.295172,
		0.213652, 0.974670, 0.066105,
		40.627384, 35.613171, 49.849216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128326, 34.982563, 50.165375>,  <40.477829, 34.930901, 49.802940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128326, 34.982563, 50.165375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.936996, 35.331272, 50.207741>,  <40.822197, 35.540497, 50.233158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.936996, 35.331272, 50.207741>,  <41.128326, 34.982563, 50.165375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.936996, 35.331272, 50.207741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161811, -0.031046, 0.986333,
		0.863148, 0.488924, -0.126212,
		-0.478323, 0.871774, 0.105910,
		40.793499, 35.592804, 50.239513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447704, 35.337135, 50.658142>,  <41.128326, 34.982563, 50.165375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447704, 35.337135, 50.658142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.102463, 35.535637, 50.695637>,  <40.895317, 35.654739, 50.718132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.102463, 35.535637, 50.695637>,  <41.447704, 35.337135, 50.658142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102463, 35.535637, 50.695637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212273, 0.188068, 0.958942,
		0.458250, 0.847563, -0.267663,
		-0.863103, 0.496254, 0.093733,
		40.843533, 35.684513, 50.723755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607613, 35.984692, 51.065113>,  <41.447704, 35.337135, 50.658142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607613, 35.984692, 51.065113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.212959, 35.922981, 51.086113>,  <40.976166, 35.885956, 51.098713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.212959, 35.922981, 51.086113>,  <41.607613, 35.984692, 51.065113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212959, 35.922981, 51.086113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062981, -0.063844, 0.995971,
		-0.150302, 0.985963, 0.072707,
		-0.986632, -0.154276, 0.052501,
		40.916969, 35.876698, 51.101864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.480728, 36.440453, 51.624802>,  <41.607613, 35.984692, 51.065113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.480728, 36.440453, 51.624802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.170315, 36.194939, 51.566772>,  <40.984066, 36.047630, 51.531956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.170315, 36.194939, 51.566772>,  <41.480728, 36.440453, 51.624802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170315, 36.194939, 51.566772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004213, -0.224963, 0.974358,
		-0.630680, 0.756744, 0.171993,
		-0.776032, -0.613783, -0.145068,
		40.937504, 36.010803, 51.523251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975937, 36.725071, 52.109154>,  <41.480728, 36.440453, 51.624802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975937, 36.725071, 52.109154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.877083, 36.343159, 52.043034>,  <40.817768, 36.114014, 52.003361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.877083, 36.343159, 52.043034>,  <40.975937, 36.725071, 52.109154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877083, 36.343159, 52.043034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063335, -0.154313, 0.985990,
		-0.966908, 0.254147, -0.022333,
		-0.247140, -0.954776, -0.165303,
		40.802940, 36.056725, 51.993443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027588, 37.553444, 52.370869>,  <40.975937, 36.725071, 52.109154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027588, 37.553444, 52.370869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.380219, 37.738499, 52.408367>,  <41.591797, 37.849533, 52.430866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.380219, 37.738499, 52.408367>,  <41.027588, 37.553444, 52.370869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380219, 37.738499, 52.408367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412838, 0.851950, -0.322098,
		-0.228878, 0.245254, 0.942054,
		0.881578, 0.462636, 0.093743,
		41.644691, 37.877289, 52.436489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590622, 37.458744, 53.018990>,  <41.027588, 37.553444, 52.370869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590622, 37.458744, 53.018990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.195839, 37.499630, 52.969234>,  <39.958969, 37.524162, 52.939381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.195839, 37.499630, 52.969234>,  <40.590622, 37.458744, 53.018990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195839, 37.499630, 52.969234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147705, 0.267480, -0.952175,
		-0.064056, -0.958126, -0.279088,
		-0.986955, 0.102215, -0.124386,
		39.899754, 37.530293, 52.931919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346809, 37.128719, 52.325092>,  <40.590622, 37.458744, 53.018990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346809, 37.128719, 52.325092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.084366, 37.408482, 52.438477>,  <39.926899, 37.576340, 52.506508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.084366, 37.408482, 52.438477>,  <40.346809, 37.128719, 52.325092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084366, 37.408482, 52.438477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095883, 0.295307, -0.950579,
		-0.748548, -0.650865, -0.126694,
		-0.656112, 0.699406, 0.283458,
		39.887531, 37.618305, 52.523514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858833, 37.002907, 51.873486>,  <40.346809, 37.128719, 52.325092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858833, 37.002907, 51.873486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.814518, 37.377777, 52.005802>,  <39.787930, 37.602699, 52.085190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.814518, 37.377777, 52.005802>,  <39.858833, 37.002907, 51.873486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814518, 37.377777, 52.005802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017378, 0.334615, -0.942195,
		-0.993692, -0.098637, -0.053358,
		-0.110790, 0.937179, 0.330790,
		39.781281, 37.658932, 52.105038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284889, 37.351040, 51.562080>,  <39.858833, 37.002907, 51.873486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284889, 37.351040, 51.562080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541191, 37.638298, 51.670670>,  <39.694973, 37.810654, 51.735825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.541191, 37.638298, 51.670670>,  <39.284889, 37.351040, 51.562080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541191, 37.638298, 51.670670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024260, 0.372364, -0.927770,
		-0.767362, 0.587887, 0.256016,
		0.640755, 0.718146, 0.271476,
		39.733418, 37.853741, 51.752113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050167, 37.832813, 51.108147>,  <39.284889, 37.351040, 51.562080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050167, 37.832813, 51.108147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.382317, 37.990925, 51.265236>,  <39.581608, 38.085793, 51.359489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.382317, 37.990925, 51.265236>,  <39.050167, 37.832813, 51.108147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382317, 37.990925, 51.265236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066847, 0.629048, -0.774487,
		-0.553179, 0.669368, 0.495923,
		0.830376, 0.395279, 0.392721,
		39.631428, 38.109509, 51.383053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849270, 38.515049, 51.134480>,  <39.050167, 37.832813, 51.108147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849270, 38.515049, 51.134480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.248146, 38.485828, 51.127785>,  <39.487473, 38.468296, 51.123768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.248146, 38.485828, 51.127785>,  <38.849270, 38.515049, 51.134480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248146, 38.485828, 51.127785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000319, 0.219183, -0.975684,
		0.074941, 0.972945, 0.218543,
		0.997188, -0.073049, -0.016736,
		39.547302, 38.463913, 51.122765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050289, 39.095768, 50.798237>,  <38.849270, 38.515049, 51.134480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050289, 39.095768, 50.798237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.347645, 38.832474, 50.750751>,  <39.526058, 38.674496, 50.722260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.347645, 38.832474, 50.750751>,  <39.050289, 39.095768, 50.798237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347645, 38.832474, 50.750751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005865, 0.171067, -0.985242,
		0.668832, 0.733115, 0.123309,
		0.743390, -0.658238, -0.118715,
		39.570663, 38.635002, 50.715137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515980, 39.476368, 50.313984>,  <39.050289, 39.095768, 50.798237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515980, 39.476368, 50.313984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.568024, 39.079872, 50.323090>,  <39.599251, 38.841976, 50.328552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.568024, 39.079872, 50.323090>,  <39.515980, 39.476368, 50.313984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568024, 39.079872, 50.323090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002987, -0.023355, -0.999723,
		0.991495, 0.130007, -0.005999,
		0.130111, -0.991238, 0.022768,
		39.607056, 38.782501, 50.329922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100060, 39.338360, 49.887211>,  <39.515980, 39.476368, 50.313984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100060, 39.338360, 49.887211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.890873, 38.998184, 49.910049>,  <39.765362, 38.794079, 49.923752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.890873, 38.998184, 49.910049>,  <40.100060, 39.338360, 49.887211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.890873, 38.998184, 49.910049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115188, 0.004139, -0.993335,
		0.844536, -0.526055, -0.100125,
		-0.522964, -0.850440, 0.057099,
		39.733982, 38.743053, 49.927177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200527, 38.954250, 49.278492>,  <40.100060, 39.338360, 49.887211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200527, 38.954250, 49.278492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.899712, 38.727005, 49.412174>,  <39.719223, 38.590656, 49.492382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.899712, 38.727005, 49.412174>,  <40.200527, 38.954250, 49.278492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899712, 38.727005, 49.412174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233599, -0.244401, -0.941116,
		0.616339, -0.785822, 0.051088,
		-0.752036, -0.568112, 0.334201,
		39.674099, 38.556572, 49.512436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224682, 38.347485, 48.944557>,  <40.200527, 38.954250, 49.278492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224682, 38.347485, 48.944557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.847214, 38.373341, 49.074364>,  <39.620735, 38.388855, 49.152248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.847214, 38.373341, 49.074364>,  <40.224682, 38.347485, 48.944557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847214, 38.373341, 49.074364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325638, -0.007313, -0.945466,
		-0.058747, -0.997882, 0.027952,
		-0.943668, 0.064645, 0.324519,
		39.564114, 38.392731, 49.171719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840405, 37.835049, 48.564079>,  <40.224682, 38.347485, 48.944557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840405, 37.835049, 48.564079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.552715, 38.084942, 48.685684>,  <39.380100, 38.234879, 48.758648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.552715, 38.084942, 48.685684>,  <39.840405, 37.835049, 48.564079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552715, 38.084942, 48.685684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388689, 0.000880, -0.921368,
		-0.575877, -0.780838, 0.242194,
		-0.719227, 0.624733, 0.304010,
		39.336948, 38.272362, 48.776886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234856, 37.427490, 48.429848>,  <39.840405, 37.835049, 48.564079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234856, 37.427490, 48.429848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.194393, 37.825363, 48.437660>,  <39.170116, 38.064087, 48.442348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.194393, 37.825363, 48.437660>,  <39.234856, 37.427490, 48.429848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194393, 37.825363, 48.437660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231979, -0.004493, -0.972710,
		-0.967446, -0.102931, 0.231199,
		-0.101161, 0.994678, 0.019531,
		39.164043, 38.123768, 48.443520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695492, 37.549423, 48.003334>,  <39.234856, 37.427490, 48.429848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695492, 37.549423, 48.003334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.837387, 37.919033, 48.060383>,  <38.922523, 38.140797, 48.094612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.837387, 37.919033, 48.060383>,  <38.695492, 37.549423, 48.003334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837387, 37.919033, 48.060383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245781, 0.239339, -0.939313,
		-0.902081, 0.298159, 0.312010,
		0.354741, 0.924022, 0.142622,
		38.943810, 38.196239, 48.103168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210289, 38.081337, 47.838100>,  <38.695492, 37.549423, 48.003334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210289, 38.081337, 47.838100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.569386, 38.251602, 47.792717>,  <38.784843, 38.353760, 47.765488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.569386, 38.251602, 47.792717>,  <38.210289, 38.081337, 47.838100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569386, 38.251602, 47.792717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185618, 0.131932, -0.973725,
		-0.399511, 0.895212, 0.197452,
		0.897740, 0.425664, -0.113459,
		38.838707, 38.379303, 47.758678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441963, 38.050728, 47.873016>,  <38.210289, 38.081337, 47.838100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441963, 38.050728, 47.873016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.057919, 38.035141, 47.762260>,  <36.827492, 38.025787, 47.695808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.057919, 38.035141, 47.762260>,  <37.441963, 38.050728, 47.873016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057919, 38.035141, 47.762260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256634, -0.270358, 0.927926,
		-0.111018, 0.961971, 0.249573,
		-0.960112, -0.038967, -0.276889,
		36.769886, 38.023449, 47.679195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046616, 38.535942, 48.204334>,  <37.441963, 38.050728, 47.873016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046616, 38.535942, 48.204334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.784725, 38.244789, 48.122826>,  <36.627590, 38.070099, 48.073921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.784725, 38.244789, 48.122826>,  <37.046616, 38.535942, 48.204334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784725, 38.244789, 48.122826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282710, -0.014203, 0.959100,
		-0.701003, 0.685558, -0.196479,
		-0.654729, -0.727879, -0.203771,
		36.588306, 38.026424, 48.061695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474430, 38.726505, 48.537197>,  <37.046616, 38.535942, 48.204334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474430, 38.726505, 48.537197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417435, 38.335632, 48.474182>,  <36.383236, 38.101109, 48.436375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417435, 38.335632, 48.474182>,  <36.474430, 38.726505, 48.537197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417435, 38.335632, 48.474182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309942, -0.107104, 0.944703,
		-0.940018, 0.183435, -0.287608,
		-0.142488, -0.977179, -0.157534,
		36.374687, 38.042477, 48.426922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976242, 38.537357, 48.905491>,  <36.474430, 38.726505, 48.537197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976242, 38.537357, 48.905491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132942, 38.173161, 48.852512>,  <36.226963, 37.954643, 48.820724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132942, 38.173161, 48.852512>,  <35.976242, 38.537357, 48.905491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132942, 38.173161, 48.852512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302896, -0.263553, 0.915857,
		-0.868786, -0.318666, -0.379029,
		0.391747, -0.910490, -0.132448,
		36.250465, 37.900013, 48.812778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481438, 38.067703, 49.114609>,  <35.976242, 38.537357, 48.905491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481438, 38.067703, 49.114609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.816353, 37.850178, 49.137280>,  <36.017303, 37.719662, 49.150883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.816353, 37.850178, 49.137280>,  <35.481438, 38.067703, 49.114609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816353, 37.850178, 49.137280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238970, -0.270733, 0.932522,
		-0.491778, -0.794333, -0.356638,
		0.837286, -0.543819, 0.056681,
		36.067539, 37.687031, 49.154285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461586, 37.458149, 49.575264>,  <35.481438, 38.067703, 49.114609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461586, 37.458149, 49.575264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861420, 37.455364, 49.564117>,  <36.101322, 37.453693, 49.557430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.861420, 37.455364, 49.564117>,  <35.461586, 37.458149, 49.575264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861420, 37.455364, 49.564117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024755, -0.282902, 0.958829,
		-0.014561, -0.959123, -0.282613,
		0.999588, -0.006966, -0.027862,
		36.161297, 37.453274, 49.555759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616871, 36.877197, 49.989899>,  <35.461586, 37.458149, 49.575264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616871, 36.877197, 49.989899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951569, 37.096218, 49.987354>,  <36.152386, 37.227631, 49.985828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.951569, 37.096218, 49.987354>,  <35.616871, 36.877197, 49.989899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951569, 37.096218, 49.987354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183251, -0.269046, 0.945534,
		0.516022, -0.792336, -0.325463,
		0.836744, 0.547557, -0.006363,
		36.202591, 37.260487, 49.985447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340424, 36.170677, 49.995461>,  <35.616871, 36.877197, 49.989899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340424, 36.170677, 49.995461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051598, 35.925419, 50.123627>,  <34.878300, 35.778263, 50.200527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.051598, 35.925419, 50.123627>,  <35.340424, 36.170677, 49.995461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051598, 35.925419, 50.123627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428191, 0.032309, -0.903111,
		0.543390, -0.789306, -0.285874,
		-0.722066, -0.613150, 0.320417,
		34.834976, 35.741474, 50.219753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302288, 35.763798, 49.406902>,  <35.340424, 36.170677, 49.995461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302288, 35.763798, 49.406902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.967136, 35.711781, 49.618958>,  <34.766045, 35.680573, 49.746189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.967136, 35.711781, 49.618958>,  <35.302288, 35.763798, 49.406902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967136, 35.711781, 49.618958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542867, 0.097028, -0.834195,
		0.057038, -0.986750, -0.151891,
		-0.837879, -0.130037, 0.530140,
		34.715771, 35.672768, 49.778000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944347, 35.317139, 49.066986>,  <35.302288, 35.763798, 49.406902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944347, 35.317139, 49.066986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667561, 35.537560, 49.253544>,  <34.501488, 35.669811, 49.365479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667561, 35.537560, 49.253544>,  <34.944347, 35.317139, 49.066986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667561, 35.537560, 49.253544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553483, 0.009849, -0.832802,
		-0.463513, -0.834411, 0.298184,
		-0.691962, 0.551054, 0.466398,
		34.459972, 35.702877, 49.393463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373508, 34.990952, 48.939697>,  <34.944347, 35.317139, 49.066986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373508, 34.990952, 48.939697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267467, 35.365047, 49.033554>,  <34.203842, 35.589504, 49.089867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.267467, 35.365047, 49.033554>,  <34.373508, 34.990952, 48.939697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267467, 35.365047, 49.033554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447166, 0.096347, -0.889247,
		-0.854263, -0.340662, 0.392664,
		-0.265100, 0.935236, 0.234638,
		34.187939, 35.645618, 49.103947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591961, 35.074162, 48.848408>,  <34.373508, 34.990952, 48.939697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591961, 35.074162, 48.848408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785744, 35.423740, 48.832870>,  <33.902016, 35.633488, 48.823547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.785744, 35.423740, 48.832870>,  <33.591961, 35.074162, 48.848408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785744, 35.423740, 48.832870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397546, 0.180382, -0.899677,
		-0.779267, 0.451300, 0.434824,
		0.484459, 0.873951, -0.038847,
		33.931080, 35.685925, 48.821217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155815, 35.476868, 48.372986>,  <33.591961, 35.074162, 48.848408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155815, 35.476868, 48.372986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505989, 35.669384, 48.390717>,  <33.716095, 35.784893, 48.401356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.505989, 35.669384, 48.390717>,  <33.155815, 35.476868, 48.372986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505989, 35.669384, 48.390717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182937, 0.414838, -0.891315,
		-0.447372, 0.772183, 0.451212,
		0.875438, 0.481293, 0.044326,
		33.768620, 35.813770, 48.404015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953026, 36.139141, 48.188084>,  <33.155815, 35.476868, 48.372986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953026, 36.139141, 48.188084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.346546, 36.090790, 48.135139>,  <33.582661, 36.061779, 48.103371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.346546, 36.090790, 48.135139>,  <32.953026, 36.139141, 48.188084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346546, 36.090790, 48.135139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055271, 0.497891, -0.865476,
		0.170518, 0.858774, 0.483146,
		0.983803, -0.120875, -0.132365,
		33.641685, 36.054527, 48.095428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.512939, 33.252186, 52.189419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.740391, 33.566643, 52.092556>,  <39.876862, 33.755318, 52.034439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.740391, 33.566643, 52.092556>,  <39.512939, 33.252186, 52.189419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740391, 33.566643, 52.092556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052186, -0.259318, -0.964381,
		-0.820938, 0.561010, -0.106429,
		0.568627, 0.786143, -0.242162,
		39.910980, 33.802486, 52.019909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205227, 33.613785, 51.632519>,  <39.512939, 33.252186, 52.189419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205227, 33.613785, 51.632519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.588943, 33.726624, 51.627026>,  <39.819172, 33.794327, 51.623730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.588943, 33.726624, 51.627026>,  <39.205227, 33.613785, 51.632519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588943, 33.726624, 51.627026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018711, 0.014961, -0.999713,
		-0.281808, 0.959270, 0.019630,
		0.959288, 0.282094, -0.013732,
		39.876732, 33.811253, 51.622906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319187, 34.270737, 51.206364>,  <39.205227, 33.613785, 51.632519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319187, 34.270737, 51.206364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.611252, 33.997490, 51.212143>,  <39.786491, 33.833542, 51.215611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.611252, 33.997490, 51.212143>,  <39.319187, 34.270737, 51.206364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611252, 33.997490, 51.212143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113833, 0.100764, -0.988377,
		0.673724, 0.723321, 0.151336,
		0.730163, -0.683121, 0.014450,
		39.830299, 33.792553, 51.216476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697193, 34.460648, 50.752377>,  <39.319187, 34.270737, 51.206364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697193, 34.460648, 50.752377> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.797707, 34.077019, 50.804581>,  <39.858013, 33.846840, 50.835903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.797707, 34.077019, 50.804581>,  <39.697193, 34.460648, 50.752377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797707, 34.077019, 50.804581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085290, -0.112369, -0.990000,
		0.964149, 0.259899, 0.053563,
		0.251281, -0.959075, 0.130507,
		39.873093, 33.789295, 50.843735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207733, 34.429054, 50.393459>,  <39.697193, 34.460648, 50.752377>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207733, 34.429054, 50.393459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.094543, 34.047367, 50.432224>,  <40.026630, 33.818356, 50.455482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.094543, 34.047367, 50.432224>,  <40.207733, 34.429054, 50.393459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094543, 34.047367, 50.432224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152810, -0.144608, -0.977618,
		0.946877, -0.261830, 0.186734,
		-0.282973, -0.954219, 0.096915,
		40.009651, 33.761101, 50.461300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.750465, 34.079838, 50.295826>,  <40.207733, 34.429054, 50.393459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.750465, 34.079838, 50.295826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.441746, 33.856388, 50.174328>,  <40.256516, 33.722317, 50.101429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.441746, 33.856388, 50.174328>,  <40.750465, 34.079838, 50.295826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441746, 33.856388, 50.174328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420031, -0.089268, -0.903108,
		0.477388, -0.824600, 0.303539,
		-0.771800, -0.558629, -0.303742,
		40.210205, 33.688801, 50.083206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048267, 33.535015, 49.851810>,  <40.750465, 34.079838, 50.295826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048267, 33.535015, 49.851810> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.658813, 33.478531, 49.780148>,  <40.425140, 33.444641, 49.737152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.658813, 33.478531, 49.780148>,  <41.048267, 33.535015, 49.851810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658813, 33.478531, 49.780148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216213, -0.320901, -0.922103,
		0.072719, -0.936527, 0.342971,
		-0.973635, -0.141209, -0.179154,
		40.366722, 33.436169, 49.726402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978230, 32.870796, 49.548271>,  <41.048267, 33.535015, 49.851810>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.978230, 32.870796, 49.548271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.671036, 33.097107, 49.428204>,  <40.486721, 33.232895, 49.356163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.671036, 33.097107, 49.428204>,  <40.978230, 32.870796, 49.548271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671036, 33.097107, 49.428204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144435, -0.303605, -0.941787,
		-0.623976, -0.766628, 0.151444,
		-0.767980, 0.565779, -0.300170,
		40.440643, 33.266842, 49.338154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739826, 32.333473, 49.050076>,  <40.978230, 32.870796, 49.548271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739826, 32.333473, 49.050076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.515446, 32.657261, 48.980675>,  <40.380817, 32.851532, 48.939034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.515446, 32.657261, 48.980675>,  <40.739826, 32.333473, 49.050076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515446, 32.657261, 48.980675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103296, -0.276378, -0.955482,
		-0.821381, -0.518054, 0.238648,
		-0.560948, 0.809466, -0.173499,
		40.347160, 32.900101, 48.928627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.296364, 32.075184, 48.537125>,  <40.739826, 32.333473, 49.050076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.296364, 32.075184, 48.537125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.318832, 32.473652, 48.510307>,  <40.332314, 32.712730, 48.494217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.318832, 32.473652, 48.510307>,  <40.296364, 32.075184, 48.537125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318832, 32.473652, 48.510307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280674, -0.048688, -0.958568,
		-0.958158, 0.072663, 0.276863,
		0.056173, 0.996168, -0.067046,
		40.335686, 32.772503, 48.490192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610081, 32.252514, 48.245613>,  <40.296364, 32.075184, 48.537125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610081, 32.252514, 48.245613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.880032, 32.541218, 48.184151>,  <40.042000, 32.714439, 48.147274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.880032, 32.541218, 48.184151>,  <39.610081, 32.252514, 48.245613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.880032, 32.541218, 48.184151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278421, 0.056209, -0.958813,
		-0.683394, 0.689859, 0.238887,
		0.674873, 0.721758, -0.153658,
		40.082493, 32.757744, 48.138054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219467, 32.765415, 47.864178>,  <39.610081, 32.252514, 48.245613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219467, 32.765415, 47.864178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.613117, 32.792603, 47.798595>,  <39.849308, 32.808914, 47.759247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.613117, 32.792603, 47.798595>,  <39.219467, 32.765415, 47.864178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613117, 32.792603, 47.798595> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157609, -0.090100, -0.983383,
		-0.081610, 0.993611, -0.077957,
		0.984123, 0.067967, -0.163955,
		39.908356, 32.812992, 47.749409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718555, 33.324162, 47.961708>,  <39.219467, 32.765415, 47.864178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718555, 33.324162, 47.961708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.356468, 33.487686, 47.915306>,  <38.139217, 33.585800, 47.887466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.356468, 33.487686, 47.915306>,  <38.718555, 33.324162, 47.961708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356468, 33.487686, 47.915306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250650, -0.293205, 0.922608,
		0.343162, 0.864235, 0.367883,
		-0.905215, 0.408814, -0.116004,
		38.084904, 33.610329, 47.880505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633743, 33.753742, 48.570389>,  <38.718555, 33.324162, 47.961708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633743, 33.753742, 48.570389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.270229, 33.693405, 48.414772>,  <38.052120, 33.657204, 48.321400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.270229, 33.693405, 48.414772>,  <38.633743, 33.753742, 48.570389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270229, 33.693405, 48.414772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372290, -0.127957, 0.919254,
		-0.188442, 0.980242, 0.060129,
		-0.908785, -0.150841, -0.389046,
		37.997593, 33.648151, 48.298058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117748, 34.249619, 48.898441>,  <38.633743, 33.753742, 48.570389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117748, 34.249619, 48.898441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.936539, 33.922600, 48.756237>,  <37.827812, 33.726391, 48.670914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.936539, 33.922600, 48.756237>,  <38.117748, 34.249619, 48.898441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936539, 33.922600, 48.756237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479884, -0.112451, 0.870096,
		-0.751320, 0.564779, -0.341384,
		-0.453023, -0.817545, -0.355515,
		37.800632, 33.677338, 48.649582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523804, 34.377892, 49.155155>,  <38.117748, 34.249619, 48.898441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523804, 34.377892, 49.155155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.504944, 33.983189, 49.093071>,  <37.493629, 33.746368, 49.055820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.504944, 33.983189, 49.093071>,  <37.523804, 34.377892, 49.155155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504944, 33.983189, 49.093071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649402, -0.087782, 0.755362,
		-0.758982, 0.136409, -0.636662,
		-0.047151, -0.986756, -0.155209,
		37.490799, 33.687160, 49.046509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794491, 34.084766, 49.080940>,  <37.523804, 34.377892, 49.155155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794491, 34.084766, 49.080940> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.021053, 33.782909, 49.213425>,  <37.156990, 33.601795, 49.292915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.021053, 33.782909, 49.213425>,  <36.794491, 34.084766, 49.080940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021053, 33.782909, 49.213425> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517008, -0.012399, 0.855891,
		-0.641782, -0.656023, -0.397177,
		0.566409, -0.754638, 0.331212,
		37.190975, 33.556519, 49.312790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311111, 33.873280, 49.588127>,  <36.794491, 34.084766, 49.080940>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311111, 33.873280, 49.588127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.631973, 33.645363, 49.659554>,  <36.824490, 33.508614, 49.702408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.631973, 33.645363, 49.659554>,  <36.311111, 33.873280, 49.588127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631973, 33.645363, 49.659554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296669, -0.120775, 0.947313,
		-0.518205, -0.812866, -0.265920,
		0.802155, -0.569792, 0.178565,
		36.872620, 33.474426, 49.713123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133766, 33.132149, 49.754185>,  <36.311111, 33.873280, 49.588127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133766, 33.132149, 49.754185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.481773, 33.196953, 49.940441>,  <36.690578, 33.235836, 50.052193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.481773, 33.196953, 49.940441>,  <36.133766, 33.132149, 49.754185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481773, 33.196953, 49.940441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398095, -0.326298, 0.857351,
		0.290834, -0.931280, -0.219391,
		0.870020, 0.162008, 0.465636,
		36.742779, 33.245556, 50.080132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990257, 32.713032, 50.329411>,  <36.133766, 33.132149, 49.754185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990257, 32.713032, 50.329411> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.306751, 32.931694, 50.439037>,  <36.496647, 33.062893, 50.504814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.306751, 32.931694, 50.439037>,  <35.990257, 32.713032, 50.329411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306751, 32.931694, 50.439037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211040, -0.176540, 0.961403,
		0.573941, -0.818535, -0.024318,
		0.791236, 0.546657, 0.274067,
		36.544121, 33.095692, 50.521259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309246, 32.351402, 50.915043>,  <35.990257, 32.713032, 50.329411>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309246, 32.351402, 50.915043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.472736, 32.713444, 50.961922>,  <36.570831, 32.930668, 50.990051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.472736, 32.713444, 50.961922>,  <36.309246, 32.351402, 50.915043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472736, 32.713444, 50.961922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245979, -0.014417, 0.969168,
		0.878883, -0.424955, 0.216743,
		0.408728, 0.905100, 0.117201,
		36.595356, 32.984974, 50.997082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631802, 32.385208, 51.577679>,  <36.309246, 32.351402, 50.915043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631802, 32.385208, 51.577679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.548859, 32.765316, 51.484737>,  <36.499092, 32.993382, 51.428974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.548859, 32.765316, 51.484737>,  <36.631802, 32.385208, 51.577679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548859, 32.765316, 51.484737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190909, 0.193638, 0.962319,
		0.959457, 0.243897, 0.141265,
		-0.207353, 0.950273, -0.232350,
		36.486652, 33.050400, 51.415031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837082, 32.704372, 52.157967>,  <36.631802, 32.385208, 51.577679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837082, 32.704372, 52.157967> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.621857, 32.995640, 51.988144>,  <36.492722, 33.170399, 51.886250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.621857, 32.995640, 51.988144>,  <36.837082, 32.704372, 52.157967>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621857, 32.995640, 51.988144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099417, 0.445349, 0.889820,
		0.837018, 0.520992, -0.167236,
		-0.538068, 0.728170, -0.424561,
		36.460438, 33.214092, 51.860775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164467, 33.317429, 52.431824>,  <36.837082, 32.704372, 52.157967>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164467, 33.317429, 52.431824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.800476, 33.433617, 52.313457>,  <36.582081, 33.503330, 52.242439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.800476, 33.433617, 52.313457>,  <37.164467, 33.317429, 52.431824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800476, 33.433617, 52.313457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144248, 0.447323, 0.882663,
		0.388755, 0.845891, -0.365155,
		-0.909979, 0.290467, -0.295917,
		36.527481, 33.520756, 52.224682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072632, 34.038013, 52.668579>,  <37.164467, 33.317429, 52.431824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072632, 34.038013, 52.668579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.702290, 33.896858, 52.614529>,  <36.480083, 33.812164, 52.582096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.702290, 33.896858, 52.614529>,  <37.072632, 34.038013, 52.668579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702290, 33.896858, 52.614529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312775, 0.515002, 0.798088,
		-0.212048, 0.781179, -0.587193,
		-0.925855, -0.352893, -0.135128,
		36.424534, 33.790989, 52.573990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583298, 34.622353, 52.834171>,  <37.072632, 34.038013, 52.668579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583298, 34.622353, 52.834171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.376163, 34.281384, 52.863071>,  <36.251884, 34.076801, 52.880413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.376163, 34.281384, 52.863071>,  <36.583298, 34.622353, 52.834171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376163, 34.281384, 52.863071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443066, 0.339484, 0.829725,
		-0.731807, 0.397646, -0.553476,
		-0.517833, -0.852425, 0.072254,
		36.220814, 34.025658, 52.884747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199203, 34.284977, 52.339382>,  <36.583298, 34.622353, 52.834171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199203, 34.284977, 52.339382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.141186, 34.618732, 52.552082>,  <36.106373, 34.818985, 52.679703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.141186, 34.618732, 52.552082>,  <36.199203, 34.284977, 52.339382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141186, 34.618732, 52.552082> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566436, 0.370617, -0.736066,
		-0.811241, -0.407964, 0.418872,
		-0.145048, 0.834391, 0.531745,
		36.097672, 34.869049, 52.711605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524189, 34.291325, 52.433098>,  <36.199203, 34.284977, 52.339382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524189, 34.291325, 52.433098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.690758, 34.654732, 52.419239>,  <35.790699, 34.872776, 52.410923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.690758, 34.654732, 52.419239>,  <35.524189, 34.291325, 52.433098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690758, 34.654732, 52.419239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596733, 0.244364, -0.764327,
		-0.685934, 0.338954, 0.643897,
		0.416417, 0.908513, -0.034648,
		35.815681, 34.927284, 52.408844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000790, 34.801697, 52.539455>,  <35.524189, 34.291325, 52.433098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000790, 34.801697, 52.539455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.298149, 34.969055, 52.330723>,  <35.476566, 35.069469, 52.205482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.298149, 34.969055, 52.330723>,  <35.000790, 34.801697, 52.539455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298149, 34.969055, 52.330723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616202, 0.125030, -0.777600,
		-0.260097, 0.899620, 0.350762,
		0.743400, 0.418392, -0.521828,
		35.521168, 35.094574, 52.174175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716164, 35.470280, 52.351826>,  <35.000790, 34.801697, 52.539455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716164, 35.470280, 52.351826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.023792, 35.439728, 52.097992>,  <35.208370, 35.421394, 51.945690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.023792, 35.439728, 52.097992>,  <34.716164, 35.470280, 52.351826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023792, 35.439728, 52.097992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553457, 0.417045, -0.720943,
		0.319720, 0.905671, 0.278460,
		0.769068, -0.076384, -0.634587,
		35.254513, 35.416813, 51.907616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658234, 36.063309, 51.866989>,  <34.716164, 35.470280, 52.351826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658234, 36.063309, 51.866989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.913029, 35.823170, 51.673569>,  <35.065907, 35.679085, 51.557514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.913029, 35.823170, 51.673569>,  <34.658234, 36.063309, 51.866989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913029, 35.823170, 51.673569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414607, 0.262014, -0.871464,
		0.649881, 0.755599, -0.082009,
		0.636990, -0.600349, -0.483554,
		35.104126, 35.643066, 51.528503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793663, 36.547905, 51.215294>,  <34.658234, 36.063309, 51.866989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793663, 36.547905, 51.215294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.900551, 36.173893, 51.122066>,  <34.964684, 35.949486, 51.066128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.900551, 36.173893, 51.122066>,  <34.793663, 36.547905, 51.215294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900551, 36.173893, 51.122066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304457, 0.147560, -0.941027,
		0.914276, 0.322418, -0.245245,
		0.267216, -0.935026, -0.233073,
		34.980717, 35.893387, 51.052143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122322, 36.544613, 50.555466>,  <34.793663, 36.547905, 51.215294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122322, 36.544613, 50.555466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.990086, 36.168312, 50.585640>,  <34.910744, 35.942532, 50.603745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.990086, 36.168312, 50.585640>,  <35.122322, 36.544613, 50.555466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990086, 36.168312, 50.585640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532659, 0.120009, -0.837778,
		0.779090, -0.317145, -0.540775,
		-0.330595, -0.940753, 0.075432,
		34.890907, 35.886086, 50.608269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975674, 36.608757, 50.692104>,  <35.122322, 36.544613, 50.555466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975674, 36.608757, 50.692104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.179962, 36.926163, 50.559742>,  <36.302536, 37.116604, 50.480324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.179962, 36.926163, 50.559742>,  <35.975674, 36.608757, 50.692104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179962, 36.926163, 50.559742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244728, 0.234790, 0.940735,
		0.824178, -0.561438, -0.074282,
		0.510724, 0.793512, -0.330908,
		36.333179, 37.164215, 50.460468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673893, 36.571281, 51.051250>,  <35.975674, 36.608757, 50.692104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673893, 36.571281, 51.051250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.608723, 36.954651, 50.957539>,  <36.569622, 37.184673, 50.901310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.608723, 36.954651, 50.957539>,  <36.673893, 36.571281, 51.051250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608723, 36.954651, 50.957539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327928, 0.276555, 0.903316,
		0.930548, 0.070344, -0.359350,
		-0.162923, 0.958420, -0.234280,
		36.559845, 37.242176, 50.887253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191040, 36.986423, 51.248573>,  <36.673893, 36.571281, 51.051250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191040, 36.986423, 51.248573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.941750, 37.295689, 51.201561>,  <36.792175, 37.481247, 51.173355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.941750, 37.295689, 51.201561>,  <37.191040, 36.986423, 51.248573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941750, 37.295689, 51.201561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147815, 0.264035, 0.953119,
		0.767947, 0.576634, -0.278838,
		-0.623224, 0.773161, -0.117530,
		36.754784, 37.527637, 51.166302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477425, 37.636940, 51.353638>,  <37.191040, 36.986423, 51.248573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477425, 37.636940, 51.353638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.095196, 37.673096, 51.465855>,  <36.865856, 37.694790, 51.533184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.095196, 37.673096, 51.465855>,  <37.477425, 37.636940, 51.353638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095196, 37.673096, 51.465855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292692, 0.403300, 0.866995,
		-0.034774, 0.910592, -0.411840,
		-0.955574, 0.090393, 0.280547,
		36.808525, 37.700214, 51.550018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508263, 38.232681, 51.828861>,  <37.477425, 37.636940, 51.353638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508263, 38.232681, 51.828861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.143082, 38.089481, 51.907204>,  <36.923973, 38.003563, 51.954208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.143082, 38.089481, 51.907204>,  <37.508263, 38.232681, 51.828861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143082, 38.089481, 51.907204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170732, 0.100823, 0.980146,
		-0.370637, 0.928263, -0.030925,
		-0.912951, -0.357998, 0.195853,
		36.869198, 37.982082, 51.965961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256817, 38.687656, 52.344410>,  <37.508263, 38.232681, 51.828861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256817, 38.687656, 52.344410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.072712, 38.332935, 52.361099>,  <36.962250, 38.120102, 52.371113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.072712, 38.332935, 52.361099>,  <37.256817, 38.687656, 52.344410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072712, 38.332935, 52.361099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259734, -0.089567, 0.961517,
		-0.848938, 0.453389, 0.271557,
		-0.460264, -0.886801, 0.041723,
		36.934631, 38.066895, 52.373615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783810, 38.738373, 52.961678>,  <37.256817, 38.687656, 52.344410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783810, 38.738373, 52.961678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.849728, 38.350445, 52.889797>,  <36.889278, 38.117687, 52.846668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.849728, 38.350445, 52.889797>,  <36.783810, 38.738373, 52.961678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849728, 38.350445, 52.889797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147368, -0.204353, 0.967741,
		-0.975257, -0.132996, -0.176597,
		0.164793, -0.969821, -0.179697,
		36.899166, 38.059498, 52.835888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206558, 38.310081, 53.331860>,  <36.783810, 38.738373, 52.961678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206558, 38.310081, 53.331860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.509602, 38.068020, 53.234032>,  <36.691429, 37.922783, 53.175335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.509602, 38.068020, 53.234032>,  <36.206558, 38.310081, 53.331860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509602, 38.068020, 53.234032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152021, -0.527992, 0.835532,
		-0.634757, -0.595828, -0.492009,
		0.757610, -0.605156, -0.244568,
		36.736885, 37.886475, 53.160660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989216, 37.639542, 53.701027>,  <36.206558, 38.310081, 53.331860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989216, 37.639542, 53.701027> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.178177, 37.437141, 53.412361>,  <36.291553, 37.315701, 53.239162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.178177, 37.437141, 53.412361>,  <35.989216, 37.639542, 53.701027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178177, 37.437141, 53.412361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880777, 0.301407, 0.365219,
		0.032713, -0.808155, 0.588061,
		0.472399, -0.506004, -0.721664,
		36.319897, 37.285339, 53.195862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.541092, 37.073837, 38.030331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924492, 36.990078, 37.952942>,  <36.154533, 36.939823, 37.906509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924492, 36.990078, 37.952942>,  <35.541092, 37.073837, 38.030331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924492, 36.990078, 37.952942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220765, 0.115744, 0.968435,
		-0.180393, -0.970956, 0.157168,
		0.958499, -0.209396, -0.193474,
		36.212040, 36.927258, 37.894901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708069, 36.493416, 38.448277>,  <35.541092, 37.073837, 38.030331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708069, 36.493416, 38.448277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040386, 36.696018, 38.355988>,  <36.239777, 36.817581, 38.300613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040386, 36.696018, 38.355988>,  <35.708069, 36.493416, 38.448277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040386, 36.696018, 38.355988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256003, 0.020340, 0.966462,
		0.494215, -0.861994, -0.112769,
		0.830791, 0.506510, -0.230725,
		36.289623, 36.847973, 38.286770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110664, 36.271675, 38.932713>,  <35.708069, 36.493416, 38.448277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110664, 36.271675, 38.932713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326454, 36.582188, 38.802261>,  <36.455929, 36.768494, 38.723991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326454, 36.582188, 38.802261>,  <36.110664, 36.271675, 38.932713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326454, 36.582188, 38.802261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398983, 0.105410, 0.910880,
		0.741473, -0.621516, -0.252856,
		0.539472, 0.776278, -0.326132,
		36.488297, 36.815071, 38.704422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727894, 36.220821, 39.246841>,  <36.110664, 36.271675, 38.932713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727894, 36.220821, 39.246841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718407, 36.609573, 39.153133>,  <36.712715, 36.842823, 39.096909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718407, 36.609573, 39.153133>,  <36.727894, 36.220821, 39.246841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718407, 36.609573, 39.153133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409760, 0.223203, 0.884464,
		0.911885, -0.075017, -0.403532,
		-0.023720, 0.971881, -0.234275,
		36.711292, 36.901138, 39.082851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438698, 36.464676, 39.473976>,  <36.727894, 36.220821, 39.246841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438698, 36.464676, 39.473976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205818, 36.788219, 39.441013>,  <37.066090, 36.982346, 39.421234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205818, 36.788219, 39.441013>,  <37.438698, 36.464676, 39.473976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205818, 36.788219, 39.441013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271971, 0.289263, 0.917801,
		0.766210, 0.511930, -0.388395,
		-0.582198, 0.808860, -0.082406,
		37.031158, 37.030876, 39.416290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876102, 37.018631, 39.752808>,  <37.438698, 36.464676, 39.473976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876102, 37.018631, 39.752808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490181, 37.123684, 39.747417>,  <37.258629, 37.186714, 39.744183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490181, 37.123684, 39.747417>,  <37.876102, 37.018631, 39.752808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490181, 37.123684, 39.747417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088621, 0.372933, 0.923616,
		0.247597, 0.889913, -0.383081,
		-0.964802, 0.262634, -0.013472,
		37.200741, 37.202473, 39.743378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846394, 37.718502, 39.976639>,  <37.876102, 37.018631, 39.752808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846394, 37.718502, 39.976639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491493, 37.550583, 40.053112>,  <37.278553, 37.449829, 40.098995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491493, 37.550583, 40.053112>,  <37.846394, 37.718502, 39.976639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491493, 37.550583, 40.053112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051110, 0.501367, 0.863724,
		-0.458443, 0.756570, -0.466295,
		-0.887253, -0.419801, 0.191180,
		37.225319, 37.424644, 40.110466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446041, 38.281837, 40.197571>,  <37.846394, 37.718502, 39.976639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446041, 38.281837, 40.197571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281792, 37.952515, 40.354317>,  <37.183243, 37.754921, 40.448364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281792, 37.952515, 40.354317>,  <37.446041, 38.281837, 40.197571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281792, 37.952515, 40.354317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115054, 0.473115, 0.873456,
		-0.904518, 0.313573, -0.288995,
		-0.410620, -0.823307, 0.391863,
		37.158607, 37.705524, 40.471874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889725, 38.495171, 40.551544>,  <37.446041, 38.281837, 40.197571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889725, 38.495171, 40.551544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912128, 38.124374, 40.699890>,  <36.925571, 37.901897, 40.788898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.912128, 38.124374, 40.699890>,  <36.889725, 38.495171, 40.551544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912128, 38.124374, 40.699890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367012, 0.326329, 0.871098,
		-0.928528, -0.184905, -0.321940,
		0.056012, -0.926995, 0.370868,
		36.928932, 37.846275, 40.811150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271198, 38.351700, 40.938686>,  <36.889725, 38.495171, 40.551544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271198, 38.351700, 40.938686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496796, 38.057400, 41.088661>,  <36.632153, 37.880817, 41.178646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496796, 38.057400, 41.088661>,  <36.271198, 38.351700, 40.938686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496796, 38.057400, 41.088661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363889, 0.186142, 0.912653,
		-0.741279, -0.651166, -0.162750,
		0.563995, -0.735754, 0.374935,
		36.665993, 37.836674, 41.201141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859901, 37.933830, 41.421497>,  <36.271198, 38.351700, 40.938686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859901, 37.933830, 41.421497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233959, 37.861256, 41.543213>,  <36.458393, 37.817711, 41.616241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233959, 37.861256, 41.543213>,  <35.859901, 37.933830, 41.421497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233959, 37.861256, 41.543213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313343, -0.022783, 0.949367,
		-0.165319, -0.983138, -0.078158,
		0.935139, -0.181438, 0.304293,
		36.514500, 37.806824, 41.634502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768673, 37.464836, 41.955853>,  <35.859901, 37.933830, 41.421497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768673, 37.464836, 41.955853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130066, 37.627678, 42.009499>,  <36.346901, 37.725384, 42.041687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130066, 37.627678, 42.009499>,  <35.768673, 37.464836, 41.955853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130066, 37.627678, 42.009499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200168, 0.124048, 0.971877,
		0.379022, -0.904917, 0.193565,
		0.903480, 0.407108, 0.134119,
		36.401112, 37.749809, 42.049736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420872, 36.861153, 42.190987>,  <35.768673, 37.464836, 41.955853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420872, 36.861153, 42.190987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023861, 36.868927, 42.239162>,  <34.785652, 36.873592, 42.268066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023861, 36.868927, 42.239162>,  <35.420872, 36.861153, 42.190987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023861, 36.868927, 42.239162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121025, -0.032476, -0.992118,
		-0.015368, -0.999284, 0.034585,
		-0.992530, 0.019433, 0.120439,
		34.726101, 36.874760, 42.275295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245625, 36.511536, 41.547318>,  <35.420872, 36.861153, 42.190987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245625, 36.511536, 41.547318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902088, 36.668434, 41.679096>,  <34.695965, 36.762573, 41.758163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.902088, 36.668434, 41.679096>,  <35.245625, 36.511536, 41.547318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.902088, 36.668434, 41.679096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354236, 0.009770, -0.935105,
		-0.370011, -0.919808, 0.130557,
		-0.858841, 0.392247, 0.329444,
		34.644436, 36.786110, 41.777931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614811, 36.087986, 41.314449>,  <35.245625, 36.511536, 41.547318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614811, 36.087986, 41.314449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448593, 36.444790, 41.385593>,  <34.348862, 36.658875, 41.428280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448593, 36.444790, 41.385593>,  <34.614811, 36.087986, 41.314449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448593, 36.444790, 41.385593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323340, 0.037906, -0.945524,
		-0.850161, -0.450419, 0.272671,
		-0.415546, 0.892012, 0.177865,
		34.323929, 36.712395, 41.438953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060863, 36.055126, 41.018250>,  <34.614811, 36.087986, 41.314449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060863, 36.055126, 41.018250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099800, 36.452423, 41.043560>,  <34.123161, 36.690800, 41.058746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099800, 36.452423, 41.043560>,  <34.060863, 36.055126, 41.018250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099800, 36.452423, 41.043560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470571, 0.101950, -0.876453,
		-0.876977, 0.055537, 0.477312,
		0.097337, 0.993238, 0.063274,
		34.129002, 36.750393, 41.062542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461720, 36.223423, 40.843193>,  <34.060863, 36.055126, 41.018250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461720, 36.223423, 40.843193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690487, 36.541382, 40.762150>,  <33.827747, 36.732159, 40.713524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690487, 36.541382, 40.762150>,  <33.461720, 36.223423, 40.843193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690487, 36.541382, 40.762150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414930, 0.067265, -0.907363,
		-0.707631, 0.603006, 0.368296,
		0.571919, 0.794896, -0.202607,
		33.862064, 36.779850, 40.701366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073849, 36.679657, 40.478840>,  <33.461720, 36.223423, 40.843193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073849, 36.679657, 40.478840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441826, 36.798603, 40.376637>,  <33.662613, 36.869972, 40.315315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441826, 36.798603, 40.376637>,  <33.073849, 36.679657, 40.478840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441826, 36.798603, 40.376637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244135, -0.075436, -0.966803,
		-0.306768, 0.951779, 0.003200,
		0.919941, 0.297365, -0.255504,
		33.717808, 36.887814, 40.299984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992729, 37.249805, 39.928917>,  <33.073849, 36.679657, 40.478840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992729, 37.249805, 39.928917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373646, 37.135654, 39.885639>,  <33.602196, 37.067162, 39.859673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373646, 37.135654, 39.885639>,  <32.992729, 37.249805, 39.928917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373646, 37.135654, 39.885639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097621, 0.051061, -0.993913,
		0.289168, 0.957053, 0.020765,
		0.952288, -0.285381, -0.108194,
		33.659332, 37.050041, 39.853180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337471, 37.819695, 39.444523>,  <32.992729, 37.249805, 39.928917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337471, 37.819695, 39.444523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568901, 37.495098, 39.411709>,  <33.707760, 37.300339, 39.392021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568901, 37.495098, 39.411709>,  <33.337471, 37.819695, 39.444523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568901, 37.495098, 39.411709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084146, 0.040654, -0.995624,
		0.811277, 0.582946, -0.044763,
		0.578575, -0.811493, -0.082034,
		33.742474, 37.251652, 39.387100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844372, 37.985577, 38.916252>,  <33.337471, 37.819695, 39.444523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844372, 37.985577, 38.916252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876095, 37.586849, 38.919456>,  <33.895130, 37.347614, 38.921379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876095, 37.586849, 38.919456>,  <33.844372, 37.985577, 38.916252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876095, 37.586849, 38.919456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129565, -0.018275, -0.991402,
		0.988394, 0.077593, -0.130602,
		0.079312, -0.996818, 0.008010,
		33.899887, 37.287804, 38.921860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277996, 37.824463, 38.267506>,  <33.844372, 37.985577, 38.916252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277996, 37.824463, 38.267506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059212, 37.509216, 38.380440>,  <33.927940, 37.320068, 38.448200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059212, 37.509216, 38.380440>,  <34.277996, 37.824463, 38.267506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059212, 37.509216, 38.380440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232562, -0.180935, -0.955603,
		0.804209, -0.588335, -0.084321,
		-0.546958, -0.788114, 0.282334,
		33.895123, 37.272781, 38.465141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507317, 37.270260, 37.790249>,  <34.277996, 37.824463, 38.267506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507317, 37.270260, 37.790249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161015, 37.137512, 37.940094>,  <33.953236, 37.057865, 38.030003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161015, 37.137512, 37.940094>,  <34.507317, 37.270260, 37.790249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161015, 37.137512, 37.940094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349446, -0.135001, -0.927180,
		0.358275, -0.933616, 0.000908,
		-0.865752, -0.331868, 0.374616,
		33.901287, 37.037952, 38.052479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285484, 36.755173, 37.346245>,  <34.507317, 37.270260, 37.790249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285484, 36.755173, 37.346245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944683, 36.828594, 37.542366>,  <33.740204, 36.872646, 37.660038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944683, 36.828594, 37.542366>,  <34.285484, 36.755173, 37.346245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944683, 36.828594, 37.542366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511655, -0.093515, -0.854087,
		-0.110930, -0.978549, 0.173597,
		-0.852000, 0.183566, 0.490306,
		33.689083, 36.883659, 37.689457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903030, 36.087292, 37.220356>,  <34.285484, 36.755173, 37.346245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903030, 36.087292, 37.220356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685432, 36.418888, 37.272285>,  <33.554874, 36.617844, 37.303444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685432, 36.418888, 37.272285>,  <33.903030, 36.087292, 37.220356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685432, 36.418888, 37.272285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644546, -0.313777, -0.697212,
		-0.537245, -0.462952, 0.705012,
		-0.543993, 0.828987, 0.129819,
		33.522236, 36.667583, 37.311230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118637, 35.495865, 37.552246>,  <33.903030, 36.087292, 37.220356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118637, 35.495865, 37.552246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063824, 35.302139, 37.206608>,  <34.030937, 35.185905, 36.999226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063824, 35.302139, 37.206608>,  <34.118637, 35.495865, 37.552246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063824, 35.302139, 37.206608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941075, -0.335936, 0.039045,
		-0.309192, -0.807831, 0.501806,
		-0.137033, -0.484310, -0.864098,
		34.022713, 35.156845, 36.947380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460381, 34.871731, 37.679016>,  <34.118637, 35.495865, 37.552246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460381, 34.871731, 37.679016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433392, 34.918724, 37.282703>,  <34.417198, 34.946922, 37.044918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.433392, 34.918724, 37.282703>,  <34.460381, 34.871731, 37.679016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433392, 34.918724, 37.282703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913353, -0.392384, -0.108730,
		-0.401540, -0.912268, -0.080829,
		-0.067475, 0.117484, -0.990780,
		34.413151, 34.953968, 36.985470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635056, 34.184200, 37.785946>,  <34.460381, 34.871731, 37.679016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635056, 34.184200, 37.785946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755253, 33.807961, 37.849155>,  <34.827374, 33.582214, 37.887081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755253, 33.807961, 37.849155>,  <34.635056, 34.184200, 37.785946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755253, 33.807961, 37.849155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420297, 0.279312, 0.863328,
		-0.856184, -0.193013, 0.479264,
		0.300498, -0.940601, 0.158020,
		34.845402, 33.525780, 37.896561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316269, 33.810062, 38.351238>,  <34.635056, 34.184200, 37.785946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316269, 33.810062, 38.351238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700146, 33.714848, 38.291458>,  <34.930470, 33.657719, 38.255592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700146, 33.714848, 38.291458>,  <34.316269, 33.810062, 38.351238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700146, 33.714848, 38.291458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251964, 0.493026, 0.832730,
		-0.124536, -0.836818, 0.533129,
		0.959690, -0.238034, -0.149448,
		34.988052, 33.643436, 38.246624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609299, 33.411697, 38.968903>,  <34.316269, 33.810062, 38.351238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609299, 33.411697, 38.968903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887661, 33.646858, 38.803940>,  <35.054680, 33.787956, 38.704960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887661, 33.646858, 38.803940>,  <34.609299, 33.411697, 38.968903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887661, 33.646858, 38.803940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324699, 0.254638, 0.910895,
		0.640532, -0.767809, -0.013686,
		0.695909, 0.587901, -0.412411,
		35.096436, 33.823227, 38.680218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237701, 33.223648, 39.309456>,  <34.609299, 33.411697, 38.968903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237701, 33.223648, 39.309456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279018, 33.593758, 39.163471>,  <35.303810, 33.815823, 39.075878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.279018, 33.593758, 39.163471>,  <35.237701, 33.223648, 39.309456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.279018, 33.593758, 39.163471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249955, 0.331005, 0.909922,
		0.962732, -0.185215, -0.197086,
		0.103295, 0.925274, -0.364964,
		35.310005, 33.871338, 39.053982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716038, 33.399113, 39.674404>,  <35.237701, 33.223648, 39.309456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716038, 33.399113, 39.674404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606190, 33.755894, 39.530739>,  <35.540279, 33.969963, 39.444538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606190, 33.755894, 39.530739>,  <35.716038, 33.399113, 39.674404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606190, 33.755894, 39.530739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346382, 0.440215, 0.828390,
		0.896996, 0.103088, -0.429851,
		-0.274624, 0.891955, -0.359163,
		35.523804, 34.023479, 39.422989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.353210, 33.741444, 39.729328>,  <35.716038, 33.399113, 39.674404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.353210, 33.741444, 39.729328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080578, 34.033867, 39.716648>,  <35.917000, 34.209320, 39.709042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080578, 34.033867, 39.716648>,  <36.353210, 33.741444, 39.729328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080578, 34.033867, 39.716648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361375, 0.373955, 0.854146,
		0.636284, 0.570713, -0.519066,
		-0.681580, 0.731057, -0.031700,
		35.876102, 34.253185, 39.707138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757954, 34.409142, 39.656631>,  <36.353210, 33.741444, 39.729328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757954, 34.409142, 39.656631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385059, 34.457623, 39.793015>,  <36.161324, 34.486710, 39.874847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385059, 34.457623, 39.793015>,  <36.757954, 34.409142, 39.656631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385059, 34.457623, 39.793015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356177, 0.473723, 0.805434,
		-0.063901, 0.872294, -0.484789,
		-0.932231, 0.121202, 0.340962,
		36.105389, 34.493984, 39.895302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652370, 35.174980, 39.878628>,  <36.757954, 34.409142, 39.656631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652370, 35.174980, 39.878628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355152, 34.977100, 40.058922>,  <36.176823, 34.858372, 40.167099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355152, 34.977100, 40.058922>,  <36.652370, 35.174980, 39.878628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355152, 34.977100, 40.058922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155792, 0.527129, 0.835383,
		-0.650860, 0.690944, -0.314607,
		-0.743041, -0.494703, 0.450731,
		36.132240, 34.828690, 40.194141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219772, 35.689480, 40.156715>,  <36.652370, 35.174980, 39.878628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219772, 35.689480, 40.156715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137234, 35.352943, 40.356541>,  <36.087711, 35.151020, 40.476437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137234, 35.352943, 40.356541>,  <36.219772, 35.689480, 40.156715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137234, 35.352943, 40.356541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089302, 0.492232, 0.865871,
		-0.974395, 0.223282, -0.026437,
		-0.206347, -0.841340, 0.499568,
		36.075329, 35.100540, 40.506413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976505, 35.945381, 40.718998>,  <36.219772, 35.689480, 40.156715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976505, 35.945381, 40.718998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070423, 35.573444, 40.832321>,  <36.126774, 35.350281, 40.900314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070423, 35.573444, 40.832321>,  <35.976505, 35.945381, 40.718998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070423, 35.573444, 40.832321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075267, 0.307969, 0.948415,
		-0.969126, -0.201363, 0.142297,
		0.234799, -0.929843, 0.283304,
		36.140862, 35.294491, 40.917313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617161, 35.895195, 41.333351>,  <35.976505, 35.945381, 40.718998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617161, 35.895195, 41.333351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899433, 35.613304, 41.362663>,  <36.068798, 35.444168, 41.380253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899433, 35.613304, 41.362663>,  <35.617161, 35.895195, 41.333351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899433, 35.613304, 41.362663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150735, 0.250388, 0.956339,
		-0.692307, -0.663827, 0.282922,
		0.705684, -0.704726, 0.073283,
		36.111137, 35.401886, 41.384647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537327, 35.750557, 42.044979>,  <35.617161, 35.895195, 41.333351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537327, 35.750557, 42.044979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882126, 35.595554, 41.914253>,  <36.089005, 35.502552, 41.835819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882126, 35.595554, 41.914253>,  <35.537327, 35.750557, 42.044979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882126, 35.595554, 41.914253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383849, 0.077861, 0.920107,
		-0.331100, -0.918574, 0.215859,
		0.861993, -0.387505, -0.326814,
		36.140724, 35.479301, 41.816208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602695, 35.221779, 42.462566>,  <35.537327, 35.750557, 42.044979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602695, 35.221779, 42.462566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967117, 35.283417, 42.309605>,  <36.185772, 35.320400, 42.217827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967117, 35.283417, 42.309605>,  <35.602695, 35.221779, 42.462566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967117, 35.283417, 42.309605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393326, -0.046832, 0.918206,
		0.123581, -0.986946, -0.103275,
		0.911055, 0.154093, -0.382404,
		36.240433, 35.329643, 42.194885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959755, 34.649803, 42.700626>,  <35.602695, 35.221779, 42.462566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959755, 34.649803, 42.700626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238911, 34.923836, 42.617096>,  <36.406403, 35.088257, 42.566978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238911, 34.923836, 42.617096>,  <35.959755, 34.649803, 42.700626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238911, 34.923836, 42.617096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428675, -0.165990, 0.888080,
		0.573748, -0.709299, -0.409522,
		0.697890, 0.685086, -0.208822,
		36.448277, 35.129360, 42.554451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613293, 34.295441, 42.695305>,  <35.959755, 34.649803, 42.700626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613293, 34.295441, 42.695305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655495, 34.688335, 42.757381>,  <36.680817, 34.924072, 42.794628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655495, 34.688335, 42.757381>,  <36.613293, 34.295441, 42.695305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655495, 34.688335, 42.757381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431662, -0.185827, 0.882687,
		0.895844, -0.026142, -0.443599,
		0.105508, 0.982235, 0.155187,
		36.687145, 34.983006, 42.803936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277603, 34.438351, 42.844254>,  <36.613293, 34.295441, 42.695305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277603, 34.438351, 42.844254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098930, 34.761246, 42.998581>,  <36.991726, 34.954983, 43.091175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098930, 34.761246, 42.998581>,  <37.277603, 34.438351, 42.844254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098930, 34.761246, 42.998581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412504, -0.196846, 0.889434,
		0.793927, 0.556440, -0.245060,
		-0.446677, 0.807234, 0.385815,
		36.964928, 35.003414, 43.114326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692947, 34.635597, 43.315922>,  <37.277603, 34.438351, 42.844254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692947, 34.635597, 43.315922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364365, 34.821339, 43.448334>,  <37.167213, 34.932781, 43.527782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.364365, 34.821339, 43.448334>,  <37.692947, 34.635597, 43.315922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364365, 34.821339, 43.448334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360426, -0.027086, 0.932394,
		0.441924, 0.885237, -0.145114,
		-0.821460, 0.464351, 0.331033,
		37.117928, 34.960644, 43.547642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992195, 35.187496, 43.723606>,  <37.692947, 34.635597, 43.315922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992195, 35.187496, 43.723606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612625, 35.152660, 43.844906>,  <37.384884, 35.131760, 43.917686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.612625, 35.152660, 43.844906>,  <37.992195, 35.187496, 43.723606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612625, 35.152660, 43.844906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301734, 0.030396, 0.952907,
		-0.092205, 0.995737, -0.002566,
		-0.948923, -0.087089, 0.303251,
		37.327950, 35.126534, 43.935883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026150, 35.457821, 44.367237>,  <37.992195, 35.187496, 43.723606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026150, 35.457821, 44.367237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680912, 35.255806, 44.366238>,  <37.473770, 35.134598, 44.365639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680912, 35.255806, 44.366238>,  <38.026150, 35.457821, 44.367237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680912, 35.255806, 44.366238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108858, -0.190865, 0.975562,
		-0.493176, 0.841727, 0.219712,
		-0.863092, -0.505041, -0.002502,
		37.421986, 35.104294, 44.365486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563293, 35.677986, 44.862213>,  <38.026150, 35.457821, 44.367237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563293, 35.677986, 44.862213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469852, 35.291573, 44.818001>,  <37.413788, 35.059727, 44.791473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469852, 35.291573, 44.818001>,  <37.563293, 35.677986, 44.862213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469852, 35.291573, 44.818001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148538, -0.147795, 0.977800,
		-0.960920, 0.211997, 0.178017,
		-0.233600, -0.966030, -0.110529,
		37.399773, 35.001762, 44.784843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025234, 35.548534, 45.472740>,  <37.563293, 35.677986, 44.862213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025234, 35.548534, 45.472740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203625, 35.216572, 45.338657>,  <37.310658, 35.017395, 45.258205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203625, 35.216572, 45.338657>,  <37.025234, 35.548534, 45.472740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203625, 35.216572, 45.338657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012771, -0.368580, 0.929508,
		-0.894955, -0.418816, -0.153778,
		0.445973, -0.829904, -0.335212,
		37.337418, 34.967602, 45.238094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646606, 34.966255, 45.844173>,  <37.025234, 35.548534, 45.472740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646606, 34.966255, 45.844173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987564, 34.787743, 45.735168>,  <37.192139, 34.680634, 45.669765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987564, 34.787743, 45.735168>,  <36.646606, 34.966255, 45.844173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987564, 34.787743, 45.735168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090977, -0.386638, 0.917733,
		-0.514933, -0.807058, -0.288964,
		0.852389, -0.446282, -0.272517,
		37.243282, 34.653858, 45.653412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597580, 34.341423, 46.084232>,  <36.646606, 34.966255, 45.844173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597580, 34.341423, 46.084232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987026, 34.363136, 45.995579>,  <37.220695, 34.376163, 45.942387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987026, 34.363136, 45.995579>,  <36.597580, 34.341423, 46.084232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987026, 34.363136, 45.995579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220162, -0.478753, 0.849897,
		-0.059977, -0.876270, -0.478073,
		0.973618, 0.054279, -0.221635,
		37.279110, 34.379421, 45.929089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861580, 33.714352, 46.030991>,  <36.597580, 34.341423, 46.084232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861580, 33.714352, 46.030991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169384, 33.949642, 46.130466>,  <37.354065, 34.090816, 46.190151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169384, 33.949642, 46.130466>,  <36.861580, 33.714352, 46.030991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169384, 33.949642, 46.130466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172000, -0.565900, 0.806334,
		0.615041, -0.577705, -0.536639,
		0.769507, 0.588230, 0.248686,
		37.400234, 34.126110, 46.205070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400566, 33.298893, 46.304279>,  <36.861580, 33.714352, 46.030991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400566, 33.298893, 46.304279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506218, 33.656776, 46.448349>,  <37.569607, 33.871506, 46.534790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506218, 33.656776, 46.448349>,  <37.400566, 33.298893, 46.304279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506218, 33.656776, 46.448349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071714, -0.390625, 0.917752,
		0.961818, -0.216574, -0.167339,
		0.264128, 0.894711, 0.360179,
		37.585457, 33.925190, 46.556404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990635, 33.154701, 46.776253>,  <37.400566, 33.298893, 46.304279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990635, 33.154701, 46.776253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895370, 33.528191, 46.883167>,  <37.838211, 33.752285, 46.947315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.895370, 33.528191, 46.883167>,  <37.990635, 33.154701, 46.776253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895370, 33.528191, 46.883167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144475, -0.238080, 0.960440,
		0.960420, 0.267354, -0.078199,
		-0.238160, 0.933724, 0.267283,
		37.823921, 33.808308, 46.963352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.459110, 33.208527, 47.269581>,  <37.990635, 33.154701, 46.776253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.459110, 33.208527, 47.269581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172005, 33.482262, 47.320965>,  <37.999741, 33.646503, 47.351795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172005, 33.482262, 47.320965>,  <38.459110, 33.208527, 47.269581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172005, 33.482262, 47.320965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081309, -0.265610, 0.960646,
		0.691522, 0.679072, 0.246288,
		-0.717764, 0.684334, 0.128460,
		37.956676, 33.687561, 47.359505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263248, 33.348701, 47.436962>,  <38.459110, 33.208527, 47.269581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263248, 33.348701, 47.436962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619595, 33.168140, 47.416618>,  <39.833405, 33.059803, 47.404411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619595, 33.168140, 47.416618>,  <39.263248, 33.348701, 47.436962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619595, 33.168140, 47.416618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010860, 0.090761, -0.995813,
		0.454130, 0.887692, 0.075954,
		0.890869, -0.451404, -0.050857,
		39.886856, 33.032719, 47.401360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596134, 33.743858, 46.906319>,  <39.263248, 33.348701, 47.436962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596134, 33.743858, 46.906319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809391, 33.405449, 46.907330>,  <39.937347, 33.202404, 46.907936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809391, 33.405449, 46.907330>,  <39.596134, 33.743858, 46.906319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809391, 33.405449, 46.907330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044484, 0.025055, -0.998696,
		0.844853, 0.532564, 0.050992,
		0.533147, -0.846019, 0.002523,
		39.969334, 33.151642, 46.908085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127304, 33.835812, 46.398106>,  <39.596134, 33.743858, 46.906319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127304, 33.835812, 46.398106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091599, 33.440277, 46.445839>,  <40.070175, 33.202957, 46.474480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.091599, 33.440277, 46.445839>,  <40.127304, 33.835812, 46.398106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091599, 33.440277, 46.445839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015919, -0.118382, -0.992841,
		0.995881, -0.090524, -0.005174,
		-0.089264, -0.988833, 0.119336,
		40.064819, 33.143627, 46.481640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690762, 33.567986, 46.053555>,  <40.127304, 33.835812, 46.398106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690762, 33.567986, 46.053555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410557, 33.283371, 46.075500>,  <40.242435, 33.112602, 46.088669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410557, 33.283371, 46.075500>,  <40.690762, 33.567986, 46.053555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410557, 33.283371, 46.075500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021796, -0.098178, -0.994930,
		0.713312, -0.695760, 0.084283,
		-0.700507, -0.711533, 0.054867,
		40.200405, 33.069912, 46.091961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061653, 33.017635, 45.769043>,  <40.690762, 33.567986, 46.053555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061653, 33.017635, 45.769043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667114, 32.969387, 45.724182>,  <40.430393, 32.940437, 45.697266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.667114, 32.969387, 45.724182>,  <41.061653, 33.017635, 45.769043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.667114, 32.969387, 45.724182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117682, -0.039753, -0.992255,
		0.115228, -0.991902, 0.053405,
		-0.986344, -0.120621, -0.112148,
		40.371212, 32.933201, 45.690536>
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
