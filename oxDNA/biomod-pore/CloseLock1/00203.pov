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
	<24.340454, 35.413647, 34.988194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.417723, 35.140083, 35.269604>,  <24.464085, 34.975945, 35.438450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.417723, 35.140083, 35.269604>,  <24.340454, 35.413647, 34.988194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.417723, 35.140083, 35.269604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810638, -0.292713, -0.507134,
		0.552766, 0.668270, 0.497860,
		0.193172, -0.683911, 0.703527,
		24.475674, 34.934910, 35.480663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.993645, 35.344677, 35.164154>,  <24.340454, 35.413647, 34.988194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.993645, 35.344677, 35.164154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890364, 34.975227, 35.277462>,  <24.828394, 34.753555, 35.345448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890364, 34.975227, 35.277462>,  <24.993645, 35.344677, 35.164154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890364, 34.975227, 35.277462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874184, -0.348190, -0.338476,
		0.411257, 0.160234, 0.897325,
		-0.258204, -0.923628, 0.283270,
		24.812902, 34.698139, 35.362442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.387896, 34.963764, 35.673534>,  <24.993645, 35.344677, 35.164154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.387896, 34.963764, 35.673534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253683, 34.678825, 35.426964>,  <25.173155, 34.507862, 35.279022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253683, 34.678825, 35.426964>,  <25.387896, 34.963764, 35.673534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253683, 34.678825, 35.426964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934607, -0.169746, -0.312562,
		0.118017, -0.680990, 0.722721,
		-0.335531, -0.712348, -0.616425,
		25.153025, 34.465122, 35.242035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962490, 34.821651, 35.294579>,  <25.387896, 34.963764, 35.673534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962490, 34.821651, 35.294579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035975, 35.207497, 35.218933>,  <26.080065, 35.439003, 35.173546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035975, 35.207497, 35.218933>,  <25.962490, 34.821651, 35.294579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035975, 35.207497, 35.218933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123882, 0.213573, 0.969041,
		0.975142, -0.154598, 0.158735,
		0.183713, 0.964617, -0.189112,
		26.091089, 35.496883, 35.162201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669094, 34.963654, 35.420395>,  <25.962490, 34.821651, 35.294579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669094, 34.963654, 35.420395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405123, 35.256210, 35.489174>,  <26.246740, 35.431744, 35.530441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.405123, 35.256210, 35.489174>,  <26.669094, 34.963654, 35.420395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405123, 35.256210, 35.489174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073118, -0.165253, 0.983537,
		0.747762, 0.661636, 0.055578,
		-0.659928, 0.731388, 0.171948,
		26.207144, 35.475628, 35.540760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119184, 34.372532, 35.727081>,  <26.669094, 34.963654, 35.420395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119184, 34.372532, 35.727081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993940, 34.066143, 35.502491>,  <26.918795, 33.882309, 35.367737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993940, 34.066143, 35.502491>,  <27.119184, 34.372532, 35.727081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993940, 34.066143, 35.502491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725883, 0.188220, -0.661564,
		0.612418, -0.614707, 0.497071,
		-0.313109, -0.765969, -0.561475,
		26.900007, 33.836353, 35.334049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654146, 33.752254, 35.647408>,  <27.119184, 34.372532, 35.727081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654146, 33.752254, 35.647408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393333, 33.783531, 35.345749>,  <27.236845, 33.802296, 35.164753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393333, 33.783531, 35.345749>,  <27.654146, 33.752254, 35.647408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393333, 33.783531, 35.345749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749002, 0.220823, -0.624686,
		0.117689, -0.972174, -0.202549,
		-0.652031, 0.078191, -0.754149,
		27.197723, 33.806988, 35.119503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225689, 33.574570, 35.345119>,  <27.654146, 33.752254, 35.647408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225689, 33.574570, 35.345119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312819, 33.270267, 35.589676>,  <28.365097, 33.087685, 35.736412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312819, 33.270267, 35.589676>,  <28.225689, 33.574570, 35.345119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312819, 33.270267, 35.589676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594204, -0.600327, -0.535283,
		0.774257, -0.246695, -0.582811,
		0.217826, -0.760756, 0.611394,
		28.378166, 33.042042, 35.773094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433084, 33.129879, 34.923859>,  <28.225689, 33.574570, 35.345119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433084, 33.129879, 34.923859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304102, 32.934483, 35.248180>,  <28.226711, 32.817245, 35.442772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304102, 32.934483, 35.248180>,  <28.433084, 33.129879, 34.923859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304102, 32.934483, 35.248180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507019, -0.634187, -0.583728,
		0.799345, -0.599319, -0.043176,
		-0.322458, -0.488491, 0.810801,
		28.207365, 32.787933, 35.491421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398531, 32.415905, 34.724667>,  <28.433084, 33.129879, 34.923859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398531, 32.415905, 34.724667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206972, 32.369713, 35.072762>,  <28.092037, 32.341999, 35.281620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206972, 32.369713, 35.072762>,  <28.398531, 32.415905, 34.724667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206972, 32.369713, 35.072762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472667, -0.801432, -0.366461,
		0.739758, -0.586832, 0.329221,
		-0.478899, -0.115481, 0.870241,
		28.063303, 32.335068, 35.333836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.255737, 31.706659, 34.854946>,  <28.398531, 32.415905, 34.724667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.255737, 31.706659, 34.854946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986425, 31.858091, 35.108994>,  <27.824839, 31.948950, 35.261421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.986425, 31.858091, 35.108994>,  <28.255737, 31.706659, 34.854946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986425, 31.858091, 35.108994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505989, -0.862248, -0.022424,
		0.539139, -0.336459, 0.772091,
		-0.673279, 0.378580, 0.635116,
		27.784441, 31.971666, 35.299530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.086781, 31.123058, 35.316013>,  <28.255737, 31.706659, 34.854946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.086781, 31.123058, 35.316013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796936, 31.398554, 35.306435>,  <27.623030, 31.563852, 35.300686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796936, 31.398554, 35.306435>,  <28.086781, 31.123058, 35.316013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796936, 31.398554, 35.306435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689046, -0.723439, 0.043029,
		0.012313, 0.047679, 0.998787,
		-0.724613, 0.688740, -0.023945,
		27.579552, 31.605175, 35.299252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610065, 30.985100, 35.897697>,  <28.086781, 31.123058, 35.316013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610065, 30.985100, 35.897697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434006, 31.173857, 35.592125>,  <27.328369, 31.287111, 35.408783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434006, 31.173857, 35.592125>,  <27.610065, 30.985100, 35.897697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434006, 31.173857, 35.592125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735971, -0.676988, 0.005857,
		-0.514406, 0.564807, 0.645274,
		-0.440151, 0.471890, -0.763928,
		27.301960, 31.315424, 35.362946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889151, 30.867899, 36.061981>,  <27.610065, 30.985100, 35.897697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889151, 30.867899, 36.061981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919733, 30.980402, 35.679348>,  <26.938082, 31.047905, 35.449768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919733, 30.980402, 35.679348>,  <26.889151, 30.867899, 36.061981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919733, 30.980402, 35.679348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722208, -0.645834, -0.247615,
		-0.687437, 0.709783, 0.153750,
		0.076456, 0.281259, -0.956581,
		26.942669, 31.064779, 35.392372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.100508, 30.752876, 35.766415>,  <26.889151, 30.867899, 36.061981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.100508, 30.752876, 35.766415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337627, 30.789289, 35.446339>,  <26.479900, 30.811138, 35.254295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337627, 30.789289, 35.446339>,  <26.100508, 30.752876, 35.766415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337627, 30.789289, 35.446339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576829, -0.645380, -0.500753,
		-0.562010, 0.758418, -0.330070,
		0.592801, 0.091034, -0.800188,
		26.515467, 30.816599, 35.206284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.733246, 30.709448, 35.221180>,  <26.100508, 30.752876, 35.766415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.733246, 30.709448, 35.221180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077801, 30.666430, 35.022606>,  <26.284533, 30.640619, 34.903461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.077801, 30.666430, 35.022606>,  <25.733246, 30.709448, 35.221180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.077801, 30.666430, 35.022606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416979, -0.707830, -0.570180,
		-0.290072, 0.698148, -0.654559,
		0.861386, -0.107544, -0.496435,
		26.336216, 30.634167, 34.873676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.717690, 30.718306, 34.438690>,  <25.733246, 30.709448, 35.221180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.717690, 30.718306, 34.438690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039543, 30.492086, 34.511044>,  <26.232656, 30.356356, 34.554455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039543, 30.492086, 34.511044>,  <25.717690, 30.718306, 34.438690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039543, 30.492086, 34.511044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424490, -0.760904, -0.490747,
		0.415174, 0.318091, -0.852320,
		0.804636, -0.565547, 0.180881,
		26.280933, 30.322422, 34.565308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039379, 30.462959, 33.847073>,  <25.717690, 30.718306, 34.438690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039379, 30.462959, 33.847073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161854, 30.197159, 34.119747>,  <26.235338, 30.037678, 34.283352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161854, 30.197159, 34.119747>,  <26.039379, 30.462959, 33.847073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161854, 30.197159, 34.119747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219303, -0.746049, -0.628743,
		0.926368, 0.043017, -0.374156,
		0.306185, -0.664501, 0.681682,
		26.253710, 29.997808, 34.324253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.404181, 29.987022, 33.445343>,  <26.039379, 30.462959, 33.847073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.404181, 29.987022, 33.445343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360010, 29.777723, 33.783340>,  <26.333508, 29.652143, 33.986141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360010, 29.777723, 33.783340>,  <26.404181, 29.987022, 33.445343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360010, 29.777723, 33.783340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167972, -0.828141, -0.534761,
		0.979588, -0.200987, 0.003557,
		-0.110426, -0.523247, 0.844996,
		26.326883, 29.620749, 34.036839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760046, 29.426994, 33.438549>,  <26.404181, 29.987022, 33.445343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760046, 29.426994, 33.438549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496546, 29.316244, 33.718376>,  <26.338446, 29.249794, 33.886272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496546, 29.316244, 33.718376>,  <26.760046, 29.426994, 33.438549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496546, 29.316244, 33.718376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027091, -0.937948, -0.345715,
		0.751875, -0.208787, 0.625374,
		-0.658749, -0.276877, 0.699563,
		26.298922, 29.233181, 33.928246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942390, 28.781532, 33.669891>,  <26.760046, 29.426994, 33.438549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942390, 28.781532, 33.669891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556429, 28.793468, 33.774258>,  <26.324852, 28.800631, 33.836876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556429, 28.793468, 33.774258>,  <26.942390, 28.781532, 33.669891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556429, 28.793468, 33.774258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123715, -0.928020, -0.351389,
		0.231645, -0.371334, 0.899139,
		-0.964902, 0.029840, 0.260911,
		26.266958, 28.802420, 33.852531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791330, 28.130228, 34.024593>,  <26.942390, 28.781532, 33.669891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791330, 28.130228, 34.024593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440395, 28.284245, 33.910038>,  <26.229834, 28.376654, 33.841305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440395, 28.284245, 33.910038>,  <26.791330, 28.130228, 34.024593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440395, 28.284245, 33.910038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346017, -0.921112, -0.178396,
		-0.332487, -0.057418, 0.941358,
		-0.877339, 0.385041, -0.286390,
		26.177193, 28.399757, 33.824120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.354492, 27.734730, 34.420647>,  <26.791330, 28.130228, 34.024593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.354492, 27.734730, 34.420647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136467, 27.886009, 34.121349>,  <26.005651, 27.976776, 33.941769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136467, 27.886009, 34.121349>,  <26.354492, 27.734730, 34.420647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136467, 27.886009, 34.121349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143821, -0.921424, -0.360963,
		-0.825966, -0.089136, 0.556629,
		-0.545065, 0.378198, -0.748244,
		25.972948, 27.999468, 33.896877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.974445, 27.175005, 34.224499>,  <26.354492, 27.734730, 34.420647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.974445, 27.175005, 34.224499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922882, 27.400908, 33.898449>,  <25.891943, 27.536449, 33.702820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.922882, 27.400908, 33.898449>,  <25.974445, 27.175005, 34.224499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.922882, 27.400908, 33.898449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116701, -0.824912, -0.553083,
		-0.984766, 0.023829, 0.172246,
		-0.128909, 0.564758, -0.815126,
		25.884209, 27.570335, 33.653912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.355162, 27.053255, 33.816227>,  <25.974445, 27.175005, 34.224499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.355162, 27.053255, 33.816227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658306, 27.158730, 33.577526>,  <25.840193, 27.222013, 33.434303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658306, 27.158730, 33.577526>,  <25.355162, 27.053255, 33.816227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658306, 27.158730, 33.577526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094882, -0.860413, -0.500687,
		-0.645480, 0.436072, -0.627054,
		0.757861, 0.263687, -0.596755,
		25.885664, 27.237835, 33.398499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.040745, 26.818043, 33.238243>,  <25.355162, 27.053255, 33.816227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.040745, 26.818043, 33.238243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433697, 26.878296, 33.193985>,  <25.669468, 26.914448, 33.167431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433697, 26.878296, 33.193985>,  <25.040745, 26.818043, 33.238243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433697, 26.878296, 33.193985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056466, -0.803540, -0.592566,
		-0.178170, 0.575876, -0.797886,
		0.982378, 0.150631, -0.110649,
		25.728411, 26.923485, 33.160789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306803, 26.661880, 32.463470>,  <25.040745, 26.818043, 33.238243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306803, 26.661880, 32.463470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598080, 26.607525, 32.732178>,  <25.772846, 26.574911, 32.893402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.598080, 26.607525, 32.732178>,  <25.306803, 26.661880, 32.463470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.598080, 26.607525, 32.732178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300051, -0.818019, -0.490728,
		0.616205, 0.558908, -0.554899,
		0.728190, -0.135891, 0.671768,
		25.816536, 26.566757, 32.933708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.870037, 26.983046, 31.798748>,  <25.306803, 26.661880, 32.463470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.870037, 26.983046, 31.798748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095364, 26.774721, 31.542177>,  <25.230558, 26.649727, 31.388235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.095364, 26.774721, 31.542177>,  <24.870037, 26.983046, 31.798748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095364, 26.774721, 31.542177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776754, -0.598449, -0.196245,
		-0.281656, 0.608780, -0.741658,
		0.563314, -0.520813, -0.641429,
		25.264359, 26.618477, 31.349749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.488024, 26.843939, 31.137533>,  <24.870037, 26.983046, 31.798748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.488024, 26.843939, 31.137533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756805, 26.568739, 31.247173>,  <24.918076, 26.403620, 31.312958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.756805, 26.568739, 31.247173>,  <24.488024, 26.843939, 31.137533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.756805, 26.568739, 31.247173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689156, -0.716408, -0.108743,
		0.271184, -0.115828, -0.955533,
		0.671956, -0.688000, 0.274102,
		24.958391, 26.362339, 31.329403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.335770, 26.344604, 30.642197>,  <24.488024, 26.843939, 31.137533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.335770, 26.344604, 30.642197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509676, 26.191637, 30.968321>,  <24.614019, 26.099855, 31.163996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509676, 26.191637, 30.968321>,  <24.335770, 26.344604, 30.642197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.509676, 26.191637, 30.968321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604632, -0.794907, -0.050430,
		0.667382, -0.471039, -0.576821,
		0.434765, -0.382421, 0.815312,
		24.640106, 26.076910, 31.212915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672150, 25.632746, 30.475750>,  <24.335770, 26.344604, 30.642197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672150, 25.632746, 30.475750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574736, 25.654161, 30.863115>,  <24.516287, 25.667011, 31.095535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.574736, 25.654161, 30.863115>,  <24.672150, 25.632746, 30.475750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.574736, 25.654161, 30.863115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671053, -0.730209, -0.128385,
		0.700270, -0.681123, 0.213760,
		-0.243535, 0.053540, 0.968413,
		24.501675, 25.670223, 31.153639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102234, 25.010874, 30.504457>,  <24.672150, 25.632746, 30.475750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102234, 25.010874, 30.504457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394337, 24.741766, 30.551968>,  <25.569597, 24.580301, 30.580473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394337, 24.741766, 30.551968>,  <25.102234, 25.010874, 30.504457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394337, 24.741766, 30.551968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619194, 0.725246, 0.301026,
		-0.288661, -0.146282, 0.946190,
		0.730255, -0.672770, 0.118774,
		25.613413, 24.539934, 30.587599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.399734, 25.240915, 31.144413>,  <25.102234, 25.010874, 30.504457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.399734, 25.240915, 31.144413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512297, 24.857283, 31.131943>,  <25.579834, 24.627104, 31.124460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512297, 24.857283, 31.131943>,  <25.399734, 25.240915, 31.144413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512297, 24.857283, 31.131943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902898, 0.253642, 0.347047,
		-0.324939, -0.125809, 0.937330,
		0.281408, -0.959082, -0.031174,
		25.596720, 24.569557, 31.122591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.635763, 24.995972, 31.903574>,  <25.399734, 25.240915, 31.144413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.635763, 24.995972, 31.903574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830435, 24.819565, 31.601938>,  <25.947237, 24.713720, 31.420958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830435, 24.819565, 31.601938>,  <25.635763, 24.995972, 31.903574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830435, 24.819565, 31.601938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865152, 0.362954, 0.346088,
		0.121069, -0.820834, 0.558187,
		0.486677, -0.441016, -0.754089,
		25.976439, 24.687260, 31.375711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.099819, 24.380896, 32.136162>,  <25.635763, 24.995972, 31.903574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.099819, 24.380896, 32.136162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199472, 24.617630, 31.829527>,  <26.259264, 24.759670, 31.645546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199472, 24.617630, 31.829527>,  <26.099819, 24.380896, 32.136162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199472, 24.617630, 31.829527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718771, 0.417508, 0.555928,
		0.649076, -0.689503, -0.321380,
		0.249135, 0.591838, -0.766589,
		26.274214, 24.795181, 31.599550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797543, 24.240435, 31.916573>,  <26.099819, 24.380896, 32.136162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.797543, 24.240435, 31.916573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685984, 24.615887, 31.835388>,  <26.619049, 24.841158, 31.786678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685984, 24.615887, 31.835388>,  <26.797543, 24.240435, 31.916573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685984, 24.615887, 31.835388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802694, 0.343869, 0.487274,
		0.527162, -0.027018, -0.849335,
		-0.278895, 0.938629, -0.202962,
		26.602316, 24.897476, 31.774500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406128, 24.597565, 31.805130>,  <26.797543, 24.240435, 31.916573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406128, 24.597565, 31.805130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160822, 24.900436, 31.895096>,  <27.013638, 25.082159, 31.949076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160822, 24.900436, 31.895096>,  <27.406128, 24.597565, 31.805130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160822, 24.900436, 31.895096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756457, 0.481054, 0.443124,
		0.227327, 0.441892, -0.867787,
		-0.613266, 0.757178, 0.224916,
		26.976843, 25.127590, 31.962570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782446, 25.182241, 31.608892>,  <27.406128, 24.597565, 31.805130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782446, 25.182241, 31.608892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492090, 25.343468, 31.831827>,  <27.317877, 25.440203, 31.965588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.492090, 25.343468, 31.831827>,  <27.782446, 25.182241, 31.608892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.492090, 25.343468, 31.831827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664872, 0.618724, 0.418481,
		-0.176163, 0.674328, -0.717111,
		-0.725887, 0.403066, 0.557338,
		27.274324, 25.464388, 31.999029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894627, 25.871176, 31.604990>,  <27.782446, 25.182241, 31.608892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894627, 25.871176, 31.604990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687418, 25.780979, 31.935034>,  <27.563093, 25.726860, 32.133060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.687418, 25.780979, 31.935034>,  <27.894627, 25.871176, 31.604990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687418, 25.780979, 31.935034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546773, 0.654524, 0.522147,
		-0.657795, 0.721631, -0.215763,
		-0.518020, -0.225492, 0.825111,
		27.532013, 25.713331, 32.182568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854460, 26.435974, 31.818056>,  <27.894627, 25.871176, 31.604990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854460, 26.435974, 31.818056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781759, 26.179850, 32.116577>,  <27.738138, 26.026175, 32.295689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781759, 26.179850, 32.116577>,  <27.854460, 26.435974, 31.818056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781759, 26.179850, 32.116577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513289, 0.585569, 0.627410,
		-0.838750, 0.497102, 0.222236,
		-0.181752, -0.640311, 0.746303,
		27.727234, 25.987757, 32.340469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550884, 26.908884, 32.218983>,  <27.854460, 26.435974, 31.818056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550884, 26.908884, 32.218983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665770, 26.609032, 32.457500>,  <27.734701, 26.429121, 32.600609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665770, 26.609032, 32.457500>,  <27.550884, 26.908884, 32.218983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665770, 26.609032, 32.457500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298766, 0.661571, 0.687795,
		-0.910082, -0.019392, 0.413975,
		0.287212, -0.749631, 0.596290,
		27.751934, 26.384142, 32.636387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.360794, 27.179678, 32.806480>,  <27.550884, 26.908884, 32.218983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.360794, 27.179678, 32.806480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636166, 26.895761, 32.866154>,  <27.801390, 26.725410, 32.901958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636166, 26.895761, 32.866154>,  <27.360794, 27.179678, 32.806480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636166, 26.895761, 32.866154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519055, 0.625802, 0.582197,
		-0.506601, -0.323366, 0.799243,
		0.688431, -0.709793, 0.149187,
		27.842695, 26.682823, 32.910912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.555225, 27.201136, 33.490261>,  <27.360794, 27.179678, 32.806480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.555225, 27.201136, 33.490261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862890, 27.016191, 33.313801>,  <28.047489, 26.905226, 33.207924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862890, 27.016191, 33.313801>,  <27.555225, 27.201136, 33.490261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862890, 27.016191, 33.313801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636050, 0.487042, 0.598523,
		-0.061876, -0.740954, 0.668699,
		0.769163, -0.462360, -0.441148,
		28.093639, 26.877483, 33.181458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961493, 27.125999, 34.080151>,  <27.555225, 27.201136, 33.490261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961493, 27.125999, 34.080151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204557, 27.070072, 33.767433>,  <28.350397, 27.036516, 33.579803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.204557, 27.070072, 33.767433>,  <27.961493, 27.125999, 34.080151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.204557, 27.070072, 33.767433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744399, 0.443349, 0.499311,
		0.276792, -0.885377, 0.373488,
		0.607664, -0.139819, -0.781790,
		28.386856, 27.028128, 33.532898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665777, 26.971907, 34.352577>,  <27.961493, 27.125999, 34.080151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665777, 26.971907, 34.352577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717779, 27.078686, 33.970615>,  <28.748980, 27.142754, 33.741440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717779, 27.078686, 33.970615>,  <28.665777, 26.971907, 34.352577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717779, 27.078686, 33.970615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797347, 0.544302, 0.260716,
		0.589352, -0.795283, -0.142088,
		0.130004, 0.266947, -0.954902,
		28.756781, 27.158770, 33.684143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360085, 26.874084, 34.239052>,  <28.665777, 26.971907, 34.352577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360085, 26.874084, 34.239052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217518, 27.144783, 33.981377>,  <29.131977, 27.307201, 33.826771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217518, 27.144783, 33.981377>,  <29.360085, 26.874084, 34.239052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217518, 27.144783, 33.981377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754101, 0.615429, 0.229300,
		0.551632, -0.404059, -0.729684,
		-0.356418, 0.676745, -0.644192,
		29.110592, 27.347807, 33.788120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942305, 27.115358, 33.998516>,  <29.360085, 26.874084, 34.239052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942305, 27.115358, 33.998516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687172, 27.404596, 33.892452>,  <29.534092, 27.578138, 33.828815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.687172, 27.404596, 33.892452>,  <29.942305, 27.115358, 33.998516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687172, 27.404596, 33.892452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598154, 0.681961, 0.420881,
		0.485163, 0.109846, -0.867497,
		-0.637831, 0.723093, -0.265157,
		29.495823, 27.621525, 33.812904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.426826, 27.590143, 33.892204>,  <29.942305, 27.115358, 33.998516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.426826, 27.590143, 33.892204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068237, 27.762531, 33.933388>,  <29.853083, 27.865965, 33.958096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.068237, 27.762531, 33.933388>,  <30.426826, 27.590143, 33.892204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068237, 27.762531, 33.933388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428197, 0.782869, 0.451402,
		0.113940, 0.448755, -0.886361,
		-0.896474, 0.430970, 0.102956,
		29.799295, 27.891823, 33.964275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517828, 28.266619, 33.799175>,  <30.426826, 27.590143, 33.892204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517828, 28.266619, 33.799175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149004, 28.287174, 33.952625>,  <29.927710, 28.299507, 34.044693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.149004, 28.287174, 33.952625>,  <30.517828, 28.266619, 33.799175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149004, 28.287174, 33.952625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284934, 0.760931, 0.582920,
		-0.261954, 0.646794, -0.716267,
		-0.922059, 0.051390, 0.383622,
		29.872387, 28.302591, 34.067711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266977, 28.856537, 33.630623>,  <30.517828, 28.266619, 33.799175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266977, 28.856537, 33.630623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048424, 28.761593, 33.951900>,  <29.917292, 28.704626, 34.144669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048424, 28.761593, 33.951900>,  <30.266977, 28.856537, 33.630623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048424, 28.761593, 33.951900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220527, 0.884388, 0.411371,
		-0.807981, 0.401893, -0.430870,
		-0.546383, -0.237361, 0.803197,
		29.884508, 28.690384, 34.192860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808115, 29.413607, 33.811729>,  <30.266977, 28.856537, 33.630623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808115, 29.413607, 33.811729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851585, 29.210550, 34.153606>,  <29.877668, 29.088717, 34.358730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.851585, 29.210550, 34.153606>,  <29.808115, 29.413607, 33.811729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.851585, 29.210550, 34.153606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109860, 0.860647, 0.497209,
		-0.987988, 0.039862, 0.149301,
		0.108676, -0.507639, 0.854688,
		29.884188, 29.058258, 34.410011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471151, 29.718998, 34.343426>,  <29.808115, 29.413607, 33.811729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471151, 29.718998, 34.343426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725348, 29.512897, 34.573441>,  <29.877865, 29.389236, 34.711449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.725348, 29.512897, 34.573441>,  <29.471151, 29.718998, 34.343426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.725348, 29.512897, 34.573441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035017, 0.763228, 0.645180,
		-0.771316, -0.389868, 0.503066,
		0.635489, -0.515253, 0.575038,
		29.915995, 29.358322, 34.745953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212009, 29.902237, 34.935883>,  <29.471151, 29.718998, 34.343426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212009, 29.902237, 34.935883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593790, 29.799475, 34.996574>,  <29.822859, 29.737818, 35.032990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593790, 29.799475, 34.996574>,  <29.212009, 29.902237, 34.935883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593790, 29.799475, 34.996574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136399, 0.827985, 0.543908,
		-0.265364, -0.498438, 0.825313,
		0.954451, -0.256906, 0.151731,
		29.880125, 29.722403, 35.042095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341330, 29.959520, 35.761318>,  <29.212009, 29.902237, 34.935883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341330, 29.959520, 35.761318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703478, 29.987877, 35.593853>,  <29.920767, 30.004890, 35.493374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.703478, 29.987877, 35.593853>,  <29.341330, 29.959520, 35.761318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703478, 29.987877, 35.593853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222879, 0.759892, 0.610646,
		0.361428, -0.646172, 0.672184,
		0.905370, 0.070889, -0.418665,
		29.975088, 30.009144, 35.468254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.821541, 29.911249, 36.324142>,  <29.341330, 29.959520, 35.761318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.821541, 29.911249, 36.324142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016315, 30.089735, 36.023800>,  <30.133181, 30.196827, 35.843594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.016315, 30.089735, 36.023800>,  <29.821541, 29.911249, 36.324142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016315, 30.089735, 36.023800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119672, 0.817467, 0.563406,
		0.865198, -0.364201, 0.344658,
		0.486940, 0.446212, -0.750856,
		30.162397, 30.223598, 35.798542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385616, 30.213326, 36.605152>,  <29.821541, 29.911249, 36.324142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385616, 30.213326, 36.605152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362375, 30.425423, 36.266811>,  <30.348431, 30.552681, 36.063808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.362375, 30.425423, 36.266811>,  <30.385616, 30.213326, 36.605152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.362375, 30.425423, 36.266811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192791, 0.837293, 0.511636,
		0.979518, -0.133345, -0.150875,
		-0.058103, 0.530244, -0.845852,
		30.344944, 30.584496, 36.013058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765450, 30.674454, 36.831364>,  <30.385616, 30.213326, 36.605152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765450, 30.674454, 36.831364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623381, 30.839071, 36.495628>,  <30.538139, 30.937841, 36.294189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623381, 30.839071, 36.495628>,  <30.765450, 30.674454, 36.831364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623381, 30.839071, 36.495628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034544, 0.903041, 0.428163,
		0.934162, 0.123079, -0.334953,
		-0.355174, 0.411545, -0.839335,
		30.516829, 30.962534, 36.243828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267897, 31.193031, 36.693760>,  <30.765450, 30.674454, 36.831364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267897, 31.193031, 36.693760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936819, 31.296906, 36.494766>,  <30.738173, 31.359230, 36.375370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936819, 31.296906, 36.494766>,  <31.267897, 31.193031, 36.693760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936819, 31.296906, 36.494766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058452, 0.921561, 0.383808,
		0.558128, 0.288596, -0.777950,
		-0.827694, 0.259687, -0.497480,
		30.688511, 31.374811, 36.345524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514755, 31.618963, 36.158264>,  <31.267897, 31.193031, 36.693760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514755, 31.618963, 36.158264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139349, 31.663200, 36.289082>,  <30.914106, 31.689743, 36.367573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139349, 31.663200, 36.289082>,  <31.514755, 31.618963, 36.158264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139349, 31.663200, 36.289082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225810, 0.913216, 0.339186,
		-0.261152, 0.392181, -0.882039,
		-0.938514, 0.110594, 0.327047,
		30.857794, 31.696379, 36.387196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245007, 32.180187, 35.784237>,  <31.514755, 31.618963, 36.158264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245007, 32.180187, 35.784237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119646, 32.096485, 36.154747>,  <31.044430, 32.046265, 36.377052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119646, 32.096485, 36.154747>,  <31.245007, 32.180187, 35.784237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119646, 32.096485, 36.154747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582242, 0.728220, 0.361510,
		-0.750183, 0.652615, -0.106385,
		-0.313399, -0.209257, 0.926279,
		31.025627, 32.033707, 36.432632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.342548, 32.764988, 36.133392>,  <31.245007, 32.180187, 35.784237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.342548, 32.764988, 36.133392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267515, 32.498356, 36.421970>,  <31.222494, 32.338375, 36.595116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267515, 32.498356, 36.421970>,  <31.342548, 32.764988, 36.133392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267515, 32.498356, 36.421970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625782, 0.485028, 0.610856,
		-0.757106, 0.566053, 0.326151,
		-0.187584, -0.666582, 0.721444,
		31.211241, 32.298382, 36.638405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986984, 33.147366, 36.603428>,  <31.342548, 32.764988, 36.133392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986984, 33.147366, 36.603428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145884, 32.841740, 36.806759>,  <31.241222, 32.658363, 36.928757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145884, 32.841740, 36.806759>,  <30.986984, 33.147366, 36.603428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145884, 32.841740, 36.806759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301917, 0.631884, 0.713841,
		-0.866626, -0.130099, 0.481699,
		0.397247, -0.764066, 0.508328,
		31.265059, 32.612518, 36.959259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865835, 33.201786, 37.278770>,  <30.986984, 33.147366, 36.603428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865835, 33.201786, 37.278770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158100, 32.931366, 37.316902>,  <31.333458, 32.769112, 37.339783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.158100, 32.931366, 37.316902>,  <30.865835, 33.201786, 37.278770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.158100, 32.931366, 37.316902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381745, 0.520296, 0.763912,
		-0.566044, -0.521769, 0.638240,
		0.730660, -0.676053, 0.095328,
		31.377298, 32.728550, 37.345501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.115362, 33.139057, 38.043816>,  <30.865835, 33.201786, 37.278770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.115362, 33.139057, 38.043816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403606, 32.996063, 37.806187>,  <31.576553, 32.910267, 37.663609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.403606, 32.996063, 37.806187>,  <31.115362, 33.139057, 38.043816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403606, 32.996063, 37.806187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693117, 0.349633, 0.630354,
		-0.017636, -0.866002, 0.499730,
		0.720610, -0.357488, -0.594074,
		31.619789, 32.888817, 37.627964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531603, 32.719036, 38.365936>,  <31.115362, 33.139057, 38.043816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531603, 32.719036, 38.365936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753677, 32.881134, 38.075409>,  <31.886921, 32.978394, 37.901093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753677, 32.881134, 38.075409>,  <31.531603, 32.719036, 38.365936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753677, 32.881134, 38.075409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684021, 0.274330, 0.675912,
		0.473164, -0.872077, -0.124894,
		0.555185, 0.405247, -0.726322,
		31.920233, 33.002708, 37.857513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232506, 32.573734, 38.495583>,  <31.531603, 32.719036, 38.365936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232506, 32.573734, 38.495583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293743, 32.863533, 38.226757>,  <32.330486, 33.037415, 38.065464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293743, 32.863533, 38.226757>,  <32.232506, 32.573734, 38.495583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293743, 32.863533, 38.226757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942028, 0.098483, 0.320755,
		0.298573, -0.682204, -0.667422,
		0.153090, 0.724500, -0.672059,
		32.339672, 33.080883, 38.025139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841179, 32.369408, 38.358459>,  <32.232506, 32.573734, 38.495583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841179, 32.369408, 38.358459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794952, 32.742176, 38.220963>,  <32.767216, 32.965839, 38.138462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794952, 32.742176, 38.220963>,  <32.841179, 32.369408, 38.358459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794952, 32.742176, 38.220963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969666, 0.180885, 0.164401,
		0.215388, -0.314321, -0.924560,
		-0.115565, 0.931924, -0.343747,
		32.760284, 33.021755, 38.117840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417843, 32.471077, 37.964161>,  <32.841179, 32.369408, 38.358459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417843, 32.471077, 37.964161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285633, 32.835888, 38.061291>,  <33.206306, 33.054775, 38.119568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285633, 32.835888, 38.061291>,  <33.417843, 32.471077, 37.964161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285633, 32.835888, 38.061291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856389, 0.181683, 0.483311,
		0.396673, 0.367703, -0.841097,
		-0.330528, 0.912023, 0.242828,
		33.186474, 33.109493, 38.134140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927624, 32.940617, 37.788868>,  <33.417843, 32.471077, 37.964161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927624, 32.940617, 37.788868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708969, 33.148548, 38.051460>,  <33.577778, 33.273308, 38.209015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708969, 33.148548, 38.051460>,  <33.927624, 32.940617, 37.788868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708969, 33.148548, 38.051460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836777, 0.368602, 0.404891,
		-0.031506, 0.770655, -0.636473,
		-0.546637, 0.519829, 0.656480,
		33.544979, 33.304497, 38.248405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322823, 33.424313, 37.837891>,  <33.927624, 32.940617, 37.788868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322823, 33.424313, 37.837891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092613, 33.471321, 38.161610>,  <33.954487, 33.499527, 38.355843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.092613, 33.471321, 38.161610>,  <34.322823, 33.424313, 37.837891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092613, 33.471321, 38.161610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788488, 0.342268, 0.511017,
		-0.216942, 0.932224, -0.289646,
		-0.575519, 0.117522, 0.809300,
		33.919956, 33.506577, 38.404400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471729, 34.090183, 38.066605>,  <34.322823, 33.424313, 37.837891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471729, 34.090183, 38.066605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345943, 33.886780, 38.387238>,  <34.270473, 33.764736, 38.579617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345943, 33.886780, 38.387238>,  <34.471729, 34.090183, 38.066605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345943, 33.886780, 38.387238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666065, 0.483462, 0.567998,
		-0.676366, 0.712519, 0.186669,
		-0.314462, -0.508508, 0.801581,
		34.251606, 33.734226, 38.627712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284000, 34.588467, 38.580791>,  <34.471729, 34.090183, 38.066605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284000, 34.588467, 38.580791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376213, 34.242046, 38.758247>,  <34.431541, 34.034195, 38.864723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376213, 34.242046, 38.758247>,  <34.284000, 34.588467, 38.580791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376213, 34.242046, 38.758247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589023, 0.487101, 0.644814,
		-0.774538, 0.112668, 0.622412,
		0.230527, -0.866048, 0.443642,
		34.445370, 33.982231, 38.891338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395962, 34.708504, 39.231323>,  <34.284000, 34.588467, 38.580791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395962, 34.708504, 39.231323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564919, 34.346214, 39.217190>,  <34.666290, 34.128841, 39.208710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564919, 34.346214, 39.217190>,  <34.395962, 34.708504, 39.231323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564919, 34.346214, 39.217190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682440, 0.292117, 0.670033,
		-0.596543, -0.307131, 0.741490,
		0.422390, -0.905725, -0.035338,
		34.691635, 34.074497, 39.206589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310307, 34.425526, 39.899792>,  <34.395962, 34.708504, 39.231323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310307, 34.425526, 39.899792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599983, 34.184464, 39.765720>,  <34.773788, 34.039825, 39.685280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599983, 34.184464, 39.765720>,  <34.310307, 34.425526, 39.899792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599983, 34.184464, 39.765720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481585, 0.094104, 0.871332,
		-0.493574, -0.792431, 0.358381,
		0.724196, -0.602658, -0.335176,
		34.817242, 34.003666, 39.665169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493538, 33.991058, 40.460979>,  <34.310307, 34.425526, 39.899792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493538, 33.991058, 40.460979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816196, 33.944172, 40.229263>,  <35.009792, 33.916042, 40.090233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816196, 33.944172, 40.229263>,  <34.493538, 33.991058, 40.460979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816196, 33.944172, 40.229263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590909, 0.179940, 0.786415,
		0.012060, -0.976669, 0.214410,
		0.806648, -0.117213, -0.579293,
		35.058189, 33.909008, 40.055477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817509, 33.323807, 40.693150>,  <34.493538, 33.991058, 40.460979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817509, 33.323807, 40.693150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083271, 33.570251, 40.523933>,  <35.242729, 33.718117, 40.422401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083271, 33.570251, 40.523933>,  <34.817509, 33.323807, 40.693150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083271, 33.570251, 40.523933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662378, -0.223276, 0.715124,
		0.346142, -0.755350, -0.556447,
		0.664410, 0.616113, -0.423042,
		35.282593, 33.755085, 40.397022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470833, 32.861664, 40.729950>,  <34.817509, 33.323807, 40.693150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470833, 32.861664, 40.729950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555752, 33.252037, 40.709988>,  <35.606701, 33.486259, 40.698009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555752, 33.252037, 40.709988>,  <35.470833, 32.861664, 40.729950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555752, 33.252037, 40.709988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488099, -0.061655, 0.870608,
		0.846576, -0.209185, -0.489439,
		0.212295, 0.975931, -0.049907,
		35.619442, 33.544815, 40.695015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193741, 32.847160, 40.684326>,  <35.470833, 32.861664, 40.729950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193741, 32.847160, 40.684326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089645, 33.214806, 40.802650>,  <36.027187, 33.435394, 40.873646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089645, 33.214806, 40.802650>,  <36.193741, 32.847160, 40.684326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089645, 33.214806, 40.802650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623639, -0.073883, 0.778213,
		0.737121, 0.387004, -0.553968,
		-0.260242, 0.919113, 0.295811,
		36.011574, 33.490540, 40.891396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840183, 33.086079, 40.915348>,  <36.193741, 32.847160, 40.684326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840183, 33.086079, 40.915348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576084, 33.341461, 41.073559>,  <36.417625, 33.494690, 41.168488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576084, 33.341461, 41.073559>,  <36.840183, 33.086079, 40.915348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576084, 33.341461, 41.073559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537912, 0.034462, 0.842297,
		0.524139, 0.768886, -0.366187,
		-0.660249, 0.638457, 0.395530,
		36.378010, 33.532997, 41.192219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253159, 33.494793, 41.405243>,  <36.840183, 33.086079, 40.915348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253159, 33.494793, 41.405243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870159, 33.560184, 41.500298>,  <36.640358, 33.599419, 41.557331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870159, 33.560184, 41.500298>,  <37.253159, 33.494793, 41.405243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870159, 33.560184, 41.500298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253284, 0.082394, 0.963877,
		0.137998, 0.983099, -0.120300,
		-0.957499, 0.163483, 0.237633,
		36.582909, 33.609230, 41.571587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232212, 33.992458, 41.940868>,  <37.253159, 33.494793, 41.405243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232212, 33.992458, 41.940868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866375, 33.835266, 41.978996>,  <36.646873, 33.740952, 42.001873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.866375, 33.835266, 41.978996>,  <37.232212, 33.992458, 41.940868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866375, 33.835266, 41.978996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103791, -0.000306, 0.994599,
		-0.390832, 0.919546, 0.041068,
		-0.914592, -0.392983, 0.095321,
		36.591999, 33.717373, 42.007591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973717, 34.308140, 42.401882>,  <37.232212, 33.992458, 41.940868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973717, 34.308140, 42.401882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734280, 33.989330, 42.433971>,  <36.590618, 33.798042, 42.453224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734280, 33.989330, 42.433971>,  <36.973717, 34.308140, 42.401882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734280, 33.989330, 42.433971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099463, 0.025420, 0.994717,
		-0.794855, 0.603409, 0.064058,
		-0.598593, -0.797027, 0.080222,
		36.554703, 33.750221, 42.458038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404072, 34.456402, 42.915157>,  <36.973717, 34.308140, 42.401882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404072, 34.456402, 42.915157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422920, 34.057964, 42.885262>,  <36.434227, 33.818901, 42.867325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422920, 34.057964, 42.885262>,  <36.404072, 34.456402, 42.915157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422920, 34.057964, 42.885262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001929, -0.074732, 0.997202,
		-0.998887, -0.047130, -0.001600,
		0.047118, -0.996089, -0.074739,
		36.437054, 33.759136, 42.862839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029968, 34.227386, 43.453476>,  <36.404072, 34.456402, 42.915157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029968, 34.227386, 43.453476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241882, 33.896210, 43.379898>,  <36.369030, 33.697502, 43.335751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241882, 33.896210, 43.379898>,  <36.029968, 34.227386, 43.453476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241882, 33.896210, 43.379898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114550, -0.145049, 0.982771,
		-0.840362, -0.541727, 0.017997,
		0.529783, -0.827945, -0.183949,
		36.400818, 33.647827, 43.324715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778091, 33.791073, 43.958683>,  <36.029968, 34.227386, 43.453476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778091, 33.791073, 43.958683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128338, 33.634781, 43.845108>,  <36.338486, 33.541004, 43.776962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128338, 33.634781, 43.845108>,  <35.778091, 33.791073, 43.958683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128338, 33.634781, 43.845108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173660, -0.293879, 0.939935,
		-0.450703, -0.872334, -0.189473,
		0.875619, -0.390728, -0.283942,
		36.391022, 33.517563, 43.759926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904877, 33.145279, 44.323151>,  <35.778091, 33.791073, 43.958683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904877, 33.145279, 44.323151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271809, 33.276436, 44.232826>,  <36.491966, 33.355129, 44.178631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271809, 33.276436, 44.232826>,  <35.904877, 33.145279, 44.323151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271809, 33.276436, 44.232826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224160, 0.043367, 0.973587,
		0.329023, -0.943720, -0.033718,
		0.917331, 0.327891, -0.225813,
		36.547009, 33.374802, 44.165081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387691, 32.791821, 44.827946>,  <35.904877, 33.145279, 44.323151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387691, 32.791821, 44.827946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612423, 33.090618, 44.685757>,  <36.747261, 33.269897, 44.600445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612423, 33.090618, 44.685757>,  <36.387691, 32.791821, 44.827946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612423, 33.090618, 44.685757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380466, 0.148235, 0.912837,
		0.734574, -0.648098, -0.200922,
		0.561824, 0.746991, -0.355469,
		36.780972, 33.314716, 44.579117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032524, 32.664185, 45.146492>,  <36.387691, 32.791821, 44.827946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032524, 32.664185, 45.146492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054424, 33.044273, 45.023796>,  <37.067562, 33.272327, 44.950180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054424, 33.044273, 45.023796>,  <37.032524, 32.664185, 45.146492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054424, 33.044273, 45.023796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437327, 0.253346, 0.862879,
		0.897635, -0.181383, -0.401687,
		0.054746, 0.950219, -0.306736,
		37.070847, 33.329338, 44.931774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728630, 32.895229, 45.160480>,  <37.032524, 32.664185, 45.146492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728630, 32.895229, 45.160480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499428, 33.222866, 45.171535>,  <37.361908, 33.419449, 45.178169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499428, 33.222866, 45.171535>,  <37.728630, 32.895229, 45.160480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499428, 33.222866, 45.171535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396196, 0.247332, 0.884226,
		0.717424, 0.517613, -0.466241,
		-0.573003, 0.819087, 0.027634,
		37.327526, 33.468594, 45.179825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165913, 33.341610, 45.309212>,  <37.728630, 32.895229, 45.160480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165913, 33.341610, 45.309212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824322, 33.536415, 45.382477>,  <37.619370, 33.653297, 45.426437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824322, 33.536415, 45.382477>,  <38.165913, 33.341610, 45.309212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824322, 33.536415, 45.382477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366949, 0.314133, 0.875596,
		0.368884, 0.814950, -0.446969,
		-0.853975, 0.487009, 0.183166,
		37.568130, 33.682518, 45.437428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368149, 34.013428, 45.521294>,  <38.165913, 33.341610, 45.309212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368149, 34.013428, 45.521294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999947, 33.921532, 45.647709>,  <37.779022, 33.866394, 45.723560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999947, 33.921532, 45.647709>,  <38.368149, 34.013428, 45.521294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999947, 33.921532, 45.647709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242006, 0.299792, 0.922799,
		-0.306748, 0.925930, -0.220364,
		-0.920510, -0.229737, 0.316041,
		37.723793, 33.852612, 45.742519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232605, 34.539745, 45.971684>,  <38.368149, 34.013428, 45.521294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232605, 34.539745, 45.971684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960884, 34.261223, 46.064381>,  <37.797852, 34.094109, 46.119999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960884, 34.261223, 46.064381>,  <38.232605, 34.539745, 45.971684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960884, 34.261223, 46.064381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071062, 0.251895, 0.965142,
		-0.730413, 0.672089, -0.121631,
		-0.679299, -0.696308, 0.231747,
		37.757095, 34.052330, 46.133904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.830791, 34.894512, 46.486855>,  <38.232605, 34.539745, 45.971684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.830791, 34.894512, 46.486855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787998, 34.499317, 46.531460>,  <37.762321, 34.262199, 46.558224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787998, 34.499317, 46.531460>,  <37.830791, 34.894512, 46.486855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787998, 34.499317, 46.531460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228129, 0.133559, 0.964427,
		-0.967735, 0.077741, -0.239678,
		-0.106987, -0.987987, 0.111515,
		37.755901, 34.202923, 46.564915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212238, 34.830276, 46.894566>,  <37.830791, 34.894512, 46.486855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212238, 34.830276, 46.894566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384022, 34.471058, 46.932697>,  <37.487091, 34.255527, 46.955574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.384022, 34.471058, 46.932697>,  <37.212238, 34.830276, 46.894566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384022, 34.471058, 46.932697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350484, -0.068455, 0.934063,
		-0.832303, -0.434549, -0.344149,
		0.429455, -0.898043, 0.095327,
		37.512859, 34.201645, 46.961296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693455, 34.478146, 47.309803>,  <37.212238, 34.830276, 46.894566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693455, 34.478146, 47.309803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013233, 34.238865, 47.331852>,  <37.205101, 34.095299, 47.345081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.013233, 34.238865, 47.331852>,  <36.693455, 34.478146, 47.309803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013233, 34.238865, 47.331852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177849, -0.148037, 0.972859,
		-0.573803, -0.787555, -0.224738,
		0.799450, -0.598199, 0.055122,
		37.253067, 34.059406, 47.348389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434750, 33.776402, 47.575699>,  <36.693455, 34.478146, 47.309803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434750, 33.776402, 47.575699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818840, 33.835011, 47.670780>,  <37.049294, 33.870178, 47.727829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.818840, 33.835011, 47.670780>,  <36.434750, 33.776402, 47.575699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818840, 33.835011, 47.670780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199311, -0.236580, 0.950950,
		0.195574, -0.960500, -0.197965,
		0.960221, 0.146525, 0.237707,
		37.106907, 33.878967, 47.742092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703598, 33.260181, 47.995193>,  <36.434750, 33.776402, 47.575699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703598, 33.260181, 47.995193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945644, 33.570301, 48.067585>,  <37.090870, 33.756371, 48.111019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.945644, 33.570301, 48.067585>,  <36.703598, 33.260181, 47.995193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945644, 33.570301, 48.067585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135369, -0.123822, 0.983028,
		0.784546, -0.619344, 0.030025,
		0.605114, 0.775295, 0.180984,
		37.127178, 33.802891, 48.121880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323826, 33.068291, 48.426525>,  <36.703598, 33.260181, 47.995193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323826, 33.068291, 48.426525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248859, 33.450348, 48.518242>,  <37.203880, 33.679585, 48.573273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248859, 33.450348, 48.518242>,  <37.323826, 33.068291, 48.426525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248859, 33.450348, 48.518242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078341, -0.247216, 0.965788,
		0.979151, 0.163043, 0.121160,
		-0.187418, 0.955145, 0.229289,
		37.192635, 33.736893, 48.587029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776215, 33.324905, 48.994919>,  <37.323826, 33.068291, 48.426525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776215, 33.324905, 48.994919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408470, 33.482220, 48.990761>,  <37.187824, 33.576607, 48.988266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408470, 33.482220, 48.990761>,  <37.776215, 33.324905, 48.994919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408470, 33.482220, 48.990761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219846, -0.491655, 0.842581,
		0.326265, 0.776918, 0.538469,
		-0.919358, 0.393285, -0.010393,
		37.132664, 33.600204, 48.987644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492195, 32.933273, 49.477203>,  <37.776215, 33.324905, 48.994919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492195, 32.933273, 49.477203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213276, 33.216866, 49.435005>,  <37.045925, 33.387020, 49.409687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213276, 33.216866, 49.435005>,  <37.492195, 32.933273, 49.477203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213276, 33.216866, 49.435005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395465, -0.257777, 0.881566,
		0.597816, 0.656432, 0.460123,
		-0.697297, 0.708977, -0.105493,
		37.004086, 33.429558, 49.403358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475517, 33.253567, 50.140511>,  <37.492195, 32.933273, 49.477203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475517, 33.253567, 50.140511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119896, 33.341953, 49.980133>,  <36.906521, 33.394985, 49.883907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119896, 33.341953, 49.980133>,  <37.475517, 33.253567, 50.140511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119896, 33.341953, 49.980133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446264, -0.222972, 0.866678,
		0.102105, 0.949452, 0.296843,
		-0.889057, 0.220962, -0.400940,
		36.853180, 33.408241, 49.859852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233208, 33.770481, 50.538692>,  <37.475517, 33.253567, 50.140511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233208, 33.770481, 50.538692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919674, 33.595444, 50.362457>,  <36.731552, 33.490421, 50.256718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919674, 33.595444, 50.362457>,  <37.233208, 33.770481, 50.538692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919674, 33.595444, 50.362457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405150, -0.177312, 0.896891,
		-0.470594, 0.881518, -0.038307,
		-0.783833, -0.437592, -0.440589,
		36.684525, 33.464165, 50.230282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681011, 34.126190, 50.798409>,  <37.233208, 33.770481, 50.538692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681011, 34.126190, 50.798409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511032, 33.786591, 50.672798>,  <36.409042, 33.582829, 50.597431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.511032, 33.786591, 50.672798>,  <36.681011, 34.126190, 50.798409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511032, 33.786591, 50.672798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375263, -0.150472, 0.914623,
		-0.823769, 0.506514, -0.254655,
		-0.424951, -0.849001, -0.314030,
		36.383549, 33.531891, 50.578590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030045, 34.124855, 51.008804>,  <36.681011, 34.126190, 50.798409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030045, 34.124855, 51.008804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098717, 33.736538, 50.941769>,  <36.139919, 33.503548, 50.901546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098717, 33.736538, 50.941769>,  <36.030045, 34.124855, 51.008804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098717, 33.736538, 50.941769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337759, -0.217803, 0.915686,
		-0.925443, -0.100602, -0.365287,
		0.171681, -0.970794, -0.167585,
		36.150223, 33.445301, 50.891495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430569, 33.721638, 51.137573>,  <36.030045, 34.124855, 51.008804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430569, 33.721638, 51.137573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757675, 33.501713, 51.205658>,  <35.953938, 33.369759, 51.246510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.757675, 33.501713, 51.205658>,  <35.430569, 33.721638, 51.137573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757675, 33.501713, 51.205658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348536, -0.237719, 0.906649,
		-0.458025, -0.800748, -0.386027,
		0.817763, -0.549812, 0.170208,
		36.003006, 33.336769, 51.256721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197506, 33.100277, 51.406746>,  <35.430569, 33.721638, 51.137573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197506, 33.100277, 51.406746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588093, 33.103806, 51.492935>,  <35.822445, 33.105923, 51.544651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588093, 33.103806, 51.492935>,  <35.197506, 33.100277, 51.406746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588093, 33.103806, 51.492935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195366, -0.386926, 0.901177,
		0.091326, -0.922068, -0.376098,
		0.976469, 0.008824, 0.215478,
		35.881035, 33.106453, 51.557579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394718, 32.425858, 51.717083>,  <35.197506, 33.100277, 51.406746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394718, 32.425858, 51.717083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688927, 32.674698, 51.824413>,  <35.865452, 32.824001, 51.888813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688927, 32.674698, 51.824413>,  <35.394718, 32.425858, 51.717083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688927, 32.674698, 51.824413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081926, -0.311476, 0.946715,
		0.672533, -0.718309, -0.178130,
		0.735518, 0.622104, 0.268327,
		35.909584, 32.861328, 51.904911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866386, 32.053410, 52.161343>,  <35.394718, 32.425858, 51.717083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866386, 32.053410, 52.161343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862270, 32.444035, 52.247345>,  <35.859798, 32.678410, 52.298946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862270, 32.444035, 52.247345>,  <35.866386, 32.053410, 52.161343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862270, 32.444035, 52.247345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009281, -0.214915, 0.976589,
		0.999904, 0.012049, -0.006851,
		-0.010294, 0.976558, 0.215007,
		35.859180, 32.737003, 52.311848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480885, 32.433792, 52.551506>,  <35.866386, 32.053410, 52.161343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480885, 32.433792, 52.551506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129780, 32.600414, 52.646179>,  <35.919117, 32.700386, 52.702984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129780, 32.600414, 52.646179>,  <36.480885, 32.433792, 52.551506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129780, 32.600414, 52.646179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082079, -0.355965, 0.930888,
		0.472018, 0.836523, 0.278261,
		-0.877760, 0.416556, 0.236683,
		35.866451, 32.725380, 52.717182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.813431, 32.614887, 53.143658>,  <36.480885, 32.433792, 52.551506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.813431, 32.614887, 53.143658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414368, 32.597099, 53.122837>,  <36.174931, 32.586426, 53.110344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414368, 32.597099, 53.122837>,  <36.813431, 32.614887, 53.143658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414368, 32.597099, 53.122837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030032, -0.398909, 0.916499,
		-0.061522, 0.915911, 0.396638,
		-0.997654, -0.044473, -0.052049,
		36.115070, 32.583759, 53.107224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704025, 32.999844, 53.772598>,  <36.813431, 32.614887, 53.143658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704025, 32.999844, 53.772598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952358, 33.159344, 53.502613>,  <37.101357, 33.255043, 53.340622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952358, 33.159344, 53.502613>,  <36.704025, 32.999844, 53.772598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952358, 33.159344, 53.502613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780994, -0.389235, 0.488410,
		-0.067966, -0.830359, -0.553068,
		0.620829, 0.398748, -0.674960,
		37.138607, 33.278969, 53.300125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266327, 32.602516, 53.762081>,  <36.704025, 32.999844, 53.772598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266327, 32.602516, 53.762081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421631, 32.884136, 53.524235>,  <37.514812, 33.053108, 53.381527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.421631, 32.884136, 53.524235>,  <37.266327, 32.602516, 53.762081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421631, 32.884136, 53.524235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911641, -0.199079, 0.359554,
		0.134768, -0.681677, -0.719135,
		0.388264, 0.704049, -0.594615,
		37.538109, 33.095352, 53.345852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794579, 32.247673, 53.536407>,  <37.266327, 32.602516, 53.762081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794579, 32.247673, 53.536407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831017, 32.637909, 53.456482>,  <37.852879, 32.872051, 53.408527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831017, 32.637909, 53.456482>,  <37.794579, 32.247673, 53.536407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831017, 32.637909, 53.456482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962537, -0.034797, 0.268908,
		0.255392, -0.216819, -0.942212,
		0.091091, 0.975591, -0.199810,
		37.858345, 32.930588, 53.396538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312435, 32.414047, 52.927979>,  <37.794579, 32.247673, 53.536407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312435, 32.414047, 52.927979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286968, 32.669987, 53.234322>,  <38.271687, 32.823551, 53.418125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286968, 32.669987, 53.234322>,  <38.312435, 32.414047, 52.927979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286968, 32.669987, 53.234322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905972, -0.284776, 0.313238,
		0.418524, 0.713786, -0.561558,
		-0.063666, 0.639852, 0.765856,
		38.267868, 32.861942, 53.464077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503151, 31.601049, 52.650665>,  <38.312435, 32.414047, 52.927979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503151, 31.601049, 52.650665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459404, 31.204121, 52.673756>,  <38.433155, 30.965963, 52.687611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459404, 31.204121, 52.673756>,  <38.503151, 31.601049, 52.650665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459404, 31.204121, 52.673756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940419, -0.084493, 0.329353,
		-0.321948, 0.090306, 0.942441,
		-0.109372, -0.992323, 0.057723,
		38.426594, 30.906424, 52.691074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014168, 31.331669, 52.213898>,  <38.503151, 31.601049, 52.650665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014168, 31.331669, 52.213898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685036, 31.300619, 51.988716>,  <37.487556, 31.281990, 51.853607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685036, 31.300619, 51.988716>,  <38.014168, 31.331669, 52.213898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685036, 31.300619, 51.988716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536259, -0.433912, -0.723980,
		-0.188075, -0.897605, 0.398664,
		-0.822833, -0.077625, -0.562957,
		37.438187, 31.277332, 51.819828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938492, 30.547848, 51.966541>,  <38.014168, 31.331669, 52.213898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938492, 30.547848, 51.966541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750164, 30.796772, 51.716404>,  <37.637169, 30.946127, 51.566322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.750164, 30.796772, 51.716404>,  <37.938492, 30.547848, 51.966541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750164, 30.796772, 51.716404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420254, -0.465037, -0.779184,
		-0.775703, -0.629660, -0.042579,
		-0.470820, 0.622309, -0.625347,
		37.608917, 30.983465, 51.528801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585598, 30.124832, 51.457302>,  <37.938492, 30.547848, 51.966541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585598, 30.124832, 51.457302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641251, 30.488552, 51.300426>,  <37.674644, 30.706785, 51.206303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641251, 30.488552, 51.300426>,  <37.585598, 30.124832, 51.457302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641251, 30.488552, 51.300426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320934, -0.416072, -0.850815,
		-0.936826, -0.007488, -0.349715,
		0.139136, 0.909301, -0.392190,
		37.682991, 30.761343, 51.182770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311661, 30.037518, 50.834179>,  <37.585598, 30.124832, 51.457302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311661, 30.037518, 50.834179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532856, 30.368898, 50.798698>,  <37.665573, 30.567726, 50.777409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532856, 30.368898, 50.798698>,  <37.311661, 30.037518, 50.834179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532856, 30.368898, 50.798698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106771, -0.176050, -0.978574,
		-0.826316, 0.531673, -0.185809,
		0.552993, 0.828451, -0.088706,
		37.698753, 30.617434, 50.772087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026276, 30.438431, 50.337540>,  <37.311661, 30.037518, 50.834179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026276, 30.438431, 50.337540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408047, 30.557024, 50.351234>,  <37.637108, 30.628180, 50.359451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408047, 30.557024, 50.351234>,  <37.026276, 30.438431, 50.337540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408047, 30.557024, 50.351234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029524, 0.020362, -0.999357,
		-0.296990, 0.954821, 0.010681,
		0.954424, 0.296483, 0.034237,
		37.694374, 30.645969, 50.361507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092896, 30.755690, 49.693657>,  <37.026276, 30.438431, 50.337540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092896, 30.755690, 49.693657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463215, 30.676510, 49.822472>,  <37.685406, 30.629002, 49.899761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.463215, 30.676510, 49.822472>,  <37.092896, 30.755690, 49.693657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463215, 30.676510, 49.822472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301014, -0.129261, -0.944818,
		0.228652, 0.971652, -0.060085,
		0.925802, -0.197948, 0.322037,
		37.740955, 30.617125, 49.919083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499527, 31.169966, 49.316010>,  <37.092896, 30.755690, 49.693657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499527, 31.169966, 49.316010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716923, 30.862741, 49.451485>,  <37.847359, 30.678408, 49.532768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716923, 30.862741, 49.451485>,  <37.499527, 31.169966, 49.316010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716923, 30.862741, 49.451485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323663, -0.180534, -0.928789,
		0.774509, 0.614404, 0.150475,
		0.543486, -0.768059, 0.338685,
		37.879967, 30.632324, 49.553089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927147, 31.028496, 48.771461>,  <37.499527, 31.169966, 49.316010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927147, 31.028496, 48.771461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993568, 30.713406, 49.008751>,  <38.033421, 30.524351, 49.151127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.993568, 30.713406, 49.008751>,  <37.927147, 31.028496, 48.771461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993568, 30.713406, 49.008751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370519, -0.507659, -0.777816,
		0.913861, 0.348962, 0.207568,
		0.166054, -0.787723, 0.593227,
		38.043385, 30.477089, 49.186718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429306, 30.771284, 48.451351>,  <37.927147, 31.028496, 48.771461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429306, 30.771284, 48.451351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262428, 30.478918, 48.667393>,  <38.162304, 30.303497, 48.797016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262428, 30.478918, 48.667393>,  <38.429306, 30.771284, 48.451351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262428, 30.478918, 48.667393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104365, -0.551830, -0.827400,
		0.902806, -0.401553, 0.153937,
		-0.417192, -0.730916, 0.540104,
		38.137272, 30.259644, 48.829422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787823, 30.198183, 48.266407>,  <38.429306, 30.771284, 48.451351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787823, 30.198183, 48.266407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461353, 30.042313, 48.437061>,  <38.265472, 29.948790, 48.539455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461353, 30.042313, 48.437061>,  <38.787823, 30.198183, 48.266407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461353, 30.042313, 48.437061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068421, -0.667992, -0.741017,
		0.573747, -0.633986, 0.518533,
		-0.816170, -0.389678, 0.426636,
		38.216503, 29.925409, 48.565052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822113, 29.519327, 48.009594>,  <38.787823, 30.198183, 48.266407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822113, 29.519327, 48.009594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440807, 29.556273, 48.124660>,  <38.212025, 29.578440, 48.193699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.440807, 29.556273, 48.124660>,  <38.822113, 29.519327, 48.009594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440807, 29.556273, 48.124660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297906, -0.445956, -0.844023,
		0.050330, -0.890277, 0.452631,
		-0.953268, 0.092362, 0.287663,
		38.154827, 29.583981, 48.210960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553181, 28.902712, 47.808697>,  <38.822113, 29.519327, 48.009594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553181, 28.902712, 47.808697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233044, 29.140236, 47.841789>,  <38.040962, 29.282751, 47.861645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.233044, 29.140236, 47.841789>,  <38.553181, 28.902712, 47.808697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233044, 29.140236, 47.841789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262883, -0.223551, -0.938572,
		-0.538841, -0.772925, 0.335020,
		-0.800340, 0.593812, 0.082731,
		37.992943, 29.318378, 47.866608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081024, 28.572783, 47.433929>,  <38.553181, 28.902712, 47.808697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081024, 28.572783, 47.433929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916721, 28.937040, 47.451828>,  <37.818138, 29.155596, 47.462566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916721, 28.937040, 47.451828>,  <38.081024, 28.572783, 47.433929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916721, 28.937040, 47.451828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207448, -0.045554, -0.977185,
		-0.887830, -0.410671, 0.207623,
		-0.410759, 0.910645, 0.044749,
		37.793495, 29.210234, 47.465252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444214, 28.577124, 46.979015>,  <38.081024, 28.572783, 47.433929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444214, 28.577124, 46.979015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499596, 28.971914, 47.011784>,  <37.532825, 29.208788, 47.031445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499596, 28.971914, 47.011784>,  <37.444214, 28.577124, 46.979015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499596, 28.971914, 47.011784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276840, 0.117984, -0.953645,
		-0.950890, 0.109355, 0.289569,
		0.138450, 0.986976, 0.081916,
		37.541130, 29.268007, 47.036358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838997, 28.887449, 46.731316>,  <37.444214, 28.577124, 46.979015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838997, 28.887449, 46.731316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135567, 29.153189, 46.693508>,  <37.313507, 29.312632, 46.670822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135567, 29.153189, 46.693508>,  <36.838997, 28.887449, 46.731316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135567, 29.153189, 46.693508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333596, 0.242696, -0.910941,
		-0.582241, 0.706925, 0.401564,
		0.741424, 0.664347, -0.094520,
		37.357994, 29.352493, 46.665154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513145, 29.593494, 46.566166>,  <36.838997, 28.887449, 46.731316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513145, 29.593494, 46.566166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890160, 29.564377, 46.435738>,  <37.116367, 29.546906, 46.357479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890160, 29.564377, 46.435738>,  <36.513145, 29.593494, 46.566166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890160, 29.564377, 46.435738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309742, 0.175451, -0.934493,
		0.125236, 0.981793, 0.142821,
		0.942537, -0.072795, -0.326075,
		37.172920, 29.542538, 46.337914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671890, 30.169868, 46.115559>,  <36.513145, 29.593494, 46.566166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671890, 30.169868, 46.115559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947369, 29.897253, 46.016598>,  <37.112656, 29.733685, 45.957222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947369, 29.897253, 46.016598>,  <36.671890, 30.169868, 46.115559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947369, 29.897253, 46.016598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198373, 0.151090, -0.968411,
		0.697389, 0.716016, -0.031145,
		0.688692, -0.681538, -0.247407,
		37.153976, 29.692791, 45.942375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062073, 30.430849, 45.509136>,  <36.671890, 30.169868, 46.115559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062073, 30.430849, 45.509136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160973, 30.043392, 45.499359>,  <37.220314, 29.810919, 45.493492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160973, 30.043392, 45.499359>,  <37.062073, 30.430849, 45.509136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160973, 30.043392, 45.499359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105032, -0.001713, -0.994468,
		0.963242, 0.248451, -0.102162,
		0.247252, -0.968643, -0.024445,
		37.235149, 29.752800, 45.492027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584129, 30.470312, 45.017342>,  <37.062073, 30.430849, 45.509136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584129, 30.470312, 45.017342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427242, 30.102968, 45.038452>,  <37.333111, 29.882563, 45.051117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427242, 30.102968, 45.038452>,  <37.584129, 30.470312, 45.017342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427242, 30.102968, 45.038452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174279, 0.017855, -0.984534,
		0.903213, -0.395347, -0.167053,
		-0.392216, -0.918358, 0.052773,
		37.309578, 29.827461, 45.054283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790173, 30.119719, 44.399616>,  <37.584129, 30.470312, 45.017342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790173, 30.119719, 44.399616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471924, 29.900368, 44.502590>,  <37.280975, 29.768757, 44.564373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471924, 29.900368, 44.502590>,  <37.790173, 30.119719, 44.399616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471924, 29.900368, 44.502590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347825, 0.065596, -0.935262,
		0.495988, -0.833656, -0.242928,
		-0.795622, -0.548375, 0.257432,
		37.233238, 29.735855, 44.579819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682648, 29.670805, 43.814854>,  <37.790173, 30.119719, 44.399616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682648, 29.670805, 43.814854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341919, 29.650785, 44.023430>,  <37.137482, 29.638773, 44.148575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341919, 29.650785, 44.023430>,  <37.682648, 29.670805, 43.814854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341919, 29.650785, 44.023430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521746, -0.007826, -0.853065,
		0.046782, -0.998716, -0.019450,
		-0.851817, -0.050056, 0.521442,
		37.086372, 29.635771, 44.179863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258411, 29.135736, 43.486965>,  <37.682648, 29.670805, 43.814854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258411, 29.135736, 43.486965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022839, 29.388233, 43.688835>,  <36.881496, 29.539732, 43.809956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.022839, 29.388233, 43.688835>,  <37.258411, 29.135736, 43.486965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022839, 29.388233, 43.688835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657598, -0.011269, -0.753285,
		-0.469818, -0.775504, 0.421740,
		-0.588928, 0.631242, 0.504676,
		36.846161, 29.577606, 43.840237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557751, 28.870678, 43.380882>,  <37.258411, 29.135736, 43.486965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557751, 28.870678, 43.380882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492012, 29.250187, 43.488827>,  <36.452568, 29.477892, 43.553593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492012, 29.250187, 43.488827>,  <36.557751, 28.870678, 43.380882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492012, 29.250187, 43.488827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727655, 0.068092, -0.682555,
		-0.665963, -0.308541, 0.679187,
		-0.164349, 0.948771, 0.269858,
		36.442707, 29.534819, 43.569782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778046, 28.924370, 43.367355>,  <36.557751, 28.870678, 43.380882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778046, 28.924370, 43.367355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910248, 29.301872, 43.363628>,  <35.989571, 29.528374, 43.361393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910248, 29.301872, 43.363628>,  <35.778046, 28.924370, 43.367355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910248, 29.301872, 43.363628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749316, 0.256387, -0.610566,
		-0.573839, 0.208774, 0.791910,
		0.330506, 0.943758, -0.009313,
		36.009399, 29.584999, 43.360836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128124, 29.390360, 43.443279>,  <35.778046, 28.924370, 43.367355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128124, 29.390360, 43.443279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423302, 29.614405, 43.292698>,  <35.600407, 29.748831, 43.202351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423302, 29.614405, 43.292698>,  <35.128124, 29.390360, 43.443279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423302, 29.614405, 43.292698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604169, 0.299757, -0.738326,
		-0.300701, 0.772283, 0.559605,
		0.737943, 0.560111, -0.376452,
		35.644684, 29.782438, 43.179764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796967, 30.005743, 43.250076>,  <35.128124, 29.390360, 43.443279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796967, 30.005743, 43.250076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142040, 29.983622, 43.048992>,  <35.349083, 29.970348, 42.928341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142040, 29.983622, 43.048992>,  <34.796967, 30.005743, 43.250076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142040, 29.983622, 43.048992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483526, 0.201189, -0.851895,
		0.148252, 0.977990, 0.146822,
		0.862684, -0.055303, -0.502710,
		35.400845, 29.967031, 42.898178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781910, 30.581091, 42.805042>,  <34.796967, 30.005743, 43.250076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781910, 30.581091, 42.805042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095669, 30.391663, 42.644814>,  <35.283924, 30.278006, 42.548676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095669, 30.391663, 42.644814>,  <34.781910, 30.581091, 42.805042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095669, 30.391663, 42.644814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222617, 0.387831, -0.894443,
		0.578936, 0.790770, 0.198787,
		0.784395, -0.473572, -0.400568,
		35.330986, 30.249592, 42.524643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177525, 31.010307, 42.431858>,  <34.781910, 30.581091, 42.805042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177525, 31.010307, 42.431858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205486, 30.638823, 42.286198>,  <35.222263, 30.415932, 42.198803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205486, 30.638823, 42.286198>,  <35.177525, 31.010307, 42.431858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205486, 30.638823, 42.286198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205360, 0.343825, -0.916303,
		0.976187, 0.138835, -0.166686,
		0.069904, -0.928714, -0.364148,
		35.226456, 30.360209, 42.176952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475224, 31.091190, 41.777714>,  <35.177525, 31.010307, 42.431858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475224, 31.091190, 41.777714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395554, 30.702972, 41.723492>,  <35.347752, 30.470041, 41.690956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395554, 30.702972, 41.723492>,  <35.475224, 31.091190, 41.777714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395554, 30.702972, 41.723492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253848, 0.184708, -0.949444,
		0.946515, -0.154694, -0.283160,
		-0.199175, -0.970543, -0.135560,
		35.335800, 30.411810, 41.682823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921928, 30.851631, 41.272327>,  <35.475224, 31.091190, 41.777714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921928, 30.851631, 41.272327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602959, 30.610266, 41.273495>,  <35.411575, 30.465446, 41.274197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602959, 30.610266, 41.273495>,  <35.921928, 30.851631, 41.272327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602959, 30.610266, 41.273495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137262, 0.176683, -0.974650,
		0.587600, -0.777610, -0.223716,
		-0.797424, -0.603412, 0.002918,
		35.363731, 30.429243, 41.274368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953560, 30.443308, 40.615719>,  <35.921928, 30.851631, 41.272327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953560, 30.443308, 40.615719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571354, 30.379446, 40.714916>,  <35.342030, 30.341129, 40.774433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571354, 30.379446, 40.714916>,  <35.953560, 30.443308, 40.615719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571354, 30.379446, 40.714916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264239, 0.089889, -0.960259,
		0.131028, -0.983070, -0.128080,
		-0.955515, -0.159664, 0.247988,
		35.284698, 30.331549, 40.789314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759846, 29.929760, 40.274303>,  <35.953560, 30.443308, 40.615719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759846, 29.929760, 40.274303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416470, 30.117544, 40.356956>,  <35.210445, 30.230215, 40.406548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416470, 30.117544, 40.356956>,  <35.759846, 29.929760, 40.274303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416470, 30.117544, 40.356956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244156, -0.019717, -0.969536,
		-0.451084, -0.882734, 0.131547,
		-0.858435, 0.469460, 0.206631,
		35.158939, 30.258383, 40.418945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290825, 29.602665, 39.756512>,  <35.759846, 29.929760, 40.274303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290825, 29.602665, 39.756512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147419, 29.956697, 39.875237>,  <35.061375, 30.169117, 39.946472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147419, 29.956697, 39.875237>,  <35.290825, 29.602665, 39.756512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147419, 29.956697, 39.875237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321120, 0.181624, -0.929459,
		-0.876556, -0.428538, 0.219102,
		-0.358514, 0.885081, 0.296816,
		35.039864, 30.222221, 39.964283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671906, 29.688566, 39.279991>,  <35.290825, 29.602665, 39.756512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671906, 29.688566, 39.279991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732185, 30.046350, 39.448387>,  <34.768353, 30.261021, 39.549423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732185, 30.046350, 39.448387>,  <34.671906, 29.688566, 39.279991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732185, 30.046350, 39.448387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288350, 0.447107, -0.846729,
		-0.945591, 0.006213, 0.325298,
		0.150703, 0.894459, 0.420989,
		34.777397, 30.314688, 39.574684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965839, 30.022312, 39.309849>,  <34.671906, 29.688566, 39.279991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965839, 30.022312, 39.309849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237061, 30.316313, 39.311275>,  <34.399796, 30.492714, 39.312130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237061, 30.316313, 39.311275>,  <33.965839, 30.022312, 39.309849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237061, 30.316313, 39.311275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422134, 0.393391, -0.816729,
		-0.601702, 0.552281, 0.577010,
		0.678055, 0.735003, 0.003568,
		34.440475, 30.536814, 39.312347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594524, 30.743666, 39.300297>,  <33.965839, 30.022312, 39.309849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594524, 30.743666, 39.300297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962753, 30.806408, 39.157223>,  <34.183693, 30.844053, 39.071381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962753, 30.806408, 39.157223>,  <33.594524, 30.743666, 39.300297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962753, 30.806408, 39.157223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388406, 0.463787, -0.796268,
		0.040991, 0.871951, 0.487875,
		0.920576, 0.156854, -0.357682,
		34.238926, 30.853464, 39.049919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544819, 31.383823, 38.974651>,  <33.594524, 30.743666, 39.300297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544819, 31.383823, 38.974651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909370, 31.298653, 38.833775>,  <34.128101, 31.247549, 38.749249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909370, 31.298653, 38.833775>,  <33.544819, 31.383823, 38.974651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909370, 31.298653, 38.833775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196380, 0.527065, -0.826824,
		0.361684, 0.822718, 0.438543,
		0.911383, -0.212928, -0.352196,
		34.182785, 31.234774, 38.728115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873760, 32.027985, 38.849747>,  <33.544819, 31.383823, 38.974651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873760, 32.027985, 38.849747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021088, 31.723728, 38.635918>,  <34.109486, 31.541176, 38.507618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021088, 31.723728, 38.635918>,  <33.873760, 32.027985, 38.849747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021088, 31.723728, 38.635918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148780, 0.519365, -0.841501,
		0.917717, 0.389477, 0.078126,
		0.368322, -0.760636, -0.534576,
		34.131584, 31.495537, 38.475544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208256, 32.357845, 38.402752>,  <33.873760, 32.027985, 38.849747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208256, 32.357845, 38.402752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132362, 32.002968, 38.234516>,  <34.086826, 31.790043, 38.133575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132362, 32.002968, 38.234516>,  <34.208256, 32.357845, 38.402752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132362, 32.002968, 38.234516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306903, 0.460494, -0.832920,
		0.932637, -0.028956, -0.359653,
		-0.189736, -0.887191, -0.420587,
		34.075443, 31.736811, 38.108341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436260, 32.401970, 37.780064>,  <34.208256, 32.357845, 38.402752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436260, 32.401970, 37.780064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165871, 32.107712, 37.762680>,  <34.003635, 31.931158, 37.752251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165871, 32.107712, 37.762680>,  <34.436260, 32.401970, 37.780064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165871, 32.107712, 37.762680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488839, 0.491761, -0.720560,
		0.551446, -0.465836, -0.692029,
		-0.675976, -0.735641, -0.043461,
		33.963078, 31.887020, 37.749641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098747, 32.640728, 38.062336>,  <34.436260, 32.401970, 37.780064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098747, 32.640728, 38.062336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462383, 32.697609, 37.905701>,  <35.680565, 32.731739, 37.811722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462383, 32.697609, 37.905701>,  <35.098747, 32.640728, 38.062336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462383, 32.697609, 37.905701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385702, -0.642554, 0.662087,
		-0.157464, -0.752930, -0.638985,
		0.909087, 0.142203, -0.391586,
		35.735107, 32.740269, 37.788223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440010, 32.037594, 38.182346>,  <35.098747, 32.640728, 38.062336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440010, 32.037594, 38.182346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763493, 32.252567, 38.086720>,  <35.957584, 32.381554, 38.029343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.763493, 32.252567, 38.086720>,  <35.440010, 32.037594, 38.182346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763493, 32.252567, 38.086720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569341, -0.613083, 0.547704,
		0.147789, -0.579043, -0.801790,
		0.808708, 0.537437, -0.239066,
		36.006104, 32.413799, 38.014999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908932, 31.574505, 38.016239>,  <35.440010, 32.037594, 38.182346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908932, 31.574505, 38.016239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106316, 31.900055, 38.138947>,  <36.224747, 32.095387, 38.212570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106316, 31.900055, 38.138947>,  <35.908932, 31.574505, 38.016239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106316, 31.900055, 38.138947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581765, -0.571038, 0.579192,
		0.646568, -0.107339, -0.755267,
		0.493456, 0.813876, 0.306769,
		36.254353, 32.144218, 38.230976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576305, 31.316448, 38.151226>,  <35.908932, 31.574505, 38.016239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576305, 31.316448, 38.151226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604996, 31.679136, 38.317459>,  <36.622208, 31.896749, 38.417198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604996, 31.679136, 38.317459>,  <36.576305, 31.316448, 38.151226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604996, 31.679136, 38.317459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602400, -0.371462, 0.706492,
		0.794966, 0.199678, -0.572851,
		0.071721, 0.906722, 0.415585,
		36.626511, 31.951153, 38.442135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322807, 31.577564, 38.231987>,  <36.576305, 31.316448, 38.151226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322807, 31.577564, 38.231987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089809, 31.736912, 38.515396>,  <36.950012, 31.832521, 38.685440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.089809, 31.736912, 38.515396>,  <37.322807, 31.577564, 38.231987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089809, 31.736912, 38.515396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649453, -0.296070, 0.700395,
		0.488789, 0.868127, -0.086264,
		-0.582491, 0.398370, 0.708523,
		36.915062, 31.856422, 38.727955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803947, 31.662849, 38.696438>,  <37.322807, 31.577564, 38.231987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803947, 31.662849, 38.696438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492359, 31.746368, 38.932949>,  <37.305405, 31.796480, 39.074856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492359, 31.746368, 38.932949>,  <37.803947, 31.662849, 38.696438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492359, 31.746368, 38.932949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546129, -0.237443, 0.803345,
		0.308130, 0.948696, 0.070931,
		-0.778973, 0.208797, 0.591274,
		37.258667, 31.809008, 39.110332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034031, 32.092079, 39.328030>,  <37.803947, 31.662849, 38.696438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034031, 32.092079, 39.328030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688389, 31.912859, 39.419739>,  <37.481003, 31.805326, 39.474766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.688389, 31.912859, 39.419739>,  <38.034031, 32.092079, 39.328030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688389, 31.912859, 39.419739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323379, -0.145180, 0.935066,
		-0.385673, 0.882140, 0.270341,
		-0.864108, -0.448052, 0.229273,
		37.429157, 31.778442, 39.488522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775925, 32.304859, 40.043274>,  <38.034031, 32.092079, 39.328030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775925, 32.304859, 40.043274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590828, 31.957222, 39.973354>,  <37.479771, 31.748640, 39.931404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590828, 31.957222, 39.973354>,  <37.775925, 32.304859, 40.043274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590828, 31.957222, 39.973354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368271, -0.367819, 0.853865,
		-0.806379, 0.330745, 0.490266,
		-0.462741, -0.869090, -0.174798,
		37.452007, 31.696495, 39.920914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557484, 32.079865, 40.679932>,  <37.775925, 32.304859, 40.043274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557484, 32.079865, 40.679932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520905, 31.743132, 40.467155>,  <37.498959, 31.541094, 40.339489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520905, 31.743132, 40.467155>,  <37.557484, 32.079865, 40.679932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520905, 31.743132, 40.467155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389194, -0.521908, 0.759039,
		-0.916605, -0.137617, 0.375362,
		-0.091448, -0.841828, -0.531943,
		37.493469, 31.490583, 40.307571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291122, 31.595245, 41.150986>,  <37.557484, 32.079865, 40.679932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291122, 31.595245, 41.150986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437885, 31.354986, 40.866844>,  <37.525944, 31.210831, 40.696362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437885, 31.354986, 40.866844>,  <37.291122, 31.595245, 41.150986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437885, 31.354986, 40.866844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326025, -0.632147, 0.702921,
		-0.871255, -0.489501, -0.036114,
		0.366910, -0.600649, -0.710351,
		37.547958, 31.174791, 40.653740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232723, 30.908669, 41.413395>,  <37.291122, 31.595245, 41.150986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232723, 30.908669, 41.413395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519466, 30.882126, 41.135773>,  <37.691513, 30.866201, 40.969200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519466, 30.882126, 41.135773>,  <37.232723, 30.908669, 41.413395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519466, 30.882126, 41.135773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580650, -0.494233, 0.646977,
		-0.385953, -0.866793, -0.315768,
		0.716858, -0.066353, -0.694054,
		37.734524, 30.862219, 40.927555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410339, 30.171785, 41.394012>,  <37.232723, 30.908669, 41.413395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410339, 30.171785, 41.394012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707409, 30.408953, 41.269508>,  <37.885651, 30.551252, 41.194805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707409, 30.408953, 41.269508>,  <37.410339, 30.171785, 41.394012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707409, 30.408953, 41.269508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615281, -0.420724, 0.666649,
		0.264313, -0.686616, -0.677272,
		0.742676, 0.592917, -0.311258,
		37.930210, 30.586828, 41.176132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982365, 29.758734, 41.452522>,  <37.410339, 30.171785, 41.394012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982365, 29.758734, 41.452522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122990, 30.133137, 41.445656>,  <38.207363, 30.357779, 41.441536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122990, 30.133137, 41.445656>,  <37.982365, 29.758734, 41.452522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122990, 30.133137, 41.445656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671181, -0.239228, 0.701631,
		0.652626, -0.258186, -0.712333,
		0.351561, 0.936007, -0.017163,
		38.228458, 30.413939, 41.440506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707588, 29.692095, 41.628483>,  <37.982365, 29.758734, 41.452522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707588, 29.692095, 41.628483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596264, 30.071474, 41.689125>,  <38.529469, 30.299103, 41.725510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596264, 30.071474, 41.689125>,  <38.707588, 29.692095, 41.628483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596264, 30.071474, 41.689125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488621, 0.003920, 0.872488,
		0.826917, 0.316901, -0.464524,
		-0.278314, 0.948450, 0.151603,
		38.512772, 30.356009, 41.734608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353394, 30.001272, 41.929325>,  <38.707588, 29.692095, 41.628483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.353394, 30.001272, 41.929325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050560, 30.250557, 42.007732>,  <38.868858, 30.400127, 42.054775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.050560, 30.250557, 42.007732>,  <39.353394, 30.001272, 41.929325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050560, 30.250557, 42.007732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288686, 0.049973, 0.956119,
		0.586071, 0.780453, -0.217747,
		-0.757087, 0.623214, 0.196018,
		38.823433, 30.437521, 42.066540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704018, 30.489826, 42.287510>,  <39.353394, 30.001272, 41.929325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704018, 30.489826, 42.287510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314487, 30.503551, 42.377388>,  <39.080769, 30.511786, 42.431316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314487, 30.503551, 42.377388>,  <39.704018, 30.489826, 42.287510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314487, 30.503551, 42.377388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227062, 0.101308, 0.968597,
		0.010471, 0.994263, -0.106447,
		-0.973824, 0.034312, 0.224698,
		39.022339, 30.513845, 42.444798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585262, 30.999712, 42.760460>,  <39.704018, 30.489826, 42.287510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585262, 30.999712, 42.760460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228973, 30.833920, 42.835106>,  <39.015202, 30.734444, 42.879894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228973, 30.833920, 42.835106>,  <39.585262, 30.999712, 42.760460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228973, 30.833920, 42.835106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114739, 0.192238, 0.974618,
		-0.439835, 0.889522, -0.123673,
		-0.890719, -0.414481, 0.186616,
		38.961758, 30.709576, 42.891090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321663, 31.507536, 43.209888>,  <39.585262, 30.999712, 42.760460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321663, 31.507536, 43.209888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120590, 31.163353, 43.243176>,  <38.999947, 30.956842, 43.263149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120590, 31.163353, 43.243176>,  <39.321663, 31.507536, 43.209888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120590, 31.163353, 43.243176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113709, 0.029616, 0.993073,
		-0.856963, 0.508659, 0.082954,
		-0.502678, -0.860459, 0.083219,
		38.969788, 30.905216, 43.268143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654907, 31.595436, 43.609566>,  <39.321663, 31.507536, 43.209888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654907, 31.595436, 43.609566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799709, 31.225363, 43.655159>,  <38.886589, 31.003319, 43.682514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799709, 31.225363, 43.655159>,  <38.654907, 31.595436, 43.609566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799709, 31.225363, 43.655159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278887, 0.224165, 0.933794,
		-0.889482, -0.306246, 0.339169,
		0.362001, -0.925183, 0.113983,
		38.908310, 30.947807, 43.689354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574417, 31.561476, 44.370522>,  <38.654907, 31.595436, 43.609566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574417, 31.561476, 44.370522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769722, 31.223677, 44.282497>,  <38.886906, 31.020996, 44.229683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769722, 31.223677, 44.282497>,  <38.574417, 31.561476, 44.370522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769722, 31.223677, 44.282497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315572, -0.064242, 0.946725,
		-0.813645, -0.531690, 0.235134,
		0.488258, -0.844500, -0.220056,
		38.916199, 30.970327, 44.216480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265663, 31.017908, 44.762112>,  <38.574417, 31.561476, 44.370522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265663, 31.017908, 44.762112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643349, 30.923634, 44.670109>,  <38.869961, 30.867069, 44.614906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643349, 30.923634, 44.670109>,  <38.265663, 31.017908, 44.762112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643349, 30.923634, 44.670109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212673, -0.096876, 0.972309,
		-0.251443, -0.966988, -0.041348,
		0.944217, -0.235687, -0.230011,
		38.926613, 30.852928, 44.601105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448040, 30.398842, 45.023628>,  <38.265663, 31.017908, 44.762112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448040, 30.398842, 45.023628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767662, 30.638557, 45.004200>,  <38.959435, 30.782387, 44.992542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767662, 30.638557, 45.004200>,  <38.448040, 30.398842, 45.023628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767662, 30.638557, 45.004200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064734, -0.005440, 0.997888,
		0.597761, -0.800513, -0.043141,
		0.799057, 0.599292, -0.048568,
		39.007378, 30.818344, 44.989628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111889, 30.040384, 45.284145>,  <38.448040, 30.398842, 45.023628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111889, 30.040384, 45.284145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120190, 30.439194, 45.313835>,  <39.125172, 30.678480, 45.331650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.120190, 30.439194, 45.313835>,  <39.111889, 30.040384, 45.284145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120190, 30.439194, 45.313835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211051, -0.076941, 0.974442,
		0.977255, -0.004558, -0.212020,
		0.020754, 0.997025, 0.074229,
		39.126415, 30.738302, 45.336105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672192, 30.105528, 45.691174>,  <39.111889, 30.040384, 45.284145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672192, 30.105528, 45.691174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482811, 30.457243, 45.711948>,  <39.369183, 30.668272, 45.724411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482811, 30.457243, 45.711948>,  <39.672192, 30.105528, 45.691174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482811, 30.457243, 45.711948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162162, 0.029058, 0.986336,
		0.865765, 0.475402, -0.156345,
		-0.473449, 0.879289, 0.051934,
		39.340775, 30.721029, 45.727528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024094, 30.447704, 46.172054>,  <39.672192, 30.105528, 45.691174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024094, 30.447704, 46.172054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699493, 30.679981, 46.145916>,  <39.504734, 30.819347, 46.130234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699493, 30.679981, 46.145916>,  <40.024094, 30.447704, 46.172054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699493, 30.679981, 46.145916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194505, 0.373858, 0.906861,
		0.551037, 0.723205, -0.416332,
		-0.811496, 0.580693, -0.065343,
		39.456043, 30.854189, 46.126312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243092, 31.227968, 46.332691>,  <40.024094, 30.447704, 46.172054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243092, 31.227968, 46.332691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856720, 31.157240, 46.408283>,  <39.624897, 31.114803, 46.453640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856720, 31.157240, 46.408283>,  <40.243092, 31.227968, 46.332691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856720, 31.157240, 46.408283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096282, 0.432275, 0.896587,
		-0.240228, 0.884236, -0.400522,
		-0.965930, -0.176822, 0.188981,
		39.566940, 31.104193, 46.464977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046268, 31.821054, 46.601322>,  <40.243092, 31.227968, 46.332691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046268, 31.821054, 46.601322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788898, 31.544353, 46.732456>,  <39.634476, 31.378332, 46.811138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.788898, 31.544353, 46.732456>,  <40.046268, 31.821054, 46.601322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788898, 31.544353, 46.732456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206832, 0.255238, 0.944497,
		-0.737035, 0.675524, -0.021151,
		-0.643428, -0.691752, 0.327839,
		39.595871, 31.336828, 46.830807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570503, 32.193798, 47.034592>,  <40.046268, 31.821054, 46.601322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570503, 32.193798, 47.034592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562866, 31.806625, 47.134785>,  <39.558285, 31.574322, 47.194901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.562866, 31.806625, 47.134785>,  <39.570503, 32.193798, 47.034592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562866, 31.806625, 47.134785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120263, 0.246484, 0.961656,
		-0.992558, 0.048483, 0.111701,
		-0.019091, -0.967933, 0.250481,
		39.557140, 31.516245, 47.209930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341190, 32.300499, 47.651833>,  <39.570503, 32.193798, 47.034592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341190, 32.300499, 47.651833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450729, 31.915995, 47.639221>,  <39.516453, 31.685293, 47.631653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450729, 31.915995, 47.639221>,  <39.341190, 32.300499, 47.651833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450729, 31.915995, 47.639221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288416, 0.050802, 0.956157,
		-0.917511, -0.270932, 0.291154,
		0.273844, -0.961257, -0.031530,
		39.532883, 31.627617, 47.629761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117970, 31.989859, 48.303478>,  <39.341190, 32.300499, 47.651833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117970, 31.989859, 48.303478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403240, 31.743343, 48.169872>,  <39.574402, 31.595434, 48.089706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.403240, 31.743343, 48.169872>,  <39.117970, 31.989859, 48.303478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403240, 31.743343, 48.169872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553722, 0.203092, 0.807555,
		-0.429851, -0.760883, 0.486093,
		0.713176, -0.616289, -0.334018,
		39.617191, 31.558456, 48.069668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270077, 31.474541, 48.868816>,  <39.117970, 31.989859, 48.303478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270077, 31.474541, 48.868816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593109, 31.487514, 48.633270>,  <39.786930, 31.495298, 48.491943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593109, 31.487514, 48.633270>,  <39.270077, 31.474541, 48.868816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593109, 31.487514, 48.633270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569402, 0.217166, 0.792856,
		0.153595, -0.975596, 0.156912,
		0.807583, 0.032432, -0.588862,
		39.835384, 31.497246, 48.456612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694061, 31.009190, 49.156479>,  <39.270077, 31.474541, 48.868816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694061, 31.009190, 49.156479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906857, 31.277258, 48.949455>,  <40.034534, 31.438099, 48.825241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906857, 31.277258, 48.949455>,  <39.694061, 31.009190, 49.156479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906857, 31.277258, 48.949455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476608, 0.268217, 0.837201,
		0.699884, -0.692049, -0.176721,
		0.531984, 0.670170, -0.517556,
		40.066452, 31.478310, 48.794189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398350, 30.904837, 49.341255>,  <39.694061, 31.009190, 49.156479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398350, 30.904837, 49.341255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393372, 31.282063, 49.208305>,  <40.390385, 31.508398, 49.128536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393372, 31.282063, 49.208305>,  <40.398350, 30.904837, 49.341255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393372, 31.282063, 49.208305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594348, 0.274285, 0.755988,
		0.804112, -0.188139, -0.563922,
		-0.012444, 0.943065, -0.332376,
		40.389637, 31.564981, 49.108593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099457, 31.119055, 49.470104>,  <40.398350, 30.904837, 49.341255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099457, 31.119055, 49.470104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902832, 31.453001, 49.371017>,  <40.784855, 31.653368, 49.311565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.902832, 31.453001, 49.371017>,  <41.099457, 31.119055, 49.470104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902832, 31.453001, 49.371017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590984, 0.528739, 0.609240,
		0.639611, 0.153084, -0.753302,
		-0.491565, 0.834866, -0.247717,
		40.755363, 31.703461, 49.296703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649914, 31.527929, 49.386536>,  <41.099457, 31.119055, 49.470104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649914, 31.527929, 49.386536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320568, 31.748190, 49.441467>,  <41.122963, 31.880346, 49.474426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320568, 31.748190, 49.441467>,  <41.649914, 31.527929, 49.386536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320568, 31.748190, 49.441467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467043, 0.519975, 0.715191,
		0.322411, 0.653000, -0.685304,
		-0.823360, 0.550652, 0.137334,
		41.073559, 31.913385, 49.482666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877468, 32.126892, 49.354656>,  <41.649914, 31.527929, 49.386536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877468, 32.126892, 49.354656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525768, 32.141499, 49.544640>,  <41.314747, 32.150261, 49.658630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525768, 32.141499, 49.544640>,  <41.877468, 32.126892, 49.354656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525768, 32.141499, 49.544640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360469, 0.702813, 0.613283,
		-0.311412, 0.710437, -0.631112,
		-0.879252, 0.036513, 0.474955,
		41.261993, 32.152454, 49.687126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833065, 32.839333, 49.566441>,  <41.877468, 32.126892, 49.354656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833065, 32.839333, 49.566441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593128, 32.629780, 49.808342>,  <41.449165, 32.504047, 49.953484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593128, 32.629780, 49.808342>,  <41.833065, 32.839333, 49.566441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593128, 32.629780, 49.808342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462827, 0.389356, 0.796362,
		-0.652668, 0.757591, 0.008915,
		-0.599846, -0.523886, 0.604754,
		41.413174, 32.472614, 49.989769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326126, 33.311840, 49.823135>,  <41.833065, 32.839333, 49.566441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326126, 33.311840, 49.823135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404499, 32.998623, 50.059258>,  <41.451523, 32.810692, 50.200932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404499, 32.998623, 50.059258>,  <41.326126, 33.311840, 49.823135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404499, 32.998623, 50.059258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257792, 0.621928, 0.739425,
		-0.946125, 0.007294, 0.323720,
		0.195937, -0.783041, 0.590302,
		41.463280, 32.763710, 50.236347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001774, 33.779343, 50.368057>,  <41.326126, 33.311840, 49.823135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001774, 33.779343, 50.368057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275192, 34.069893, 50.339375>,  <41.439243, 34.244221, 50.322166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.275192, 34.069893, 50.339375>,  <41.001774, 33.779343, 50.368057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275192, 34.069893, 50.339375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084220, -0.019096, -0.996264,
		-0.725028, 0.687036, 0.048122,
		0.683551, 0.726372, -0.071708,
		41.480259, 34.287804, 50.317863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677738, 34.380013, 50.044121>,  <41.001774, 33.779343, 50.368057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677738, 34.380013, 50.044121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074696, 34.381523, 49.994915>,  <41.312870, 34.382431, 49.965393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074696, 34.381523, 49.994915>,  <40.677738, 34.380013, 50.044121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074696, 34.381523, 49.994915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122102, 0.155501, -0.980260,
		0.015425, 0.987828, 0.154780,
		0.992398, 0.003778, -0.123015,
		41.372414, 34.382656, 49.958012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723785, 34.845982, 49.573372>,  <40.677738, 34.380013, 50.044121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723785, 34.845982, 49.573372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097015, 34.703873, 49.550896>,  <41.320953, 34.618607, 49.537411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.097015, 34.703873, 49.550896>,  <40.723785, 34.845982, 49.573372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097015, 34.703873, 49.550896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025307, 0.090986, -0.995531,
		0.358801, 0.930323, 0.075905,
		0.933071, -0.355276, -0.056190,
		41.376938, 34.597290, 49.534039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206718, 35.320057, 49.066837>,  <40.723785, 34.845982, 49.573372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206718, 35.320057, 49.066837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372440, 34.956074, 49.074043>,  <41.471874, 34.737682, 49.078369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.372440, 34.956074, 49.074043>,  <41.206718, 35.320057, 49.066837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.372440, 34.956074, 49.074043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001024, -0.019331, -0.999813,
		0.910139, 0.414242, -0.007076,
		0.414301, -0.909962, 0.018018,
		41.496731, 34.683086, 49.079449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793472, 35.340328, 48.671631>,  <41.206718, 35.320057, 49.066837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793472, 35.340328, 48.671631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693859, 34.953064, 48.681747>,  <41.634090, 34.720703, 48.687817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693859, 34.953064, 48.681747>,  <41.793472, 35.340328, 48.671631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693859, 34.953064, 48.681747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099547, -0.051563, -0.993696,
		0.963365, -0.244945, 0.109218,
		-0.249033, -0.968165, 0.025290,
		41.619148, 34.662613, 48.689335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377747, 34.958397, 48.367710>,  <41.793472, 35.340328, 48.671631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377747, 34.958397, 48.367710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058826, 34.722782, 48.315037>,  <41.867474, 34.581413, 48.283432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058826, 34.722782, 48.315037>,  <42.377747, 34.958397, 48.367710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058826, 34.722782, 48.315037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129216, 0.046528, -0.990524,
		0.589587, -0.806762, 0.039016,
		-0.797302, -0.589042, -0.131679,
		41.819637, 34.546070, 48.275532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463982, 34.765335, 47.701550>,  <42.377747, 34.958397, 48.367710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463982, 34.765335, 47.701550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114208, 34.582333, 47.766121>,  <41.904346, 34.472530, 47.804863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114208, 34.582333, 47.766121>,  <42.463982, 34.765335, 47.701550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114208, 34.582333, 47.766121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084102, -0.184749, -0.979181,
		0.477809, -0.869800, 0.123073,
		-0.874429, -0.457510, 0.161427,
		41.851879, 34.445080, 47.814548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410564, 34.140808, 47.290089>,  <42.463982, 34.765335, 47.701550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410564, 34.140808, 47.290089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026730, 34.227875, 47.361439>,  <41.796429, 34.280113, 47.404247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026730, 34.227875, 47.361439>,  <42.410564, 34.140808, 47.290089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026730, 34.227875, 47.361439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237109, -0.283939, -0.929063,
		-0.151577, -0.933809, 0.324074,
		-0.959585, 0.217666, 0.178376,
		41.738853, 34.293175, 47.414951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054886, 33.491268, 47.175083>,  <42.410564, 34.140808, 47.290089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054886, 33.491268, 47.175083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817104, 33.810905, 47.139133>,  <41.674435, 34.002689, 47.117565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817104, 33.810905, 47.139133>,  <42.054886, 33.491268, 47.175083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817104, 33.810905, 47.139133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431578, -0.411344, -0.802830,
		-0.678506, -0.438456, 0.589395,
		-0.594450, 0.799095, -0.089871,
		41.638771, 34.050632, 47.112171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410889, 33.253212, 47.021175>,  <42.054886, 33.491268, 47.175083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410889, 33.253212, 47.021175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395496, 33.638401, 46.914436>,  <41.386261, 33.869514, 46.850391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395496, 33.638401, 46.914436>,  <41.410889, 33.253212, 47.021175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395496, 33.638401, 46.914436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326806, -0.264489, -0.907327,
		-0.944308, 0.052297, 0.324881,
		-0.038477, 0.962969, -0.266850,
		41.383953, 33.927292, 46.834381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809288, 33.217312, 46.659779>,  <41.410889, 33.253212, 47.021175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809288, 33.217312, 46.659779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989918, 33.559078, 46.556980>,  <41.098297, 33.764137, 46.495300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989918, 33.559078, 46.556980>,  <40.809288, 33.217312, 46.659779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989918, 33.559078, 46.556980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252015, -0.154165, -0.955364,
		-0.855902, 0.496185, 0.145710,
		0.451574, 0.854420, -0.256996,
		41.125389, 33.815403, 46.479881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251076, 33.591064, 46.379513>,  <40.809288, 33.217312, 46.659779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251076, 33.591064, 46.379513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600819, 33.730869, 46.244854>,  <40.810665, 33.814754, 46.164059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.600819, 33.730869, 46.244854>,  <40.251076, 33.591064, 46.379513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600819, 33.730869, 46.244854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295209, -0.167496, -0.940637,
		-0.385155, 0.921837, -0.043272,
		0.874361, 0.349517, -0.336646,
		40.863129, 33.835724, 46.143860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118111, 33.947056, 45.749756>,  <40.251076, 33.591064, 46.379513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118111, 33.947056, 45.749756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514069, 33.900845, 45.716866>,  <40.751644, 33.873116, 45.697132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514069, 33.900845, 45.716866>,  <40.118111, 33.947056, 45.749756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514069, 33.900845, 45.716866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095510, -0.114556, -0.988815,
		0.104818, 0.986676, -0.124433,
		0.989894, -0.115531, -0.082230,
		40.811035, 33.866184, 45.692196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327190, 34.272964, 45.157246>,  <40.118111, 33.947056, 45.749756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327190, 34.272964, 45.157246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658520, 34.055248, 45.210339>,  <40.857319, 33.924618, 45.242195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658520, 34.055248, 45.210339>,  <40.327190, 34.272964, 45.157246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658520, 34.055248, 45.210339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017820, -0.262402, -0.964794,
		0.559963, 0.796799, -0.227054,
		0.828326, -0.544295, 0.132737,
		40.907017, 33.891960, 45.250160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918556, 34.568817, 44.651482>,  <40.327190, 34.272964, 45.157246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918556, 34.568817, 44.651482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961880, 34.184528, 44.753685>,  <40.987873, 33.953957, 44.815006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961880, 34.184528, 44.753685>,  <40.918556, 34.568817, 44.651482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961880, 34.184528, 44.753685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068626, -0.249183, -0.966022,
		0.991745, 0.122168, 0.038941,
		0.108314, -0.960720, 0.255510,
		40.994373, 33.896313, 44.830338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368591, 34.328449, 44.138176>,  <40.918556, 34.568817, 44.651482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368591, 34.328449, 44.138176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213638, 33.996819, 44.299458>,  <41.120667, 33.797840, 44.396225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213638, 33.996819, 44.299458>,  <41.368591, 34.328449, 44.138176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213638, 33.996819, 44.299458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054240, -0.416095, -0.907702,
		0.920324, -0.373494, 0.116217,
		-0.387378, -0.829076, 0.403200,
		41.097424, 33.748096, 44.420418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715958, 33.765797, 43.852863>,  <41.368591, 34.328449, 44.138176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715958, 33.765797, 43.852863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355175, 33.652870, 43.983574>,  <41.138706, 33.585114, 44.062000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355175, 33.652870, 43.983574>,  <41.715958, 33.765797, 43.852863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355175, 33.652870, 43.983574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150700, -0.503357, -0.850836,
		0.404687, -0.816658, 0.411459,
		-0.901953, -0.282315, 0.326772,
		41.084591, 33.568176, 44.081604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686142, 33.035007, 43.607746>,  <41.715958, 33.765797, 43.852863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686142, 33.035007, 43.607746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318939, 33.173012, 43.685963>,  <41.098618, 33.255814, 43.732895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.318939, 33.173012, 43.685963>,  <41.686142, 33.035007, 43.607746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318939, 33.173012, 43.685963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334503, -0.408783, -0.849120,
		-0.213020, -0.844905, 0.490671,
		-0.918003, 0.345011, 0.195544,
		41.043537, 33.276516, 43.744625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298168, 32.505337, 43.305931>,  <41.686142, 33.035007, 43.607746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298168, 32.505337, 43.305931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051003, 32.816849, 43.349167>,  <40.902702, 33.003757, 43.375107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051003, 32.816849, 43.349167>,  <41.298168, 32.505337, 43.305931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051003, 32.816849, 43.349167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565047, -0.344259, -0.749805,
		-0.546726, -0.524387, 0.652770,
		-0.617910, 0.778784, 0.108088,
		40.865631, 33.050484, 43.381592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734913, 32.159924, 43.315933>,  <41.298168, 32.505337, 43.305931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734913, 32.159924, 43.315933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650333, 32.537350, 43.213978>,  <40.599586, 32.763805, 43.152805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.650333, 32.537350, 43.213978>,  <40.734913, 32.159924, 43.315933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650333, 32.537350, 43.213978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606075, -0.331171, -0.723187,
		-0.766787, 0.001563, 0.641899,
		-0.211448, 0.943569, -0.254885,
		40.586899, 32.820419, 43.137512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947865, 32.255260, 43.325127>,  <40.734913, 32.159924, 43.315933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947865, 32.255260, 43.325127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140579, 32.529819, 43.107231>,  <40.256207, 32.694553, 42.976494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140579, 32.529819, 43.107231>,  <39.947865, 32.255260, 43.325127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140579, 32.529819, 43.107231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608435, -0.185335, -0.771659,
		-0.630624, 0.703213, 0.328337,
		0.481788, 0.686398, -0.544736,
		40.285114, 32.735741, 42.943810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467709, 32.503422, 42.811749>,  <39.947865, 32.255260, 43.325127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467709, 32.503422, 42.811749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801834, 32.644730, 42.643246>,  <40.002308, 32.729515, 42.542145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801834, 32.644730, 42.643246>,  <39.467709, 32.503422, 42.811749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801834, 32.644730, 42.643246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417105, -0.091960, -0.904194,
		-0.358161, 0.930992, 0.070535,
		0.835311, 0.353267, -0.421258,
		40.052429, 32.750710, 42.516869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256359, 32.928745, 42.412205>,  <39.467709, 32.503422, 42.811749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256359, 32.928745, 42.412205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613678, 32.842525, 42.254436>,  <39.828068, 32.790794, 42.159775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.613678, 32.842525, 42.254436>,  <39.256359, 32.928745, 42.412205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.613678, 32.842525, 42.254436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407324, -0.017197, -0.913122,
		0.190040, 0.976342, -0.103161,
		0.893293, -0.215549, -0.394419,
		39.881664, 32.777863, 42.136112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369537, 33.418549, 41.889118>,  <39.256359, 32.928745, 42.412205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369537, 33.418549, 41.889118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605061, 33.108559, 41.797276>,  <39.746376, 32.922565, 41.742168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.605061, 33.108559, 41.797276>,  <39.369537, 33.418549, 41.889118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605061, 33.108559, 41.797276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245680, 0.099033, -0.964279,
		0.770030, 0.624186, -0.132084,
		0.588809, -0.774974, -0.229608,
		39.781704, 32.876068, 41.728394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692978, 33.707893, 41.263790>,  <39.369537, 33.418549, 41.889118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692978, 33.707893, 41.263790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751011, 33.312180, 41.257229>,  <39.785831, 33.074753, 41.253292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.751011, 33.312180, 41.257229>,  <39.692978, 33.707893, 41.263790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751011, 33.312180, 41.257229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103042, 0.001383, -0.994676,
		0.984039, 0.146005, -0.101737,
		0.145087, -0.989283, -0.016405,
		39.794537, 33.015396, 41.252308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203232, 33.578758, 40.758572>,  <39.692978, 33.707893, 41.263790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203232, 33.578758, 40.758572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038055, 33.219296, 40.817757>,  <39.938950, 33.003616, 40.853268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.038055, 33.219296, 40.817757>,  <40.203232, 33.578758, 40.758572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038055, 33.219296, 40.817757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063710, -0.190565, -0.979605,
		0.908526, -0.395094, 0.135946,
		-0.412943, -0.898657, 0.147962,
		39.914173, 32.949699, 40.862144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605545, 33.169872, 40.356594>,  <40.203232, 33.578758, 40.758572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605545, 33.169872, 40.356594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260139, 32.974442, 40.406620>,  <40.052895, 32.857185, 40.436634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260139, 32.974442, 40.406620>,  <40.605545, 33.169872, 40.356594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260139, 32.974442, 40.406620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011508, -0.267006, -0.963626,
		0.504196, -0.830664, 0.236185,
		-0.863512, -0.488575, 0.125064,
		40.001087, 32.827869, 40.444138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788174, 32.609207, 40.171288>,  <40.605545, 33.169872, 40.356594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788174, 32.609207, 40.171288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392044, 32.657936, 40.144726>,  <40.154366, 32.687172, 40.128788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392044, 32.657936, 40.144726>,  <40.788174, 32.609207, 40.171288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392044, 32.657936, 40.144726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053018, -0.110013, -0.992515,
		-0.128219, -0.986436, 0.102490,
		-0.990328, 0.121825, -0.066404,
		40.094944, 32.694481, 40.124805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661156, 32.029442, 39.880703>,  <40.788174, 32.609207, 40.171288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661156, 32.029442, 39.880703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342625, 32.262684, 39.816383>,  <40.151505, 32.402630, 39.777790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342625, 32.262684, 39.816383>,  <40.661156, 32.029442, 39.880703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342625, 32.262684, 39.816383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065797, -0.180757, -0.981324,
		-0.601277, -0.792035, 0.105576,
		-0.796327, 0.583101, -0.160799,
		40.103725, 32.437614, 39.768143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394039, 31.772146, 39.309689>,  <40.661156, 32.029442, 39.880703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394039, 31.772146, 39.309689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202919, 32.121487, 39.347546>,  <40.088245, 32.331093, 39.370258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202919, 32.121487, 39.347546>,  <40.394039, 31.772146, 39.309689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202919, 32.121487, 39.347546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110554, 0.047095, -0.992754,
		-0.871482, -0.484805, 0.074050,
		-0.477805, 0.873353, 0.094640,
		40.059578, 32.383492, 39.375938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832161, 31.718771, 39.019848>,  <40.394039, 31.772146, 39.309689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832161, 31.718771, 39.019848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914658, 32.110104, 39.012585>,  <39.964157, 32.344902, 39.008224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914658, 32.110104, 39.012585>,  <39.832161, 31.718771, 39.019848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914658, 32.110104, 39.012585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071684, -0.003403, -0.997422,
		-0.975872, 0.207012, 0.069429,
		0.206242, 0.978333, -0.018160,
		39.976532, 32.403603, 39.007137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405441, 32.059792, 38.485985>,  <39.832161, 31.718771, 39.019848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405441, 32.059792, 38.485985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738155, 32.279202, 38.520077>,  <39.937782, 32.410847, 38.540531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738155, 32.279202, 38.520077>,  <39.405441, 32.059792, 38.485985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738155, 32.279202, 38.520077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009511, 0.167605, -0.985808,
		-0.555021, 0.819167, 0.144628,
		0.831782, 0.548520, 0.085233,
		39.987690, 32.443756, 38.545647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357590, 32.497040, 37.926952>,  <39.405441, 32.059792, 38.485985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357590, 32.497040, 37.926952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740406, 32.535385, 38.036415>,  <39.970097, 32.558392, 38.102093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740406, 32.535385, 38.036415>,  <39.357590, 32.497040, 37.926952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740406, 32.535385, 38.036415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251548, 0.194941, -0.948009,
		-0.144227, 0.976119, 0.162452,
		0.957038, 0.095864, 0.273657,
		40.027519, 32.564144, 38.118511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569054, 33.050976, 37.578064>,  <39.357590, 32.497040, 37.926952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569054, 33.050976, 37.578064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909443, 32.871513, 37.687279>,  <40.113678, 32.763836, 37.752808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909443, 32.871513, 37.687279>,  <39.569054, 33.050976, 37.578064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909443, 32.871513, 37.687279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378529, 0.163541, -0.911027,
		0.364085, 0.878614, 0.308999,
		0.850975, -0.448656, 0.273038,
		40.164734, 32.736916, 37.769192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058346, 33.534805, 37.466835>,  <39.569054, 33.050976, 37.578064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058346, 33.534805, 37.466835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299316, 33.215580, 37.472164>,  <40.443897, 33.024044, 37.475361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299316, 33.215580, 37.472164>,  <40.058346, 33.534805, 37.466835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299316, 33.215580, 37.472164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489793, 0.356437, -0.795648,
		0.630228, 0.485845, 0.605613,
		0.602424, -0.798065, 0.013327,
		40.480045, 32.976162, 37.476162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659145, 33.846653, 37.269482>,  <40.058346, 33.534805, 37.466835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659145, 33.846653, 37.269482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693733, 33.453194, 37.206284>,  <40.714485, 33.217117, 37.168365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.693733, 33.453194, 37.206284>,  <40.659145, 33.846653, 37.269482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.693733, 33.453194, 37.206284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552209, 0.179322, -0.814192,
		0.829210, -0.016848, 0.558684,
		0.086467, -0.983646, -0.157999,
		40.719673, 33.158100, 37.158882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339638, 33.855927, 37.254543>,  <40.659145, 33.846653, 37.269482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339638, 33.855927, 37.254543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268879, 33.509331, 37.067822>,  <41.226421, 33.301373, 36.955788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268879, 33.509331, 37.067822>,  <41.339638, 33.855927, 37.254543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268879, 33.509331, 37.067822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593401, 0.284490, -0.752955,
		0.785227, -0.410199, 0.463848,
		-0.176901, -0.866489, -0.466801,
		41.215809, 33.249386, 36.927780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007744, 33.616096, 37.030491>,  <41.339638, 33.855927, 37.254543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007744, 33.616096, 37.030491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781620, 33.379223, 36.800797>,  <41.645947, 33.237099, 36.662979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.781620, 33.379223, 36.800797>,  <42.007744, 33.616096, 37.030491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.781620, 33.379223, 36.800797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701645, 0.020832, -0.712223,
		0.433731, -0.805531, 0.403728,
		-0.565307, -0.592187, -0.574232,
		41.612026, 33.201569, 36.628529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416550, 32.924866, 36.689571>,  <42.007744, 33.616096, 37.030491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.416550, 32.924866, 36.689571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111923, 32.999413, 36.441288>,  <41.929146, 33.044140, 36.292316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.111923, 32.999413, 36.441288>,  <42.416550, 32.924866, 36.689571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111923, 32.999413, 36.441288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590108, -0.196548, -0.783034,
		-0.267935, -0.962619, 0.039705,
		-0.761566, 0.186372, -0.620711,
		41.883453, 33.055325, 36.255074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427349, 32.376705, 36.118088>,  <42.416550, 32.924866, 36.689571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427349, 32.376705, 36.118088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226772, 32.691212, 35.973682>,  <42.106426, 32.879917, 35.887039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.226772, 32.691212, 35.973682>,  <42.427349, 32.376705, 36.118088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.226772, 32.691212, 35.973682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520429, -0.059222, -0.851849,
		-0.691164, -0.615037, -0.379502,
		-0.501444, 0.786271, -0.361015,
		42.076340, 32.927094, 35.865379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527046, 32.313416, 35.439060>,  <42.427349, 32.376705, 36.118088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527046, 32.313416, 35.439060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420288, 32.698559, 35.455410>,  <42.356232, 32.929646, 35.465221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420288, 32.698559, 35.455410>,  <42.527046, 32.313416, 35.439060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420288, 32.698559, 35.455410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520965, 0.179831, -0.834420,
		-0.810778, -0.201410, -0.549612,
		-0.266898, 0.962857, 0.040876,
		42.340218, 32.987415, 35.467674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194405, 32.491436, 35.222198>,  <42.527046, 32.313416, 35.439060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194405, 32.491436, 35.222198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274483, 32.104076, 35.162693>,  <43.322529, 31.871662, 35.126987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.274483, 32.104076, 35.162693>,  <43.194405, 32.491436, 35.222198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274483, 32.104076, 35.162693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976154, 0.184140, 0.114962,
		-0.083935, -0.168234, 0.982167,
		0.200197, -0.968395, -0.148766,
		43.334541, 31.813559, 35.118065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.451912, 32.146782, 35.750816>,  <43.194405, 32.491436, 35.222198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.451912, 32.146782, 35.750816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616837, 31.976423, 35.428669>,  <43.715790, 31.874208, 35.235382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616837, 31.976423, 35.428669>,  <43.451912, 32.146782, 35.750816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616837, 31.976423, 35.428669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899836, 0.328609, 0.286899,
		0.142462, -0.842989, 0.518724,
		0.412310, -0.425895, -0.805366,
		43.740528, 31.848656, 35.187057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926094, 31.661213, 35.989002>,  <43.451912, 32.146782, 35.750816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926094, 31.661213, 35.989002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033726, 31.778543, 35.622055>,  <44.098305, 31.848942, 35.401886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033726, 31.778543, 35.622055>,  <43.926094, 31.661213, 35.989002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033726, 31.778543, 35.622055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899174, 0.264766, 0.348403,
		0.345083, -0.918617, -0.192510,
		0.269079, 0.293328, -0.917363,
		44.114449, 31.866541, 35.346848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.676292, 31.334398, 35.714054>,  <43.926094, 31.661213, 35.989002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.676292, 31.334398, 35.714054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627003, 31.698032, 35.554867>,  <44.597427, 31.916214, 35.459354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.627003, 31.698032, 35.554867>,  <44.676292, 31.334398, 35.714054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.627003, 31.698032, 35.554867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936477, 0.239221, 0.256485,
		0.328369, -0.341080, -0.880817,
		-0.123228, 0.909086, -0.397967,
		44.590034, 31.970758, 35.435478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159229, 31.535036, 35.143528>,  <44.676292, 31.334398, 35.714054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159229, 31.535036, 35.143528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036186, 31.826990, 35.387711>,  <44.962360, 32.002163, 35.534218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036186, 31.826990, 35.387711>,  <45.159229, 31.535036, 35.143528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036186, 31.826990, 35.387711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930368, 0.096206, 0.353779,
		0.199488, 0.676768, -0.708653,
		-0.307603, 0.729883, 0.610452,
		44.943905, 32.045956, 35.570847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561218, 32.182587, 35.005951>,  <45.159229, 31.535036, 35.143528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561218, 32.182587, 35.005951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417759, 32.161049, 35.378719>,  <45.331684, 32.148125, 35.602379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417759, 32.161049, 35.378719>,  <45.561218, 32.182587, 35.005951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417759, 32.161049, 35.378719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844183, 0.407380, 0.348420,
		-0.398406, 0.911670, -0.100649,
		-0.358647, -0.053846, 0.931919,
		45.310165, 32.144894, 35.658295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.320850, 32.759766, 34.641151>,  <45.561218, 32.182587, 35.005951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.320850, 32.759766, 34.641151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.446896, 33.125504, 34.539421>,  <45.522522, 33.344944, 34.478382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.446896, 33.125504, 34.539421>,  <45.320850, 32.759766, 34.641151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.446896, 33.125504, 34.539421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908975, 0.213713, -0.357899,
		-0.272890, 0.343954, 0.898458,
		0.315113, 0.914343, -0.254325,
		45.541431, 33.399807, 34.463123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867783, 33.330631, 34.891441>,  <45.320850, 32.759766, 34.641151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867783, 33.330631, 34.891441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061310, 33.462845, 34.567303>,  <45.177425, 33.542171, 34.372818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.061310, 33.462845, 34.567303>,  <44.867783, 33.330631, 34.891441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.061310, 33.462845, 34.567303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856608, 0.368530, -0.361120,
		0.179278, 0.868870, 0.461437,
		0.483820, 0.330530, -0.810350,
		45.206455, 33.562004, 34.324196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649277, 34.070351, 34.810383>,  <44.867783, 33.330631, 34.891441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649277, 34.070351, 34.810383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786747, 33.953953, 34.453236>,  <44.869228, 33.884113, 34.238949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786747, 33.953953, 34.453236>,  <44.649277, 34.070351, 34.810383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786747, 33.953953, 34.453236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715274, 0.534963, -0.449664,
		0.608500, 0.793182, -0.024289,
		0.343671, -0.290994, -0.892868,
		44.889847, 33.866653, 34.185375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.756077, 34.730206, 34.375042>,  <44.649277, 34.070351, 34.810383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.756077, 34.730206, 34.375042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726078, 34.417709, 34.127159>,  <44.708080, 34.230213, 33.978428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.726078, 34.417709, 34.127159>,  <44.756077, 34.730206, 34.375042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.726078, 34.417709, 34.127159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778969, 0.433887, -0.452713,
		0.622562, 0.448784, -0.641100,
		-0.074994, -0.781239, -0.619711,
		44.703579, 34.183338, 33.941246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623238, 35.011452, 33.775623>,  <44.756077, 34.730206, 34.375042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623238, 35.011452, 33.775623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528625, 34.626537, 33.721878>,  <44.471859, 34.395588, 33.689629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.528625, 34.626537, 33.721878>,  <44.623238, 35.011452, 33.775623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.528625, 34.626537, 33.721878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819852, 0.271882, -0.503907,
		0.521436, -0.009029, -0.853243,
		-0.236531, -0.962288, -0.134367,
		44.457664, 34.337852, 33.681568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463230, 34.905136, 33.037342>,  <44.623238, 35.011452, 33.775623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463230, 34.905136, 33.037342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274296, 34.615372, 33.238194>,  <44.160934, 34.441513, 33.358704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274296, 34.615372, 33.238194>,  <44.463230, 34.905136, 33.037342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274296, 34.615372, 33.238194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847538, 0.216842, -0.484416,
		0.242037, -0.654372, -0.716391,
		-0.472331, -0.724415, 0.502121,
		44.132595, 34.398048, 33.388832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135689, 34.510406, 32.478100>,  <44.463230, 34.905136, 33.037342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135689, 34.510406, 32.478100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947769, 34.421375, 32.819801>,  <43.835018, 34.367954, 33.024822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.947769, 34.421375, 32.819801>,  <44.135689, 34.510406, 32.478100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947769, 34.421375, 32.819801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867001, -0.065773, -0.493946,
		0.166131, -0.972692, -0.162080,
		-0.469797, -0.222583, 0.854252,
		43.806831, 34.354603, 33.076077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690048, 33.888035, 32.396561>,  <44.135689, 34.510406, 32.478100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690048, 33.888035, 32.396561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556511, 34.044811, 32.739471>,  <43.476387, 34.138878, 32.945217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556511, 34.044811, 32.739471>,  <43.690048, 33.888035, 32.396561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556511, 34.044811, 32.739471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941485, -0.183403, -0.282789,
		0.046391, -0.901524, 0.430236,
		-0.333847, 0.391942, 0.857279,
		43.456356, 34.162395, 32.996655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.239296, 33.440895, 32.699947>,  <43.690048, 33.888035, 32.396561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.239296, 33.440895, 32.699947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134083, 33.785381, 32.873898>,  <43.070957, 33.992073, 32.978268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.134083, 33.785381, 32.873898>,  <43.239296, 33.440895, 32.699947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.134083, 33.785381, 32.873898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944753, -0.138537, -0.297068,
		-0.195594, -0.488988, 0.850079,
		-0.263031, 0.861219, 0.434876,
		43.055172, 34.043747, 33.004360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566437, 33.368298, 33.068134>,  <43.239296, 33.440895, 32.699947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566437, 33.368298, 33.068134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615768, 33.764801, 33.049366>,  <42.645367, 34.002701, 33.038105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.615768, 33.764801, 33.049366>,  <42.566437, 33.368298, 33.068134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615768, 33.764801, 33.049366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991323, 0.125229, 0.039953,
		0.045479, 0.041588, 0.998099,
		0.123329, 0.991256, -0.046923,
		42.652767, 34.062180, 33.035290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166416, 33.663975, 33.595249>,  <42.566437, 33.368298, 33.068134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166416, 33.663975, 33.595249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209709, 33.955284, 33.324574>,  <42.235683, 34.130070, 33.162170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.209709, 33.955284, 33.324574>,  <42.166416, 33.663975, 33.595249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.209709, 33.955284, 33.324574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979480, 0.194530, 0.052695,
		0.170011, 0.657096, 0.734385,
		0.108234, 0.728274, -0.676685,
		42.242180, 34.173767, 33.121567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.680984, 34.171940, 33.814960>,  <42.166416, 33.663975, 33.595249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.680984, 34.171940, 33.814960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748791, 34.270195, 33.433189>,  <41.789474, 34.329147, 33.204128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748791, 34.270195, 33.433189>,  <41.680984, 34.171940, 33.814960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748791, 34.270195, 33.433189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981227, 0.132447, -0.140184,
		0.091976, 0.960270, 0.263479,
		0.169511, 0.245639, -0.954425,
		41.799644, 34.343887, 33.146862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331047, 34.806587, 33.711349>,  <41.680984, 34.171940, 33.814960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331047, 34.806587, 33.711349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383888, 34.661087, 33.342518>,  <41.415592, 34.573788, 33.121220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383888, 34.661087, 33.342518>,  <41.331047, 34.806587, 33.711349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383888, 34.661087, 33.342518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966166, 0.160635, -0.201788,
		0.221519, 0.917542, -0.330222,
		0.132104, -0.363749, -0.922082,
		41.423519, 34.551964, 33.065895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967365, 35.297409, 33.320904>,  <41.331047, 34.806587, 33.711349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967365, 35.297409, 33.320904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024876, 35.003284, 33.055984>,  <41.059380, 34.826809, 32.897034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024876, 35.003284, 33.055984>,  <40.967365, 35.297409, 33.320904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024876, 35.003284, 33.055984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935345, 0.117603, -0.333614,
		0.323200, 0.667446, -0.670864,
		0.143773, -0.735313, -0.662301,
		41.068008, 34.782692, 32.857292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693722, 35.559105, 32.728832>,  <40.967365, 35.297409, 33.320904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693722, 35.559105, 32.728832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701714, 35.161049, 32.690250>,  <40.706509, 34.922215, 32.667103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701714, 35.161049, 32.690250>,  <40.693722, 35.559105, 32.728832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701714, 35.161049, 32.690250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938087, 0.014712, -0.346086,
		0.345822, 0.097398, -0.933231,
		0.019978, -0.995137, -0.096455,
		40.707706, 34.862507, 32.661312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385471, 35.403984, 32.065090>,  <40.693722, 35.559105, 32.728832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385471, 35.403984, 32.065090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363121, 35.069286, 32.282986>,  <40.349709, 34.868469, 32.413723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.363121, 35.069286, 32.282986>,  <40.385471, 35.403984, 32.065090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.363121, 35.069286, 32.282986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927483, -0.158500, -0.338605,
		0.369666, -0.524152, -0.767210,
		-0.055878, -0.836745, 0.544734,
		40.346359, 34.818264, 32.446407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062183, 34.836910, 31.617216>,  <40.385471, 35.403984, 32.065090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062183, 34.836910, 31.617216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013527, 34.717491, 31.995861>,  <39.984333, 34.645840, 32.223049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013527, 34.717491, 31.995861>,  <40.062183, 34.836910, 31.617216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013527, 34.717491, 31.995861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969560, -0.168435, -0.177717,
		0.212499, -0.939413, -0.268972,
		-0.121645, -0.298550, 0.946610,
		39.977032, 34.627926, 32.279842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756409, 34.115757, 31.625574>,  <40.062183, 34.836910, 31.617216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756409, 34.115757, 31.625574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644222, 34.286243, 31.969593>,  <39.576908, 34.388535, 32.176003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644222, 34.286243, 31.969593>,  <39.756409, 34.115757, 31.625574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644222, 34.286243, 31.969593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953816, -0.224173, -0.199954,
		0.107576, -0.876407, 0.469402,
		-0.280468, 0.426213, 0.860046,
		39.560081, 34.414108, 32.227608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317913, 33.558758, 32.039688>,  <39.756409, 34.115757, 31.625574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317913, 33.558758, 32.039688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268459, 33.916767, 32.211105>,  <39.238789, 34.131573, 32.313957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268459, 33.916767, 32.211105>,  <39.317913, 33.558758, 32.039688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268459, 33.916767, 32.211105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992228, -0.105386, -0.066157,
		-0.014050, -0.433391, 0.901097,
		-0.123635, 0.895023, 0.428542,
		39.231369, 34.185272, 32.339668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802811, 33.442730, 32.640835>,  <39.317913, 33.558758, 32.039688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802811, 33.442730, 32.640835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790977, 33.838150, 32.581638>,  <38.783878, 34.075401, 32.546120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790977, 33.838150, 32.581638>,  <38.802811, 33.442730, 32.640835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790977, 33.838150, 32.581638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994920, -0.043372, -0.090846,
		-0.096224, 0.144556, 0.984807,
		-0.029580, 0.988546, -0.147995,
		38.782104, 34.134712, 32.537239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514915, 33.881248, 33.186283>,  <38.802811, 33.442730, 32.640835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514915, 33.881248, 33.186283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469837, 34.032303, 32.818657>,  <38.442791, 34.122936, 32.598080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.469837, 34.032303, 32.818657>,  <38.514915, 33.881248, 33.186283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.469837, 34.032303, 32.818657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991458, 0.018387, 0.129128,
		0.065662, 0.925771, 0.372339,
		-0.112696, 0.377638, -0.919070,
		38.436028, 34.145596, 32.542934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105335, 34.605007, 33.181488>,  <38.514915, 33.881248, 33.186283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105335, 34.605007, 33.181488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088139, 34.377216, 32.853134>,  <38.077820, 34.240543, 32.656120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088139, 34.377216, 32.853134>,  <38.105335, 34.605007, 33.181488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088139, 34.377216, 32.853134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997138, 0.075595, -0.000218,
		0.062179, 0.818527, -0.571094,
		-0.042993, -0.569473, -0.820885,
		38.075241, 34.206375, 32.606869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778477, 34.936646, 32.565590>,  <38.105335, 34.605007, 33.181488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778477, 34.936646, 32.565590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720036, 34.543129, 32.607185>,  <37.684971, 34.307018, 32.632145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.720036, 34.543129, 32.607185>,  <37.778477, 34.936646, 32.565590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720036, 34.543129, 32.607185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989105, 0.143356, -0.033475,
		0.018024, -0.107751, -0.994015,
		-0.146105, -0.983788, 0.103993,
		37.676205, 34.247993, 32.638382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340527, 34.535976, 32.077526>,  <37.778477, 34.936646, 32.565590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340527, 34.535976, 32.077526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302013, 34.330662, 32.418648>,  <37.278904, 34.207474, 32.623322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.302013, 34.330662, 32.418648>,  <37.340527, 34.535976, 32.077526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302013, 34.330662, 32.418648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995178, 0.065758, -0.072784,
		-0.018720, -0.855696, -0.517141,
		-0.096287, -0.513284, 0.852800,
		37.273129, 34.176678, 32.674488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280540, 35.293133, 31.667776>,  <37.340527, 34.535976, 32.077526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280540, 35.293133, 31.667776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646622, 35.261932, 31.509623>,  <37.866268, 35.243214, 31.414730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646622, 35.261932, 31.509623>,  <37.280540, 35.293133, 31.667776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646622, 35.261932, 31.509623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156457, 0.835375, -0.526943,
		0.371394, 0.544118, 0.752331,
		0.915198, -0.077996, -0.395384,
		37.921181, 35.238533, 31.391006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237804, 35.623428, 32.289227>,  <37.280540, 35.293133, 31.667776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237804, 35.623428, 32.289227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244423, 35.704201, 32.680931>,  <37.248394, 35.752666, 32.915955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.244423, 35.704201, 32.680931>,  <37.237804, 35.623428, 32.289227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244423, 35.704201, 32.680931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853062, -0.513721, 0.091522,
		0.521547, 0.833854, -0.180764,
		0.016546, 0.201936, 0.979259,
		37.249386, 35.764782, 32.974709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918610, 35.823074, 32.506824>,  <37.237804, 35.623428, 32.289227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918610, 35.823074, 32.506824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764412, 35.700958, 32.855122>,  <37.671894, 35.627689, 33.064098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764412, 35.700958, 32.855122>,  <37.918610, 35.823074, 32.506824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764412, 35.700958, 32.855122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850205, -0.484203, 0.206636,
		0.358532, 0.819967, 0.446216,
		-0.385494, -0.305290, 0.870742,
		37.648766, 35.609371, 33.116344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232895, 36.453465, 32.548065>,  <37.918610, 35.823074, 32.506824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232895, 36.453465, 32.548065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041737, 36.793877, 32.635124>,  <37.927044, 36.998123, 32.687359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041737, 36.793877, 32.635124>,  <38.232895, 36.453465, 32.548065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041737, 36.793877, 32.635124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875890, 0.480445, 0.044603,
		-0.066608, 0.211947, -0.975009,
		-0.477892, 0.851029, 0.217643,
		37.898369, 37.049187, 32.700417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266171, 36.987530, 32.019474>,  <38.232895, 36.453465, 32.548065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266171, 36.987530, 32.019474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268948, 37.096260, 32.404404>,  <38.270615, 37.161499, 32.635361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268948, 37.096260, 32.404404>,  <38.266171, 36.987530, 32.019474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268948, 37.096260, 32.404404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956953, 0.277433, -0.085274,
		-0.290159, 0.921488, -0.258199,
		0.006946, 0.271828, 0.962321,
		38.271030, 37.177807, 32.693100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632519, 37.705276, 32.096127>,  <38.266171, 36.987530, 32.019474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.632519, 37.705276, 32.096127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620262, 37.499374, 32.438843>,  <38.612907, 37.375835, 32.644474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620262, 37.499374, 32.438843>,  <38.632519, 37.705276, 32.096127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620262, 37.499374, 32.438843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948673, 0.254972, 0.187108,
		-0.314772, 0.818548, 0.480519,
		-0.030638, -0.514751, 0.856792,
		38.611073, 37.344948, 32.695881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830822, 38.096138, 32.696262>,  <38.632519, 37.705276, 32.096127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830822, 38.096138, 32.696262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929283, 37.711140, 32.741875>,  <38.988361, 37.480141, 32.769241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929283, 37.711140, 32.741875>,  <38.830822, 38.096138, 32.696262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929283, 37.711140, 32.741875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911007, 0.269926, 0.311780,
		-0.330867, 0.027136, 0.943287,
		0.246157, -0.962499, 0.114031,
		39.003132, 37.422390, 32.776085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091206, 37.933311, 33.419514>,  <38.830822, 38.096138, 32.696262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091206, 37.933311, 33.419514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268673, 37.723942, 33.128532>,  <39.375153, 37.598320, 32.953941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268673, 37.723942, 33.128532>,  <39.091206, 37.933311, 33.419514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268673, 37.723942, 33.128532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841199, -0.036750, 0.539475,
		-0.309106, -0.851281, 0.423996,
		0.443664, -0.523420, -0.727457,
		39.401772, 37.566917, 32.910294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539352, 37.372223, 33.768852>,  <39.091206, 37.933311, 33.419514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539352, 37.372223, 33.768852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683464, 37.386879, 33.396004>,  <39.769932, 37.395672, 33.172295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683464, 37.386879, 33.396004>,  <39.539352, 37.372223, 33.768852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683464, 37.386879, 33.396004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932675, -0.033134, 0.359192,
		-0.017722, -0.998779, -0.046118,
		0.360281, 0.036647, -0.932124,
		39.791550, 37.397873, 33.116367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064693, 36.925583, 33.769608>,  <39.539352, 37.372223, 33.768852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064693, 36.925583, 33.769608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151447, 37.123848, 33.433208>,  <40.203499, 37.242809, 33.231369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151447, 37.123848, 33.433208>,  <40.064693, 36.925583, 33.769608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151447, 37.123848, 33.433208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973798, -0.049484, 0.221968,
		0.068406, -0.867102, -0.493411,
		0.216885, 0.495667, -0.840997,
		40.216515, 37.272549, 33.180908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642643, 36.579411, 33.428139>,  <40.064693, 36.925583, 33.769608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642643, 36.579411, 33.428139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640305, 36.954239, 33.288502>,  <40.638901, 37.179134, 33.204720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.640305, 36.954239, 33.288502>,  <40.642643, 36.579411, 33.428139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.640305, 36.954239, 33.288502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998803, -0.011480, -0.047543,
		-0.048559, -0.348955, -0.935881,
		-0.005846, 0.937069, -0.349094,
		40.638550, 37.235359, 33.183773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992893, 36.575275, 32.827534>,  <40.642643, 36.579411, 33.428139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992893, 36.575275, 32.827534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997765, 36.964607, 32.919167>,  <41.000687, 37.198208, 32.974144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.997765, 36.964607, 32.919167>,  <40.992893, 36.575275, 32.827534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997765, 36.964607, 32.919167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999155, -0.020839, 0.035424,
		0.039253, 0.228454, -0.972763,
		0.012178, 0.973332, 0.229079,
		41.001419, 37.256607, 32.987888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475647, 36.844158, 32.450134>,  <40.992893, 36.575275, 32.827534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475647, 36.844158, 32.450134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416920, 37.090134, 32.760048>,  <41.381683, 37.237720, 32.945995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416920, 37.090134, 32.760048>,  <41.475647, 36.844158, 32.450134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416920, 37.090134, 32.760048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965801, -0.080115, 0.246596,
		0.213714, 0.784492, -0.582150,
		-0.146814, 0.614942, 0.774785,
		41.372875, 37.274616, 32.992485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981182, 37.293514, 32.338390>,  <41.475647, 36.844158, 32.450134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981182, 37.293514, 32.338390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872955, 37.330826, 32.721657>,  <41.808018, 37.353214, 32.951618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.872955, 37.330826, 32.721657>,  <41.981182, 37.293514, 32.338390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872955, 37.330826, 32.721657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962279, 0.055619, 0.266317,
		-0.028451, 0.994085, -0.104809,
		-0.270571, 0.093278, 0.958170,
		41.791782, 37.358810, 33.009109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482552, 37.818073, 32.618568>,  <41.981182, 37.293514, 32.338390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482552, 37.818073, 32.618568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341919, 37.614944, 32.933151>,  <42.257542, 37.493069, 33.121902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.341919, 37.614944, 32.933151>,  <42.482552, 37.818073, 32.618568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341919, 37.614944, 32.933151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906734, 0.024250, 0.421005,
		-0.232866, 0.861122, 0.451932,
		-0.351577, -0.507820, 0.786456,
		42.236446, 37.462597, 33.169086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758183, 38.123985, 33.292828>,  <42.482552, 37.818073, 32.618568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758183, 38.123985, 33.292828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648571, 37.757286, 33.409096>,  <42.582806, 37.537266, 33.478859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648571, 37.757286, 33.409096>,  <42.758183, 38.123985, 33.292828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648571, 37.757286, 33.409096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924369, -0.167647, 0.342690,
		-0.265429, 0.362595, 0.893349,
		-0.274025, -0.916744, 0.290673,
		42.566364, 37.482262, 33.496296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.897697, 38.101959, 34.068069>,  <42.758183, 38.123985, 33.292828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.897697, 38.101959, 34.068069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865688, 37.721855, 33.947674>,  <42.846481, 37.493793, 33.875435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.865688, 37.721855, 33.947674>,  <42.897697, 38.101959, 34.068069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865688, 37.721855, 33.947674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880236, -0.209061, 0.426002,
		-0.467740, -0.230852, 0.853186,
		-0.080025, -0.950263, -0.300991,
		42.841682, 37.436775, 33.857376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261921, 37.713409, 34.590992>,  <42.897697, 38.101959, 34.068069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261921, 37.713409, 34.590992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252396, 37.446579, 34.293148>,  <43.246681, 37.286480, 34.114441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252396, 37.446579, 34.293148>,  <43.261921, 37.713409, 34.590992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252396, 37.446579, 34.293148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861131, -0.392035, 0.323669,
		-0.507824, -0.633498, 0.583776,
		-0.023817, -0.667075, -0.744610,
		43.245251, 37.246456, 34.069763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558487, 37.198940, 34.929138>,  <43.261921, 37.713409, 34.590992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558487, 37.198940, 34.929138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559845, 37.103100, 34.540791>,  <43.560661, 37.045597, 34.307781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559845, 37.103100, 34.540791>,  <43.558487, 37.198940, 34.929138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559845, 37.103100, 34.540791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873301, -0.472270, 0.119608,
		-0.487169, -0.848265, 0.207636,
		0.003399, -0.239599, -0.970866,
		43.560863, 37.031219, 34.249531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.605419, 36.400227, 34.799305>,  <43.558487, 37.198940, 34.929138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.605419, 36.400227, 34.799305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739113, 36.588654, 34.472775>,  <43.819328, 36.701710, 34.276855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739113, 36.588654, 34.472775>,  <43.605419, 36.400227, 34.799305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739113, 36.588654, 34.472775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837998, -0.544920, 0.028658,
		-0.431331, -0.693655, -0.576885,
		0.334235, 0.471068, -0.816322,
		43.839382, 36.729973, 34.227879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076618, 35.943420, 34.567875>,  <43.605419, 36.400227, 34.799305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076618, 35.943420, 34.567875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182041, 36.276230, 34.372620>,  <44.245296, 36.475914, 34.255466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.182041, 36.276230, 34.372620>,  <44.076618, 35.943420, 34.567875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182041, 36.276230, 34.372620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901326, -0.392714, -0.182722,
		-0.343726, -0.391811, -0.853426,
		0.263560, 0.832022, -0.488135,
		44.261108, 36.525837, 34.226177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404682, 35.680096, 34.109379>,  <44.076618, 35.943420, 34.567875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404682, 35.680096, 34.109379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534416, 36.058430, 34.115063>,  <44.612255, 36.285431, 34.118473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.534416, 36.058430, 34.115063>,  <44.404682, 35.680096, 34.109379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.534416, 36.058430, 34.115063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919711, -0.311791, -0.238574,
		-0.221220, 0.090450, -0.971020,
		0.324335, 0.945836, 0.014214,
		44.631718, 36.342182, 34.119328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960625, 35.839584, 33.628365>,  <44.404682, 35.680096, 34.109379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960625, 35.839584, 33.628365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044174, 36.114262, 33.906883>,  <45.094303, 36.279068, 34.073994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.044174, 36.114262, 33.906883>,  <44.960625, 35.839584, 33.628365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044174, 36.114262, 33.906883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958052, -0.286555, -0.004797,
		0.196232, 0.668087, -0.717742,
		0.208878, 0.686692, 0.696293,
		45.106838, 36.320271, 34.115772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665146, 36.154694, 33.422943>,  <44.960625, 35.839584, 33.628365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665146, 36.154694, 33.422943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.622128, 36.239193, 33.811543>,  <45.596317, 36.289890, 34.044701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.622128, 36.239193, 33.811543>,  <45.665146, 36.154694, 33.422943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.622128, 36.239193, 33.811543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850019, -0.487285, 0.200055,
		0.515657, 0.847307, -0.127158,
		-0.107546, 0.211246, 0.971498,
		45.589863, 36.302567, 34.102993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251446, 36.324635, 33.627800>,  <45.665146, 36.154694, 33.422943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251446, 36.324635, 33.627800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076923, 36.219616, 33.972057>,  <45.972210, 36.156605, 34.178612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.076923, 36.219616, 33.972057>,  <46.251446, 36.324635, 33.627800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.076923, 36.219616, 33.972057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853775, -0.422785, 0.303845,
		0.284093, 0.867364, 0.408621,
		-0.436303, -0.262550, 0.860644,
		45.946033, 36.140850, 34.230251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.742313, 36.411476, 34.211998>,  <46.251446, 36.324635, 33.627800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.742313, 36.411476, 34.211998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.460468, 36.184727, 34.382729>,  <46.291363, 36.048679, 34.485168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.460468, 36.184727, 34.382729>,  <46.742313, 36.411476, 34.211998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.460468, 36.184727, 34.382729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696746, -0.438761, 0.567481,
		-0.134412, 0.697244, 0.704120,
		-0.704612, -0.566869, 0.426827,
		46.249084, 36.014668, 34.510777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882835, 36.451992, 34.832943>,  <46.742313, 36.411476, 34.211998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882835, 36.451992, 34.832943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.685467, 36.104107, 34.837463>,  <46.567043, 35.895374, 34.840176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.685467, 36.104107, 34.837463>,  <46.882835, 36.451992, 34.832943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.685467, 36.104107, 34.837463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639854, -0.354151, 0.682029,
		-0.589169, 0.343761, 0.731238,
		-0.493424, -0.869716, 0.011302,
		46.537441, 35.843193, 34.840855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814339, 36.287384, 35.552204>,  <46.882835, 36.451992, 34.832943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814339, 36.287384, 35.552204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802017, 35.939705, 35.354801>,  <46.794624, 35.731098, 35.236359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802017, 35.939705, 35.354801>,  <46.814339, 36.287384, 35.552204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.802017, 35.939705, 35.354801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739075, -0.352214, 0.574207,
		-0.672918, -0.347049, 0.653252,
		-0.030807, -0.869196, -0.493506,
		46.792774, 35.678947, 35.206749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.531174, 36.138775, 35.770195>,  <46.814339, 36.287384, 35.552204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.531174, 36.138775, 35.770195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.247562, 36.001080, 35.524014>,  <47.077396, 35.918465, 35.376305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.247562, 36.001080, 35.524014>,  <47.531174, 36.138775, 35.770195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.247562, 36.001080, 35.524014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596159, -0.758773, -0.262408,
		-0.376657, -0.552961, 0.743212,
		-0.709030, -0.344235, -0.615450,
		47.034855, 35.897808, 35.339378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.265903, 35.440887, 35.890392>,  <47.531174, 36.138775, 35.770195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.265903, 35.440887, 35.890392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243969, 35.522194, 35.499359>,  <47.230808, 35.570976, 35.264740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243969, 35.522194, 35.499359>,  <47.265903, 35.440887, 35.890392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.243969, 35.522194, 35.499359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777646, -0.605421, -0.169506,
		-0.626306, -0.769512, -0.124867,
		-0.054840, 0.203265, -0.977587,
		47.227516, 35.583172, 35.206081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.750999, 34.956036, 35.577320>,  <47.265903, 35.440887, 35.890392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.750999, 34.956036, 35.577320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.646152, 35.192646, 35.272324>,  <47.583244, 35.334614, 35.089325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.646152, 35.192646, 35.272324>,  <47.750999, 34.956036, 35.577320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.646152, 35.192646, 35.272324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746894, -0.375985, -0.548438,
		-0.611100, -0.713256, -0.343254,
		-0.262118, 0.591525, -0.762491,
		47.567516, 35.370102, 35.043575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.640629, 34.490410, 35.111595>,  <47.750999, 34.956036, 35.577320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.640629, 34.490410, 35.111595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708580, 34.839241, 34.928017>,  <47.749352, 35.048538, 34.817871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.708580, 34.839241, 34.928017>,  <47.640629, 34.490410, 35.111595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.708580, 34.839241, 34.928017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785366, -0.401118, -0.471492,
		-0.595266, -0.280344, -0.753037,
		0.169877, 0.872073, -0.458945,
		47.759544, 35.100864, 34.790333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.299362, 36.585316, 44.575912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910942, 36.655293, 44.510853>,  <37.677891, 36.697281, 44.471817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910942, 36.655293, 44.510853>,  <38.299362, 36.585316, 44.575912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910942, 36.655293, 44.510853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108345, -0.284250, -0.952609,
		-0.212886, -0.942654, 0.257067,
		-0.971051, 0.174945, -0.162644,
		37.619625, 36.707775, 44.462059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035988, 35.993187, 44.201607>,  <38.299362, 36.585316, 44.575912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035988, 35.993187, 44.201607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755287, 36.273388, 44.149685>,  <37.586868, 36.441509, 44.118530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.755287, 36.273388, 44.149685>,  <38.035988, 35.993187, 44.201607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755287, 36.273388, 44.149685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148568, -0.322090, -0.934979,
		-0.696761, -0.636836, 0.330098,
		-0.701749, 0.700499, -0.129806,
		37.544762, 36.483536, 44.110744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518486, 35.642033, 43.980900>,  <38.035988, 35.993187, 44.201607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518486, 35.642033, 43.980900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418736, 36.011055, 43.863113>,  <37.358887, 36.232468, 43.792442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418736, 36.011055, 43.863113>,  <37.518486, 35.642033, 43.980900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418736, 36.011055, 43.863113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192932, -0.345302, -0.918446,
		-0.948994, -0.172227, 0.264100,
		-0.249376, 0.922553, -0.294462,
		37.343922, 36.287823, 43.774776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985710, 35.573345, 43.568539>,  <37.518486, 35.642033, 43.980900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985710, 35.573345, 43.568539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091480, 35.945110, 43.465569>,  <37.154942, 36.168171, 43.403786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.091480, 35.945110, 43.465569>,  <36.985710, 35.573345, 43.568539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091480, 35.945110, 43.465569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129520, -0.230280, -0.964467,
		-0.955670, 0.288369, 0.059487,
		0.264424, 0.929416, -0.257421,
		37.170807, 36.223934, 43.388344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497223, 35.815098, 43.039871>,  <36.985710, 35.573345, 43.568539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497223, 35.815098, 43.039871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814095, 36.054428, 42.991783>,  <37.004219, 36.198025, 42.962929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.814095, 36.054428, 42.991783>,  <36.497223, 35.815098, 43.039871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814095, 36.054428, 42.991783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069114, -0.283679, -0.956425,
		-0.606357, 0.749355, -0.266079,
		0.792184, 0.598325, -0.120220,
		37.051750, 36.233925, 42.955719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239506, 36.215977, 42.494743>,  <36.497223, 35.815098, 43.039871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239506, 36.215977, 42.494743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635803, 36.249012, 42.537823>,  <36.873581, 36.268833, 42.563671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.635803, 36.249012, 42.537823>,  <36.239506, 36.215977, 42.494743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635803, 36.249012, 42.537823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120695, -0.173293, -0.977447,
		-0.062058, 0.981402, -0.181657,
		0.990748, 0.082584, 0.107696,
		36.933029, 36.273788, 42.570133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449226, 36.601295, 41.972916>,  <36.239506, 36.215977, 42.494743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449226, 36.601295, 41.972916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.781345, 36.406055, 42.080509>,  <36.980618, 36.288910, 42.145065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.781345, 36.406055, 42.080509>,  <36.449226, 36.601295, 41.972916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781345, 36.406055, 42.080509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253578, -0.098923, -0.962243,
		0.496283, 0.867162, 0.041636,
		0.830302, -0.488103, 0.268987,
		37.030437, 36.259624, 42.161205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936428, 36.830185, 41.470192>,  <36.449226, 36.601295, 41.972916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936428, 36.830185, 41.470192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093140, 36.494652, 41.621384>,  <37.187168, 36.293331, 41.712101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093140, 36.494652, 41.621384>,  <36.936428, 36.830185, 41.470192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093140, 36.494652, 41.621384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399246, -0.215130, -0.891247,
		0.828922, 0.500080, 0.250616,
		0.391780, -0.838832, 0.377981,
		37.210674, 36.243004, 41.734779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616058, 36.700943, 41.254913>,  <36.936428, 36.830185, 41.470192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616058, 36.700943, 41.254913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.505306, 36.337505, 41.380001>,  <37.438854, 36.119442, 41.455051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.505306, 36.337505, 41.380001>,  <37.616058, 36.700943, 41.254913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505306, 36.337505, 41.380001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436687, -0.408871, -0.801330,
		0.855945, -0.085313, 0.509980,
		-0.276880, -0.908596, 0.312716,
		37.422241, 36.064926, 41.473816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185947, 36.123592, 41.285404>,  <37.616058, 36.700943, 41.254913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185947, 36.123592, 41.285404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840820, 35.921520, 41.278049>,  <37.633743, 35.800278, 41.273636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.840820, 35.921520, 41.278049>,  <38.185947, 36.123592, 41.285404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840820, 35.921520, 41.278049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383601, -0.630617, -0.674665,
		0.329235, -0.589165, 0.737895,
		-0.862818, -0.505181, -0.018383,
		37.581974, 35.769966, 41.272533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380066, 35.446651, 41.191147>,  <38.185947, 36.123592, 41.285404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380066, 35.446651, 41.191147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998070, 35.422577, 41.074966>,  <37.768871, 35.408131, 41.005257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.998070, 35.422577, 41.074966>,  <38.380066, 35.446651, 41.191147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998070, 35.422577, 41.074966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270860, -0.576098, -0.771198,
		-0.120911, -0.815162, 0.566473,
		-0.954995, -0.060189, -0.290451,
		37.711571, 35.404522, 40.987831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249737, 34.713551, 40.949783>,  <38.380066, 35.446651, 41.191147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249737, 34.713551, 40.949783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958263, 34.915150, 40.764309>,  <37.783379, 35.036110, 40.653023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958263, 34.915150, 40.764309>,  <38.249737, 34.713551, 40.949783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958263, 34.915150, 40.764309> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165967, -0.526930, -0.833546,
		-0.664436, -0.684349, 0.300319,
		-0.728683, 0.503995, -0.463691,
		37.739658, 35.066349, 40.625202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972145, 34.218288, 40.486729>,  <38.249737, 34.713551, 40.949783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972145, 34.218288, 40.486729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.811817, 34.547523, 40.325798>,  <37.715622, 34.745064, 40.229240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.811817, 34.547523, 40.325798>,  <37.972145, 34.218288, 40.486729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811817, 34.547523, 40.325798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257693, -0.320133, -0.911652,
		-0.879171, -0.469082, -0.083790,
		-0.400815, 0.823090, -0.402331,
		37.691574, 34.794449, 40.205097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573521, 33.913521, 39.912464>,  <37.972145, 34.218288, 40.486729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573521, 33.913521, 39.912464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646885, 34.300167, 39.840889>,  <37.690903, 34.532154, 39.797943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646885, 34.300167, 39.840889>,  <37.573521, 33.913521, 39.912464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646885, 34.300167, 39.840889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035412, -0.188405, -0.981453,
		-0.982398, 0.173673, -0.068785,
		0.183411, 0.966613, -0.178939,
		37.701908, 34.590153, 39.787209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134655, 34.065155, 39.444057>,  <37.573521, 33.913521, 39.912464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134655, 34.065155, 39.444057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.391262, 34.369350, 39.403831>,  <37.545227, 34.551868, 39.379696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.391262, 34.369350, 39.403831>,  <37.134655, 34.065155, 39.444057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391262, 34.369350, 39.403831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072988, -0.069987, -0.994874,
		-0.763627, 0.645570, 0.010608,
		0.641518, 0.760488, -0.100563,
		37.583717, 34.597496, 39.373661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858784, 34.407833, 38.864655>,  <37.134655, 34.065155, 39.444057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858784, 34.407833, 38.864655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234085, 34.538937, 38.908932>,  <37.459267, 34.617599, 38.935497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.234085, 34.538937, 38.908932>,  <36.858784, 34.407833, 38.864655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234085, 34.538937, 38.908932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133328, -0.047336, -0.989941,
		-0.319218, 0.943576, -0.088112,
		0.938255, 0.327755, 0.110695,
		37.515560, 34.637264, 38.942139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875282, 35.045235, 38.557781>,  <36.858784, 34.407833, 38.864655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875282, 35.045235, 38.557781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258083, 34.929207, 38.559277>,  <37.487762, 34.859589, 38.560173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.258083, 34.929207, 38.559277>,  <36.875282, 35.045235, 38.557781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258083, 34.929207, 38.559277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018671, 0.048733, -0.998637,
		0.289491, 0.955765, 0.052053,
		0.956999, -0.290068, 0.003737,
		37.545181, 34.842186, 38.560398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144547, 35.570644, 38.223511>,  <36.875282, 35.045235, 38.557781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144547, 35.570644, 38.223511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407288, 35.269905, 38.200630>,  <37.564930, 35.089462, 38.186901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.407288, 35.269905, 38.200630>,  <37.144547, 35.570644, 38.223511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407288, 35.269905, 38.200630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003440, 0.078844, -0.996881,
		0.754015, 0.654603, 0.054375,
		0.656848, -0.751850, -0.057198,
		37.604343, 35.044350, 38.183472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702484, 35.758469, 37.876904>,  <37.144547, 35.570644, 38.223511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702484, 35.758469, 37.876904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713135, 35.361664, 37.827576>,  <37.719524, 35.123581, 37.797977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.713135, 35.361664, 37.827576>,  <37.702484, 35.758469, 37.876904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713135, 35.361664, 37.827576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373177, 0.124310, -0.919395,
		0.927378, -0.021543, 0.373505,
		0.026624, -0.992010, -0.123321,
		37.721123, 35.064060, 37.790581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175419, 35.765888, 37.418060>,  <37.702484, 35.758469, 37.876904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175419, 35.765888, 37.418060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.974289, 35.420784, 37.396858>,  <37.853611, 35.213722, 37.384136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.974289, 35.420784, 37.396858>,  <38.175419, 35.765888, 37.418060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974289, 35.420784, 37.396858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204759, -0.059314, -0.977014,
		0.839787, -0.502119, 0.206483,
		-0.502824, -0.862762, -0.053002,
		37.823441, 35.161957, 37.380959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526421, 35.315262, 36.891071>,  <38.175419, 35.765888, 37.418060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526421, 35.315262, 36.891071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.159470, 35.158985, 36.921463>,  <37.939297, 35.065220, 36.939697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.159470, 35.158985, 36.921463>,  <38.526421, 35.315262, 36.891071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159470, 35.158985, 36.921463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044179, -0.289662, -0.956109,
		0.395555, -0.873758, 0.282990,
		-0.917379, -0.390696, 0.075976,
		37.884254, 35.041775, 36.944256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599846, 34.821766, 36.400848>,  <38.526421, 35.315262, 36.891071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599846, 34.821766, 36.400848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.205349, 34.866680, 36.449360>,  <37.968651, 34.893631, 36.478466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.205349, 34.866680, 36.449360>,  <38.599846, 34.821766, 36.400848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205349, 34.866680, 36.449360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141478, -0.194158, -0.970715,
		-0.085451, -0.974523, 0.207374,
		-0.986247, 0.112288, 0.121282,
		37.909473, 34.900368, 36.485744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285423, 35.251617, 36.326649>,  <38.599846, 34.821766, 36.400848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285423, 35.251617, 36.326649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.659523, 35.364227, 36.240803>,  <39.883984, 35.431793, 36.189297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.659523, 35.364227, 36.240803>,  <39.285423, 35.251617, 36.326649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659523, 35.364227, 36.240803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245884, -0.080466, 0.965954,
		0.254667, -0.956175, -0.144477,
		0.935246, 0.281521, -0.214616,
		39.940098, 35.448685, 36.176418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666916, 34.921085, 36.822021>,  <39.285423, 35.251617, 36.326649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666916, 34.921085, 36.822021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924088, 35.211414, 36.724194>,  <40.078392, 35.385612, 36.665497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.924088, 35.211414, 36.724194>,  <39.666916, 34.921085, 36.822021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924088, 35.211414, 36.724194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408918, -0.055284, 0.910895,
		0.647631, -0.685653, -0.332347,
		0.642931, 0.725826, -0.244572,
		40.116966, 35.429161, 36.650822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318657, 34.675098, 37.082058>,  <39.666916, 34.921085, 36.822021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318657, 34.675098, 37.082058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337029, 35.072781, 37.043194>,  <40.348049, 35.311390, 37.019875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.337029, 35.072781, 37.043194>,  <40.318657, 34.675098, 37.082058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337029, 35.072781, 37.043194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493532, 0.061983, 0.867516,
		0.868514, -0.087792, -0.487827,
		0.045924, 0.994208, -0.097162,
		40.350807, 35.371044, 37.014046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976013, 34.851452, 37.359001>,  <40.318657, 34.675098, 37.082058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976013, 34.851452, 37.359001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.786629, 35.202637, 37.330692>,  <40.672997, 35.413349, 37.313709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.786629, 35.202637, 37.330692>,  <40.976013, 34.851452, 37.359001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786629, 35.202637, 37.330692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299498, 0.236025, 0.924442,
		0.828332, 0.416495, -0.374698,
		-0.473463, 0.877966, -0.070767,
		40.644588, 35.466026, 37.309464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470066, 35.275494, 37.564552>,  <40.976013, 34.851452, 37.359001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470066, 35.275494, 37.564552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.108227, 35.430698, 37.635136>,  <40.891121, 35.523823, 37.677486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.108227, 35.430698, 37.635136>,  <41.470066, 35.275494, 37.564552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108227, 35.430698, 37.635136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242181, 0.127184, 0.961859,
		0.350774, 0.912835, -0.209021,
		-0.904603, 0.388016, 0.176458,
		40.836845, 35.547104, 37.688072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463757, 35.946671, 37.900341>,  <41.470066, 35.275494, 37.564552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463757, 35.946671, 37.900341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.104954, 35.801949, 38.001904>,  <40.889671, 35.715115, 38.062843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.104954, 35.801949, 38.001904>,  <41.463757, 35.946671, 37.900341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104954, 35.801949, 38.001904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225292, 0.119981, 0.966875,
		-0.380289, 0.924499, -0.026111,
		-0.897008, -0.361809, 0.253910,
		40.835850, 35.693405, 38.078075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497025, 36.239815, 38.519234>,  <41.463757, 35.946671, 37.900341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497025, 36.239815, 38.519234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.209503, 35.962593, 38.541122>,  <41.036991, 35.796261, 38.554256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.209503, 35.962593, 38.541122>,  <41.497025, 36.239815, 38.519234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209503, 35.962593, 38.541122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041092, 0.120923, 0.991811,
		-0.693998, 0.710669, -0.115400,
		-0.718804, -0.693056, 0.054718,
		40.993862, 35.754677, 38.557537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947639, 36.507900, 39.073002>,  <41.497025, 36.239815, 38.519234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947639, 36.507900, 39.073002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.911575, 36.113506, 39.016857>,  <40.889935, 35.876869, 38.983170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.911575, 36.113506, 39.016857>,  <40.947639, 36.507900, 39.073002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911575, 36.113506, 39.016857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231426, -0.116335, 0.965872,
		-0.968665, 0.119569, -0.217694,
		-0.090162, -0.985986, -0.140361,
		40.884525, 35.817711, 38.974751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411324, 36.411282, 39.418175>,  <40.947639, 36.507900, 39.073002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411324, 36.411282, 39.418175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.598965, 36.060234, 39.378727>,  <40.711552, 35.849606, 39.355061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.598965, 36.060234, 39.378727>,  <40.411324, 36.411282, 39.418175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598965, 36.060234, 39.378727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138680, -0.183481, 0.973192,
		-0.872186, -0.442853, -0.207781,
		0.469105, -0.877619, -0.098615,
		40.739697, 35.796947, 39.349144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930305, 35.871380, 39.669270>,  <40.411324, 36.411282, 39.418175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930305, 35.871380, 39.669270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.308468, 35.742371, 39.688000>,  <40.535366, 35.664967, 39.699238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.308468, 35.742371, 39.688000>,  <39.930305, 35.871380, 39.669270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308468, 35.742371, 39.688000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147573, -0.295545, 0.943862,
		-0.290536, -0.899254, -0.327003,
		0.945416, -0.322483, 0.046840,
		40.592091, 35.645615, 39.702049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879181, 35.144810, 40.014286>,  <39.930305, 35.871380, 39.669270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879181, 35.144810, 40.014286> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.257729, 35.264648, 40.062668>,  <40.484856, 35.336552, 40.091698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.257729, 35.264648, 40.062668>,  <39.879181, 35.144810, 40.014286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257729, 35.264648, 40.062668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031986, -0.285642, 0.957803,
		0.321506, -0.910302, -0.260739,
		0.946367, 0.299599, 0.120952,
		40.541637, 35.354527, 40.098953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950169, 34.899776, 40.672775>,  <39.879181, 35.144810, 40.014286>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950169, 34.899776, 40.672775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.274193, 35.129669, 40.626316>,  <40.468605, 35.267605, 40.598442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.274193, 35.129669, 40.626316>,  <39.950169, 34.899776, 40.672775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274193, 35.129669, 40.626316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092812, 0.069910, 0.993226,
		0.578960, -0.815349, 0.003288,
		0.810056, 0.574733, -0.116149,
		40.517208, 35.302090, 40.591473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526794, 34.653252, 41.156845>,  <39.950169, 34.899776, 40.672775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.526794, 34.653252, 41.156845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.559525, 35.040886, 41.063740>,  <40.579163, 35.273468, 41.007877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.559525, 35.040886, 41.063740>,  <40.526794, 34.653252, 41.156845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559525, 35.040886, 41.063740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001752, 0.233407, 0.972378,
		0.996645, -0.079974, 0.017401,
		0.081826, 0.969085, -0.232764,
		40.584072, 35.331612, 40.993912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.066196, 34.937679, 41.628700>,  <40.526794, 34.653252, 41.156845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.066196, 34.937679, 41.628700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.846680, 35.254311, 41.521198>,  <40.714970, 35.444290, 41.456696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.846680, 35.254311, 41.521198>,  <41.066196, 34.937679, 41.628700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846680, 35.254311, 41.521198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074431, 0.366483, 0.927443,
		0.832639, 0.488969, -0.260042,
		-0.548792, 0.791580, -0.268754,
		40.682041, 35.491783, 41.440571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278076, 35.509377, 42.082436>,  <41.066196, 34.937679, 41.628700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278076, 35.509377, 42.082436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.935200, 35.636192, 41.920097>,  <40.729473, 35.712280, 41.822693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.935200, 35.636192, 41.920097>,  <41.278076, 35.509377, 42.082436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935200, 35.636192, 41.920097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167145, 0.574130, 0.801522,
		0.487120, 0.754893, -0.439148,
		-0.857191, 0.317036, -0.405847,
		40.678043, 35.731304, 41.798344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325371, 36.202576, 42.198818>,  <41.278076, 35.509377, 42.082436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325371, 36.202576, 42.198818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.935436, 36.148777, 42.127701>,  <40.701477, 36.116497, 42.085030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.935436, 36.148777, 42.127701>,  <41.325371, 36.202576, 42.198818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935436, 36.148777, 42.127701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222924, 0.595764, 0.771603,
		0.002142, 0.791818, -0.610753,
		-0.974834, -0.134499, -0.177791,
		40.642986, 36.108429, 42.074364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.989075, 36.851200, 42.254684>,  <41.325371, 36.202576, 42.198818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.989075, 36.851200, 42.254684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.690968, 36.590294, 42.310009>,  <40.512104, 36.433750, 42.343204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.690968, 36.590294, 42.310009>,  <40.989075, 36.851200, 42.254684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690968, 36.590294, 42.310009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266964, 0.481989, 0.834516,
		-0.610993, 0.585009, -0.533340,
		-0.745264, -0.652266, 0.138316,
		40.467388, 36.394615, 42.351505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.368126, 37.344624, 42.497009>,  <40.989075, 36.851200, 42.254684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.368126, 37.344624, 42.497009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268654, 36.965111, 42.574947>,  <40.208969, 36.737404, 42.621712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.268654, 36.965111, 42.574947>,  <40.368126, 37.344624, 42.497009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268654, 36.965111, 42.574947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300220, 0.266766, 0.915808,
		-0.920883, 0.169246, -0.351184,
		-0.248681, -0.948784, 0.194850,
		40.194050, 36.680477, 42.633404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.632294, 37.373611, 42.821880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.807510, 37.031475, 42.932529>,  <39.912640, 36.826195, 42.998920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.807510, 37.031475, 42.932529>,  <39.632294, 37.373611, 42.821880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807510, 37.031475, 42.932529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229915, 0.190884, 0.954307,
		-0.869057, -0.481624, -0.113040,
		0.438040, -0.855337, 0.276622,
		39.938923, 36.774876, 43.015514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150047, 37.120037, 43.211269>,  <39.632294, 37.373611, 42.821880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150047, 37.120037, 43.211269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.498375, 36.946911, 43.304520>,  <39.707371, 36.843033, 43.360470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.498375, 36.946911, 43.304520>,  <39.150047, 37.120037, 43.211269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.498375, 36.946911, 43.304520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188425, 0.144146, 0.971451,
		-0.454068, -0.889881, 0.043970,
		0.870815, -0.432820, 0.233128,
		39.759621, 36.817066, 43.374458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950157, 36.608437, 43.661598>,  <39.150047, 37.120037, 43.211269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950157, 36.608437, 43.661598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334606, 36.686958, 43.739265>,  <39.565277, 36.734074, 43.785866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.334606, 36.686958, 43.739265>,  <38.950157, 36.608437, 43.661598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334606, 36.686958, 43.739265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237936, 0.232093, 0.943143,
		0.140077, -0.952680, 0.269779,
		0.961127, 0.196302, 0.194166,
		39.622944, 36.745850, 43.797516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072002, 36.258034, 44.310303>,  <38.950157, 36.608437, 43.661598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072002, 36.258034, 44.310303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.379478, 36.512753, 44.286282>,  <39.563965, 36.665585, 44.271870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.379478, 36.512753, 44.286282>,  <39.072002, 36.258034, 44.310303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379478, 36.512753, 44.286282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072032, 0.179478, 0.981121,
		0.635556, -0.749850, 0.183832,
		0.768688, 0.636799, -0.060055,
		39.610085, 36.703793, 44.268265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446835, 36.010078, 44.778160>,  <39.072002, 36.258034, 44.310303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446835, 36.010078, 44.778160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.530720, 36.397087, 44.721699>,  <39.581051, 36.629292, 44.687820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.530720, 36.397087, 44.721699>,  <39.446835, 36.010078, 44.778160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530720, 36.397087, 44.721699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007453, 0.142779, 0.989727,
		0.977735, -0.208608, 0.022731,
		0.209711, 0.967521, -0.141155,
		39.593632, 36.687344, 44.679352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903358, 36.107296, 45.194908>,  <39.446835, 36.010078, 44.778160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903358, 36.107296, 45.194908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.814121, 36.490440, 45.122543>,  <39.760578, 36.720325, 45.079124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.814121, 36.490440, 45.122543>,  <39.903358, 36.107296, 45.194908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.814121, 36.490440, 45.122543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084918, 0.203982, 0.975285,
		0.971091, 0.202219, -0.126847,
		-0.223096, 0.957862, -0.180913,
		39.747192, 36.777798, 45.068268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391903, 36.513374, 45.514690>,  <39.903358, 36.107296, 45.194908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391903, 36.513374, 45.514690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.065990, 36.745270, 45.512180>,  <39.870445, 36.884407, 45.510674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.065990, 36.745270, 45.512180>,  <40.391903, 36.513374, 45.514690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065990, 36.745270, 45.512180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142701, 0.211022, 0.967009,
		0.561936, 0.787003, -0.254665,
		-0.814778, 0.579738, -0.006275,
		39.821556, 36.919189, 45.510300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642902, 37.064758, 45.739777>,  <40.391903, 36.513374, 45.514690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642902, 37.064758, 45.739777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.247837, 37.079681, 45.800613>,  <40.010799, 37.088634, 45.837116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.247837, 37.079681, 45.800613>,  <40.642902, 37.064758, 45.739777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247837, 37.079681, 45.800613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154594, 0.387178, 0.908952,
		-0.024971, 0.921250, -0.388169,
		-0.987663, 0.037311, 0.152088,
		39.951538, 37.090874, 45.846241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538246, 37.630447, 46.061295>,  <40.642902, 37.064758, 45.739777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538246, 37.630447, 46.061295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.186451, 37.460072, 46.146217>,  <39.975372, 37.357845, 46.197170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.186451, 37.460072, 46.146217>,  <40.538246, 37.630447, 46.061295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186451, 37.460072, 46.146217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079124, 0.309030, 0.947755,
		-0.469295, 0.850339, -0.238087,
		-0.879490, -0.425938, 0.212308,
		39.922604, 37.332291, 46.209911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165260, 38.089622, 46.479031>,  <40.538246, 37.630447, 46.061295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165260, 38.089622, 46.479031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.996391, 37.736614, 46.561905>,  <39.895069, 37.524807, 46.611629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.996391, 37.736614, 46.561905>,  <40.165260, 38.089622, 46.479031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996391, 37.736614, 46.561905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078008, 0.263068, 0.961619,
		-0.903154, 0.389806, -0.179904,
		-0.422171, -0.882523, 0.207183,
		39.869740, 37.471859, 46.624062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611343, 38.248028, 46.896038>,  <40.165260, 38.089622, 46.479031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611343, 38.248028, 46.896038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.716324, 37.866470, 46.954285>,  <39.779312, 37.637535, 46.989231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.716324, 37.866470, 46.954285>,  <39.611343, 38.248028, 46.896038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716324, 37.866470, 46.954285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073069, 0.170118, 0.982711,
		-0.962176, -0.247271, 0.114347,
		0.262449, -0.953896, 0.145616,
		39.795059, 37.580303, 46.997971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306412, 37.926014, 47.552559>,  <39.611343, 38.248028, 46.896038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306412, 37.926014, 47.552559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631580, 37.703945, 47.482197>,  <39.826683, 37.570705, 47.439980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631580, 37.703945, 47.482197>,  <39.306412, 37.926014, 47.552559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631580, 37.703945, 47.482197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310199, 0.157137, 0.937595,
		-0.492885, -0.816757, 0.299954,
		0.812921, -0.555172, -0.175907,
		39.875458, 37.537392, 47.429424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383411, 37.675037, 48.153252>,  <39.306412, 37.926014, 47.552559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383411, 37.675037, 48.153252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733330, 37.555866, 48.000431>,  <39.943283, 37.484364, 47.908737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.733330, 37.555866, 48.000431>,  <39.383411, 37.675037, 48.153252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.733330, 37.555866, 48.000431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433740, 0.130243, 0.891575,
		-0.215867, -0.945661, 0.243161,
		0.874798, -0.297931, -0.382055,
		39.995770, 37.466488, 47.885815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504261, 37.040043, 48.504868>,  <39.383411, 37.675037, 48.153252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504261, 37.040043, 48.504868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858440, 37.171482, 48.373409>,  <40.070950, 37.250343, 48.294533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.858440, 37.171482, 48.373409>,  <39.504261, 37.040043, 48.504868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858440, 37.171482, 48.373409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351664, -0.011412, 0.936057,
		0.303833, -0.944402, -0.125660,
		0.885448, 0.328595, -0.328645,
		40.124073, 37.270061, 48.274815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980312, 36.593525, 48.867203>,  <39.504261, 37.040043, 48.504868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980312, 36.593525, 48.867203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.215179, 36.904667, 48.777596>,  <40.356098, 37.091351, 48.723831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.215179, 36.904667, 48.777596>,  <39.980312, 36.593525, 48.867203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215179, 36.904667, 48.777596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530764, -0.161014, 0.832084,
		0.611168, -0.607471, -0.507397,
		0.587165, 0.777852, -0.224017,
		40.391331, 37.138023, 48.710392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698605, 36.369732, 48.964001>,  <39.980312, 36.593525, 48.867203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698605, 36.369732, 48.964001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.709122, 36.769466, 48.974049>,  <40.715431, 37.009308, 48.980076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.709122, 36.769466, 48.974049>,  <40.698605, 36.369732, 48.964001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709122, 36.769466, 48.974049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483750, -0.034708, 0.874518,
		0.874812, -0.010841, -0.484342,
		0.026291, 0.999339, 0.025119,
		40.717010, 37.069267, 48.981583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395817, 36.489605, 49.121231>,  <40.698605, 36.369732, 48.964001>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395817, 36.489605, 49.121231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175343, 36.810146, 49.214207>,  <41.043060, 37.002472, 49.269993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.175343, 36.810146, 49.214207>,  <41.395817, 36.489605, 49.121231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175343, 36.810146, 49.214207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524891, 0.116463, 0.843164,
		0.648605, 0.586740, -0.484818,
		-0.551182, 0.801357, 0.232436,
		41.009987, 37.050552, 49.283939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886066, 36.958401, 49.421310>,  <41.395817, 36.489605, 49.121231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886066, 36.958401, 49.421310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.520432, 37.069836, 49.539177>,  <41.301052, 37.136696, 49.609898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.520432, 37.069836, 49.539177>,  <41.886066, 36.958401, 49.421310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520432, 37.069836, 49.539177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304167, -0.009541, 0.952571,
		0.268188, 0.960363, -0.076016,
		-0.914088, 0.278590, 0.294670,
		41.246204, 37.153412, 49.627579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.968292, 37.625946, 49.880444>,  <41.886066, 36.958401, 49.421310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.968292, 37.625946, 49.880444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.634583, 37.416214, 49.948631>,  <41.434357, 37.290375, 49.989544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.634583, 37.416214, 49.948631>,  <41.968292, 37.625946, 49.880444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634583, 37.416214, 49.948631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265938, -0.111852, 0.957479,
		-0.482971, 0.844135, 0.232756,
		-0.834276, -0.524333, 0.170466,
		41.384300, 37.258915, 49.999771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019115, 37.630672, 50.656300>,  <41.968292, 37.625946, 49.880444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019115, 37.630672, 50.656300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.690117, 37.419926, 50.570599>,  <41.492718, 37.293476, 50.519176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.690117, 37.419926, 50.570599>,  <42.019115, 37.630672, 50.656300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690117, 37.419926, 50.570599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209008, -0.070360, 0.975379,
		-0.528970, 0.847030, -0.052249,
		-0.822500, -0.526867, -0.214254,
		41.443367, 37.261864, 50.506321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520203, 37.865982, 51.200489>,  <42.019115, 37.630672, 50.656300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520203, 37.865982, 51.200489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.420715, 37.500904, 51.070797>,  <41.361023, 37.281857, 50.992981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.420715, 37.500904, 51.070797>,  <41.520203, 37.865982, 51.200489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420715, 37.500904, 51.070797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248739, -0.263334, 0.932086,
		-0.936092, 0.312473, -0.161527,
		-0.248716, -0.912697, -0.324229,
		41.346100, 37.227097, 50.973530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786743, 37.751358, 51.369678>,  <41.520203, 37.865982, 51.200489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786743, 37.751358, 51.369678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.991001, 37.407509, 51.362873>,  <41.113556, 37.201199, 51.358791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.991001, 37.407509, 51.362873>,  <40.786743, 37.751358, 51.369678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991001, 37.407509, 51.362873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270134, -0.179190, 0.946001,
		-0.816253, -0.478476, -0.323716,
		0.510646, -0.859623, -0.017012,
		41.144196, 37.149624, 51.357769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331264, 37.078739, 51.568027>,  <40.786743, 37.751358, 51.369678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331264, 37.078739, 51.568027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.720745, 37.031178, 51.645763>,  <40.954433, 37.002640, 51.692406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.720745, 37.031178, 51.645763>,  <40.331264, 37.078739, 51.568027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720745, 37.031178, 51.645763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215629, -0.205519, 0.954603,
		-0.073563, -0.971403, -0.225753,
		0.973701, -0.118902, 0.194344,
		41.012856, 36.995506, 51.704067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460060, 36.409000, 51.908855>,  <40.331264, 37.078739, 51.568027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460060, 36.409000, 51.908855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.798386, 36.604340, 51.994755>,  <41.001381, 36.721542, 52.046295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.798386, 36.604340, 51.994755>,  <40.460060, 36.409000, 51.908855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798386, 36.604340, 51.994755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052523, -0.324364, 0.944473,
		0.530891, -0.810125, -0.248701,
		0.845811, 0.488349, 0.214752,
		41.052128, 36.750843, 52.059181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807602, 36.100872, 51.696842>,  <40.460060, 36.409000, 51.908855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807602, 36.100872, 51.696842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.506554, 35.936348, 51.902515>,  <39.325924, 35.837631, 52.025921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.506554, 35.936348, 51.902515>,  <39.807602, 36.100872, 51.696842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506554, 35.936348, 51.902515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603267, 0.117780, -0.788795,
		0.263880, -0.903853, -0.336774,
		-0.752620, -0.411312, 0.514185,
		39.280769, 35.812954, 52.056770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501183, 35.454769, 51.306183>,  <39.807602, 36.100872, 51.696842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501183, 35.454769, 51.306183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215191, 35.579926, 51.556271>,  <39.043594, 35.655022, 51.706322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.215191, 35.579926, 51.556271>,  <39.501183, 35.454769, 51.306183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215191, 35.579926, 51.556271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669028, -0.046560, -0.741778,
		-0.202989, -0.948645, 0.242626,
		-0.714981, 0.312896, 0.625219,
		39.000698, 35.673794, 51.743835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922176, 34.950996, 51.120651>,  <39.501183, 35.454769, 51.306183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922176, 34.950996, 51.120651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.770912, 35.282902, 51.284840>,  <38.680153, 35.482044, 51.383354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.770912, 35.282902, 51.284840>,  <38.922176, 34.950996, 51.120651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770912, 35.282902, 51.284840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692330, 0.040859, -0.720423,
		-0.614553, -0.556616, 0.559020,
		-0.378158, 0.829764, 0.410473,
		38.657463, 35.531830, 51.407982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118301, 34.837475, 51.208454>,  <38.922176, 34.950996, 51.120651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118301, 34.837475, 51.208454> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160381, 35.235226, 51.203548>,  <38.185631, 35.473877, 51.200603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160381, 35.235226, 51.203548>,  <38.118301, 34.837475, 51.208454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160381, 35.235226, 51.203548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732005, 0.069083, -0.677788,
		-0.673128, 0.080287, 0.735155,
		0.105204, 0.994375, -0.012269,
		38.191944, 35.533539, 51.199867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337112, 35.133396, 51.041363>,  <38.118301, 34.837475, 51.208454>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337112, 35.133396, 51.041363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.615215, 35.418648, 51.005436>,  <37.782078, 35.589798, 50.983879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.615215, 35.418648, 51.005436>,  <37.337112, 35.133396, 51.041363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615215, 35.418648, 51.005436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530820, 0.425174, -0.733115,
		-0.484617, 0.557379, 0.674148,
		0.695253, 0.713131, -0.089821,
		37.823792, 35.632587, 50.978489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927677, 35.706593, 50.864426>,  <37.337112, 35.133396, 51.041363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927677, 35.706593, 50.864426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300282, 35.788200, 50.743988>,  <37.523846, 35.837166, 50.671726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300282, 35.788200, 50.743988>,  <36.927677, 35.706593, 50.864426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300282, 35.788200, 50.743988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363553, 0.498262, -0.787124,
		-0.010567, 0.842680, 0.538310,
		0.931514, 0.204022, -0.301093,
		37.579735, 35.849407, 50.653660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893185, 36.357162, 50.514641>,  <36.927677, 35.706593, 50.864426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893185, 36.357162, 50.514641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228706, 36.198383, 50.365601>,  <37.430019, 36.103115, 50.276176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.228706, 36.198383, 50.365601>,  <36.893185, 36.357162, 50.514641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228706, 36.198383, 50.365601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209272, 0.396730, -0.893762,
		0.502601, 0.827670, 0.249711,
		0.838807, -0.396948, -0.372605,
		37.480350, 36.079300, 50.253819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134106, 36.840050, 50.060844>,  <36.893185, 36.357162, 50.514641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134106, 36.840050, 50.060844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.334251, 36.516129, 49.938305>,  <37.454338, 36.321774, 49.864780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.334251, 36.516129, 49.938305>,  <37.134106, 36.840050, 50.060844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334251, 36.516129, 49.938305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127048, 0.281319, -0.951167,
		0.856442, 0.514851, 0.037878,
		0.500365, -0.809807, -0.306345,
		37.484360, 36.273186, 49.846401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590958, 37.067680, 49.545376>,  <37.134106, 36.840050, 50.060844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590958, 37.067680, 49.545376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521763, 36.680756, 49.471210>,  <37.480247, 36.448601, 49.426712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.521763, 36.680756, 49.471210>,  <37.590958, 37.067680, 49.545376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521763, 36.680756, 49.471210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152252, 0.159728, -0.975349,
		0.973085, -0.196951, 0.119645,
		-0.172985, -0.967314, -0.185415,
		37.469868, 36.390560, 49.415585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137337, 36.857895, 49.188328>,  <37.590958, 37.067680, 49.545376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137337, 36.857895, 49.188328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847839, 36.600239, 49.089317>,  <37.674141, 36.445644, 49.029911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847839, 36.600239, 49.089317>,  <38.137337, 36.857895, 49.188328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847839, 36.600239, 49.089317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230084, 0.112915, -0.966598,
		0.650578, -0.756524, 0.066485,
		-0.723747, -0.644144, -0.247524,
		37.630714, 36.406994, 49.015060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320679, 36.536041, 48.605099>,  <38.137337, 36.857895, 49.188328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320679, 36.536041, 48.605099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932381, 36.440426, 48.595951>,  <37.699402, 36.383057, 48.590462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.932381, 36.440426, 48.595951>,  <38.320679, 36.536041, 48.605099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932381, 36.440426, 48.595951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002297, 0.085971, -0.996295,
		0.240116, -0.967197, -0.082907,
		-0.970741, -0.239036, -0.022865,
		37.641159, 36.368717, 48.589092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255089, 36.066544, 48.029518>,  <38.320679, 36.536041, 48.605099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255089, 36.066544, 48.029518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881920, 36.199772, 48.084263>,  <37.658020, 36.279709, 48.117111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881920, 36.199772, 48.084263>,  <38.255089, 36.066544, 48.029518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881920, 36.199772, 48.084263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091277, 0.148930, -0.984626,
		-0.348329, -0.931067, -0.108538,
		-0.932917, 0.333067, 0.136862,
		37.602043, 36.299690, 48.125320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908863, 35.665733, 47.476406>,  <38.255089, 36.066544, 48.029518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908863, 35.665733, 47.476406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674355, 35.971039, 47.585003>,  <37.533649, 36.154224, 47.650162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.674355, 35.971039, 47.585003>,  <37.908863, 35.665733, 47.476406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674355, 35.971039, 47.585003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147760, 0.228762, -0.962203,
		-0.796526, -0.604227, -0.021336,
		-0.586270, 0.763268, 0.271495,
		37.498474, 36.200020, 47.666451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331894, 35.643608, 46.976612>,  <37.908863, 35.665733, 47.476406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331894, 35.643608, 46.976612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.345825, 36.016315, 47.121162>,  <37.354183, 36.239941, 47.207893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.345825, 36.016315, 47.121162>,  <37.331894, 35.643608, 46.976612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345825, 36.016315, 47.121162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082376, 0.363039, -0.928125,
		-0.995992, 0.002558, 0.089400,
		0.034830, 0.931770, 0.361373,
		37.356274, 36.295845, 47.229576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761978, 36.032692, 46.689610>,  <37.331894, 35.643608, 46.976612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761978, 36.032692, 46.689610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012009, 36.331989, 46.778526>,  <37.162029, 36.511566, 46.831875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012009, 36.331989, 46.778526>,  <36.761978, 36.032692, 46.689610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012009, 36.331989, 46.778526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023419, 0.302633, -0.952819,
		-0.780209, 0.590382, 0.206693,
		0.625080, 0.748239, 0.222291,
		37.199532, 36.556461, 46.845215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424416, 36.638317, 46.354549>,  <36.761978, 36.032692, 46.689610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424416, 36.638317, 46.354549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.814487, 36.692196, 46.424843>,  <37.048531, 36.724522, 46.467018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.814487, 36.692196, 46.424843>,  <36.424416, 36.638317, 46.354549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814487, 36.692196, 46.424843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129844, 0.295002, -0.946633,
		-0.179347, 0.945955, 0.270191,
		0.975180, 0.134693, 0.175735,
		37.107040, 36.732605, 46.477562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525867, 37.303337, 46.297611>,  <36.424416, 36.638317, 46.354549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525867, 37.303337, 46.297611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.847153, 37.083759, 46.205074>,  <37.039925, 36.952015, 46.149551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.847153, 37.083759, 46.205074>,  <36.525867, 37.303337, 46.297611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847153, 37.083759, 46.205074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080057, 0.484301, -0.871231,
		0.590293, 0.681260, 0.432942,
		0.803209, -0.548942, -0.231340,
		37.088116, 36.919075, 46.135674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760204, 37.663013, 45.717300>,  <36.525867, 37.303337, 46.297611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760204, 37.663013, 45.717300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005695, 37.347397, 45.706337>,  <37.152988, 37.158028, 45.699757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.005695, 37.347397, 45.706337>,  <36.760204, 37.663013, 45.717300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005695, 37.347397, 45.706337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227912, 0.210300, -0.950700,
		0.755909, 0.577220, 0.308899,
		0.613724, -0.789045, -0.027412,
		37.189812, 37.110683, 45.698112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405952, 37.864265, 45.365021>,  <36.760204, 37.663013, 45.717300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405952, 37.864265, 45.365021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364834, 37.470367, 45.308861>,  <37.340164, 37.234028, 45.275166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.364834, 37.470367, 45.308861>,  <37.405952, 37.864265, 45.365021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364834, 37.470367, 45.308861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045055, 0.145610, -0.988316,
		0.993682, -0.095265, -0.059335,
		-0.102792, -0.984745, -0.140398,
		37.333996, 37.174946, 45.266743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943336, 37.643547, 44.933239>,  <37.405952, 37.864265, 45.365021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943336, 37.643547, 44.933239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645672, 37.380081, 44.888710>,  <37.467075, 37.222004, 44.861992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645672, 37.380081, 44.888710>,  <37.943336, 37.643547, 44.933239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645672, 37.380081, 44.888710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027907, 0.197154, -0.979975,
		0.667420, -0.726150, -0.165095,
		-0.744158, -0.658662, -0.111320,
		37.422424, 37.182484, 44.855312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.352356, 35.138931, 31.837908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.381477, 34.816166, 32.072372>,  <38.398952, 34.622505, 32.213051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.381477, 34.816166, 32.072372>,  <38.352356, 35.138931, 31.837908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381477, 34.816166, 32.072372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987541, 0.140534, 0.070799,
		-0.139504, 0.573705, 0.807094,
		0.072807, -0.806915, 0.586163,
		38.403320, 34.574093, 32.248222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766438, 35.446079, 32.386524>,  <38.352356, 35.138931, 31.837908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766438, 35.446079, 32.386524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.769001, 35.046902, 32.412025>,  <38.770538, 34.807396, 32.427326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.769001, 35.046902, 32.412025>,  <38.766438, 35.446079, 32.386524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769001, 35.046902, 32.412025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940392, 0.027692, 0.338963,
		-0.340032, 0.057784, 0.938637,
		0.006406, -0.997945, 0.063756,
		38.770924, 34.747517, 32.431152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121181, 35.349239, 32.940979>,  <38.766438, 35.446079, 32.386524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121181, 35.349239, 32.940979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.150787, 35.006065, 32.737621>,  <39.168552, 34.800159, 32.615604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.150787, 35.006065, 32.737621>,  <39.121181, 35.349239, 32.940979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150787, 35.006065, 32.737621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873736, -0.189964, 0.447771,
		-0.480736, -0.477347, 0.735549,
		0.074015, -0.857936, -0.508398,
		39.172993, 34.748684, 32.585102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349888, 34.876305, 33.424461>,  <39.121181, 35.349239, 32.940979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349888, 34.876305, 33.424461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.438492, 34.739353, 33.059231>,  <39.491653, 34.657185, 32.840092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.438492, 34.739353, 33.059231>,  <39.349888, 34.876305, 33.424461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438492, 34.739353, 33.059231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934355, -0.193500, 0.299229,
		-0.279129, -0.919422, 0.277037,
		0.221511, -0.342374, -0.913079,
		39.504944, 34.636642, 32.785309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782616, 34.243900, 33.518440>,  <39.349888, 34.876305, 33.424461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782616, 34.243900, 33.518440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857265, 34.373409, 33.147423>,  <39.902054, 34.451115, 32.924812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.857265, 34.373409, 33.147423>,  <39.782616, 34.243900, 33.518440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857265, 34.373409, 33.147423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981259, -0.107549, 0.159888,
		-0.047989, -0.940001, -0.337780,
		0.186623, 0.323777, -0.927545,
		39.913254, 34.470543, 32.869160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320988, 33.734489, 33.209980>,  <39.782616, 34.243900, 33.518440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320988, 33.734489, 33.209980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337143, 34.062977, 32.982307>,  <40.346836, 34.260071, 32.845703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.337143, 34.062977, 32.982307>,  <40.320988, 33.734489, 33.209980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337143, 34.062977, 32.982307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997790, -0.063230, -0.020426,
		-0.052763, -0.567097, -0.821959,
		0.040389, 0.821220, -0.569180,
		40.349258, 34.309341, 32.811554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789833, 33.581161, 32.582886>,  <40.320988, 33.734489, 33.209980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789833, 33.581161, 32.582886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.772503, 33.980373, 32.601006>,  <40.762104, 34.219902, 32.611877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.772503, 33.980373, 32.601006>,  <40.789833, 33.581161, 32.582886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.772503, 33.980373, 32.601006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992804, 0.048076, -0.109679,
		-0.111641, 0.040223, -0.992934,
		-0.043325, 0.998033, 0.045300,
		40.759506, 34.279785, 32.614597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127422, 33.804165, 32.021191>,  <40.789833, 33.581161, 32.582886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127422, 33.804165, 32.021191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.129993, 34.114521, 32.273525>,  <41.131535, 34.300735, 32.424927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.129993, 34.114521, 32.273525>,  <41.127422, 33.804165, 32.021191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.129993, 34.114521, 32.273525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997348, 0.040761, -0.060289,
		-0.072491, 0.629549, -0.773572,
		0.006423, 0.775891, 0.630835,
		41.131920, 34.347290, 32.462776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677055, 34.151127, 31.871006>,  <41.127422, 33.804165, 32.021191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677055, 34.151127, 31.871006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.588264, 34.276108, 32.240459>,  <41.534992, 34.351097, 32.462132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.588264, 34.276108, 32.240459>,  <41.677055, 34.151127, 31.871006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588264, 34.276108, 32.240459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974543, 0.101711, 0.199801,
		-0.031516, 0.944473, -0.327074,
		-0.221973, 0.312451, 0.923635,
		41.521671, 34.369843, 32.517551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.972183, 34.788528, 31.957579>,  <41.677055, 34.151127, 31.871006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.972183, 34.788528, 31.957579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.928093, 34.642345, 32.327290>,  <41.901638, 34.554634, 32.549118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.928093, 34.642345, 32.327290>,  <41.972183, 34.788528, 31.957579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.928093, 34.642345, 32.327290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935532, 0.275858, 0.220639,
		-0.335604, 0.889012, 0.311493,
		-0.110223, -0.365459, 0.924278,
		41.895027, 34.532707, 32.604572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394112, 35.144234, 32.329762>,  <41.972183, 34.788528, 31.957579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394112, 35.144234, 32.329762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.338467, 34.837303, 32.580158>,  <42.305080, 34.653145, 32.730396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.338467, 34.837303, 32.580158>,  <42.394112, 35.144234, 32.329762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338467, 34.837303, 32.580158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970466, 0.020171, 0.240395,
		-0.197087, 0.640944, 0.741854,
		-0.139116, -0.767322, 0.625990,
		42.296730, 34.607105, 32.767956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.710587, 35.404568, 32.991062>,  <42.394112, 35.144234, 32.329762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.710587, 35.404568, 32.991062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.687016, 35.005306, 32.996929>,  <42.672874, 34.765751, 33.000450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.687016, 35.005306, 32.996929>,  <42.710587, 35.404568, 32.991062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.687016, 35.005306, 32.996929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842590, -0.041850, 0.536927,
		-0.535322, 0.043998, 0.843501,
		-0.058924, -0.998155, 0.014669,
		42.669338, 34.705860, 33.001331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891346, 35.210049, 33.629028>,  <42.710587, 35.404568, 32.991062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891346, 35.210049, 33.629028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.935928, 34.862415, 33.436253>,  <42.962677, 34.653835, 33.320587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.935928, 34.862415, 33.436253>,  <42.891346, 35.210049, 33.629028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935928, 34.862415, 33.436253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833797, -0.182082, 0.521180,
		-0.540703, -0.459931, 0.704346,
		0.111458, -0.869085, -0.481942,
		42.969364, 34.601688, 33.291672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041550, 34.589909, 34.163952>,  <42.891346, 35.210049, 33.629028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041550, 34.589909, 34.163952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156948, 34.502815, 33.790993>,  <43.226189, 34.450558, 33.567219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156948, 34.502815, 33.790993>,  <43.041550, 34.589909, 34.163952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156948, 34.502815, 33.790993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859759, -0.369681, 0.352350,
		-0.421408, -0.903287, 0.080548,
		0.288496, -0.217735, -0.932396,
		43.243496, 34.437496, 33.511272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.271454, 33.931580, 34.169807>,  <43.041550, 34.589909, 34.163952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.271454, 33.931580, 34.169807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.440315, 34.084358, 33.840954>,  <43.541630, 34.176025, 33.643642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.440315, 34.084358, 33.840954>,  <43.271454, 33.931580, 34.169807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.440315, 34.084358, 33.840954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856843, -0.464229, 0.224301,
		-0.295986, -0.799128, -0.523247,
		0.422152, 0.381951, -0.822133,
		43.566959, 34.198944, 33.594315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.619408, 33.353699, 33.984543>,  <43.271454, 33.931580, 34.169807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.619408, 33.353699, 33.984543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.781551, 33.672604, 33.805630>,  <43.878838, 33.863945, 33.698280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.781551, 33.672604, 33.805630>,  <43.619408, 33.353699, 33.984543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781551, 33.672604, 33.805630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914156, -0.354493, 0.196605,
		-0.001814, -0.488583, -0.872516,
		0.405359, 0.797259, -0.447284,
		43.903160, 33.911781, 33.671444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187466, 33.077564, 33.643177>,  <43.619408, 33.353699, 33.984543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187466, 33.077564, 33.643177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.258053, 33.470669, 33.665218>,  <44.300404, 33.706532, 33.678444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.258053, 33.470669, 33.665218>,  <44.187466, 33.077564, 33.643177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258053, 33.470669, 33.665218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971093, -0.182970, 0.153296,
		0.160736, 0.026460, -0.986643,
		0.176469, 0.982762, 0.055105,
		44.310993, 33.765499, 33.681751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689350, 33.222878, 33.109024>,  <44.187466, 33.077564, 33.643177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689350, 33.222878, 33.109024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.685020, 33.508389, 33.389141>,  <44.682423, 33.679695, 33.557209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.685020, 33.508389, 33.389141>,  <44.689350, 33.222878, 33.109024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685020, 33.508389, 33.389141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962372, -0.182729, 0.201123,
		0.271520, 0.676115, -0.684942,
		-0.010823, 0.713778, 0.700288,
		44.681774, 33.722523, 33.599228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327774, 33.554852, 33.031681>,  <44.689350, 33.222878, 33.109024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327774, 33.554852, 33.031681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.200802, 33.657799, 33.396755>,  <45.124619, 33.719566, 33.615799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.200802, 33.657799, 33.396755>,  <45.327774, 33.554852, 33.031681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200802, 33.657799, 33.396755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924139, -0.131832, 0.358590,
		0.212610, 0.957280, -0.195992,
		-0.317433, 0.257363, 0.912689,
		45.105572, 33.735008, 33.670563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.859413, 33.933392, 33.291359>,  <45.327774, 33.554852, 33.031681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.859413, 33.933392, 33.291359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.654247, 33.862698, 33.627377>,  <45.531147, 33.820282, 33.828987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.654247, 33.862698, 33.627377>,  <45.859413, 33.933392, 33.291359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.654247, 33.862698, 33.627377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857953, -0.138419, 0.494728,
		0.028843, 0.974477, 0.222627,
		-0.512917, -0.176735, 0.840048,
		45.500374, 33.809677, 33.879391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151428, 34.333435, 33.843681>,  <45.859413, 33.933392, 33.291359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151428, 34.333435, 33.843681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.961258, 33.989548, 33.918350>,  <45.847157, 33.783215, 33.963150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.961258, 33.989548, 33.918350>,  <46.151428, 34.333435, 33.843681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961258, 33.989548, 33.918350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733504, -0.270213, 0.623664,
		-0.485737, 0.433432, 0.759076,
		-0.475428, -0.859722, 0.186671,
		45.818630, 33.731632, 33.974350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408001, 34.918522, 34.306416>,  <46.151428, 34.333435, 33.843681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408001, 34.918522, 34.306416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.479038, 35.079865, 34.665474>,  <46.521660, 35.176670, 34.880909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.479038, 35.079865, 34.665474>,  <46.408001, 34.918522, 34.306416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.479038, 35.079865, 34.665474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786323, 0.606632, -0.117020,
		-0.591740, -0.685056, 0.424902,
		0.177594, 0.403356, 0.897644,
		46.532318, 35.200871, 34.934769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.886105, 34.765064, 34.677368>,  <46.408001, 34.918522, 34.306416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.886105, 34.765064, 34.677368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.069973, 35.110641, 34.759632>,  <46.180294, 35.317989, 34.808990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.069973, 35.110641, 34.759632>,  <45.886105, 34.765064, 34.677368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.069973, 35.110641, 34.759632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802427, 0.503276, -0.320663,
		-0.380539, -0.017625, 0.924597,
		0.459676, 0.863946, 0.205659,
		46.207874, 35.369823, 34.821331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437965, 35.198715, 35.084541>,  <45.886105, 34.765064, 34.677368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437965, 35.198715, 35.084541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.686409, 35.454189, 34.902859>,  <45.835476, 35.607475, 34.793846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.686409, 35.454189, 34.902859>,  <45.437965, 35.198715, 35.084541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.686409, 35.454189, 34.902859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781136, 0.551565, -0.292578,
		0.063662, 0.536523, 0.841481,
		0.621107, 0.638685, -0.454211,
		45.872742, 35.645794, 34.766594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.439041, 35.845081, 35.449081>,  <45.437965, 35.198715, 35.084541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.439041, 35.845081, 35.449081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.558781, 35.913689, 35.073639>,  <45.630623, 35.954853, 34.848373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.558781, 35.913689, 35.073639>,  <45.439041, 35.845081, 35.449081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.558781, 35.913689, 35.073639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735616, 0.667984, -0.112543,
		0.607668, 0.724140, 0.326130,
		0.299346, 0.171518, -0.938602,
		45.648586, 35.965145, 34.792057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264111, 36.553871, 35.386814>,  <45.439041, 35.845081, 35.449081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264111, 36.553871, 35.386814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361626, 36.459698, 35.010487>,  <45.420135, 36.403194, 34.784691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361626, 36.459698, 35.010487>,  <45.264111, 36.553871, 35.386814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361626, 36.459698, 35.010487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708034, 0.619732, -0.338557,
		0.662763, 0.748667, -0.015613,
		0.243790, -0.235437, -0.940816,
		45.434761, 36.389065, 34.728241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.112049, 37.206184, 35.025726>,  <45.264111, 36.553871, 35.386814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.112049, 37.206184, 35.025726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.131031, 36.923286, 34.743576>,  <45.142422, 36.753548, 34.574287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.131031, 36.923286, 34.743576>,  <45.112049, 37.206184, 35.025726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131031, 36.923286, 34.743576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744659, 0.445616, -0.496900,
		0.665756, 0.548846, -0.505507,
		0.047459, -0.707245, -0.705374,
		45.145267, 36.711113, 34.531963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.176723, 37.482113, 34.327499>,  <45.112049, 37.206184, 35.025726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.176723, 37.482113, 34.327499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.011257, 37.122768, 34.268394>,  <44.911976, 36.907162, 34.232929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.011257, 37.122768, 34.268394>,  <45.176723, 37.482113, 34.327499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.011257, 37.122768, 34.268394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781817, 0.433686, -0.447971,
		0.466521, -0.069787, -0.881753,
		-0.413666, -0.898357, -0.147763,
		44.887157, 36.853260, 34.224064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620213, 37.648499, 33.834793>,  <45.176723, 37.482113, 34.327499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620213, 37.648499, 33.834793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543404, 37.265965, 33.922932>,  <44.497318, 37.036446, 33.975815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.543404, 37.265965, 33.922932>,  <44.620213, 37.648499, 33.834793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543404, 37.265965, 33.922932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915129, 0.093379, -0.392199,
		0.354497, -0.276959, -0.893099,
		-0.192020, -0.956334, 0.220350,
		44.485798, 36.979065, 33.989037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315224, 37.406639, 33.185760>,  <44.620213, 37.648499, 33.834793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315224, 37.406639, 33.185760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.178616, 37.193668, 33.495571>,  <44.096649, 37.065887, 33.681458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.178616, 37.193668, 33.495571>,  <44.315224, 37.406639, 33.185760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178616, 37.193668, 33.495571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939801, 0.203708, -0.274367,
		-0.011697, -0.821601, -0.569943,
		-0.341523, -0.532424, 0.774524,
		44.076160, 37.033939, 33.727928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816444, 36.943474, 32.931206>,  <44.315224, 37.406639, 33.185760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816444, 36.943474, 32.931206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736641, 36.984314, 33.321030>,  <43.688759, 37.008820, 33.554924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.736641, 36.984314, 33.321030>,  <43.816444, 36.943474, 32.931206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.736641, 36.984314, 33.321030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971977, 0.105566, -0.210040,
		-0.124328, -0.989156, 0.078186,
		-0.199508, 0.102109, 0.974562,
		43.676788, 37.014946, 33.613400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293388, 36.373146, 33.087517>,  <43.816444, 36.943474, 32.931206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293388, 36.373146, 33.087517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265373, 36.656605, 33.368347>,  <43.248566, 36.826679, 33.536846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.265373, 36.656605, 33.368347>,  <43.293388, 36.373146, 33.087517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265373, 36.656605, 33.368347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985049, 0.061920, -0.160763,
		-0.157397, -0.702842, 0.693714,
		-0.070036, 0.708646, 0.702079,
		43.244362, 36.869198, 33.578972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823536, 36.155396, 33.598911>,  <43.293388, 36.373146, 33.087517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823536, 36.155396, 33.598911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.825043, 36.554264, 33.628960>,  <42.825947, 36.793583, 33.646988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.825043, 36.554264, 33.628960>,  <42.823536, 36.155396, 33.598911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825043, 36.554264, 33.628960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981463, 0.018084, -0.190795,
		-0.191613, -0.073005, 0.978751,
		0.003771, 0.997168, 0.075117,
		42.826176, 36.853413, 33.651493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.129333, 36.317173, 33.836918>,  <42.823536, 36.155396, 33.598911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.129333, 36.317173, 33.836918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.270428, 36.682365, 33.754894>,  <42.355083, 36.901482, 33.705681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.270428, 36.682365, 33.754894>,  <42.129333, 36.317173, 33.836918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270428, 36.682365, 33.754894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922525, 0.302628, -0.239508,
		-0.156608, 0.273657, 0.948992,
		0.352734, 0.912978, -0.205062,
		42.376247, 36.956257, 33.693375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690971, 36.843536, 34.164799>,  <42.129333, 36.317173, 33.836918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690971, 36.843536, 34.164799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.871914, 37.014187, 33.851528>,  <41.980480, 37.116577, 33.663567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.871914, 37.014187, 33.851528>,  <41.690971, 36.843536, 34.164799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871914, 37.014187, 33.851528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856846, 0.451470, -0.248978,
		0.247358, 0.783686, 0.569781,
		0.452360, 0.426628, -0.783172,
		42.007622, 37.142174, 33.616577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609951, 37.588230, 34.255924>,  <41.690971, 36.843536, 34.164799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609951, 37.588230, 34.255924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.657742, 37.495941, 33.869659>,  <41.686417, 37.440567, 33.637901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.657742, 37.495941, 33.869659>,  <41.609951, 37.588230, 34.255924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657742, 37.495941, 33.869659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898609, 0.388448, -0.203986,
		0.422171, 0.892120, -0.160917,
		0.119472, -0.230718, -0.965658,
		41.693584, 37.426727, 33.579964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.299400, 38.248253, 33.821251>,  <41.609951, 37.588230, 34.255924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.299400, 38.248253, 33.821251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312859, 37.916420, 33.598305>,  <41.320934, 37.717319, 33.464539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.312859, 37.916420, 33.598305>,  <41.299400, 38.248253, 33.821251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312859, 37.916420, 33.598305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947166, 0.151521, -0.282699,
		0.318975, 0.537430, -0.780656,
		0.033645, -0.829585, -0.557366,
		41.322952, 37.667545, 33.431095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924503, 38.488602, 33.296005>,  <41.299400, 38.248253, 33.821251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924503, 38.488602, 33.296005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957310, 38.099442, 33.209530>,  <40.976994, 37.865944, 33.157646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957310, 38.099442, 33.209530>,  <40.924503, 38.488602, 33.296005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957310, 38.099442, 33.209530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960108, -0.018941, -0.278988,
		0.267333, 0.230441, -0.935644,
		0.082012, -0.972902, -0.216185,
		40.981915, 37.807571, 33.144676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645592, 38.403038, 32.597023>,  <40.924503, 38.488602, 33.296005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645592, 38.403038, 32.597023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.642662, 38.036407, 32.756943>,  <40.640903, 37.816429, 32.852894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.642662, 38.036407, 32.756943>,  <40.645592, 38.403038, 32.597023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642662, 38.036407, 32.756943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964433, -0.099165, -0.245020,
		0.264225, -0.387373, -0.883248,
		-0.007327, -0.916574, 0.399797,
		40.640465, 37.761436, 32.876881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343754, 37.979546, 32.128105>,  <40.645592, 38.403038, 32.597023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343754, 37.979546, 32.128105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.312668, 37.770100, 32.467464>,  <40.294014, 37.644432, 32.671082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.312668, 37.770100, 32.467464>,  <40.343754, 37.979546, 32.128105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312668, 37.770100, 32.467464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883171, -0.358671, -0.302267,
		0.462569, -0.772775, -0.434567,
		-0.077718, -0.523616, 0.848402,
		40.289352, 37.613014, 32.721985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220230, 37.380768, 31.881029>,  <40.343754, 37.979546, 32.128105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220230, 37.380768, 31.881029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.084515, 37.385567, 32.257271>,  <40.003086, 37.388447, 32.483017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.084515, 37.385567, 32.257271>,  <40.220230, 37.380768, 31.881029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084515, 37.385567, 32.257271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889617, -0.329064, -0.316701,
		0.305721, -0.944232, 0.122316,
		-0.339289, 0.011992, 0.940606,
		39.982727, 37.389164, 32.539452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976097, 36.833927, 31.985792>,  <40.220230, 37.380768, 31.881029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976097, 36.833927, 31.985792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.790157, 37.048809, 32.267311>,  <39.678593, 37.177738, 32.436222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.790157, 37.048809, 32.267311>,  <39.976097, 36.833927, 31.985792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790157, 37.048809, 32.267311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884670, -0.249819, -0.393636,
		-0.035640, -0.805610, 0.591373,
		-0.464853, 0.537199, 0.703795,
		39.650700, 37.209969, 32.478451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.453617, 36.207420, 40.496243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194996, 35.903713, 40.525864>,  <41.039822, 35.721489, 40.543636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194996, 35.903713, 40.525864>,  <41.453617, 36.207420, 40.496243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194996, 35.903713, 40.525864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168091, -0.236478, -0.956987,
		0.744121, -0.606294, 0.280521,
		-0.646552, -0.759267, 0.074055,
		41.001030, 35.675934, 40.548080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794182, 35.598766, 40.262493>,  <41.453617, 36.207420, 40.496243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794182, 35.598766, 40.262493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400181, 35.547909, 40.215832>,  <41.163780, 35.517395, 40.187836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400181, 35.547909, 40.215832>,  <41.794182, 35.598766, 40.262493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400181, 35.547909, 40.215832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146454, -0.258520, -0.954839,
		0.091244, -0.957602, 0.273263,
		-0.985000, -0.127144, -0.116656,
		41.104679, 35.509766, 40.180836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750332, 35.118534, 39.708862>,  <41.794182, 35.598766, 40.262493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750332, 35.118534, 39.708862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378033, 35.264797, 39.707981>,  <41.154652, 35.352554, 39.707451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378033, 35.264797, 39.707981>,  <41.750332, 35.118534, 39.708862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378033, 35.264797, 39.707981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055115, -0.146249, -0.987711,
		-0.361487, -0.919188, 0.156274,
		-0.930747, 0.365658, -0.002206,
		41.098808, 35.374493, 39.707321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370399, 34.647800, 39.271248>,  <41.750332, 35.118534, 39.708862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370399, 34.647800, 39.271248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165874, 34.991295, 39.284763>,  <41.043159, 35.197392, 39.292873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165874, 34.991295, 39.284763>,  <41.370399, 34.647800, 39.271248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165874, 34.991295, 39.284763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194326, -0.077226, -0.977893,
		-0.837139, -0.506570, 0.206360,
		-0.511308, 0.858733, 0.033791,
		41.012482, 35.248917, 39.294899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668056, 34.506573, 38.946033>,  <41.370399, 34.647800, 39.271248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668056, 34.506573, 38.946033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723194, 34.902718, 38.951420>,  <40.756279, 35.140404, 38.954651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723194, 34.902718, 38.951420>,  <40.668056, 34.506573, 38.946033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723194, 34.902718, 38.951420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111341, 0.029006, -0.993359,
		-0.984176, 0.135433, 0.114266,
		0.137848, 0.990362, 0.013468,
		40.764549, 35.199825, 38.955460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092533, 34.829063, 38.629757>,  <40.668056, 34.506573, 38.946033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092533, 34.829063, 38.629757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362583, 35.121689, 38.591774>,  <40.524612, 35.297264, 38.568985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362583, 35.121689, 38.591774>,  <40.092533, 34.829063, 38.629757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362583, 35.121689, 38.591774> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113787, -0.023914, -0.993217,
		-0.728871, 0.681355, 0.067098,
		0.675129, 0.731562, -0.094959,
		40.565121, 35.341156, 38.563286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626034, 35.443550, 38.307686>,  <40.092533, 34.829063, 38.629757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626034, 35.443550, 38.307686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015434, 35.517246, 38.253498>,  <40.249073, 35.561462, 38.220985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015434, 35.517246, 38.253498>,  <39.626034, 35.443550, 38.307686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015434, 35.517246, 38.253498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162784, 0.142243, -0.976355,
		-0.160613, 0.972534, 0.168464,
		0.973501, 0.184238, -0.135467,
		40.307484, 35.572517, 38.212856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663895, 36.111206, 37.853241>,  <39.626034, 35.443550, 38.307686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663895, 36.111206, 37.853241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004330, 35.906334, 37.807083>,  <40.208591, 35.783409, 37.779388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004330, 35.906334, 37.807083>,  <39.663895, 36.111206, 37.853241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004330, 35.906334, 37.807083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094948, 0.066013, -0.993291,
		0.516362, 0.856337, 0.007553,
		0.851091, -0.512180, -0.115394,
		40.259659, 35.752678, 37.772465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024483, 36.544697, 37.384605>,  <39.663895, 36.111206, 37.853241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024483, 36.544697, 37.384605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230560, 36.203278, 37.353546>,  <40.354206, 35.998425, 37.334911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230560, 36.203278, 37.353546>,  <40.024483, 36.544697, 37.384605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230560, 36.203278, 37.353546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107947, 0.154493, -0.982079,
		0.850249, 0.497579, 0.171732,
		0.515194, -0.853549, -0.077645,
		40.385117, 35.947212, 37.330254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579494, 36.644711, 36.861877>,  <40.024483, 36.544697, 37.384605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.579494, 36.644711, 36.861877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507183, 36.252716, 36.895203>,  <40.463799, 36.017517, 36.915195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507183, 36.252716, 36.895203>,  <40.579494, 36.644711, 36.861877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507183, 36.252716, 36.895203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074223, -0.098057, -0.992409,
		0.980720, -0.173219, 0.090464,
		-0.180775, -0.979990, 0.083310,
		40.452950, 35.958717, 36.920197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959091, 36.312176, 36.302959>,  <40.579494, 36.644711, 36.861877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959091, 36.312176, 36.302959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699970, 36.026043, 36.407768>,  <40.544498, 35.854362, 36.470654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699970, 36.026043, 36.407768>,  <40.959091, 36.312176, 36.302959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699970, 36.026043, 36.407768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042588, -0.309398, -0.949979,
		0.760619, -0.626556, 0.169963,
		-0.647801, -0.715333, 0.262017,
		40.505630, 35.811443, 36.486374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194710, 35.667461, 36.039330>,  <40.959091, 36.312176, 36.302959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194710, 35.667461, 36.039330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798519, 35.625614, 36.075153>,  <40.560806, 35.600506, 36.096645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798519, 35.625614, 36.075153>,  <41.194710, 35.667461, 36.039330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798519, 35.625614, 36.075153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069632, -0.180610, -0.981087,
		0.118812, -0.977975, 0.171605,
		-0.990472, -0.104616, 0.089557,
		40.501377, 35.594231, 36.102020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905502, 34.963837, 35.857262>,  <41.194710, 35.667461, 36.039330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905502, 34.963837, 35.857262> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669872, 35.277462, 35.779041>,  <40.528492, 35.465637, 35.732109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669872, 35.277462, 35.779041>,  <40.905502, 34.963837, 35.857262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669872, 35.277462, 35.779041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109081, -0.162621, -0.980641,
		-0.800681, -0.599003, 0.010271,
		-0.589077, 0.784059, -0.195547,
		40.493149, 35.512680, 35.720379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024796, 34.234406, 35.720699>,  <40.905502, 34.963837, 35.857262>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024796, 34.234406, 35.720699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842655, 34.256916, 36.076111>,  <40.733372, 34.270420, 36.289356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842655, 34.256916, 36.076111>,  <41.024796, 34.234406, 35.720699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842655, 34.256916, 36.076111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767478, -0.481025, 0.423783,
		0.451252, 0.874899, 0.175850,
		-0.455355, 0.056272, 0.888530,
		40.706047, 34.273796, 36.342670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289536, 33.717880, 35.289360>,  <41.024796, 34.234406, 35.720699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289536, 33.717880, 35.289360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535965, 33.457947, 35.467422>,  <41.683823, 33.301987, 35.574261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535965, 33.457947, 35.467422>,  <41.289536, 33.717880, 35.289360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535965, 33.457947, 35.467422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690451, -0.173503, 0.702263,
		-0.379120, -0.740006, -0.555571,
		0.616072, -0.649837, 0.445160,
		41.720787, 33.262997, 35.600971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855934, 33.263020, 35.523106>,  <41.289536, 33.717880, 35.289360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855934, 33.263020, 35.523106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178959, 33.189297, 35.747204>,  <41.372772, 33.145061, 35.881664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.178959, 33.189297, 35.747204>,  <40.855934, 33.263020, 35.523106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178959, 33.189297, 35.747204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577467, -0.053986, 0.814627,
		-0.119895, -0.981385, -0.150028,
		0.807563, -0.184306, 0.560244,
		41.421227, 33.134007, 35.915276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.684303, 32.671684, 35.834095>,  <40.855934, 33.263020, 35.523106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.684303, 32.671684, 35.834095> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978458, 32.828423, 36.055244>,  <41.154949, 32.922466, 36.187935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978458, 32.828423, 36.055244>,  <40.684303, 32.671684, 35.834095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978458, 32.828423, 36.055244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581142, -0.054973, 0.811943,
		0.348546, -0.918389, 0.187290,
		0.735383, 0.391842, 0.552875,
		41.199074, 32.945976, 36.221107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937721, 32.214874, 36.263477>,  <40.684303, 32.671684, 35.834095>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937721, 32.214874, 36.263477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996014, 32.552372, 36.470112>,  <41.030991, 32.754871, 36.594093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996014, 32.552372, 36.470112>,  <40.937721, 32.214874, 36.263477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996014, 32.552372, 36.470112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454607, -0.406657, 0.792441,
		0.878688, -0.350331, 0.324307,
		0.145735, 0.843741, 0.516588,
		41.039734, 32.805492, 36.625088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188133, 32.038330, 36.880856>,  <40.937721, 32.214874, 36.263477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188133, 32.038330, 36.880856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008644, 32.382706, 36.976711>,  <40.900951, 32.589333, 37.034225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.008644, 32.382706, 36.976711>,  <41.188133, 32.038330, 36.880856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008644, 32.382706, 36.976711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253749, -0.379862, 0.889559,
		0.856891, 0.338354, 0.388915,
		-0.448720, 0.860942, 0.239644,
		40.874027, 32.640987, 37.048603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271309, 31.982290, 37.508404>,  <41.188133, 32.038330, 36.880856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271309, 31.982290, 37.508404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028812, 32.300243, 37.498322>,  <40.883316, 32.491016, 37.492271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028812, 32.300243, 37.498322>,  <41.271309, 31.982290, 37.508404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028812, 32.300243, 37.498322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286049, -0.188364, 0.939518,
		0.742060, 0.576782, 0.341569,
		-0.606237, 0.794885, -0.025210,
		40.846943, 32.538708, 37.490757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261887, 32.197315, 38.214001>,  <41.271309, 31.982290, 37.508404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261887, 32.197315, 38.214001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957150, 32.414257, 38.072327>,  <40.774307, 32.544422, 37.987324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957150, 32.414257, 38.072327>,  <41.261887, 32.197315, 38.214001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957150, 32.414257, 38.072327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399026, 0.037791, 0.916161,
		0.510273, 0.839297, 0.187624,
		-0.761840, 0.542359, -0.354185,
		40.728596, 32.576965, 37.966072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195637, 32.788124, 38.620789>,  <41.261887, 32.197315, 38.214001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195637, 32.788124, 38.620789> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843590, 32.717640, 38.444450>,  <40.632362, 32.675350, 38.338650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843590, 32.717640, 38.444450>,  <41.195637, 32.788124, 38.620789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.843590, 32.717640, 38.444450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459140, 0.079732, 0.884778,
		-0.120757, 0.981118, -0.151079,
		-0.880118, -0.176210, -0.440843,
		40.579556, 32.664776, 38.312199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789669, 33.401047, 38.713062>,  <41.195637, 32.788124, 38.620789>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789669, 33.401047, 38.713062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537685, 33.093861, 38.666794>,  <40.386494, 32.909550, 38.639034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537685, 33.093861, 38.666794>,  <40.789669, 33.401047, 38.713062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.537685, 33.093861, 38.666794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446746, 0.236510, 0.862833,
		-0.635268, 0.595226, -0.492077,
		-0.629962, -0.767964, -0.115667,
		40.348698, 32.863472, 38.632095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052898, 33.668457, 38.853432>,  <40.789669, 33.401047, 38.713062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052898, 33.668457, 38.853432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043682, 33.273468, 38.915882>,  <40.038151, 33.036476, 38.953354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043682, 33.273468, 38.915882>,  <40.052898, 33.668457, 38.853432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.043682, 33.273468, 38.915882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350042, 0.154252, 0.923946,
		-0.936451, -0.033358, -0.349210,
		-0.023045, -0.987468, 0.156126,
		40.036770, 32.977226, 38.962719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562084, 33.587116, 39.335663>,  <40.052898, 33.668457, 38.853432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562084, 33.587116, 39.335663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698605, 33.211136, 39.337009>,  <39.780518, 32.985550, 39.337818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698605, 33.211136, 39.337009>,  <39.562084, 33.587116, 39.335663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698605, 33.211136, 39.337009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294080, -0.103375, 0.950174,
		-0.892767, -0.325284, -0.311701,
		0.341298, -0.939949, 0.003370,
		39.800995, 32.929150, 39.338020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982265, 33.134510, 39.566692>,  <39.562084, 33.587116, 39.335663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982265, 33.134510, 39.566692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332993, 32.946785, 39.608524>,  <39.543430, 32.834148, 39.633621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332993, 32.946785, 39.608524>,  <38.982265, 33.134510, 39.566692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332993, 32.946785, 39.608524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173462, -0.105899, 0.979130,
		-0.448445, -0.876659, -0.174262,
		0.876817, -0.469314, 0.104577,
		39.596039, 32.805992, 39.639896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832958, 32.599709, 40.020973>,  <38.982265, 33.134510, 39.566692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832958, 32.599709, 40.020973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228825, 32.653065, 40.041996>,  <39.466347, 32.685078, 40.054611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228825, 32.653065, 40.041996>,  <38.832958, 32.599709, 40.020973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228825, 32.653065, 40.041996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000753, -0.371432, 0.928460,
		0.143373, -0.918828, -0.367695,
		0.989668, 0.133393, 0.052562,
		39.525726, 32.693081, 40.057766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065624, 31.948744, 40.488426>,  <38.832958, 32.599709, 40.020973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065624, 31.948744, 40.488426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339516, 32.240231, 40.492615>,  <39.503853, 32.415123, 40.495129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339516, 32.240231, 40.492615>,  <39.065624, 31.948744, 40.488426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339516, 32.240231, 40.492615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071466, -0.081441, 0.994113,
		0.725282, -0.679953, -0.107844,
		0.684733, 0.728719, 0.010474,
		39.544937, 32.458847, 40.495758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936878, 31.214270, 40.644032>,  <39.065624, 31.948744, 40.488426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936878, 31.214270, 40.644032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626694, 31.037449, 40.824364>,  <38.440582, 30.931356, 40.932564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626694, 31.037449, 40.824364>,  <38.936878, 31.214270, 40.644032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626694, 31.037449, 40.824364> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514402, 0.028281, -0.857082,
		0.366127, -0.896542, -0.249324,
		-0.775462, -0.442054, 0.450829,
		38.394054, 30.904833, 40.959614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762177, 30.803020, 40.140537>,  <38.936878, 31.214270, 40.644032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762177, 30.803020, 40.140537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439426, 30.831009, 40.375160>,  <38.245777, 30.847801, 40.515934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439426, 30.831009, 40.375160>,  <38.762177, 30.803020, 40.140537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439426, 30.831009, 40.375160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571651, 0.157756, -0.805189,
		-0.148872, -0.984996, -0.087291,
		-0.806878, 0.069970, 0.586559,
		38.197361, 30.851999, 40.551128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216789, 30.403778, 39.802120>,  <38.762177, 30.803020, 40.140537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216789, 30.403778, 39.802120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034779, 30.649731, 40.059761>,  <37.925571, 30.797302, 40.214348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034779, 30.649731, 40.059761>,  <38.216789, 30.403778, 39.802120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034779, 30.649731, 40.059761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568492, 0.356154, -0.741601,
		-0.685399, -0.703614, 0.187498,
		-0.455022, 0.614884, 0.644107,
		37.898273, 30.834196, 40.252995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526531, 30.371933, 39.561508>,  <38.216789, 30.403778, 39.802120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526531, 30.371933, 39.561508> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519325, 30.709251, 39.776367>,  <37.515003, 30.911642, 39.905281>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519325, 30.709251, 39.776367>,  <37.526531, 30.371933, 39.561508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519325, 30.709251, 39.776367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698500, 0.373777, -0.610236,
		-0.715383, -0.386189, 0.582310,
		-0.018012, 0.843296, 0.537147,
		37.513920, 30.962240, 39.937511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846081, 30.571964, 39.538506>,  <37.526531, 30.371933, 39.561508>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846081, 30.571964, 39.538506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032761, 30.908291, 39.648205>,  <37.144768, 31.110086, 39.714024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032761, 30.908291, 39.648205>,  <36.846081, 30.571964, 39.538506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032761, 30.908291, 39.648205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500551, 0.506768, -0.701880,
		-0.729134, 0.190293, 0.657383,
		0.466703, 0.840818, 0.274251,
		37.172771, 31.160536, 39.730480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391129, 31.082014, 39.696548>,  <36.846081, 30.571964, 39.538506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391129, 31.082014, 39.696548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702557, 31.322601, 39.624924>,  <36.889416, 31.466953, 39.581951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702557, 31.322601, 39.624924>,  <36.391129, 31.082014, 39.696548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702557, 31.322601, 39.624924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596485, 0.620599, -0.508981,
		-0.195010, 0.503085, 0.841948,
		0.778573, 0.601466, -0.179060,
		36.936127, 31.503040, 39.571205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136883, 31.783808, 39.851055>,  <36.391129, 31.082014, 39.696548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136883, 31.783808, 39.851055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443172, 31.802256, 39.594452>,  <36.626945, 31.813324, 39.440491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443172, 31.802256, 39.594452>,  <36.136883, 31.783808, 39.851055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443172, 31.802256, 39.594452> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505012, 0.660768, -0.555292,
		0.398279, 0.749172, 0.529259,
		0.765726, 0.046121, -0.641511,
		36.672890, 31.816092, 39.402000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181175, 32.516792, 39.607334>,  <36.136883, 31.783808, 39.851055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181175, 32.516792, 39.607334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407318, 32.329189, 39.335922>,  <36.543003, 32.216629, 39.173077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407318, 32.329189, 39.335922>,  <36.181175, 32.516792, 39.607334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407318, 32.329189, 39.335922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171272, 0.737934, -0.652778,
		0.806866, 0.485268, 0.336872,
		0.565361, -0.469007, -0.678527,
		36.576927, 32.188488, 39.132362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482449, 33.045826, 39.078320>,  <36.181175, 32.516792, 39.607334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482449, 33.045826, 39.078320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527695, 32.697914, 38.886200>,  <36.554844, 32.489166, 38.770927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527695, 32.697914, 38.886200>,  <36.482449, 33.045826, 39.078320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527695, 32.697914, 38.886200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176427, 0.458139, -0.871196,
		0.977793, 0.183284, -0.101629,
		0.113116, -0.869779, -0.480301,
		36.561630, 32.436981, 38.742111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845684, 33.245247, 38.507645>,  <36.482449, 33.045826, 39.078320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845684, 33.245247, 38.507645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659630, 32.895710, 38.451019>,  <36.547997, 32.685986, 38.417046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659630, 32.895710, 38.451019>,  <36.845684, 33.245247, 38.507645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.659630, 32.895710, 38.451019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406669, 0.352971, -0.842633,
		0.786299, -0.334372, -0.519547,
		-0.465139, -0.873845, -0.141562,
		36.520088, 32.633556, 38.408550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085747, 33.108532, 37.912117>,  <36.845684, 33.245247, 38.507645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085747, 33.108532, 37.912117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740860, 32.909615, 37.950642>,  <36.533928, 32.790264, 37.973755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740860, 32.909615, 37.950642>,  <37.085747, 33.108532, 37.912117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740860, 32.909615, 37.950642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341383, 0.430028, -0.835783,
		0.374213, -0.753508, -0.540546,
		-0.862219, -0.497294, 0.096312,
		36.482193, 32.760426, 37.979534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929104, 33.010765, 37.242249>,  <37.085747, 33.108532, 37.912117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929104, 33.010765, 37.242249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579002, 32.935963, 37.420666>,  <36.368942, 32.891079, 37.527718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579002, 32.935963, 37.420666>,  <36.929104, 33.010765, 37.242249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579002, 32.935963, 37.420666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474867, 0.507325, -0.719112,
		-0.091810, -0.841219, -0.532844,
		-0.875255, -0.187008, 0.446044,
		36.316425, 32.879860, 37.554478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.140461, 30.424244, 44.335804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.757248, 30.498360, 44.423302>,  <39.527321, 30.542830, 44.475800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.757248, 30.498360, 44.423302>,  <40.140461, 30.424244, 44.335804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757248, 30.498360, 44.423302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177844, 0.214318, -0.960437,
		-0.224839, -0.959028, -0.172370,
		-0.958028, 0.185289, 0.218744,
		39.469841, 30.553946, 44.488926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683067, 29.918222, 44.017929>,  <40.140461, 30.424244, 44.335804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683067, 29.918222, 44.017929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.445789, 30.237129, 44.062618>,  <39.303421, 30.428474, 44.089432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.445789, 30.237129, 44.062618>,  <39.683067, 29.918222, 44.017929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445789, 30.237129, 44.062618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368221, -0.145281, -0.918317,
		-0.715914, -0.585880, 0.379751,
		-0.593194, 0.797269, 0.111725,
		39.267830, 30.476311, 44.096134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008484, 29.697075, 43.751488>,  <39.683067, 29.918222, 44.017929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008484, 29.697075, 43.751488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.995930, 30.096874, 43.750008>,  <38.988396, 30.336754, 43.749119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.995930, 30.096874, 43.750008>,  <39.008484, 29.697075, 43.751488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995930, 30.096874, 43.750008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493216, -0.018707, -0.869706,
		-0.869341, -0.025474, 0.493557,
		-0.031388, 0.999501, -0.003699,
		38.986515, 30.396725, 43.748898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370975, 29.848423, 43.633183>,  <39.008484, 29.697075, 43.751488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370975, 29.848423, 43.633183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.585644, 30.160458, 43.504528>,  <38.714447, 30.347677, 43.427334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.585644, 30.160458, 43.504528>,  <38.370975, 29.848423, 43.633183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585644, 30.160458, 43.504528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441602, -0.065143, -0.894843,
		-0.719006, 0.622273, 0.309526,
		0.536673, 0.780085, -0.321635,
		38.746647, 30.394484, 43.408039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885685, 30.018873, 43.071838>,  <38.370975, 29.848423, 43.633183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885685, 30.018873, 43.071838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.220219, 30.225618, 42.998726>,  <38.420937, 30.349665, 42.954861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.220219, 30.225618, 42.998726>,  <37.885685, 30.018873, 43.071838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220219, 30.225618, 42.998726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244181, 0.052688, -0.968297,
		-0.490845, 0.854446, 0.170272,
		0.836330, 0.516861, -0.182777,
		38.471119, 30.380676, 42.943893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706543, 30.603960, 42.697296>,  <37.885685, 30.018873, 43.071838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706543, 30.603960, 42.697296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.095966, 30.563654, 42.615288>,  <38.329620, 30.539471, 42.566082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.095966, 30.563654, 42.615288>,  <37.706543, 30.603960, 42.697296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095966, 30.563654, 42.615288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182969, 0.193414, -0.963905,
		0.136780, 0.975929, 0.169863,
		0.973557, -0.100763, -0.205020,
		38.388035, 30.533424, 42.553783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892090, 31.291704, 42.418201>,  <37.706543, 30.603960, 42.697296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892090, 31.291704, 42.418201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.147751, 31.006264, 42.303478>,  <38.301147, 30.834999, 42.234646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.147751, 31.006264, 42.303478>,  <37.892090, 31.291704, 42.418201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147751, 31.006264, 42.303478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246454, 0.163208, -0.955313,
		0.728519, 0.681278, -0.071555,
		0.639156, -0.713599, -0.286804,
		38.339497, 30.792185, 42.217438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272251, 31.647963, 41.802929>,  <37.892090, 31.291704, 42.418201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272251, 31.647963, 41.802929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327103, 31.251831, 41.794537>,  <38.360012, 31.014153, 41.789501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.327103, 31.251831, 41.794537>,  <38.272251, 31.647963, 41.802929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327103, 31.251831, 41.794537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087641, 0.008968, -0.996112,
		0.986668, 0.138435, -0.085564,
		0.137130, -0.990331, -0.020981,
		38.368240, 30.954731, 41.788242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.791851, 31.528593, 41.277969>,  <38.272251, 31.647963, 41.802929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.791851, 31.528593, 41.277969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571686, 31.199284, 41.333496>,  <38.439587, 31.001698, 41.366810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.571686, 31.199284, 41.333496>,  <38.791851, 31.528593, 41.277969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571686, 31.199284, 41.333496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272187, 0.019764, -0.962041,
		0.789280, -0.567300, -0.234962,
		-0.550410, -0.823274, 0.138812,
		38.406563, 30.952301, 41.375141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.416531, 31.767916, 41.070118>,  <38.791851, 31.528593, 41.277969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.416531, 31.767916, 41.070118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.561485, 32.133186, 40.995518>,  <39.648457, 32.352348, 40.950756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.561485, 32.133186, 40.995518>,  <39.416531, 31.767916, 41.070118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561485, 32.133186, 40.995518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431563, 0.012953, 0.901989,
		0.826093, -0.407354, -0.389400,
		0.362386, 0.913179, -0.186499,
		39.670200, 32.407139, 40.939568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969425, 31.778881, 41.443455>,  <39.416531, 31.767916, 41.070118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969425, 31.778881, 41.443455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.951866, 32.169064, 41.357147>,  <39.941330, 32.403172, 41.305363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.951866, 32.169064, 41.357147>,  <39.969425, 31.778881, 41.443455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951866, 32.169064, 41.357147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485900, 0.209557, 0.848521,
		0.872911, -0.067589, -0.483175,
		-0.043902, 0.975458, -0.215766,
		39.938694, 32.461700, 41.292416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.640347, 31.986540, 41.527599>,  <39.969425, 31.778881, 41.443455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.640347, 31.986540, 41.527599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.376053, 32.283051, 41.574833>,  <40.217476, 32.460957, 41.603172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.376053, 32.283051, 41.574833>,  <40.640347, 31.986540, 41.527599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.376053, 32.283051, 41.574833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456743, 0.272197, 0.846932,
		0.595669, 0.613528, -0.518422,
		-0.660730, 0.741277, 0.118086,
		40.177834, 32.505432, 41.610260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.992882, 32.668091, 41.586548>,  <40.640347, 31.986540, 41.527599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.992882, 32.668091, 41.586548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.643707, 32.692822, 41.780109>,  <40.434204, 32.707661, 41.896248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.643707, 32.692822, 41.780109>,  <40.992882, 32.668091, 41.586548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643707, 32.692822, 41.780109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472193, 0.356295, 0.806280,
		-0.122562, 0.932326, -0.340216,
		-0.872933, 0.061828, 0.483906,
		40.381828, 32.711369, 41.925282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073551, 33.334183, 41.961952>,  <40.992882, 32.668091, 41.586548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073551, 33.334183, 41.961952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.767200, 33.136684, 42.126709>,  <40.583389, 33.018185, 42.225563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.767200, 33.136684, 42.126709>,  <41.073551, 33.334183, 41.961952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767200, 33.136684, 42.126709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192198, 0.435508, 0.879428,
		-0.613591, 0.752697, -0.238649,
		-0.765876, -0.493741, 0.411891,
		40.537437, 32.988564, 42.250275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731358, 33.835129, 42.315586>,  <41.073551, 33.334183, 41.961952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731358, 33.835129, 42.315586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.566006, 33.516403, 42.491859>,  <40.466793, 33.325169, 42.597626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.566006, 33.516403, 42.491859>,  <40.731358, 33.835129, 42.315586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566006, 33.516403, 42.491859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228167, 0.377887, 0.897296,
		-0.881508, 0.471476, 0.025595,
		-0.413381, -0.796814, 0.440686,
		40.441990, 33.277359, 42.624065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340755, 34.097458, 42.865589>,  <40.731358, 33.835129, 42.315586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340755, 34.097458, 42.865589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400635, 33.713943, 42.962193>,  <40.436562, 33.483837, 43.020153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.400635, 33.713943, 42.962193>,  <40.340755, 34.097458, 42.865589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400635, 33.713943, 42.962193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236808, 0.271916, 0.932729,
		-0.959955, -0.082434, 0.267752,
		0.149695, -0.958784, 0.241506,
		40.445541, 33.426308, 43.034645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978706, 33.947609, 43.516701>,  <40.340755, 34.097458, 42.865589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978706, 33.947609, 43.516701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.248951, 33.656296, 43.470833>,  <40.411098, 33.481506, 43.443314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.248951, 33.656296, 43.470833>,  <39.978706, 33.947609, 43.516701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248951, 33.656296, 43.470833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288489, 0.118017, 0.950182,
		-0.678469, -0.675037, 0.289836,
		0.675614, -0.728283, -0.114670,
		40.451633, 33.437809, 43.436432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829700, 33.599785, 44.094486>,  <39.978706, 33.947609, 43.516701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829700, 33.599785, 44.094486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.198269, 33.489422, 43.985043>,  <40.419411, 33.423206, 43.919376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.198269, 33.489422, 43.985043>,  <39.829700, 33.599785, 44.094486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198269, 33.489422, 43.985043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299074, 0.054023, 0.952700,
		-0.248075, -0.959665, 0.132294,
		0.921420, -0.275906, -0.273609,
		40.474693, 33.406651, 43.902958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004475, 33.036533, 44.565727>,  <39.829700, 33.599785, 44.094486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004475, 33.036533, 44.565727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.329010, 33.217358, 44.417469>,  <40.523731, 33.325851, 44.328514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.329010, 33.217358, 44.417469>,  <40.004475, 33.036533, 44.565727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329010, 33.217358, 44.417469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369520, 0.094700, 0.924385,
		0.452977, -0.886946, -0.090211,
		0.811337, 0.452060, -0.370641,
		40.572411, 33.352974, 44.306278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546368, 32.728081, 44.952351>,  <40.004475, 33.036533, 44.565727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546368, 32.728081, 44.952351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.688671, 33.068089, 44.796970>,  <40.774055, 33.272095, 44.703743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.688671, 33.068089, 44.796970>,  <40.546368, 32.728081, 44.952351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688671, 33.068089, 44.796970> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429693, 0.220337, 0.875680,
		0.829939, -0.478448, -0.286861,
		0.355761, 0.850023, -0.388452,
		40.795399, 33.323097, 44.680435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263947, 32.637829, 45.115997>,  <40.546368, 32.728081, 44.952351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263947, 32.637829, 45.115997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.173344, 33.019318, 45.036888>,  <41.118980, 33.248211, 44.989422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.173344, 33.019318, 45.036888>,  <41.263947, 32.637829, 45.115997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.173344, 33.019318, 45.036888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392726, 0.275237, 0.877503,
		0.891325, 0.121093, -0.436894,
		-0.226508, 0.953720, -0.197769,
		41.105392, 33.305435, 44.977558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805702, 32.994835, 45.430912>,  <41.263947, 32.637829, 45.115997>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805702, 32.994835, 45.430912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.529556, 33.280010, 45.381744>,  <41.363869, 33.451115, 45.352245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.529556, 33.280010, 45.381744>,  <41.805702, 32.994835, 45.430912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.529556, 33.280010, 45.381744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250028, 0.394556, 0.884201,
		0.678882, 0.579689, -0.450643,
		-0.690366, 0.712942, -0.122919,
		41.322445, 33.493893, 45.344868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062649, 33.649441, 45.432911>,  <41.805702, 32.994835, 45.430912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062649, 33.649441, 45.432911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.680916, 33.702099, 45.540176>,  <41.451874, 33.733692, 45.604534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.680916, 33.702099, 45.540176>,  <42.062649, 33.649441, 45.432911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680916, 33.702099, 45.540176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297645, 0.495630, 0.815940,
		-0.025494, 0.858498, -0.512182,
		-0.954336, 0.131647, 0.268164,
		41.394615, 33.741592, 45.620625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.553463, 33.852985, 46.315620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.907761, 33.806694, 46.135811>,  <37.120338, 33.778919, 46.027927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.907761, 33.806694, 46.135811>,  <36.553463, 33.852985, 46.315620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907761, 33.806694, 46.135811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449794, 0.025220, -0.892776,
		0.114654, 0.992961, -0.029715,
		0.885743, -0.115726, -0.449519,
		37.173485, 33.771976, 46.000954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406746, 34.230621, 45.789665>,  <36.553463, 33.852985, 46.315620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406746, 34.230621, 45.789665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.753239, 34.062813, 45.681122>,  <36.961136, 33.962128, 45.615997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.753239, 34.062813, 45.681122>,  <36.406746, 34.230621, 45.789665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753239, 34.062813, 45.681122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327965, -0.067705, -0.942261,
		0.376927, 0.905216, -0.196237,
		0.866236, -0.419523, -0.271360,
		37.013111, 33.936954, 45.599712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608017, 34.567917, 45.101562>,  <36.406746, 34.230621, 45.789665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608017, 34.567917, 45.101562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824123, 34.231781, 45.119205>,  <36.953789, 34.030102, 45.129791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824123, 34.231781, 45.119205>,  <36.608017, 34.567917, 45.101562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824123, 34.231781, 45.119205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054219, -0.087074, -0.994725,
		0.839745, 0.535026, -0.092605,
		0.540267, -0.840337, 0.044112,
		36.986202, 33.979679, 45.132439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067097, 34.550438, 44.475620>,  <36.608017, 34.567917, 45.101562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067097, 34.550438, 44.475620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.088280, 34.176525, 44.616123>,  <37.100990, 33.952179, 44.700424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.088280, 34.176525, 44.616123>,  <37.067097, 34.550438, 44.475620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088280, 34.176525, 44.616123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010868, -0.352271, -0.935835,
		0.998538, 0.045744, -0.028815,
		0.052960, -0.934780, 0.351258,
		37.104168, 33.896091, 44.721500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494507, 34.250759, 44.020187>,  <37.067097, 34.550438, 44.475620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494507, 34.250759, 44.020187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.290794, 33.956814, 44.199348>,  <37.168568, 33.780445, 44.306843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.290794, 33.956814, 44.199348>,  <37.494507, 34.250759, 44.020187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290794, 33.956814, 44.199348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114609, -0.457899, -0.881586,
		0.852937, -0.500304, 0.148976,
		-0.509277, -0.734864, 0.447898,
		37.138012, 33.736355, 44.333717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783165, 33.599171, 43.820000>,  <37.494507, 34.250759, 44.020187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783165, 33.599171, 43.820000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.392525, 33.581615, 43.904217>,  <37.158142, 33.571083, 43.954746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.392525, 33.581615, 43.904217>,  <37.783165, 33.599171, 43.820000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392525, 33.581615, 43.904217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175197, -0.405489, -0.897153,
		0.124747, -0.913046, 0.388312,
		-0.976599, -0.043886, 0.210546,
		37.099545, 33.568451, 43.967381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549175, 32.962555, 43.474682>,  <37.783165, 33.599171, 43.820000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549175, 32.962555, 43.474682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.193275, 33.135365, 43.533604>,  <36.979736, 33.239048, 43.568954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.193275, 33.135365, 43.533604>,  <37.549175, 32.962555, 43.474682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193275, 33.135365, 43.533604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294349, -0.296438, -0.908561,
		-0.348855, -0.851751, 0.390922,
		-0.889752, 0.432024, 0.147299,
		36.926350, 33.264973, 43.577793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040939, 32.571171, 43.182697>,  <37.549175, 32.962555, 43.474682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040939, 32.571171, 43.182697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851589, 32.922577, 43.208370>,  <36.737980, 33.133423, 43.223774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851589, 32.922577, 43.208370>,  <37.040939, 32.571171, 43.182697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851589, 32.922577, 43.208370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268247, -0.074366, -0.960476,
		-0.839023, -0.471884, 0.270863,
		-0.473376, 0.878519, 0.064186,
		36.709576, 33.186134, 43.227627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526394, 32.461548, 42.677998>,  <37.040939, 32.571171, 43.182697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526394, 32.461548, 42.677998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505470, 32.853745, 42.753788>,  <36.492916, 33.089062, 42.799263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505470, 32.853745, 42.753788>,  <36.526394, 32.461548, 42.677998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505470, 32.853745, 42.753788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321258, 0.163127, -0.932836,
		-0.945546, -0.109668, 0.306458,
		-0.052311, 0.980491, 0.189475,
		36.489777, 33.147892, 42.810631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840267, 32.687778, 42.476841>,  <36.526394, 32.461548, 42.677998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840267, 32.687778, 42.476841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.073097, 33.012924, 42.468395>,  <36.212795, 33.208012, 42.463329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.073097, 33.012924, 42.468395>,  <35.840267, 32.687778, 42.476841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073097, 33.012924, 42.468395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335718, 0.216594, -0.916722,
		-0.740597, 0.540687, 0.398967,
		0.582074, 0.812862, -0.021110,
		36.247719, 33.256783, 42.462063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429287, 33.147179, 42.161194>,  <35.840267, 32.687778, 42.476841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429287, 33.147179, 42.161194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793060, 33.308533, 42.120785>,  <36.011326, 33.405346, 42.096539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793060, 33.308533, 42.120785>,  <35.429287, 33.147179, 42.161194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793060, 33.308533, 42.120785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251177, 0.339258, -0.906540,
		-0.331413, 0.849814, 0.409855,
		0.909437, 0.403385, -0.101019,
		36.065891, 33.429550, 42.090481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315491, 33.800201, 41.939346>,  <35.429287, 33.147179, 42.161194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315491, 33.800201, 41.939346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.692390, 33.730824, 41.824745>,  <35.918530, 33.689198, 41.755985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.692390, 33.730824, 41.824745>,  <35.315491, 33.800201, 41.939346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692390, 33.730824, 41.824745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154602, 0.533587, -0.831495,
		0.297093, 0.827769, 0.475956,
		0.942249, -0.173447, -0.286500,
		35.975067, 33.678791, 41.738796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563843, 34.399017, 41.740948>,  <35.315491, 33.800201, 41.939346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563843, 34.399017, 41.740948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.802612, 34.134415, 41.559361>,  <35.945873, 33.975651, 41.450409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.802612, 34.134415, 41.559361>,  <35.563843, 34.399017, 41.740948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802612, 34.134415, 41.559361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322623, 0.320159, -0.890737,
		0.734575, 0.678161, -0.022308,
		0.596921, -0.661510, -0.453971,
		35.981689, 33.935963, 41.423168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805061, 34.721016, 41.165771>,  <35.563843, 34.399017, 41.740948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805061, 34.721016, 41.165771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.857708, 34.332062, 41.088688>,  <35.889297, 34.098690, 41.042439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.857708, 34.332062, 41.088688>,  <35.805061, 34.721016, 41.165771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857708, 34.332062, 41.088688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469170, 0.110146, -0.876212,
		0.873245, 0.205740, -0.441718,
		0.131618, -0.972388, -0.192712,
		35.897194, 34.040344, 41.030876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528091, 34.988842, 41.366138>,  <35.805061, 34.721016, 41.165771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528091, 34.988842, 41.366138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.838913, 35.234180, 41.309593>,  <37.025406, 35.381386, 41.275665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.838913, 35.234180, 41.309593>,  <36.528091, 34.988842, 41.366138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838913, 35.234180, 41.309593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026471, 0.192544, 0.980931,
		0.628872, -0.765983, 0.133382,
		0.777058, 0.613349, -0.141362,
		37.072029, 35.418186, 41.267185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122391, 34.866554, 41.751423>,  <36.528091, 34.988842, 41.366138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122391, 34.866554, 41.751423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.238724, 35.237473, 41.657158>,  <37.308525, 35.460022, 41.600597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.238724, 35.237473, 41.657158>,  <37.122391, 34.866554, 41.751423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238724, 35.237473, 41.657158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324468, 0.136122, 0.936051,
		0.900075, -0.348702, -0.261289,
		0.290835, 0.927296, -0.235663,
		37.325974, 35.515663, 41.586460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562416, 35.082722, 42.199642>,  <37.122391, 34.866554, 41.751423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562416, 35.082722, 42.199642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477127, 35.446751, 42.057484>,  <37.425953, 35.665169, 41.972187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.477127, 35.446751, 42.057484>,  <37.562416, 35.082722, 42.199642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477127, 35.446751, 42.057484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229504, 0.400241, 0.887206,
		0.949666, 0.107603, -0.294203,
		-0.213219, 0.910071, -0.355400,
		37.413162, 35.719772, 41.950863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057629, 35.560280, 42.452202>,  <37.562416, 35.082722, 42.199642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057629, 35.560280, 42.452202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.748161, 35.792435, 42.350552>,  <37.562481, 35.931728, 42.289562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.748161, 35.792435, 42.350552>,  <38.057629, 35.560280, 42.452202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748161, 35.792435, 42.350552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098342, 0.506227, 0.856775,
		0.625908, 0.637871, -0.448731,
		-0.773672, 0.580392, -0.254122,
		37.516060, 35.966553, 42.274315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221737, 36.351685, 42.611919>,  <38.057629, 35.560280, 42.452202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221737, 36.351685, 42.611919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.823780, 36.311420, 42.614952>,  <37.585007, 36.287262, 42.616772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.823780, 36.311420, 42.614952>,  <38.221737, 36.351685, 42.611919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823780, 36.311420, 42.614952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042028, 0.481353, 0.875519,
		-0.091782, 0.870727, -0.483125,
		-0.994892, -0.100662, 0.007585,
		37.525314, 36.281223, 42.617229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996101, 37.078793, 42.810127>,  <38.221737, 36.351685, 42.611919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996101, 37.078793, 42.810127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.698437, 36.816376, 42.860458>,  <37.519836, 36.658928, 42.890659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.698437, 36.816376, 42.860458>,  <37.996101, 37.078793, 42.810127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698437, 36.816376, 42.860458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102529, 0.298313, 0.948945,
		-0.660083, 0.693269, -0.289257,
		-0.744163, -0.656040, 0.125831,
		37.475189, 36.619564, 42.898209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495090, 37.466671, 43.107334>,  <37.996101, 37.078793, 42.810127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495090, 37.466671, 43.107334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.408630, 37.086922, 43.198524>,  <37.356754, 36.859074, 43.253239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.408630, 37.086922, 43.198524>,  <37.495090, 37.466671, 43.107334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408630, 37.086922, 43.198524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342077, 0.292328, 0.893044,
		-0.914474, 0.115046, -0.387944,
		-0.216148, -0.949373, 0.227972,
		37.343784, 36.802109, 43.266914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947811, 37.534691, 43.547115>,  <37.495090, 37.466671, 43.107334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947811, 37.534691, 43.547115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.059162, 37.155582, 43.609390>,  <37.125973, 36.928116, 43.646755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.059162, 37.155582, 43.609390>,  <36.947811, 37.534691, 43.547115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059162, 37.155582, 43.609390> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302868, 0.067203, 0.950660,
		-0.911470, -0.311793, -0.268342,
		0.278376, -0.947770, 0.155686,
		37.142673, 36.871250, 43.656097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541588, 37.311729, 44.005680>,  <36.947811, 37.534691, 43.547115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541588, 37.311729, 44.005680> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835857, 37.041946, 44.030655>,  <37.012417, 36.880077, 44.045639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.835857, 37.041946, 44.030655>,  <36.541588, 37.311729, 44.005680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835857, 37.041946, 44.030655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041463, 0.047161, 0.998026,
		-0.676069, -0.736807, 0.006730,
		0.735671, -0.674456, 0.062434,
		37.056561, 36.839611, 44.049385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334980, 36.716335, 44.389614>,  <36.541588, 37.311729, 44.005680>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334980, 36.716335, 44.389614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.734634, 36.712841, 44.405849>,  <36.974426, 36.710747, 44.415588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.734634, 36.712841, 44.405849>,  <36.334980, 36.716335, 44.389614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734634, 36.712841, 44.405849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040741, -0.018544, 0.998998,
		-0.007952, -0.999790, -0.018883,
		0.999138, -0.008713, 0.040585,
		37.034374, 36.710220, 44.418026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579407, 36.205700, 44.841682>,  <36.334980, 36.716335, 44.389614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579407, 36.205700, 44.841682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864456, 36.486240, 44.835075>,  <37.035484, 36.654564, 44.831112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864456, 36.486240, 44.835075>,  <36.579407, 36.205700, 44.841682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864456, 36.486240, 44.835075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041151, -0.018281, 0.998986,
		0.700341, -0.712578, -0.041889,
		0.712622, 0.701354, -0.016520,
		37.078243, 36.696648, 44.830120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168377, 35.906418, 45.197243>,  <36.579407, 36.205700, 44.841682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168377, 35.906418, 45.197243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210758, 36.303627, 45.217972>,  <37.236187, 36.541950, 45.230408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.210758, 36.303627, 45.217972>,  <37.168377, 35.906418, 45.197243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210758, 36.303627, 45.217972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097164, -0.062206, 0.993322,
		0.989613, -0.100209, -0.103077,
		0.105951, 0.993020, 0.051823,
		37.242542, 36.601532, 45.233521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865788, 36.023823, 45.477962>,  <37.168377, 35.906418, 45.197243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865788, 36.023823, 45.477962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.639053, 36.342827, 45.560600>,  <37.503014, 36.534229, 45.610184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.639053, 36.342827, 45.560600>,  <37.865788, 36.023823, 45.477962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639053, 36.342827, 45.560600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288028, -0.043102, 0.956651,
		0.771840, 0.601769, -0.205273,
		-0.566836, 0.797506, 0.206594,
		37.469002, 36.582077, 45.622578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295750, 36.414795, 45.913128>,  <37.865788, 36.023823, 45.477962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295750, 36.414795, 45.913128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.919601, 36.519047, 46.000561>,  <37.693913, 36.581600, 46.053020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.919601, 36.519047, 46.000561>,  <38.295750, 36.414795, 45.913128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919601, 36.519047, 46.000561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202574, -0.087121, 0.975384,
		0.273260, 0.961499, 0.029129,
		-0.940368, 0.260632, 0.218582,
		37.637489, 36.597237, 46.066135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622738, 37.157299, 45.914043>,  <38.295750, 36.414795, 45.913128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622738, 37.157299, 45.914043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.022343, 37.168232, 45.900074>,  <39.262108, 37.174793, 45.891693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.022343, 37.168232, 45.900074>,  <38.622738, 37.157299, 45.914043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022343, 37.168232, 45.900074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037094, 0.083196, -0.995843,
		-0.024316, 0.996158, 0.084128,
		0.999016, 0.027336, -0.034928,
		39.322048, 37.176434, 45.889595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932796, 37.836575, 45.504356>,  <38.622738, 37.157299, 45.914043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932796, 37.836575, 45.504356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.199791, 37.538948, 45.492802>,  <39.359985, 37.360371, 45.485867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.199791, 37.538948, 45.492802>,  <38.932796, 37.836575, 45.504356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199791, 37.538948, 45.492802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045027, 0.079059, -0.995852,
		0.743263, 0.663413, 0.086274,
		0.667482, -0.744065, -0.028890,
		39.400036, 37.315727, 45.484135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451694, 38.024799, 44.977287>,  <38.932796, 37.836575, 45.504356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451694, 38.024799, 44.977287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.543365, 37.636200, 45.001534>,  <39.598366, 37.403042, 45.016079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.543365, 37.636200, 45.001534>,  <39.451694, 38.024799, 44.977287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543365, 37.636200, 45.001534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235002, -0.005207, -0.971981,
		0.944592, 0.236998, 0.227110,
		0.229175, -0.971496, 0.060613,
		39.612118, 37.344749, 45.019718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966976, 37.931126, 44.498894>,  <39.451694, 38.024799, 44.977287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966976, 37.931126, 44.498894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839920, 37.554234, 44.541420>,  <39.763687, 37.328098, 44.566936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.839920, 37.554234, 44.541420>,  <39.966976, 37.931126, 44.498894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839920, 37.554234, 44.541420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392823, -0.232815, -0.889656,
		0.863014, -0.240828, 0.444082,
		-0.317643, -0.942231, 0.106320,
		39.744629, 37.271564, 44.573315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519691, 37.629269, 44.158997>,  <39.966976, 37.931126, 44.498894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519691, 37.629269, 44.158997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.250748, 37.334450, 44.186413>,  <40.089382, 37.157558, 44.202862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.250748, 37.334450, 44.186413>,  <40.519691, 37.629269, 44.158997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250748, 37.334450, 44.186413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376454, -0.420195, -0.825663,
		0.637352, -0.529338, 0.559985,
		-0.672358, -0.737046, 0.068540,
		40.049042, 37.113335, 44.206974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864056, 36.943729, 44.038696>,  <40.519691, 37.629269, 44.158997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864056, 36.943729, 44.038696> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.477119, 36.885311, 43.955822>,  <40.244957, 36.850262, 43.906097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.477119, 36.885311, 43.955822>,  <40.864056, 36.943729, 44.038696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477119, 36.885311, 43.955822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251211, -0.442966, -0.860624,
		0.033914, -0.884563, 0.465187,
		-0.967338, -0.146048, -0.207189,
		40.186916, 36.841496, 43.893665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860424, 36.201077, 43.798901>,  <40.864056, 36.943729, 44.038696>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860424, 36.201077, 43.798901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.544365, 36.397053, 43.651592>,  <40.354729, 36.514641, 43.563206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.544365, 36.397053, 43.651592>,  <40.860424, 36.201077, 43.798901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544365, 36.397053, 43.651592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150980, -0.426755, -0.891675,
		-0.594035, -0.760154, 0.263226,
		-0.790144, 0.489944, -0.368275,
		40.307320, 36.544037, 43.541111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533852, 35.709793, 43.432388>,  <40.860424, 36.201077, 43.798901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533852, 35.709793, 43.432388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.369972, 36.046169, 43.290985>,  <40.271645, 36.247993, 43.206142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.369972, 36.046169, 43.290985>,  <40.533852, 35.709793, 43.432388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369972, 36.046169, 43.290985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021196, -0.396191, -0.917923,
		-0.911975, -0.368578, 0.180143,
		-0.409697, 0.840942, -0.353505,
		40.247063, 36.298450, 43.184933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065586, 35.454567, 42.982208>,  <40.533852, 35.709793, 43.432388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065586, 35.454567, 42.982208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.097092, 35.841400, 42.885418>,  <40.115997, 36.073498, 42.827343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.097092, 35.841400, 42.885418>,  <40.065586, 35.454567, 42.982208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097092, 35.841400, 42.885418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063614, -0.237359, -0.969337,
		-0.994861, 0.091744, 0.042824,
		0.078767, 0.967080, -0.241976,
		40.120720, 36.131523, 42.812824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548622, 35.521744, 42.546783>,  <40.065586, 35.454567, 42.982208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548622, 35.521744, 42.546783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.829700, 35.798973, 42.482452>,  <39.998348, 35.965313, 42.443855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.829700, 35.798973, 42.482452>,  <39.548622, 35.521744, 42.546783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829700, 35.798973, 42.482452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015474, -0.240876, -0.970432,
		-0.711322, 0.679430, -0.179988,
		0.702696, 0.693075, -0.160827,
		40.040508, 36.006897, 42.434204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376179, 35.729939, 41.925186>,  <39.548622, 35.521744, 42.546783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376179, 35.729939, 41.925186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.752922, 35.858475, 41.964478>,  <39.978966, 35.935596, 41.988052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.752922, 35.858475, 41.964478>,  <39.376179, 35.729939, 41.925186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752922, 35.858475, 41.964478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214029, -0.348367, -0.912596,
		-0.259040, 0.880556, -0.396888,
		0.941855, 0.321344, 0.098224,
		40.035477, 35.954880, 41.993946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509991, 36.257969, 41.392658>,  <39.376179, 35.729939, 41.925186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509991, 36.257969, 41.392658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.863605, 36.114311, 41.512314>,  <40.075775, 36.028114, 41.584106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.863605, 36.114311, 41.512314>,  <39.509991, 36.257969, 41.392658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863605, 36.114311, 41.512314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241137, -0.197816, -0.950117,
		0.400408, 0.912075, -0.088273,
		0.884040, -0.359148, 0.299142,
		40.128819, 36.006565, 41.602058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994846, 36.522457, 40.948299>,  <39.509991, 36.257969, 41.392658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994846, 36.522457, 40.948299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160847, 36.189682, 41.095623>,  <40.260448, 35.990017, 41.184017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.160847, 36.189682, 41.095623>,  <39.994846, 36.522457, 40.948299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160847, 36.189682, 41.095623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245536, -0.287388, -0.925808,
		0.876063, 0.474644, 0.085004,
		0.415000, -0.831938, 0.368313,
		40.285347, 35.940102, 41.206116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824306, 36.496582, 40.902470>,  <39.994846, 36.522457, 40.948299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824306, 36.496582, 40.902470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.673382, 36.128151, 40.864006>,  <40.582825, 35.907093, 40.840927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.673382, 36.128151, 40.864006>,  <40.824306, 36.496582, 40.902470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673382, 36.128151, 40.864006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231256, 0.006829, -0.972869,
		0.896747, -0.389313, 0.210429,
		-0.377314, -0.921080, -0.096155,
		40.560188, 35.851826, 40.835159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.320200, 27.599987, 32.557980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030207, 27.532579, 32.825115>,  <25.856211, 27.492134, 32.985397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.030207, 27.532579, 32.825115>,  <26.320200, 27.599987, 32.557980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030207, 27.532579, 32.825115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242024, 0.845447, 0.476072,
		-0.644846, 0.506775, -0.572147,
		-0.724982, -0.168520, 0.667834,
		25.812712, 27.482023, 33.025467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903469, 28.209526, 32.529366>,  <26.320200, 27.599987, 32.557980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903469, 28.209526, 32.529366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.861143, 28.030390, 32.884499>,  <25.835747, 27.922909, 33.097576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.861143, 28.030390, 32.884499>,  <25.903469, 28.209526, 32.529366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861143, 28.030390, 32.884499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013230, 0.892130, 0.451586,
		-0.994298, 0.059530, -0.088476,
		-0.105815, -0.447840, 0.887830,
		25.829399, 27.896038, 33.150848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.328894, 28.544685, 32.959068>,  <25.903469, 28.209526, 32.529366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.328894, 28.544685, 32.959068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.606684, 28.366112, 33.184776>,  <25.773357, 28.258968, 33.320202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.606684, 28.366112, 33.184776>,  <25.328894, 28.544685, 32.959068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606684, 28.366112, 33.184776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109229, 0.840562, 0.530588,
		-0.711179, -0.306845, 0.632511,
		0.694473, -0.446432, 0.564274,
		25.815025, 28.232182, 33.354057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058113, 28.935816, 33.488712>,  <25.328894, 28.544685, 32.959068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058113, 28.935816, 33.488712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.388557, 28.748278, 33.613758>,  <25.586824, 28.635756, 33.688786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.388557, 28.748278, 33.613758>,  <25.058113, 28.935816, 33.488712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388557, 28.748278, 33.613758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146185, 0.714078, 0.684633,
		-0.544218, -0.519882, 0.658445,
		0.826109, -0.468844, 0.312615,
		25.636391, 28.607624, 33.707542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061617, 28.848509, 34.222939>,  <25.058113, 28.935816, 33.488712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061617, 28.848509, 34.222939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.447912, 28.832054, 34.120445>,  <25.679689, 28.822182, 34.058949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.447912, 28.832054, 34.120445>,  <25.061617, 28.848509, 34.222939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447912, 28.832054, 34.120445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192659, 0.775158, 0.601675,
		0.173870, -0.630427, 0.756526,
		0.965739, -0.041138, -0.256234,
		25.737635, 28.819712, 34.043575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.450193, 28.821428, 34.826370>,  <25.061617, 28.848509, 34.222939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.450193, 28.821428, 34.826370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.684494, 28.954451, 34.530720>,  <25.825075, 29.034264, 34.353329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.684494, 28.954451, 34.530720>,  <25.450193, 28.821428, 34.826370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684494, 28.954451, 34.530720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359112, 0.711051, 0.604520,
		0.726589, -0.619527, 0.297077,
		0.585754, 0.332554, -0.739121,
		25.860220, 29.054218, 34.308983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074478, 29.024994, 35.173779>,  <25.450193, 28.821428, 34.826370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074478, 29.024994, 35.173779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.150263, 29.196815, 34.820602>,  <26.195734, 29.299908, 34.608696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.150263, 29.196815, 34.820602>,  <26.074478, 29.024994, 35.173779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.150263, 29.196815, 34.820602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238744, 0.852090, 0.465774,
		0.952421, -0.299043, 0.058884,
		0.189461, 0.429554, -0.882943,
		26.207102, 29.325682, 34.555721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728249, 29.313105, 35.330189>,  <26.074478, 29.024994, 35.173779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728249, 29.313105, 35.330189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.583836, 29.518459, 35.018780>,  <26.497189, 29.641672, 34.831936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.583836, 29.518459, 35.018780>,  <26.728249, 29.313105, 35.330189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583836, 29.518459, 35.018780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327984, 0.851391, 0.409341,
		0.872974, -0.107557, -0.475761,
		-0.361031, 0.513385, -0.778519,
		26.475527, 29.672476, 34.785225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298336, 29.681618, 34.873718>,  <26.728249, 29.313105, 35.330189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298336, 29.681618, 34.873718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.970467, 29.902590, 34.813110>,  <26.773745, 30.035173, 34.776745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.970467, 29.902590, 34.813110>,  <27.298336, 29.681618, 34.873718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970467, 29.902590, 34.813110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506594, 0.822545, 0.258421,
		0.267388, 0.135064, -0.954076,
		-0.819674, 0.552428, -0.151516,
		26.724564, 30.068317, 34.767654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428383, 30.253607, 34.352242>,  <27.298336, 29.681618, 34.873718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428383, 30.253607, 34.352242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111008, 30.347042, 34.577057>,  <26.920582, 30.403103, 34.711948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111008, 30.347042, 34.577057>,  <27.428383, 30.253607, 34.352242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111008, 30.347042, 34.577057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331244, 0.940416, 0.076778,
		-0.510617, 0.247092, -0.823539,
		-0.793440, 0.233588, 0.562040,
		26.872976, 30.417118, 34.745670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237732, 30.887569, 34.166340>,  <27.428383, 30.253607, 34.352242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237732, 30.887569, 34.166340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031172, 30.861826, 34.507912>,  <26.907236, 30.846380, 34.712852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.031172, 30.861826, 34.507912>,  <27.237732, 30.887569, 34.166340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031172, 30.861826, 34.507912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199307, 0.960756, 0.192938,
		-0.832831, 0.269827, -0.483308,
		-0.516401, -0.064358, 0.853925,
		26.876251, 30.842518, 34.764088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958384, 31.521614, 34.203091>,  <27.237732, 30.887569, 34.166340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958384, 31.521614, 34.203091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900631, 31.409582, 34.582714>,  <26.865978, 31.342363, 34.810490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.900631, 31.409582, 34.582714>,  <26.958384, 31.521614, 34.203091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.900631, 31.409582, 34.582714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251906, 0.917104, 0.308972,
		-0.956921, 0.283684, -0.061860,
		-0.144383, -0.280078, 0.949057,
		26.857317, 31.325558, 34.867432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.537004, 32.125824, 34.622871>,  <26.958384, 31.521614, 34.203091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.537004, 32.125824, 34.622871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.753542, 31.880297, 34.852715>,  <26.883465, 31.732981, 34.990620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.753542, 31.880297, 34.852715>,  <26.537004, 32.125824, 34.622871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753542, 31.880297, 34.852715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477805, 0.786919, 0.390463,
		-0.691844, 0.063176, 0.719278,
		0.541345, -0.613814, 0.574611,
		26.915945, 31.696152, 35.025097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648066, 32.532684, 35.190006>,  <26.537004, 32.125824, 34.622871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648066, 32.532684, 35.190006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.914337, 32.240139, 35.249317>,  <27.074100, 32.064613, 35.284904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.914337, 32.240139, 35.249317>,  <26.648066, 32.532684, 35.190006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914337, 32.240139, 35.249317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588510, 0.636680, 0.498292,
		-0.458834, -0.244441, 0.854237,
		0.665678, -0.731360, 0.148274,
		27.114040, 32.020733, 35.293800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.842804, 32.579906, 35.858360>,  <26.648066, 32.532684, 35.190006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.842804, 32.579906, 35.858360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.143286, 32.388977, 35.675995>,  <27.323574, 32.274418, 35.566578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.143286, 32.388977, 35.675995>,  <26.842804, 32.579906, 35.858360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143286, 32.388977, 35.675995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659189, 0.578218, 0.480764,
		0.034132, -0.661681, 0.749008,
		0.751203, -0.477328, -0.455909,
		27.368647, 32.245777, 35.539223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.325102, 32.357296, 36.414448>,  <26.842804, 32.579906, 35.858360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.325102, 32.357296, 36.414448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.558788, 32.360897, 36.089828>,  <27.698999, 32.363060, 35.895058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.558788, 32.360897, 36.089828>,  <27.325102, 32.357296, 36.414448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558788, 32.360897, 36.089828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757838, 0.351824, 0.549455,
		0.290470, -0.936023, 0.198718,
		0.584217, 0.009004, -0.811548,
		27.734053, 32.363598, 35.846363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036860, 32.071995, 36.602810>,  <27.325102, 32.357296, 36.414448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036860, 32.071995, 36.602810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100227, 32.275562, 36.264366>,  <28.138248, 32.397705, 36.061298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.100227, 32.275562, 36.264366>,  <28.036860, 32.071995, 36.602810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100227, 32.275562, 36.264366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750659, 0.494599, 0.438044,
		0.641415, -0.704535, -0.303674,
		0.158421, 0.508923, -0.846109,
		28.147753, 32.428238, 36.010532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777948, 31.955191, 36.377937>,  <28.036860, 32.071995, 36.602810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777948, 31.955191, 36.377937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657804, 32.307739, 36.232075>,  <28.585718, 32.519268, 36.144558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657804, 32.307739, 36.232075>,  <28.777948, 31.955191, 36.377937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657804, 32.307739, 36.232075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873334, 0.407833, 0.266385,
		0.383502, -0.238453, -0.892226,
		-0.300359, 0.881370, -0.364654,
		28.567698, 32.572151, 36.122677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413736, 32.408165, 36.096939>,  <28.777948, 31.955191, 36.377937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413736, 32.408165, 36.096939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.122534, 32.673615, 36.165764>,  <28.947811, 32.832886, 36.207058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.122534, 32.673615, 36.165764>,  <29.413736, 32.408165, 36.096939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122534, 32.673615, 36.165764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651328, 0.591182, 0.475685,
		0.213957, 0.458371, -0.862623,
		-0.728007, 0.663626, 0.172062,
		28.904131, 32.872704, 36.217384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525568, 31.634388, 35.851406>,  <29.413736, 32.408165, 36.096939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525568, 31.634388, 35.851406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902143, 31.588076, 35.978081>,  <30.128088, 31.560289, 36.054085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.902143, 31.588076, 35.978081>,  <29.525568, 31.634388, 35.851406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.902143, 31.588076, 35.978081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088879, -0.820774, -0.564297,
		0.325259, 0.559397, -0.762418,
		0.941439, -0.115779, 0.316683,
		30.184576, 31.553343, 36.073086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923161, 31.479210, 35.153439>,  <29.525568, 31.634388, 35.851406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923161, 31.479210, 35.153439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.117670, 31.324984, 35.467094>,  <30.234375, 31.232449, 35.655289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.117670, 31.324984, 35.467094>,  <29.923161, 31.479210, 35.153439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117670, 31.324984, 35.467094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053132, -0.882679, -0.466963,
		0.872189, 0.268735, -0.408739,
		0.486274, -0.385564, 0.784141,
		30.263552, 31.209314, 35.702335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306051, 31.104326, 34.870934>,  <29.923161, 31.479210, 35.153439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306051, 31.104326, 34.870934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.317570, 30.947268, 35.238628>,  <30.324482, 30.853033, 35.459248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.317570, 30.947268, 35.238628>,  <30.306051, 31.104326, 34.870934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317570, 30.947268, 35.238628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117322, -0.911937, -0.393201,
		0.992676, 0.119171, 0.019803,
		0.028799, -0.392645, 0.919239,
		30.326210, 30.829473, 35.514400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910749, 30.654053, 34.811600>,  <30.306051, 31.104326, 34.870934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910749, 30.654053, 34.811600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683575, 30.527950, 35.115719>,  <30.547270, 30.452288, 35.298191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683575, 30.527950, 35.115719>,  <30.910749, 30.654053, 34.811600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683575, 30.527950, 35.115719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015416, -0.919501, -0.392784,
		0.822927, -0.234798, 0.517359,
		-0.567938, -0.315257, 0.760303,
		30.513193, 30.433372, 35.343811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147228, 29.942991, 34.900291>,  <30.910749, 30.654053, 34.811600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147228, 29.942991, 34.900291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.794764, 29.952520, 35.089176>,  <30.583284, 29.958239, 35.202507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.794764, 29.952520, 35.089176>,  <31.147228, 29.942991, 34.900291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794764, 29.952520, 35.089176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168491, -0.948985, -0.266528,
		0.441776, -0.314419, 0.840223,
		-0.881161, 0.023824, 0.472216,
		30.530415, 29.959667, 35.230843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104605, 29.361729, 35.351135>,  <31.147228, 29.942991, 34.900291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104605, 29.361729, 35.351135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.731176, 29.464899, 35.251602>,  <30.507118, 29.526802, 35.191883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.731176, 29.464899, 35.251602>,  <31.104605, 29.361729, 35.351135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731176, 29.464899, 35.251602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238876, -0.965413, -0.104479,
		-0.267174, -0.038099, 0.962895,
		-0.933572, 0.257926, -0.248833,
		30.451105, 29.542276, 35.176952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666925, 28.733406, 35.589886>,  <31.104605, 29.361729, 35.351135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666925, 28.733406, 35.589886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.436420, 28.931465, 35.329807>,  <30.298119, 29.050301, 35.173759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.436420, 28.931465, 35.329807>,  <30.666925, 28.733406, 35.589886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436420, 28.931465, 35.329807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262425, -0.865548, -0.426566,
		-0.773988, -0.075186, 0.628721,
		-0.576260, 0.495149, -0.650193,
		30.263542, 29.080009, 35.134750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136400, 28.297510, 35.439850>,  <30.666925, 28.733406, 35.589886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136400, 28.297510, 35.439850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.037828, 28.552696, 35.148022>,  <29.978685, 28.705807, 34.972923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.037828, 28.552696, 35.148022>,  <30.136400, 28.297510, 35.439850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037828, 28.552696, 35.148022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568676, -0.704755, -0.424179,
		-0.784779, 0.310358, 0.536470,
		-0.246432, 0.637965, -0.729570,
		29.963900, 28.744085, 34.929150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373932, 28.282175, 35.286617>,  <30.136400, 28.297510, 35.439850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373932, 28.282175, 35.286617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.534966, 28.411074, 34.943901>,  <29.631586, 28.488413, 34.738274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.534966, 28.411074, 34.943901>,  <29.373932, 28.282175, 35.286617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534966, 28.411074, 34.943901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557108, -0.656425, -0.508661,
		-0.726330, 0.682102, -0.084742,
		0.402585, 0.322246, -0.856786,
		29.655741, 28.507748, 34.686867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807266, 28.287676, 34.761887>,  <29.373932, 28.282175, 35.286617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807266, 28.287676, 34.761887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138838, 28.298397, 34.538403>,  <29.337782, 28.304829, 34.404312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.138838, 28.298397, 34.538403>,  <28.807266, 28.287676, 34.761887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138838, 28.298397, 34.538403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403304, -0.663481, -0.630190,
		-0.387582, 0.747713, -0.539171,
		0.828931, 0.026801, -0.558709,
		29.387518, 28.306437, 34.370789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656973, 28.502972, 34.101521>,  <28.807266, 28.287676, 34.761887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656973, 28.502972, 34.101521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.009987, 28.321167, 34.053272>,  <29.221796, 28.212084, 34.024323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.009987, 28.321167, 34.053272>,  <28.656973, 28.502972, 34.101521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009987, 28.321167, 34.053272> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392187, -0.569890, -0.722091,
		0.259461, 0.684576, -0.681202,
		0.882536, -0.454512, -0.120618,
		29.274748, 28.184813, 34.017086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794979, 28.620447, 33.386936>,  <28.656973, 28.502972, 34.101521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794979, 28.620447, 33.386936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980951, 28.300713, 33.539196>,  <29.092535, 28.108871, 33.630554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.980951, 28.300713, 33.539196>,  <28.794979, 28.620447, 33.386936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980951, 28.300713, 33.539196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433541, -0.580424, -0.689311,
		0.771933, 0.155454, -0.616403,
		0.464931, -0.799338, 0.380654,
		29.120430, 28.060911, 33.653393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764416, 28.217348, 32.847416>,  <28.794979, 28.620447, 33.386936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764416, 28.217348, 32.847416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872824, 27.948975, 33.123501>,  <28.937868, 27.787951, 33.289154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.872824, 27.948975, 33.123501>,  <28.764416, 28.217348, 32.847416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872824, 27.948975, 33.123501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446149, -0.722937, -0.527555,
		0.852935, -0.164960, -0.495268,
		0.271022, -0.670933, 0.690215,
		28.954130, 27.747694, 33.330566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872942, 27.628147, 32.470074>,  <28.764416, 28.217348, 32.847416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872942, 27.628147, 32.470074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.861084, 27.481550, 32.842052>,  <28.853970, 27.393593, 33.065239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.861084, 27.481550, 32.842052>,  <28.872942, 27.628147, 32.470074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861084, 27.481550, 32.842052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434411, -0.833177, -0.342202,
		0.900227, -0.414125, -0.134508,
		-0.029646, -0.366491, 0.929949,
		28.852190, 27.371603, 33.121037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000607, 26.907576, 32.395660>,  <28.872942, 27.628147, 32.470074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000607, 26.907576, 32.395660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842352, 26.921589, 32.762756>,  <28.747400, 26.929996, 32.983013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.842352, 26.921589, 32.762756>,  <29.000607, 26.907576, 32.395660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.842352, 26.921589, 32.762756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470849, -0.865692, -0.169935,
		0.788527, -0.499349, 0.358993,
		-0.395634, 0.035033, 0.917740,
		28.723661, 26.932098, 33.038078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057062, 26.227598, 32.642715>,  <29.000607, 26.907576, 32.395660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057062, 26.227598, 32.642715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.757135, 26.404493, 32.839573>,  <28.577179, 26.510630, 32.957687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.757135, 26.404493, 32.839573>,  <29.057062, 26.227598, 32.642715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757135, 26.404493, 32.839573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566368, -0.813535, -0.131865,
		0.342061, -0.377609, 0.860469,
		-0.749815, 0.442236, 0.492144,
		28.532190, 26.537165, 32.987217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749567, 25.757450, 33.183201>,  <29.057062, 26.227598, 32.642715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749567, 25.757450, 33.183201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.484873, 26.040880, 33.085194>,  <28.326057, 26.210938, 33.026390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.484873, 26.040880, 33.085194>,  <28.749567, 25.757450, 33.183201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.484873, 26.040880, 33.085194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610806, -0.699017, -0.371875,
		-0.434770, -0.096426, 0.895364,
		-0.661734, 0.708574, -0.245014,
		28.286352, 26.253452, 33.011688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.092794, 25.409697, 33.402615>,  <28.749567, 25.757450, 33.183201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.092794, 25.409697, 33.402615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998766, 25.714661, 33.161461>,  <27.942348, 25.897638, 33.016769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998766, 25.714661, 33.161461>,  <28.092794, 25.409697, 33.402615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998766, 25.714661, 33.161461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737412, -0.543978, -0.400389,
		-0.633218, 0.350458, 0.690083,
		-0.235070, 0.762409, -0.602889,
		27.928246, 25.943384, 32.980595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408525, 25.498825, 33.500561>,  <28.092794, 25.409697, 33.402615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408525, 25.498825, 33.500561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.528996, 25.628124, 33.141716>,  <27.601276, 25.705704, 32.926411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.528996, 25.628124, 33.141716>,  <27.408525, 25.498825, 33.500561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528996, 25.628124, 33.141716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798867, -0.428169, -0.422472,
		-0.520678, 0.843908, 0.129280,
		0.301174, 0.323249, -0.897109,
		27.619347, 25.725100, 32.872581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769743, 25.573673, 33.292248>,  <27.408525, 25.498825, 33.500561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769743, 25.573673, 33.292248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.994085, 25.622471, 32.964699>,  <27.128691, 25.651749, 32.768169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.994085, 25.622471, 32.964699>,  <26.769743, 25.573673, 33.292248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.994085, 25.622471, 32.964699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773428, -0.275681, -0.570796,
		-0.295382, 0.953477, -0.060264,
		0.560855, 0.121993, -0.818877,
		27.162342, 25.659069, 32.719036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294147, 25.894247, 32.812222>,  <26.769743, 25.573673, 33.292248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294147, 25.894247, 32.812222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.595201, 25.785715, 32.572247>,  <26.775833, 25.720596, 32.428261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.595201, 25.785715, 32.572247>,  <26.294147, 25.894247, 32.812222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.595201, 25.785715, 32.572247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657568, -0.262866, -0.706050,
		0.033871, 0.925894, -0.376261,
		0.752634, -0.271332, -0.599935,
		26.820992, 25.704315, 32.392265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243914, 26.158960, 32.118645>,  <26.294147, 25.894247, 32.812222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243914, 26.158960, 32.118645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.434505, 25.807703, 32.101513>,  <26.548861, 25.596949, 32.091232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.434505, 25.807703, 32.101513>,  <26.243914, 26.158960, 32.118645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.434505, 25.807703, 32.101513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583025, -0.279134, -0.762998,
		0.658065, 0.388525, -0.644980,
		0.476480, -0.878142, -0.042831,
		26.577450, 25.544260, 32.088665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.435051, 26.085880, 31.409473>,  <26.243914, 26.158960, 32.118645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.435051, 26.085880, 31.409473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436012, 25.714684, 31.558512>,  <26.436588, 25.491966, 31.647934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.436012, 25.714684, 31.558512>,  <26.435051, 26.085880, 31.409473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436012, 25.714684, 31.558512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652365, -0.283847, -0.702746,
		0.757902, -0.241378, -0.606071,
		0.002404, -0.927991, 0.372595,
		26.436733, 25.436287, 31.670290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.043732, 34.293983, 45.776943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.674019, 34.179203, 45.877632>,  <41.452190, 34.110332, 45.938046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.674019, 34.179203, 45.877632>,  <42.043732, 34.293983, 45.776943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674019, 34.179203, 45.877632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021544, 0.619189, 0.784947,
		-0.381110, 0.730933, -0.566120,
		-0.924278, -0.286955, 0.251726,
		41.396736, 34.093117, 45.953152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653534, 34.921646, 46.014351>,  <42.043732, 34.293983, 45.776943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653534, 34.921646, 46.014351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.503891, 34.585140, 46.170460>,  <41.414104, 34.383236, 46.264126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.503891, 34.585140, 46.170460>,  <41.653534, 34.921646, 46.014351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503891, 34.585140, 46.170460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015743, 0.415011, 0.909680,
		-0.927251, 0.346464, -0.142016,
		-0.374110, -0.841266, 0.390274,
		41.391659, 34.332760, 46.287540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.151043, 35.105053, 46.419640>,  <41.653534, 34.921646, 46.014351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.151043, 35.105053, 46.419640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.228790, 34.735584, 46.551731>,  <41.275436, 34.513901, 46.630985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.228790, 34.735584, 46.551731>,  <41.151043, 35.105053, 46.419640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228790, 34.735584, 46.551731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092794, 0.317822, 0.943599,
		-0.976530, -0.214046, -0.023938,
		0.194365, -0.923674, 0.330225,
		41.287102, 34.458481, 46.650799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.767216, 35.037922, 47.058308>,  <41.151043, 35.105053, 46.419640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.767216, 35.037922, 47.058308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.002808, 34.715275, 47.078239>,  <41.144161, 34.521687, 47.090199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.002808, 34.715275, 47.078239>,  <40.767216, 35.037922, 47.058308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002808, 34.715275, 47.078239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039166, 0.090072, 0.995165,
		-0.807201, -0.584176, 0.084642,
		0.588976, -0.806613, 0.049827,
		41.179501, 34.473289, 47.093189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564899, 34.734287, 47.655533>,  <40.767216, 35.037922, 47.058308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564899, 34.734287, 47.655533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.907536, 34.543102, 47.577759>,  <41.113117, 34.428391, 47.531094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.907536, 34.543102, 47.577759>,  <40.564899, 34.734287, 47.655533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907536, 34.543102, 47.577759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193778, -0.051255, 0.979706,
		-0.478229, -0.876883, 0.048715,
		0.856590, -0.477964, -0.194432,
		41.164513, 34.399712, 47.519428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.549839, 34.216770, 48.099968>,  <40.564899, 34.734287, 47.655533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.549839, 34.216770, 48.099968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.940727, 34.243149, 48.019283>,  <41.175262, 34.258976, 47.970871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.940727, 34.243149, 48.019283>,  <40.549839, 34.216770, 48.099968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940727, 34.243149, 48.019283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210283, -0.172911, 0.962228,
		0.028574, -0.982727, -0.182840,
		0.977223, 0.065943, -0.201710,
		41.233894, 34.262932, 47.958771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923084, 33.626778, 48.414505>,  <40.549839, 34.216770, 48.099968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923084, 33.626778, 48.414505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.204845, 33.906570, 48.366283>,  <41.373901, 34.074448, 48.337349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.204845, 33.906570, 48.366283>,  <40.923084, 33.626778, 48.414505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204845, 33.906570, 48.366283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319112, -0.160373, 0.934049,
		0.634017, -0.696423, -0.336181,
		0.704407, 0.699483, -0.120558,
		41.416168, 34.116417, 48.330116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568882, 33.362141, 48.783600>,  <40.923084, 33.626778, 48.414505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568882, 33.362141, 48.783600> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.624302, 33.755772, 48.739082>,  <41.657555, 33.991951, 48.712372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.624302, 33.755772, 48.739082>,  <41.568882, 33.362141, 48.783600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624302, 33.755772, 48.739082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208855, 0.080821, 0.974601,
		0.968083, -0.158273, -0.194333,
		0.138547, 0.984082, -0.111297,
		41.665867, 34.050995, 48.705692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124584, 33.511551, 49.236519>,  <41.568882, 33.362141, 48.783600>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124584, 33.511551, 49.236519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.938622, 33.859653, 49.171379>,  <41.827045, 34.068516, 49.132298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.938622, 33.859653, 49.171379>,  <42.124584, 33.511551, 49.236519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938622, 33.859653, 49.171379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210508, 0.287310, 0.934419,
		0.859970, 0.400137, -0.316768,
		-0.464907, 0.870255, -0.162846,
		41.799149, 34.120731, 49.122524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604248, 34.032703, 49.560291>,  <42.124584, 33.511551, 49.236519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604248, 34.032703, 49.560291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.234135, 34.179420, 49.521694>,  <42.012066, 34.267448, 49.498535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.234135, 34.179420, 49.521694>,  <42.604248, 34.032703, 49.560291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234135, 34.179420, 49.521694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035749, 0.337632, 0.940599,
		0.377583, 0.866873, -0.325519,
		-0.925286, 0.366791, -0.096494,
		41.956551, 34.289459, 49.492744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.692863, 34.602493, 49.890579>,  <42.604248, 34.032703, 49.560291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.692863, 34.602493, 49.890579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.299061, 34.534203, 49.906548>,  <42.062778, 34.493229, 49.916126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.299061, 34.534203, 49.906548>,  <42.692863, 34.602493, 49.890579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.299061, 34.534203, 49.906548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046952, 0.476068, 0.878154,
		-0.168928, 0.862677, -0.476710,
		-0.984509, -0.170727, 0.039917,
		42.003708, 34.482983, 49.918522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491341, 35.119251, 50.308769>,  <42.692863, 34.602493, 49.890579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491341, 35.119251, 50.308769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.166527, 34.886227, 50.294842>,  <41.971638, 34.746410, 50.286484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.166527, 34.886227, 50.294842>,  <42.491341, 35.119251, 50.308769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166527, 34.886227, 50.294842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213154, 0.240518, 0.946951,
		-0.543285, 0.776383, -0.319486,
		-0.812039, -0.582564, -0.034820,
		41.922916, 34.711456, 50.284397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777241, 35.508503, 50.395813>,  <42.491341, 35.119251, 50.308769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777241, 35.508503, 50.395813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.795143, 35.128056, 50.518044>,  <41.805885, 34.899788, 50.591381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.795143, 35.128056, 50.518044>,  <41.777241, 35.508503, 50.395813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795143, 35.128056, 50.518044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182700, 0.308520, 0.933508,
		-0.982150, 0.014054, 0.187575,
		0.044751, -0.951114, 0.305580,
		41.808567, 34.842720, 50.609718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283154, 35.400482, 51.055256>,  <41.777241, 35.508503, 50.395813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283154, 35.400482, 51.055256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.545158, 35.098824, 51.036434>,  <41.702362, 34.917828, 51.025139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.545158, 35.098824, 51.036434>,  <41.283154, 35.400482, 51.055256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545158, 35.098824, 51.036434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290957, 0.194253, 0.936808,
		-0.697354, -0.627313, 0.346664,
		0.655013, -0.754151, -0.047058,
		41.741661, 34.872578, 51.022316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710049, 36.015965, 51.107365>,  <41.283154, 35.400482, 51.055256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710049, 36.015965, 51.107365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.520130, 36.357037, 51.194542>,  <41.406178, 36.561680, 51.246849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.520130, 36.357037, 51.194542>,  <41.710049, 36.015965, 51.107365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.520130, 36.357037, 51.194542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180330, 0.148126, -0.972389,
		-0.861423, -0.500988, 0.083435,
		-0.474796, 0.852684, 0.217942,
		41.377693, 36.612843, 51.259926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020115, 36.011551, 50.775036>,  <41.710049, 36.015965, 51.107365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020115, 36.011551, 50.775036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.100502, 36.401443, 50.814053>,  <41.148735, 36.635380, 50.837463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.100502, 36.401443, 50.814053>,  <41.020115, 36.011551, 50.775036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.100502, 36.401443, 50.814053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143454, 0.127783, -0.981373,
		-0.969036, 0.183235, 0.165510,
		0.200971, 0.974729, 0.097540,
		41.160793, 36.693863, 50.843315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596939, 36.263329, 50.359028>,  <41.020115, 36.011551, 50.775036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596939, 36.263329, 50.359028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.801804, 36.603630, 50.406189>,  <40.924725, 36.807812, 50.434486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.801804, 36.603630, 50.406189>,  <40.596939, 36.263329, 50.359028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.801804, 36.603630, 50.406189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283086, 0.296815, -0.912010,
		-0.810895, 0.433722, 0.392855,
		0.512164, 0.850756, 0.117905,
		40.955452, 36.858856, 50.441559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216755, 36.870190, 50.321503>,  <40.596939, 36.263329, 50.359028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216755, 36.870190, 50.321503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.577667, 37.003433, 50.212006>,  <40.794212, 37.083378, 50.146309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.577667, 37.003433, 50.212006>,  <40.216755, 36.870190, 50.321503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577667, 37.003433, 50.212006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370671, 0.275014, -0.887113,
		-0.220223, 0.901890, 0.371613,
		0.902277, 0.333109, -0.273740,
		40.848351, 37.103367, 50.129883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009914, 37.478115, 49.936565>,  <40.216755, 36.870190, 50.321503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009914, 37.478115, 49.936565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.385113, 37.382061, 49.836563>,  <40.610233, 37.324429, 49.776562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.385113, 37.382061, 49.836563>,  <40.009914, 37.478115, 49.936565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385113, 37.382061, 49.836563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128043, 0.430198, -0.893608,
		0.322135, 0.870211, 0.372776,
		0.937995, -0.240131, -0.250006,
		40.666512, 37.310020, 49.761562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329037, 38.141857, 49.651405>,  <40.009914, 37.478115, 49.936565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329037, 38.141857, 49.651405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.528126, 37.812687, 49.541813>,  <40.647579, 37.615185, 49.476059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.528126, 37.812687, 49.541813>,  <40.329037, 38.141857, 49.651405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528126, 37.812687, 49.541813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119116, 0.248035, -0.961400,
		0.859120, 0.511142, 0.025428,
		0.497719, -0.822929, -0.273977,
		40.677441, 37.565807, 49.459621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803974, 38.347427, 48.990513>,  <40.329037, 38.141857, 49.651405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803974, 38.347427, 48.990513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.737591, 37.952991, 48.994144>,  <40.697762, 37.716331, 48.996323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.737591, 37.952991, 48.994144>,  <40.803974, 38.347427, 48.990513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737591, 37.952991, 48.994144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147819, 0.015771, -0.988889,
		0.974991, -0.165459, -0.148380,
		-0.165961, -0.986091, 0.009081,
		40.687801, 37.657166, 48.996868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.205399, 38.095856, 48.405712>,  <40.803974, 38.347427, 48.990513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.205399, 38.095856, 48.405712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.942619, 37.808090, 48.495930>,  <40.784950, 37.635433, 48.550060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.942619, 37.808090, 48.495930>,  <41.205399, 38.095856, 48.405712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.942619, 37.808090, 48.495930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235293, -0.088576, -0.967880,
		0.716280, -0.688915, -0.111082,
		-0.656947, -0.719410, 0.225542,
		40.745537, 37.592266, 48.563591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373608, 37.551205, 47.885876>,  <41.205399, 38.095856, 48.405712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373608, 37.551205, 47.885876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.998867, 37.476299, 48.004028>,  <40.774025, 37.431355, 48.074921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.998867, 37.476299, 48.004028>,  <41.373608, 37.551205, 47.885876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998867, 37.476299, 48.004028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255440, -0.210516, -0.943628,
		0.238889, -0.959487, 0.149387,
		-0.936847, -0.187263, 0.295381,
		40.717812, 37.420120, 48.092644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108059, 37.057835, 47.386173>,  <41.373608, 37.551205, 47.885876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108059, 37.057835, 47.386173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.765354, 37.189327, 47.545116>,  <40.559731, 37.268223, 47.640484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.765354, 37.189327, 47.545116>,  <41.108059, 37.057835, 47.386173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765354, 37.189327, 47.545116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468565, -0.174354, -0.866053,
		-0.215419, -0.928189, 0.303413,
		-0.856762, 0.328733, 0.397358,
		40.508324, 37.287949, 47.664322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718243, 36.624706, 47.150135>,  <41.108059, 37.057835, 47.386173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718243, 36.624706, 47.150135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.452099, 36.910744, 47.235859>,  <40.292412, 37.082367, 47.287292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.452099, 36.910744, 47.235859>,  <40.718243, 36.624706, 47.150135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452099, 36.910744, 47.235859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506973, -0.222114, -0.832853,
		-0.547968, -0.662800, 0.510321,
		-0.665364, 0.715096, 0.214310,
		40.252491, 37.125271, 47.300152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102432, 36.320465, 47.061489>,  <40.718243, 36.624706, 47.150135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102432, 36.320465, 47.061489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.000046, 36.706955, 47.049503>,  <39.938614, 36.938847, 47.042313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.000046, 36.706955, 47.049503>,  <40.102432, 36.320465, 47.061489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.000046, 36.706955, 47.049503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481578, -0.154336, -0.862707,
		-0.838190, -0.206395, 0.504816,
		-0.255969, 0.966220, -0.029967,
		39.923256, 36.996822, 47.040512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365005, 36.290924, 46.858765>,  <40.102432, 36.320465, 47.061489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365005, 36.290924, 46.858765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.515926, 36.652328, 46.777462>,  <39.606480, 36.869171, 46.728680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.515926, 36.652328, 46.777462>,  <39.365005, 36.290924, 46.858765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515926, 36.652328, 46.777462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270132, -0.102560, -0.957345,
		-0.885816, 0.416116, 0.205371,
		0.377303, 0.903510, -0.203256,
		39.629116, 36.923382, 46.716484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855278, 36.644547, 46.471462>,  <39.365005, 36.290924, 46.858765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855278, 36.644547, 46.471462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.185017, 36.862267, 46.409248>,  <39.382858, 36.992897, 46.371922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.185017, 36.862267, 46.409248>,  <38.855278, 36.644547, 46.471462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185017, 36.862267, 46.409248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142532, -0.066326, -0.987565,
		-0.547848, 0.836264, 0.022905,
		0.824346, 0.544301, -0.155531,
		39.432320, 37.025558, 46.362591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296150, 37.182720, 46.736626>,  <38.855278, 36.644547, 46.471462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296150, 37.182720, 46.736626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.930744, 37.041355, 46.656048>,  <37.711498, 36.956535, 46.607700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.930744, 37.041355, 46.656048>,  <38.296150, 37.182720, 46.736626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930744, 37.041355, 46.656048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091454, -0.304097, 0.948241,
		-0.396382, 0.884660, 0.245477,
		-0.913519, -0.353416, -0.201444,
		37.656689, 36.935329, 46.595615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884087, 37.550274, 47.169498>,  <38.296150, 37.182720, 46.736626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884087, 37.550274, 47.169498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692120, 37.216362, 47.061554>,  <37.576939, 37.016014, 46.996788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.692120, 37.216362, 47.061554>,  <37.884087, 37.550274, 47.169498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692120, 37.216362, 47.061554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244424, -0.168196, 0.954969,
		-0.842577, 0.524267, -0.123320,
		-0.479917, -0.834778, -0.269862,
		37.548145, 36.965927, 46.980595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383106, 37.503994, 47.806889>,  <37.884087, 37.550274, 47.169498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383106, 37.503994, 47.806889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393799, 37.140488, 47.640305>,  <37.400215, 36.922386, 47.540356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393799, 37.140488, 47.640305>,  <37.383106, 37.503994, 47.806889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393799, 37.140488, 47.640305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146690, -0.415661, 0.897612,
		-0.988821, 0.037095, -0.144417,
		0.026732, -0.908763, -0.416456,
		37.401817, 36.867859, 47.515369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703709, 37.150047, 47.938389>,  <37.383106, 37.503994, 47.806889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703709, 37.150047, 47.938389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.966404, 36.852699, 47.887646>,  <37.124023, 36.674290, 47.857201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.966404, 36.852699, 47.887646>,  <36.703709, 37.150047, 47.938389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966404, 36.852699, 47.887646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209453, -0.341414, 0.916278,
		-0.724446, -0.575186, -0.379921,
		0.656741, -0.743369, -0.126862,
		37.163425, 36.629688, 47.849586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357742, 36.661087, 48.297367>,  <36.703709, 37.150047, 47.938389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357742, 36.661087, 48.297367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742065, 36.555748, 48.262749>,  <36.972660, 36.492546, 48.241978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.742065, 36.555748, 48.262749>,  <36.357742, 36.661087, 48.297367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742065, 36.555748, 48.262749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078683, -0.558462, 0.825790,
		-0.265803, -0.786619, -0.557297,
		0.960811, -0.263347, -0.086547,
		37.030308, 36.476742, 48.236786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403530, 36.106422, 48.617699>,  <36.357742, 36.661087, 48.297367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403530, 36.106422, 48.617699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795242, 36.186489, 48.605446>,  <37.030270, 36.234531, 48.598095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795242, 36.186489, 48.605446>,  <36.403530, 36.106422, 48.617699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795242, 36.186489, 48.605446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097610, -0.334082, 0.937476,
		0.177424, -0.921043, -0.346700,
		0.979282, 0.200172, -0.030629,
		37.089027, 36.246540, 48.596256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762165, 35.460865, 48.869003>,  <36.403530, 36.106422, 48.617699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762165, 35.460865, 48.869003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019081, 35.765694, 48.901772>,  <37.173229, 35.948589, 48.921432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.019081, 35.765694, 48.901772>,  <36.762165, 35.460865, 48.869003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019081, 35.765694, 48.901772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190228, -0.262033, 0.946125,
		0.742481, -0.592102, -0.313269,
		0.642289, 0.762072, 0.081920,
		37.211769, 35.994316, 48.926346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308826, 34.966446, 48.422867>,  <36.762165, 35.460865, 48.869003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308826, 34.966446, 48.422867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369602, 34.578999, 48.501549>,  <37.406067, 34.346531, 48.548756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.369602, 34.578999, 48.501549>,  <37.308826, 34.966446, 48.422867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369602, 34.578999, 48.501549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407234, -0.119986, -0.905408,
		0.900597, 0.217671, 0.376224,
		0.151939, -0.968619, 0.196702,
		37.415184, 34.288414, 48.560558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030518, 34.649887, 48.424332>,  <37.308826, 34.966446, 48.422867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030518, 34.649887, 48.424332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739170, 34.395477, 48.322384>,  <37.564362, 34.242832, 48.261215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739170, 34.395477, 48.322384>,  <38.030518, 34.649887, 48.424332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739170, 34.395477, 48.322384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417295, -0.116726, -0.901244,
		0.543461, -0.762791, 0.350428,
		-0.728365, -0.636022, -0.254873,
		37.520660, 34.204670, 48.245922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361755, 34.061417, 47.949162>,  <38.030518, 34.649887, 48.424332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361755, 34.061417, 47.949162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966267, 34.010990, 47.916836>,  <37.728973, 33.980732, 47.897442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.966267, 34.010990, 47.916836>,  <38.361755, 34.061417, 47.949162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966267, 34.010990, 47.916836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114215, -0.285883, -0.951434,
		0.096846, -0.949935, 0.297058,
		-0.988724, -0.126071, -0.080811,
		37.669651, 33.973167, 47.892593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295765, 33.398491, 47.642811>,  <38.361755, 34.061417, 47.949162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295765, 33.398491, 47.642811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974625, 33.619637, 47.553570>,  <37.781940, 33.752323, 47.500027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.974625, 33.619637, 47.553570>,  <38.295765, 33.398491, 47.642811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974625, 33.619637, 47.553570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170802, -0.145235, -0.974543,
		-0.571192, -0.820517, 0.022172,
		-0.802849, 0.552864, -0.223103,
		37.733768, 33.785496, 47.486637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148911, 33.082806, 47.073471>,  <38.295765, 33.398491, 47.642811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148911, 33.082806, 47.073471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.939034, 33.421925, 47.042641>,  <37.813107, 33.625397, 47.024143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.939034, 33.421925, 47.042641>,  <38.148911, 33.082806, 47.073471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939034, 33.421925, 47.042641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001725, -0.091595, -0.995795,
		-0.851292, -0.522350, 0.049521,
		-0.524689, 0.847797, -0.077073,
		37.781628, 33.676266, 47.019520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538193, 32.930367, 46.658646>,  <38.148911, 33.082806, 47.073471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538193, 32.930367, 46.658646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602425, 33.324665, 46.638603>,  <37.640965, 33.561245, 46.626575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602425, 33.324665, 46.638603>,  <37.538193, 32.930367, 46.658646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602425, 33.324665, 46.638603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318471, 0.003693, -0.947925,
		-0.934232, 0.168176, 0.314526,
		0.160580, 0.985750, -0.050109,
		37.650597, 33.620392, 46.623569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855743, 33.291080, 46.653065>,  <37.538193, 32.930367, 46.658646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855743, 33.291080, 46.653065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124390, 33.534451, 46.483948>,  <37.285580, 33.680473, 46.382477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.124390, 33.534451, 46.483948>,  <36.855743, 33.291080, 46.653065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124390, 33.534451, 46.483948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514159, -0.028125, -0.857233,
		-0.533450, 0.793116, 0.293936,
		0.671619, 0.608421, -0.422791,
		37.325874, 33.716976, 46.357109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<41.219521, 31.723110, 51.040264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.292976, 32.037434, 50.804031>,  <41.337048, 32.226028, 50.662292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.292976, 32.037434, 50.804031>,  <41.219521, 31.723110, 51.040264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.292976, 32.037434, 50.804031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619040, -0.374251, -0.690452,
		-0.763588, 0.492385, 0.417720,
		0.183636, 0.785807, -0.590580,
		41.348068, 32.273174, 50.626858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619625, 32.038864, 50.960278>,  <41.219521, 31.723110, 51.040264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619625, 32.038864, 50.960278> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.841125, 32.161118, 50.650452>,  <40.974026, 32.234470, 50.464554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.841125, 32.161118, 50.650452>,  <40.619625, 32.038864, 50.960278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841125, 32.161118, 50.650452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667892, -0.392489, -0.632354,
		-0.497276, 0.867492, -0.013211,
		0.553747, 0.305632, -0.774566,
		41.007248, 32.252808, 50.418083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190296, 32.300716, 50.468418>,  <40.619625, 32.038864, 50.960278>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190296, 32.300716, 50.468418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.521374, 32.235588, 50.253601>,  <40.720020, 32.196510, 50.124710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.521374, 32.235588, 50.253601>,  <40.190296, 32.300716, 50.468418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521374, 32.235588, 50.253601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560572, -0.195215, -0.804767,
		0.026197, 0.967150, -0.252852,
		0.827691, -0.162824, -0.537044,
		40.769680, 32.186741, 50.092487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042316, 32.685444, 49.812321>,  <40.190296, 32.300716, 50.468418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042316, 32.685444, 49.812321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.343029, 32.434532, 49.730976>,  <40.523457, 32.283985, 49.682171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.343029, 32.434532, 49.730976>,  <40.042316, 32.685444, 49.812321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343029, 32.434532, 49.730976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441977, -0.250455, -0.861353,
		0.489375, 0.737425, -0.465528,
		0.751777, -0.627277, -0.203359,
		40.568562, 32.246349, 49.669968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310787, 32.902145, 49.131844>,  <40.042316, 32.685444, 49.812321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310787, 32.902145, 49.131844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.400673, 32.518589, 49.201157>,  <40.454605, 32.288456, 49.242744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.400673, 32.518589, 49.201157>,  <40.310787, 32.902145, 49.131844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400673, 32.518589, 49.201157> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174092, -0.214477, -0.961089,
		0.958748, 0.185800, -0.215131,
		0.224711, -0.958894, 0.173284,
		40.468086, 32.230919, 49.253143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554375, 32.735065, 48.569164>,  <40.310787, 32.902145, 49.131844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554375, 32.735065, 48.569164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.496773, 32.375771, 48.735260>,  <40.462212, 32.160194, 48.834919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.496773, 32.375771, 48.735260>,  <40.554375, 32.735065, 48.569164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.496773, 32.375771, 48.735260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251798, -0.372546, -0.893201,
		0.957006, -0.233184, -0.172525,
		-0.144007, -0.898240, 0.415244,
		40.453571, 32.106300, 48.859833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943428, 32.195889, 48.068134>,  <40.554375, 32.735065, 48.569164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943428, 32.195889, 48.068134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.661808, 32.008472, 48.281593>,  <40.492836, 31.896023, 48.409668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.661808, 32.008472, 48.281593>,  <40.943428, 32.195889, 48.068134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661808, 32.008472, 48.281593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394093, -0.367346, -0.842465,
		0.590765, -0.803445, 0.073981,
		-0.704051, -0.468543, 0.533647,
		40.450592, 31.867908, 48.441689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885891, 31.543764, 47.756287>,  <40.943428, 32.195889, 48.068134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885891, 31.543764, 47.756287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.545662, 31.537971, 47.966553>,  <40.341526, 31.534496, 48.092712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.545662, 31.537971, 47.966553>,  <40.885891, 31.543764, 47.756287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545662, 31.537971, 47.966553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469886, -0.427866, -0.772099,
		0.236095, -0.903726, 0.357125,
		-0.850568, -0.014481, 0.525666,
		40.290493, 31.533627, 48.124252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.625210, 30.875731, 47.583073>,  <40.885891, 31.543764, 47.756287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.625210, 30.875731, 47.583073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.305111, 31.060736, 47.735748>,  <40.113052, 31.171740, 47.827354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.305111, 31.060736, 47.735748>,  <40.625210, 30.875731, 47.583073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.305111, 31.060736, 47.735748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536511, -0.267879, -0.800248,
		-0.267879, -0.845176, 0.462513,
		0.800248, -0.462513, -0.381687,
		40.065037, 31.199490, 47.850254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028347, 30.401402, 47.758381>,  <40.625210, 30.875731, 47.583073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028347, 30.401402, 47.758381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.862015, 30.760656, 47.701202>,  <39.762215, 30.976210, 47.666893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.862015, 30.760656, 47.701202>,  <40.028347, 30.401402, 47.758381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862015, 30.760656, 47.701202> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540678, -0.370535, -0.755229,
		-0.731266, -0.236760, 0.639683,
		-0.415833, 0.898136, -0.142949,
		39.737267, 31.030098, 47.658318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427586, 30.209913, 47.467480>,  <40.028347, 30.401402, 47.758381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427586, 30.209913, 47.467480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.452957, 30.603378, 47.400089>,  <39.468178, 30.839457, 47.359653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.452957, 30.603378, 47.400089>,  <39.427586, 30.209913, 47.467480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452957, 30.603378, 47.400089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517985, -0.111850, -0.848045,
		-0.853035, 0.141057, 0.502429,
		0.063426, 0.983663, -0.168477,
		39.471985, 30.898478, 47.349545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673149, 30.552948, 47.267117>,  <39.427586, 30.209913, 47.467480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673149, 30.552948, 47.267117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.977547, 30.761528, 47.112728>,  <39.160187, 30.886675, 47.020096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.977547, 30.761528, 47.112728>,  <38.673149, 30.552948, 47.267117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977547, 30.761528, 47.112728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410702, -0.073321, -0.908817,
		-0.502200, 0.850127, 0.158363,
		0.760998, 0.521448, -0.385970,
		39.205845, 30.917963, 46.996937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819756, 30.467211, 47.074783>,  <38.673149, 30.552948, 47.267117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819756, 30.467211, 47.074783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.729301, 30.077591, 47.070934>,  <37.675030, 29.843819, 47.068623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.729301, 30.077591, 47.070934>,  <37.819756, 30.467211, 47.074783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729301, 30.077591, 47.070934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028838, -0.003184, 0.999579,
		-0.973669, 0.226317, -0.027369,
		-0.226134, -0.974049, -0.009627,
		37.661461, 29.785376, 47.068047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330021, 30.385721, 47.496178>,  <37.819756, 30.467211, 47.074783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330021, 30.385721, 47.496178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.471035, 30.011406, 47.497822>,  <37.555645, 29.786816, 47.498806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.471035, 30.011406, 47.497822>,  <37.330021, 30.385721, 47.496178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471035, 30.011406, 47.497822> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030370, 0.015826, 0.999414,
		-0.935306, -0.352203, 0.033999,
		0.352534, -0.935790, 0.004106,
		37.576794, 29.730669, 47.499054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867420, 29.947048, 47.850830>,  <37.330021, 30.385721, 47.496178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867420, 29.947048, 47.850830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.237106, 29.795109, 47.866508>,  <37.458920, 29.703945, 47.875916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.237106, 29.795109, 47.866508>,  <36.867420, 29.947048, 47.850830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237106, 29.795109, 47.866508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014141, 0.136627, 0.990522,
		-0.381607, -0.914902, 0.131645,
		0.924217, -0.379851, 0.039200,
		37.514370, 29.681154, 47.878269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919209, 29.676929, 48.591717>,  <36.867420, 29.947048, 47.850830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919209, 29.676929, 48.591717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.298389, 29.646603, 48.468021>,  <37.525898, 29.628407, 48.393803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.298389, 29.646603, 48.468021>,  <36.919209, 29.676929, 48.591717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298389, 29.646603, 48.468021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318288, 0.199696, 0.926723,
		-0.008508, -0.976920, 0.213435,
		0.947956, -0.075818, -0.309243,
		37.582775, 29.623857, 48.375248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192635, 29.334307, 49.071053>,  <36.919209, 29.676929, 48.591717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192635, 29.334307, 49.071053> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.515331, 29.518059, 48.922390>,  <37.708950, 29.628311, 48.833191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.515331, 29.518059, 48.922390>,  <37.192635, 29.334307, 49.071053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.515331, 29.518059, 48.922390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197931, 0.382548, 0.902485,
		0.556762, -0.801639, 0.217694,
		0.806746, 0.459382, -0.371658,
		37.757355, 29.655872, 48.810894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625919, 29.337599, 49.618294>,  <37.192635, 29.334307, 49.071053>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625919, 29.337599, 49.618294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.791180, 29.608162, 49.374397>,  <37.890335, 29.770500, 49.228058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.791180, 29.608162, 49.374397>,  <37.625919, 29.337599, 49.618294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791180, 29.608162, 49.374397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270301, 0.548297, 0.791396,
		0.869624, -0.491776, 0.043694,
		0.413147, 0.676407, -0.609740,
		37.915123, 29.811085, 49.191475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299976, 29.371078, 49.810112>,  <37.625919, 29.337599, 49.618294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299976, 29.371078, 49.810112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.212753, 29.720036, 49.635120>,  <38.160419, 29.929409, 49.530125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.212753, 29.720036, 49.635120>,  <38.299976, 29.371078, 49.810112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212753, 29.720036, 49.635120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058849, 0.459200, 0.886382,
		0.974160, 0.167538, -0.151471,
		-0.218058, 0.872391, -0.437475,
		38.147335, 29.981752, 49.503880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755829, 29.784380, 50.117672>,  <38.299976, 29.371078, 49.810112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755829, 29.784380, 50.117672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.502041, 30.042377, 49.947292>,  <38.349770, 30.197176, 49.845066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.502041, 30.042377, 49.947292>,  <38.755829, 29.784380, 50.117672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502041, 30.042377, 49.947292> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020954, 0.565222, 0.824673,
		0.772664, 0.514304, -0.372131,
		-0.634470, 0.644992, -0.425950,
		38.311699, 30.235874, 49.819508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958885, 30.374014, 50.337215>,  <38.755829, 29.784380, 50.117672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958885, 30.374014, 50.337215> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.580288, 30.438433, 50.225346>,  <38.353130, 30.477085, 50.158222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.580288, 30.438433, 50.225346>,  <38.958885, 30.374014, 50.337215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580288, 30.438433, 50.225346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138579, 0.579816, 0.802876,
		0.291461, 0.798672, -0.526473,
		-0.946492, 0.161049, -0.279673,
		38.296341, 30.486748, 50.141445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875610, 31.082991, 50.354206>,  <38.958885, 30.374014, 50.337215>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875610, 31.082991, 50.354206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.520515, 30.900307, 50.377300>,  <38.307457, 30.790695, 50.391159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.520515, 30.900307, 50.377300>,  <38.875610, 31.082991, 50.354206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520515, 30.900307, 50.377300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227711, 0.544657, 0.807153,
		-0.400084, 0.703394, -0.587511,
		-0.887739, -0.456712, 0.057738,
		38.254192, 30.763292, 50.394623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596882, 31.580421, 50.720894>,  <38.875610, 31.082991, 50.354206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596882, 31.580421, 50.720894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.335709, 31.277889, 50.737148>,  <38.179005, 31.096371, 50.746899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.335709, 31.277889, 50.737148>,  <38.596882, 31.580421, 50.720894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.335709, 31.277889, 50.737148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505032, 0.474714, 0.720825,
		-0.564470, 0.450126, -0.691925,
		-0.652929, -0.756329, 0.040634,
		38.139832, 31.050991, 50.749340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010929, 31.979694, 50.792446>,  <38.596882, 31.580421, 50.720894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010929, 31.979694, 50.792446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.902744, 31.609097, 50.897102>,  <37.837833, 31.386738, 50.959896>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.902744, 31.609097, 50.897102>,  <38.010929, 31.979694, 50.792446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902744, 31.609097, 50.897102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530249, 0.370189, 0.762755,
		-0.803545, 0.067566, -0.591397,
		-0.270465, -0.926496, 0.261637,
		37.821606, 31.331148, 50.975594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339897, 31.937561, 50.730534>,  <38.010929, 31.979694, 50.792446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339897, 31.937561, 50.730534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423534, 31.639135, 50.983410>,  <37.473717, 31.460079, 51.135136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.423534, 31.639135, 50.983410>,  <37.339897, 31.937561, 50.730534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423534, 31.639135, 50.983410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652188, 0.375319, 0.658625,
		-0.728651, -0.550022, -0.408097,
		0.209091, -0.746063, 0.632195,
		37.486263, 31.415316, 51.173069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724548, 31.615414, 50.902462>,  <37.339897, 31.937561, 50.730534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724548, 31.615414, 50.902462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.019791, 31.615902, 51.172337>,  <37.196938, 31.616196, 51.334263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.019791, 31.615902, 51.172337>,  <36.724548, 31.615414, 50.902462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019791, 31.615902, 51.172337> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631247, 0.354271, 0.689942,
		-0.238179, -0.935142, 0.262259,
		0.738104, 0.001221, 0.674685,
		37.241222, 31.616268, 51.374741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709366, 32.323196, 51.185833>,  <36.724548, 31.615414, 50.902462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709366, 32.323196, 51.185833> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.408844, 32.586922, 51.197399>,  <36.228531, 32.745159, 51.204338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.408844, 32.586922, 51.197399>,  <36.709366, 32.323196, 51.185833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408844, 32.586922, 51.197399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395586, 0.484987, -0.779935,
		-0.528248, -0.574533, -0.625192,
		-0.751309, 0.659317, 0.028916,
		36.183453, 32.784718, 51.206074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382351, 32.222675, 50.597004>,  <36.709366, 32.323196, 51.185833>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382351, 32.222675, 50.597004> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.304977, 32.604885, 50.686047>,  <36.258553, 32.834213, 50.739471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.304977, 32.604885, 50.686047>,  <36.382351, 32.222675, 50.597004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.304977, 32.604885, 50.686047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300669, 0.273708, -0.913609,
		-0.933907, -0.109789, -0.340241,
		-0.193430, 0.955526, 0.222608,
		36.246948, 32.891544, 50.752831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881332, 32.448067, 50.092728>,  <36.382351, 32.222675, 50.597004>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881332, 32.448067, 50.092728> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.026489, 32.792049, 50.236279>,  <36.113583, 32.998440, 50.322411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.026489, 32.792049, 50.236279>,  <35.881332, 32.448067, 50.092728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026489, 32.792049, 50.236279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194547, 0.306725, -0.931704,
		-0.911298, 0.407923, -0.055994,
		0.362888, 0.859953, 0.358878,
		36.135357, 33.050034, 50.343941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690113, 32.958839, 49.578461>,  <35.881332, 32.448067, 50.092728>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690113, 32.958839, 49.578461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.977818, 33.140678, 49.788609>,  <36.150440, 33.249783, 49.914696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.977818, 33.140678, 49.788609>,  <35.690113, 32.958839, 49.578461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977818, 33.140678, 49.788609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385825, 0.367506, -0.846214,
		-0.577761, 0.811346, 0.088937,
		0.719257, 0.454596, 0.525369,
		36.193596, 33.277058, 49.946220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707745, 33.614475, 49.307034>,  <35.690113, 32.958839, 49.578461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707745, 33.614475, 49.307034> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.068062, 33.573330, 49.475784>,  <36.284252, 33.548645, 49.577034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.068062, 33.573330, 49.475784>,  <35.707745, 33.614475, 49.307034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068062, 33.573330, 49.475784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414726, 0.491753, -0.765625,
		-0.128710, 0.864638, 0.485628,
		0.900798, -0.102859, 0.421881,
		36.338303, 33.542473, 49.602348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089657, 34.320572, 49.362339>,  <35.707745, 33.614475, 49.307034>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089657, 34.320572, 49.362339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.359715, 34.025513, 49.365173>,  <36.521751, 33.848476, 49.366875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.359715, 34.025513, 49.365173>,  <36.089657, 34.320572, 49.362339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359715, 34.025513, 49.365173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456905, 0.410613, -0.789072,
		0.579150, 0.535977, 0.614260,
		0.675147, -0.737649, 0.007084,
		36.562260, 33.804218, 49.367298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776527, 34.640564, 49.357903>,  <36.089657, 34.320572, 49.362339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776527, 34.640564, 49.357903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.803371, 34.267647, 49.215729>,  <36.819477, 34.043896, 49.130424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.803371, 34.267647, 49.215729>,  <36.776527, 34.640564, 49.357903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803371, 34.267647, 49.215729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440863, 0.347282, -0.827668,
		0.895062, -0.101151, 0.434319,
		0.067112, -0.932289, -0.355433,
		36.823505, 33.987961, 49.109100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280930, 35.141384, 49.259472>,  <36.776527, 34.640564, 49.357903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280930, 35.141384, 49.259472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.356220, 35.531891, 49.302319>,  <37.401394, 35.766193, 49.328026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.356220, 35.531891, 49.302319>,  <37.280930, 35.141384, 49.259472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356220, 35.531891, 49.302319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374868, -0.172222, 0.910941,
		0.907769, -0.131311, -0.398388,
		0.188228, 0.976267, 0.107113,
		37.412689, 35.824772, 49.334454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979206, 35.146191, 49.457188>,  <37.280930, 35.141384, 49.259472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979206, 35.146191, 49.457188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.827385, 35.495300, 49.579964>,  <37.736294, 35.704765, 49.653629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.827385, 35.495300, 49.579964>,  <37.979206, 35.146191, 49.457188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827385, 35.495300, 49.579964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480212, -0.097729, 0.871691,
		0.790783, 0.478250, -0.382021,
		-0.379552, 0.872769, 0.306943,
		37.713520, 35.757130, 49.672047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533939, 35.569607, 49.607487>,  <37.979206, 35.146191, 49.457188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533939, 35.569607, 49.607487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.225666, 35.705734, 49.822979>,  <38.040703, 35.787411, 49.952274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.225666, 35.705734, 49.822979>,  <38.533939, 35.569607, 49.607487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225666, 35.705734, 49.822979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579556, 0.022928, 0.814610,
		0.264874, 0.940031, -0.214904,
		-0.770686, 0.340318, 0.538728,
		37.994461, 35.807831, 49.984596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872372, 35.973175, 50.101547>,  <38.533939, 35.569607, 49.607487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872372, 35.973175, 50.101547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.505135, 35.956451, 50.259205>,  <38.284790, 35.946419, 50.353798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.505135, 35.956451, 50.259205>,  <38.872372, 35.973175, 50.101547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505135, 35.956451, 50.259205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390119, 0.080401, 0.917247,
		-0.070035, 0.995886, -0.057507,
		-0.918097, -0.041805, 0.394145,
		38.229706, 35.943909, 50.377449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724049, 36.543770, 50.622540>,  <38.872372, 35.973175, 50.101547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724049, 36.543770, 50.622540> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.457718, 36.268883, 50.738754>,  <38.297920, 36.103951, 50.808483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.457718, 36.268883, 50.738754>,  <38.724049, 36.543770, 50.622540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457718, 36.268883, 50.738754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329375, 0.078672, 0.940916,
		-0.669468, 0.722182, 0.173969,
		-0.665826, -0.687214, 0.290537,
		38.257969, 36.062717, 50.825916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378017, 36.789265, 51.318253>,  <38.724049, 36.543770, 50.622540>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378017, 36.789265, 51.318253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.314110, 36.396378, 51.278816>,  <38.275764, 36.160645, 51.255154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.314110, 36.396378, 51.278816>,  <38.378017, 36.789265, 51.318253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314110, 36.396378, 51.278816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596424, -0.175635, 0.783218,
		-0.786608, 0.066331, 0.613880,
		-0.159771, -0.982218, -0.098595,
		38.266178, 36.101711, 51.249237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280525, 36.636204, 52.002819>,  <38.378017, 36.789265, 51.318253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280525, 36.636204, 52.002819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.385509, 36.301979, 51.809757>,  <38.448498, 36.101444, 51.693920>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.385509, 36.301979, 51.809757>,  <38.280525, 36.636204, 52.002819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385509, 36.301979, 51.809757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563088, -0.273578, 0.779799,
		-0.783613, -0.476443, 0.398690,
		0.262457, -0.835558, -0.482659,
		38.464245, 36.051311, 51.664959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010921, 36.164612, 52.415146>,  <38.280525, 36.636204, 52.002819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010921, 36.164612, 52.415146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.327404, 36.025906, 52.213654>,  <38.517292, 35.942680, 52.092758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.327404, 36.025906, 52.213654>,  <38.010921, 36.164612, 52.415146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327404, 36.025906, 52.213654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406671, -0.316844, 0.856871,
		-0.456738, -0.882815, -0.109670,
		0.791208, -0.346766, -0.503731,
		38.564766, 35.921875, 52.062534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155163, 35.415451, 52.667103>,  <38.010921, 36.164612, 52.415146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155163, 35.415451, 52.667103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.491455, 35.571011, 52.516415>,  <38.693230, 35.664349, 52.426003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.491455, 35.571011, 52.516415>,  <38.155163, 35.415451, 52.667103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491455, 35.571011, 52.516415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490657, -0.253011, 0.833811,
		0.228956, -0.885856, -0.403533,
		0.840735, 0.388902, -0.376723,
		38.743675, 35.687679, 52.403397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.604404, 34.988235, 36.706402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995144, 34.937023, 36.637844>,  <37.229588, 34.906296, 36.596710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995144, 34.937023, 36.637844>,  <36.604404, 34.988235, 36.706402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995144, 34.937023, 36.637844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166170, -0.050518, 0.984802,
		-0.134746, -0.990482, -0.028073,
		0.976847, -0.128033, -0.171396,
		37.288197, 34.898613, 36.586426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760880, 34.433781, 37.104439>,  <36.604404, 34.988235, 36.706402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760880, 34.433781, 37.104439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104351, 34.631538, 37.050396>,  <37.310432, 34.750191, 37.017971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.104351, 34.631538, 37.050396>,  <36.760880, 34.433781, 37.104439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104351, 34.631538, 37.050396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216120, -0.110246, 0.970123,
		0.464727, -0.862219, -0.201514,
		0.858674, 0.494393, -0.135108,
		37.361954, 34.779858, 37.009865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197914, 33.997814, 37.507412>,  <36.760880, 34.433781, 37.104439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197914, 33.997814, 37.507412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394146, 34.340523, 37.443813>,  <37.511887, 34.546146, 37.405655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394146, 34.340523, 37.443813>,  <37.197914, 33.997814, 37.507412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394146, 34.340523, 37.443813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303910, 0.002778, 0.952696,
		0.816683, -0.515692, -0.259018,
		0.490578, 0.856770, -0.158993,
		37.541321, 34.597553, 37.396114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858288, 33.814831, 37.633839>,  <37.197914, 33.997814, 37.507412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858288, 33.814831, 37.633839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815941, 34.210205, 37.677258>,  <37.790535, 34.447430, 37.703308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815941, 34.210205, 37.677258>,  <37.858288, 33.814831, 37.633839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815941, 34.210205, 37.677258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007014, -0.108411, 0.994081,
		0.994356, 0.105999, 0.004544,
		-0.105864, 0.988439, 0.108543,
		37.784184, 34.506737, 37.709820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336796, 34.017986, 38.105103>,  <37.858288, 33.814831, 37.633839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336796, 34.017986, 38.105103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116222, 34.350975, 38.126640>,  <37.983879, 34.550770, 38.139565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116222, 34.350975, 38.126640>,  <38.336796, 34.017986, 38.105103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116222, 34.350975, 38.126640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077237, -0.115219, 0.990333,
		0.830633, 0.541948, 0.127834,
		-0.551438, 0.832476, 0.053847,
		37.950790, 34.600719, 38.142796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746376, 34.464481, 38.541126>,  <38.336796, 34.017986, 38.105103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746376, 34.464481, 38.541126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365414, 34.586079, 38.550228>,  <38.136837, 34.659039, 38.555691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365414, 34.586079, 38.550228>,  <38.746376, 34.464481, 38.541126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365414, 34.586079, 38.550228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113112, 0.283082, 0.952402,
		0.283082, 0.909644, -0.303994,
		-0.952402, 0.303994, 0.022756,
		38.079693, 34.677277, 38.557056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743919, 35.087097, 38.970699>,  <38.746376, 34.464481, 38.541126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743919, 35.087097, 38.970699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367081, 34.953045, 38.975452>,  <38.140976, 34.872612, 38.978302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367081, 34.953045, 38.975452>,  <38.743919, 35.087097, 38.970699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367081, 34.953045, 38.975452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078365, 0.254461, 0.963903,
		-0.326057, 0.907159, -0.265989,
		-0.942097, -0.335131, 0.011879,
		38.084454, 34.852505, 38.979015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361485, 35.652161, 39.235458>,  <38.743919, 35.087097, 38.970699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361485, 35.652161, 39.235458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133286, 35.327381, 39.284893>,  <37.996365, 35.132515, 39.314552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133286, 35.327381, 39.284893>,  <38.361485, 35.652161, 39.235458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133286, 35.327381, 39.284893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238967, 0.308071, 0.920862,
		-0.785765, 0.495818, -0.369782,
		-0.570499, -0.811947, 0.123587,
		37.962135, 35.083797, 39.321968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801361, 35.882149, 39.396282>,  <38.361485, 35.652161, 39.235458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801361, 35.882149, 39.396282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764294, 35.505672, 39.526245>,  <37.742054, 35.279785, 39.604225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764294, 35.505672, 39.526245>,  <37.801361, 35.882149, 39.396282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764294, 35.505672, 39.526245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487615, 0.327404, 0.809345,
		-0.868127, -0.083433, -0.489279,
		-0.092665, -0.941194, 0.324912,
		37.736492, 35.223316, 39.623718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198318, 35.889427, 39.746487>,  <37.801361, 35.882149, 39.396282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198318, 35.889427, 39.746487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351433, 35.549042, 39.890339>,  <37.443302, 35.344810, 39.976650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351433, 35.549042, 39.890339>,  <37.198318, 35.889427, 39.746487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351433, 35.549042, 39.890339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396802, 0.200096, 0.895829,
		-0.834281, -0.485610, -0.261072,
		0.382785, -0.850967, 0.359627,
		37.466267, 35.293751, 39.998226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726204, 35.640076, 40.084969>,  <37.198318, 35.889427, 39.746487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726204, 35.640076, 40.084969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057411, 35.491623, 40.253082>,  <37.256138, 35.402550, 40.353951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057411, 35.491623, 40.253082>,  <36.726204, 35.640076, 40.084969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057411, 35.491623, 40.253082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285866, 0.365399, 0.885869,
		-0.482350, -0.853664, 0.196463,
		0.828021, -0.371136, 0.420284,
		37.305817, 35.380283, 40.379166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554203, 35.248253, 40.671394>,  <36.726204, 35.640076, 40.084969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554203, 35.248253, 40.671394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936737, 35.342915, 40.739998>,  <37.166256, 35.399712, 40.781162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936737, 35.342915, 40.739998>,  <36.554203, 35.248253, 40.671394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936737, 35.342915, 40.739998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258113, 0.408561, 0.875474,
		0.137114, -0.881517, 0.451806,
		0.956335, 0.236657, 0.171512,
		37.223637, 35.413910, 40.791451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.021065, 34.725483, 40.465210>,  <36.554203, 35.248253, 40.671394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.021065, 34.725483, 40.465210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908066, 34.351536, 40.551205>,  <35.840267, 34.127167, 40.602802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908066, 34.351536, 40.551205>,  <36.021065, 34.725483, 40.465210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908066, 34.351536, 40.551205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414487, -0.083156, -0.906248,
		0.865100, -0.345118, -0.364000,
		-0.282494, -0.934868, 0.214985,
		35.823318, 34.071075, 40.615700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205738, 34.422615, 39.823265>,  <36.021065, 34.725483, 40.465210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205738, 34.422615, 39.823265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929867, 34.204601, 40.013962>,  <35.764343, 34.073795, 40.128380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929867, 34.204601, 40.013962>,  <36.205738, 34.422615, 39.823265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929867, 34.204601, 40.013962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481974, -0.145820, -0.863966,
		0.540407, -0.825637, -0.162122,
		-0.689682, -0.545032, 0.476737,
		35.722961, 34.041092, 40.156982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.082737, 33.828918, 39.330009>,  <36.205738, 34.422615, 39.823265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.082737, 33.828918, 39.330009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760860, 33.859715, 39.565479>,  <35.567734, 33.878193, 39.706760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760860, 33.859715, 39.565479>,  <36.082737, 33.828918, 39.330009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760860, 33.859715, 39.565479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593121, -0.147723, -0.791445,
		0.026031, -0.986028, 0.164533,
		-0.804693, 0.076986, 0.588679,
		35.519451, 33.882812, 39.742085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723354, 33.213112, 39.318699>,  <36.082737, 33.828918, 39.330009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723354, 33.213112, 39.318699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435734, 33.480484, 39.394779>,  <35.263161, 33.640907, 39.440426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.435734, 33.480484, 39.394779>,  <35.723354, 33.213112, 39.318699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435734, 33.480484, 39.394779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551655, -0.382530, -0.741180,
		-0.422664, -0.637871, 0.643798,
		-0.719049, 0.668425, 0.190203,
		35.220020, 33.681011, 39.451839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061092, 32.853512, 39.142906>,  <35.723354, 33.213112, 39.318699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061092, 32.853512, 39.142906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934872, 33.230232, 39.189262>,  <34.859138, 33.456264, 39.217075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.934872, 33.230232, 39.189262>,  <35.061092, 32.853512, 39.142906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934872, 33.230232, 39.189262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918467, -0.272454, -0.286682,
		-0.238423, -0.196904, 0.950990,
		-0.315550, 0.941805, 0.115891,
		34.840206, 33.512775, 39.224030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466084, 32.859329, 39.544987>,  <35.061092, 32.853512, 39.142906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466084, 32.859329, 39.544987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455723, 33.202511, 39.339756>,  <34.449505, 33.408421, 39.216618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.455723, 33.202511, 39.339756>,  <34.466084, 32.859329, 39.544987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455723, 33.202511, 39.339756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907677, -0.235238, -0.347542,
		-0.418869, 0.456702, 0.784838,
		-0.025901, 0.857955, -0.513073,
		34.447952, 33.459896, 39.185833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764332, 33.264935, 39.746449>,  <34.466084, 32.859329, 39.544987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764332, 33.264935, 39.746449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912121, 33.394001, 39.397881>,  <34.000793, 33.471443, 39.188740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912121, 33.394001, 39.397881>,  <33.764332, 33.264935, 39.746449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912121, 33.394001, 39.397881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867875, -0.215316, -0.447696,
		-0.332089, 0.921696, 0.200483,
		0.369472, 0.322670, -0.871421,
		34.022961, 33.490803, 39.136456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050068, 33.495750, 39.428425>,  <33.764332, 33.264935, 39.746449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050068, 33.495750, 39.428425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330696, 33.525112, 39.144897>,  <33.499073, 33.542728, 38.974781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330696, 33.525112, 39.144897>,  <33.050068, 33.495750, 39.428425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330696, 33.525112, 39.144897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711946, 0.114962, -0.692761,
		0.030637, 0.990654, 0.132912,
		0.701566, 0.073402, -0.708814,
		33.541164, 33.547134, 38.932255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876743, 34.107368, 39.017792>,  <33.050068, 33.495750, 39.428425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876743, 34.107368, 39.017792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086788, 33.841518, 38.805176>,  <33.212814, 33.682011, 38.677605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086788, 33.841518, 38.805176>,  <32.876743, 34.107368, 39.017792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086788, 33.841518, 38.805176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738876, -0.046128, -0.672261,
		0.422280, 0.745756, -0.515294,
		0.525112, -0.664621, -0.531542,
		33.244320, 33.642132, 38.645714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690540, 34.264809, 38.438015>,  <32.876743, 34.107368, 39.017792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690540, 34.264809, 38.438015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842125, 33.901932, 38.364925>,  <32.933075, 33.684204, 38.321072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842125, 33.901932, 38.364925>,  <32.690540, 34.264809, 38.438015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842125, 33.901932, 38.364925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736025, -0.175789, -0.653731,
		0.560940, 0.382229, -0.734335,
		0.378963, -0.907193, -0.182723,
		32.955814, 33.629772, 38.310108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732166, 34.274349, 37.748920>,  <32.690540, 34.264809, 38.438015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732166, 34.274349, 37.748920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745022, 33.888741, 37.854465>,  <32.752735, 33.657375, 37.917793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745022, 33.888741, 37.854465>,  <32.732166, 34.274349, 37.748920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745022, 33.888741, 37.854465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824300, -0.174869, -0.538471,
		0.565240, -0.200199, -0.800265,
		0.032141, -0.964023, 0.263867,
		32.754665, 33.599533, 37.933624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646156, 33.993595, 37.122059>,  <32.732166, 34.274349, 37.748920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646156, 33.993595, 37.122059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542576, 33.716846, 37.391655>,  <32.480427, 33.550797, 37.553413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542576, 33.716846, 37.391655>,  <32.646156, 33.993595, 37.122059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542576, 33.716846, 37.391655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518268, -0.489309, -0.701409,
		0.815073, -0.530935, -0.231870,
		-0.258947, -0.691871, 0.673989,
		32.464893, 33.509285, 37.593853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569538, 33.414898, 36.820206>,  <32.646156, 33.993595, 37.122059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569538, 33.414898, 36.820206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379021, 33.292904, 37.150085>,  <32.264709, 33.219707, 37.348015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379021, 33.292904, 37.150085>,  <32.569538, 33.414898, 36.820206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379021, 33.292904, 37.150085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606599, -0.565014, -0.559282,
		0.636538, -0.766645, 0.084111,
		-0.476294, -0.304983, 0.824700,
		32.236134, 33.201408, 37.397495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610878, 32.713005, 36.725983>,  <32.569538, 33.414898, 36.820206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610878, 32.713005, 36.725983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311123, 32.801460, 36.975628>,  <32.131271, 32.854534, 37.125416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.311123, 32.801460, 36.975628>,  <32.610878, 32.713005, 36.725983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.311123, 32.801460, 36.975628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595953, -0.636033, -0.490206,
		0.288556, -0.739297, 0.608421,
		-0.749383, 0.221138, 0.624117,
		32.086308, 32.867802, 37.162865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.375622, 32.133438, 37.060047>,  <32.610878, 32.713005, 36.725983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.375622, 32.133438, 37.060047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082096, 32.402962, 37.025410>,  <31.905981, 32.564678, 37.004627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082096, 32.402962, 37.025410>,  <32.375622, 32.133438, 37.060047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082096, 32.402962, 37.025410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522159, -0.640958, -0.562604,
		-0.434594, -0.367627, 0.822179,
		-0.733810, 0.673812, -0.086596,
		31.861954, 32.605106, 36.999432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698326, 31.488655, 37.537033>,  <32.375622, 32.133438, 37.060047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698326, 31.488655, 37.537033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077858, 31.614624, 37.546371>,  <33.305576, 31.690207, 37.551975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077858, 31.614624, 37.546371>,  <32.698326, 31.488655, 37.537033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077858, 31.614624, 37.546371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277372, -0.866457, 0.415110,
		0.150953, -0.387394, -0.909472,
		0.948830, 0.314924, 0.023342,
		33.362507, 31.709101, 37.553375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194221, 30.853371, 37.562366>,  <32.698326, 31.488655, 37.537033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194221, 30.853371, 37.562366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455261, 31.154568, 37.596100>,  <33.611885, 31.335287, 37.616341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.455261, 31.154568, 37.596100>,  <33.194221, 30.853371, 37.562366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455261, 31.154568, 37.596100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570487, -0.561550, 0.599338,
		0.498657, -0.343015, -0.796041,
		0.652599, 0.752995, 0.084335,
		33.651043, 31.380466, 37.621399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966499, 30.583229, 37.412605>,  <33.194221, 30.853371, 37.562366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966499, 30.583229, 37.412605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993816, 30.919151, 37.628036>,  <34.010208, 31.120705, 37.757294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993816, 30.919151, 37.628036>,  <33.966499, 30.583229, 37.412605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993816, 30.919151, 37.628036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450011, -0.507727, 0.734645,
		0.890408, 0.192195, -0.412595,
		0.068291, 0.839806, 0.538574,
		34.014305, 31.171093, 37.789608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543114, 30.501390, 37.851898>,  <33.966499, 30.583229, 37.412605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543114, 30.501390, 37.851898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420456, 30.836002, 38.033531>,  <34.346863, 31.036770, 38.142509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420456, 30.836002, 38.033531>,  <34.543114, 30.501390, 37.851898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420456, 30.836002, 38.033531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503563, -0.262254, 0.823193,
		0.807709, 0.481087, -0.340826,
		-0.306644, 0.836527, 0.454083,
		34.328461, 31.086960, 38.169758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136223, 30.649000, 38.124134>,  <34.543114, 30.501390, 37.851898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136223, 30.649000, 38.124134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830822, 30.820833, 38.317017>,  <34.647579, 30.923933, 38.432747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830822, 30.820833, 38.317017>,  <35.136223, 30.649000, 38.124134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830822, 30.820833, 38.317017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421000, -0.235120, 0.876058,
		0.489713, 0.871882, -0.001338,
		-0.763505, 0.429580, 0.482204,
		34.601772, 30.949707, 38.461678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434818, 31.021540, 38.556103>,  <35.136223, 30.649000, 38.124134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434818, 31.021540, 38.556103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064293, 30.977623, 38.700260>,  <34.841976, 30.951273, 38.786755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.064293, 30.977623, 38.700260>,  <35.434818, 31.021540, 38.556103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064293, 30.977623, 38.700260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375523, -0.192060, 0.906695,
		-0.030330, 0.975223, 0.219137,
		-0.926317, -0.109791, 0.360393,
		34.786396, 30.944685, 38.808376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382519, 31.438112, 39.208202>,  <35.434818, 31.021540, 38.556103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382519, 31.438112, 39.208202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102493, 31.152845, 39.222649>,  <34.934479, 30.981686, 39.231316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102493, 31.152845, 39.222649>,  <35.382519, 31.438112, 39.208202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102493, 31.152845, 39.222649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268292, -0.215816, 0.938852,
		-0.661765, 0.666944, 0.342422,
		-0.700062, -0.713168, 0.036116,
		34.892475, 30.938894, 39.233482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028786, 31.512690, 39.925606>,  <35.382519, 31.438112, 39.208202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028786, 31.512690, 39.925606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984665, 31.134953, 39.801640>,  <34.958195, 30.908310, 39.727261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984665, 31.134953, 39.801640>,  <35.028786, 31.512690, 39.925606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984665, 31.134953, 39.801640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106060, -0.298853, 0.948387,
		-0.988223, 0.137477, -0.067193,
		-0.110300, -0.944345, -0.309915,
		34.951576, 30.851648, 39.708664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389568, 31.300323, 40.182076>,  <35.028786, 31.512690, 39.925606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389568, 31.300323, 40.182076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606197, 30.967066, 40.137226>,  <34.736176, 30.767111, 40.110317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606197, 30.967066, 40.137226>,  <34.389568, 31.300323, 40.182076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606197, 30.967066, 40.137226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194006, -0.253640, 0.947644,
		-0.817963, -0.491464, -0.298999,
		0.541570, -0.833145, -0.112121,
		34.768669, 30.717123, 40.103588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018364, 30.882860, 40.641758>,  <34.389568, 31.300323, 40.182076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018364, 30.882860, 40.641758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365250, 30.695225, 40.574955>,  <34.573383, 30.582644, 40.534874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365250, 30.695225, 40.574955>,  <34.018364, 30.882860, 40.641758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365250, 30.695225, 40.574955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067432, -0.442960, 0.894002,
		-0.493347, -0.764029, -0.415773,
		0.867215, -0.469090, -0.167013,
		34.625416, 30.554499, 40.524853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066250, 30.431454, 41.226479>,  <34.018364, 30.882860, 40.641758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066250, 30.431454, 41.226479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431904, 30.395786, 41.068283>,  <34.651295, 30.374386, 40.973366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431904, 30.395786, 41.068283>,  <34.066250, 30.431454, 41.226479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431904, 30.395786, 41.068283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317840, -0.447960, 0.835649,
		-0.251676, -0.889596, -0.381154,
		0.914132, -0.089166, -0.395490,
		34.706142, 30.369036, 40.949635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308884, 29.659281, 41.202404>,  <34.066250, 30.431454, 41.226479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308884, 29.659281, 41.202404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604820, 29.925999, 41.238220>,  <34.782383, 30.086029, 41.259708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604820, 29.925999, 41.238220>,  <34.308884, 29.659281, 41.202404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604820, 29.925999, 41.238220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259269, -0.405381, 0.876610,
		0.620817, -0.625339, -0.472797,
		0.739842, 0.666796, 0.089537,
		34.826775, 30.126038, 41.265079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844307, 29.260321, 41.563957>,  <34.308884, 29.659281, 41.202404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844307, 29.260321, 41.563957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990200, 29.631809, 41.590637>,  <35.077736, 29.854702, 41.606644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.990200, 29.631809, 41.590637>,  <34.844307, 29.260321, 41.563957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990200, 29.631809, 41.590637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485977, -0.250982, 0.837159,
		0.794227, -0.272925, -0.542878,
		0.364734, 0.928720, 0.066701,
		35.099621, 29.910425, 41.610649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549789, 29.227112, 41.710678>,  <34.844307, 29.260321, 41.563957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549789, 29.227112, 41.710678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451164, 29.592546, 41.840023>,  <35.391991, 29.811808, 41.917629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451164, 29.592546, 41.840023>,  <35.549789, 29.227112, 41.710678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451164, 29.592546, 41.840023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569240, -0.133517, 0.811257,
		0.784330, 0.384095, -0.487132,
		-0.246559, 0.913589, 0.323364,
		35.377197, 29.866623, 41.937031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172569, 29.500637, 41.906269>,  <35.549789, 29.227112, 41.710678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172569, 29.500637, 41.906269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910217, 29.736931, 42.094250>,  <35.752808, 29.878706, 42.207039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910217, 29.736931, 42.094250>,  <36.172569, 29.500637, 41.906269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910217, 29.736931, 42.094250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566038, -0.027017, 0.823937,
		0.499422, 0.806415, -0.316657,
		-0.655880, 0.590732, 0.469954,
		35.713451, 29.914150, 42.235237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510639, 30.018759, 42.197605>,  <36.172569, 29.500637, 41.906269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510639, 30.018759, 42.197605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183197, 30.004539, 42.426907>,  <35.986732, 29.996008, 42.564487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.183197, 30.004539, 42.426907>,  <36.510639, 30.018759, 42.197605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183197, 30.004539, 42.426907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561341, 0.161775, 0.811619,
		-0.121588, 0.986187, -0.112476,
		-0.818604, -0.035546, 0.573257,
		35.937614, 29.993876, 42.598885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594952, 30.496929, 42.638840>,  <36.510639, 30.018759, 42.197605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594952, 30.496929, 42.638840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302422, 30.280798, 42.805313>,  <36.126904, 30.151119, 42.905197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302422, 30.280798, 42.805313>,  <36.594952, 30.496929, 42.638840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302422, 30.280798, 42.805313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462671, 0.055302, 0.884803,
		-0.501100, 0.839635, 0.209550,
		-0.731324, -0.540328, 0.416187,
		36.083023, 30.118700, 42.930168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515190, 30.782270, 43.336239>,  <36.594952, 30.496929, 42.638840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515190, 30.782270, 43.336239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352268, 30.417480, 43.355869>,  <36.254517, 30.198606, 43.367649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352268, 30.417480, 43.355869>,  <36.515190, 30.782270, 43.336239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352268, 30.417480, 43.355869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381225, -0.120938, 0.916538,
		-0.829924, 0.392016, 0.396925,
		-0.407301, -0.911974, 0.049077,
		36.230080, 30.143888, 43.370594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177071, 30.697933, 44.030197>,  <36.515190, 30.782270, 43.336239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177071, 30.697933, 44.030197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253220, 30.329645, 43.893940>,  <36.298908, 30.108673, 43.812187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253220, 30.329645, 43.893940>,  <36.177071, 30.697933, 44.030197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253220, 30.329645, 43.893940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399247, -0.244386, 0.883673,
		-0.896862, -0.304224, 0.321071,
		0.190369, -0.920719, -0.340641,
		36.310329, 30.053429, 43.791748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905087, 30.271484, 44.511620>,  <36.177071, 30.697933, 44.030197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905087, 30.271484, 44.511620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192036, 30.066597, 44.322723>,  <36.364204, 29.943665, 44.209385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.192036, 30.066597, 44.322723>,  <35.905087, 30.271484, 44.511620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192036, 30.066597, 44.322723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379751, -0.280795, 0.881444,
		-0.584095, -0.811656, -0.006918,
		0.717372, -0.512220, -0.472237,
		36.407246, 29.912931, 44.181053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951717, 29.674196, 44.812141>,  <35.905087, 30.271484, 44.511620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951717, 29.674196, 44.812141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298828, 29.656311, 44.614162>,  <36.507095, 29.645580, 44.495377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.298828, 29.656311, 44.614162>,  <35.951717, 29.674196, 44.812141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298828, 29.656311, 44.614162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468301, -0.259744, 0.844528,
		-0.166322, -0.964642, -0.204459,
		0.867774, -0.044715, -0.494944,
		36.559162, 29.642897, 44.465679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188873, 29.006895, 44.929462>,  <35.951717, 29.674196, 44.812141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188873, 29.006895, 44.929462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513138, 29.219099, 44.830360>,  <36.707695, 29.346422, 44.770897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.513138, 29.219099, 44.830360>,  <36.188873, 29.006895, 44.929462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513138, 29.219099, 44.830360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438056, -0.268761, 0.857831,
		0.388501, -0.803944, -0.450268,
		0.810663, 0.530511, -0.247759,
		36.756336, 29.378252, 44.756031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779739, 28.651966, 45.248718>,  <36.188873, 29.006895, 44.929462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779739, 28.651966, 45.248718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944447, 29.010746, 45.184303>,  <37.043270, 29.226013, 45.145653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944447, 29.010746, 45.184303>,  <36.779739, 28.651966, 45.248718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944447, 29.010746, 45.184303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539971, -0.097791, 0.835984,
		0.734086, -0.431185, -0.524593,
		0.411764, 0.896949, -0.161040,
		37.067974, 29.279831, 45.135990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510593, 28.514561, 45.483139>,  <36.779739, 28.651966, 45.248718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510593, 28.514561, 45.483139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409161, 28.901392, 45.474594>,  <37.348301, 29.133490, 45.469467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409161, 28.901392, 45.474594>,  <37.510593, 28.514561, 45.483139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409161, 28.901392, 45.474594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431878, 0.132950, 0.892079,
		0.865549, 0.216994, -0.451374,
		-0.253586, 0.967077, -0.021360,
		37.333084, 29.191515, 45.468185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152260, 28.909109, 45.574585>,  <37.510593, 28.514561, 45.483139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152260, 28.909109, 45.574585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836666, 29.122019, 45.697342>,  <37.647308, 29.249765, 45.770996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836666, 29.122019, 45.697342>,  <38.152260, 28.909109, 45.574585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836666, 29.122019, 45.697342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538954, 0.359737, 0.761654,
		0.295008, 0.766337, -0.570699,
		-0.788986, 0.532275, 0.306895,
		37.599972, 29.281702, 45.789410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507835, 29.507349, 45.810806>,  <38.152260, 28.909109, 45.574585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507835, 29.507349, 45.810806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142372, 29.480547, 45.971176>,  <37.923096, 29.464466, 46.067398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142372, 29.480547, 45.971176>,  <38.507835, 29.507349, 45.810806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142372, 29.480547, 45.971176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369992, 0.271366, 0.888519,
		-0.168334, 0.960141, -0.223143,
		-0.913657, -0.067007, 0.400925,
		37.868275, 29.460445, 46.091454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.424484, 30.056152, 46.410900>,  <38.507835, 29.507349, 45.810806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.424484, 30.056152, 46.410900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086777, 29.851477, 46.474628>,  <37.884151, 29.728672, 46.512863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086777, 29.851477, 46.474628>,  <38.424484, 30.056152, 46.410900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086777, 29.851477, 46.474628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192708, -0.012469, 0.981177,
		-0.500071, 0.859080, 0.109134,
		-0.844271, -0.511689, 0.159317,
		37.833496, 29.697969, 46.522423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.307587, 30.854155, 46.642765>,  <38.424484, 30.056152, 46.410900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.307587, 30.854155, 46.642765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698933, 30.925591, 46.600975>,  <38.933739, 30.968452, 46.575901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698933, 30.925591, 46.600975>,  <38.307587, 30.854155, 46.642765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698933, 30.925591, 46.600975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115459, 0.052256, -0.991937,
		-0.171689, 0.982535, 0.071745,
		0.978362, 0.178588, -0.104470,
		38.992443, 30.979168, 46.569633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343685, 31.426273, 46.054039>,  <38.307587, 30.854155, 46.642765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343685, 31.426273, 46.054039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700737, 31.250666, 46.094982>,  <38.914967, 31.145302, 46.119549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700737, 31.250666, 46.094982>,  <38.343685, 31.426273, 46.054039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700737, 31.250666, 46.094982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116240, 0.004770, -0.993210,
		0.435549, 0.898466, 0.055289,
		0.892628, -0.439018, 0.102360,
		38.968525, 31.118959, 46.125690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784569, 31.907515, 45.852261>,  <38.343685, 31.426273, 46.054039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784569, 31.907515, 45.852261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920784, 31.533169, 45.816063>,  <39.002514, 31.308561, 45.794346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920784, 31.533169, 45.816063>,  <38.784569, 31.907515, 45.852261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920784, 31.533169, 45.816063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136994, 0.144601, -0.979961,
		0.930197, 0.321317, 0.177450,
		0.340537, -0.935867, -0.090490,
		39.022945, 31.252409, 45.788918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164066, 32.030571, 45.408306>,  <38.784569, 31.907515, 45.852261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164066, 32.030571, 45.408306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174294, 31.630724, 45.403980>,  <39.180431, 31.390816, 45.401382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.174294, 31.630724, 45.403980>,  <39.164066, 32.030571, 45.408306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174294, 31.630724, 45.403980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193785, 0.015572, -0.980920,
		0.980711, 0.022984, 0.194109,
		0.025568, -0.999614, -0.010817,
		39.181965, 31.330839, 45.400734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671143, 31.949213, 44.952305>,  <39.164066, 32.030571, 45.408306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671143, 31.949213, 44.952305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450920, 31.615400, 44.960804>,  <39.318787, 31.415113, 44.965904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.450920, 31.615400, 44.960804>,  <39.671143, 31.949213, 44.952305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450920, 31.615400, 44.960804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054743, -0.061490, -0.996605,
		0.833004, -0.547521, 0.079538,
		-0.550553, -0.834530, 0.021249,
		39.285755, 31.365042, 44.967178>
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
