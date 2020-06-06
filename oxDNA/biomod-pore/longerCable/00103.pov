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
	<24.100483, 35.356213, 34.767078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297544, 35.028339, 34.883984>,  <24.415781, 34.831615, 34.954128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297544, 35.028339, 34.883984>,  <24.100483, 35.356213, 34.767078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297544, 35.028339, 34.883984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442304, -0.053382, -0.895275,
		0.749440, 0.570331, 0.336248,
		0.492653, -0.819679, 0.292266,
		24.445341, 34.782436, 34.971664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.787237, 35.401493, 34.642151>,  <24.100483, 35.356213, 34.767078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.787237, 35.401493, 34.642151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710644, 35.010780, 34.603733>,  <24.664688, 34.776352, 34.580685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.710644, 35.010780, 34.603733>,  <24.787237, 35.401493, 34.642151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.710644, 35.010780, 34.603733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351799, 0.023046, -0.935792,
		0.916282, -0.212974, 0.339220,
		-0.191482, -0.976786, -0.096040,
		24.653200, 34.717743, 34.574921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.307261, 35.034348, 34.276550>,  <24.787237, 35.401493, 34.642151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.307261, 35.034348, 34.276550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960363, 34.838753, 34.239059>,  <24.752226, 34.721397, 34.216564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.960363, 34.838753, 34.239059>,  <25.307261, 35.034348, 34.276550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.960363, 34.838753, 34.239059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132197, -0.044663, -0.990217,
		0.480015, -0.871148, 0.103376,
		-0.867242, -0.488986, -0.093725,
		24.700191, 34.692059, 34.210941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357738, 34.266830, 33.987091>,  <25.307261, 35.034348, 34.276550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357738, 34.266830, 33.987091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011387, 34.442162, 33.890659>,  <24.803576, 34.547359, 33.832798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.011387, 34.442162, 33.890659>,  <25.357738, 34.266830, 33.987091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.011387, 34.442162, 33.890659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136383, -0.256823, -0.956787,
		-0.481306, -0.861340, 0.162596,
		-0.865878, 0.438332, -0.241082,
		24.751623, 34.573662, 33.818336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126642, 33.767288, 33.398689>,  <25.357738, 34.266830, 33.987091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.126642, 33.767288, 33.398689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042942, 34.155334, 33.349567>,  <24.992722, 34.388165, 33.320095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.042942, 34.155334, 33.349567>,  <25.126642, 33.767288, 33.398689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.042942, 34.155334, 33.349567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253347, -0.067513, -0.965017,
		-0.944473, -0.233044, -0.231650,
		-0.209252, 0.970120, -0.122805,
		24.980167, 34.446369, 33.312725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.794998, 33.737942, 32.664192>,  <25.126642, 33.767288, 33.398689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.794998, 33.737942, 32.664192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866533, 34.131485, 32.666679>,  <24.909454, 34.367611, 32.668171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.866533, 34.131485, 32.666679>,  <24.794998, 33.737942, 32.664192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.866533, 34.131485, 32.666679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444110, -0.075082, -0.892821,
		-0.877942, 0.162435, -0.450369,
		0.178840, 0.983859, 0.006221,
		24.920185, 34.426643, 32.668545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.428930, 34.199413, 32.193512>,  <24.794998, 33.737942, 32.664192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.428930, 34.199413, 32.193512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798492, 34.323120, 32.283627>,  <25.020229, 34.397343, 32.337696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.798492, 34.323120, 32.283627>,  <24.428930, 34.199413, 32.193512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798492, 34.323120, 32.283627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287231, -0.171614, -0.942362,
		-0.252778, 0.935363, -0.247386,
		0.923906, 0.309266, 0.225284,
		25.075665, 34.415901, 32.351212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.667742, 34.874531, 31.843950>,  <24.428930, 34.199413, 32.193512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.667742, 34.874531, 31.843950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957811, 34.609104, 31.917496>,  <25.131853, 34.449848, 31.961622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957811, 34.609104, 31.917496>,  <24.667742, 34.874531, 31.843950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957811, 34.609104, 31.917496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134365, -0.125518, -0.982950,
		0.675327, 0.737516, -0.001863,
		0.725176, -0.663562, 0.183862,
		25.175364, 34.410034, 31.972654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.269102, 35.119564, 31.462408>,  <24.667742, 34.874531, 31.843950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.269102, 35.119564, 31.462408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.305042, 34.724842, 31.516281>,  <25.326607, 34.488007, 31.548605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.305042, 34.724842, 31.516281>,  <25.269102, 35.119564, 31.462408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.305042, 34.724842, 31.516281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268956, -0.106165, -0.957284,
		0.958952, 0.122235, 0.255869,
		0.089849, -0.986807, 0.134683,
		25.331997, 34.428799, 31.556686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856516, 34.855999, 31.016214>,  <25.269102, 35.119564, 31.462408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856516, 34.855999, 31.016214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685316, 34.507053, 31.110704>,  <25.582596, 34.297688, 31.167398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.685316, 34.507053, 31.110704>,  <25.856516, 34.855999, 31.016214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685316, 34.507053, 31.110704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088556, -0.300594, -0.949632,
		0.899430, -0.385523, 0.205907,
		-0.427999, -0.872362, 0.236223,
		25.556917, 34.245346, 31.181572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149307, 34.350388, 30.615765>,  <25.856516, 34.855999, 31.016214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149307, 34.350388, 30.615765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798138, 34.174469, 30.691483>,  <25.587437, 34.068920, 30.736914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.798138, 34.174469, 30.691483>,  <26.149307, 34.350388, 30.615765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.798138, 34.174469, 30.691483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088216, -0.240013, -0.966753,
		0.470607, -0.865433, 0.171916,
		-0.877922, -0.439795, 0.189297,
		25.534761, 34.042530, 30.748272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.088127, 33.641926, 30.324928>,  <26.149307, 34.350388, 30.615765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.088127, 33.641926, 30.324928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741451, 33.841381, 30.330704>,  <25.533445, 33.961052, 30.334169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741451, 33.841381, 30.330704>,  <26.088127, 33.641926, 30.324928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741451, 33.841381, 30.330704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078700, 0.165256, -0.983106,
		-0.492598, -0.850913, -0.182469,
		-0.866691, 0.498636, 0.014437,
		25.481443, 33.990971, 30.335035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.516745, 33.502682, 29.834764>,  <26.088127, 33.641926, 30.324928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.516745, 33.502682, 29.834764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492384, 33.896458, 29.900690>,  <25.477768, 34.132725, 29.940245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492384, 33.896458, 29.900690>,  <25.516745, 33.502682, 29.834764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492384, 33.896458, 29.900690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069877, 0.168920, -0.983150,
		-0.995695, -0.048356, -0.079077,
		-0.060899, 0.984443, 0.164813,
		25.474113, 34.191792, 29.950134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.976503, 33.865292, 29.431194>,  <25.516745, 33.502682, 29.834764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.976503, 33.865292, 29.431194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277920, 34.119991, 29.496578>,  <25.458771, 34.272812, 29.535809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277920, 34.119991, 29.496578>,  <24.976503, 33.865292, 29.431194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.277920, 34.119991, 29.496578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020153, 0.226153, -0.973883,
		-0.657090, 0.737157, 0.157583,
		0.753543, 0.636753, 0.163459,
		25.503983, 34.311016, 29.545616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751171, 34.299881, 29.967430>,  <24.976503, 33.865292, 29.431194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751171, 34.299881, 29.967430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895891, 33.931213, 30.023464>,  <24.982723, 33.710014, 30.057085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.895891, 33.931213, 30.023464>,  <24.751171, 34.299881, 29.967430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.895891, 33.931213, 30.023464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051203, 0.169685, 0.984167,
		-0.930848, -0.348899, 0.108584,
		0.361800, -0.921670, 0.140087,
		25.004431, 33.654713, 30.065491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.250660, 33.840351, 30.431177>,  <24.751171, 34.299881, 29.967430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.250660, 33.840351, 30.431177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637888, 33.745434, 30.463509>,  <24.870224, 33.688484, 30.482908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637888, 33.745434, 30.463509>,  <24.250660, 33.840351, 30.431177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.637888, 33.745434, 30.463509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034939, 0.191572, 0.980857,
		-0.248236, -0.952361, 0.177164,
		0.968069, -0.237294, 0.080830,
		24.928308, 33.674244, 30.487757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.371010, 33.596199, 31.088308>,  <24.250660, 33.840351, 30.431177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.371010, 33.596199, 31.088308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746338, 33.697330, 30.993958>,  <24.971535, 33.758011, 30.937347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.746338, 33.697330, 30.993958>,  <24.371010, 33.596199, 31.088308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.746338, 33.697330, 30.993958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175611, 0.239188, 0.954961,
		0.297860, -0.937479, 0.180035,
		0.938318, 0.252829, -0.235876,
		25.027834, 33.773178, 30.923195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772038, 33.231632, 31.505505>,  <24.371010, 33.596199, 31.088308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772038, 33.231632, 31.505505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009277, 33.537327, 31.404169>,  <25.151621, 33.720741, 31.343369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.009277, 33.537327, 31.404169>,  <24.772038, 33.231632, 31.505505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.009277, 33.537327, 31.404169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164813, 0.192750, 0.967308,
		0.788078, -0.615465, -0.011635,
		0.593101, 0.764232, -0.253339,
		25.187208, 33.766598, 31.328167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453331, 33.125340, 31.825756>,  <24.772038, 33.231632, 31.505505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453331, 33.125340, 31.825756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413044, 33.517132, 31.755938>,  <25.388872, 33.752209, 31.714046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413044, 33.517132, 31.755938>,  <25.453331, 33.125340, 31.825756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413044, 33.517132, 31.755938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051670, 0.180350, 0.982244,
		0.993573, 0.089909, -0.068774,
		-0.100716, 0.979485, -0.174545,
		25.382830, 33.810978, 31.703573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.089184, 33.486092, 32.135399>,  <25.453331, 33.125340, 31.825756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.089184, 33.486092, 32.135399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783251, 33.741409, 32.100506>,  <25.599691, 33.894600, 32.079571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.783251, 33.741409, 32.100506>,  <26.089184, 33.486092, 32.135399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.783251, 33.741409, 32.100506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034815, 0.176161, 0.983745,
		0.643287, 0.749364, -0.156956,
		-0.764833, 0.638296, -0.087233,
		25.553801, 33.932899, 32.074337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266418, 32.829655, 32.596474>,  <26.089184, 33.486092, 32.135399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266418, 32.829655, 32.596474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398684, 33.206280, 32.622185>,  <26.478043, 33.432255, 32.637611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398684, 33.206280, 32.622185>,  <26.266418, 32.829655, 32.596474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398684, 33.206280, 32.622185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224696, 0.012394, 0.974350,
		0.916611, -0.336622, 0.215663,
		0.330661, 0.941558, 0.064277,
		26.497881, 33.488747, 32.641468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098272, 32.147072, 32.865566>,  <26.266418, 32.829655, 32.596474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098272, 32.147072, 32.865566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828808, 31.852818, 32.893887>,  <25.667130, 31.676264, 32.910877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828808, 31.852818, 32.893887>,  <26.098272, 32.147072, 32.865566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828808, 31.852818, 32.893887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731568, -0.650196, 0.205069,
		-0.104822, 0.189942, 0.976183,
		-0.673662, -0.735640, 0.070800,
		25.626709, 31.632126, 32.915127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311932, 31.791239, 33.425346>,  <26.098272, 32.147072, 32.865566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311932, 31.791239, 33.425346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122715, 31.510099, 33.212845>,  <26.009186, 31.341415, 33.085342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.122715, 31.510099, 33.212845>,  <26.311932, 31.791239, 33.425346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122715, 31.510099, 33.212845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693522, -0.668940, 0.267481,
		-0.543377, -0.241908, 0.803879,
		-0.473041, -0.702851, -0.531256,
		25.980803, 31.299244, 33.053467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899115, 31.903429, 33.816170>,  <26.311932, 31.791239, 33.425346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899115, 31.903429, 33.816170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253227, 31.881433, 33.631451>,  <27.465694, 31.868237, 33.520618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.253227, 31.881433, 33.631451>,  <26.899115, 31.903429, 33.816170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253227, 31.881433, 33.631451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447339, 0.372163, 0.813255,
		0.127141, -0.926537, 0.354068,
		0.885281, -0.054991, -0.461793,
		27.518812, 31.864937, 33.492912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474928, 31.587727, 34.223854>,  <26.899115, 31.903429, 33.816170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474928, 31.587727, 34.223854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694603, 31.791212, 33.958641>,  <27.826408, 31.913303, 33.799515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.694603, 31.791212, 33.958641>,  <27.474928, 31.587727, 34.223854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.694603, 31.791212, 33.958641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625130, 0.276469, 0.729917,
		0.554624, -0.815339, -0.166178,
		0.549186, 0.508712, -0.663028,
		27.859360, 31.943825, 33.759731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.167593, 31.438639, 34.285030>,  <27.474928, 31.587727, 34.223854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.167593, 31.438639, 34.285030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117044, 31.808201, 34.140572>,  <28.086716, 32.029938, 34.053898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117044, 31.808201, 34.140572>,  <28.167593, 31.438639, 34.285030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117044, 31.808201, 34.140572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560915, 0.366826, 0.742168,
		0.818172, -0.108783, -0.564589,
		-0.126371, 0.923907, -0.361145,
		28.079134, 32.085373, 34.032227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754282, 31.782930, 34.164650>,  <28.167593, 31.438639, 34.285030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754282, 31.782930, 34.164650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478979, 32.042568, 34.294250>,  <28.313797, 32.198349, 34.372013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.478979, 32.042568, 34.294250>,  <28.754282, 31.782930, 34.164650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478979, 32.042568, 34.294250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555482, 0.184248, 0.810859,
		0.466625, 0.738060, -0.487369,
		-0.688259, 0.649092, 0.324004,
		28.272501, 32.237297, 34.391453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807003, 32.641014, 34.126190>,  <28.754282, 31.782930, 34.164650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807003, 32.641014, 34.126190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633532, 32.498558, 34.457268>,  <28.529449, 32.413082, 34.655914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633532, 32.498558, 34.457268>,  <28.807003, 32.641014, 34.126190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633532, 32.498558, 34.457268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687030, 0.463655, 0.559476,
		-0.583021, 0.811286, 0.043605,
		-0.433678, -0.356144, 0.827699,
		28.503428, 32.391716, 34.705578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496855, 33.204178, 34.564163>,  <28.807003, 32.641014, 34.126190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.496855, 33.204178, 34.564163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672310, 32.875023, 34.708641>,  <28.777582, 32.677532, 34.795326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672310, 32.875023, 34.708641>,  <28.496855, 33.204178, 34.564163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672310, 32.875023, 34.708641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745046, 0.557729, 0.365847,
		-0.502497, 0.108630, 0.857727,
		0.438637, -0.822884, 0.361192,
		28.803902, 32.628159, 34.816998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621517, 33.104118, 35.335632>,  <28.496855, 33.204178, 34.564163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621517, 33.104118, 35.335632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913368, 32.973843, 35.095108>,  <29.088478, 32.895679, 34.950794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913368, 32.973843, 35.095108>,  <28.621517, 33.104118, 35.335632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913368, 32.973843, 35.095108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654675, 0.586746, 0.476581,
		0.197601, -0.741389, 0.641324,
		0.729626, -0.325686, -0.601311,
		29.132256, 32.876137, 34.914715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151714, 33.461807, 35.608067>,  <28.621517, 33.104118, 35.335632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151714, 33.461807, 35.608067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346790, 33.222313, 35.353928>,  <29.463837, 33.078617, 35.201443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.346790, 33.222313, 35.353928>,  <29.151714, 33.461807, 35.608067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.346790, 33.222313, 35.353928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856148, 0.470380, 0.213900,
		0.170785, -0.648269, 0.742010,
		0.487692, -0.598740, -0.635348,
		29.493097, 33.042690, 35.163322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564190, 33.023647, 35.975571>,  <29.151714, 33.461807, 35.608067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564190, 33.023647, 35.975571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694715, 33.087227, 35.602852>,  <29.773031, 33.125374, 35.379219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694715, 33.087227, 35.602852>,  <29.564190, 33.023647, 35.975571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694715, 33.087227, 35.602852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882454, 0.302102, 0.360569,
		0.338813, -0.939930, -0.041688,
		0.326316, 0.158953, -0.931801,
		29.792610, 33.134914, 35.323311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222931, 32.612793, 35.896053>,  <29.564190, 33.023647, 35.975571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222931, 32.612793, 35.896053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225542, 32.884766, 35.602753>,  <30.227108, 33.047947, 35.426773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225542, 32.884766, 35.602753>,  <30.222931, 32.612793, 35.896053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225542, 32.884766, 35.602753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909483, 0.300781, 0.287003,
		0.415689, -0.668752, -0.616420,
		0.006527, 0.679928, -0.733250,
		30.227501, 33.088745, 35.382778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829781, 32.534580, 35.479427>,  <30.222931, 32.612793, 35.896053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829781, 32.534580, 35.479427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721851, 32.916531, 35.429764>,  <30.657093, 33.145699, 35.399963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721851, 32.916531, 35.429764>,  <30.829781, 32.534580, 35.479427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721851, 32.916531, 35.429764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921952, 0.293397, 0.252829,
		0.277848, -0.046251, -0.959511,
		-0.269824, 0.954871, -0.124161,
		30.640903, 33.202991, 35.392517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302813, 32.860291, 35.087208>,  <30.829781, 32.534580, 35.479427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302813, 32.860291, 35.087208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125914, 33.133091, 35.320202>,  <31.019773, 33.296772, 35.459999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.125914, 33.133091, 35.320202>,  <31.302813, 32.860291, 35.087208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125914, 33.133091, 35.320202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888558, 0.244826, 0.387976,
		0.121995, 0.689151, -0.714274,
		-0.442247, 0.682005, 0.582483,
		30.993240, 33.337692, 35.494946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673056, 33.555664, 35.017887>,  <31.302813, 32.860291, 35.087208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673056, 33.555664, 35.017887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509373, 33.488693, 35.376667>,  <31.411163, 33.448509, 35.591934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509373, 33.488693, 35.376667>,  <31.673056, 33.555664, 35.017887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509373, 33.488693, 35.376667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871912, 0.217970, 0.438472,
		-0.268920, 0.961487, 0.056787,
		-0.409207, -0.167427, 0.896949,
		31.386610, 33.438465, 35.645752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561131, 34.135807, 35.462635>,  <31.673056, 33.555664, 35.017887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561131, 34.135807, 35.462635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631413, 33.799637, 35.667694>,  <31.673582, 33.597935, 35.790730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.631413, 33.799637, 35.667694>,  <31.561131, 34.135807, 35.462635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631413, 33.799637, 35.667694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726072, 0.462293, 0.509023,
		-0.664792, 0.282783, 0.691437,
		0.175704, -0.840428, 0.512650,
		31.684124, 33.547508, 35.821487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192883, 34.662167, 35.886459>,  <31.561131, 34.135807, 35.462635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192883, 34.662167, 35.886459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175240, 34.276287, 35.782600>,  <31.164654, 34.044762, 35.720287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.175240, 34.276287, 35.782600>,  <31.192883, 34.662167, 35.886459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.175240, 34.276287, 35.782600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885392, 0.158131, -0.437121,
		0.462747, 0.210605, -0.861110,
		-0.044108, -0.964697, -0.259643,
		31.162006, 33.986877, 35.704708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990294, 34.506733, 35.130486>,  <31.192883, 34.662167, 35.886459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990294, 34.506733, 35.130486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923275, 34.158703, 35.315918>,  <30.883064, 33.949886, 35.427177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.923275, 34.158703, 35.315918>,  <30.990294, 34.506733, 35.130486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.923275, 34.158703, 35.315918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902003, -0.054491, -0.428276,
		0.397892, -0.489906, -0.775677,
		-0.167547, -0.870071, 0.463579,
		30.873011, 33.897682, 35.454990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269711, 34.314873, 34.937569>,  <30.990294, 34.506733, 35.130486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269711, 34.314873, 34.937569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404566, 33.962120, 35.069401>,  <30.485479, 33.750469, 35.148499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404566, 33.962120, 35.069401>,  <30.269711, 34.314873, 34.937569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404566, 33.962120, 35.069401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859200, -0.431320, -0.275206,
		0.384853, -0.190393, -0.903127,
		0.337140, -0.881881, 0.329580,
		30.505707, 33.697556, 35.168274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309210, 33.887249, 34.349857>,  <30.269711, 34.314873, 34.937569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309210, 33.887249, 34.349857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259876, 33.662136, 34.676800>,  <30.230276, 33.527069, 34.872963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259876, 33.662136, 34.676800>,  <30.309210, 33.887249, 34.349857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259876, 33.662136, 34.676800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859167, -0.351617, -0.371749,
		0.496609, -0.748092, -0.440157,
		-0.123336, -0.562782, 0.817352,
		30.222876, 33.493301, 34.922005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041866, 33.228107, 34.049728>,  <30.309210, 33.887249, 34.349857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041866, 33.228107, 34.049728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973749, 33.245632, 34.443497>,  <29.932878, 33.256145, 34.679756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973749, 33.245632, 34.443497>,  <30.041866, 33.228107, 34.049728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973749, 33.245632, 34.443497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841200, -0.526763, -0.122074,
		0.513208, -0.848882, 0.126559,
		-0.170293, 0.043812, 0.984419,
		29.922661, 33.258778, 34.738823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777113, 33.281612, 34.093178>,  <30.041866, 33.228107, 34.049728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777113, 33.281612, 34.093178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978920, 32.944939, 34.170158>,  <31.100004, 32.742935, 34.216347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978920, 32.944939, 34.170158>,  <30.777113, 33.281612, 34.093178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978920, 32.944939, 34.170158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174294, -0.119025, -0.977474,
		0.845626, 0.526696, 0.086650,
		0.504518, -0.841680, 0.192450,
		31.130276, 32.692436, 34.227894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.480537, 33.177280, 33.726223>,  <30.777113, 33.281612, 34.093178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.480537, 33.177280, 33.726223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327002, 32.814022, 33.793079>,  <31.234880, 32.596066, 33.833191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327002, 32.814022, 33.793079>,  <31.480537, 33.177280, 33.726223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327002, 32.814022, 33.793079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183135, -0.102538, -0.977726,
		0.905058, -0.405897, -0.126956,
		-0.383838, -0.908148, 0.167137,
		31.211849, 32.541576, 33.843220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852690, 32.789909, 33.200085>,  <31.480537, 33.177280, 33.726223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852690, 32.789909, 33.200085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474817, 32.665943, 33.157135>,  <31.248095, 32.591564, 33.131363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474817, 32.665943, 33.157135>,  <31.852690, 32.789909, 33.200085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474817, 32.665943, 33.157135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200533, -0.286687, -0.936802,
		0.259547, -0.906511, 0.332976,
		-0.944680, -0.309917, -0.107376,
		31.191414, 32.572968, 33.124924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186707, 32.124737, 32.899494>,  <31.852690, 32.789909, 33.200085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186707, 32.124737, 32.899494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478081, 31.867357, 32.805389>,  <32.652905, 31.712929, 32.748928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478081, 31.867357, 32.805389>,  <32.186707, 32.124737, 32.899494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478081, 31.867357, 32.805389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286396, -0.597937, 0.748631,
		-0.622381, -0.477952, -0.619842,
		0.728436, -0.643454, -0.235261,
		32.696613, 31.674322, 32.734814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891563, 31.619829, 32.809441>,  <32.186707, 32.124737, 32.899494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891563, 31.619829, 32.809441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259449, 31.525206, 32.934765>,  <32.480183, 31.468431, 33.009960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259449, 31.525206, 32.934765>,  <31.891563, 31.619829, 32.809441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259449, 31.525206, 32.934765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390749, -0.628656, 0.672389,
		0.037905, -0.740832, -0.670620,
		0.919716, -0.236557, 0.313309,
		32.535362, 31.454239, 33.028759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940826, 30.905561, 32.939888>,  <31.891563, 31.619829, 32.809441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940826, 30.905561, 32.939888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209805, 31.095444, 33.167034>,  <32.371193, 31.209373, 33.303322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209805, 31.095444, 33.167034>,  <31.940826, 30.905561, 32.939888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209805, 31.095444, 33.167034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307168, -0.519059, 0.797637,
		0.673399, -0.710798, -0.203225,
		0.672445, 0.474704, 0.567868,
		32.411537, 31.237854, 33.337395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449520, 30.455910, 33.156330>,  <31.940826, 30.905561, 32.939888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449520, 30.455910, 33.156330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362133, 30.765928, 33.393505>,  <32.309700, 30.951939, 33.535812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362133, 30.765928, 33.393505>,  <32.449520, 30.455910, 33.156330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362133, 30.765928, 33.393505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526364, -0.605240, 0.597182,
		0.821713, -0.181635, 0.540182,
		-0.218470, 0.775044, 0.592939,
		32.296593, 30.998442, 33.571388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023815, 30.008764, 32.897915>,  <32.449520, 30.455910, 33.156330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023815, 30.008764, 32.897915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994347, 30.255272, 33.211548>,  <32.976665, 30.403175, 33.399727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994347, 30.255272, 33.211548>,  <33.023815, 30.008764, 32.897915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994347, 30.255272, 33.211548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294150, -0.764671, 0.573370,
		0.952915, -0.188395, 0.237613,
		-0.073675, 0.616267, 0.784083,
		32.972244, 30.440151, 33.446774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324131, 29.650717, 33.421227>,  <33.023815, 30.008764, 32.897915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324131, 29.650717, 33.421227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097271, 29.932238, 33.592342>,  <32.961155, 30.101151, 33.695011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097271, 29.932238, 33.592342>,  <33.324131, 29.650717, 33.421227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097271, 29.932238, 33.592342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330336, -0.670180, 0.664633,
		0.754464, 0.235635, 0.612585,
		-0.567153, 0.703800, 0.427788,
		32.927124, 30.143377, 33.720680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596786, 30.231853, 33.633301>,  <33.324131, 29.650717, 33.421227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596786, 30.231853, 33.633301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259853, 30.322426, 33.828938>,  <33.057693, 30.376770, 33.946320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259853, 30.322426, 33.828938>,  <33.596786, 30.231853, 33.633301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259853, 30.322426, 33.828938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318309, -0.523293, 0.790470,
		0.434924, 0.821519, 0.368711,
		-0.842330, 0.226430, 0.489090,
		33.007153, 30.390354, 33.975666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.760391, 30.298656, 34.274620>,  <33.596786, 30.231853, 33.633301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.760391, 30.298656, 34.274620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362598, 30.300438, 34.316532>,  <33.123920, 30.301506, 34.341679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362598, 30.300438, 34.316532>,  <33.760391, 30.298656, 34.274620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362598, 30.300438, 34.316532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090587, -0.466963, 0.879625,
		0.052844, 0.884265, 0.463985,
		-0.994486, 0.004452, 0.104779,
		33.064251, 30.301773, 34.347965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645657, 30.430965, 35.053638>,  <33.760391, 30.298656, 34.274620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645657, 30.430965, 35.053638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323868, 30.255432, 34.893517>,  <33.130795, 30.150112, 34.797443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.323868, 30.255432, 34.893517>,  <33.645657, 30.430965, 35.053638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.323868, 30.255432, 34.893517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086357, -0.580362, 0.809767,
		-0.587676, 0.686006, 0.428990,
		-0.804474, -0.438835, -0.400307,
		33.082527, 30.123781, 34.773426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104359, 30.495518, 35.530499>,  <33.645657, 30.430965, 35.053638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104359, 30.495518, 35.530499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019157, 30.183575, 35.295059>,  <32.968037, 29.996408, 35.153797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019157, 30.183575, 35.295059>,  <33.104359, 30.495518, 35.530499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019157, 30.183575, 35.295059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165404, -0.564945, 0.808380,
		-0.962948, 0.269548, -0.008655,
		-0.213008, -0.779860, -0.588597,
		32.955254, 29.949617, 35.118481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748539, 30.001457, 35.882320>,  <33.104359, 30.495518, 35.530499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748539, 30.001457, 35.882320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784565, 29.757515, 35.567368>,  <32.806179, 29.611151, 35.378395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784565, 29.757515, 35.567368>,  <32.748539, 30.001457, 35.882320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784565, 29.757515, 35.567368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206594, -0.784836, 0.584252,
		-0.974273, 0.110047, -0.196678,
		0.090065, -0.609854, -0.787380,
		32.811584, 29.574558, 35.331154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135426, 29.635929, 35.661491>,  <32.748539, 30.001457, 35.882320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135426, 29.635929, 35.661491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463387, 29.416790, 35.595020>,  <32.660164, 29.285307, 35.555138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463387, 29.416790, 35.595020>,  <32.135426, 29.635929, 35.661491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463387, 29.416790, 35.595020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302284, -0.660789, 0.687010,
		-0.486187, -0.513051, -0.707391,
		0.819906, -0.547848, -0.166180,
		32.709358, 29.252436, 35.545166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808651, 28.952267, 35.538876>,  <32.135426, 29.635929, 35.661491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808651, 28.952267, 35.538876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185734, 28.940842, 35.671837>,  <32.411983, 28.933987, 35.751614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.185734, 28.940842, 35.671837>,  <31.808651, 28.952267, 35.538876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185734, 28.940842, 35.671837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199738, -0.846358, 0.493745,
		0.267227, -0.531849, -0.803571,
		0.942706, -0.028562, 0.332400,
		32.468544, 28.932274, 35.771557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930035, 28.329254, 34.982555>,  <31.808651, 28.952267, 35.538876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930035, 28.329254, 34.982555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597866, 28.249495, 35.190647>,  <31.398565, 28.201639, 35.315502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597866, 28.249495, 35.190647>,  <31.930035, 28.329254, 34.982555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597866, 28.249495, 35.190647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256415, 0.692201, 0.674618,
		-0.494624, 0.693612, -0.523689,
		-0.830421, -0.199400, 0.520232,
		31.348740, 28.189674, 35.346718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318680, 28.732718, 34.874706>,  <31.930035, 28.329254, 34.982555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318680, 28.732718, 34.874706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320227, 28.623741, 35.259571>,  <31.321156, 28.558355, 35.490490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320227, 28.623741, 35.259571>,  <31.318680, 28.732718, 34.874706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320227, 28.623741, 35.259571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383869, 0.888861, 0.250142,
		-0.923379, 0.368378, 0.108020,
		0.003868, -0.272441, 0.962165,
		31.321386, 28.542009, 35.548222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264578, 29.287621, 34.446037>,  <31.318680, 28.732718, 34.874706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264578, 29.287621, 34.446037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256723, 29.677193, 34.355637>,  <31.252010, 29.910936, 34.301395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.256723, 29.677193, 34.355637>,  <31.264578, 29.287621, 34.446037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256723, 29.677193, 34.355637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164450, -0.226113, -0.960119,
		-0.986190, 0.018312, 0.164603,
		-0.019637, 0.973929, -0.226002,
		31.250832, 29.969372, 34.287834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932669, 29.573372, 34.359623>,  <31.264578, 29.287621, 34.446037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932669, 29.573372, 34.359623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263325, 29.757851, 34.488594>,  <32.461720, 29.868538, 34.565979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263325, 29.757851, 34.488594>,  <31.932669, 29.573372, 34.359623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263325, 29.757851, 34.488594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081521, 0.468783, -0.879543,
		-0.556794, 0.753351, 0.349918,
		0.826640, 0.461199, 0.322430,
		32.511318, 29.896210, 34.585323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830450, 30.331131, 34.424591>,  <31.932669, 29.573372, 34.359623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830450, 30.331131, 34.424591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224190, 30.279127, 34.376999>,  <32.460434, 30.247925, 34.348446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224190, 30.279127, 34.376999>,  <31.830450, 30.331131, 34.424591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224190, 30.279127, 34.376999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006054, 0.649766, -0.760111,
		0.176129, 0.748934, 0.638809,
		0.984349, -0.130010, -0.118976,
		32.519493, 30.240124, 34.341305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109848, 31.009895, 34.376331>,  <31.830450, 30.331131, 34.424591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109848, 31.009895, 34.376331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327213, 30.746616, 34.167915>,  <32.457634, 30.588650, 34.042866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.327213, 30.746616, 34.167915>,  <32.109848, 31.009895, 34.376331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.327213, 30.746616, 34.167915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102731, 0.668152, -0.736898,
		0.833154, 0.346914, 0.430701,
		0.543415, -0.658196, -0.521035,
		32.490238, 30.549158, 34.011604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567192, 31.390707, 34.112850>,  <32.109848, 31.009895, 34.376331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567192, 31.390707, 34.112850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564171, 31.053055, 33.898418>,  <32.562359, 30.850464, 33.769760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564171, 31.053055, 33.898418>,  <32.567192, 31.390707, 34.112850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564171, 31.053055, 33.898418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352039, 0.499533, -0.791540,
		0.935955, -0.194703, 0.293393,
		-0.007556, -0.844132, -0.536083,
		32.561905, 30.799816, 33.737595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289017, 31.183887, 33.878094>,  <32.567192, 31.390707, 34.112850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289017, 31.183887, 33.878094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036938, 31.064617, 33.591335>,  <32.885689, 30.993055, 33.419281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036938, 31.064617, 33.591335>,  <33.289017, 31.183887, 33.878094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036938, 31.064617, 33.591335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572380, 0.445457, -0.688440,
		0.524622, -0.844191, -0.110058,
		-0.630201, -0.298176, -0.716894,
		32.847878, 30.975164, 33.376266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655422, 30.835621, 33.216217>,  <33.289017, 31.183887, 33.878094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655422, 30.835621, 33.216217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292210, 30.943434, 33.087944>,  <33.074284, 31.008121, 33.010979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292210, 30.943434, 33.087944>,  <33.655422, 30.835621, 33.216217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292210, 30.943434, 33.087944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411603, 0.431694, -0.802635,
		-0.077900, -0.860809, -0.502930,
		-0.908028, 0.269533, -0.320683,
		33.019802, 31.024294, 32.991737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602375, 30.815788, 32.428371>,  <33.655422, 30.835621, 33.216217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602375, 30.815788, 32.428371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301651, 31.065382, 32.513626>,  <33.121216, 31.215139, 32.564777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301651, 31.065382, 32.513626>,  <33.602375, 30.815788, 32.428371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301651, 31.065382, 32.513626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132497, 0.459597, -0.878189,
		-0.645933, -0.631990, -0.428205,
		-0.751808, 0.623987, 0.213132,
		33.076107, 31.252579, 32.577564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093315, 30.732666, 31.929585>,  <33.602375, 30.815788, 32.428371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093315, 30.732666, 31.929585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098717, 31.100245, 32.087246>,  <33.101959, 31.320791, 32.181843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098717, 31.100245, 32.087246>,  <33.093315, 30.732666, 31.929585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098717, 31.100245, 32.087246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033958, 0.393541, -0.918680,
		-0.999332, 0.025792, -0.025891,
		0.013505, 0.918945, 0.394154,
		33.102768, 31.375929, 32.205494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609253, 31.094467, 31.482805>,  <33.093315, 30.732666, 31.929585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609253, 31.094467, 31.482805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850178, 31.350363, 31.673786>,  <32.994732, 31.503901, 31.788374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.850178, 31.350363, 31.673786>,  <32.609253, 31.094467, 31.482805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.850178, 31.350363, 31.673786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177920, 0.475480, -0.861547,
		-0.778182, 0.603866, 0.172564,
		0.602310, 0.639737, 0.477450,
		33.030872, 31.542284, 31.817020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563759, 31.661013, 31.120335>,  <32.609253, 31.094467, 31.482805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563759, 31.661013, 31.120335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895103, 31.736391, 31.331350>,  <33.093910, 31.781618, 31.457960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.895103, 31.736391, 31.331350>,  <32.563759, 31.661013, 31.120335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895103, 31.736391, 31.331350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374231, 0.514596, -0.771454,
		-0.416850, 0.836468, 0.355750,
		0.828364, 0.188448, 0.527541,
		33.143612, 31.792925, 31.489613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707932, 32.351418, 31.061174>,  <32.563759, 31.661013, 31.120335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707932, 32.351418, 31.061174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073658, 32.222031, 31.158661>,  <33.293095, 32.144398, 31.217154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073658, 32.222031, 31.158661>,  <32.707932, 32.351418, 31.061174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073658, 32.222031, 31.158661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390730, 0.546166, -0.740967,
		0.106567, 0.772705, 0.625756,
		0.914316, -0.323464, 0.243716,
		33.347954, 32.124992, 31.231775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105461, 32.920555, 30.958971>,  <32.707932, 32.351418, 31.061174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105461, 32.920555, 30.958971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376595, 32.626572, 30.966692>,  <33.539276, 32.450180, 30.971325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376595, 32.626572, 30.966692>,  <33.105461, 32.920555, 30.958971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376595, 32.626572, 30.966692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573714, 0.512335, -0.639034,
		0.459777, 0.444233, 0.768936,
		0.677833, -0.734962, 0.019302,
		33.579945, 32.406082, 30.972483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799747, 33.294361, 31.005363>,  <33.105461, 32.920555, 30.958971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799747, 33.294361, 31.005363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848354, 32.926659, 30.855595>,  <33.877518, 32.706036, 30.765734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848354, 32.926659, 30.855595>,  <33.799747, 33.294361, 31.005363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848354, 32.926659, 30.855595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589172, 0.370381, -0.718118,
		0.798817, -0.133333, 0.586612,
		0.121521, -0.919261, -0.374423,
		33.884811, 32.650879, 30.743267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494972, 33.247780, 30.798479>,  <33.799747, 33.294361, 31.005363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494972, 33.247780, 30.798479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350563, 32.921383, 30.617893>,  <34.263920, 32.725544, 30.509541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350563, 32.921383, 30.617893>,  <34.494972, 33.247780, 30.798479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350563, 32.921383, 30.617893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474044, 0.256327, -0.842365,
		0.803086, -0.518126, 0.294276,
		-0.361020, -0.815992, -0.451467,
		34.242256, 32.676586, 30.482452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033894, 32.850834, 30.471958>,  <34.494972, 33.247780, 30.798479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033894, 32.850834, 30.471958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696140, 32.775105, 30.271492>,  <34.493488, 32.729668, 30.151213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696140, 32.775105, 30.271492>,  <35.033894, 32.850834, 30.471958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696140, 32.775105, 30.271492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410646, 0.372063, -0.832430,
		0.344060, -0.908695, -0.236422,
		-0.844389, -0.189320, -0.501164,
		34.442825, 32.718307, 30.121141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227695, 32.654846, 29.743164>,  <35.033894, 32.850834, 30.471958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227695, 32.654846, 29.743164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833714, 32.722546, 29.729242>,  <34.597324, 32.763165, 29.720888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833714, 32.722546, 29.729242>,  <35.227695, 32.654846, 29.743164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833714, 32.722546, 29.729242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118581, 0.515565, -0.848605,
		-0.125684, -0.839968, -0.527880,
		-0.984958, 0.169253, -0.034806,
		34.538227, 32.773323, 29.718801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097481, 32.599365, 29.041971>,  <35.227695, 32.654846, 29.743164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097481, 32.599365, 29.041971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761330, 32.773067, 29.171700>,  <34.559639, 32.877289, 29.249537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761330, 32.773067, 29.171700>,  <35.097481, 32.599365, 29.041971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761330, 32.773067, 29.171700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072080, 0.503519, -0.860972,
		-0.537184, -0.746920, -0.391846,
		-0.840379, 0.434257, 0.324320,
		34.509216, 32.903343, 29.268995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586189, 32.457684, 28.529438>,  <35.097481, 32.599365, 29.041971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586189, 32.457684, 28.529438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481171, 32.790916, 28.724186>,  <34.418159, 32.990856, 28.841034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481171, 32.790916, 28.724186>,  <34.586189, 32.457684, 28.529438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481171, 32.790916, 28.724186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326201, 0.398233, -0.857323,
		-0.908108, -0.383908, 0.167195,
		-0.262551, 0.833081, 0.486870,
		34.402405, 33.040840, 28.870247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977478, 32.557858, 28.251930>,  <34.586189, 32.457684, 28.529438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977478, 32.557858, 28.251930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128761, 32.905060, 28.380636>,  <34.219532, 33.113380, 28.457859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128761, 32.905060, 28.380636>,  <33.977478, 32.557858, 28.251930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128761, 32.905060, 28.380636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123349, 0.391736, -0.911772,
		-0.917466, 0.305151, 0.255225,
		0.378209, 0.868001, 0.321764,
		34.242226, 33.165459, 28.477165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590862, 32.999725, 27.873322>,  <33.977478, 32.557858, 28.251930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590862, 32.999725, 27.873322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858711, 33.256149, 28.023329>,  <34.019421, 33.410004, 28.113333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858711, 33.256149, 28.023329>,  <33.590862, 32.999725, 27.873322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858711, 33.256149, 28.023329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090746, 0.571779, -0.815373,
		-0.737135, 0.511962, 0.441051,
		0.669624, 0.641064, 0.375020,
		34.059597, 33.448467, 28.135836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340088, 33.687992, 27.761095>,  <33.590862, 32.999725, 27.873322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340088, 33.687992, 27.761095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739212, 33.714260, 27.763998>,  <33.978687, 33.730019, 27.765739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739212, 33.714260, 27.763998>,  <33.340088, 33.687992, 27.761095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739212, 33.714260, 27.763998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047687, 0.791894, -0.608793,
		-0.045727, 0.607117, 0.793296,
		0.997815, 0.065668, 0.007259,
		34.038555, 33.733959, 27.766176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544769, 34.442604, 27.739368>,  <33.340088, 33.687992, 27.761095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544769, 34.442604, 27.739368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868504, 34.252808, 27.600903>,  <34.062744, 34.138931, 27.517822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868504, 34.252808, 27.600903>,  <33.544769, 34.442604, 27.739368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868504, 34.252808, 27.600903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067380, 0.660493, -0.747802,
		0.583462, 0.581902, 0.566535,
		0.809340, -0.474487, -0.346165,
		34.111305, 34.110462, 27.497053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906998, 34.965485, 27.468668>,  <33.544769, 34.442604, 27.739368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906998, 34.965485, 27.468668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080185, 34.641724, 27.309971>,  <34.184097, 34.447468, 27.214752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080185, 34.641724, 27.309971>,  <33.906998, 34.965485, 27.468668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080185, 34.641724, 27.309971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196435, 0.514280, -0.834823,
		0.879744, 0.283521, 0.381663,
		0.432972, -0.809402, -0.396742,
		34.210075, 34.398903, 27.190948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518600, 35.256630, 27.073164>,  <33.906998, 34.965485, 27.468668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518600, 35.256630, 27.073164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398003, 34.900337, 26.937105>,  <34.325645, 34.686562, 26.855471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398003, 34.900337, 26.937105>,  <34.518600, 35.256630, 27.073164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398003, 34.900337, 26.937105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079483, 0.332025, -0.939916,
		0.950150, -0.310413, -0.029305,
		-0.301492, -0.890732, -0.340146,
		34.307556, 34.633118, 26.835062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980667, 35.216461, 26.454782>,  <34.518600, 35.256630, 27.073164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980667, 35.216461, 26.454782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685963, 34.949657, 26.410440>,  <34.509140, 34.789577, 26.383835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685963, 34.949657, 26.410440>,  <34.980667, 35.216461, 26.454782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685963, 34.949657, 26.410440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115759, 0.285957, -0.951225,
		0.666173, -0.687991, -0.287893,
		-0.736759, -0.667006, -0.110856,
		34.464935, 34.749557, 26.377184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122623, 34.953915, 25.798908>,  <34.980667, 35.216461, 26.454782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122623, 34.953915, 25.798908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742279, 34.872250, 25.892021>,  <34.514072, 34.823250, 25.947889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742279, 34.872250, 25.892021>,  <35.122623, 34.953915, 25.798908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742279, 34.872250, 25.892021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282865, 0.267014, -0.921244,
		0.125932, -0.941817, -0.311644,
		-0.950857, -0.204167, 0.232782,
		34.457024, 34.811001, 25.961855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830822, 34.582169, 25.169893>,  <35.122623, 34.953915, 25.798908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830822, 34.582169, 25.169893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528149, 34.731140, 25.384825>,  <34.346546, 34.820522, 25.513784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.528149, 34.731140, 25.384825>,  <34.830822, 34.582169, 25.169893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528149, 34.731140, 25.384825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260035, 0.582629, -0.770017,
		-0.599844, -0.722383, -0.344020,
		-0.756683, 0.372433, 0.537331,
		34.301144, 34.842869, 25.546024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368607, 34.610649, 24.719851>,  <34.830822, 34.582169, 25.169893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368607, 34.610649, 24.719851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260105, 34.866467, 25.007574>,  <34.195004, 35.019958, 25.180208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260105, 34.866467, 25.007574>,  <34.368607, 34.610649, 24.719851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260105, 34.866467, 25.007574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330471, 0.640014, -0.693665,
		-0.903998, -0.425867, 0.037747,
		-0.271250, 0.639546, 0.719308,
		34.178730, 35.058331, 25.223366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770279, 34.862656, 24.456621>,  <34.368607, 34.610649, 24.719851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770279, 34.862656, 24.456621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895523, 35.126328, 24.730101>,  <33.970669, 35.284531, 24.894188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895523, 35.126328, 24.730101>,  <33.770279, 34.862656, 24.456621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895523, 35.126328, 24.730101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171775, 0.747333, -0.641863,
		-0.934052, 0.083533, 0.347230,
		0.313113, 0.659179, 0.683699,
		33.989456, 35.324081, 24.935209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267406, 35.312347, 24.534401>,  <33.770279, 34.862656, 24.456621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267406, 35.312347, 24.534401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593704, 35.504078, 24.663898>,  <33.789482, 35.619118, 24.741596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593704, 35.504078, 24.663898>,  <33.267406, 35.312347, 24.534401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593704, 35.504078, 24.663898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201974, 0.760520, -0.617103,
		-0.542009, 0.438008, 0.717200,
		0.815741, 0.479330, 0.323743,
		33.838425, 35.647877, 24.761021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.051182, 35.972820, 24.548067>,  <33.267406, 35.312347, 24.534401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.051182, 35.972820, 24.548067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449478, 36.008129, 24.558636>,  <33.688457, 36.029316, 24.564978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.449478, 36.008129, 24.558636>,  <33.051182, 35.972820, 24.548067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449478, 36.008129, 24.558636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040057, 0.672920, -0.738630,
		-0.082983, 0.734429, 0.673594,
		0.995746, 0.088276, 0.026422,
		33.748203, 36.034611, 24.566563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159580, 36.776779, 24.423222>,  <33.051182, 35.972820, 24.548067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159580, 36.776779, 24.423222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487389, 36.560226, 24.348082>,  <33.684074, 36.430294, 24.302998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487389, 36.560226, 24.348082>,  <33.159580, 36.776779, 24.423222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487389, 36.560226, 24.348082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186289, 0.561695, -0.806099,
		0.541924, 0.625621, 0.561175,
		0.819521, -0.541385, -0.187849,
		33.733246, 36.397812, 24.291727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608551, 37.254059, 24.231451>,  <33.159580, 36.776779, 24.423222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608551, 37.254059, 24.231451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747738, 36.911236, 24.079468>,  <33.831249, 36.705544, 23.988277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747738, 36.911236, 24.079468>,  <33.608551, 37.254059, 24.231451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747738, 36.911236, 24.079468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278643, 0.481517, -0.830963,
		0.895139, 0.183279, 0.406367,
		0.347971, -0.857059, -0.379956,
		33.852131, 36.654118, 23.965481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215660, 37.449505, 23.958681>,  <33.608551, 37.254059, 24.231451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215660, 37.449505, 23.958681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128696, 37.106426, 23.772306>,  <34.076519, 36.900581, 23.660480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128696, 37.106426, 23.772306>,  <34.215660, 37.449505, 23.958681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128696, 37.106426, 23.772306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211483, 0.424625, -0.880323,
		0.952895, -0.289927, 0.089070,
		-0.217408, -0.857692, -0.465937,
		34.063473, 36.849117, 23.632524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715721, 37.313972, 23.482061>,  <34.215660, 37.449505, 23.958681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715721, 37.313972, 23.482061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400513, 37.106789, 23.348949>,  <34.211388, 36.982479, 23.269081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400513, 37.106789, 23.348949>,  <34.715721, 37.313972, 23.482061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400513, 37.106789, 23.348949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140331, 0.375190, -0.916264,
		0.599441, -0.768735, -0.222973,
		-0.788022, -0.517956, -0.332781,
		34.164104, 36.951401, 23.249115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943054, 36.964542, 22.887558>,  <34.715721, 37.313972, 23.482061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943054, 36.964542, 22.887558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543179, 36.955006, 22.884670>,  <34.303253, 36.949284, 22.882936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543179, 36.955006, 22.884670>,  <34.943054, 36.964542, 22.887558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543179, 36.955006, 22.884670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002276, 0.201192, -0.979549,
		0.024805, -0.979262, -0.201075,
		-0.999690, -0.023840, -0.007220,
		34.243271, 36.947853, 22.882504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792934, 36.420174, 22.444298>,  <34.943054, 36.964542, 22.887558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792934, 36.420174, 22.444298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468231, 36.652813, 22.465429>,  <34.273411, 36.792397, 22.478107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468231, 36.652813, 22.465429>,  <34.792934, 36.420174, 22.444298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468231, 36.652813, 22.465429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053440, 0.164057, -0.985002,
		-0.581542, -0.796761, -0.164255,
		-0.811759, 0.581598, 0.052827,
		34.224705, 36.827293, 22.481277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458038, 36.297733, 21.837240>,  <34.792934, 36.420174, 22.444298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458038, 36.297733, 21.837240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292847, 36.646969, 21.940908>,  <34.193733, 36.856510, 22.003109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292847, 36.646969, 21.940908>,  <34.458038, 36.297733, 21.837240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292847, 36.646969, 21.940908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066413, 0.254945, -0.964672,
		-0.908316, -0.415601, -0.047302,
		-0.412978, 0.873086, 0.259173,
		34.168953, 36.908894, 22.018660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870579, 36.497700, 21.348488>,  <34.458038, 36.297733, 21.837240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870579, 36.497700, 21.348488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013374, 36.827679, 21.523766>,  <34.099052, 37.025665, 21.628933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013374, 36.827679, 21.523766>,  <33.870579, 36.497700, 21.348488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013374, 36.827679, 21.523766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172678, 0.519301, -0.836964,
		-0.918010, 0.223119, 0.327835,
		0.356988, 0.824951, 0.438196,
		34.120472, 37.075165, 21.655224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460239, 36.983936, 21.043877>,  <33.870579, 36.497700, 21.348488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460239, 36.983936, 21.043877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758121, 37.191406, 21.211878>,  <33.936852, 37.315887, 21.312679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758121, 37.191406, 21.211878>,  <33.460239, 36.983936, 21.043877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758121, 37.191406, 21.211878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168538, 0.755067, -0.633616,
		-0.645768, 0.401068, 0.649714,
		0.744701, 0.518670, 0.420003,
		33.981533, 37.347008, 21.337879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288517, 37.675629, 20.953493>,  <33.460239, 36.983936, 21.043877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288517, 37.675629, 20.953493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681229, 37.690487, 21.028028>,  <33.916855, 37.699402, 21.072750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681229, 37.690487, 21.028028>,  <33.288517, 37.675629, 20.953493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681229, 37.690487, 21.028028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077519, 0.817060, -0.571317,
		-0.173472, 0.575354, 0.799296,
		0.981783, 0.037147, 0.186338,
		33.975765, 37.701630, 21.083929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491505, 38.419598, 21.069557>,  <33.288517, 37.675629, 20.953493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491505, 38.419598, 21.069557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820889, 38.219822, 20.961872>,  <34.018520, 38.099957, 20.897261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820889, 38.219822, 20.961872>,  <33.491505, 38.419598, 21.069557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820889, 38.219822, 20.961872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256977, 0.751337, -0.607828,
		0.505841, 0.431342, 0.747041,
		0.823461, -0.499436, -0.269212,
		34.067928, 38.069992, 20.881109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008987, 38.863083, 21.116585>,  <33.491505, 38.419598, 21.069557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008987, 38.863083, 21.116585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192097, 38.602184, 20.874916>,  <34.301960, 38.445644, 20.729916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192097, 38.602184, 20.874916>,  <34.008987, 38.863083, 21.116585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192097, 38.602184, 20.874916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371019, 0.757700, -0.536875,
		0.807955, 0.021607, 0.588848,
		0.457771, -0.652245, -0.604171,
		34.329430, 38.406509, 20.693665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629082, 39.156384, 21.028183>,  <34.008987, 38.863083, 21.116585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629082, 39.156384, 21.028183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590279, 38.900837, 20.722910>,  <34.566998, 38.747509, 20.539747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590279, 38.900837, 20.722910>,  <34.629082, 39.156384, 21.028183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590279, 38.900837, 20.722910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242215, 0.728591, -0.640694,
		0.965361, -0.247003, 0.084065,
		-0.097004, -0.638862, -0.763181,
		34.561176, 38.709179, 20.493956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201000, 39.286736, 20.688723>,  <34.629082, 39.156384, 21.028183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201000, 39.286736, 20.688723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937763, 39.125229, 20.434515>,  <34.779819, 39.028324, 20.281990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937763, 39.125229, 20.434515>,  <35.201000, 39.286736, 20.688723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937763, 39.125229, 20.434515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258878, 0.671258, -0.694546,
		0.707031, -0.621599, -0.337225,
		-0.658095, -0.403766, -0.635519,
		34.740334, 39.004101, 20.243858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607147, 39.244282, 20.007790>,  <35.201000, 39.286736, 20.688723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607147, 39.244282, 20.007790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223534, 39.186409, 19.910366>,  <34.993366, 39.151684, 19.851912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223534, 39.186409, 19.910366>,  <35.607147, 39.244282, 20.007790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223534, 39.186409, 19.910366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071714, 0.707748, -0.702815,
		0.274063, -0.691491, -0.668379,
		-0.959034, -0.144683, -0.243557,
		34.935822, 39.143005, 19.837299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613708, 39.038651, 19.323740>,  <35.607147, 39.244282, 20.007790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613708, 39.038651, 19.323740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236557, 39.156357, 19.386215>,  <35.010265, 39.226978, 19.423700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236557, 39.156357, 19.386215>,  <35.613708, 39.038651, 19.323740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236557, 39.156357, 19.386215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062380, 0.616482, -0.784894,
		-0.327253, -0.730314, -0.599622,
		-0.942876, 0.294263, 0.156188,
		34.953693, 39.244637, 19.433071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268204, 39.001270, 18.633331>,  <35.613708, 39.038651, 19.323740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268204, 39.001270, 18.633331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073242, 39.251278, 18.877230>,  <34.956264, 39.401283, 19.023569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073242, 39.251278, 18.877230>,  <35.268204, 39.001270, 18.633331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073242, 39.251278, 18.877230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110080, 0.648755, -0.752994,
		-0.866209, -0.434134, -0.247405,
		-0.487406, 0.625016, 0.609747,
		34.927021, 39.438782, 19.060154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720566, 39.279594, 18.256413>,  <35.268204, 39.001270, 18.633331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720566, 39.279594, 18.256413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781384, 39.546646, 18.547935>,  <34.817875, 39.706875, 18.722849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781384, 39.546646, 18.547935>,  <34.720566, 39.279594, 18.256413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781384, 39.546646, 18.547935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155402, 0.712061, -0.684704,
		-0.976080, 0.217363, 0.004514,
		0.152044, 0.667625, 0.728807,
		34.826996, 39.746933, 18.766577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258404, 39.829395, 18.220739>,  <34.720566, 39.279594, 18.256413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258404, 39.829395, 18.220739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601494, 39.952621, 18.385374>,  <34.807346, 40.026558, 18.484156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601494, 39.952621, 18.385374>,  <34.258404, 39.829395, 18.220739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601494, 39.952621, 18.385374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072737, 0.719809, -0.690351,
		-0.508939, 0.622068, 0.594989,
		0.857724, 0.308069, 0.411586,
		34.858810, 40.045044, 18.508850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291836, 40.562759, 18.167978>,  <34.258404, 39.829395, 18.220739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291836, 40.562759, 18.167978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660145, 40.409138, 18.140625>,  <34.881130, 40.316963, 18.124214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660145, 40.409138, 18.140625>,  <34.291836, 40.562759, 18.167978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660145, 40.409138, 18.140625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216212, 0.648349, -0.729997,
		0.324692, 0.657379, 0.680021,
		0.920776, -0.384053, -0.068381,
		34.936378, 40.293922, 18.120111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932358, 41.096886, 18.137217>,  <34.291836, 40.562759, 18.167978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932358, 41.096886, 18.137217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022163, 40.760395, 17.940468>,  <35.076046, 40.558502, 17.822418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022163, 40.760395, 17.940468>,  <34.932358, 41.096886, 18.137217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022163, 40.760395, 17.940468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483546, 0.534404, -0.693250,
		0.846036, -0.082199, 0.526751,
		0.224513, -0.841223, -0.491872,
		35.089516, 40.508030, 17.792906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832668, 41.212162, 17.341782>,  <34.932358, 41.096886, 18.137217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832668, 41.212162, 17.341782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464157, 41.079967, 17.423786>,  <34.243050, 41.000648, 17.472988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464157, 41.079967, 17.423786>,  <34.832668, 41.212162, 17.341782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464157, 41.079967, 17.423786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213651, 0.870549, 0.443281,
		-0.324972, 0.364583, -0.872624,
		-0.921274, -0.330491, 0.205010,
		34.187775, 40.980820, 17.485289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267834, 41.622223, 17.054720>,  <34.832668, 41.212162, 17.341782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267834, 41.622223, 17.054720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102787, 41.454659, 17.378265>,  <34.003757, 41.354118, 17.572392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102787, 41.454659, 17.378265>,  <34.267834, 41.622223, 17.054720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102787, 41.454659, 17.378265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208288, 0.907841, 0.363925,
		-0.886772, -0.018315, -0.461845,
		-0.412616, -0.418915, 0.808862,
		33.979004, 41.328983, 17.620924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662411, 42.029892, 17.167854>,  <34.267834, 41.622223, 17.054720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662411, 42.029892, 17.167854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782009, 41.848827, 17.503878>,  <33.853767, 41.740189, 17.705492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782009, 41.848827, 17.503878>,  <33.662411, 42.029892, 17.167854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782009, 41.848827, 17.503878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193111, 0.890816, 0.411284,
		-0.934512, 0.039254, 0.353761,
		0.298992, -0.452665, 0.840059,
		33.871708, 41.713028, 17.755896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277817, 42.311852, 17.773443>,  <33.662411, 42.029892, 17.167854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277817, 42.311852, 17.773443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639477, 42.173950, 17.874369>,  <33.856472, 42.091209, 17.934923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639477, 42.173950, 17.874369>,  <33.277817, 42.311852, 17.773443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639477, 42.173950, 17.874369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277446, 0.922931, 0.266874,
		-0.324875, -0.171290, 0.930116,
		0.904146, -0.344757, 0.252314,
		33.910721, 42.070522, 17.950062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405041, 42.567261, 18.471943>,  <33.277817, 42.311852, 17.773443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405041, 42.567261, 18.471943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744991, 42.464184, 18.288071>,  <33.948963, 42.402336, 18.177748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744991, 42.464184, 18.288071>,  <33.405041, 42.567261, 18.471943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744991, 42.464184, 18.288071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414328, 0.865765, 0.280684,
		0.325643, -0.429004, 0.842562,
		0.849876, -0.257694, -0.459679,
		33.999954, 42.386875, 18.150167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096622, 42.832886, 18.525003>,  <33.405041, 42.567261, 18.471943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096622, 42.832886, 18.525003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908791, 42.484604, 18.583469>,  <33.796093, 42.275635, 18.618549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908791, 42.484604, 18.583469>,  <34.096622, 42.832886, 18.525003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908791, 42.484604, 18.583469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255465, 0.024471, 0.966509,
		-0.845125, 0.491189, 0.210945,
		-0.469576, -0.870709, 0.146163,
		33.767918, 42.223392, 18.627317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169472, 42.823341, 19.261793>,  <34.096622, 42.832886, 18.525003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169472, 42.823341, 19.261793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993507, 42.472992, 19.182468>,  <33.887928, 42.262783, 19.134872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993507, 42.472992, 19.182468>,  <34.169472, 42.823341, 19.261793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993507, 42.472992, 19.182468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124797, -0.159063, 0.979349,
		-0.889330, 0.455572, -0.039334,
		-0.439907, -0.875873, -0.198313,
		33.861534, 42.210232, 19.122974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573242, 42.858089, 19.560774>,  <34.169472, 42.823341, 19.261793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573242, 42.858089, 19.560774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737919, 42.495300, 19.525177>,  <33.836723, 42.277626, 19.503819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737919, 42.495300, 19.525177>,  <33.573242, 42.858089, 19.560774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737919, 42.495300, 19.525177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022723, -0.107836, 0.993909,
		-0.911041, -0.407160, -0.065004,
		0.411690, -0.906968, -0.088991,
		33.861427, 42.223209, 19.498480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126488, 42.378105, 19.838575>,  <33.573242, 42.858089, 19.560774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126488, 42.378105, 19.838575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479618, 42.192703, 19.868999>,  <33.691494, 42.081463, 19.887255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479618, 42.192703, 19.868999>,  <33.126488, 42.378105, 19.838575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479618, 42.192703, 19.868999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161315, -0.147109, 0.975877,
		-0.441136, -0.873796, -0.204642,
		0.882823, -0.463507, 0.076061,
		33.744465, 42.053650, 19.891817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963531, 41.800335, 20.343262>,  <33.126488, 42.378105, 19.838575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963531, 41.800335, 20.343262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363228, 41.799778, 20.327686>,  <33.603046, 41.799446, 20.318342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363228, 41.799778, 20.327686>,  <32.963531, 41.800335, 20.343262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363228, 41.799778, 20.327686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036552, -0.312612, 0.949177,
		-0.013490, -0.949880, -0.312324,
		0.999241, -0.001388, -0.038937,
		33.662998, 41.799362, 20.316006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177799, 41.123447, 20.472876>,  <32.963531, 41.800335, 20.343262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177799, 41.123447, 20.472876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456364, 41.391060, 20.576729>,  <33.623501, 41.551628, 20.639040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456364, 41.391060, 20.576729>,  <33.177799, 41.123447, 20.472876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456364, 41.391060, 20.576729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061003, -0.415660, 0.907472,
		0.715048, -0.616133, -0.330282,
		0.696408, 0.669034, 0.259631,
		33.665287, 41.591770, 20.654617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599186, 40.712685, 20.943165>,  <33.177799, 41.123447, 20.472876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599186, 40.712685, 20.943165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676292, 41.101463, 20.997068>,  <33.722557, 41.334732, 21.029411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676292, 41.101463, 20.997068>,  <33.599186, 40.712685, 20.943165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676292, 41.101463, 20.997068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094107, -0.155013, 0.983420,
		0.976722, -0.176888, -0.121348,
		0.192766, 0.971947, 0.134758,
		33.734123, 41.393047, 21.037497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185207, 40.771217, 21.342287>,  <33.599186, 40.712685, 20.943165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185207, 40.771217, 21.342287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996628, 41.118038, 21.406727>,  <33.883480, 41.326130, 21.445391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996628, 41.118038, 21.406727>,  <34.185207, 40.771217, 21.342287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996628, 41.118038, 21.406727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068478, -0.146129, 0.986893,
		0.879229, 0.476305, 0.009519,
		-0.471453, 0.867052, 0.161098,
		33.855190, 41.378155, 21.455055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499416, 41.029682, 21.873217>,  <34.185207, 40.771217, 21.342287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499416, 41.029682, 21.873217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178349, 41.267582, 21.891085>,  <33.985706, 41.410320, 21.901806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.178349, 41.267582, 21.891085>,  <34.499416, 41.029682, 21.873217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178349, 41.267582, 21.891085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057319, -0.151472, 0.986798,
		0.593665, 0.789511, 0.155672,
		-0.802668, 0.594750, 0.044670,
		33.937550, 41.446007, 21.904486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488804, 41.414230, 22.539093>,  <34.499416, 41.029682, 21.873217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488804, 41.414230, 22.539093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114910, 41.421917, 22.397160>,  <33.890575, 41.426529, 22.312000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.114910, 41.421917, 22.397160>,  <34.488804, 41.414230, 22.539093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114910, 41.421917, 22.397160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346822, -0.266816, 0.899180,
		-0.077395, 0.963556, 0.256066,
		-0.934732, 0.019217, -0.354833,
		33.834492, 41.427681, 22.290710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253658, 41.890354, 23.001070>,  <34.488804, 41.414230, 22.539093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253658, 41.890354, 23.001070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960358, 41.670551, 22.840881>,  <33.784378, 41.538670, 22.744768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960358, 41.670551, 22.840881>,  <34.253658, 41.890354, 23.001070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960358, 41.670551, 22.840881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139319, -0.455056, 0.879497,
		-0.665528, 0.700688, 0.257115,
		-0.733255, -0.549509, -0.400472,
		33.740383, 41.505699, 22.720739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837528, 41.799278, 23.537212>,  <34.253658, 41.890354, 23.001070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837528, 41.799278, 23.537212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732693, 41.518925, 23.271860>,  <33.669792, 41.350712, 23.112650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732693, 41.518925, 23.271860>,  <33.837528, 41.799278, 23.537212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732693, 41.518925, 23.271860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056753, -0.697414, 0.714418,
		-0.963373, 0.149594, 0.222563,
		-0.262091, -0.700882, -0.663380,
		33.654064, 41.308659, 23.072845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326965, 41.488651, 23.940550>,  <33.837528, 41.799278, 23.537212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326965, 41.488651, 23.940550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472809, 41.237404, 23.665586>,  <33.560314, 41.086655, 23.500608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472809, 41.237404, 23.665586>,  <33.326965, 41.488651, 23.940550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472809, 41.237404, 23.665586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126148, -0.698101, 0.704799,
		-0.922575, -0.343693, -0.175299,
		0.364611, -0.628117, -0.687407,
		33.582191, 41.048969, 23.459364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848717, 40.843376, 23.982126>,  <33.326965, 41.488651, 23.940550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848717, 40.843376, 23.982126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188068, 40.717480, 23.811863>,  <33.391682, 40.641941, 23.709705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188068, 40.717480, 23.811863>,  <32.848717, 40.843376, 23.982126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188068, 40.717480, 23.811863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084874, -0.874527, 0.477493,
		-0.522537, -0.368969, -0.768646,
		0.848382, -0.314745, -0.425657,
		33.442581, 40.623055, 23.684166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750702, 40.296349, 23.635271>,  <32.848717, 40.843376, 23.982126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750702, 40.296349, 23.635271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143921, 40.267574, 23.702726>,  <33.379852, 40.250309, 23.743200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143921, 40.267574, 23.702726>,  <32.750702, 40.296349, 23.635271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143921, 40.267574, 23.702726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127831, -0.928291, 0.349192,
		0.131429, -0.364830, -0.921751,
		0.983049, -0.071934, 0.168640,
		33.438835, 40.245995, 23.753319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860336, 39.603775, 23.579426>,  <32.750702, 40.296349, 23.635271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860336, 39.603775, 23.579426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205151, 39.726158, 23.741058>,  <33.412041, 39.799587, 23.838037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205151, 39.726158, 23.741058>,  <32.860336, 39.603775, 23.579426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205151, 39.726158, 23.741058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057774, -0.851371, 0.521372,
		0.503538, -0.426098, -0.751592,
		0.862039, 0.305954, 0.404080,
		33.463764, 39.817944, 23.862282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264118, 39.090034, 23.596046>,  <32.860336, 39.603775, 23.579426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264118, 39.090034, 23.596046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448494, 39.304382, 23.878996>,  <33.559120, 39.432991, 24.048765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448494, 39.304382, 23.878996>,  <33.264118, 39.090034, 23.596046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448494, 39.304382, 23.878996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120825, -0.827575, 0.548198,
		0.879168, -0.167217, -0.446209,
		0.460940, 0.535871, 0.707373,
		33.586777, 39.465145, 24.091208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808750, 38.635708, 23.810381>,  <33.264118, 39.090034, 23.596046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808750, 38.635708, 23.810381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718086, 38.894272, 24.101801>,  <33.663689, 39.049408, 24.276653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718086, 38.894272, 24.101801>,  <33.808750, 38.635708, 23.810381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718086, 38.894272, 24.101801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085240, -0.758313, 0.646294,
		0.970238, 0.084384, 0.226975,
		-0.226655, 0.646406, 0.728551,
		33.650089, 39.088192, 24.320366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137444, 38.327862, 24.431316>,  <33.808750, 38.635708, 23.810381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137444, 38.327862, 24.431316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879227, 38.586136, 24.594465>,  <33.724297, 38.741100, 24.692354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.879227, 38.586136, 24.594465>,  <34.137444, 38.327862, 24.431316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879227, 38.586136, 24.594465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084686, -0.591284, 0.802004,
		0.759014, 0.483187, 0.436380,
		-0.645543, 0.645688, 0.407874,
		33.685562, 38.779842, 24.716827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295578, 38.419533, 25.170507>,  <34.137444, 38.327862, 24.431316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295578, 38.419533, 25.170507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912384, 38.530155, 25.140072>,  <33.682468, 38.596527, 25.121811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.912384, 38.530155, 25.140072>,  <34.295578, 38.419533, 25.170507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912384, 38.530155, 25.140072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203901, -0.470044, 0.858769,
		0.201731, 0.838199, 0.506683,
		-0.957982, 0.276553, -0.076087,
		33.624989, 38.613121, 25.117247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.177223, 38.797974, 25.922085>,  <34.295578, 38.419533, 25.170507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.177223, 38.797974, 25.922085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839752, 38.693119, 25.734686>,  <33.637268, 38.630207, 25.622246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.839752, 38.693119, 25.734686>,  <34.177223, 38.797974, 25.922085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839752, 38.693119, 25.734686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360932, -0.369049, 0.856464,
		-0.397413, 0.891676, 0.216743,
		-0.843677, -0.262141, -0.468500,
		33.586651, 38.614475, 25.594135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828472, 38.891968, 26.441736>,  <34.177223, 38.797974, 25.922085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828472, 38.891968, 26.441736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612068, 38.661797, 26.196398>,  <33.482227, 38.523693, 26.049194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.612068, 38.661797, 26.196398>,  <33.828472, 38.891968, 26.441736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612068, 38.661797, 26.196398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553901, -0.304990, 0.774709,
		-0.632856, 0.758855, -0.153730,
		-0.541005, -0.575431, -0.613345,
		33.449768, 38.489166, 26.012394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151104, 39.093395, 26.609257>,  <33.828472, 38.891968, 26.441736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151104, 39.093395, 26.609257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158749, 38.719524, 26.467264>,  <33.163334, 38.495201, 26.382069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158749, 38.719524, 26.467264>,  <33.151104, 39.093395, 26.609257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158749, 38.719524, 26.467264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427002, -0.328666, 0.842406,
		-0.904049, 0.135478, -0.405391,
		0.019111, -0.934679, -0.354980,
		33.164482, 38.439121, 26.360771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581718, 38.750614, 26.911016>,  <33.151104, 39.093395, 26.609257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581718, 38.750614, 26.911016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790005, 38.437500, 26.774721>,  <32.914974, 38.249630, 26.692944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790005, 38.437500, 26.774721>,  <32.581718, 38.750614, 26.911016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790005, 38.437500, 26.774721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148837, -0.476242, 0.866627,
		-0.840658, -0.400549, -0.364492,
		0.520712, -0.782786, -0.340740,
		32.946217, 38.202663, 26.672499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101151, 38.181068, 27.006058>,  <32.581718, 38.750614, 26.911016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101151, 38.181068, 27.006058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468502, 38.025143, 26.978834>,  <32.688911, 37.931587, 26.962500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468502, 38.025143, 26.978834>,  <32.101151, 38.181068, 27.006058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468502, 38.025143, 26.978834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102359, -0.400155, 0.910713,
		-0.382233, -0.829415, -0.407394,
		0.918380, -0.389805, -0.068054,
		32.744015, 37.908199, 26.958416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028606, 37.488506, 27.257669>,  <32.101151, 38.181068, 27.006058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028606, 37.488506, 27.257669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415520, 37.588081, 27.277206>,  <32.647667, 37.647827, 27.288929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.415520, 37.588081, 27.277206>,  <32.028606, 37.488506, 27.257669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415520, 37.588081, 27.277206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032974, -0.314272, 0.948760,
		0.251534, -0.916112, -0.312200,
		0.967287, 0.248940, 0.048842,
		32.705708, 37.662762, 27.291859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262646, 36.846970, 27.381451>,  <32.028606, 37.488506, 27.257669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262646, 36.846970, 27.381451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544548, 37.099728, 27.510464>,  <32.713688, 37.251385, 27.587872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544548, 37.099728, 27.510464>,  <32.262646, 36.846970, 27.381451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544548, 37.099728, 27.510464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101602, -0.539833, 0.835618,
		0.702142, -0.556132, -0.444650,
		0.704751, 0.631900, 0.322535,
		32.755974, 37.289299, 27.607224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767925, 36.374599, 27.693830>,  <32.262646, 36.846970, 27.381451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767925, 36.374599, 27.693830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833752, 36.729691, 27.865812>,  <32.873245, 36.942745, 27.969002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833752, 36.729691, 27.865812>,  <32.767925, 36.374599, 27.693830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833752, 36.729691, 27.865812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081283, -0.422208, 0.902847,
		0.983012, -0.183523, 0.002678,
		0.164563, 0.887727, 0.429953,
		32.883121, 36.996010, 27.994799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385174, 36.230934, 28.082333>,  <32.767925, 36.374599, 27.693830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385174, 36.230934, 28.082333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190479, 36.551830, 28.220604>,  <33.073662, 36.744370, 28.303566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190479, 36.551830, 28.220604>,  <33.385174, 36.230934, 28.082333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190479, 36.551830, 28.220604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043642, -0.417554, 0.907604,
		0.872456, 0.426680, 0.238252,
		-0.486739, 0.802242, 0.345676,
		33.044456, 36.792503, 28.324306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610210, 36.436344, 28.822403>,  <33.385174, 36.230934, 28.082333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610210, 36.436344, 28.822403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259930, 36.629219, 28.812315>,  <33.049759, 36.744942, 28.806263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259930, 36.629219, 28.812315>,  <33.610210, 36.436344, 28.822403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259930, 36.629219, 28.812315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161380, -0.243060, 0.956493,
		0.455077, 0.841676, 0.290664,
		-0.875706, 0.482185, -0.025219,
		32.997219, 36.773876, 28.804749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680843, 36.664948, 29.367109>,  <33.610210, 36.436344, 28.822403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680843, 36.664948, 29.367109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290607, 36.684460, 29.281469>,  <33.056465, 36.696167, 29.230085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290607, 36.684460, 29.281469>,  <33.680843, 36.664948, 29.367109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290607, 36.684460, 29.281469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213368, -0.441004, 0.871774,
		-0.051896, 0.896179, 0.440648,
		-0.975593, 0.048779, -0.214102,
		32.997929, 36.699093, 29.217239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407627, 36.986740, 29.958534>,  <33.680843, 36.664948, 29.367109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407627, 36.986740, 29.958534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103443, 36.804905, 29.773041>,  <32.920933, 36.695805, 29.661745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103443, 36.804905, 29.773041>,  <33.407627, 36.986740, 29.958534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103443, 36.804905, 29.773041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268491, -0.430118, 0.861923,
		-0.591278, 0.779969, 0.205036,
		-0.760463, -0.454586, -0.463733,
		32.875305, 36.668530, 29.633921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763115, 37.055092, 30.361702>,  <33.407627, 36.986740, 29.958534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763115, 37.055092, 30.361702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691330, 36.742001, 30.123329>,  <32.648258, 36.554146, 29.980305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691330, 36.742001, 30.123329>,  <32.763115, 37.055092, 30.361702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691330, 36.742001, 30.123329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364183, -0.509873, 0.779359,
		-0.913874, 0.356892, -0.193553,
		-0.179460, -0.782724, -0.595933,
		32.637493, 36.507183, 29.944550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122734, 36.876362, 30.533613>,  <32.763115, 37.055092, 30.361702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122734, 36.876362, 30.533613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221226, 36.549366, 30.325350>,  <32.280319, 36.353168, 30.200392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221226, 36.549366, 30.325350>,  <32.122734, 36.876362, 30.533613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221226, 36.549366, 30.325350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325966, -0.575753, 0.749837,
		-0.912753, -0.014915, -0.408240,
		0.246229, -0.817488, -0.520658,
		32.295094, 36.304119, 30.169153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417931, 36.442589, 30.519356>,  <32.122734, 36.876362, 30.533613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417931, 36.442589, 30.519356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742975, 36.218239, 30.456003>,  <31.938002, 36.083630, 30.417992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742975, 36.218239, 30.456003>,  <31.417931, 36.442589, 30.519356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742975, 36.218239, 30.456003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274655, -0.608226, 0.744732,
		-0.514030, -0.561678, -0.648298,
		0.812611, -0.560873, -0.158379,
		31.986759, 36.049976, 30.408489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206802, 35.749332, 30.634750>,  <31.417931, 36.442589, 30.519356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206802, 35.749332, 30.634750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605831, 35.727730, 30.652319>,  <31.845249, 35.714767, 30.662861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.605831, 35.727730, 30.652319>,  <31.206802, 35.749332, 30.634750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605831, 35.727730, 30.652319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069406, -0.722741, 0.687625,
		-0.005393, -0.689006, -0.724736,
		0.997574, -0.054009, 0.043923,
		31.905104, 35.711529, 30.665495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314583, 35.031048, 30.578302>,  <31.206802, 35.749332, 30.634750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314583, 35.031048, 30.578302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662691, 35.190361, 30.694237>,  <31.871555, 35.285950, 30.763798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662691, 35.190361, 30.694237>,  <31.314583, 35.031048, 30.578302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662691, 35.190361, 30.694237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208636, -0.831065, 0.515561,
		0.446211, -0.388206, -0.806345,
		0.870268, 0.398281, 0.289837,
		31.923771, 35.309845, 30.781187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741224, 34.435261, 30.669218>,  <31.314583, 35.031048, 30.578302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741224, 34.435261, 30.669218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932306, 34.738823, 30.846241>,  <32.046955, 34.920959, 30.952456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.932306, 34.738823, 30.846241>,  <31.741224, 34.435261, 30.669218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932306, 34.738823, 30.846241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365518, -0.629774, 0.685406,
		0.798872, -0.165658, -0.578240,
		0.477703, 0.758909, 0.442558,
		32.075619, 34.966496, 30.979008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525124, 34.272121, 30.818920>,  <31.741224, 34.435261, 30.669218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525124, 34.272121, 30.818920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378899, 34.539677, 31.077826>,  <32.291164, 34.700211, 31.233168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.378899, 34.539677, 31.077826>,  <32.525124, 34.272121, 30.818920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378899, 34.539677, 31.077826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328631, -0.557854, 0.762102,
		0.870841, 0.491308, -0.015886,
		-0.365565, 0.668891, 0.647261,
		32.269230, 34.740345, 31.272003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992561, 34.479725, 31.324762>,  <32.525124, 34.272121, 30.818920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992561, 34.479725, 31.324762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638462, 34.517109, 31.507015>,  <32.426003, 34.539539, 31.616367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638462, 34.517109, 31.507015>,  <32.992561, 34.479725, 31.324762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638462, 34.517109, 31.507015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309290, -0.613354, 0.726730,
		0.347385, 0.784259, 0.514063,
		-0.885247, 0.093461, 0.455634,
		32.372887, 34.545147, 31.643705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137047, 34.217907, 31.908085>,  <32.992561, 34.479725, 31.324762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137047, 34.217907, 31.908085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739319, 34.230564, 31.948727>,  <32.500683, 34.238159, 31.973112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739319, 34.230564, 31.948727>,  <33.137047, 34.217907, 31.908085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739319, 34.230564, 31.948727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034278, -0.808658, 0.587279,
		0.100744, 0.587427, 0.802981,
		-0.994321, 0.031641, 0.101604,
		32.441021, 34.240055, 31.979208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741722, 34.275043, 32.375164>,  <33.137047, 34.217907, 31.908085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741722, 34.275043, 32.375164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116436, 34.377132, 32.470913>,  <34.341263, 34.438385, 32.528362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.116436, 34.377132, 32.470913>,  <33.741722, 34.275043, 32.375164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116436, 34.377132, 32.470913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140540, 0.900932, -0.410573,
		-0.320440, 0.350978, 0.879848,
		0.936785, 0.255218, 0.239368,
		34.397472, 34.453697, 32.542725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749985, 35.002247, 32.313232>,  <33.741722, 34.275043, 32.375164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749985, 35.002247, 32.313232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139454, 34.913086, 32.332352>,  <34.373135, 34.859589, 32.343822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139454, 34.913086, 32.332352>,  <33.749985, 35.002247, 32.313232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139454, 34.913086, 32.332352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210094, 0.796016, -0.567643,
		0.088480, 0.562739, 0.821886,
		0.973669, -0.222898, 0.047796,
		34.431553, 34.846218, 32.346691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156910, 35.576443, 32.605541>,  <33.749985, 35.002247, 32.313232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156910, 35.576443, 32.605541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425480, 35.375427, 32.387684>,  <34.586624, 35.254818, 32.256969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425480, 35.375427, 32.387684>,  <34.156910, 35.576443, 32.605541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425480, 35.375427, 32.387684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289231, 0.854363, -0.431751,
		0.682298, 0.132360, 0.718992,
		0.671427, -0.502538, -0.544648,
		34.626907, 35.224667, 32.224289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767834, 35.999573, 32.618649>,  <34.156910, 35.576443, 32.605541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767834, 35.999573, 32.618649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833477, 35.770763, 32.297188>,  <34.872864, 35.633480, 32.104309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.833477, 35.770763, 32.297188>,  <34.767834, 35.999573, 32.618649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833477, 35.770763, 32.297188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351211, 0.795196, -0.494282,
		0.921803, -0.201138, 0.331396,
		0.164106, -0.572020, -0.803656,
		34.882710, 35.599159, 32.056091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502369, 36.032337, 32.439953>,  <34.767834, 35.999573, 32.618649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502369, 36.032337, 32.439953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316238, 35.924232, 32.102806>,  <35.204559, 35.859371, 31.900518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.316238, 35.924232, 32.102806>,  <35.502369, 36.032337, 32.439953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316238, 35.924232, 32.102806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392207, 0.790705, -0.470063,
		0.793508, -0.549308, -0.261925,
		-0.465315, -0.270270, -0.842874,
		35.176640, 35.843155, 31.849945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994080, 36.030258, 31.867296>,  <35.502369, 36.032337, 32.439953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994080, 36.030258, 31.867296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627388, 36.072781, 31.713255>,  <35.407372, 36.098293, 31.620831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627388, 36.072781, 31.713255>,  <35.994080, 36.030258, 31.867296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627388, 36.072781, 31.713255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306040, 0.806474, -0.505905,
		0.256798, -0.581636, -0.771852,
		-0.916730, 0.106302, -0.385104,
		35.352367, 36.104671, 31.597723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264942, 36.094231, 31.138126>,  <35.994080, 36.030258, 31.867296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264942, 36.094231, 31.138126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885571, 36.217678, 31.167065>,  <35.657948, 36.291748, 31.184427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.885571, 36.217678, 31.167065>,  <36.264942, 36.094231, 31.138126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885571, 36.217678, 31.167065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203020, 0.766691, -0.609071,
		-0.243440, -0.562973, -0.789809,
		-0.948430, 0.308619, 0.072348,
		35.601040, 36.310265, 31.188768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063389, 36.297249, 30.473059>,  <36.264942, 36.094231, 31.138126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063389, 36.297249, 30.473059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770172, 36.476089, 30.678099>,  <35.594242, 36.583393, 30.801123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.770172, 36.476089, 30.678099>,  <36.063389, 36.297249, 30.473059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770172, 36.476089, 30.678099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018627, 0.740136, -0.672200,
		-0.679932, -0.502297, -0.534220,
		-0.733039, 0.447099, 0.512598,
		35.550259, 36.610218, 30.831879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444965, 36.279438, 29.960440>,  <36.063389, 36.297249, 30.473059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444965, 36.279438, 29.960440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371849, 36.562229, 30.233723>,  <35.327980, 36.731903, 30.397692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371849, 36.562229, 30.233723>,  <35.444965, 36.279438, 29.960440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371849, 36.562229, 30.233723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011393, 0.693346, -0.720514,
		-0.983085, -0.139489, -0.118685,
		-0.182793, 0.706975, 0.683208,
		35.317013, 36.774323, 30.438684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896187, 36.623936, 29.592785>,  <35.444965, 36.279438, 29.960440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896187, 36.623936, 29.592785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058899, 36.842426, 29.885679>,  <35.156528, 36.973518, 30.061415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058899, 36.842426, 29.885679>,  <34.896187, 36.623936, 29.592785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058899, 36.842426, 29.885679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016447, 0.805797, -0.591963,
		-0.913377, 0.228757, 0.336769,
		0.406783, 0.546224, 0.732234,
		35.180935, 37.006294, 30.105349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523064, 37.232433, 29.494249>,  <34.896187, 36.623936, 29.592785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523064, 37.232433, 29.494249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859097, 37.298420, 29.700956>,  <35.060715, 37.338013, 29.824980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.859097, 37.298420, 29.700956>,  <34.523064, 37.232433, 29.494249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859097, 37.298420, 29.700956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087107, 0.899253, -0.428668,
		-0.535419, 0.405131, 0.741078,
		0.840083, 0.164964, 0.516767,
		35.111122, 37.347908, 29.855986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461170, 37.877754, 29.955326>,  <34.523064, 37.232433, 29.494249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461170, 37.877754, 29.955326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848282, 37.810772, 29.880116>,  <35.080551, 37.770584, 29.834990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848282, 37.810772, 29.880116>,  <34.461170, 37.877754, 29.955326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848282, 37.810772, 29.880116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052201, 0.863996, -0.500785,
		0.246313, 0.474836, 0.844903,
		0.967784, -0.167454, -0.188027,
		35.138618, 37.760536, 29.823708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758217, 38.543098, 29.956455>,  <34.461170, 37.877754, 29.955326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758217, 38.543098, 29.956455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047169, 38.334152, 29.775213>,  <35.220539, 38.208786, 29.666468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047169, 38.334152, 29.775213>,  <34.758217, 38.543098, 29.956455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047169, 38.334152, 29.775213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216517, 0.793165, -0.569218,
		0.656725, 0.313087, 0.686067,
		0.722380, -0.522365, -0.453103,
		35.263882, 38.177444, 29.639282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349586, 38.964104, 29.941771>,  <34.758217, 38.543098, 29.956455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349586, 38.964104, 29.941771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430576, 38.716896, 29.637915>,  <35.479168, 38.568569, 29.455601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430576, 38.716896, 29.637915>,  <35.349586, 38.964104, 29.941771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430576, 38.716896, 29.637915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079725, 0.783534, -0.616213,
		0.976038, 0.064203, 0.207915,
		0.202472, -0.618023, -0.759640,
		35.491318, 38.531490, 29.410023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.819431, 39.285191, 29.567234>,  <35.349586, 38.964104, 29.941771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.819431, 39.285191, 29.567234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701405, 39.013111, 29.298828>,  <35.630589, 38.849861, 29.137785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701405, 39.013111, 29.298828>,  <35.819431, 39.285191, 29.567234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701405, 39.013111, 29.298828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062175, 0.687126, -0.723873,
		0.953452, -0.255310, -0.160456,
		-0.295065, -0.680202, -0.671015,
		35.612885, 38.809052, 29.097523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373787, 39.141750, 29.099768>,  <35.819431, 39.285191, 29.567234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373787, 39.141750, 29.099768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055466, 39.005074, 28.899790>,  <35.864471, 38.923069, 28.779804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055466, 39.005074, 28.899790>,  <36.373787, 39.141750, 29.099768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055466, 39.005074, 28.899790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119137, 0.721114, -0.682496,
		0.593717, -0.602696, -0.533159,
		-0.795805, -0.341690, -0.499941,
		35.816723, 38.902565, 28.749807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549156, 39.277252, 28.364185>,  <36.373787, 39.141750, 29.099768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549156, 39.277252, 28.364185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174900, 39.143661, 28.318501>,  <35.950348, 39.063507, 28.291090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174900, 39.143661, 28.318501>,  <36.549156, 39.277252, 28.364185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174900, 39.143661, 28.318501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004599, 0.312015, -0.950066,
		0.352936, -0.889441, -0.290396,
		-0.935636, -0.333977, -0.114212,
		35.894211, 39.043468, 28.284237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456997, 38.768570, 27.772432>,  <36.549156, 39.277252, 28.364185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456997, 38.768570, 27.772432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113720, 38.963734, 27.836245>,  <35.907753, 39.080833, 27.874531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113720, 38.963734, 27.836245>,  <36.456997, 38.768570, 27.772432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113720, 38.963734, 27.836245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045455, 0.381785, -0.923133,
		-0.511310, -0.784975, -0.349823,
		-0.858193, 0.487909, 0.159530,
		35.856262, 39.110107, 27.884104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030888, 38.623840, 27.169474>,  <36.456997, 38.768570, 27.772432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030888, 38.623840, 27.169474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891102, 38.956123, 27.342819>,  <35.807232, 39.155491, 27.446827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891102, 38.956123, 27.342819>,  <36.030888, 38.623840, 27.169474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891102, 38.956123, 27.342819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061945, 0.482000, -0.873979,
		-0.934901, -0.278576, -0.219898,
		-0.349460, 0.830706, 0.433366,
		35.786263, 39.205334, 27.472830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487072, 38.903255, 26.705627>,  <36.030888, 38.623840, 27.169474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487072, 38.903255, 26.705627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621918, 39.212811, 26.920082>,  <35.702824, 39.398544, 27.048756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.621918, 39.212811, 26.920082>,  <35.487072, 38.903255, 26.705627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621918, 39.212811, 26.920082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176384, 0.507472, -0.843422,
		-0.924793, 0.378897, 0.034574,
		0.337115, 0.773892, 0.536138,
		35.723053, 39.444977, 27.080923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991165, 39.483719, 26.526028>,  <35.487072, 38.903255, 26.705627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991165, 39.483719, 26.526028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325294, 39.653728, 26.665504>,  <35.525772, 39.755733, 26.749191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325294, 39.653728, 26.665504>,  <34.991165, 39.483719, 26.526028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325294, 39.653728, 26.665504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054141, 0.567586, -0.821532,
		-0.547082, 0.705126, 0.451108,
		0.835326, 0.425022, 0.348692,
		35.575893, 39.781235, 26.770111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914108, 40.204838, 26.429861>,  <34.991165, 39.483719, 26.526028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914108, 40.204838, 26.429861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307072, 40.132900, 26.449991>,  <35.542850, 40.089737, 26.462069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307072, 40.132900, 26.449991>,  <34.914108, 40.204838, 26.429861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307072, 40.132900, 26.449991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119424, 0.397812, -0.909661,
		0.143577, 0.899668, 0.412291,
		0.982407, -0.179844, 0.050325,
		35.601795, 40.078949, 26.465088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191696, 40.705589, 26.083158>,  <34.914108, 40.204838, 26.429861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191696, 40.705589, 26.083158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518299, 40.474682, 26.086718>,  <35.714260, 40.336136, 26.088854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518299, 40.474682, 26.086718>,  <35.191696, 40.705589, 26.083158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518299, 40.474682, 26.086718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143486, 0.187974, -0.971637,
		0.559224, 0.794623, 0.236311,
		0.816505, -0.577270, 0.008898,
		35.763252, 40.301502, 26.089386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662251, 41.184311, 25.679352>,  <35.191696, 40.705589, 26.083158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662251, 41.184311, 25.679352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819347, 40.817566, 25.707952>,  <35.913605, 40.597519, 25.725113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819347, 40.817566, 25.707952>,  <35.662251, 41.184311, 25.679352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819347, 40.817566, 25.707952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485413, 0.140633, -0.862900,
		0.781108, 0.373604, 0.500290,
		0.392740, -0.916866, 0.071503,
		35.937168, 40.542507, 25.729403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458660, 41.176201, 25.572426>,  <35.662251, 41.184311, 25.679352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458660, 41.176201, 25.572426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277336, 40.838795, 25.457191>,  <36.168541, 40.636353, 25.388052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277336, 40.838795, 25.457191>,  <36.458660, 41.176201, 25.572426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277336, 40.838795, 25.457191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402515, 0.094650, -0.910507,
		0.795292, -0.528702, 0.296621,
		-0.453312, -0.843514, -0.288085,
		36.141342, 40.585739, 25.370766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945553, 40.957077, 25.059689>,  <36.458660, 41.176201, 25.572426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945553, 40.957077, 25.059689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625233, 40.727966, 24.989655>,  <36.433041, 40.590500, 24.947634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.625233, 40.727966, 24.989655>,  <36.945553, 40.957077, 25.059689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625233, 40.727966, 24.989655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258458, -0.066767, -0.963712,
		0.540302, -0.816988, 0.201505,
		-0.800796, -0.572776, -0.175083,
		36.384995, 40.556133, 24.937130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114311, 40.279690, 24.730841>,  <36.945553, 40.957077, 25.059689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114311, 40.279690, 24.730841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735126, 40.368050, 24.639124>,  <36.507618, 40.421066, 24.584093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735126, 40.368050, 24.639124>,  <37.114311, 40.279690, 24.730841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735126, 40.368050, 24.639124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221314, -0.060566, -0.973320,
		-0.228894, -0.973414, 0.008525,
		-0.947960, 0.220900, -0.229293,
		36.450737, 40.434319, 24.570335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986938, 39.891399, 24.195805>,  <37.114311, 40.279690, 24.730841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986938, 39.891399, 24.195805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687958, 40.156433, 24.176659>,  <36.508568, 40.315453, 24.165171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687958, 40.156433, 24.176659>,  <36.986938, 39.891399, 24.195805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687958, 40.156433, 24.176659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235124, 0.196473, -0.951901,
		-0.621310, -0.722759, -0.302645,
		-0.747456, 0.662584, -0.047867,
		36.463722, 40.355209, 24.162298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879448, 39.748497, 23.495932>,  <36.986938, 39.891399, 24.195805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879448, 39.748497, 23.495932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701130, 40.092171, 23.596384>,  <36.594139, 40.298374, 23.656656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701130, 40.092171, 23.596384>,  <36.879448, 39.748497, 23.495932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701130, 40.092171, 23.596384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101083, 0.327075, -0.939577,
		-0.889411, -0.393472, -0.232657,
		-0.445793, 0.859187, 0.251131,
		36.567390, 40.349926, 23.671722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360523, 39.814762, 22.920635>,  <36.879448, 39.748497, 23.495932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360523, 39.814762, 22.920635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426819, 40.178818, 23.072517>,  <36.466595, 40.397251, 23.163647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.426819, 40.178818, 23.072517>,  <36.360523, 39.814762, 22.920635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426819, 40.178818, 23.072517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004683, 0.385754, -0.922590,
		-0.986159, 0.151128, 0.068195,
		0.165735, 0.910140, 0.379707,
		36.476540, 40.451859, 23.186430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826141, 40.302414, 22.656391>,  <36.360523, 39.814762, 22.920635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826141, 40.302414, 22.656391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142258, 40.519741, 22.769707>,  <36.331928, 40.650135, 22.837696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142258, 40.519741, 22.769707>,  <35.826141, 40.302414, 22.656391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142258, 40.519741, 22.769707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021299, 0.437699, -0.898869,
		-0.612363, 0.716401, 0.334337,
		0.790290, 0.543313, 0.283290,
		36.379345, 40.682735, 22.854694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738167, 41.009987, 22.395142>,  <35.826141, 40.302414, 22.656391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738167, 41.009987, 22.395142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131134, 40.960300, 22.450888>,  <36.366913, 40.930489, 22.484335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131134, 40.960300, 22.450888>,  <35.738167, 41.009987, 22.395142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131134, 40.960300, 22.450888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182570, 0.483307, -0.856203,
		0.038999, 0.866593, 0.497488,
		0.982419, -0.124218, 0.139365,
		36.425861, 40.923035, 22.492697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104755, 41.722557, 22.070873>,  <35.738167, 41.009987, 22.395142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104755, 41.722557, 22.070873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397011, 41.457176, 22.135366>,  <36.572365, 41.297947, 22.174063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.397011, 41.457176, 22.135366>,  <36.104755, 41.722557, 22.070873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397011, 41.457176, 22.135366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466723, 0.312968, -0.827176,
		0.498328, 0.679622, 0.538315,
		0.730643, -0.663449, 0.161234,
		36.616203, 41.258141, 22.183737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728077, 42.139328, 22.008509>,  <36.104755, 41.722557, 22.070873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728077, 42.139328, 22.008509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815018, 41.758507, 21.922386>,  <36.867184, 41.530014, 21.870712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815018, 41.758507, 21.922386>,  <36.728077, 42.139328, 22.008509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815018, 41.758507, 21.922386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447869, 0.293263, -0.844636,
		0.867278, 0.087156, 0.490136,
		0.217354, -0.952051, -0.215306,
		36.880222, 41.472893, 21.857794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495884, 42.165565, 21.769520>,  <36.728077, 42.139328, 22.008509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495884, 42.165565, 21.769520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365265, 41.799095, 21.676582>,  <37.286896, 41.579212, 21.620819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365265, 41.799095, 21.676582>,  <37.495884, 42.165565, 21.769520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365265, 41.799095, 21.676582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506123, 0.038116, -0.861618,
		0.798254, -0.398950, 0.451254,
		-0.326543, -0.916180, -0.232344,
		37.267303, 41.524242, 21.606878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118294, 41.855186, 21.561916>,  <37.495884, 42.165565, 21.769520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118294, 41.855186, 21.561916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826344, 41.629944, 21.406897>,  <37.651173, 41.494801, 21.313885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826344, 41.629944, 21.406897>,  <38.118294, 41.855186, 21.561916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826344, 41.629944, 21.406897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459445, 0.015687, -0.888068,
		0.506154, -0.826237, 0.247266,
		-0.729875, -0.563105, -0.387550,
		37.607380, 41.461014, 21.290632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453068, 41.316242, 21.161356>,  <38.118294, 41.855186, 21.561916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453068, 41.316242, 21.161356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099850, 41.358624, 20.978489>,  <37.887917, 41.384052, 20.868769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099850, 41.358624, 20.978489>,  <38.453068, 41.316242, 21.161356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099850, 41.358624, 20.978489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463845, 0.049180, -0.884550,
		-0.071237, -0.993154, -0.092573,
		-0.883048, 0.105952, -0.457166,
		37.834934, 41.390408, 20.841339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449646, 41.752865, 20.552393>,  <38.453068, 41.316242, 21.161356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449646, 41.752865, 20.552393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752190, 41.610226, 20.333029>,  <38.933716, 41.524643, 20.201410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752190, 41.610226, 20.333029>,  <38.449646, 41.752865, 20.552393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752190, 41.610226, 20.333029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309752, -0.543169, 0.780398,
		-0.576174, -0.760132, -0.300371,
		0.756358, -0.356604, -0.548411,
		38.979099, 41.503246, 20.168507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376461, 40.944115, 20.421257>,  <38.449646, 41.752865, 20.552393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376461, 40.944115, 20.421257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756481, 41.068180, 20.407379>,  <38.984493, 41.142620, 20.399052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.756481, 41.068180, 20.407379>,  <38.376461, 40.944115, 20.421257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756481, 41.068180, 20.407379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186454, -0.474908, 0.860057,
		0.250283, -0.823565, -0.509017,
		0.950049, 0.310166, -0.034695,
		39.041496, 41.161228, 20.396971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689713, 40.379391, 20.678898>,  <38.376461, 40.944115, 20.421257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689713, 40.379391, 20.678898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944672, 40.685600, 20.713989>,  <39.097649, 40.869324, 20.735044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944672, 40.685600, 20.713989>,  <38.689713, 40.379391, 20.678898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944672, 40.685600, 20.713989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477658, -0.481901, 0.734584,
		0.604617, -0.426320, -0.672822,
		0.637402, 0.765521, 0.087730,
		39.135891, 40.915257, 20.740309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235905, 40.041447, 20.850080>,  <38.689713, 40.379391, 20.678898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235905, 40.041447, 20.850080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321732, 40.418964, 20.950647>,  <39.373226, 40.645477, 21.010988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.321732, 40.418964, 20.950647>,  <39.235905, 40.041447, 20.850080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321732, 40.418964, 20.950647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369729, -0.316743, 0.873484,
		0.904026, -0.094460, -0.416910,
		0.214562, 0.943796, 0.251419,
		39.386101, 40.702103, 21.026073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994736, 40.129578, 21.083384>,  <39.235905, 40.041447, 20.850080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994736, 40.129578, 21.083384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774876, 40.427654, 21.234419>,  <39.642960, 40.606503, 21.325041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774876, 40.427654, 21.234419>,  <39.994736, 40.129578, 21.083384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774876, 40.427654, 21.234419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341315, -0.212221, 0.915678,
		0.762490, 0.632178, -0.137699,
		-0.549648, 0.745194, 0.377588,
		39.609982, 40.651211, 21.347694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341557, 40.198067, 21.617626>,  <39.994736, 40.129578, 21.083384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341557, 40.198067, 21.617626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042305, 40.438587, 21.729862>,  <39.862755, 40.582901, 21.797205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042305, 40.438587, 21.729862>,  <40.341557, 40.198067, 21.617626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042305, 40.438587, 21.729862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190964, -0.209866, 0.958900,
		0.635478, 0.770966, 0.042180,
		-0.748132, 0.601304, 0.280592,
		39.817867, 40.618980, 21.814039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615242, 40.698803, 22.155735>,  <40.341557, 40.198067, 21.617626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615242, 40.698803, 22.155735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219730, 40.669922, 22.208033>,  <39.982422, 40.652592, 22.239410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.219730, 40.669922, 22.208033>,  <40.615242, 40.698803, 22.155735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219730, 40.669922, 22.208033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145549, -0.269402, 0.951965,
		-0.033514, 0.960317, 0.276890,
		-0.988783, -0.072205, 0.130745,
		39.923096, 40.648262, 22.247255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457661, 41.109150, 22.717007>,  <40.615242, 40.698803, 22.155735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457661, 41.109150, 22.717007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175148, 40.828659, 22.678144>,  <40.005638, 40.660362, 22.654827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175148, 40.828659, 22.678144>,  <40.457661, 41.109150, 22.717007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175148, 40.828659, 22.678144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038247, -0.174838, 0.983854,
		-0.706894, 0.691165, 0.150305,
		-0.706284, -0.701229, -0.097158,
		39.963264, 40.618290, 22.648996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061455, 41.190491, 23.264025>,  <40.457661, 41.109150, 22.717007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061455, 41.190491, 23.264025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926064, 40.832207, 23.148689>,  <39.844830, 40.617237, 23.079489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.926064, 40.832207, 23.148689>,  <40.061455, 41.190491, 23.264025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926064, 40.832207, 23.148689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149561, -0.251320, 0.956279,
		-0.929011, 0.366806, -0.048896,
		-0.338481, -0.895707, -0.288339,
		39.824520, 40.563496, 23.062187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349831, 41.093380, 23.524536>,  <40.061455, 41.190491, 23.264025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349831, 41.093380, 23.524536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506420, 40.731022, 23.459919>,  <39.600376, 40.513607, 23.421148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506420, 40.731022, 23.459919>,  <39.349831, 41.093380, 23.524536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506420, 40.731022, 23.459919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142337, -0.233057, 0.961990,
		-0.909113, -0.353603, -0.220179,
		0.391477, -0.905897, -0.161545,
		39.623863, 40.459251, 23.411455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783821, 40.607613, 23.644512>,  <39.349831, 41.093380, 23.524536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783821, 40.607613, 23.644512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113960, 40.384861, 23.681789>,  <39.312042, 40.251209, 23.704155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.113960, 40.384861, 23.681789>,  <38.783821, 40.607613, 23.644512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113960, 40.384861, 23.681789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353674, -0.381236, 0.854151,
		-0.440134, -0.737930, -0.511607,
		0.825347, -0.556883, 0.093192,
		39.361565, 40.217796, 23.709747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603611, 39.958469, 24.059114>,  <38.783821, 40.607613, 23.644512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603611, 39.958469, 24.059114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002834, 39.976460, 24.076315>,  <39.242371, 39.987251, 24.086636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002834, 39.976460, 24.076315>,  <38.603611, 39.958469, 24.059114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002834, 39.976460, 24.076315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022947, -0.376338, 0.926198,
		0.057837, -0.925390, -0.374576,
		0.998062, 0.044973, 0.043002,
		39.302254, 39.989952, 24.089216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804359, 39.188862, 24.332062>,  <38.603611, 39.958469, 24.059114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804359, 39.188862, 24.332062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092457, 39.459267, 24.394352>,  <39.265316, 39.621510, 24.431726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092457, 39.459267, 24.394352>,  <38.804359, 39.188862, 24.332062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092457, 39.459267, 24.394352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023936, -0.200128, 0.979477,
		0.693304, -0.709193, -0.127960,
		0.720247, 0.676013, 0.155724,
		39.308533, 39.662071, 24.441069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270870, 38.862595, 24.750561>,  <38.804359, 39.188862, 24.332062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270870, 38.862595, 24.750561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348846, 39.252380, 24.795149>,  <39.395630, 39.486252, 24.821901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348846, 39.252380, 24.795149>,  <39.270870, 38.862595, 24.750561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348846, 39.252380, 24.795149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057123, -0.124739, 0.990544,
		0.979151, -0.186726, -0.079980,
		0.194937, 0.974461, 0.111472,
		39.407326, 39.544720, 24.828590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841049, 38.895466, 25.195324>,  <39.270870, 38.862595, 24.750561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841049, 38.895466, 25.195324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696419, 39.268036, 25.211838>,  <39.609642, 39.491577, 25.221746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696419, 39.268036, 25.211838>,  <39.841049, 38.895466, 25.195324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696419, 39.268036, 25.211838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054562, -0.023067, 0.998244,
		0.930746, 0.363191, -0.042481,
		-0.361574, 0.931429, 0.041286,
		39.587948, 39.547466, 25.224224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196571, 39.324184, 25.797979>,  <39.841049, 38.895466, 25.195324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196571, 39.324184, 25.797979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851402, 39.510727, 25.720125>,  <39.644302, 39.622654, 25.673412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851402, 39.510727, 25.720125>,  <40.196571, 39.324184, 25.797979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851402, 39.510727, 25.720125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187859, 0.061518, 0.980268,
		0.469128, 0.882455, 0.034525,
		-0.862918, 0.466357, -0.194637,
		39.592525, 39.650635, 25.661734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075970, 39.852375, 26.262459>,  <40.196571, 39.324184, 25.797979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075970, 39.852375, 26.262459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705284, 39.791702, 26.124943>,  <39.482872, 39.755299, 26.042433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705284, 39.791702, 26.124943>,  <40.075970, 39.852375, 26.262459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705284, 39.791702, 26.124943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314109, -0.189455, 0.930291,
		-0.206241, 0.970103, 0.127927,
		-0.926715, -0.151682, -0.343792,
		39.427269, 39.746197, 26.021805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536747, 40.278042, 26.668625>,  <40.075970, 39.852375, 26.262459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536747, 40.278042, 26.668625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307041, 39.995281, 26.503450>,  <39.169220, 39.825626, 26.404346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307041, 39.995281, 26.503450>,  <39.536747, 40.278042, 26.668625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307041, 39.995281, 26.503450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440395, -0.158456, 0.883711,
		-0.690128, 0.689334, -0.220321,
		-0.574261, -0.706902, -0.412934,
		39.134762, 39.783211, 26.379570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880173, 40.259434, 27.070581>,  <39.536747, 40.278042, 26.668625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880173, 40.259434, 27.070581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860859, 39.901455, 26.893160>,  <38.849270, 39.686668, 26.786707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860859, 39.901455, 26.893160>,  <38.880173, 40.259434, 27.070581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860859, 39.901455, 26.893160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406387, -0.388055, 0.827202,
		-0.912424, 0.220193, -0.344959,
		-0.048281, -0.894946, -0.443554,
		38.846375, 39.632973, 26.760094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204102, 40.054184, 27.161705>,  <38.880173, 40.259434, 27.070581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204102, 40.054184, 27.161705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410213, 39.717228, 27.098621>,  <38.533878, 39.515057, 27.060770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410213, 39.717228, 27.098621>,  <38.204102, 40.054184, 27.161705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410213, 39.717228, 27.098621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361391, -0.380433, 0.851274,
		-0.777102, -0.381646, -0.500459,
		0.515276, -0.842388, -0.157712,
		38.564796, 39.464512, 27.051308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732334, 39.530621, 27.352514>,  <38.204102, 40.054184, 27.161705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732334, 39.530621, 27.352514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086227, 39.344433, 27.342781>,  <38.298561, 39.232719, 27.336941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086227, 39.344433, 27.342781>,  <37.732334, 39.530621, 27.352514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086227, 39.344433, 27.342781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298311, -0.605581, 0.737755,
		-0.358137, -0.645456, -0.674630,
		0.884731, -0.465467, -0.024334,
		38.351646, 39.204792, 27.335482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538464, 38.845013, 27.326773>,  <37.732334, 39.530621, 27.352514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538464, 38.845013, 27.326773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901924, 38.896458, 27.485672>,  <38.120003, 38.927322, 27.581011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901924, 38.896458, 27.485672>,  <37.538464, 38.845013, 27.326773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901924, 38.896458, 27.485672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252937, -0.587420, 0.768740,
		0.332220, -0.798998, -0.501231,
		0.908654, 0.128611, 0.397249,
		38.174519, 38.935040, 27.604847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728958, 38.143723, 27.603271>,  <37.538464, 38.845013, 27.326773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728958, 38.143723, 27.603271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996029, 38.388954, 27.772196>,  <38.156269, 38.536091, 27.873550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996029, 38.388954, 27.772196>,  <37.728958, 38.143723, 27.603271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996029, 38.388954, 27.772196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023644, -0.549529, 0.835140,
		0.744078, -0.567586, -0.352411,
		0.667674, 0.613077, 0.422312,
		38.196331, 38.572876, 27.898890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198471, 37.682022, 28.078867>,  <37.728958, 38.143723, 27.603271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198471, 37.682022, 28.078867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219803, 38.057690, 28.214581>,  <38.232601, 38.283092, 28.296009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219803, 38.057690, 28.214581>,  <38.198471, 37.682022, 28.078867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219803, 38.057690, 28.214581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058330, -0.336255, 0.939963,
		0.996872, -0.069921, 0.036849,
		0.053332, 0.939172, 0.339282,
		38.235802, 38.339439, 28.316364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640293, 37.578987, 28.628571>,  <38.198471, 37.682022, 28.078867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640293, 37.578987, 28.628571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463211, 37.929901, 28.702734>,  <38.356960, 38.140450, 28.747232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463211, 37.929901, 28.702734>,  <38.640293, 37.578987, 28.628571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463211, 37.929901, 28.702734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126026, -0.265598, 0.955811,
		0.887765, 0.399779, 0.228144,
		-0.442707, 0.877288, 0.185406,
		38.330399, 38.193089, 28.758356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829609, 37.717251, 29.312674>,  <38.640293, 37.578987, 28.628571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829609, 37.717251, 29.312674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513470, 37.957779, 29.265739>,  <38.323788, 38.102097, 29.237579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513470, 37.957779, 29.265739>,  <38.829609, 37.717251, 29.312674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513470, 37.957779, 29.265739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294800, -0.205374, 0.933228,
		0.537070, 0.772164, 0.339586,
		-0.790347, 0.601319, -0.117333,
		38.276367, 38.138176, 29.230539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803146, 38.022167, 29.980143>,  <38.829609, 37.717251, 29.312674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803146, 38.022167, 29.980143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437099, 38.074413, 29.827562>,  <38.217472, 38.105762, 29.736015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437099, 38.074413, 29.827562>,  <38.803146, 38.022167, 29.980143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437099, 38.074413, 29.827562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401846, -0.218203, 0.889330,
		0.032928, 0.967123, 0.252169,
		-0.915115, 0.130617, -0.381449,
		38.162563, 38.113598, 29.713127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501652, 38.463760, 30.436344>,  <38.803146, 38.022167, 29.980143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501652, 38.463760, 30.436344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230946, 38.241085, 30.243645>,  <38.068520, 38.107479, 30.128025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230946, 38.241085, 30.243645>,  <38.501652, 38.463760, 30.436344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230946, 38.241085, 30.243645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408931, -0.259881, 0.874778,
		-0.612177, 0.789025, -0.051768,
		-0.676768, -0.556688, -0.481750,
		38.027916, 38.074078, 30.099119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847935, 38.638493, 30.696844>,  <38.501652, 38.463760, 30.436344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847935, 38.638493, 30.696844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814877, 38.264706, 30.558317>,  <37.795040, 38.040432, 30.475201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.814877, 38.264706, 30.558317>,  <37.847935, 38.638493, 30.696844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814877, 38.264706, 30.558317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459333, -0.272674, 0.845377,
		-0.884411, 0.228945, -0.406697,
		-0.082650, -0.934470, -0.346318,
		37.790081, 37.984364, 30.454422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244328, 38.401974, 31.004005>,  <37.847935, 38.638493, 30.696844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244328, 38.401974, 31.004005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321499, 38.022453, 30.903961>,  <37.367802, 37.794743, 30.843935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321499, 38.022453, 30.903961>,  <37.244328, 38.401974, 31.004005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321499, 38.022453, 30.903961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356396, -0.305252, 0.883065,
		-0.914199, -0.081229, -0.397040,
		0.192928, -0.948801, -0.250111,
		37.379375, 37.737812, 30.828928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823387, 37.967125, 31.282406>,  <37.244328, 38.401974, 31.004005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823387, 37.967125, 31.282406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038734, 37.635433, 31.222349>,  <37.167942, 37.436417, 31.186316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.038734, 37.635433, 31.222349>,  <36.823387, 37.967125, 31.282406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038734, 37.635433, 31.222349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194880, -0.295843, 0.935146,
		-0.819868, -0.474191, -0.320872,
		0.538366, -0.829229, -0.150142,
		37.200245, 37.386665, 31.177307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444557, 37.449635, 31.562595>,  <36.823387, 37.967125, 31.282406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444557, 37.449635, 31.562595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825844, 37.329189, 31.573204>,  <37.054615, 37.256920, 31.579569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825844, 37.329189, 31.573204>,  <36.444557, 37.449635, 31.562595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825844, 37.329189, 31.573204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128672, -0.324795, 0.936991,
		-0.273521, -0.896572, -0.348345,
		0.953220, -0.301109, 0.026526,
		37.111809, 37.238853, 31.581161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488182, 36.835934, 32.055466>,  <36.444557, 37.449635, 31.562595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488182, 36.835934, 32.055466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874783, 36.890366, 31.968410>,  <37.106743, 36.923027, 31.916178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874783, 36.890366, 31.968410>,  <36.488182, 36.835934, 32.055466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874783, 36.890366, 31.968410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255396, -0.425178, 0.868330,
		0.025631, -0.894821, -0.445689,
		0.966497, 0.136083, -0.217636,
		37.164730, 36.931190, 31.903120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821415, 36.209843, 32.043163>,  <36.488182, 36.835934, 32.055466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821415, 36.209843, 32.043163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099045, 36.483551, 32.132641>,  <37.265621, 36.647774, 32.186325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099045, 36.483551, 32.132641>,  <36.821415, 36.209843, 32.043163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099045, 36.483551, 32.132641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334106, -0.581407, 0.741849,
		0.637680, -0.440161, -0.632157,
		0.694074, 0.684269, 0.223691,
		37.307266, 36.688831, 32.199749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379822, 35.800941, 32.205750>,  <36.821415, 36.209843, 32.043163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379822, 35.800941, 32.205750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483772, 36.158138, 32.352734>,  <37.546143, 36.372456, 32.440926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483772, 36.158138, 32.352734>,  <37.379822, 35.800941, 32.205750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483772, 36.158138, 32.352734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564619, -0.449227, 0.692387,
		0.783372, 0.027544, -0.620943,
		0.259873, 0.892993, 0.367464,
		37.561733, 36.426037, 32.462975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.148689, 35.890774, 32.397476>,  <37.379822, 35.800941, 32.205750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.148689, 35.890774, 32.397476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996861, 36.191418, 32.613258>,  <37.905762, 36.371803, 32.742725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.996861, 36.191418, 32.613258>,  <38.148689, 35.890774, 32.397476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996861, 36.191418, 32.613258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529201, -0.301889, 0.792975,
		0.758861, 0.586472, -0.283163,
		-0.379574, 0.751607, 0.539453,
		37.882988, 36.416901, 32.775093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638458, 36.273304, 32.704826>,  <38.148689, 35.890774, 32.397476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638458, 36.273304, 32.704826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332165, 36.347523, 32.951149>,  <38.148388, 36.392056, 33.098942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332165, 36.347523, 32.951149>,  <38.638458, 36.273304, 32.704826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332165, 36.347523, 32.951149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584566, -0.198478, 0.786695,
		0.268194, 0.962381, 0.043516,
		-0.765737, 0.185549, 0.615806,
		38.102444, 36.403187, 33.135891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952408, 36.682236, 33.181656>,  <38.638458, 36.273304, 32.704826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952408, 36.682236, 33.181656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615582, 36.568222, 33.364822>,  <38.413486, 36.499813, 33.474720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615582, 36.568222, 33.364822>,  <38.952408, 36.682236, 33.181656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615582, 36.568222, 33.364822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507076, -0.128947, 0.852201,
		-0.183862, 0.949803, 0.253117,
		-0.842062, -0.285037, 0.457914,
		38.362965, 36.482712, 33.502197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024952, 36.925259, 33.797916>,  <38.952408, 36.682236, 33.181656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024952, 36.925259, 33.797916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736240, 36.654034, 33.853451>,  <38.563015, 36.491299, 33.886772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736240, 36.654034, 33.853451>,  <39.024952, 36.925259, 33.797916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736240, 36.654034, 33.853451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315054, -0.143272, 0.938197,
		-0.616261, 0.720910, 0.317036,
		-0.721778, -0.678058, 0.138833,
		38.519707, 36.450615, 33.895100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720737, 36.977753, 34.464600>,  <39.024952, 36.925259, 33.797916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720737, 36.977753, 34.464600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612022, 36.605671, 34.365921>,  <38.546795, 36.382423, 34.306713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612022, 36.605671, 34.365921>,  <38.720737, 36.977753, 34.464600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612022, 36.605671, 34.365921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331038, -0.331069, 0.883633,
		-0.903630, 0.158492, 0.397911,
		-0.271785, -0.930201, -0.246697,
		38.530487, 36.326611, 34.291912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362881, 36.724869, 35.124714>,  <38.720737, 36.977753, 34.464600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362881, 36.724869, 35.124714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462452, 36.407410, 34.902664>,  <38.522194, 36.216934, 34.769436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.462452, 36.407410, 34.902664>,  <38.362881, 36.724869, 35.124714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462452, 36.407410, 34.902664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366588, -0.453315, 0.812477,
		-0.896464, -0.405750, 0.178098,
		0.248928, -0.793645, -0.555124,
		38.537128, 36.169315, 34.736126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163731, 36.136082, 35.525608>,  <38.362881, 36.724869, 35.124714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163731, 36.136082, 35.525608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461105, 36.061375, 35.268730>,  <38.639530, 36.016548, 35.114601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461105, 36.061375, 35.268730>,  <38.163731, 36.136082, 35.525608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461105, 36.061375, 35.268730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560840, -0.349024, 0.750760,
		-0.364364, -0.918313, -0.154728,
		0.743436, -0.186772, -0.642198,
		38.684135, 36.005344, 35.076073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363197, 35.495766, 35.705181>,  <38.163731, 36.136082, 35.525608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363197, 35.495766, 35.705181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680309, 35.663860, 35.528591>,  <38.870575, 35.764717, 35.422638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.680309, 35.663860, 35.528591>,  <38.363197, 35.495766, 35.705181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680309, 35.663860, 35.528591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581361, -0.303784, 0.754807,
		0.183085, -0.855053, -0.485144,
		0.792779, 0.420238, -0.441476,
		38.918144, 35.789932, 35.396149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859501, 35.088345, 35.933533>,  <38.363197, 35.495766, 35.705181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859501, 35.088345, 35.933533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089745, 35.368378, 35.764507>,  <39.227890, 35.536400, 35.663094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089745, 35.368378, 35.764507>,  <38.859501, 35.088345, 35.933533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089745, 35.368378, 35.764507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717033, -0.183695, 0.672399,
		0.393114, -0.690027, -0.607720,
		0.575608, 0.700085, -0.422559,
		39.262428, 35.578403, 35.637741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477825, 34.781292, 35.749203>,  <38.859501, 35.088345, 35.933533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477825, 34.781292, 35.749203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561848, 35.166302, 35.817806>,  <39.612263, 35.397308, 35.858967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.561848, 35.166302, 35.817806>,  <39.477825, 34.781292, 35.749203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561848, 35.166302, 35.817806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767457, -0.271011, 0.581002,
		0.605710, 0.009577, -0.795628,
		0.210059, 0.962529, 0.171504,
		39.624866, 35.455059, 35.869259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192047, 34.866714, 35.665325>,  <39.477825, 34.781292, 35.749203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192047, 34.866714, 35.665325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095608, 35.193092, 35.875507>,  <40.037743, 35.388920, 36.001617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095608, 35.193092, 35.875507>,  <40.192047, 34.866714, 35.665325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095608, 35.193092, 35.875507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787615, -0.151839, 0.597166,
		0.567040, 0.557832, -0.606044,
		-0.241097, 0.815946, 0.525456,
		40.023277, 35.437878, 36.033146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784618, 35.284882, 35.706337>,  <40.192047, 34.866714, 35.665325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784618, 35.284882, 35.706337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603798, 35.445091, 36.025143>,  <40.495308, 35.541218, 36.216427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603798, 35.445091, 36.025143>,  <40.784618, 35.284882, 35.706337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603798, 35.445091, 36.025143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863493, -0.027568, 0.503607,
		0.223678, 0.915873, -0.333385,
		-0.452049, 0.400521, 0.797016,
		40.468182, 35.565247, 36.264248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190151, 35.832760, 35.990925>,  <40.784618, 35.284882, 35.706337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190151, 35.832760, 35.990925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938435, 35.751385, 36.290951>,  <40.787403, 35.702560, 36.470966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938435, 35.751385, 36.290951>,  <41.190151, 35.832760, 35.990925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938435, 35.751385, 36.290951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754128, 0.073420, 0.652610,
		-0.187838, 0.976331, 0.107218,
		-0.629291, -0.203441, 0.750069,
		40.749649, 35.690353, 36.515972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189732, 36.293770, 36.461426>,  <41.190151, 35.832760, 35.990925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189732, 36.293770, 36.461426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047249, 36.006374, 36.700386>,  <40.961758, 35.833939, 36.843761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047249, 36.006374, 36.700386>,  <41.189732, 36.293770, 36.461426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047249, 36.006374, 36.700386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671679, 0.247571, 0.698252,
		-0.649585, 0.649987, 0.394405,
		-0.356212, -0.718488, 0.597401,
		40.940384, 35.790829, 36.879608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219826, 36.566437, 37.116909>,  <41.189732, 36.293770, 36.461426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219826, 36.566437, 37.116909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202682, 36.169666, 37.164654>,  <41.192394, 35.931602, 37.193302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202682, 36.169666, 37.164654>,  <41.219826, 36.566437, 37.116909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202682, 36.169666, 37.164654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667133, 0.060522, 0.742476,
		-0.743704, 0.111455, 0.659152,
		-0.042860, -0.991925, 0.119366,
		41.189823, 35.872089, 37.200462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133232, 36.342960, 37.939655>,  <41.219826, 36.566437, 37.116909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133232, 36.342960, 37.939655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304367, 36.083549, 37.687824>,  <41.407047, 35.927902, 37.536728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.304367, 36.083549, 37.687824>,  <41.133232, 36.342960, 37.939655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304367, 36.083549, 37.687824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792288, -0.066151, 0.606551,
		-0.435014, -0.758309, 0.485520,
		0.427835, -0.648530, -0.629576,
		41.432716, 35.888992, 37.498951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136921, 35.973251, 38.559448>,  <41.133232, 36.342960, 37.939655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136921, 35.973251, 38.559448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371235, 35.842346, 38.262867>,  <41.511822, 35.763802, 38.084919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.371235, 35.842346, 38.262867>,  <41.136921, 35.973251, 38.559448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.371235, 35.842346, 38.262867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455500, -0.623753, 0.635179,
		-0.670359, -0.709809, -0.216313,
		0.585781, -0.327268, -0.741456,
		41.546970, 35.744167, 38.040432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318851, 35.240101, 38.729553>,  <41.136921, 35.973251, 38.559448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318851, 35.240101, 38.729553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572922, 35.306313, 38.427784>,  <41.725365, 35.346039, 38.246723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.572922, 35.306313, 38.427784>,  <41.318851, 35.240101, 38.729553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572922, 35.306313, 38.427784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754891, -0.339650, 0.561051,
		-0.163366, -0.925871, -0.340697,
		0.635178, 0.165532, -0.754418,
		41.763474, 35.355972, 38.201458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616051, 34.632584, 38.447506>,  <41.318851, 35.240101, 38.729553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616051, 34.632584, 38.447506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881821, 34.922573, 38.374897>,  <42.041283, 35.096565, 38.331329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881821, 34.922573, 38.374897>,  <41.616051, 34.632584, 38.447506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881821, 34.922573, 38.374897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691709, -0.504578, 0.516661,
		0.282971, -0.468847, -0.836726,
		0.664429, 0.724971, -0.181525,
		42.081150, 35.140064, 38.320438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298153, 34.325993, 38.189087>,  <41.616051, 34.632584, 38.447506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298153, 34.325993, 38.189087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353291, 34.673035, 38.380192>,  <42.386375, 34.881260, 38.494854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353291, 34.673035, 38.380192>,  <42.298153, 34.325993, 38.189087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353291, 34.673035, 38.380192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649214, -0.443440, 0.617966,
		0.748010, 0.224985, -0.624390,
		0.137847, 0.867607, 0.477761,
		42.394646, 34.933315, 38.523521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.104141, 34.485088, 38.218716>,  <42.298153, 34.325993, 38.189087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.104141, 34.485088, 38.218716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915443, 34.671673, 38.518013>,  <42.802223, 34.783623, 38.697590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915443, 34.671673, 38.518013>,  <43.104141, 34.485088, 38.218716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915443, 34.671673, 38.518013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512118, -0.545847, 0.663164,
		0.717768, 0.696034, 0.018616,
		-0.471746, 0.466464, 0.748243,
		42.773918, 34.811611, 38.742485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518356, 34.178604, 38.847809>,  <43.104141, 34.485088, 38.218716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518356, 34.178604, 38.847809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208073, 34.377773, 39.002911>,  <43.021904, 34.497276, 39.095970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.208073, 34.377773, 39.002911>,  <43.518356, 34.178604, 38.847809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208073, 34.377773, 39.002911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166798, -0.430809, 0.886895,
		0.608654, 0.752646, 0.251128,
		-0.775706, 0.497924, 0.387753,
		42.975361, 34.527149, 39.119236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634750, 34.685703, 39.408085>,  <43.518356, 34.178604, 38.847809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634750, 34.685703, 39.408085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269379, 34.539143, 39.478966>,  <43.050156, 34.451206, 39.521496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269379, 34.539143, 39.478966>,  <43.634750, 34.685703, 39.408085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269379, 34.539143, 39.478966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332457, -0.420536, 0.844169,
		-0.234784, 0.830000, 0.505942,
		-0.913427, -0.366401, 0.177204,
		42.995350, 34.429222, 39.532127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.522594, 34.724483, 40.093163>,  <43.634750, 34.685703, 39.408085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.522594, 34.724483, 40.093163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261379, 34.434170, 40.006645>,  <43.104649, 34.259983, 39.954735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.261379, 34.434170, 40.006645>,  <43.522594, 34.724483, 40.093163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.261379, 34.434170, 40.006645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124272, -0.384421, 0.914755,
		-0.747061, 0.570490, 0.341236,
		-0.653037, -0.725784, -0.216290,
		43.065468, 34.216434, 39.941757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205620, 34.568623, 40.799026>,  <43.522594, 34.724483, 40.093163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205620, 34.568623, 40.799026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124886, 34.268898, 40.546741>,  <43.076443, 34.089062, 40.395370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124886, 34.268898, 40.546741>,  <43.205620, 34.568623, 40.799026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124886, 34.268898, 40.546741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062109, -0.652459, 0.755275,
		-0.977448, 0.113270, 0.178230,
		-0.201837, -0.749311, -0.630709,
		43.064335, 34.044106, 40.357529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.507286, 34.320900, 40.898510>,  <43.205620, 34.568623, 40.799026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.507286, 34.320900, 40.898510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788788, 34.061928, 40.781498>,  <42.957687, 33.906544, 40.711292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788788, 34.061928, 40.781498>,  <42.507286, 34.320900, 40.898510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788788, 34.061928, 40.781498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007181, -0.418210, 0.908322,
		-0.710410, -0.637132, -0.298965,
		0.703751, -0.647428, -0.292526,
		42.999912, 33.867699, 40.693741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.238003, 33.643078, 41.124256>,  <42.507286, 34.320900, 40.898510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.238003, 33.643078, 41.124256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634636, 33.650349, 41.072983>,  <42.872616, 33.654713, 41.042217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634636, 33.650349, 41.072983>,  <42.238003, 33.643078, 41.124256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634636, 33.650349, 41.072983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125186, -0.387142, 0.913482,
		-0.033020, -0.921841, -0.386159,
		0.991584, 0.018178, -0.128185,
		42.932110, 33.655804, 41.034527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489677, 32.892712, 41.488609>,  <42.238003, 33.643078, 41.124256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489677, 32.892712, 41.488609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746952, 33.197044, 41.454094>,  <42.901318, 33.379646, 41.433384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746952, 33.197044, 41.454094>,  <42.489677, 32.892712, 41.488609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746952, 33.197044, 41.454094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249861, -0.102025, 0.962892,
		0.723798, -0.640876, -0.255724,
		0.643185, 0.760834, -0.086284,
		42.939907, 33.425293, 41.428207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175667, 32.689247, 41.540981>,  <42.489677, 32.892712, 41.488609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175667, 32.689247, 41.540981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270115, 32.483208, 41.211395>,  <43.326782, 32.359585, 41.013645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270115, 32.483208, 41.211395>,  <43.175667, 32.689247, 41.540981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270115, 32.483208, 41.211395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196565, 0.805093, -0.559632,
		0.951635, 0.294103, 0.088848,
		0.236120, -0.515101, -0.823965,
		43.340950, 32.328678, 40.964207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655579, 32.999020, 41.077019>,  <43.175667, 32.689247, 41.540981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655579, 32.999020, 41.077019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371902, 32.782459, 40.896381>,  <43.201698, 32.652523, 40.787998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371902, 32.782459, 40.896381>,  <43.655579, 32.999020, 41.077019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371902, 32.782459, 40.896381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332657, 0.821725, -0.462717,
		0.621602, -0.177927, -0.762858,
		-0.709190, -0.541396, -0.451597,
		43.159145, 32.620041, 40.760902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833885, 33.074028, 40.354744>,  <43.655579, 32.999020, 41.077019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833885, 33.074028, 40.354744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455093, 33.025524, 40.473751>,  <43.227818, 32.996422, 40.545155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455093, 33.025524, 40.473751>,  <43.833885, 33.074028, 40.354744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455093, 33.025524, 40.473751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291116, 0.715613, -0.634940,
		-0.135920, -0.687891, -0.712974,
		-0.946983, -0.121258, 0.297522,
		43.170998, 32.989147, 40.563007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428082, 33.002060, 39.709656>,  <43.833885, 33.074028, 40.354744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428082, 33.002060, 39.709656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252178, 33.176373, 40.023781>,  <43.146637, 33.280960, 40.212254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252178, 33.176373, 40.023781>,  <43.428082, 33.002060, 39.709656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252178, 33.176373, 40.023781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333487, 0.732649, -0.593306,
		-0.833908, -0.522799, -0.176859,
		-0.439756, 0.435782, 0.785308,
		43.120251, 33.307106, 40.259373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683430, 33.044422, 39.646881>,  <43.428082, 33.002060, 39.709656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683430, 33.044422, 39.646881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794514, 33.357109, 39.870235>,  <42.861164, 33.544724, 40.004246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794514, 33.357109, 39.870235>,  <42.683430, 33.044422, 39.646881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794514, 33.357109, 39.870235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413997, 0.621886, -0.664729,
		-0.866883, -0.046570, 0.496332,
		0.277705, 0.781722, 0.558382,
		42.877827, 33.591625, 40.037750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127789, 33.444252, 39.591091>,  <42.683430, 33.044422, 39.646881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127789, 33.444252, 39.591091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400734, 33.696808, 39.738457>,  <42.564503, 33.848343, 39.826874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.400734, 33.696808, 39.738457>,  <42.127789, 33.444252, 39.591091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.400734, 33.696808, 39.738457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231942, 0.664932, -0.709977,
		-0.693241, 0.399013, 0.600172,
		0.682364, 0.631390, 0.368411,
		42.605442, 33.886227, 39.848980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779186, 34.156254, 39.659317>,  <42.127789, 33.444252, 39.591091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779186, 34.156254, 39.659317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169579, 34.236382, 39.625053>,  <42.403812, 34.284458, 39.604496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.169579, 34.236382, 39.625053>,  <41.779186, 34.156254, 39.659317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169579, 34.236382, 39.625053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186291, 0.563472, -0.804857,
		-0.112963, 0.801481, 0.587254,
		0.975979, 0.200320, -0.085657,
		42.462372, 34.296478, 39.599358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.780548, 34.970058, 39.635624>,  <41.779186, 34.156254, 39.659317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.780548, 34.970058, 39.635624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135635, 34.849339, 39.496559>,  <42.348686, 34.776905, 39.413120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.135635, 34.849339, 39.496559>,  <41.780548, 34.970058, 39.635624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.135635, 34.849339, 39.496559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035972, 0.798323, -0.601155,
		0.458977, 0.521151, 0.719543,
		0.887720, -0.301800, -0.347665,
		42.401951, 34.758801, 39.392258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318359, 35.435150, 39.761120>,  <41.780548, 34.970058, 39.635624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318359, 35.435150, 39.761120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438068, 35.244965, 39.430214>,  <42.509895, 35.130856, 39.231670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438068, 35.244965, 39.430214>,  <42.318359, 35.435150, 39.761120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438068, 35.244965, 39.430214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257982, 0.794394, -0.549895,
		0.918629, 0.377991, 0.115083,
		0.299276, -0.475460, -0.827268,
		42.527851, 35.102325, 39.182034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427341, 35.976967, 39.354794>,  <42.318359, 35.435150, 39.761120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427341, 35.976967, 39.354794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439995, 35.672409, 39.095787>,  <42.447586, 35.489674, 38.940384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439995, 35.672409, 39.095787>,  <42.427341, 35.976967, 39.354794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439995, 35.672409, 39.095787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459446, 0.564262, -0.685944,
		0.887642, 0.319200, -0.331968,
		0.031636, -0.761394, -0.647517,
		42.449486, 35.443993, 38.901531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.523247, 36.153587, 38.686558>,  <42.427341, 35.976967, 39.354794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.523247, 36.153587, 38.686558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608673, 35.766815, 38.630795>,  <42.659927, 35.534752, 38.597336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.608673, 35.766815, 38.630795>,  <42.523247, 36.153587, 38.686558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608673, 35.766815, 38.630795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507329, 0.012182, -0.861666,
		0.834870, 0.254746, -0.487951,
		0.213562, -0.966931, -0.139410,
		42.672741, 35.476734, 38.588970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894333, 36.111416, 38.068356>,  <42.523247, 36.153587, 38.686558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894333, 36.111416, 38.068356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671108, 35.789921, 38.150890>,  <42.537174, 35.597023, 38.200413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671108, 35.789921, 38.150890>,  <42.894333, 36.111416, 38.068356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671108, 35.789921, 38.150890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558619, 0.180008, -0.809655,
		0.613609, -0.567100, -0.549438,
		-0.558058, -0.803738, 0.206338,
		42.503689, 35.548798, 38.212791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.699997, 35.802963, 37.424171>,  <42.894333, 36.111416, 38.068356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.699997, 35.802963, 37.424171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426567, 35.695305, 37.695549>,  <42.262508, 35.630711, 37.858376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426567, 35.695305, 37.695549>,  <42.699997, 35.802963, 37.424171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426567, 35.695305, 37.695549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724662, 0.139270, -0.674885,
		0.087149, -0.952979, -0.290235,
		-0.683572, -0.269138, 0.678450,
		42.221497, 35.614563, 37.899082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323307, 35.288410, 37.143425>,  <42.699997, 35.802963, 37.424171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323307, 35.288410, 37.143425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083557, 35.408321, 37.440311>,  <41.939709, 35.480267, 37.618443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.083557, 35.408321, 37.440311>,  <42.323307, 35.288410, 37.143425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083557, 35.408321, 37.440311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773891, 0.019933, -0.633005,
		-0.204553, -0.953802, 0.220045,
		-0.599375, 0.299775, 0.742216,
		41.903744, 35.498253, 37.662975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.786282, 34.772976, 37.107899>,  <42.323307, 35.288410, 37.143425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.786282, 34.772976, 37.107899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601967, 35.071739, 37.299648>,  <41.491379, 35.250999, 37.414696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601967, 35.071739, 37.299648>,  <41.786282, 34.772976, 37.107899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601967, 35.071739, 37.299648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718834, 0.002698, -0.695177,
		-0.520528, -0.664920, 0.535661,
		-0.460791, 0.746910, 0.479371,
		41.463730, 35.295811, 37.443459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009773, 34.589737, 37.100452>,  <41.786282, 34.772976, 37.107899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009773, 34.589737, 37.100452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047867, 34.979317, 37.182781>,  <41.070724, 35.213062, 37.232178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047867, 34.979317, 37.182781>,  <41.009773, 34.589737, 37.100452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047867, 34.979317, 37.182781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858263, 0.185081, -0.478676,
		-0.504297, -0.131059, 0.853527,
		0.095237, 0.973945, 0.205819,
		41.076439, 35.271500, 37.244526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492088, 34.811840, 37.501087>,  <41.009773, 34.589737, 37.100452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492088, 34.811840, 37.501087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626713, 35.123299, 37.289265>,  <40.707489, 35.310173, 37.162170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626713, 35.123299, 37.289265>,  <40.492088, 34.811840, 37.501087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626713, 35.123299, 37.289265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896940, 0.093830, -0.432082,
		-0.286752, 0.620404, 0.729980,
		0.336560, 0.778649, -0.529560,
		40.727680, 35.356892, 37.130398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882271, 35.381210, 37.413696>,  <40.492088, 34.811840, 37.501087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882271, 35.381210, 37.413696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168819, 35.448978, 37.142960>,  <40.340748, 35.489639, 36.980518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168819, 35.448978, 37.142960>,  <39.882271, 35.381210, 37.413696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168819, 35.448978, 37.142960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695361, 0.253130, -0.672606,
		0.057375, 0.952482, 0.299143,
		0.716367, 0.169422, -0.676842,
		40.383728, 35.499805, 36.939907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531178, 35.851646, 37.027386>,  <39.882271, 35.381210, 37.413696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531178, 35.851646, 37.027386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861858, 35.800655, 36.808186>,  <40.060268, 35.770061, 36.676666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861858, 35.800655, 36.808186>,  <39.531178, 35.851646, 37.027386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861858, 35.800655, 36.808186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512046, 0.233165, -0.826706,
		0.233165, 0.964045, 0.127482,
		0.826706, -0.127482, -0.548001,
		40.109871, 35.762409, 36.643784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739971, 36.509567, 36.652950>,  <39.531178, 35.851646, 37.027386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739971, 36.509567, 36.652950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846447, 36.179840, 36.453094>,  <39.910332, 35.982002, 36.333183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.846447, 36.179840, 36.453094>,  <39.739971, 36.509567, 36.652950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846447, 36.179840, 36.453094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538293, 0.302863, -0.786457,
		0.799616, 0.478295, -0.363109,
		0.266186, -0.824322, -0.499637,
		39.926304, 35.932545, 36.303204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789921, 36.750050, 35.924614>,  <39.739971, 36.509567, 36.652950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789921, 36.750050, 35.924614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786884, 36.352280, 35.882530>,  <39.785065, 36.113617, 35.857281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786884, 36.352280, 35.882530>,  <39.789921, 36.750050, 35.924614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786884, 36.352280, 35.882530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496697, 0.095067, -0.862702,
		0.867891, 0.045714, -0.494647,
		-0.007588, -0.994421, -0.105214,
		39.784607, 36.053955, 35.850967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969490, 36.542992, 35.274879>,  <39.789921, 36.750050, 35.924614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969490, 36.542992, 35.274879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726757, 36.260567, 35.420876>,  <39.581116, 36.091110, 35.508472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726757, 36.260567, 35.420876>,  <39.969490, 36.542992, 35.274879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726757, 36.260567, 35.420876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512518, -0.003391, -0.858670,
		0.607515, -0.708139, -0.359814,
		-0.606837, -0.706065, 0.364994,
		39.544704, 36.048748, 35.530373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882694, 36.278294, 34.657677>,  <39.969490, 36.542992, 35.274879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882694, 36.278294, 34.657677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586075, 36.139027, 34.887074>,  <39.408104, 36.055466, 35.024712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.586075, 36.139027, 34.887074>,  <39.882694, 36.278294, 34.657677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586075, 36.139027, 34.887074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542646, -0.191400, -0.817864,
		0.394517, -0.917686, -0.046998,
		-0.741546, -0.348165, 0.573490,
		39.363609, 36.034576, 35.059120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682331, 35.760784, 34.241867>,  <39.882694, 36.278294, 34.657677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682331, 35.760784, 34.241867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376320, 35.846096, 34.484932>,  <39.192715, 35.897285, 34.630772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376320, 35.846096, 34.484932>,  <39.682331, 35.760784, 34.241867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376320, 35.846096, 34.484932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618622, 0.018903, -0.785462,
		-0.179012, -0.976808, 0.117480,
		-0.765024, 0.213282, 0.607658,
		39.146812, 35.910080, 34.667229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224659, 35.246517, 34.545574>,  <39.682331, 35.760784, 34.241867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224659, 35.246517, 34.545574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504780, 35.204987, 34.263073>,  <40.672852, 35.180069, 34.093575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504780, 35.204987, 34.263073>,  <40.224659, 35.246517, 34.545574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504780, 35.204987, 34.263073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601608, -0.446698, 0.662215,
		-0.384235, -0.888640, -0.250364,
		0.700308, -0.103825, -0.706250,
		40.714870, 35.173840, 34.051197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545532, 34.517773, 34.268761>,  <40.224659, 35.246517, 34.545574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545532, 34.517773, 34.268761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824043, 34.804718, 34.259037>,  <40.991150, 34.976887, 34.253201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824043, 34.804718, 34.259037>,  <40.545532, 34.517773, 34.268761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824043, 34.804718, 34.259037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649138, -0.614878, 0.447823,
		0.306301, -0.327591, -0.893792,
		0.696275, 0.717363, -0.024314,
		41.032925, 35.019928, 34.251743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214409, 34.305580, 33.847206>,  <40.545532, 34.517773, 34.268761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214409, 34.305580, 33.847206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279999, 34.542908, 34.162441>,  <41.319351, 34.685307, 34.351582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279999, 34.542908, 34.162441>,  <41.214409, 34.305580, 33.847206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279999, 34.542908, 34.162441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712930, -0.623436, 0.321028,
		0.681795, 0.509212, -0.525223,
		0.163972, 0.593322, 0.788087,
		41.329189, 34.720905, 34.398869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961399, 34.380005, 33.937794>,  <41.214409, 34.305580, 33.847206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961399, 34.380005, 33.937794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784191, 34.407745, 34.295322>,  <41.677868, 34.424389, 34.509842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784191, 34.407745, 34.295322>,  <41.961399, 34.380005, 33.937794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784191, 34.407745, 34.295322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535060, -0.779515, 0.325680,
		0.719336, 0.622533, 0.308234,
		-0.443020, 0.069350, 0.893826,
		41.651283, 34.428551, 34.563469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.748703, 34.160404, 33.890881>,  <41.961399, 34.380005, 33.937794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.748703, 34.160404, 33.890881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596931, 34.016331, 33.549988>,  <42.505867, 33.929886, 33.345451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596931, 34.016331, 33.549988>,  <42.748703, 34.160404, 33.890881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596931, 34.016331, 33.549988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924064, -0.101482, -0.368519,
		0.046248, -0.927345, 0.371337,
		-0.379429, -0.360183, -0.852234,
		42.483105, 33.908276, 33.294319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076038, 33.511200, 33.587254>,  <42.748703, 34.160404, 33.890881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076038, 33.511200, 33.587254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934242, 33.752659, 33.301609>,  <42.849167, 33.897533, 33.130222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934242, 33.752659, 33.301609>,  <43.076038, 33.511200, 33.587254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934242, 33.752659, 33.301609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827745, -0.152656, -0.539939,
		-0.434945, -0.782500, -0.445552,
		-0.354486, 0.603647, -0.714108,
		42.827896, 33.933754, 33.087376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.106186, 33.124153, 32.906002>,  <43.076038, 33.511200, 33.587254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.106186, 33.124153, 32.906002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106956, 33.520061, 32.848953>,  <43.107418, 33.757607, 32.814724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106956, 33.520061, 32.848953>,  <43.106186, 33.124153, 32.906002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106956, 33.520061, 32.848953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694136, -0.103992, -0.712292,
		-0.719841, -0.097627, -0.687239,
		0.001928, 0.989775, -0.142625,
		43.107536, 33.816994, 32.806168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.214520, 33.243652, 32.237049>,  <43.106186, 33.124153, 32.906002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.214520, 33.243652, 32.237049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373631, 33.584957, 32.371941>,  <43.469097, 33.789738, 32.452877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373631, 33.584957, 32.371941>,  <43.214520, 33.243652, 32.237049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373631, 33.584957, 32.371941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873858, -0.240352, -0.422616,
		-0.279546, 0.462798, -0.841232,
		0.397778, 0.853258, 0.337230,
		43.492962, 33.840935, 32.473110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396168, 33.550686, 31.644287>,  <43.214520, 33.243652, 32.237049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396168, 33.550686, 31.644287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610432, 33.631470, 31.972258>,  <43.738991, 33.679939, 32.169041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610432, 33.631470, 31.972258>,  <43.396168, 33.550686, 31.644287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610432, 33.631470, 31.972258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838056, -0.246270, -0.486840,
		0.103601, 0.947926, -0.301171,
		0.535658, 0.201961, 0.819928,
		43.771130, 33.692059, 32.218235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013042, 33.699890, 31.344469>,  <43.396168, 33.550686, 31.644287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013042, 33.699890, 31.344469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101181, 33.704670, 31.734608>,  <44.154064, 33.707539, 31.968691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101181, 33.704670, 31.734608>,  <44.013042, 33.699890, 31.344469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101181, 33.704670, 31.734608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957563, -0.193114, -0.213965,
		0.185796, 0.981104, -0.053997,
		0.220349, 0.011952, 0.975348,
		44.167286, 33.708256, 32.027210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.436031, 34.163361, 31.346497>,  <44.013042, 33.699890, 31.344469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.436031, 34.163361, 31.346497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551331, 33.927208, 31.648056>,  <44.620510, 33.785519, 31.828993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.551331, 33.927208, 31.648056>,  <44.436031, 34.163361, 31.346497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551331, 33.927208, 31.648056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935457, 0.005456, -0.353397,
		0.204524, 0.807108, 0.553846,
		0.288252, -0.590378, 0.753900,
		44.637806, 33.750095, 31.874226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859749, 34.499985, 31.942781>,  <44.436031, 34.163361, 31.346497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859749, 34.499985, 31.942781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959450, 34.127308, 31.837086>,  <45.019272, 33.903702, 31.773668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.959450, 34.127308, 31.837086>,  <44.859749, 34.499985, 31.942781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959450, 34.127308, 31.837086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883400, 0.330546, -0.332182,
		0.396834, -0.150631, 0.905446,
		0.249254, -0.931692, -0.264239,
		45.034225, 33.847801, 31.757814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468567, 34.258747, 32.199467>,  <44.859749, 34.499985, 31.942781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468567, 34.258747, 32.199467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415661, 34.092617, 31.839464>,  <45.383915, 33.992939, 31.623463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415661, 34.092617, 31.839464>,  <45.468567, 34.258747, 32.199467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415661, 34.092617, 31.839464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793685, 0.499542, -0.347162,
		0.593775, -0.760241, 0.263561,
		-0.132267, -0.415321, -0.900008,
		45.375980, 33.968021, 31.569462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124657, 34.091351, 31.991158>,  <45.468567, 34.258747, 32.199467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124657, 34.091351, 31.991158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875702, 34.105152, 31.678377>,  <45.726330, 34.113434, 31.490709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875702, 34.105152, 31.678377>,  <46.124657, 34.091351, 31.991158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875702, 34.105152, 31.678377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668251, 0.543578, -0.507901,
		0.407523, -0.838649, -0.361377,
		-0.622387, 0.034509, -0.781949,
		45.688984, 34.115505, 31.443792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100536, 33.899071, 32.649418>,  <46.124657, 34.091351, 31.991158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100536, 33.899071, 32.649418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.407272, 33.907394, 32.906017>,  <46.591312, 33.912388, 33.059978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.407272, 33.907394, 32.906017>,  <46.100536, 33.899071, 32.649418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.407272, 33.907394, 32.906017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536816, 0.527082, -0.658796,
		-0.351831, 0.849560, 0.393018,
		0.766840, 0.020806, 0.641501,
		46.637325, 33.913635, 33.098469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.293304, 34.786465, 32.589878>,  <46.100536, 33.899071, 32.649418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.293304, 34.786465, 32.589878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.593372, 34.843925, 32.848057>,  <46.773415, 34.878403, 33.002964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.593372, 34.843925, 32.848057>,  <46.293304, 34.786465, 32.589878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.593372, 34.843925, 32.848057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103072, 0.938780, -0.328737,
		-0.653160, 0.313137, 0.689440,
		0.750172, 0.143655, 0.645449,
		46.818424, 34.887024, 33.041691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.278278, 35.277939, 33.228691>,  <46.293304, 34.786465, 32.589878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.278278, 35.277939, 33.228691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.640442, 35.328682, 33.066639>,  <46.857742, 35.359127, 32.969406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.640442, 35.328682, 33.066639>,  <46.278278, 35.277939, 33.228691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.640442, 35.328682, 33.066639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174324, 0.981241, -0.082328,
		0.387090, 0.145165, 0.910543,
		0.905413, 0.126861, -0.405134,
		46.912067, 35.366741, 32.945099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766788, 35.602161, 33.688389>,  <46.278278, 35.277939, 33.228691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766788, 35.602161, 33.688389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.823109, 35.703072, 33.305447>,  <46.856899, 35.763618, 33.075680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.823109, 35.703072, 33.305447>,  <46.766788, 35.602161, 33.688389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.823109, 35.703072, 33.305447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191547, 0.955660, 0.223662,
		0.971332, 0.151888, 0.182877,
		0.140796, 0.252280, -0.957356,
		46.865349, 35.778755, 33.018238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.502884, 35.357426, 34.103271>,  <46.766788, 35.602161, 33.688389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.502884, 35.357426, 34.103271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671833, 35.613277, 34.360172>,  <47.773201, 35.766788, 34.514313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.671833, 35.613277, 34.360172>,  <47.502884, 35.357426, 34.103271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.671833, 35.613277, 34.360172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294746, -0.573128, 0.764623,
		0.857163, -0.512254, -0.053545,
		0.422370, 0.639625, 0.642249,
		47.798542, 35.805164, 34.552849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.023109, 35.099602, 34.562481>,  <47.502884, 35.357426, 34.103271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.023109, 35.099602, 34.562481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.866146, 35.408443, 34.762432>,  <47.771969, 35.593746, 34.882401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.866146, 35.408443, 34.762432>,  <48.023109, 35.099602, 34.562481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.866146, 35.408443, 34.762432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347843, -0.627675, 0.696441,
		0.851482, 0.099411, 0.514874,
		-0.392408, 0.772102, 0.499874,
		47.748425, 35.640076, 34.912395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.018051, 34.852680, 35.153206>,  <48.023109, 35.099602, 34.562481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.018051, 34.852680, 35.153206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760792, 35.156231, 35.194138>,  <47.606438, 35.338360, 35.218697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760792, 35.156231, 35.194138>,  <48.018051, 34.852680, 35.153206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.760792, 35.156231, 35.194138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428429, -0.467368, 0.773314,
		0.634674, 0.453513, 0.625711,
		-0.643146, 0.758876, 0.102328,
		47.567848, 35.383892, 35.224834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.165703, 34.818386, 24.703371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.766411, 34.822666, 24.679981>,  <37.526836, 34.825233, 24.665947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.766411, 34.822666, 24.679981>,  <38.165703, 34.818386, 24.703371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766411, 34.822666, 24.679981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058273, -0.370566, 0.926977,
		-0.011752, 0.928745, 0.370534,
		-0.998232, 0.010699, -0.058475,
		37.466942, 34.825874, 24.662439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934109, 34.953636, 25.379818>,  <38.165703, 34.818386, 24.703371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934109, 34.953636, 25.379818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.597206, 34.827042, 25.205257>,  <37.395065, 34.751083, 25.100521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.597206, 34.827042, 25.205257>,  <37.934109, 34.953636, 25.379818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597206, 34.827042, 25.205257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311648, -0.374683, 0.873205,
		-0.439869, 0.871464, 0.216946,
		-0.842253, -0.316486, -0.436402,
		37.344532, 34.732098, 25.074337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284229, 35.387367, 25.646671>,  <37.934109, 34.953636, 25.379818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284229, 35.387367, 25.646671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180634, 35.018204, 25.532711>,  <37.118477, 34.796707, 25.464334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.180634, 35.018204, 25.532711>,  <37.284229, 35.387367, 25.646671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180634, 35.018204, 25.532711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232928, -0.226584, 0.945729,
		-0.937374, 0.311294, -0.156288,
		-0.258987, -0.922906, -0.284903,
		37.102936, 34.741333, 25.447241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675312, 35.156574, 26.044407>,  <37.284229, 35.387367, 25.646671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675312, 35.156574, 26.044407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822777, 34.803162, 25.928854>,  <36.911255, 34.591114, 25.859522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822777, 34.803162, 25.928854>,  <36.675312, 35.156574, 26.044407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822777, 34.803162, 25.928854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338193, -0.416961, 0.843664,
		-0.865859, -0.213331, -0.452524,
		0.368665, -0.883535, -0.288882,
		36.933376, 34.538101, 25.842190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205914, 34.745712, 26.237608>,  <36.675312, 35.156574, 26.044407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205914, 34.745712, 26.237608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531227, 34.514652, 26.209642>,  <36.726418, 34.376019, 26.192863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531227, 34.514652, 26.209642>,  <36.205914, 34.745712, 26.237608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531227, 34.514652, 26.209642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274260, -0.486538, 0.829495,
		-0.513181, -0.655436, -0.554120,
		0.813282, -0.577654, -0.069923,
		36.775215, 34.341358, 26.188667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905712, 34.164612, 26.292328>,  <36.205914, 34.745712, 26.237608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905712, 34.164612, 26.292328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284035, 34.102638, 26.406481>,  <36.511028, 34.065453, 26.474972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.284035, 34.102638, 26.406481>,  <35.905712, 34.164612, 26.292328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284035, 34.102638, 26.406481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324711, -0.460096, 0.826362,
		0.003268, -0.874246, -0.485473,
		0.945808, -0.154938, 0.285381,
		36.567776, 34.056156, 26.492096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960743, 33.504601, 26.502651>,  <35.905712, 34.164612, 26.292328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960743, 33.504601, 26.502651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285236, 33.659554, 26.677847>,  <36.479931, 33.752525, 26.782965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285236, 33.659554, 26.677847>,  <35.960743, 33.504601, 26.502651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285236, 33.659554, 26.677847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202232, -0.516951, 0.831784,
		0.548637, -0.763347, -0.341027,
		0.811233, 0.387381, 0.437991,
		36.528606, 33.775768, 26.809244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267529, 32.910110, 26.806683>,  <35.960743, 33.504601, 26.502651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267529, 32.910110, 26.806683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.443516, 33.224827, 26.979836>,  <36.549107, 33.413658, 27.083727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.443516, 33.224827, 26.979836>,  <36.267529, 32.910110, 26.806683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443516, 33.224827, 26.979836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021600, -0.491175, 0.870793,
		0.897754, -0.373771, -0.233096,
		0.439968, 0.786792, 0.432881,
		36.575508, 33.460865, 27.109699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835632, 32.612270, 27.199633>,  <36.267529, 32.910110, 26.806683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835632, 32.612270, 27.199633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746864, 32.970787, 27.353212>,  <36.693604, 33.185898, 27.445360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746864, 32.970787, 27.353212>,  <36.835632, 32.612270, 27.199633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746864, 32.970787, 27.353212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082850, -0.409675, 0.908461,
		0.971539, 0.169794, 0.165172,
		-0.221919, 0.896290, 0.383948,
		36.680290, 33.239674, 27.468397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232346, 32.654755, 27.734756>,  <36.835632, 32.612270, 27.199633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232346, 32.654755, 27.734756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972103, 32.943478, 27.829161>,  <36.815956, 33.116711, 27.885803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.972103, 32.943478, 27.829161>,  <37.232346, 32.654755, 27.734756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972103, 32.943478, 27.829161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052236, -0.267510, 0.962138,
		0.757615, 0.638303, 0.136340,
		-0.650608, 0.721809, 0.236012,
		36.776920, 33.160019, 27.899963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565334, 33.067089, 28.270353>,  <37.232346, 32.654755, 27.734756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565334, 33.067089, 28.270353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.174427, 33.151104, 28.281925>,  <36.939884, 33.201511, 28.288868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.174427, 33.151104, 28.281925>,  <37.565334, 33.067089, 28.270353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174427, 33.151104, 28.281925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034859, 0.024574, 0.999090,
		0.209135, 0.977384, -0.031337,
		-0.977265, 0.210037, 0.028931,
		36.881248, 33.214115, 28.290604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521507, 33.642971, 28.660181>,  <37.565334, 33.067089, 28.270353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521507, 33.642971, 28.660181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161934, 33.467754, 28.662703>,  <36.946190, 33.362625, 28.664215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.161934, 33.467754, 28.662703>,  <37.521507, 33.642971, 28.660181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161934, 33.467754, 28.662703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010139, 0.035182, 0.999330,
		-0.437967, 0.898267, -0.036067,
		-0.898934, -0.438039, 0.006301,
		36.892254, 33.336342, 28.664593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991535, 34.036175, 29.008663>,  <37.521507, 33.642971, 28.660181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991535, 34.036175, 29.008663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911125, 33.646420, 29.048979>,  <36.862877, 33.412567, 29.073168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911125, 33.646420, 29.048979>,  <36.991535, 34.036175, 29.008663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911125, 33.646420, 29.048979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175469, 0.137041, 0.974900,
		-0.963742, 0.178297, -0.198524,
		-0.201028, -0.974387, 0.100787,
		36.850819, 33.354103, 29.079214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665478, 33.993710, 29.581625>,  <36.991535, 34.036175, 29.008663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665478, 33.993710, 29.581625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.672806, 33.595177, 29.548203>,  <36.677200, 33.356056, 29.528149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.672806, 33.595177, 29.548203>,  <36.665478, 33.993710, 29.581625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672806, 33.595177, 29.548203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014806, -0.083289, 0.996415,
		-0.999723, -0.019488, 0.013226,
		0.018317, -0.996335, -0.083555,
		36.678299, 33.296276, 29.523136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160496, 33.706203, 30.130976>,  <36.665478, 33.993710, 29.581625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160496, 33.706203, 30.130976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.424767, 33.426342, 30.022173>,  <36.583328, 33.258423, 29.956892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.424767, 33.426342, 30.022173>,  <36.160496, 33.706203, 30.130976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424767, 33.426342, 30.022173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073267, -0.300520, 0.950957,
		-0.747087, -0.648204, -0.147285,
		0.660676, -0.699657, -0.272006,
		36.622971, 33.216446, 29.940571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958824, 33.154099, 30.592924>,  <36.160496, 33.706203, 30.130976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958824, 33.154099, 30.592924> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325275, 33.056740, 30.465509>,  <36.545147, 32.998325, 30.389061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325275, 33.056740, 30.465509>,  <35.958824, 33.154099, 30.592924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325275, 33.056740, 30.465509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257691, -0.251125, 0.933023,
		-0.307088, -0.936853, -0.167342,
		0.916129, -0.243397, -0.318536,
		36.600113, 32.983723, 30.369949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090179, 32.429764, 30.861462>,  <35.958824, 33.154099, 30.592924>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090179, 32.429764, 30.861462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439774, 32.610527, 30.789993>,  <36.649532, 32.718987, 30.747112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.439774, 32.610527, 30.789993>,  <36.090179, 32.429764, 30.861462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439774, 32.610527, 30.789993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289514, -0.188927, 0.938343,
		0.390292, -0.871827, -0.295954,
		0.873987, 0.451911, -0.178669,
		36.701969, 32.746101, 30.736393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666218, 32.009911, 31.150885>,  <36.090179, 32.429764, 30.861462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666218, 32.009911, 31.150885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.821243, 32.374588, 31.096315>,  <36.914257, 32.593395, 31.063574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.821243, 32.374588, 31.096315>,  <36.666218, 32.009911, 31.150885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821243, 32.374588, 31.096315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542593, -0.105969, 0.833285,
		0.745243, -0.396972, -0.535748,
		0.387564, 0.911693, -0.136421,
		36.937511, 32.648094, 31.055389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428459, 31.918972, 31.302395>,  <36.666218, 32.009911, 31.150885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428459, 31.918972, 31.302395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352520, 32.311272, 31.320673>,  <37.306957, 32.546650, 31.331640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.352520, 32.311272, 31.320673>,  <37.428459, 31.918972, 31.302395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352520, 32.311272, 31.320673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531143, 0.063446, 0.844904,
		0.825740, 0.184672, -0.532963,
		-0.189844, 0.980750, 0.045697,
		37.295567, 32.605495, 31.334383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060020, 32.133633, 31.506296>,  <37.428459, 31.918972, 31.302395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060020, 32.133633, 31.506296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.797955, 32.416882, 31.611610>,  <37.640717, 32.586830, 31.674799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.797955, 32.416882, 31.611610>,  <38.060020, 32.133633, 31.506296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797955, 32.416882, 31.611610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568866, 0.233072, 0.788714,
		0.497143, 0.666512, -0.555528,
		-0.655165, 0.708124, 0.263286,
		37.601406, 32.629318, 31.690596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492790, 32.779964, 31.600294>,  <38.060020, 32.133633, 31.506296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492790, 32.779964, 31.600294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146442, 32.851360, 31.787233>,  <37.938633, 32.894199, 31.899397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.146442, 32.851360, 31.787233>,  <38.492790, 32.779964, 31.600294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146442, 32.851360, 31.787233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498188, 0.392802, 0.772991,
		-0.045604, 0.902135, -0.429037,
		-0.865869, 0.178489, 0.467347,
		37.886681, 32.904907, 31.927437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507347, 33.538403, 31.694059>,  <38.492790, 32.779964, 31.600294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507347, 33.538403, 31.694059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291359, 33.354656, 31.976170>,  <38.161766, 33.244408, 32.145435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291359, 33.354656, 31.976170>,  <38.507347, 33.538403, 31.694059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291359, 33.354656, 31.976170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658619, 0.291132, 0.693876,
		-0.524073, 0.839180, 0.145346,
		-0.539971, -0.459369, 0.705274,
		38.129368, 33.216846, 32.187752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821095, 33.770264, 32.389645>,  <38.507347, 33.538403, 31.694059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821095, 33.770264, 32.389645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.075325, 33.999580, 32.596481>,  <39.227863, 34.137169, 32.720581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.075325, 33.999580, 32.596481>,  <38.821095, 33.770264, 32.389645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075325, 33.999580, 32.596481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363346, 0.368840, -0.855533,
		-0.681190, 0.731640, 0.026125,
		0.635578, 0.573288, 0.517089,
		39.265999, 34.171566, 32.751610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904507, 34.331249, 32.031311>,  <38.821095, 33.770264, 32.389645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904507, 34.331249, 32.031311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225403, 34.329128, 32.270103>,  <39.417938, 34.327854, 32.413380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.225403, 34.329128, 32.270103>,  <38.904507, 34.331249, 32.031311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225403, 34.329128, 32.270103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545302, 0.413569, -0.729113,
		-0.243029, 0.910457, 0.334671,
		0.802236, -0.005301, 0.596983,
		39.466072, 34.327538, 32.449200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082729, 35.044361, 32.144424>,  <38.904507, 34.331249, 32.031311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082729, 35.044361, 32.144424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.389027, 34.788891, 32.174728>,  <39.572803, 34.635609, 32.192913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.389027, 34.788891, 32.174728>,  <39.082729, 35.044361, 32.144424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389027, 34.788891, 32.174728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446920, 0.443689, -0.776790,
		0.462499, 0.628679, 0.625186,
		0.765740, -0.638673, 0.075763,
		39.618748, 34.597290, 32.197456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616440, 35.377331, 31.805189>,  <39.082729, 35.044361, 32.144424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616440, 35.377331, 31.805189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.858421, 35.061382, 31.845459>,  <40.003609, 34.871815, 31.869621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.858421, 35.061382, 31.845459>,  <39.616440, 35.377331, 31.805189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.858421, 35.061382, 31.845459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542582, 0.316376, -0.778146,
		0.582785, 0.525365, 0.619963,
		0.604952, -0.789872, 0.100675,
		40.039906, 34.824421, 31.875662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471176, 35.562500, 31.861753>,  <39.616440, 35.377331, 31.805189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471176, 35.562500, 31.861753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373734, 35.198833, 31.726652>,  <40.315269, 34.980633, 31.645592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373734, 35.198833, 31.726652>,  <40.471176, 35.562500, 31.861753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373734, 35.198833, 31.726652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531901, 0.165967, -0.830383,
		0.811011, -0.381936, 0.443155,
		-0.243604, -0.909164, -0.337753,
		40.300652, 34.926083, 31.625326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031494, 35.424007, 31.445921>,  <40.471176, 35.562500, 31.861753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031494, 35.424007, 31.445921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.777889, 35.133099, 31.340769>,  <40.625729, 34.958553, 31.277678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.777889, 35.133099, 31.340769>,  <41.031494, 35.424007, 31.445921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777889, 35.133099, 31.340769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438557, -0.058152, -0.896820,
		0.636945, -0.683881, 0.355819,
		-0.634010, -0.727272, -0.262881,
		40.587685, 34.914917, 31.261904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491440, 34.928089, 31.025869>,  <41.031494, 35.424007, 31.445921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491440, 34.928089, 31.025869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.114704, 34.840847, 30.923599>,  <40.888664, 34.788502, 30.862238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.114704, 34.840847, 30.923599>,  <41.491440, 34.928089, 31.025869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114704, 34.840847, 30.923599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273481, -0.055256, -0.960289,
		0.195320, -0.974359, 0.111691,
		-0.941838, -0.218109, -0.255675,
		40.832153, 34.775414, 30.846897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.565414, 34.294991, 30.664751>,  <41.491440, 34.928089, 31.025869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.565414, 34.294991, 30.664751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.230686, 34.488956, 30.563099>,  <41.029850, 34.605335, 30.502108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.230686, 34.488956, 30.563099>,  <41.565414, 34.294991, 30.664751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230686, 34.488956, 30.563099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238968, -0.094105, -0.966456,
		-0.492563, -0.869484, -0.037129,
		-0.836825, 0.484913, -0.254132,
		40.979637, 34.634430, 30.486858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185432, 33.823410, 30.255896>,  <41.565414, 34.294991, 30.664751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185432, 33.823410, 30.255896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.041557, 34.180969, 30.148884>,  <40.955231, 34.395504, 30.084677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.041557, 34.180969, 30.148884>,  <41.185432, 33.823410, 30.255896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041557, 34.180969, 30.148884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203692, -0.204582, -0.957421,
		-0.910568, -0.398867, -0.108493,
		-0.359688, 0.893897, -0.267532,
		40.933651, 34.449139, 30.068624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846443, 33.659698, 29.589676>,  <41.185432, 33.823410, 30.255896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846443, 33.659698, 29.589676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.886353, 34.057617, 29.581425>,  <40.910297, 34.296368, 29.576473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.886353, 34.057617, 29.581425>,  <40.846443, 33.659698, 29.589676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886353, 34.057617, 29.581425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076037, -0.013049, -0.997019,
		-0.992101, 0.101042, 0.074339,
		0.099770, 0.994796, -0.020629,
		40.916283, 34.356056, 29.575235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217052, 33.925503, 29.193501>,  <40.846443, 33.659698, 29.589676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217052, 33.925503, 29.193501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.481441, 34.225666, 29.193569>,  <40.640076, 34.405766, 29.193609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.481441, 34.225666, 29.193569>,  <40.217052, 33.925503, 29.193501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481441, 34.225666, 29.193569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124643, 0.110011, -0.986084,
		-0.739986, 0.651754, 0.166248,
		0.660973, 0.750410, 0.000169,
		40.679733, 34.450790, 29.193621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039417, 34.524635, 28.848497>,  <40.217052, 33.925503, 29.193501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039417, 34.524635, 28.848497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.436989, 34.568554, 28.845659>,  <40.675533, 34.594906, 28.843956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.436989, 34.568554, 28.845659>,  <40.039417, 34.524635, 28.848497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436989, 34.568554, 28.845659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000849, -0.056839, -0.998383,
		-0.110026, 0.992327, -0.056401,
		0.993928, 0.109801, -0.007096,
		40.735168, 34.601494, 28.843531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171299, 35.157360, 28.557936>,  <40.039417, 34.524635, 28.848497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171299, 35.157360, 28.557936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.448746, 34.879391, 28.482073>,  <40.615215, 34.712608, 28.436554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.448746, 34.879391, 28.482073>,  <40.171299, 35.157360, 28.557936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448746, 34.879391, 28.482073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256758, 0.007488, -0.966447,
		0.673030, 0.719042, -0.173234,
		0.693618, -0.694927, -0.189659,
		40.656830, 34.670914, 28.425175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728718, 35.411911, 28.158316>,  <40.171299, 35.157360, 28.557936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728718, 35.411911, 28.158316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.654057, 35.027264, 28.077866>,  <40.609261, 34.796474, 28.029596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.654057, 35.027264, 28.077866>,  <40.728718, 35.411911, 28.158316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654057, 35.027264, 28.077866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173351, 0.233747, -0.956719,
		0.967011, -0.143710, -0.210327,
		-0.186653, -0.961618, -0.201124,
		40.598061, 34.738777, 28.017529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223751, 35.213654, 27.658226>,  <40.728718, 35.411911, 28.158316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223751, 35.213654, 27.658226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.903038, 34.979042, 27.612387>,  <40.710609, 34.838276, 27.584883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.903038, 34.979042, 27.612387>,  <41.223751, 35.213654, 27.658226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903038, 34.979042, 27.612387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067430, 0.279319, -0.957828,
		0.593803, -0.760240, -0.263502,
		-0.801780, -0.586529, -0.114597,
		40.662502, 34.803085, 27.578007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346680, 34.872524, 27.034250>,  <41.223751, 35.213654, 27.658226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346680, 34.872524, 27.034250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.958237, 34.847805, 27.126450>,  <40.725170, 34.832973, 27.181770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.958237, 34.847805, 27.126450>,  <41.346680, 34.872524, 27.034250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958237, 34.847805, 27.126450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238518, 0.282203, -0.929231,
		-0.007627, -0.957362, -0.288788,
		-0.971108, -0.061794, 0.230500,
		40.666904, 34.829266, 27.195601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175247, 34.459793, 26.523830>,  <41.346680, 34.872524, 27.034250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175247, 34.459793, 26.523830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.842518, 34.640793, 26.652395>,  <40.642879, 34.749393, 26.729534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.842518, 34.640793, 26.652395>,  <41.175247, 34.459793, 26.523830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842518, 34.640793, 26.652395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220413, 0.262159, -0.939516,
		-0.509394, -0.852358, -0.118333,
		-0.831826, 0.452502, 0.321413,
		40.592968, 34.776543, 26.748819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687496, 34.249859, 26.069389>,  <41.175247, 34.459793, 26.523830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687496, 34.249859, 26.069389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.526127, 34.578053, 26.231409>,  <40.429306, 34.774967, 26.328621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.526127, 34.578053, 26.231409>,  <40.687496, 34.249859, 26.069389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526127, 34.578053, 26.231409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262444, 0.320315, -0.910231,
		-0.876570, -0.473508, 0.086108,
		-0.403421, 0.820480, 0.405048,
		40.405102, 34.824196, 26.352924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.079422, 34.396133, 25.661722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142097, 34.741787, 25.853022>,  <40.179703, 34.949181, 25.967802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142097, 34.741787, 25.853022>,  <40.079422, 34.396133, 25.661722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142097, 34.741787, 25.853022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184086, 0.501298, -0.845466,
		-0.970341, 0.044433, 0.237621,
		0.156686, 0.864133, 0.478251,
		40.189102, 35.001026, 25.996496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534031, 34.826385, 25.581034>,  <40.079422, 34.396133, 25.661722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534031, 34.826385, 25.581034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.829491, 35.087738, 25.647345>,  <40.006767, 35.244549, 25.687132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.829491, 35.087738, 25.647345>,  <39.534031, 34.826385, 25.581034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829491, 35.087738, 25.647345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172350, 0.420812, -0.890625,
		-0.651681, 0.629290, 0.423445,
		0.738652, 0.653384, 0.165777,
		40.051086, 35.283752, 25.697079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133434, 35.463661, 25.406860>,  <39.534031, 34.826385, 25.581034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133434, 35.463661, 25.406860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.525089, 35.544880, 25.403772>,  <39.760082, 35.593613, 25.401920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.525089, 35.544880, 25.403772>,  <39.133434, 35.463661, 25.406860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525089, 35.544880, 25.403772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133599, 0.614691, -0.777371,
		-0.153099, 0.762185, 0.628995,
		0.979138, 0.203048, -0.007719,
		39.818832, 35.605793, 25.401457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176277, 36.183495, 25.472099>,  <39.133434, 35.463661, 25.406860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176277, 36.183495, 25.472099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536430, 36.078796, 25.333073>,  <39.752522, 36.015976, 25.249657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.536430, 36.078796, 25.333073>,  <39.176277, 36.183495, 25.472099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536430, 36.078796, 25.333073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219441, 0.416604, -0.882205,
		0.375709, 0.870592, 0.317666,
		0.900382, -0.261744, -0.347566,
		39.806545, 36.000275, 25.228804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457497, 36.816673, 25.123892>,  <39.176277, 36.183495, 25.472099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457497, 36.816673, 25.123892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661362, 36.505608, 24.976662>,  <39.783680, 36.318966, 24.888323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661362, 36.505608, 24.976662>,  <39.457497, 36.816673, 25.123892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661362, 36.505608, 24.976662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087552, 0.378709, -0.921365,
		0.855909, 0.501809, 0.124927,
		0.509661, -0.777668, -0.368075,
		39.814259, 36.272308, 24.866240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023903, 37.061092, 24.737785>,  <39.457497, 36.816673, 25.123892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023903, 37.061092, 24.737785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.971680, 36.692715, 24.590912>,  <39.940346, 36.471687, 24.502789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.971680, 36.692715, 24.590912>,  <40.023903, 37.061092, 24.737785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971680, 36.692715, 24.590912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064426, 0.377450, -0.923786,
		0.989346, -0.096948, -0.108610,
		-0.130554, -0.920941, -0.367183,
		39.932514, 36.416431, 24.480757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398502, 37.090214, 24.198904>,  <40.023903, 37.061092, 24.737785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398502, 37.090214, 24.198904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.138321, 36.795799, 24.123888>,  <39.982212, 36.619152, 24.078878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.138321, 36.795799, 24.123888>,  <40.398502, 37.090214, 24.198904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138321, 36.795799, 24.123888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200098, 0.404241, -0.892496,
		0.732719, -0.542996, -0.410217,
		-0.650449, -0.736032, -0.187542,
		39.943188, 36.574989, 24.067625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643719, 36.778824, 23.638943>,  <40.398502, 37.090214, 24.198904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643719, 36.778824, 23.638943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257942, 36.673340, 23.645958>,  <40.026474, 36.610050, 23.650167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.257942, 36.673340, 23.645958>,  <40.643719, 36.778824, 23.638943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257942, 36.673340, 23.645958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097993, 0.295185, -0.950402,
		0.245448, -0.918328, -0.310531,
		-0.964444, -0.263704, 0.017537,
		39.968609, 36.594227, 23.651218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606335, 36.268101, 23.223537>,  <40.643719, 36.778824, 23.638943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606335, 36.268101, 23.223537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.219406, 36.366302, 23.198215>,  <39.987247, 36.425224, 23.183022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.219406, 36.366302, 23.198215>,  <40.606335, 36.268101, 23.223537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.219406, 36.366302, 23.198215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086258, 0.083879, -0.992736,
		-0.238415, -0.965759, -0.102315,
		-0.967325, 0.245508, -0.063306,
		39.929207, 36.439957, 23.179224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414474, 36.013489, 22.595564>,  <40.606335, 36.268101, 23.223537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414474, 36.013489, 22.595564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.117390, 36.274376, 22.656216>,  <39.939140, 36.430908, 22.692606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.117390, 36.274376, 22.656216>,  <40.414474, 36.013489, 22.595564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117390, 36.274376, 22.656216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145807, 0.063486, -0.987274,
		-0.653545, -0.755368, 0.047947,
		-0.742711, 0.652219, 0.151629,
		39.894577, 36.470043, 22.701704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926907, 35.921490, 22.055208>,  <40.414474, 36.013489, 22.595564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926907, 35.921490, 22.055208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.797283, 36.268883, 22.205263>,  <39.719509, 36.477318, 22.295296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.797283, 36.268883, 22.205263>,  <39.926907, 35.921490, 22.055208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797283, 36.268883, 22.205263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327494, 0.269034, -0.905742,
		-0.887545, -0.416365, 0.197241,
		-0.324054, 0.868482, 0.375137,
		39.700066, 36.529427, 22.317804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174404, 36.012245, 21.815748>,  <39.926907, 35.921490, 22.055208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174404, 36.012245, 21.815748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313007, 36.370041, 21.928753>,  <39.396172, 36.584721, 21.996555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313007, 36.370041, 21.928753>,  <39.174404, 36.012245, 21.815748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313007, 36.370041, 21.928753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175807, 0.357763, -0.917114,
		-0.921424, 0.268123, 0.281227,
		0.346511, 0.894492, 0.282514,
		39.416962, 36.638390, 22.013508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670628, 36.530289, 21.498022>,  <39.174404, 36.012245, 21.815748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670628, 36.530289, 21.498022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.005184, 36.726391, 21.596085>,  <39.205917, 36.844051, 21.654922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.005184, 36.726391, 21.596085>,  <38.670628, 36.530289, 21.498022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005184, 36.726391, 21.596085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055009, 0.369920, -0.927434,
		-0.545368, 0.789182, 0.282429,
		0.836390, 0.490256, 0.245155,
		39.256100, 36.873466, 21.669632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530025, 37.152267, 21.341244>,  <38.670628, 36.530289, 21.498022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530025, 37.152267, 21.341244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929253, 37.131489, 21.327570>,  <39.168789, 37.119022, 21.319365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929253, 37.131489, 21.327570>,  <38.530025, 37.152267, 21.341244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929253, 37.131489, 21.327570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003158, 0.591361, -0.806401,
		0.062107, 0.804732, 0.590380,
		0.998065, -0.051947, -0.034186,
		39.228672, 37.115906, 21.317314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798443, 37.771942, 21.390961>,  <38.530025, 37.152267, 21.341244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798443, 37.771942, 21.390961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.124603, 37.619564, 21.216602>,  <39.320297, 37.528137, 21.111988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.124603, 37.619564, 21.216602>,  <38.798443, 37.771942, 21.390961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124603, 37.619564, 21.216602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049271, 0.704568, -0.707924,
		0.576800, 0.598717, 0.555734,
		0.815398, -0.380949, -0.435894,
		39.369225, 37.505280, 21.085835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157352, 38.338036, 21.223232>,  <38.798443, 37.771942, 21.390961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157352, 38.338036, 21.223232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317139, 38.056553, 20.988209>,  <39.413010, 37.887665, 20.847195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.317139, 38.056553, 20.988209>,  <39.157352, 38.338036, 21.223232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317139, 38.056553, 20.988209> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051483, 0.657127, -0.752019,
		0.915300, 0.270159, 0.298732,
		0.399470, -0.703703, -0.587560,
		39.436981, 37.845444, 20.811941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734898, 38.638206, 20.928162>,  <39.157352, 38.338036, 21.223232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734898, 38.638206, 20.928162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626362, 38.344379, 20.679392>,  <39.561241, 38.168083, 20.530130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.626362, 38.344379, 20.679392>,  <39.734898, 38.638206, 20.928162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626362, 38.344379, 20.679392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113809, 0.617148, -0.778573,
		0.955731, -0.282038, -0.083856,
		-0.271339, -0.734563, -0.621926,
		39.544960, 38.124012, 20.492815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135525, 38.785347, 20.393496>,  <39.734898, 38.638206, 20.928162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135525, 38.785347, 20.393496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888371, 38.518997, 20.226248>,  <39.740078, 38.359188, 20.125900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888371, 38.518997, 20.226248>,  <40.135525, 38.785347, 20.393496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888371, 38.518997, 20.226248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052887, 0.495375, -0.867068,
		0.784484, -0.557865, -0.270871,
		-0.617890, -0.665875, -0.418118,
		39.703003, 38.319233, 20.100813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300953, 38.691113, 19.677477>,  <40.135525, 38.785347, 20.393496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300953, 38.691113, 19.677477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.919292, 38.571629, 19.685158>,  <39.690296, 38.499939, 19.689766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.919292, 38.571629, 19.685158>,  <40.300953, 38.691113, 19.677477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919292, 38.571629, 19.685158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132026, 0.362417, -0.922617,
		0.268636, -0.882851, -0.385238,
		-0.954151, -0.298709, 0.019202,
		39.633049, 38.482014, 19.690918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164085, 38.436783, 18.998762>,  <40.300953, 38.691113, 19.677477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164085, 38.436783, 18.998762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.796795, 38.507038, 19.140753>,  <39.576420, 38.549191, 19.225946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.796795, 38.507038, 19.140753>,  <40.164085, 38.436783, 18.998762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796795, 38.507038, 19.140753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273023, 0.368565, -0.888604,
		-0.286907, -0.912858, -0.290473,
		-0.918228, 0.175641, 0.354976,
		39.521328, 38.559731, 19.247246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734863, 38.314480, 18.474895>,  <40.164085, 38.436783, 18.998762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734863, 38.314480, 18.474895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501801, 38.537994, 18.710955>,  <39.361965, 38.672104, 18.852591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501801, 38.537994, 18.710955>,  <39.734863, 38.314480, 18.474895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501801, 38.537994, 18.710955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348937, 0.483808, -0.802604,
		-0.734001, -0.673564, -0.086912,
		-0.582654, 0.558785, 0.590147,
		39.327003, 38.705631, 18.887999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968819, 38.174267, 18.324602>,  <39.734863, 38.314480, 18.474895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968819, 38.174267, 18.324602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027485, 38.526562, 18.504730>,  <39.062683, 38.737938, 18.612808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027485, 38.526562, 18.504730>,  <38.968819, 38.174267, 18.324602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027485, 38.526562, 18.504730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410637, 0.468374, -0.782306,
		-0.899926, -0.070182, 0.430358,
		0.146665, 0.880738, 0.450321,
		39.071484, 38.790783, 18.639826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344879, 38.546551, 18.384241>,  <38.968819, 38.174267, 18.324602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344879, 38.546551, 18.384241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.646988, 38.808170, 18.367340>,  <38.828251, 38.965141, 18.357201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.646988, 38.808170, 18.367340>,  <38.344879, 38.546551, 18.384241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646988, 38.808170, 18.367340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313943, 0.304432, -0.899311,
		-0.575334, 0.692486, 0.435263,
		0.755268, 0.654052, -0.042251,
		38.873569, 39.004387, 18.354664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177773, 39.172970, 18.048471>,  <38.344879, 38.546551, 18.384241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177773, 39.172970, 18.048471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.573139, 39.124634, 18.011732>,  <38.810360, 39.095631, 17.989689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.573139, 39.124634, 18.011732>,  <38.177773, 39.172970, 18.048471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573139, 39.124634, 18.011732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043620, 0.353462, -0.934431,
		0.145385, 0.927611, 0.344096,
		0.988413, -0.120843, -0.091851,
		38.869663, 39.088383, 17.984177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674480, 38.611622, 17.970844>,  <38.177773, 39.172970, 18.048471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674480, 38.611622, 17.970844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.393200, 38.411823, 17.768454>,  <37.224430, 38.291943, 17.647018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.393200, 38.411823, 17.768454>,  <37.674480, 38.611622, 17.970844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393200, 38.411823, 17.768454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302580, -0.433745, 0.848711,
		-0.643393, 0.749912, 0.153872,
		-0.703200, -0.499497, -0.505977,
		37.182240, 38.261974, 17.616661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017509, 38.847206, 18.235811>,  <37.674480, 38.611622, 17.970844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017509, 38.847206, 18.235811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007030, 38.473576, 18.093370>,  <37.000744, 38.249397, 18.007906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007030, 38.473576, 18.093370>,  <37.017509, 38.847206, 18.235811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007030, 38.473576, 18.093370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252849, -0.338449, 0.906377,
		-0.967151, 0.113788, -0.227313,
		-0.026201, -0.934079, -0.356103,
		36.999168, 38.193352, 17.986540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450157, 38.540157, 18.529871>,  <37.017509, 38.847206, 18.235811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450157, 38.540157, 18.529871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621456, 38.201488, 18.403532>,  <36.724236, 37.998287, 18.327728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.621456, 38.201488, 18.403532>,  <36.450157, 38.540157, 18.529871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621456, 38.201488, 18.403532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316889, -0.468025, 0.824945,
		-0.846279, -0.253190, -0.468729,
		0.428244, -0.846669, -0.315847,
		36.749931, 37.947487, 18.308779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002739, 38.101166, 18.692469>,  <36.450157, 38.540157, 18.529871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002739, 38.101166, 18.692469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343460, 37.894859, 18.655762>,  <36.547894, 37.771076, 18.633738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.343460, 37.894859, 18.655762>,  <36.002739, 38.101166, 18.692469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343460, 37.894859, 18.655762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233311, -0.530336, 0.815052,
		-0.469041, -0.672853, -0.572075,
		0.851802, -0.515764, -0.091766,
		36.598999, 37.740131, 18.628231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815418, 37.532993, 18.994329>,  <36.002739, 38.101166, 18.692469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815418, 37.532993, 18.994329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213524, 37.498276, 18.976826>,  <36.452389, 37.477444, 18.966324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213524, 37.498276, 18.976826>,  <35.815418, 37.532993, 18.994329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213524, 37.498276, 18.976826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006208, -0.392487, 0.919737,
		-0.097004, -0.915653, -0.390090,
		0.995265, -0.086796, -0.043757,
		36.512104, 37.472237, 18.963699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935364, 36.857708, 19.149817>,  <35.815418, 37.532993, 18.994329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935364, 36.857708, 19.149817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267681, 37.058128, 19.246750>,  <36.467072, 37.178383, 19.304911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267681, 37.058128, 19.246750>,  <35.935364, 36.857708, 19.149817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267681, 37.058128, 19.246750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023728, -0.466887, 0.883999,
		0.556072, -0.728672, -0.399776,
		0.830795, 0.501052, 0.242333,
		36.516918, 37.208443, 19.319450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509415, 36.393970, 19.408852>,  <35.935364, 36.857708, 19.149817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509415, 36.393970, 19.408852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592125, 36.754200, 19.561802>,  <36.641750, 36.970337, 19.653572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.592125, 36.754200, 19.561802>,  <36.509415, 36.393970, 19.408852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592125, 36.754200, 19.561802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030557, -0.396575, 0.917494,
		0.977910, -0.178034, -0.109522,
		0.206779, 0.900573, 0.382375,
		36.654160, 37.024372, 19.676514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927166, 36.182198, 19.938782>,  <36.509415, 36.393970, 19.408852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927166, 36.182198, 19.938782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853050, 36.564392, 20.030624>,  <36.808582, 36.793709, 20.085730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853050, 36.564392, 20.030624>,  <36.927166, 36.182198, 19.938782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853050, 36.564392, 20.030624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159586, -0.259807, 0.952382,
		0.969640, 0.139822, 0.200620,
		-0.185286, 0.955484, 0.229606,
		36.797462, 36.851036, 20.099506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406506, 36.406460, 20.404518>,  <36.927166, 36.182198, 19.938782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406506, 36.406460, 20.404518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102325, 36.659676, 20.462458>,  <36.919819, 36.811604, 20.497221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.102325, 36.659676, 20.462458>,  <37.406506, 36.406460, 20.404518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102325, 36.659676, 20.462458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019945, -0.245717, 0.969136,
		0.649089, 0.734091, 0.199481,
		-0.760451, 0.633035, 0.144851,
		36.874191, 36.849586, 20.505913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587883, 36.882023, 20.817566>,  <37.406506, 36.406460, 20.404518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587883, 36.882023, 20.817566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192554, 36.914082, 20.869419>,  <36.955357, 36.933319, 20.900530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.192554, 36.914082, 20.869419>,  <37.587883, 36.882023, 20.817566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192554, 36.914082, 20.869419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121031, -0.104187, 0.987166,
		0.092629, 0.991323, 0.093269,
		-0.988317, 0.080152, 0.129632,
		36.896061, 36.938126, 20.908308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448071, 37.465164, 21.293062>,  <37.587883, 36.882023, 20.817566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448071, 37.465164, 21.293062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134541, 37.217129, 21.306385>,  <36.946423, 37.068310, 21.314379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.134541, 37.217129, 21.306385>,  <37.448071, 37.465164, 21.293062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134541, 37.217129, 21.306385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117377, -0.095277, 0.988506,
		-0.609784, 0.778728, 0.147464,
		-0.783828, -0.620085, 0.033307,
		36.899391, 37.031105, 21.316378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350510, 37.545364, 21.935747>,  <37.448071, 37.465164, 21.293062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350510, 37.545364, 21.935747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128338, 37.233120, 21.821104>,  <36.995037, 37.045773, 21.752317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128338, 37.233120, 21.821104>,  <37.350510, 37.545364, 21.935747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128338, 37.233120, 21.821104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041764, -0.370413, 0.927928,
		-0.830517, 0.503425, 0.238339,
		-0.555426, -0.780614, -0.286609,
		36.961712, 36.998936, 21.735121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892876, 37.473335, 22.512152>,  <37.350510, 37.545364, 21.935747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892876, 37.473335, 22.512152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903969, 37.117889, 22.329027>,  <36.910625, 36.904621, 22.219152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903969, 37.117889, 22.329027>,  <36.892876, 37.473335, 22.512152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903969, 37.117889, 22.329027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125625, -0.451259, 0.883506,
		-0.991690, -0.082013, 0.099119,
		0.027730, -0.888616, -0.457812,
		36.912289, 36.851303, 22.191683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588280, 37.236580, 23.028845>,  <36.892876, 37.473335, 22.512152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588280, 37.236580, 23.028845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701008, 36.924183, 22.805908>,  <36.768642, 36.736744, 22.672146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701008, 36.924183, 22.805908>,  <36.588280, 37.236580, 23.028845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701008, 36.924183, 22.805908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242144, -0.504189, 0.828951,
		-0.928411, -0.368568, 0.047025,
		0.281815, -0.780994, -0.557341,
		36.785553, 36.689884, 22.638706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204014, 36.653416, 23.031248>,  <36.588280, 37.236580, 23.028845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204014, 36.653416, 23.031248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.538925, 36.472115, 22.908915>,  <36.739872, 36.363335, 22.835514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.538925, 36.472115, 22.908915>,  <36.204014, 36.653416, 23.031248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538925, 36.472115, 22.908915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101989, -0.678978, 0.727040,
		-0.537185, -0.577542, -0.614718,
		0.837276, -0.453250, -0.305833,
		36.790108, 36.336140, 22.817163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119827, 35.948269, 23.009007>,  <36.204014, 36.653416, 23.031248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119827, 35.948269, 23.009007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.513718, 35.992756, 23.062593>,  <36.750053, 36.019447, 23.094746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.513718, 35.992756, 23.062593>,  <36.119827, 35.948269, 23.009007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513718, 35.992756, 23.062593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021831, -0.684484, 0.728701,
		0.172742, -0.720495, -0.671600,
		0.984725, 0.111215, 0.133968,
		36.809135, 36.026119, 23.102783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408817, 35.337379, 23.084593>,  <36.119827, 35.948269, 23.009007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408817, 35.337379, 23.084593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.702442, 35.556007, 23.245798>,  <36.878616, 35.687183, 23.342522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.702442, 35.556007, 23.245798>,  <36.408817, 35.337379, 23.084593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.702442, 35.556007, 23.245798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084052, -0.662028, 0.744751,
		0.673860, -0.512819, -0.531910,
		0.734062, 0.546566, 0.403011,
		36.922661, 35.719978, 23.366701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938358, 34.891220, 23.186163>,  <36.408817, 35.337379, 23.084593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938358, 34.891220, 23.186163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.040012, 35.200554, 23.418495>,  <37.101006, 35.386154, 23.557894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.040012, 35.200554, 23.418495>,  <36.938358, 34.891220, 23.186163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040012, 35.200554, 23.418495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197043, -0.629350, 0.751726,
		0.946884, -0.076592, -0.312322,
		0.254136, 0.773338, 0.580829,
		37.116253, 35.432556, 23.592745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572914, 34.610092, 23.486341>,  <36.938358, 34.891220, 23.186163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572914, 34.610092, 23.486341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.491615, 34.939888, 23.697586>,  <37.442837, 35.137768, 23.824333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.491615, 34.939888, 23.697586>,  <37.572914, 34.610092, 23.486341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491615, 34.939888, 23.697586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037498, -0.545528, 0.837253,
		0.978409, 0.150369, 0.141795,
		-0.203250, 0.824493, 0.528111,
		37.430641, 35.187237, 23.856020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001812, 34.520073, 23.997774>,  <37.572914, 34.610092, 23.486341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001812, 34.520073, 23.997774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.703888, 34.759319, 24.116106>,  <37.525135, 34.902866, 24.187105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.703888, 34.759319, 24.116106>,  <38.001812, 34.520073, 23.997774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703888, 34.759319, 24.116106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149922, -0.582004, 0.799246,
		0.650216, 0.550935, 0.523154,
		-0.744810, 0.598115, 0.295831,
		37.480446, 34.938755, 24.204855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.944759, 34.952641, 28.847139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.561935, 34.837265, 28.835550>,  <41.332241, 34.768040, 28.828596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.561935, 34.837265, 28.835550>,  <41.944759, 34.952641, 28.847139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561935, 34.837265, 28.835550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131706, 0.343607, 0.929832,
		-0.258249, 0.893720, -0.366842,
		-0.957059, -0.288443, -0.028972,
		41.274818, 34.750732, 28.826859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559452, 35.457825, 29.187220>,  <41.944759, 34.952641, 28.847139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559452, 35.457825, 29.187220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304073, 35.149960, 29.188765>,  <41.150848, 34.965240, 29.189692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304073, 35.149960, 29.188765>,  <41.559452, 35.457825, 29.187220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304073, 35.149960, 29.188765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259760, 0.220194, 0.940234,
		-0.724509, 0.599283, -0.340509,
		-0.638444, -0.769658, 0.003863,
		41.112541, 34.919064, 29.189924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.120041, 35.653919, 29.610928>,  <41.559452, 35.457825, 29.187220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.120041, 35.653919, 29.610928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.038059, 35.262508, 29.602203>,  <40.988869, 35.027660, 29.596970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.038059, 35.262508, 29.602203>,  <41.120041, 35.653919, 29.610928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038059, 35.262508, 29.602203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352849, 0.053083, 0.934173,
		-0.912957, 0.199159, -0.356152,
		-0.204955, -0.978528, -0.021810,
		40.976574, 34.968948, 29.595661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424789, 35.602364, 29.868002>,  <41.120041, 35.653919, 29.610928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424789, 35.602364, 29.868002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.567379, 35.231285, 29.912369>,  <40.652931, 35.008636, 29.938990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.567379, 35.231285, 29.912369>,  <40.424789, 35.602364, 29.868002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567379, 35.231285, 29.912369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479789, -0.079897, 0.873739,
		-0.801704, -0.364681, -0.473580,
		0.356473, -0.927698, 0.110916,
		40.674320, 34.952976, 29.945644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880348, 35.287281, 30.135164>,  <40.424789, 35.602364, 29.868002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880348, 35.287281, 30.135164> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195496, 35.059731, 30.229525>,  <40.384583, 34.923199, 30.286140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195496, 35.059731, 30.229525>,  <39.880348, 35.287281, 30.135164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195496, 35.059731, 30.229525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318995, -0.049308, 0.946473,
		-0.526794, -0.820943, -0.220317,
		0.787864, -0.568876, 0.235901,
		40.431854, 34.889069, 30.300295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614864, 34.644310, 30.525261>,  <39.880348, 35.287281, 30.135164>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614864, 34.644310, 30.525261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.998463, 34.700272, 30.623857>,  <40.228622, 34.733849, 30.683016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.998463, 34.700272, 30.623857>,  <39.614864, 34.644310, 30.525261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998463, 34.700272, 30.623857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177377, -0.382065, 0.906953,
		0.221062, -0.913484, -0.341582,
		0.958994, 0.139904, 0.246491,
		40.286160, 34.742241, 30.697805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667892, 34.082951, 30.819096>,  <39.614864, 34.644310, 30.525261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667892, 34.082951, 30.819096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.969280, 34.322506, 30.927618>,  <40.150112, 34.466240, 30.992731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.969280, 34.322506, 30.927618>,  <39.667892, 34.082951, 30.819096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.969280, 34.322506, 30.927618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111513, -0.290260, 0.950428,
		0.647954, -0.746375, -0.151919,
		0.753472, 0.598893, 0.271306,
		40.195320, 34.502174, 31.009010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164680, 33.701164, 31.195700>,  <39.667892, 34.082951, 30.819096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164680, 33.701164, 31.195700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.185787, 34.076385, 31.332678>,  <40.198452, 34.301517, 31.414865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.185787, 34.076385, 31.332678>,  <40.164680, 33.701164, 31.195700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185787, 34.076385, 31.332678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180631, -0.328300, 0.927142,
		0.982134, -0.110780, 0.152117,
		0.052769, 0.938055, 0.342445,
		40.201618, 34.357803, 31.435411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520626, 33.623985, 31.888081>,  <40.164680, 33.701164, 31.195700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520626, 33.623985, 31.888081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.386383, 34.000309, 31.907013>,  <40.305836, 34.226105, 31.918371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.386383, 34.000309, 31.907013>,  <40.520626, 33.623985, 31.888081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.386383, 34.000309, 31.907013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294632, -0.152559, 0.943355,
		0.894740, 0.302653, 0.328394,
		-0.335608, 0.940812, 0.047329,
		40.285702, 34.282551, 31.921211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635540, 33.936131, 32.562031>,  <40.520626, 33.623985, 31.888081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635540, 33.936131, 32.562031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315914, 34.139599, 32.433819>,  <40.124138, 34.261681, 32.356892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.315914, 34.139599, 32.433819>,  <40.635540, 33.936131, 32.562031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315914, 34.139599, 32.433819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424825, -0.100424, 0.899688,
		0.425457, 0.855083, 0.296342,
		-0.799068, 0.508672, -0.320534,
		40.076195, 34.292202, 32.337658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575775, 34.341976, 33.143295>,  <40.635540, 33.936131, 32.562031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575775, 34.341976, 33.143295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232952, 34.351879, 32.937447>,  <40.027260, 34.357819, 32.813938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232952, 34.351879, 32.937447>,  <40.575775, 34.341976, 33.143295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232952, 34.351879, 32.937447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514242, -0.102618, 0.851484,
		-0.031731, 0.994413, 0.100680,
		-0.857058, 0.024756, -0.514625,
		39.975834, 34.359306, 32.783058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136211, 34.786484, 33.525990>,  <40.575775, 34.341976, 33.143295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136211, 34.786484, 33.525990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865501, 34.602188, 33.296310>,  <39.703075, 34.491611, 33.158504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.865501, 34.602188, 33.296310>,  <40.136211, 34.786484, 33.525990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865501, 34.602188, 33.296310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623943, -0.054988, 0.779533,
		-0.390735, 0.885830, -0.250260,
		-0.676772, -0.460739, -0.574194,
		39.662468, 34.463966, 33.124054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488338, 35.131992, 33.516262>,  <40.136211, 34.786484, 33.525990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488338, 35.131992, 33.516262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.408112, 34.745628, 33.450794>,  <39.359974, 34.513809, 33.411514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.408112, 34.745628, 33.450794>,  <39.488338, 35.131992, 33.516262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408112, 34.745628, 33.450794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550004, -0.027235, 0.834717,
		-0.810720, 0.257439, -0.525793,
		-0.200569, -0.965910, -0.163672,
		39.347942, 34.455856, 33.401691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827991, 34.945122, 33.371819>,  <39.488338, 35.131992, 33.516262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827991, 34.945122, 33.371819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.033607, 34.659859, 33.562466>,  <39.156975, 34.488701, 33.676853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.033607, 34.659859, 33.562466>,  <38.827991, 34.945122, 33.371819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033607, 34.659859, 33.562466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708995, -0.040502, 0.704050,
		-0.482797, -0.699828, -0.526448,
		0.514036, -0.713162, 0.476620,
		39.187817, 34.445911, 33.705452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000370, 35.202297, 34.051411>,  <38.827991, 34.945122, 33.371819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000370, 35.202297, 34.051411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.830765, 35.501064, 34.256279>,  <38.729000, 35.680325, 34.379200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.830765, 35.501064, 34.256279>,  <39.000370, 35.202297, 34.051411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830765, 35.501064, 34.256279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638023, 0.155004, -0.754255,
		-0.642758, -0.646592, 0.410829,
		-0.424015, 0.746922, 0.512171,
		38.703560, 35.725140, 34.409931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323738, 35.097130, 33.962772>,  <39.000370, 35.202297, 34.051411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323738, 35.097130, 33.962772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.391285, 35.482910, 34.044075>,  <38.431812, 35.714378, 34.092857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.391285, 35.482910, 34.044075>,  <38.323738, 35.097130, 33.962772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391285, 35.482910, 34.044075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527337, 0.262628, -0.808048,
		-0.832707, 0.029264, 0.552941,
		0.168864, 0.964453, 0.203260,
		38.441944, 35.772247, 34.105053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696140, 35.522533, 34.053791>,  <38.323738, 35.097130, 33.962772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696140, 35.522533, 34.053791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.959919, 35.816120, 33.988777>,  <38.118187, 35.992271, 33.949768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.959919, 35.816120, 33.988777>,  <37.696140, 35.522533, 34.053791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959919, 35.816120, 33.988777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584779, 0.364981, -0.724446,
		-0.472396, 0.572785, 0.669894,
		0.659451, 0.733966, -0.162537,
		38.157753, 36.036308, 33.940018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290741, 36.121185, 34.069710>,  <37.696140, 35.522533, 34.053791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290741, 36.121185, 34.069710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.629696, 36.221546, 33.882530>,  <37.833069, 36.281765, 33.770222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.629696, 36.221546, 33.882530>,  <37.290741, 36.121185, 34.069710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629696, 36.221546, 33.882530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530621, 0.368128, -0.763494,
		-0.019299, 0.895281, 0.445083,
		0.847389, 0.250905, -0.467951,
		37.883911, 36.296818, 33.742146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150696, 36.791847, 33.891502>,  <37.290741, 36.121185, 34.069710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150696, 36.791847, 33.891502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446274, 36.653252, 33.660362>,  <37.623619, 36.570095, 33.521679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.446274, 36.653252, 33.660362>,  <37.150696, 36.791847, 33.891502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446274, 36.653252, 33.660362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421390, 0.431540, -0.797624,
		0.525735, 0.832897, 0.172874,
		0.738940, -0.346491, -0.577850,
		37.667957, 36.549305, 33.487007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189541, 37.287521, 33.463665>,  <37.150696, 36.791847, 33.891502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189541, 37.287521, 33.463665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.411476, 37.022888, 33.261887>,  <37.544636, 36.864109, 33.140820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.411476, 37.022888, 33.261887>,  <37.189541, 37.287521, 33.463665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411476, 37.022888, 33.261887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304952, 0.402407, -0.863176,
		0.774054, 0.632753, 0.021520,
		0.554837, -0.661583, -0.504444,
		37.577927, 36.824413, 33.110554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612690, 37.604546, 32.947979>,  <37.189541, 37.287521, 33.463665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612690, 37.604546, 32.947979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.578053, 37.228085, 32.817303>,  <37.557270, 37.002209, 32.738895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.578053, 37.228085, 32.817303>,  <37.612690, 37.604546, 32.947979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578053, 37.228085, 32.817303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154549, 0.336648, -0.928861,
		0.984183, -0.029943, -0.174606,
		-0.086594, -0.941154, -0.326695,
		37.552074, 36.945740, 32.719296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068642, 37.648960, 32.450855>,  <37.612690, 37.604546, 32.947979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068642, 37.648960, 32.450855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.862400, 37.315536, 32.371517>,  <37.738655, 37.115482, 32.323914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.862400, 37.315536, 32.371517>,  <38.068642, 37.648960, 32.450855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862400, 37.315536, 32.371517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038640, 0.253872, -0.966466,
		0.855958, -0.490646, -0.163105,
		-0.515600, -0.833556, -0.198345,
		37.707722, 37.065468, 32.312012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391708, 37.458012, 31.894899>,  <38.068642, 37.648960, 32.450855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391708, 37.458012, 31.894899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.042530, 37.262905, 31.897469>,  <37.833023, 37.145840, 31.899010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.042530, 37.262905, 31.897469>,  <38.391708, 37.458012, 31.894899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042530, 37.262905, 31.897469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115533, 0.193937, -0.974187,
		0.473933, -0.851158, -0.225651,
		-0.872949, -0.487769, 0.006424,
		37.780643, 37.116573, 31.899395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376671, 36.897373, 31.451283>,  <38.391708, 37.458012, 31.894899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376671, 36.897373, 31.451283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.989902, 36.989174, 31.495817>,  <37.757843, 37.044254, 31.522539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.989902, 36.989174, 31.495817>,  <38.376671, 36.897373, 31.451283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989902, 36.989174, 31.495817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043137, 0.283076, -0.958127,
		-0.251406, -0.931235, -0.263812,
		-0.966920, 0.229499, 0.111338,
		37.699825, 37.058025, 31.529219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047104, 36.461250, 31.009253>,  <38.376671, 36.897373, 31.451283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047104, 36.461250, 31.009253> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.828266, 36.790565, 31.069767>,  <37.696964, 36.988155, 31.106075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.828266, 36.790565, 31.069767>,  <38.047104, 36.461250, 31.009253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828266, 36.790565, 31.069767> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006519, 0.176536, -0.984273,
		-0.837046, -0.539475, -0.091215,
		-0.547094, 0.823287, 0.151285,
		37.664139, 37.037552, 31.115152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599014, 36.512390, 30.357470>,  <38.047104, 36.461250, 31.009253>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599014, 36.512390, 30.357470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.590878, 36.877045, 30.521667>,  <37.585995, 37.095837, 30.620186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.590878, 36.877045, 30.521667>,  <37.599014, 36.512390, 30.357470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590878, 36.877045, 30.521667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248748, 0.402282, -0.881075,
		-0.968354, 0.084185, -0.234952,
		-0.020344, 0.911637, 0.410493,
		37.584774, 37.150536, 30.644815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462986, 36.882484, 29.819542>,  <37.599014, 36.512390, 30.357470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462986, 36.882484, 29.819542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.524525, 37.231110, 30.005749>,  <37.561447, 37.440285, 30.117474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.524525, 37.231110, 30.005749>,  <37.462986, 36.882484, 29.819542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524525, 37.231110, 30.005749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234445, 0.425476, -0.874074,
		-0.959879, 0.243609, -0.138877,
		0.153844, 0.871565, 0.465518,
		37.570679, 37.492580, 30.145405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113216, 37.403816, 29.520084>,  <37.462986, 36.882484, 29.819542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113216, 37.403816, 29.520084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.412094, 37.607811, 29.690550>,  <37.591419, 37.730209, 29.792830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.412094, 37.607811, 29.690550>,  <37.113216, 37.403816, 29.520084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412094, 37.607811, 29.690550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139768, 0.506306, -0.850952,
		-0.649743, 0.695391, 0.307029,
		0.747194, 0.509987, 0.426162,
		37.636253, 37.760807, 29.818398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468559, 37.817684, 29.794638>,  <37.113216, 37.403816, 29.520084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468559, 37.817684, 29.794638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.071171, 37.772835, 29.786163>,  <35.832737, 37.745926, 29.781078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.071171, 37.772835, 29.786163>,  <36.468559, 37.817684, 29.794638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071171, 37.772835, 29.786163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038614, -0.505056, 0.862222,
		-0.107371, 0.855773, 0.506087,
		-0.993469, -0.112120, -0.021184,
		35.773129, 37.739201, 29.779808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317516, 37.703518, 30.438416>,  <36.468559, 37.817684, 29.794638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317516, 37.703518, 30.438416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.947067, 37.630562, 30.306341>,  <35.724796, 37.586788, 30.227097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.947067, 37.630562, 30.306341>,  <36.317516, 37.703518, 30.438416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947067, 37.630562, 30.306341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206512, -0.487343, 0.848440,
		-0.315660, 0.853950, 0.413676,
		-0.926127, -0.182389, -0.330185,
		35.669228, 37.575844, 30.207285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850464, 37.699425, 31.021364>,  <36.317516, 37.703518, 30.438416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850464, 37.699425, 31.021364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.610668, 37.528717, 30.750521>,  <35.466789, 37.426292, 30.588015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.610668, 37.528717, 30.750521>,  <35.850464, 37.699425, 31.021364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610668, 37.528717, 30.750521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354836, -0.616589, 0.702787,
		-0.717426, 0.661578, 0.218208,
		-0.599493, -0.426770, -0.677109,
		35.430820, 37.400684, 30.547388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273029, 37.608597, 31.410227>,  <35.850464, 37.699425, 31.021364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273029, 37.608597, 31.410227> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.275444, 37.351315, 31.103960>,  <35.276894, 37.196945, 30.920200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.275444, 37.351315, 31.103960>,  <35.273029, 37.608597, 31.410227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275444, 37.351315, 31.103960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319030, -0.726907, 0.608133,
		-0.947725, 0.240599, -0.209592,
		0.006037, -0.643209, -0.765666,
		35.277256, 37.158352, 30.874260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798862, 37.218925, 31.639614>,  <35.273029, 37.608597, 31.410227>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798862, 37.218925, 31.639614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.990555, 37.008099, 31.358892>,  <35.105572, 36.881603, 31.190458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.990555, 37.008099, 31.358892>,  <34.798862, 37.218925, 31.639614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990555, 37.008099, 31.358892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386955, -0.844582, 0.370063,
		-0.787783, 0.094222, -0.608704,
		0.479233, -0.527071, -0.701807,
		35.134323, 36.849976, 31.148350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318474, 36.811539, 31.287643>,  <34.798862, 37.218925, 31.639614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318474, 36.811539, 31.287643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.678097, 36.643227, 31.239248>,  <34.893871, 36.542240, 31.210211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.678097, 36.643227, 31.239248>,  <34.318474, 36.811539, 31.287643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678097, 36.643227, 31.239248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352395, -0.859440, 0.370379,
		-0.259829, -0.290358, -0.920968,
		0.899059, -0.420780, -0.120986,
		34.947815, 36.516994, 31.202951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153313, 36.187767, 31.056538>,  <34.318474, 36.811539, 31.287643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153313, 36.187767, 31.056538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.530334, 36.151199, 31.185057>,  <34.756546, 36.129261, 31.262169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.530334, 36.151199, 31.185057>,  <34.153313, 36.187767, 31.056538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530334, 36.151199, 31.185057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207151, -0.914514, 0.347496,
		0.262067, -0.394092, -0.880916,
		0.942555, -0.091415, 0.321300,
		34.813103, 36.123775, 31.281446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504230, 35.463757, 30.796852>,  <34.153313, 36.187767, 31.056538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504230, 35.463757, 30.796852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.698711, 35.583733, 31.125154>,  <34.815399, 35.655720, 31.322136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.698711, 35.583733, 31.125154>,  <34.504230, 35.463757, 30.796852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698711, 35.583733, 31.125154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134618, -0.902324, 0.409499,
		0.863413, -0.309589, -0.398337,
		0.486206, 0.299943, 0.820754,
		34.844574, 35.673714, 31.371382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002983, 34.902298, 30.988890>,  <34.504230, 35.463757, 30.796852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002983, 34.902298, 30.988890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.970318, 35.117001, 31.324799>,  <34.950718, 35.245823, 31.526344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.970318, 35.117001, 31.324799>,  <35.002983, 34.902298, 30.988890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970318, 35.117001, 31.324799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230618, -0.829898, 0.508021,
		0.969611, -0.152180, 0.191560,
		-0.081665, 0.536760, 0.839774,
		34.945820, 35.278030, 31.576731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522099, 34.621532, 31.576597>,  <35.002983, 34.902298, 30.988890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522099, 34.621532, 31.576597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.208649, 34.797413, 31.752144>,  <35.020580, 34.902939, 31.857471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.208649, 34.797413, 31.752144>,  <35.522099, 34.621532, 31.576597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208649, 34.797413, 31.752144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048486, -0.747569, 0.662412,
		0.619344, 0.497801, 0.607130,
		-0.783621, 0.439698, 0.438866,
		34.973564, 34.929321, 31.883804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719509, 34.688610, 32.301853>,  <35.522099, 34.621532, 31.576597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719509, 34.688610, 32.301853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.319775, 34.691605, 32.287594>,  <35.079933, 34.693401, 32.279037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.319775, 34.691605, 32.287594>,  <35.719509, 34.688610, 32.301853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319775, 34.691605, 32.287594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033720, -0.560166, 0.827693,
		-0.013775, 0.828346, 0.560047,
		-0.999336, 0.007484, -0.035648,
		35.019974, 34.693851, 32.276901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558784, 34.728493, 33.034840>,  <35.719509, 34.688610, 32.301853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558784, 34.728493, 33.034840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.220966, 34.624687, 32.847477>,  <35.018276, 34.562405, 32.735062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.220966, 34.624687, 32.847477>,  <35.558784, 34.728493, 33.034840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220966, 34.624687, 32.847477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178839, -0.687805, 0.703521,
		-0.504742, 0.677922, 0.534470,
		-0.844543, -0.259512, -0.468402,
		34.967602, 34.546833, 32.706955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.538685, 40.378319, 27.350834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261372, 40.170990, 27.150551>,  <36.094986, 40.046593, 27.030380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261372, 40.170990, 27.150551>,  <36.538685, 40.378319, 27.350834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261372, 40.170990, 27.150551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456943, -0.221117, 0.861574,
		-0.557285, 0.826108, -0.083546,
		-0.693280, -0.518318, -0.500710,
		36.053387, 40.015495, 27.000338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049709, 40.427811, 27.784988>,  <36.538685, 40.378319, 27.350834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049709, 40.427811, 27.784988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956532, 40.125042, 27.540756>,  <35.900623, 39.943382, 27.394217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956532, 40.125042, 27.540756>,  <36.049709, 40.427811, 27.784988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956532, 40.125042, 27.540756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518449, -0.434528, 0.736475,
		-0.822767, 0.488114, -0.291202,
		-0.232948, -0.756921, -0.610578,
		35.886646, 39.897964, 27.357582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415707, 40.342922, 27.959799>,  <36.049709, 40.427811, 27.784988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415707, 40.342922, 27.959799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517494, 39.983910, 27.815756>,  <35.578568, 39.768501, 27.729330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517494, 39.983910, 27.815756>,  <35.415707, 40.342922, 27.959799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517494, 39.983910, 27.815756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363978, -0.433871, 0.824182,
		-0.895972, -0.078657, -0.437089,
		0.254468, -0.897535, -0.360107,
		35.593834, 39.714649, 27.707724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893562, 39.902630, 28.193844>,  <35.415707, 40.342922, 27.959799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893562, 39.902630, 28.193844> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194725, 39.666962, 28.076534>,  <35.375423, 39.525562, 28.006149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194725, 39.666962, 28.076534>,  <34.893562, 39.902630, 28.193844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194725, 39.666962, 28.076534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188540, -0.620035, 0.761584,
		-0.630543, -0.518107, -0.577910,
		0.752906, -0.589170, -0.293275,
		35.420597, 39.490211, 27.988552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583332, 39.299725, 28.304453>,  <34.893562, 39.902630, 28.193844>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583332, 39.299725, 28.304453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976639, 39.230556, 28.327402>,  <35.212624, 39.189056, 28.341171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976639, 39.230556, 28.327402>,  <34.583332, 39.299725, 28.304453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976639, 39.230556, 28.327402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165037, -0.711975, 0.682535,
		-0.077179, -0.680580, -0.728598,
		0.983263, -0.172923, 0.057371,
		35.271618, 39.178680, 28.344614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682262, 38.575901, 28.144108>,  <34.583332, 39.299725, 28.304453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682262, 38.575901, 28.144108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018200, 38.680260, 28.334518>,  <35.219761, 38.742874, 28.448765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018200, 38.680260, 28.334518>,  <34.682262, 38.575901, 28.144108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018200, 38.680260, 28.334518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085044, -0.802861, 0.590070,
		0.536131, -0.536047, -0.652086,
		0.839840, 0.260899, 0.476026,
		35.270153, 38.758530, 28.477325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280113, 37.948833, 28.209196>,  <34.682262, 38.575901, 28.144108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280113, 37.948833, 28.209196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350594, 38.223042, 28.491760>,  <35.392879, 38.387566, 28.661299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350594, 38.223042, 28.491760>,  <35.280113, 37.948833, 28.209196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350594, 38.223042, 28.491760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221309, -0.726852, 0.650161,
		0.959155, 0.041778, -0.279781,
		0.176197, 0.685522, 0.706409,
		35.403454, 38.428699, 28.703684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841393, 37.621891, 28.584015>,  <35.280113, 37.948833, 28.209196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841393, 37.621891, 28.584015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679134, 37.898827, 28.822718>,  <35.581779, 38.064987, 28.965939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679134, 37.898827, 28.822718>,  <35.841393, 37.621891, 28.584015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679134, 37.898827, 28.822718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004001, -0.651535, 0.758608,
		0.914021, 0.310115, 0.261523,
		-0.405647, 0.692338, 0.596757,
		35.557442, 38.106529, 29.001745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311642, 37.683647, 29.110050>,  <35.841393, 37.621891, 28.584015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311642, 37.683647, 29.110050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959896, 37.816280, 29.246735>,  <35.748848, 37.895859, 29.328745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959896, 37.816280, 29.246735>,  <36.311642, 37.683647, 29.110050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959896, 37.816280, 29.246735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099235, -0.574274, 0.812626,
		0.465689, 0.748506, 0.472093,
		-0.879367, 0.331583, 0.341711,
		35.696087, 37.915756, 29.349249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984325, 38.184071, 29.220007>,  <36.311642, 37.683647, 29.110050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984325, 38.184071, 29.220007> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352840, 38.189285, 29.375467>,  <37.573952, 38.192413, 29.468744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352840, 38.189285, 29.375467>,  <36.984325, 38.184071, 29.220007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352840, 38.189285, 29.375467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347136, 0.422871, -0.837064,
		-0.175263, 0.906096, 0.385062,
		0.921292, 0.013037, 0.388653,
		37.629227, 38.193195, 29.492064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191784, 38.801003, 29.151897>,  <36.984325, 38.184071, 29.220007>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191784, 38.801003, 29.151897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540348, 38.605839, 29.172230>,  <37.749489, 38.488739, 29.184429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540348, 38.605839, 29.172230>,  <37.191784, 38.801003, 29.151897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540348, 38.605839, 29.172230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329432, 0.505272, -0.797606,
		0.363475, 0.711790, 0.601034,
		0.871413, -0.487909, 0.050832,
		37.801773, 38.459465, 29.187479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765881, 39.319473, 29.066250>,  <37.191784, 38.801003, 29.151897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765881, 39.319473, 29.066250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918442, 38.963879, 28.964874>,  <38.009979, 38.750523, 28.904049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918442, 38.963879, 28.964874>,  <37.765881, 39.319473, 29.066250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918442, 38.963879, 28.964874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313778, 0.382387, -0.869094,
		0.869526, 0.251950, 0.424788,
		0.381402, -0.888989, -0.253439,
		38.032864, 38.697182, 28.888842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352753, 39.543201, 28.860029>,  <37.765881, 39.319473, 29.066250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352753, 39.543201, 28.860029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301983, 39.188435, 28.682367>,  <38.271519, 38.975574, 28.575769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301983, 39.188435, 28.682367>,  <38.352753, 39.543201, 28.860029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301983, 39.188435, 28.682367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411474, 0.360353, -0.837159,
		0.902540, -0.289018, 0.319202,
		-0.126928, -0.886913, -0.444156,
		38.263905, 38.922359, 28.549120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988274, 39.460114, 28.478807>,  <38.352753, 39.543201, 28.860029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988274, 39.460114, 28.478807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729450, 39.205410, 28.311068>,  <38.574158, 39.052589, 28.210424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729450, 39.205410, 28.311068>,  <38.988274, 39.460114, 28.478807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729450, 39.205410, 28.311068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416159, 0.165889, -0.894032,
		0.638849, -0.753006, 0.157654,
		-0.647058, -0.636760, -0.419349,
		38.535332, 39.014381, 28.185263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411827, 39.109173, 27.990934>,  <38.988274, 39.460114, 28.478807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411827, 39.109173, 27.990934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037560, 39.065269, 27.856781>,  <38.813000, 39.038929, 27.776289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037560, 39.065269, 27.856781>,  <39.411827, 39.109173, 27.990934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037560, 39.065269, 27.856781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324495, 0.105889, -0.939942,
		0.138682, -0.988301, -0.063460,
		-0.935665, -0.109760, -0.335384,
		38.756859, 39.032345, 27.756166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405216, 38.498642, 27.545362>,  <39.411827, 39.109173, 27.990934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405216, 38.498642, 27.545362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093555, 38.728821, 27.445942>,  <38.906559, 38.866928, 27.386290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093555, 38.728821, 27.445942>,  <39.405216, 38.498642, 27.545362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093555, 38.728821, 27.445942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305662, 0.002616, -0.952136,
		-0.547255, -0.817834, -0.177931,
		-0.779155, 0.575449, -0.248549,
		38.859810, 38.901455, 27.371378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332287, 38.480339, 26.797884>,  <39.405216, 38.498642, 27.545362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332287, 38.480339, 26.797884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063873, 38.769745, 26.862688>,  <38.902824, 38.943386, 26.901569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063873, 38.769745, 26.862688>,  <39.332287, 38.480339, 26.797884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063873, 38.769745, 26.862688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183300, 0.373614, -0.909293,
		-0.718412, -0.580469, -0.383327,
		-0.671033, 0.723511, 0.162008,
		38.862564, 38.986797, 26.911291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950665, 38.518272, 26.165113>,  <39.332287, 38.480339, 26.797884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950665, 38.518272, 26.165113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934719, 38.866947, 26.360491>,  <38.925152, 39.076153, 26.477716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934719, 38.866947, 26.360491>,  <38.950665, 38.518272, 26.165113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934719, 38.866947, 26.360491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065278, 0.490057, -0.869243,
		-0.997071, -0.002765, -0.076437,
		-0.039862, 0.871686, 0.488441,
		38.922760, 39.128452, 26.507023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346909, 38.900326, 25.849287>,  <38.950665, 38.518272, 26.165113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346909, 38.900326, 25.849287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612064, 39.155045, 26.006802>,  <38.771156, 39.307877, 26.101311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612064, 39.155045, 26.006802>,  <38.346909, 38.900326, 25.849287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612064, 39.155045, 26.006802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031563, 0.501713, -0.864458,
		-0.748052, 0.585469, 0.312481,
		0.662889, 0.636797, 0.393787,
		38.810932, 39.346085, 26.124937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331139, 39.510769, 25.389668>,  <38.346909, 38.900326, 25.849287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331139, 39.510769, 25.389668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663166, 39.567646, 25.605356>,  <38.862385, 39.601772, 25.734770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663166, 39.567646, 25.605356>,  <38.331139, 39.510769, 25.389668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663166, 39.567646, 25.605356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446589, 0.409591, -0.795483,
		-0.333975, 0.901119, 0.276487,
		0.830072, 0.142196, 0.539223,
		38.912186, 39.610306, 25.767122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500999, 40.271603, 25.299332>,  <38.331139, 39.510769, 25.389668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500999, 40.271603, 25.299332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825523, 40.059254, 25.397268>,  <39.020237, 39.931843, 25.456030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825523, 40.059254, 25.397268>,  <38.500999, 40.271603, 25.299332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825523, 40.059254, 25.397268> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537541, 0.512756, -0.669425,
		0.229839, 0.674723, 0.701372,
		0.811310, -0.530877, 0.244840,
		39.068916, 39.899990, 25.470720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071964, 40.727299, 25.074112>,  <38.500999, 40.271603, 25.299332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071964, 40.727299, 25.074112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250614, 40.380997, 25.164440>,  <39.357803, 40.173218, 25.218637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250614, 40.380997, 25.164440>,  <39.071964, 40.727299, 25.074112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250614, 40.380997, 25.164440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748604, 0.223363, -0.624261,
		0.490016, 0.447862, 0.747866,
		0.446629, -0.865753, 0.225820,
		39.384602, 40.121269, 25.232185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785484, 40.782814, 25.055742>,  <39.071964, 40.727299, 25.074112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785484, 40.782814, 25.055742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715782, 40.395317, 24.985115>,  <39.673962, 40.162819, 24.942739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715782, 40.395317, 24.985115>,  <39.785484, 40.782814, 25.055742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715782, 40.395317, 24.985115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439358, 0.083984, -0.894377,
		0.881249, -0.233423, 0.410990,
		-0.174252, -0.968742, -0.176567,
		39.663506, 40.104694, 24.932144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.695545, 35.675186, 23.204803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.835602, 36.040230, 23.289230>,  <33.919636, 36.259254, 23.339888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.835602, 36.040230, 23.289230>,  <33.695545, 35.675186, 23.204803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835602, 36.040230, 23.289230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236249, -0.304089, 0.922885,
		0.906413, -0.273279, -0.322078,
		0.350146, 0.912605, 0.211068,
		33.940647, 36.314011, 23.352551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358009, 35.615784, 23.385984>,  <33.695545, 35.675186, 23.204803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358009, 35.615784, 23.385984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.206177, 35.933262, 23.576128>,  <34.115078, 36.123749, 23.690214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.206177, 35.933262, 23.576128>,  <34.358009, 35.615784, 23.385984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206177, 35.933262, 23.576128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102344, -0.474638, 0.874211,
		0.919481, 0.380482, 0.098933,
		-0.379579, 0.793695, 0.475361,
		34.092304, 36.171371, 23.718737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859039, 35.976891, 23.891520>,  <34.358009, 35.615784, 23.385984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859039, 35.976891, 23.891520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.484657, 36.043118, 24.015831>,  <34.260029, 36.082851, 24.090418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.484657, 36.043118, 24.015831>,  <34.859039, 35.976891, 23.891520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484657, 36.043118, 24.015831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253244, -0.296743, 0.920766,
		0.244667, 0.940496, 0.235809,
		-0.935952, 0.165564, 0.310778,
		34.203873, 36.092785, 24.109064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996155, 36.190594, 24.534559>,  <34.859039, 35.976891, 23.891520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996155, 36.190594, 24.534559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.604698, 36.108421, 24.537785>,  <34.369823, 36.059116, 24.539721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.604698, 36.108421, 24.537785>,  <34.996155, 36.190594, 24.534559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604698, 36.108421, 24.537785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092592, -0.405386, 0.909444,
		-0.183559, 0.890764, 0.415747,
		-0.978638, -0.205432, 0.008066,
		34.311108, 36.046791, 24.540205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884727, 36.299202, 25.279360>,  <34.996155, 36.190594, 24.534559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884727, 36.299202, 25.279360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565784, 36.111351, 25.127741>,  <34.374420, 35.998642, 25.036770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565784, 36.111351, 25.127741>,  <34.884727, 36.299202, 25.279360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565784, 36.111351, 25.127741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073159, -0.548222, 0.833127,
		-0.599060, 0.692028, 0.402771,
		-0.797355, -0.469627, -0.379046,
		34.326576, 35.970463, 25.014027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341553, 36.220264, 25.870222>,  <34.884727, 36.299202, 25.279360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341553, 36.220264, 25.870222> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.248898, 35.952114, 25.588243>,  <34.193306, 35.791225, 25.419056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.248898, 35.952114, 25.588243>,  <34.341553, 36.220264, 25.870222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248898, 35.952114, 25.588243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091518, -0.706422, 0.701849,
		-0.968489, 0.227087, 0.102280,
		-0.231634, -0.670372, -0.704944,
		34.179409, 35.751003, 25.376760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903713, 35.843655, 26.200508>,  <34.341553, 36.220264, 25.870222>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903713, 35.843655, 26.200508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.986065, 35.613049, 25.884218>,  <34.035477, 35.474686, 25.694445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.986065, 35.613049, 25.884218>,  <33.903713, 35.843655, 26.200508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986065, 35.613049, 25.884218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330808, -0.801467, 0.498213,
		-0.920968, 0.159008, -0.355718,
		0.205876, -0.576512, -0.790727,
		34.047829, 35.440094, 25.646999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280945, 35.322449, 26.128784>,  <33.903713, 35.843655, 26.200508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280945, 35.322449, 26.128784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.618065, 35.181091, 25.966398>,  <33.820335, 35.096275, 25.868967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.618065, 35.181091, 25.966398>,  <33.280945, 35.322449, 26.128784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618065, 35.181091, 25.966398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022974, -0.777187, 0.628851,
		-0.537740, -0.520667, -0.663130,
		0.842798, -0.353393, -0.405963,
		33.870903, 35.075073, 25.844610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184124, 34.684250, 26.229105>,  <33.280945, 35.322449, 26.128784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184124, 34.684250, 26.229105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.577274, 34.703243, 26.157887>,  <33.813164, 34.714638, 26.115156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.577274, 34.703243, 26.157887>,  <33.184124, 34.684250, 26.229105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577274, 34.703243, 26.157887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164781, -0.658940, 0.733925,
		-0.082475, -0.750696, -0.655480,
		0.982876, 0.047480, -0.178046,
		33.872139, 34.717487, 26.104473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454300, 34.015434, 26.348295>,  <33.184124, 34.684250, 26.229105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454300, 34.015434, 26.348295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.777939, 34.250401, 26.355396>,  <33.972122, 34.391380, 26.359657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.777939, 34.250401, 26.355396>,  <33.454300, 34.015434, 26.348295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777939, 34.250401, 26.355396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405104, -0.579360, 0.707271,
		0.425745, -0.565057, -0.706719,
		0.809093, 0.587412, 0.017753,
		34.020668, 34.426624, 26.360722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935692, 33.534367, 26.425301>,  <33.454300, 34.015434, 26.348295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935692, 33.534367, 26.425301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.091866, 33.879398, 26.553999>,  <34.185570, 34.086418, 26.631218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.091866, 33.879398, 26.553999>,  <33.935692, 33.534367, 26.425301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091866, 33.879398, 26.553999> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253041, -0.436569, 0.863353,
		0.885174, -0.255665, -0.388718,
		0.390432, 0.862579, 0.321746,
		34.208996, 34.138172, 26.650522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670391, 33.293625, 26.698885>,  <33.935692, 33.534367, 26.425301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670391, 33.293625, 26.698885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.539936, 33.648647, 26.829044>,  <34.461662, 33.861660, 26.907141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.539936, 33.648647, 26.829044>,  <34.670391, 33.293625, 26.698885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539936, 33.648647, 26.829044> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122391, -0.301677, 0.945522,
		0.937365, 0.348199, -0.010239,
		-0.326141, 0.887552, 0.325398,
		34.442093, 33.914913, 26.926664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205952, 33.545555, 27.146595>,  <34.670391, 33.293625, 26.698885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205952, 33.545555, 27.146595> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863068, 33.727093, 27.243929>,  <34.657337, 33.836014, 27.302330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.863068, 33.727093, 27.243929>,  <35.205952, 33.545555, 27.146595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863068, 33.727093, 27.243929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090529, -0.332364, 0.938797,
		0.506939, 0.826779, 0.243821,
		-0.857215, 0.453840, 0.243336,
		34.605904, 33.863243, 27.316929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355843, 33.760910, 27.781841>,  <35.205952, 33.545555, 27.146595>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355843, 33.760910, 27.781841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.956089, 33.749626, 27.773401>,  <34.716236, 33.742855, 27.768337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.956089, 33.749626, 27.773401>,  <35.355843, 33.760910, 27.781841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956089, 33.749626, 27.773401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013427, -0.248717, 0.968483,
		-0.032566, 0.968166, 0.248184,
		-0.999379, -0.028208, -0.021099,
		34.656277, 33.741165, 27.767071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887547, 34.096039, 28.206364>,  <35.355843, 33.760910, 27.781841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887547, 34.096039, 28.206364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.167736, 33.825714, 28.114614>,  <36.335850, 33.663517, 28.059565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.167736, 33.825714, 28.114614>,  <35.887547, 34.096039, 28.206364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167736, 33.825714, 28.114614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274753, 0.551988, -0.787287,
		0.658672, 0.488452, 0.572334,
		0.700473, -0.675814, -0.229375,
		36.377876, 33.622971, 28.045801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377350, 34.465260, 27.933674>,  <35.887547, 34.096039, 28.206364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377350, 34.465260, 27.933674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477722, 34.098946, 27.808218>,  <36.537945, 33.879158, 27.732944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.477722, 34.098946, 27.808218>,  <36.377350, 34.465260, 27.933674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477722, 34.098946, 27.808218> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303251, 0.382065, -0.872964,
		0.919279, 0.123942, 0.373585,
		0.250930, -0.915787, -0.313638,
		36.553001, 33.824211, 27.714127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089890, 34.503399, 27.732626>,  <36.377350, 34.465260, 27.933674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089890, 34.503399, 27.732626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945690, 34.181511, 27.543961>,  <36.859169, 33.988380, 27.430761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945690, 34.181511, 27.543961>,  <37.089890, 34.503399, 27.732626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945690, 34.181511, 27.543961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431655, 0.304333, -0.849150,
		0.826869, -0.509716, 0.237648,
		-0.360501, -0.804718, -0.471665,
		36.837540, 33.940094, 27.402460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650696, 34.291443, 27.283249>,  <37.089890, 34.503399, 27.732626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650696, 34.291443, 27.283249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314426, 34.128117, 27.140953>,  <37.112667, 34.030121, 27.055576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.314426, 34.128117, 27.140953>,  <37.650696, 34.291443, 27.283249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314426, 34.128117, 27.140953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298940, 0.197849, -0.933536,
		0.451560, -0.891142, -0.044264,
		-0.840671, -0.408316, -0.355739,
		37.062225, 34.005623, 27.034231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784588, 33.813107, 26.761351>,  <37.650696, 34.291443, 27.283249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784588, 33.813107, 26.761351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.404423, 33.901928, 26.674261>,  <37.176323, 33.955223, 26.622007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.404423, 33.901928, 26.674261>,  <37.784588, 33.813107, 26.761351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404423, 33.901928, 26.674261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266086, 0.218270, -0.938913,
		-0.160970, -0.950289, -0.266533,
		-0.950414, 0.222057, -0.217723,
		37.119297, 33.968544, 26.608944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745865, 33.510361, 26.095470>,  <37.784588, 33.813107, 26.761351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745865, 33.510361, 26.095470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432846, 33.757736, 26.124191>,  <37.245033, 33.906162, 26.141424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.432846, 33.757736, 26.124191>,  <37.745865, 33.510361, 26.095470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432846, 33.757736, 26.124191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022867, 0.143797, -0.989343,
		-0.622173, -0.772564, -0.126670,
		-0.782546, 0.618439, 0.071801,
		37.198082, 33.943268, 26.145731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326111, 33.341125, 25.468451>,  <37.745865, 33.510361, 26.095470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326111, 33.341125, 25.468451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203014, 33.703812, 25.583797>,  <37.129158, 33.921425, 25.653006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203014, 33.703812, 25.583797>,  <37.326111, 33.341125, 25.468451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203014, 33.703812, 25.583797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127713, 0.339698, -0.931823,
		-0.942861, -0.249930, -0.220338,
		-0.307739, 0.906720, 0.288368,
		37.110691, 33.975826, 25.670307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876427, 33.593670, 24.803223>,  <37.326111, 33.341125, 25.468451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876427, 33.593670, 24.803223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949043, 33.938053, 24.993296>,  <36.992611, 34.144684, 25.107340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.949043, 33.938053, 24.993296>,  <36.876427, 33.593670, 24.803223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949043, 33.938053, 24.993296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037606, 0.476779, -0.878219,
		-0.982665, 0.177299, 0.054176,
		0.181537, 0.860957, 0.475181,
		37.003506, 34.196339, 25.135851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312145, 34.196999, 24.624113>,  <36.876427, 33.593670, 24.803223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312145, 34.196999, 24.624113> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.664169, 34.346111, 24.741781>,  <36.875381, 34.435577, 24.812382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.664169, 34.346111, 24.741781>,  <36.312145, 34.196999, 24.624113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664169, 34.346111, 24.741781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020948, 0.649349, -0.760202,
		-0.474405, 0.662859, 0.579274,
		0.880058, 0.372778, 0.294169,
		36.928188, 34.457943, 24.830032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183418, 34.846493, 24.428339>,  <36.312145, 34.196999, 24.624113>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183418, 34.846493, 24.428339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.573727, 34.849583, 24.515804>,  <36.807911, 34.851437, 24.568283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.573727, 34.849583, 24.515804>,  <36.183418, 34.846493, 24.428339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573727, 34.849583, 24.515804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131074, 0.779567, -0.612450,
		-0.175193, 0.626271, 0.759665,
		0.975770, 0.007725, 0.218662,
		36.866459, 34.851898, 24.581404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441483, 35.554977, 24.680746>,  <36.183418, 34.846493, 24.428339>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441483, 35.554977, 24.680746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.770947, 35.379852, 24.536572>,  <36.968624, 35.274776, 24.450068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.770947, 35.379852, 24.536572>,  <36.441483, 35.554977, 24.680746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770947, 35.379852, 24.536572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195448, 0.815805, -0.544300,
		0.532345, 0.377870, 0.757512,
		0.823656, -0.437809, -0.360435,
		37.018044, 35.248508, 24.428440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018242, 36.128746, 24.661346>,  <36.441483, 35.554977, 24.680746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018242, 36.128746, 24.661346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.122120, 35.829685, 24.416864>,  <37.184444, 35.650249, 24.270174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.122120, 35.829685, 24.416864>,  <37.018242, 36.128746, 24.661346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122120, 35.829685, 24.416864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197678, 0.660675, -0.724177,
		0.945243, 0.067240, 0.319366,
		0.259691, -0.747655, -0.611206,
		37.200027, 35.605389, 24.233503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433018, 36.481678, 24.340549>,  <37.018242, 36.128746, 24.661346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433018, 36.481678, 24.340549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.347763, 36.158325, 24.121059>,  <37.296612, 35.964314, 23.989365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.347763, 36.158325, 24.121059>,  <37.433018, 36.481678, 24.340549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347763, 36.158325, 24.121059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053767, 0.551074, -0.832722,
		0.975542, -0.206985, -0.073989,
		-0.213134, -0.808378, -0.548725,
		37.283821, 35.915813, 23.956442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956333, 36.317677, 23.844486>,  <37.433018, 36.481678, 24.340549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956333, 36.317677, 23.844486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613293, 36.162636, 23.709265>,  <37.407467, 36.069611, 23.628132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613293, 36.162636, 23.709265>,  <37.956333, 36.317677, 23.844486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613293, 36.162636, 23.709265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145328, 0.447883, -0.882202,
		0.493351, -0.805709, -0.327777,
		-0.857604, -0.387600, -0.338056,
		37.356010, 36.046356, 23.607849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736153, 36.211178, 23.758261>,  <37.956333, 36.317677, 23.844486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736153, 36.211178, 23.758261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.123100, 36.298008, 23.705994>,  <39.355270, 36.350105, 23.674633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.123100, 36.298008, 23.705994>,  <38.736153, 36.211178, 23.758261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123100, 36.298008, 23.705994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199091, -0.332277, 0.921930,
		0.156709, -0.917862, -0.364652,
		0.967370, 0.217074, -0.130668,
		39.413311, 36.363129, 23.666794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103096, 35.535591, 23.839254>,  <38.736153, 36.211178, 23.758261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103096, 35.535591, 23.839254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.347652, 35.840942, 23.922644>,  <39.494385, 36.024151, 23.972677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.347652, 35.840942, 23.922644>,  <39.103096, 35.535591, 23.839254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347652, 35.840942, 23.922644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266296, -0.446559, 0.854208,
		0.745176, -0.466739, -0.476306,
		0.611391, 0.763374, 0.208474,
		39.531071, 36.069954, 23.985186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738522, 35.240646, 24.083832>,  <39.103096, 35.535591, 23.839254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738522, 35.240646, 24.083832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.808540, 35.617161, 24.199310>,  <39.850552, 35.843067, 24.268599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.808540, 35.617161, 24.199310>,  <39.738522, 35.240646, 24.083832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808540, 35.617161, 24.199310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144994, -0.314675, 0.938060,
		0.973824, -0.122348, -0.191564,
		0.175050, 0.941282, 0.288698,
		39.861057, 35.899544, 24.285919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432198, 35.311707, 24.253723>,  <39.738522, 35.240646, 24.083832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432198, 35.311707, 24.253723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.246956, 35.601494, 24.457949>,  <40.135811, 35.775368, 24.580484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.246956, 35.601494, 24.457949>,  <40.432198, 35.311707, 24.253723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246956, 35.601494, 24.457949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390864, -0.350077, 0.851276,
		0.795463, 0.593789, -0.121048,
		-0.463103, 0.724472, 0.510564,
		40.108025, 35.818836, 24.611118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960140, 35.475285, 24.785257>,  <40.432198, 35.311707, 24.253723>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960140, 35.475285, 24.785257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.613754, 35.632137, 24.909414>,  <40.405922, 35.726250, 24.983908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.613754, 35.632137, 24.909414>,  <40.960140, 35.475285, 24.785257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613754, 35.632137, 24.909414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206124, -0.285623, 0.935912,
		0.455660, 0.874442, 0.166510,
		-0.865960, 0.392136, 0.310391,
		40.353966, 35.749779, 25.002531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124531, 35.840195, 25.292852>,  <40.960140, 35.475285, 24.785257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124531, 35.840195, 25.292852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.731274, 35.806580, 25.357811>,  <40.495319, 35.786411, 25.396786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.731274, 35.806580, 25.357811>,  <41.124531, 35.840195, 25.292852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731274, 35.806580, 25.357811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180961, -0.319663, 0.930091,
		-0.026254, 0.943797, 0.329482,
		-0.983140, -0.084042, 0.162399,
		40.436333, 35.781368, 25.406530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953743, 36.160549, 26.000557>,  <41.124531, 35.840195, 25.292852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953743, 36.160549, 26.000557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.671051, 35.899548, 25.891184>,  <40.501434, 35.742947, 25.825560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.671051, 35.899548, 25.891184>,  <40.953743, 36.160549, 26.000557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671051, 35.899548, 25.891184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069037, -0.321040, 0.944546,
		-0.704102, 0.686420, 0.181843,
		-0.706735, -0.652503, -0.273433,
		40.459030, 35.703796, 25.809155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527134, 36.158169, 26.605650>,  <40.953743, 36.160549, 26.000557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527134, 36.158169, 26.605650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.426384, 35.813583, 26.429272>,  <40.365932, 35.606831, 26.323444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.426384, 35.813583, 26.429272>,  <40.527134, 36.158169, 26.605650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426384, 35.813583, 26.429272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012642, -0.452669, 0.891589,
		-0.967677, 0.230143, 0.103125,
		-0.251874, -0.861467, -0.440947,
		40.350822, 35.555141, 26.296988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.811081, 35.864109, 26.773254>,  <40.527134, 36.158169, 26.605650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.811081, 35.864109, 26.773254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.040054, 35.558212, 26.654938>,  <40.177437, 35.374676, 26.583948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.040054, 35.558212, 26.654938>,  <39.811081, 35.864109, 26.773254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040054, 35.558212, 26.654938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080679, -0.411523, 0.907821,
		-0.815972, -0.495804, -0.297268,
		0.572434, -0.764740, -0.295790,
		40.211784, 35.328789, 26.566200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515518, 35.403782, 27.129101>,  <39.811081, 35.864109, 26.773254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515518, 35.403782, 27.129101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.852345, 35.217125, 27.020905>,  <40.054440, 35.105133, 26.955986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.852345, 35.217125, 27.020905>,  <39.515518, 35.403782, 27.129101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852345, 35.217125, 27.020905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016905, -0.524086, 0.851498,
		-0.539114, -0.712442, -0.449202,
		0.842063, -0.466648, -0.270498,
		40.104965, 35.077133, 26.939756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399467, 34.574276, 27.213617>,  <39.515518, 35.403782, 27.129101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399467, 34.574276, 27.213617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790497, 34.657795, 27.224602>,  <40.025116, 34.707909, 27.231192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790497, 34.657795, 27.224602>,  <39.399467, 34.574276, 27.213617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790497, 34.657795, 27.224602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106792, -0.603867, 0.789899,
		0.181516, -0.769250, -0.612622,
		0.977572, 0.208802, 0.027462,
		40.083767, 34.720436, 27.232840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659710, 33.966381, 27.433109>,  <39.399467, 34.574276, 27.213617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659710, 33.966381, 27.433109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.951870, 34.234280, 27.486710>,  <40.127167, 34.395020, 27.518869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.951870, 34.234280, 27.486710>,  <39.659710, 33.966381, 27.433109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951870, 34.234280, 27.486710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253119, -0.447640, 0.857642,
		0.634383, -0.592507, -0.496482,
		0.730403, 0.669742, 0.134001,
		40.170990, 34.435204, 27.526909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401752, 33.658958, 27.594671>,  <39.659710, 33.966381, 27.433109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401752, 33.658958, 27.594671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.352612, 34.006115, 27.787201>,  <40.323128, 34.214409, 27.902719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.352612, 34.006115, 27.787201>,  <40.401752, 33.658958, 27.594671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352612, 34.006115, 27.787201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287488, -0.433080, 0.854279,
		0.949873, 0.243326, -0.196303,
		-0.122854, 0.867891, 0.481324,
		40.315754, 34.266483, 27.931599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085354, 33.893414, 27.769522>,  <40.401752, 33.658958, 27.594671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085354, 33.893414, 27.769522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.790302, 34.016266, 28.010046>,  <40.613274, 34.089977, 28.154362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.790302, 34.016266, 28.010046>,  <41.085354, 33.893414, 27.769522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.790302, 34.016266, 28.010046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473721, -0.399193, 0.785006,
		0.481140, 0.863895, 0.148960,
		-0.737626, 0.307132, 0.601313,
		40.569016, 34.108406, 28.190439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.291603, 40.545971, 24.471663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.013039, 40.259350, 24.487446>,  <39.845898, 40.087376, 24.496916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.013039, 40.259350, 24.487446>,  <40.291603, 40.545971, 24.471663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013039, 40.259350, 24.487446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083772, -0.135777, -0.987191,
		0.712735, -0.684188, 0.154584,
		-0.696413, -0.716555, 0.039457,
		39.804115, 40.044384, 24.499283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638882, 39.984035, 24.161425>,  <40.291603, 40.545971, 24.471663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638882, 39.984035, 24.161425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.239094, 39.971195, 24.159290>,  <39.999222, 39.963490, 24.158010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.239094, 39.971195, 24.159290>,  <40.638882, 39.984035, 24.161425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239094, 39.971195, 24.159290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008283, -0.092440, -0.995684,
		0.031474, -0.995201, 0.092657,
		-0.999470, -0.032106, -0.005333,
		39.939251, 39.961563, 24.157690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409317, 39.391674, 23.723991>,  <40.638882, 39.984035, 24.161425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409317, 39.391674, 23.723991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.102112, 39.647705, 23.732618>,  <39.917789, 39.801323, 23.737795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.102112, 39.647705, 23.732618>,  <40.409317, 39.391674, 23.723991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102112, 39.647705, 23.732618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064624, -0.043944, -0.996942,
		-0.637171, -0.767053, 0.075114,
		-0.768008, 0.640076, 0.021570,
		39.871708, 39.839729, 23.739090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984657, 39.278393, 23.200693>,  <40.409317, 39.391674, 23.723991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984657, 39.278393, 23.200693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.846504, 39.644718, 23.282663>,  <39.763611, 39.864513, 23.331846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.846504, 39.644718, 23.282663>,  <39.984657, 39.278393, 23.200693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846504, 39.644718, 23.282663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181490, 0.149060, -0.972030,
		-0.920746, -0.372913, 0.114729,
		-0.345381, 0.915815, 0.204927,
		39.742889, 39.919464, 23.344141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462532, 39.410763, 22.713652>,  <39.984657, 39.278393, 23.200693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462532, 39.410763, 22.713652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.539223, 39.784473, 22.833902>,  <39.585236, 40.008698, 22.906054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.539223, 39.784473, 22.833902>,  <39.462532, 39.410763, 22.713652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539223, 39.784473, 22.833902> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109209, 0.324715, -0.939486,
		-0.975354, 0.147291, 0.164287,
		0.191725, 0.934273, 0.300627,
		39.596741, 40.064754, 22.924089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029972, 39.851265, 22.387318>,  <39.462532, 39.410763, 22.713652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.029972, 39.851265, 22.387318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285423, 40.136608, 22.502747>,  <39.438694, 40.307816, 22.572004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.285423, 40.136608, 22.502747>,  <39.029972, 39.851265, 22.387318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285423, 40.136608, 22.502747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135304, 0.473258, -0.870471,
		-0.757528, 0.516861, 0.398756,
		0.638627, 0.713360, 0.288573,
		39.477013, 40.350616, 22.589319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.622639, 40.424332, 22.356981>,  <39.029972, 39.851265, 22.387318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.622639, 40.424332, 22.356981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.009377, 40.524334, 22.336134>,  <39.241417, 40.584335, 22.323626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.009377, 40.524334, 22.336134>,  <38.622639, 40.424332, 22.356981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009377, 40.524334, 22.336134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157050, 0.421133, -0.893298,
		-0.201384, 0.871861, 0.446433,
		0.966840, 0.250009, -0.052116,
		39.299427, 40.599335, 22.320499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716961, 41.156261, 22.157495>,  <38.622639, 40.424332, 22.356981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716961, 41.156261, 22.157495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067192, 41.003681, 22.038927>,  <39.277328, 40.912132, 21.967785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.067192, 41.003681, 22.038927>,  <38.716961, 41.156261, 22.157495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.067192, 41.003681, 22.038927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074698, 0.499317, -0.863193,
		0.477275, 0.777931, 0.408695,
		0.875573, -0.381452, -0.296422,
		39.329865, 40.889244, 21.950001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055302, 41.754875, 21.868013>,  <38.716961, 41.156261, 22.157495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055302, 41.754875, 21.868013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.228973, 41.432159, 21.707727>,  <39.333176, 41.238529, 21.611555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.228973, 41.432159, 21.707727>,  <39.055302, 41.754875, 21.868013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228973, 41.432159, 21.707727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037222, 0.460519, -0.886869,
		0.900056, 0.370147, 0.229980,
		0.434183, -0.806792, -0.400715,
		39.359230, 41.190121, 21.587513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465927, 42.010250, 21.338894>,  <39.055302, 41.754875, 21.868013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465927, 42.010250, 21.338894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.457211, 41.616425, 21.269421>,  <39.451981, 41.380131, 21.227737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.457211, 41.616425, 21.269421>,  <39.465927, 42.010250, 21.338894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457211, 41.616425, 21.269421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017775, 0.174078, -0.984572,
		0.999605, -0.018365, -0.021293,
		-0.021789, -0.984561, -0.173682,
		39.450672, 41.321056, 21.217316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966274, 41.927528, 20.896370>,  <39.465927, 42.010250, 21.338894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966274, 41.927528, 20.896370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.707172, 41.626427, 20.849434>,  <39.551712, 41.445766, 20.821272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.707172, 41.626427, 20.849434>,  <39.966274, 41.927528, 20.896370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707172, 41.626427, 20.849434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115797, 0.249510, -0.961424,
		0.752995, -0.609182, -0.248789,
		-0.647757, -0.752756, -0.117338,
		39.512844, 41.400600, 20.814232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230961, 41.580692, 20.262608>,  <39.966274, 41.927528, 20.896370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230961, 41.580692, 20.262608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.855778, 41.453987, 20.319016>,  <39.630669, 41.377964, 20.352861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.855778, 41.453987, 20.319016>,  <40.230961, 41.580692, 20.262608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855778, 41.453987, 20.319016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168844, 0.062029, -0.983689,
		0.302853, -0.946473, -0.111665,
		-0.937962, -0.316767, 0.141021,
		39.574390, 41.358959, 20.361322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112831, 41.022179, 19.766073>,  <40.230961, 41.580692, 20.262608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112831, 41.022179, 19.766073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.757172, 41.181839, 19.855608>,  <39.543777, 41.277634, 19.909328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.757172, 41.181839, 19.855608>,  <40.112831, 41.022179, 19.766073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757172, 41.181839, 19.855608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196161, 0.109484, -0.974440,
		-0.413452, -0.910327, -0.019050,
		-0.889145, 0.399147, 0.223837,
		39.490429, 41.301582, 19.922758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521572, 40.624176, 19.498373>,  <40.112831, 41.022179, 19.766073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521572, 40.624176, 19.498373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.465530, 41.019936, 19.513636>,  <39.431904, 41.257393, 19.522793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.465530, 41.019936, 19.513636>,  <39.521572, 40.624176, 19.498373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465530, 41.019936, 19.513636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193630, 0.010412, -0.981019,
		-0.971019, -0.144834, 0.190119,
		-0.140106, 0.989401, 0.038155,
		39.423500, 41.316757, 19.525082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173531, 39.942909, 19.335951>,  <39.521572, 40.624176, 19.498373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173531, 39.942909, 19.335951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.161095, 39.604679, 19.122768>,  <39.153633, 39.401741, 18.994860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.161095, 39.604679, 19.122768>,  <39.173531, 39.942909, 19.335951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161095, 39.604679, 19.122768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215054, -0.515066, 0.829734,
		-0.976107, 0.140409, -0.165831,
		-0.031089, -0.845572, -0.532956,
		39.151768, 39.351009, 18.962881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666073, 39.523415, 19.602219>,  <39.173531, 39.942909, 19.335951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666073, 39.523415, 19.602219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.859745, 39.252922, 19.380125>,  <38.975948, 39.090626, 19.246868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.859745, 39.252922, 19.380125>,  <38.666073, 39.523415, 19.602219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859745, 39.252922, 19.380125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023296, -0.624387, 0.780768,
		-0.874659, -0.390966, -0.286562,
		0.484179, -0.676229, -0.555234,
		39.004997, 39.050053, 19.213554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359581, 38.890160, 19.654163>,  <38.666073, 39.523415, 19.602219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359581, 38.890160, 19.654163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723183, 38.776432, 19.532259>,  <38.941341, 38.708195, 19.459116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.723183, 38.776432, 19.532259>,  <38.359581, 38.890160, 19.654163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723183, 38.776432, 19.532259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046024, -0.658266, 0.751377,
		-0.414243, -0.697029, -0.585280,
		0.909002, -0.284316, -0.304762,
		38.995884, 38.691135, 19.440830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393131, 38.183758, 19.807350>,  <38.359581, 38.890160, 19.654163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393131, 38.183758, 19.807350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.778770, 38.280411, 19.763302>,  <39.010155, 38.338402, 19.736874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.778770, 38.280411, 19.763302>,  <38.393131, 38.183758, 19.807350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778770, 38.280411, 19.763302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242742, -0.633845, 0.734381,
		0.107651, -0.734748, -0.669744,
		0.964099, 0.241632, -0.110121,
		39.068001, 38.352901, 19.730267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734035, 37.623508, 19.614256>,  <38.393131, 38.183758, 19.807350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734035, 37.623508, 19.614256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.055603, 37.825390, 19.740110>,  <39.248543, 37.946518, 19.815622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.055603, 37.825390, 19.740110>,  <38.734035, 37.623508, 19.614256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055603, 37.825390, 19.740110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187195, -0.716863, 0.671614,
		0.564516, -0.481023, -0.670775,
		0.803916, 0.504702, 0.314636,
		39.296776, 37.976799, 19.834501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303730, 37.174179, 19.635145>,  <38.734035, 37.623508, 19.614256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303730, 37.174179, 19.635145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.360703, 37.452915, 19.916323>,  <39.394886, 37.620155, 20.085030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.360703, 37.452915, 19.916323>,  <39.303730, 37.174179, 19.635145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360703, 37.452915, 19.916323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142806, -0.717219, 0.682058,
		0.979449, 0.003240, -0.201664,
		0.142427, 0.696840, 0.702942,
		39.403431, 37.661968, 20.127205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749760, 36.820053, 20.051676>,  <39.303730, 37.174179, 19.635145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749760, 36.820053, 20.051676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.650200, 37.131481, 20.282112>,  <39.590462, 37.318336, 20.420374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.650200, 37.131481, 20.282112>,  <39.749760, 36.820053, 20.051676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650200, 37.131481, 20.282112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195885, -0.542050, 0.817197,
		0.948513, 0.316249, -0.017592,
		-0.248903, 0.778568, 0.576090,
		39.575531, 37.365051, 20.454939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211666, 36.743603, 20.623739>,  <39.749760, 36.820053, 20.051676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211666, 36.743603, 20.623739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.933029, 36.998657, 20.755304>,  <39.765846, 37.151691, 20.834244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.933029, 36.998657, 20.755304>,  <40.211666, 36.743603, 20.623739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933029, 36.998657, 20.755304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054588, -0.410005, 0.910448,
		0.715390, 0.652164, 0.250798,
		-0.696590, 0.637635, 0.328914,
		39.724052, 37.189949, 20.853979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499733, 37.048775, 21.242905>,  <40.211666, 36.743603, 20.623739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499733, 37.048775, 21.242905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.101742, 37.078083, 21.270157>,  <39.862946, 37.095669, 21.286509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.101742, 37.078083, 21.270157>,  <40.499733, 37.048775, 21.242905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.101742, 37.078083, 21.270157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046101, -0.268643, 0.962136,
		0.088797, 0.960449, 0.263917,
		-0.994982, 0.073268, 0.068132,
		39.803246, 37.100063, 21.290596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399036, 37.449062, 21.820904>,  <40.499733, 37.048775, 21.242905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399036, 37.449062, 21.820904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.044380, 37.267048, 21.787905>,  <39.831585, 37.157837, 21.768105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.044380, 37.267048, 21.787905>,  <40.399036, 37.449062, 21.820904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044380, 37.267048, 21.787905> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012604, -0.202105, 0.979283,
		-0.462287, 0.867232, 0.184930,
		-0.886641, -0.455041, -0.082499,
		39.778389, 37.130535, 21.763155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072758, 37.768982, 22.276850>,  <40.399036, 37.449062, 21.820904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072758, 37.768982, 22.276850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.873455, 37.432446, 22.193060>,  <39.753872, 37.230522, 22.142786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.873455, 37.432446, 22.193060>,  <40.072758, 37.768982, 22.276850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873455, 37.432446, 22.193060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008631, -0.236773, 0.971527,
		-0.866987, 0.485877, 0.110712,
		-0.498256, -0.841345, -0.209473,
		39.723980, 37.180042, 22.130219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541378, 37.735420, 22.810383>,  <40.072758, 37.768982, 22.276850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541378, 37.735420, 22.810383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.594784, 37.369335, 22.658297>,  <39.626827, 37.149685, 22.567045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.594784, 37.369335, 22.658297>,  <39.541378, 37.735420, 22.810383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594784, 37.369335, 22.658297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134189, -0.396812, 0.908038,
		-0.981920, -0.070217, -0.175792,
		0.133517, -0.915210, -0.380215,
		39.634838, 37.094772, 22.544231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921909, 37.295944, 22.922253>,  <39.541378, 37.735420, 22.810383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921909, 37.295944, 22.922253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.214222, 37.031311, 22.855005>,  <39.389610, 36.872532, 22.814657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.214222, 37.031311, 22.855005>,  <38.921909, 37.295944, 22.922253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.214222, 37.031311, 22.855005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091791, -0.339293, 0.936191,
		-0.676408, -0.668723, -0.308678,
		0.730785, -0.661581, -0.168118,
		39.433456, 36.832836, 22.804569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690174, 36.599094, 23.141224>,  <38.921909, 37.295944, 22.922253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690174, 36.599094, 23.141224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088833, 36.568520, 23.152901>,  <39.328030, 36.550175, 23.159906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.088833, 36.568520, 23.152901>,  <38.690174, 36.599094, 23.141224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088833, 36.568520, 23.152901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049575, -0.280270, 0.958640,
		-0.065094, -0.956873, -0.283120,
		0.996647, -0.076437, 0.029193,
		39.387829, 36.545589, 23.161659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090061, 36.141773, 23.054312>,  <38.690174, 36.599094, 23.141224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090061, 36.141773, 23.054312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.692814, 36.108719, 23.087500>,  <37.454464, 36.088886, 23.107412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.692814, 36.108719, 23.087500>,  <38.090061, 36.141773, 23.054312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692814, 36.108719, 23.087500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112145, 0.467189, -0.877017,
		0.033712, -0.880287, -0.473242,
		-0.993120, -0.082638, 0.082970,
		37.394878, 36.083927, 23.112391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972179, 35.947983, 22.435877>,  <38.090061, 36.141773, 23.054312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972179, 35.947983, 22.435877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.608925, 36.059895, 22.560471>,  <37.390972, 36.127041, 22.635227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.608925, 36.059895, 22.560471>,  <37.972179, 35.947983, 22.435877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608925, 36.059895, 22.560471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188568, 0.390920, -0.900902,
		-0.373817, -0.876873, -0.302250,
		-0.908131, 0.279778, 0.311482,
		37.336487, 36.143829, 22.653915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465523, 35.674534, 22.004822>,  <37.972179, 35.947983, 22.435877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465523, 35.674534, 22.004822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.292305, 35.995560, 22.168953>,  <37.188374, 36.188175, 22.267431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.292305, 35.995560, 22.168953>,  <37.465523, 35.674534, 22.004822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292305, 35.995560, 22.168953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225246, 0.344431, -0.911390,
		-0.872776, -0.487095, 0.031620,
		-0.433043, 0.802562, 0.410328,
		37.162392, 36.236328, 22.292051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843399, 35.685703, 21.701262>,  <37.465523, 35.674534, 22.004822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843399, 35.685703, 21.701262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850067, 36.054455, 21.856106>,  <36.854069, 36.275707, 21.949013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.850067, 36.054455, 21.856106>,  <36.843399, 35.685703, 21.701262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850067, 36.054455, 21.856106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397081, 0.361429, -0.843621,
		-0.917632, -0.139653, 0.372086,
		0.016668, 0.921882, 0.387112,
		36.855068, 36.331020, 21.972239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224735, 35.916447, 21.412739>,  <36.843399, 35.685703, 21.701262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224735, 35.916447, 21.412739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.424156, 36.246475, 21.519096>,  <36.543808, 36.444492, 21.582911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.424156, 36.246475, 21.519096>,  <36.224735, 35.916447, 21.412739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424156, 36.246475, 21.519096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349642, 0.472072, -0.809258,
		-0.793217, 0.310493, 0.523833,
		0.498556, 0.825071, 0.265894,
		36.573723, 36.493996, 21.598866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774834, 36.491428, 21.317930>,  <36.224735, 35.916447, 21.412739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774834, 36.491428, 21.317930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.146000, 36.640446, 21.323458>,  <36.368698, 36.729855, 21.326775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.146000, 36.640446, 21.323458>,  <35.774834, 36.491428, 21.317930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146000, 36.640446, 21.323458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180498, 0.481387, -0.857722,
		-0.326189, 0.793397, 0.513928,
		0.927912, 0.372542, 0.013817,
		36.424374, 36.752209, 21.327602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715958, 37.218781, 21.241537>,  <35.774834, 36.491428, 21.317930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715958, 37.218781, 21.241537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075310, 37.118546, 21.097250>,  <36.290920, 37.058407, 21.010677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.075310, 37.118546, 21.097250>,  <35.715958, 37.218781, 21.241537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075310, 37.118546, 21.097250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288481, 0.282644, -0.914817,
		0.331195, 0.925915, 0.181633,
		0.898381, -0.250585, -0.360719,
		36.344826, 37.043369, 20.989035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254654, 37.674675, 21.309017>,  <35.715958, 37.218781, 21.241537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254654, 37.674675, 21.309017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.860832, 37.684895, 21.239740>,  <34.624538, 37.691025, 21.198174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.860832, 37.684895, 21.239740>,  <35.254654, 37.674675, 21.309017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860832, 37.684895, 21.239740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169109, -0.394676, 0.903124,
		-0.045280, 0.918465, 0.392901,
		-0.984557, 0.025550, -0.173191,
		34.565464, 37.692558, 21.187782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901222, 38.090614, 21.902157>,  <35.254654, 37.674675, 21.309017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901222, 38.090614, 21.902157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.608131, 37.868675, 21.744547>,  <34.432278, 37.735512, 21.649981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.608131, 37.868675, 21.744547>,  <34.901222, 38.090614, 21.902157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608131, 37.868675, 21.744547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385804, -0.138280, 0.912159,
		-0.560591, 0.820382, -0.112739,
		-0.732730, -0.554843, -0.394025,
		34.388313, 37.702221, 21.626339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361626, 38.156364, 22.323265>,  <34.901222, 38.090614, 21.902157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361626, 38.156364, 22.323265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.286884, 37.822407, 22.116177>,  <34.242039, 37.622032, 21.991924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.286884, 37.822407, 22.116177>,  <34.361626, 38.156364, 22.323265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286884, 37.822407, 22.116177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303647, -0.452114, 0.838685,
		-0.934283, 0.313917, -0.169033,
		-0.186856, -0.834895, -0.517722,
		34.230827, 37.571938, 21.960859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650970, 37.997520, 22.411619>,  <34.361626, 38.156364, 22.323265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650970, 37.997520, 22.411619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827881, 37.656475, 22.300308>,  <33.934029, 37.451847, 22.233521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827881, 37.656475, 22.300308>,  <33.650970, 37.997520, 22.411619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827881, 37.656475, 22.300308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390503, -0.462385, 0.796057,
		-0.807403, -0.243408, -0.537451,
		0.442276, -0.852615, -0.278279,
		33.960564, 37.400692, 22.216824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151138, 37.601814, 22.625235>,  <33.650970, 37.997520, 22.411619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151138, 37.601814, 22.625235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.472660, 37.368172, 22.580116>,  <33.665573, 37.227985, 22.553045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.472660, 37.368172, 22.580116>,  <33.151138, 37.601814, 22.625235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472660, 37.368172, 22.580116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316929, -0.580912, 0.749731,
		-0.503446, -0.566888, -0.652059,
		0.803802, -0.584105, -0.112795,
		33.713799, 37.192940, 22.546278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962421, 36.839138, 22.741760>,  <33.151138, 37.601814, 22.625235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962421, 36.839138, 22.741760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357155, 36.877369, 22.793940>,  <33.593994, 36.900307, 22.825247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.357155, 36.877369, 22.793940>,  <32.962421, 36.839138, 22.741760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357155, 36.877369, 22.793940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058837, -0.539157, 0.840148,
		0.150636, -0.836764, -0.526436,
		0.986837, 0.095582, 0.130449,
		33.653206, 36.906044, 22.833075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278149, 36.149387, 22.761497>,  <32.962421, 36.839138, 22.741760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278149, 36.149387, 22.761497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.528225, 36.397247, 22.951305>,  <33.678272, 36.545963, 23.065189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.528225, 36.397247, 22.951305>,  <33.278149, 36.149387, 22.761497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528225, 36.397247, 22.951305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010337, -0.601364, 0.798908,
		0.780401, -0.504378, -0.369564,
		0.625194, 0.619649, 0.474519,
		33.715782, 36.583141, 23.093660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.876766, 42.049839, 20.519169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.141624, 41.796734, 20.358587>,  <37.300541, 41.644871, 20.262238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.141624, 41.796734, 20.358587>,  <36.876766, 42.049839, 20.519169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141624, 41.796734, 20.358587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067084, -0.583624, 0.809248,
		-0.746363, -0.508912, -0.428895,
		0.662149, -0.632765, -0.401456,
		37.340271, 41.606903, 20.238150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535038, 41.352909, 20.482819>,  <36.876766, 42.049839, 20.519169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535038, 41.352909, 20.482819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.926697, 41.359695, 20.563795>,  <37.161694, 41.363766, 20.612381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.926697, 41.359695, 20.563795>,  <36.535038, 41.352909, 20.482819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926697, 41.359695, 20.563795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164872, -0.515852, 0.840663,
		0.118690, -0.856510, -0.502298,
		0.979147, 0.016964, 0.202441,
		37.220440, 41.364784, 20.624527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701962, 40.691196, 20.663351>,  <36.535038, 41.352909, 20.482819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701962, 40.691196, 20.663351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.961826, 40.941666, 20.835794>,  <37.117744, 41.091946, 20.939260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.961826, 40.941666, 20.835794>,  <36.701962, 40.691196, 20.663351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961826, 40.941666, 20.835794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169592, -0.433417, 0.885092,
		0.741067, -0.648121, -0.175380,
		0.649660, 0.626170, 0.431107,
		37.156723, 41.129517, 20.965126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028603, 40.316830, 21.155878>,  <36.701962, 40.691196, 20.663351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028603, 40.316830, 21.155878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.080704, 40.692268, 21.283669>,  <37.111965, 40.917534, 21.360342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.080704, 40.692268, 21.283669>,  <37.028603, 40.316830, 21.155878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080704, 40.692268, 21.283669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389107, -0.247978, 0.887188,
		0.911937, -0.239873, 0.332914,
		0.130257, 0.938599, 0.319476,
		37.119781, 40.973846, 21.379511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045975, 40.233234, 21.737759>,  <37.028603, 40.316830, 21.155878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045975, 40.233234, 21.737759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.043194, 40.632313, 21.764759>,  <37.041527, 40.871761, 21.780960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.043194, 40.632313, 21.764759>,  <37.045975, 40.233234, 21.737759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043194, 40.632313, 21.764759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124477, -0.067842, 0.989900,
		0.992198, -0.001519, 0.124662,
		-0.006954, 0.997695, 0.067502,
		37.041107, 40.931622, 21.785009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526150, 40.333431, 22.343666>,  <37.045975, 40.233234, 21.737759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526150, 40.333431, 22.343666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.252556, 40.620590, 22.291836>,  <37.088398, 40.792885, 22.260736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.252556, 40.620590, 22.291836>,  <37.526150, 40.333431, 22.343666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252556, 40.620590, 22.291836> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090345, 0.092897, 0.991568,
		0.723878, 0.689927, 0.001317,
		-0.683988, 0.717893, -0.129578,
		37.047359, 40.835957, 22.252962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696259, 41.024719, 22.778269>,  <37.526150, 40.333431, 22.343666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696259, 41.024719, 22.778269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.309296, 40.977814, 22.688499>,  <37.077118, 40.949673, 22.634638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.309296, 40.977814, 22.688499>,  <37.696259, 41.024719, 22.778269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309296, 40.977814, 22.688499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234274, 0.078212, 0.969019,
		-0.096075, 0.990017, -0.103134,
		-0.967412, -0.117260, -0.224421,
		37.019073, 40.942635, 22.621174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310925, 41.420204, 23.285965>,  <37.696259, 41.024719, 22.778269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310925, 41.420204, 23.285965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.010735, 41.192131, 23.152290>,  <36.830620, 41.055286, 23.072084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.010735, 41.192131, 23.152290>,  <37.310925, 41.420204, 23.285965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010735, 41.192131, 23.152290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338591, -0.102550, 0.935329,
		-0.567576, 0.815094, -0.116096,
		-0.750476, -0.570179, -0.334188,
		36.785591, 41.021076, 23.052034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699612, 41.646572, 23.584843>,  <37.310925, 41.420204, 23.285965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699612, 41.646572, 23.584843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.622826, 41.272011, 23.467339>,  <36.576756, 41.047272, 23.396837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.622826, 41.272011, 23.467339>,  <36.699612, 41.646572, 23.584843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622826, 41.272011, 23.467339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308854, -0.226475, 0.923752,
		-0.931536, 0.268053, -0.245739,
		-0.191961, -0.936406, -0.293759,
		36.565239, 40.991089, 23.379211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154179, 41.548866, 23.983273>,  <36.699612, 41.646572, 23.584843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154179, 41.548866, 23.983273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.266544, 41.175884, 23.892401>,  <36.333965, 40.952095, 23.837877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.266544, 41.175884, 23.892401>,  <36.154179, 41.548866, 23.983273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266544, 41.175884, 23.892401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386088, -0.326511, 0.862743,
		-0.878648, -0.154646, -0.451733,
		0.280916, -0.932456, -0.227182,
		36.350819, 40.896149, 23.824245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523602, 41.119339, 23.900249>,  <36.154179, 41.548866, 23.983273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523602, 41.119339, 23.900249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.843563, 40.907009, 24.012239>,  <36.035538, 40.779613, 24.079433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.843563, 40.907009, 24.012239>,  <35.523602, 41.119339, 23.900249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843563, 40.907009, 24.012239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452196, -0.226397, 0.862707,
		-0.394561, -0.816683, -0.421131,
		0.799900, -0.530824, 0.279973,
		36.083534, 40.747761, 24.096231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.187870, 40.654266, 24.304747>,  <35.523602, 41.119339, 23.900249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.187870, 40.654266, 24.304747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.573692, 40.587730, 24.386681>,  <35.805187, 40.547810, 24.435841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.573692, 40.587730, 24.386681>,  <35.187870, 40.654266, 24.304747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573692, 40.587730, 24.386681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240008, -0.230521, 0.943004,
		-0.109636, -0.958745, -0.262273,
		0.964560, -0.166335, 0.204833,
		35.863060, 40.537830, 24.448130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719028, 40.238956, 23.871252>,  <35.187870, 40.654266, 24.304747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719028, 40.238956, 23.871252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.319641, 40.235806, 23.849377>,  <34.080009, 40.233917, 23.836252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.319641, 40.235806, 23.849377>,  <34.719028, 40.238956, 23.871252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319641, 40.235806, 23.849377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032324, 0.719511, -0.693729,
		0.044811, -0.694437, -0.718157,
		-0.998472, -0.007873, -0.054689,
		34.020100, 40.233444, 23.832970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596657, 40.249104, 23.167885>,  <34.719028, 40.238956, 23.871252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596657, 40.249104, 23.167885> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.241386, 40.355473, 23.317781>,  <34.028225, 40.419292, 23.407719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.241386, 40.355473, 23.317781>,  <34.596657, 40.249104, 23.167885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241386, 40.355473, 23.317781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141092, 0.618315, -0.773162,
		-0.437308, -0.739576, -0.511653,
		-0.888175, 0.265920, 0.374742,
		33.974934, 40.435249, 23.430204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163464, 40.288883, 22.624590>,  <34.596657, 40.249104, 23.167885>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163464, 40.288883, 22.624590> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.952007, 40.503803, 22.887451>,  <33.825134, 40.632755, 23.045168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.952007, 40.503803, 22.887451>,  <34.163464, 40.288883, 22.624590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952007, 40.503803, 22.887451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196455, 0.675713, -0.710505,
		-0.825800, -0.504703, -0.251655,
		-0.528641, 0.537296, 0.657154,
		33.793415, 40.664993, 23.084597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448112, 40.254635, 22.360144>,  <34.163464, 40.288883, 22.624590>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448112, 40.254635, 22.360144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.534077, 40.579216, 22.577534>,  <33.585655, 40.773964, 22.707968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.534077, 40.579216, 22.577534>,  <33.448112, 40.254635, 22.360144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534077, 40.579216, 22.577534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467296, 0.574080, -0.672359,
		-0.857583, -0.109469, 0.502561,
		0.214908, 0.811448, 0.543476,
		33.598549, 40.822651, 22.740576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842033, 40.630730, 22.171553>,  <33.448112, 40.254635, 22.360144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842033, 40.630730, 22.171553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.107555, 40.896423, 22.309048>,  <33.266869, 41.055840, 22.391544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.107555, 40.896423, 22.309048>,  <32.842033, 40.630730, 22.171553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107555, 40.896423, 22.309048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135201, 0.558604, -0.818341,
		-0.735583, 0.496746, 0.460609,
		0.663806, 0.664233, 0.343739,
		33.306698, 41.095692, 22.412169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652267, 41.283276, 21.860493>,  <32.842033, 40.630730, 22.171553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652267, 41.283276, 21.860493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.018574, 41.362606, 22.000223>,  <33.238358, 41.410206, 22.084063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.018574, 41.362606, 22.000223>,  <32.652267, 41.283276, 21.860493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018574, 41.362606, 22.000223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215669, 0.490909, -0.844094,
		-0.338898, 0.848335, 0.406786,
		0.915770, 0.198331, 0.349328,
		33.293304, 41.422104, 22.105022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784489, 42.071560, 21.775488>,  <32.652267, 41.283276, 21.860493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784489, 42.071560, 21.775488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.135784, 41.891232, 21.839308>,  <33.346561, 41.783035, 21.877600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.135784, 41.891232, 21.839308>,  <32.784489, 42.071560, 21.775488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135784, 41.891232, 21.839308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338925, 0.351393, -0.872727,
		0.337376, 0.820540, 0.461401,
		0.878241, -0.450817, 0.159550,
		33.399258, 41.755985, 21.887173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324474, 42.585815, 21.579912>,  <32.784489, 42.071560, 21.775488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324474, 42.585815, 21.579912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.506481, 42.231018, 21.548414>,  <33.615685, 42.018139, 21.529514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.506481, 42.231018, 21.548414>,  <33.324474, 42.585815, 21.579912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506481, 42.231018, 21.548414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311689, 0.241481, -0.918987,
		0.834150, 0.393614, 0.386345,
		0.455021, -0.886992, -0.078746,
		33.642986, 41.964920, 21.524790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056732, 42.609131, 21.320431>,  <33.324474, 42.585815, 21.579912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056732, 42.609131, 21.320431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.951847, 42.234688, 21.226671>,  <33.888916, 42.010021, 21.170416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.951847, 42.234688, 21.226671>,  <34.056732, 42.609131, 21.320431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951847, 42.234688, 21.226671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368310, 0.127430, -0.920929,
		0.891958, -0.327815, 0.311364,
		-0.262217, -0.936108, -0.234399,
		33.873180, 41.953854, 21.156351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725597, 42.266979, 20.947481>,  <34.056732, 42.609131, 21.320431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725597, 42.266979, 20.947481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.383141, 42.081341, 20.856581>,  <34.177666, 41.969959, 20.802040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.383141, 42.081341, 20.856581>,  <34.725597, 42.266979, 20.947481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383141, 42.081341, 20.856581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153167, 0.192105, -0.969348,
		0.493526, -0.864703, -0.093384,
		-0.856138, -0.464095, -0.227253,
		34.126301, 41.942112, 20.788404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949379, 41.837139, 20.456001>,  <34.725597, 42.266979, 20.947481>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949379, 41.837139, 20.456001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.554462, 41.819328, 20.394991>,  <34.317513, 41.808643, 20.358385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.554462, 41.819328, 20.394991>,  <34.949379, 41.837139, 20.456001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554462, 41.819328, 20.394991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154472, -0.044064, -0.987014,
		0.037227, -0.998036, 0.050383,
		-0.987295, -0.044526, -0.152528,
		34.258274, 41.805969, 20.349232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806198, 41.387787, 19.967554>,  <34.949379, 41.837139, 20.456001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806198, 41.387787, 19.967554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.470997, 41.604752, 19.943747>,  <34.269875, 41.734928, 19.929462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.470997, 41.604752, 19.943747>,  <34.806198, 41.387787, 19.967554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470997, 41.604752, 19.943747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125145, 0.084880, -0.988501,
		-0.531121, -0.835815, -0.139010,
		-0.838003, 0.542410, -0.059517,
		34.219597, 41.767475, 19.925892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651432, 41.199806, 19.382061>,  <34.806198, 41.387787, 19.967554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651432, 41.199806, 19.382061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.433491, 41.533115, 19.419559>,  <34.302727, 41.733101, 19.442059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.433491, 41.533115, 19.419559>,  <34.651432, 41.199806, 19.382061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.433491, 41.533115, 19.419559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099757, 0.175420, -0.979426,
		-0.832575, -0.524294, -0.178704,
		-0.544855, 0.833273, 0.093748,
		34.270035, 41.783096, 19.447683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956783, 40.603382, 19.774424>,  <34.651432, 41.199806, 19.382061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956783, 40.603382, 19.774424> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.891594, 40.362068, 19.462147>,  <34.852482, 40.217278, 19.274780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.891594, 40.362068, 19.462147>,  <34.956783, 40.603382, 19.774424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891594, 40.362068, 19.462147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114175, -0.774425, 0.622278,
		-0.980002, 0.190551, 0.057332,
		-0.162975, -0.603288, -0.780694,
		34.842701, 40.181084, 19.227938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301785, 40.271236, 19.840731>,  <34.956783, 40.603382, 19.774424>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301785, 40.271236, 19.840731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.494473, 40.017429, 19.598959>,  <34.610085, 39.865147, 19.453896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.494473, 40.017429, 19.598959>,  <34.301785, 40.271236, 19.840731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494473, 40.017429, 19.598959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194593, -0.749966, 0.632206,
		-0.854445, -0.186931, -0.484748,
		0.481723, -0.634514, -0.604429,
		34.638988, 39.827076, 19.417629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773582, 39.726570, 19.786903>,  <34.301785, 40.271236, 19.840731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773582, 39.726570, 19.786903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.128807, 39.587029, 19.667135>,  <34.341942, 39.503304, 19.595274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.128807, 39.587029, 19.667135>,  <33.773582, 39.726570, 19.786903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128807, 39.587029, 19.667135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125624, -0.810653, 0.571891,
		-0.442231, -0.470259, -0.763733,
		0.888060, -0.348851, -0.299420,
		34.395226, 39.482372, 19.577309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689438, 38.990749, 19.565693>,  <33.773582, 39.726570, 19.786903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689438, 38.990749, 19.565693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.072197, 39.055233, 19.662329>,  <34.301853, 39.093925, 19.720310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.072197, 39.055233, 19.662329>,  <33.689438, 38.990749, 19.565693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072197, 39.055233, 19.662329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012685, -0.807820, 0.589292,
		0.290163, -0.566954, -0.770953,
		0.956893, 0.161211, 0.241592,
		34.359264, 39.103596, 19.734806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937145, 38.372143, 19.476791>,  <33.689438, 38.990749, 19.565693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937145, 38.372143, 19.476791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.239071, 38.538921, 19.679340>,  <34.420227, 38.638988, 19.800869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.239071, 38.538921, 19.679340>,  <33.937145, 38.372143, 19.476791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239071, 38.538921, 19.679340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095157, -0.833416, 0.544391,
		0.648999, -0.362730, -0.668750,
		0.754815, 0.416946, 0.506370,
		34.465515, 38.664005, 19.831251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390812, 37.838852, 19.531618>,  <33.937145, 38.372143, 19.476791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390812, 37.838852, 19.531618> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.432373, 38.104160, 19.828070>,  <34.457310, 38.263348, 20.005941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.432373, 38.104160, 19.828070>,  <34.390812, 37.838852, 19.531618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432373, 38.104160, 19.828070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170252, -0.746023, 0.643789,
		0.979908, 0.059290, -0.190435,
		0.103899, 0.663275, 0.741128,
		34.463543, 38.303143, 20.050407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928089, 37.565681, 19.868849>,  <34.390812, 37.838852, 19.531618>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928089, 37.565681, 19.868849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.739227, 37.806061, 20.126820>,  <34.625912, 37.950287, 20.281603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.739227, 37.806061, 20.126820>,  <34.928089, 37.565681, 19.868849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739227, 37.806061, 20.126820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023010, -0.739764, 0.672473,
		0.881216, 0.302670, 0.363110,
		-0.472154, 0.600949, 0.644928,
		34.597580, 37.986347, 20.320297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173923, 37.459846, 20.542082>,  <34.928089, 37.565681, 19.868849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173923, 37.459846, 20.542082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.822166, 37.626759, 20.633776>,  <34.611115, 37.726906, 20.688791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.822166, 37.626759, 20.633776>,  <35.173923, 37.459846, 20.542082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822166, 37.626759, 20.633776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046168, -0.553951, 0.831268,
		0.473859, 0.720425, 0.506404,
		-0.879390, 0.417283, 0.229234,
		34.558350, 37.751945, 20.702545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837330, 37.717476, 20.688995>,  <35.173923, 37.459846, 20.542082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837330, 37.717476, 20.688995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.146091, 37.468246, 20.638494>,  <36.331348, 37.318710, 20.608194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.146091, 37.468246, 20.638494>,  <35.837330, 37.717476, 20.688995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146091, 37.468246, 20.638494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084857, 0.297798, -0.950850,
		0.630046, 0.723255, 0.282745,
		0.771908, -0.623072, -0.126253,
		36.377663, 37.281326, 20.600618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369129, 38.023617, 20.465469>,  <35.837330, 37.717476, 20.688995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369129, 38.023617, 20.465469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.463154, 37.663109, 20.319893>,  <36.519569, 37.446804, 20.232546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.463154, 37.663109, 20.319893>,  <36.369129, 38.023617, 20.465469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463154, 37.663109, 20.319893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124167, 0.399209, -0.908414,
		0.964018, 0.168341, 0.205745,
		0.235058, -0.901273, -0.363942,
		36.533672, 37.392727, 20.210711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.893482, 38.234684, 19.982523>,  <36.369129, 38.023617, 20.465469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.893482, 38.234684, 19.982523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.830051, 37.849678, 19.894503>,  <36.791992, 37.618675, 19.841690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.830051, 37.849678, 19.894503>,  <36.893482, 38.234684, 19.982523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830051, 37.849678, 19.894503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310638, 0.162916, -0.936463,
		0.937207, -0.216859, 0.273158,
		-0.158578, -0.962513, -0.220050,
		36.782478, 37.560925, 19.828487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512215, 37.943871, 19.647572>,  <36.893482, 38.234684, 19.982523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512215, 37.943871, 19.647572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.203125, 37.713264, 19.541344>,  <37.017670, 37.574902, 19.477606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.203125, 37.713264, 19.541344>,  <37.512215, 37.943871, 19.647572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203125, 37.713264, 19.541344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182412, 0.199050, -0.962863,
		0.607965, -0.792472, -0.048648,
		-0.772725, -0.576513, -0.265572,
		36.971306, 37.540310, 19.461672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793190, 37.564064, 19.046198>,  <37.512215, 37.943871, 19.647572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793190, 37.564064, 19.046198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.397804, 37.506306, 19.027922>,  <37.160572, 37.471649, 19.016956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.397804, 37.506306, 19.027922>,  <37.793190, 37.564064, 19.046198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397804, 37.506306, 19.027922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039807, 0.043367, -0.998266,
		0.146127, -0.988569, -0.037118,
		-0.988465, -0.144396, -0.045689,
		37.101265, 37.462986, 19.014215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682468, 37.070976, 18.524946>,  <37.793190, 37.564064, 19.046198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682468, 37.070976, 18.524946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.339149, 37.274647, 18.550459>,  <37.133160, 37.396851, 18.565765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.339149, 37.274647, 18.550459>,  <37.682468, 37.070976, 18.524946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339149, 37.274647, 18.550459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003585, 0.118338, -0.992967,
		-0.513146, -0.852486, -0.099744,
		-0.858294, 0.509179, 0.063781,
		37.081661, 37.427399, 18.569593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327854, 36.898491, 17.778677>,  <37.682468, 37.070976, 18.524946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327854, 36.898491, 17.778677> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.152435, 37.210392, 17.957409>,  <37.047184, 37.397533, 18.064648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.152435, 37.210392, 17.957409>,  <37.327854, 36.898491, 17.778677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.152435, 37.210392, 17.957409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284827, 0.350968, -0.892018,
		-0.852377, -0.518465, 0.068177,
		-0.438552, 0.779754, 0.446830,
		37.020870, 37.444317, 18.091457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696346, 36.996365, 17.447439>,  <37.327854, 36.898491, 17.778677>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696346, 36.996365, 17.447439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.786667, 37.349541, 17.612085>,  <36.840858, 37.561447, 17.710873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.786667, 37.349541, 17.612085>,  <36.696346, 36.996365, 17.447439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786667, 37.349541, 17.612085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178166, 0.452830, -0.873614,
		-0.957743, 0.123926, 0.259559,
		0.225799, 0.882943, 0.411615,
		36.854408, 37.614422, 17.735571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165184, 37.516819, 17.221617>,  <36.696346, 36.996365, 17.447439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165184, 37.516819, 17.221617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.483212, 37.737820, 17.321712>,  <36.674026, 37.870419, 17.381769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.483212, 37.737820, 17.321712>,  <36.165184, 37.516819, 17.221617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483212, 37.737820, 17.321712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034407, 0.452997, -0.890848,
		-0.605549, 0.699671, 0.379172,
		0.795064, 0.552498, 0.250238,
		36.721729, 37.903568, 17.396784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.043030, 32.782543, 32.918568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.356041, 32.940582, 32.726093>,  <37.543850, 33.035408, 32.610607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.356041, 32.940582, 32.726093>,  <37.043030, 32.782543, 32.918568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356041, 32.940582, 32.726093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382892, -0.304039, -0.872327,
		-0.490957, 0.866865, -0.086639,
		0.782531, 0.395102, -0.481186,
		37.590801, 33.059113, 32.581738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734898, 33.183662, 32.450821>,  <37.043030, 32.782543, 32.918568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734898, 33.183662, 32.450821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096966, 33.105656, 32.299751>,  <37.314205, 33.058853, 32.209110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.096966, 33.105656, 32.299751>,  <36.734898, 33.183662, 32.450821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096966, 33.105656, 32.299751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408011, -0.149553, -0.900645,
		0.119154, 0.969332, -0.214938,
		0.905168, -0.195012, -0.377678,
		37.368515, 33.047153, 32.186447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829304, 33.686348, 31.928108>,  <36.734898, 33.183662, 32.450821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829304, 33.686348, 31.928108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054405, 33.365429, 31.848476>,  <37.189465, 33.172878, 31.800697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054405, 33.365429, 31.848476>,  <36.829304, 33.686348, 31.928108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054405, 33.365429, 31.848476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310251, 0.018234, -0.950480,
		0.766195, 0.596649, -0.238652,
		0.562751, -0.802295, -0.199081,
		37.223232, 33.124741, 31.788752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201572, 33.914726, 31.398111>,  <36.829304, 33.686348, 31.928108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201572, 33.914726, 31.398111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208694, 33.515041, 31.383890>,  <37.212967, 33.275230, 31.375359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208694, 33.515041, 31.383890>,  <37.201572, 33.914726, 31.398111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208694, 33.515041, 31.383890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330876, 0.027665, -0.943269,
		0.943506, 0.028557, -0.330122,
		0.017804, -0.999210, -0.035551,
		37.214035, 33.215279, 31.373224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633759, 33.718327, 30.883940>,  <37.201572, 33.914726, 31.398111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633759, 33.718327, 30.883940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400349, 33.396702, 30.929539>,  <37.260303, 33.203728, 30.956898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400349, 33.396702, 30.929539>,  <37.633759, 33.718327, 30.883940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400349, 33.396702, 30.929539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065944, -0.092995, -0.993480,
		0.809417, -0.587233, 0.001242,
		-0.583520, -0.804058, 0.113996,
		37.225292, 33.155483, 30.963737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863060, 33.306591, 30.344172>,  <37.633759, 33.718327, 30.883940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863060, 33.306591, 30.344172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.519314, 33.145107, 30.469713>,  <37.313065, 33.048218, 30.545038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.519314, 33.145107, 30.469713>,  <37.863060, 33.306591, 30.344172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519314, 33.145107, 30.469713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213994, -0.273515, -0.937761,
		0.464424, -0.873047, 0.148660,
		-0.859370, -0.403706, 0.313854,
		37.261501, 33.023994, 30.563869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823769, 32.683453, 30.113991>,  <37.863060, 33.306591, 30.344172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823769, 32.683453, 30.113991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.441769, 32.785233, 30.174959>,  <37.212570, 32.846302, 30.211540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.441769, 32.785233, 30.174959>,  <37.823769, 32.683453, 30.113991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441769, 32.785233, 30.174959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218092, -0.254108, -0.942266,
		-0.201023, -0.933106, 0.298166,
		-0.955001, 0.254445, 0.152421,
		37.155270, 32.861568, 30.220686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396164, 32.245411, 29.818918>,  <37.823769, 32.683453, 30.113991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396164, 32.245411, 29.818918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.157925, 32.566128, 29.838491>,  <37.014980, 32.758556, 29.850235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.157925, 32.566128, 29.838491>,  <37.396164, 32.245411, 29.818918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157925, 32.566128, 29.838491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258587, -0.133699, -0.956691,
		-0.760523, -0.582457, 0.286964,
		-0.595598, 0.801791, 0.048935,
		36.979244, 32.806664, 29.853172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807201, 32.036728, 29.445070>,  <37.396164, 32.245411, 29.818918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807201, 32.036728, 29.445070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778767, 32.435181, 29.465736>,  <36.761707, 32.674252, 29.478136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.778767, 32.435181, 29.465736>,  <36.807201, 32.036728, 29.445070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778767, 32.435181, 29.465736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322637, 0.026049, -0.946164,
		-0.943850, -0.083930, 0.319537,
		-0.071088, 0.996131, 0.051666,
		36.757439, 32.734020, 29.481236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127930, 32.248085, 29.139706>,  <36.807201, 32.036728, 29.445070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127930, 32.248085, 29.139706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355785, 32.575542, 29.110483>,  <36.492500, 32.772018, 29.092951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355785, 32.575542, 29.110483>,  <36.127930, 32.248085, 29.139706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355785, 32.575542, 29.110483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185913, 0.041761, -0.981678,
		-0.800593, 0.572783, 0.175984,
		0.569638, 0.818643, -0.073054,
		36.526676, 32.821136, 29.088568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778564, 32.712662, 28.664507>,  <36.127930, 32.248085, 29.139706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778564, 32.712662, 28.664507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.121368, 32.918427, 28.676624>,  <36.327049, 33.041885, 28.683895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.121368, 32.918427, 28.676624>,  <35.778564, 32.712662, 28.664507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121368, 32.918427, 28.676624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159120, 0.320086, -0.933930,
		-0.490124, 0.795564, 0.356169,
		0.857006, 0.514416, 0.030292,
		36.378471, 33.072750, 28.685713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603291, 33.449436, 28.423075>,  <35.778564, 32.712662, 28.664507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603291, 33.449436, 28.423075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994995, 33.378960, 28.383078>,  <36.230019, 33.336674, 28.359079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.994995, 33.378960, 28.383078>,  <35.603291, 33.449436, 28.423075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994995, 33.378960, 28.383078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037140, 0.329093, -0.943567,
		0.199151, 0.927716, 0.315725,
		0.979265, -0.176187, -0.099995,
		36.288776, 33.326103, 28.353079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145309, 34.174477, 28.423176>,  <35.603291, 33.449436, 28.423075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145309, 34.174477, 28.423176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837826, 33.935314, 28.332319>,  <34.653336, 33.791817, 28.277805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.837826, 33.935314, 28.332319>,  <35.145309, 34.174477, 28.423176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837826, 33.935314, 28.332319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120636, -0.213221, 0.969528,
		-0.628119, 0.772686, 0.091776,
		-0.768709, -0.597907, -0.227142,
		34.607212, 33.755943, 28.264177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668777, 34.277081, 29.002338>,  <35.145309, 34.174477, 28.423176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668777, 34.277081, 29.002338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542809, 33.934334, 28.839071>,  <34.467228, 33.728687, 28.741110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.542809, 33.934334, 28.839071>,  <34.668777, 34.277081, 29.002338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542809, 33.934334, 28.839071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359344, -0.290392, 0.886873,
		-0.878461, 0.425972, -0.216458,
		-0.314925, -0.856867, -0.408169,
		34.448330, 33.677273, 28.716621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022724, 34.180576, 29.283499>,  <34.668777, 34.277081, 29.002338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022724, 34.180576, 29.283499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.158566, 33.822815, 29.167074>,  <34.240070, 33.608158, 29.097219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.158566, 33.822815, 29.167074>,  <34.022724, 34.180576, 29.283499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158566, 33.822815, 29.167074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243069, -0.382395, 0.891455,
		-0.908617, -0.231995, -0.347264,
		0.339606, -0.894400, -0.291060,
		34.260448, 33.554493, 29.079756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585014, 33.754757, 29.599211>,  <34.022724, 34.180576, 29.283499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585014, 33.754757, 29.599211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874580, 33.491753, 29.515667>,  <34.048321, 33.333950, 29.465540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.874580, 33.491753, 29.515667>,  <33.585014, 33.754757, 29.599211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874580, 33.491753, 29.515667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119711, -0.417874, 0.900583,
		-0.679421, -0.626944, -0.381218,
		0.723917, -0.657512, -0.208860,
		34.091755, 33.294498, 29.453009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268044, 33.135319, 29.634584>,  <33.585014, 33.754757, 29.599211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268044, 33.135319, 29.634584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652733, 33.030479, 29.666552>,  <33.883549, 32.967575, 29.685732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652733, 33.030479, 29.666552>,  <33.268044, 33.135319, 29.634584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652733, 33.030479, 29.666552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208975, -0.512934, 0.832603,
		-0.177229, -0.817438, -0.548074,
		0.961727, -0.262095, 0.079918,
		33.941250, 32.951851, 29.690527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277180, 32.424221, 29.606668>,  <33.268044, 33.135319, 29.634584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277180, 32.424221, 29.606668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630711, 32.518791, 29.768137>,  <33.842831, 32.575535, 29.865019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630711, 32.518791, 29.768137>,  <33.277180, 32.424221, 29.606668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630711, 32.518791, 29.768137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172918, -0.636676, 0.751494,
		0.434684, -0.733993, -0.521828,
		0.883826, 0.236429, 0.403674,
		33.895859, 32.589722, 29.889238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705288, 31.752020, 29.772263>,  <33.277180, 32.424221, 29.606668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705288, 31.752020, 29.772263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879143, 32.033012, 29.997690>,  <33.983456, 32.201607, 30.132946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.879143, 32.033012, 29.997690>,  <33.705288, 31.752020, 29.772263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879143, 32.033012, 29.997690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214827, -0.526835, 0.822371,
		0.874607, -0.478505, -0.078072,
		0.434640, 0.702480, 0.563570,
		34.009533, 32.243755, 30.166761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212238, 31.495869, 30.195982>,  <33.705288, 31.752020, 29.772263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212238, 31.495869, 30.195982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083683, 31.831884, 30.370819>,  <34.006550, 32.033493, 30.475721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083683, 31.831884, 30.370819>,  <34.212238, 31.495869, 30.195982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083683, 31.831884, 30.370819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133907, -0.497257, 0.857208,
		0.937433, 0.216965, 0.272298,
		-0.321386, 0.840037, 0.437092,
		33.987267, 32.083897, 30.501947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473263, 31.438614, 30.898617>,  <34.212238, 31.495869, 30.195982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473263, 31.438614, 30.898617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.205753, 31.735136, 30.921301>,  <34.045250, 31.913050, 30.934912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.205753, 31.735136, 30.921301>,  <34.473263, 31.438614, 30.898617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205753, 31.735136, 30.921301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208947, -0.260608, 0.942563,
		0.713505, 0.618508, 0.329180,
		-0.668769, 0.741304, 0.056710,
		34.005123, 31.957527, 30.938314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513203, 31.750116, 31.558296>,  <34.473263, 31.438614, 30.898617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513203, 31.750116, 31.558296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137077, 31.836517, 31.453115>,  <33.911400, 31.888359, 31.390007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.137077, 31.836517, 31.453115>,  <34.513203, 31.750116, 31.558296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137077, 31.836517, 31.453115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304694, -0.190316, 0.933242,
		0.151540, 0.957665, 0.244773,
		-0.940318, 0.216005, -0.262954,
		33.854980, 31.901320, 31.374229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249611, 32.192131, 32.099617>,  <34.513203, 31.750116, 31.558296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249611, 32.192131, 32.099617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.924789, 32.047535, 31.916361>,  <33.729897, 31.960777, 31.806408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.924789, 32.047535, 31.916361>,  <34.249611, 32.192131, 32.099617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924789, 32.047535, 31.916361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440326, -0.135660, 0.887530,
		-0.382982, 0.922455, -0.049009,
		-0.812058, -0.361488, -0.458136,
		33.681171, 31.939089, 31.778919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725250, 32.507355, 32.449238>,  <34.249611, 32.192131, 32.099617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725250, 32.507355, 32.449238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555496, 32.199036, 32.259178>,  <33.453644, 32.014046, 32.145142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555496, 32.199036, 32.259178>,  <33.725250, 32.507355, 32.449238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555496, 32.199036, 32.259178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476654, -0.255982, 0.840997,
		-0.769867, 0.583391, -0.258768,
		-0.424390, -0.770798, -0.475147,
		33.428181, 31.967796, 32.116634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994579, 32.559971, 32.727478>,  <33.725250, 32.507355, 32.449238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994579, 32.559971, 32.727478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045124, 32.194542, 32.572861>,  <33.075451, 31.975285, 32.480091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.045124, 32.194542, 32.572861>,  <32.994579, 32.559971, 32.727478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045124, 32.194542, 32.572861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385195, -0.404278, 0.829568,
		-0.914143, 0.044069, -0.402989,
		0.126362, -0.913574, -0.386543,
		33.083035, 31.920469, 32.456898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465878, 33.013901, 32.554951>,  <32.994579, 32.559971, 32.727478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465878, 33.013901, 32.554951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.232998, 33.234669, 32.793758>,  <32.093269, 33.367130, 32.937042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.232998, 33.234669, 32.793758>,  <32.465878, 33.013901, 32.554951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232998, 33.234669, 32.793758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211506, 0.811829, -0.544241,
		-0.785054, -0.190584, -0.589380,
		-0.582199, 0.551916, 0.597020,
		32.058338, 33.400242, 32.972866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996506, 33.248383, 32.109013>,  <32.465878, 33.013901, 32.554951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996506, 33.248383, 32.109013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.999041, 33.496681, 32.422607>,  <32.000561, 33.645660, 32.610764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.999041, 33.496681, 32.422607>,  <31.996506, 33.248383, 32.109013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.999041, 33.496681, 32.422607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154591, 0.773967, -0.614066,
		-0.987958, 0.125090, -0.091056,
		0.006340, 0.620748, 0.783985,
		32.000942, 33.682907, 32.657803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333605, 33.620548, 32.296379>,  <31.996506, 33.248383, 32.109013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333605, 33.620548, 32.296379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.694334, 33.785114, 32.349224>,  <31.910770, 33.883854, 32.380932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.694334, 33.785114, 32.349224>,  <31.333605, 33.620548, 32.296379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694334, 33.785114, 32.349224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277621, 0.785947, -0.552462,
		-0.331126, 0.461546, 0.823002,
		0.901822, 0.411417, 0.132113,
		31.964880, 33.908539, 32.388859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242554, 34.400257, 32.410408>,  <31.333605, 33.620548, 32.296379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242554, 34.400257, 32.410408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623716, 34.338482, 32.306007>,  <31.852413, 34.301418, 32.243366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.623716, 34.338482, 32.306007>,  <31.242554, 34.400257, 32.410408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623716, 34.338482, 32.306007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055203, 0.757912, -0.650017,
		0.298203, 0.633813, 0.713692,
		0.952905, -0.154439, -0.261000,
		31.909588, 34.292149, 32.227707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426422, 35.038399, 32.356342>,  <31.242554, 34.400257, 32.410408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426422, 35.038399, 32.356342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710491, 34.861553, 32.137184>,  <31.880932, 34.755444, 32.005688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.710491, 34.861553, 32.137184>,  <31.426422, 35.038399, 32.356342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.710491, 34.861553, 32.137184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032248, 0.797840, -0.602006,
		0.703290, 0.409859, 0.580860,
		0.710171, -0.442117, -0.547896,
		31.923542, 34.728916, 31.972815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939001, 35.582401, 32.208809>,  <31.426422, 35.038399, 32.356342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939001, 35.582401, 32.208809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023056, 35.331348, 31.908962>,  <32.073490, 35.180717, 31.729053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.023056, 35.331348, 31.908962>,  <31.939001, 35.582401, 32.208809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023056, 35.331348, 31.908962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086435, 0.775660, -0.625204,
		0.973844, 0.066584, 0.217243,
		0.210135, -0.627628, -0.749617,
		32.086098, 35.143059, 31.684076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543659, 35.782650, 31.850069>,  <31.939001, 35.582401, 32.208809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543659, 35.782650, 31.850069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368786, 35.537708, 31.586588>,  <32.263863, 35.390743, 31.428499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.368786, 35.537708, 31.586588>,  <32.543659, 35.782650, 31.850069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368786, 35.537708, 31.586588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222831, 0.635815, -0.738976,
		0.871329, -0.469849, -0.141518,
		-0.437186, -0.612357, -0.658701,
		32.237629, 35.354000, 31.388977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065468, 35.764126, 31.398603>,  <32.543659, 35.782650, 31.850069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065468, 35.764126, 31.398603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732895, 35.625580, 31.224825>,  <32.533352, 35.542454, 31.120558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.732895, 35.625580, 31.224825>,  <33.065468, 35.764126, 31.398603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732895, 35.625580, 31.224825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239927, 0.481441, -0.843000,
		0.501144, -0.805138, -0.317187,
		-0.831438, -0.346363, -0.434446,
		32.483463, 35.521671, 31.094490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207935, 35.569267, 30.818665>,  <33.065468, 35.764126, 31.398603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207935, 35.569267, 30.818665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815216, 35.619198, 30.761415>,  <32.579582, 35.649155, 30.727066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.815216, 35.619198, 30.761415>,  <33.207935, 35.569267, 30.818665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815216, 35.619198, 30.761415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177949, 0.341432, -0.922907,
		-0.066338, -0.931581, -0.357431,
		-0.981801, 0.124828, -0.143124,
		32.520676, 35.656647, 30.718477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059330, 35.347603, 30.178032>,  <33.207935, 35.569267, 30.818665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059330, 35.347603, 30.178032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.730724, 35.564995, 30.247015>,  <32.533562, 35.695431, 30.288404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.730724, 35.564995, 30.247015>,  <33.059330, 35.347603, 30.178032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730724, 35.564995, 30.247015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016778, 0.325366, -0.945439,
		-0.569939, -0.773800, -0.276412,
		-0.821516, 0.543480, 0.172456,
		32.484268, 35.728039, 30.298752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685051, 35.239147, 29.623291>,  <33.059330, 35.347603, 30.178032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685051, 35.239147, 29.623291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547817, 35.576298, 29.789110>,  <32.465477, 35.778587, 29.888601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.547817, 35.576298, 29.789110>,  <32.685051, 35.239147, 29.623291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547817, 35.576298, 29.789110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081598, 0.466407, -0.880799,
		-0.935755, -0.268358, -0.228793,
		-0.343080, 0.842881, 0.414546,
		32.444893, 35.829163, 29.913473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327656, 35.590992, 29.120338>,  <32.685051, 35.239147, 29.623291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327656, 35.590992, 29.120338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387798, 35.890442, 29.378626>,  <32.423885, 36.070110, 29.533598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387798, 35.890442, 29.378626>,  <32.327656, 35.590992, 29.120338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387798, 35.890442, 29.378626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045080, 0.657655, -0.751969,
		-0.987604, 0.083955, 0.132630,
		0.150356, 0.748626, 0.645718,
		32.432903, 36.115028, 29.572342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.930304, 36.111553, 28.847275>,  <32.327656, 35.590992, 29.120338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.930304, 36.111553, 28.847275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205639, 36.274391, 29.087429>,  <32.370838, 36.372093, 29.231522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205639, 36.274391, 29.087429>,  <31.930304, 36.111553, 28.847275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205639, 36.274391, 29.087429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095926, 0.769317, -0.631624,
		-0.719020, 0.492363, 0.490498,
		0.688337, 0.407099, 0.600386,
		32.412140, 36.396523, 29.267544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781782, 36.838753, 28.952419>,  <31.930304, 36.111553, 28.847275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781782, 36.838753, 28.952419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.171444, 36.799332, 29.033720>,  <32.405239, 36.775677, 29.082500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.171444, 36.799332, 29.033720>,  <31.781782, 36.838753, 28.952419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171444, 36.799332, 29.033720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220492, 0.610348, -0.760827,
		-0.049071, 0.785978, 0.616304,
		0.974154, -0.098556, 0.203252,
		32.463692, 36.769764, 29.094696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934477, 37.454655, 28.854162>,  <31.781782, 36.838753, 28.952419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934477, 37.454655, 28.854162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.282368, 37.259911, 28.821800>,  <32.491100, 37.143066, 28.802383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.282368, 37.259911, 28.821800>,  <31.934477, 37.454655, 28.854162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282368, 37.259911, 28.821800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252244, 0.579401, -0.775027,
		0.424205, 0.653654, 0.626727,
		0.869726, -0.486859, -0.080905,
		32.543285, 37.113853, 28.797529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463924, 37.968880, 28.674366>,  <31.934477, 37.454655, 28.854162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463924, 37.968880, 28.674366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657326, 37.627743, 28.595491>,  <32.773365, 37.423061, 28.548166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657326, 37.627743, 28.595491>,  <32.463924, 37.968880, 28.674366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657326, 37.627743, 28.595491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244122, 0.347707, -0.905265,
		0.840614, 0.389559, 0.376315,
		0.483501, -0.852845, -0.197187,
		32.802376, 37.371891, 28.536335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081593, 38.208359, 28.478018>,  <32.463924, 37.968880, 28.674366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081593, 38.208359, 28.478018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033016, 37.836311, 28.339378>,  <33.003872, 37.613083, 28.256195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033016, 37.836311, 28.339378>,  <33.081593, 38.208359, 28.478018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033016, 37.836311, 28.339378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233636, 0.312587, -0.920708,
		0.964710, -0.192790, 0.179349,
		-0.121441, -0.930119, -0.346599,
		32.996582, 37.557274, 28.235399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660831, 38.084564, 28.041727>,  <33.081593, 38.208359, 28.478018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660831, 38.084564, 28.041727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374348, 37.840290, 27.906605>,  <33.202457, 37.693726, 27.825531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.374348, 37.840290, 27.906605>,  <33.660831, 38.084564, 28.041727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374348, 37.840290, 27.906605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222295, 0.259203, -0.939893,
		0.661537, -0.748251, -0.049891,
		-0.716208, -0.610684, -0.337805,
		33.159485, 37.657085, 27.805264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975639, 37.832600, 27.461786>,  <33.660831, 38.084564, 28.041727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975639, 37.832600, 27.461786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587238, 37.759346, 27.400322>,  <33.354198, 37.715393, 27.363443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.587238, 37.759346, 27.400322>,  <33.975639, 37.832600, 27.461786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587238, 37.759346, 27.400322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095805, 0.290794, -0.951977,
		0.219021, -0.939096, -0.264817,
		-0.971005, -0.183132, -0.153660,
		33.295937, 37.704407, 27.354223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002209, 37.394703, 26.812773>,  <33.975639, 37.832600, 27.461786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002209, 37.394703, 26.812773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630638, 37.540794, 26.837093>,  <33.407696, 37.628448, 26.851686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.630638, 37.540794, 26.837093>,  <34.002209, 37.394703, 26.812773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630638, 37.540794, 26.837093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075789, 0.348306, -0.934312,
		-0.362414, -0.863303, -0.351232,
		-0.928931, 0.365227, 0.060802,
		33.351959, 37.650364, 26.855333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586380, 37.102711, 26.321627>,  <34.002209, 37.394703, 26.812773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586380, 37.102711, 26.321627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.382183, 37.435505, 26.408531>,  <33.259663, 37.635181, 26.460674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.382183, 37.435505, 26.408531>,  <33.586380, 37.102711, 26.321627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382183, 37.435505, 26.408531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009847, 0.246990, -0.968968,
		-0.859824, -0.496793, -0.117894,
		-0.510495, 0.831981, 0.217260,
		33.229034, 37.685101, 26.473709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105652, 37.241016, 25.794640>,  <33.586380, 37.102711, 26.321627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105652, 37.241016, 25.794640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151981, 37.602859, 25.958719>,  <33.179779, 37.819965, 26.057167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.151981, 37.602859, 25.958719>,  <33.105652, 37.241016, 25.794640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151981, 37.602859, 25.958719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065262, 0.405158, -0.911915,
		-0.991123, 0.132394, -0.012109,
		0.115826, 0.904610, 0.410201,
		33.186729, 37.874241, 26.081779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928059, 37.646820, 25.177227>,  <33.105652, 37.241016, 25.794640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928059, 37.646820, 25.177227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053047, 37.902817, 25.458015>,  <33.128040, 38.056416, 25.626490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.053047, 37.902817, 25.458015>,  <32.928059, 37.646820, 25.177227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053047, 37.902817, 25.458015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096906, 0.713645, -0.693772,
		-0.944970, 0.284812, 0.160977,
		0.312475, 0.639994, 0.701973,
		33.146790, 38.094814, 25.668608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423195, 38.161945, 25.127960>,  <32.928059, 37.646820, 25.177227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423195, 38.161945, 25.127960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.760254, 38.313923, 25.280586>,  <32.962490, 38.405109, 25.372162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.760254, 38.313923, 25.280586>,  <32.423195, 38.161945, 25.127960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760254, 38.313923, 25.280586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029304, 0.675203, -0.737050,
		-0.537671, 0.632253, 0.557823,
		0.842645, 0.379944, 0.381565,
		33.013046, 38.427906, 25.395056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370380, 38.965313, 25.079239>,  <32.423195, 38.161945, 25.127960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370380, 38.965313, 25.079239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753147, 38.849350, 25.085800>,  <32.982807, 38.779770, 25.089737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753147, 38.849350, 25.085800>,  <32.370380, 38.965313, 25.079239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753147, 38.849350, 25.085800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211560, 0.657381, -0.723251,
		0.198897, 0.695558, 0.690391,
		0.956913, -0.289912, 0.016401,
		33.040222, 38.762375, 25.090721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730682, 39.534428, 25.180069>,  <32.370380, 38.965313, 25.079239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730682, 39.534428, 25.180069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.021732, 39.306896, 25.026709>,  <33.196362, 39.170376, 24.934692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.021732, 39.306896, 25.026709>,  <32.730682, 39.534428, 25.180069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021732, 39.306896, 25.026709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325495, 0.778284, -0.536961,
		0.603832, 0.265913, 0.751450,
		0.727627, -0.568828, -0.383399,
		33.240021, 39.136250, 24.911690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281631, 39.980068, 25.163166>,  <32.730682, 39.534428, 25.180069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281631, 39.980068, 25.163166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416496, 39.687592, 24.925955>,  <33.497414, 39.512104, 24.783628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416496, 39.687592, 24.925955>,  <33.281631, 39.980068, 25.163166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416496, 39.687592, 24.925955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438947, 0.679344, -0.588062,
		0.832855, -0.062036, 0.550003,
		0.337160, -0.731193, -0.593026,
		33.517643, 39.468235, 24.748047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029797, 40.122169, 25.085220>,  <33.281631, 39.980068, 25.163166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029797, 40.122169, 25.085220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.888214, 39.919727, 24.770622>,  <33.803265, 39.798264, 24.581863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.888214, 39.919727, 24.770622>,  <34.029797, 40.122169, 25.085220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888214, 39.919727, 24.770622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323463, 0.722798, -0.610684,
		0.877548, -0.470555, -0.092129,
		-0.353952, -0.506104, -0.786497,
		33.782028, 39.767895, 24.534674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504993, 40.236359, 24.609381>,  <34.029797, 40.122169, 25.085220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504993, 40.236359, 24.609381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197323, 40.122803, 24.380377>,  <34.012718, 40.054668, 24.242973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.197323, 40.122803, 24.380377>,  <34.504993, 40.236359, 24.609381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197323, 40.122803, 24.380377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161827, 0.780168, -0.604277,
		0.618203, -0.557445, -0.554149,
		-0.769180, -0.283889, -0.572511,
		33.966568, 40.037636, 24.208624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269814, 39.970093, 24.662882>,  <34.504993, 40.236359, 24.609381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269814, 39.970093, 24.662882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630737, 40.115143, 24.756121>,  <35.847294, 40.202171, 24.812065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630737, 40.115143, 24.756121>,  <35.269814, 39.970093, 24.662882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630737, 40.115143, 24.756121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111589, -0.325820, 0.938823,
		0.416391, -0.873123, -0.253526,
		0.902312, 0.362627, 0.233099,
		35.901432, 40.223930, 24.826050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848049, 39.427948, 24.855455>,  <35.269814, 39.970093, 24.662882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848049, 39.427948, 24.855455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944733, 39.769794, 25.039288>,  <36.002743, 39.974903, 25.149586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.944733, 39.769794, 25.039288>,  <35.848049, 39.427948, 24.855455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944733, 39.769794, 25.039288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038314, -0.481658, 0.875521,
		0.969592, -0.194012, -0.149164,
		0.241708, 0.854614, 0.459579,
		36.017246, 40.026180, 25.177162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339157, 39.252068, 25.516283>,  <35.848049, 39.427948, 24.855455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339157, 39.252068, 25.516283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.206398, 39.621307, 25.593973>,  <36.126743, 39.842854, 25.640587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.206398, 39.621307, 25.593973>,  <36.339157, 39.252068, 25.516283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206398, 39.621307, 25.593973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024465, -0.197405, 0.980017,
		0.942997, 0.330021, 0.042936,
		-0.331902, 0.923102, 0.194226,
		36.106827, 39.898239, 25.652241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759838, 39.474968, 25.997789>,  <36.339157, 39.252068, 25.516283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759838, 39.474968, 25.997789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.434048, 39.706753, 26.009493>,  <36.238575, 39.845825, 26.016514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.434048, 39.706753, 26.009493>,  <36.759838, 39.474968, 25.997789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434048, 39.706753, 26.009493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047885, -0.117389, 0.991931,
		0.578223, 0.806500, 0.123357,
		-0.814473, 0.579464, 0.029258,
		36.189705, 39.880592, 26.018270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871742, 39.735313, 26.566795>,  <36.759838, 39.474968, 25.997789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871742, 39.735313, 26.566795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490509, 39.851898, 26.534073>,  <36.261768, 39.921848, 26.514439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.490509, 39.851898, 26.534073>,  <36.871742, 39.735313, 26.566795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490509, 39.851898, 26.534073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155362, -0.239001, 0.958510,
		0.259814, 0.926245, 0.273069,
		-0.953079, 0.291459, -0.081808,
		36.204586, 39.939335, 26.509531>
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
