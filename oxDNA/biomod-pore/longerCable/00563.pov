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
	<24.134302, 35.188175, 34.783974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222031, 34.979435, 35.113720>,  <24.274668, 34.854191, 35.311565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222031, 34.979435, 35.113720>,  <24.134302, 35.188175, 34.783974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.222031, 34.979435, 35.113720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596368, -0.740417, -0.310045,
		0.772168, -0.423623, -0.473604,
		0.219322, -0.521849, 0.824361,
		24.287827, 34.822880, 35.361027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.344337, 34.527233, 34.656734>,  <24.134302, 35.188175, 34.783974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.344337, 34.527233, 34.656734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170963, 34.523651, 35.017189>,  <24.066938, 34.521503, 35.233463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170963, 34.523651, 35.017189>,  <24.344337, 34.527233, 34.656734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.170963, 34.523651, 35.017189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636770, -0.704544, -0.313276,
		0.637697, -0.709604, 0.299674,
		-0.433436, -0.008952, 0.901140,
		24.040932, 34.520966, 35.287533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.535147, 33.868385, 35.029999>,  <24.344337, 34.527233, 34.656734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.535147, 33.868385, 35.029999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732418, 33.587692, 35.235657>,  <24.850780, 33.419277, 35.359051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.732418, 33.587692, 35.235657>,  <24.535147, 33.868385, 35.029999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.732418, 33.587692, 35.235657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807934, 0.150363, -0.569766,
		0.322514, 0.696393, 0.641109,
		0.493180, -0.701732, 0.514146,
		24.880373, 33.377174, 35.389900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.004261, 34.170525, 35.441307>,  <24.535147, 33.868385, 35.029999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.004261, 34.170525, 35.441307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.138700, 33.812328, 35.324596>,  <25.219364, 33.597412, 35.254570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.138700, 33.812328, 35.324596>,  <25.004261, 34.170525, 35.441307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.138700, 33.812328, 35.324596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855002, 0.420025, -0.304222,
		0.394982, -0.147223, 0.906815,
		0.336097, -0.895491, -0.291779,
		25.239529, 33.543682, 35.237064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.646015, 33.934162, 35.647190>,  <25.004261, 34.170525, 35.441307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.646015, 33.934162, 35.647190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600027, 33.687965, 35.335304>,  <25.572433, 33.540245, 35.148174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.600027, 33.687965, 35.335304>,  <25.646015, 33.934162, 35.647190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.600027, 33.687965, 35.335304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940404, 0.185439, -0.285050,
		0.320036, -0.766016, 0.557492,
		-0.114972, -0.615493, -0.779711,
		25.565535, 33.503319, 35.101391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077738, 34.082485, 34.988605>,  <25.646015, 33.934162, 35.647190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077738, 34.082485, 34.988605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167288, 34.218239, 34.623158>,  <26.221018, 34.299690, 34.403889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167288, 34.218239, 34.623158>,  <26.077738, 34.082485, 34.988605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167288, 34.218239, 34.623158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561757, -0.721096, -0.405524,
		-0.796435, 0.604017, 0.029217,
		0.223875, 0.339386, -0.913618,
		26.234451, 34.320053, 34.349072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.517885, 34.031475, 34.598705>,  <26.077738, 34.082485, 34.988605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.517885, 34.031475, 34.598705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843449, 34.008221, 34.367474>,  <26.038786, 33.994267, 34.228733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843449, 34.008221, 34.367474>,  <25.517885, 34.031475, 34.598705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843449, 34.008221, 34.367474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384495, -0.799826, -0.460915,
		-0.435568, 0.597410, -0.673336,
		0.813907, -0.058135, -0.578080,
		26.087620, 33.990780, 34.194050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.341257, 34.246468, 33.880566>,  <25.517885, 34.031475, 34.598705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.341257, 34.246468, 33.880566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615213, 33.972725, 33.980629>,  <25.779587, 33.808479, 34.040665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.615213, 33.972725, 33.980629>,  <25.341257, 34.246468, 33.880566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.615213, 33.972725, 33.980629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594914, -0.723429, -0.350325,
		0.420717, 0.091114, -0.902605,
		0.684890, -0.684360, 0.250154,
		25.820681, 33.767418, 34.055676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.606045, 33.786304, 33.379337>,  <25.341257, 34.246468, 33.880566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.606045, 33.786304, 33.379337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649614, 33.548649, 33.698116>,  <25.675756, 33.406055, 33.889385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649614, 33.548649, 33.698116>,  <25.606045, 33.786304, 33.379337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649614, 33.548649, 33.698116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426742, -0.752035, -0.502329,
		0.897790, -0.285377, -0.335459,
		0.108924, -0.594141, 0.796952,
		25.682291, 33.370407, 33.937202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.993086, 33.304749, 33.246284>,  <25.606045, 33.786304, 33.379337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.993086, 33.304749, 33.246284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834316, 33.114071, 33.560028>,  <25.739054, 32.999664, 33.748276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834316, 33.114071, 33.560028>,  <25.993086, 33.304749, 33.246284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834316, 33.114071, 33.560028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138566, -0.813643, -0.564610,
		0.907332, -0.332792, 0.256901,
		-0.396923, -0.476691, 0.784358,
		25.715239, 32.971066, 33.795334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298134, 32.718956, 33.309780>,  <25.993086, 33.304749, 33.246284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298134, 32.718956, 33.309780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959549, 32.626774, 33.501778>,  <25.756399, 32.571465, 33.616978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.959549, 32.626774, 33.501778>,  <26.298134, 32.718956, 33.309780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.959549, 32.626774, 33.501778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041904, -0.869855, -0.491525,
		0.530800, -0.436170, 0.726641,
		-0.846461, -0.230452, 0.479997,
		25.705610, 32.557640, 33.645775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327377, 32.034870, 33.613304>,  <26.298134, 32.718956, 33.309780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327377, 32.034870, 33.613304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940454, 32.117664, 33.554688>,  <25.708302, 32.167339, 33.519520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.940454, 32.117664, 33.554688>,  <26.327377, 32.034870, 33.613304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940454, 32.117664, 33.554688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118178, -0.879141, -0.461677,
		-0.224387, -0.429266, 0.874861,
		-0.967308, 0.206984, -0.146538,
		25.650263, 32.179760, 33.510727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802263, 31.666309, 33.104549>,  <26.327377, 32.034870, 33.613304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802263, 31.666309, 33.104549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558187, 31.487164, 33.365955>,  <25.411741, 31.379677, 33.522800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.558187, 31.487164, 33.365955>,  <25.802263, 31.666309, 33.104549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558187, 31.487164, 33.365955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092589, 0.859544, 0.502604,
		-0.786825, 0.246176, -0.565953,
		-0.610191, -0.447862, 0.653518,
		25.375130, 31.352804, 33.562012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085186, 31.891644, 33.037357>,  <25.802263, 31.666309, 33.104549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.085186, 31.891644, 33.037357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247715, 31.791632, 33.388901>,  <25.345232, 31.731625, 33.599827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247715, 31.791632, 33.388901>,  <25.085186, 31.891644, 33.037357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247715, 31.791632, 33.388901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108099, 0.941925, 0.317949,
		-0.907312, -0.224194, 0.355700,
		0.406325, -0.250028, 0.878855,
		25.369612, 31.716623, 33.652557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.569609, 32.091305, 33.545670>,  <25.085186, 31.891644, 33.037357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.569609, 32.091305, 33.545670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955935, 32.085320, 33.649193>,  <25.187729, 32.081730, 33.711308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955935, 32.085320, 33.649193>,  <24.569609, 32.091305, 33.545670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.955935, 32.085320, 33.649193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124034, 0.849988, 0.511992,
		-0.227644, -0.526590, 0.819074,
		0.965813, -0.014959, 0.258810,
		25.245678, 32.080833, 33.726837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.589262, 32.368568, 34.281639>,  <24.569609, 32.091305, 33.545670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.589262, 32.368568, 34.281639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941038, 32.412273, 34.096317>,  <25.152103, 32.438496, 33.985123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.941038, 32.412273, 34.096317>,  <24.589262, 32.368568, 34.281639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941038, 32.412273, 34.096317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179025, 0.825925, 0.534601,
		0.441065, -0.553092, 0.706790,
		0.879438, 0.109261, -0.463303,
		25.204870, 32.445053, 33.957325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.987751, 32.598225, 34.788765>,  <24.589262, 32.368568, 34.281639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.987751, 32.598225, 34.788765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215034, 32.720036, 34.482979>,  <25.351404, 32.793121, 34.299507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.215034, 32.720036, 34.482979>,  <24.987751, 32.598225, 34.788765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215034, 32.720036, 34.482979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317299, 0.776079, 0.544998,
		0.759252, -0.552235, 0.344346,
		0.568206, 0.304530, -0.764463,
		25.385496, 32.811394, 34.253639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.600552, 32.791599, 35.082008>,  <24.987751, 32.598225, 34.788765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.600552, 32.791599, 35.082008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594707, 32.970268, 34.724178>,  <25.591200, 33.077469, 34.509480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.594707, 32.970268, 34.724178>,  <25.600552, 32.791599, 35.082008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.594707, 32.970268, 34.724178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386103, 0.827803, 0.407022,
		0.922340, -0.339452, -0.184556,
		-0.014611, 0.446670, -0.894580,
		25.590324, 33.104271, 34.455803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.377077, 32.980175, 34.918655>,  <25.600552, 32.791599, 35.082008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.377077, 32.980175, 34.918655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081526, 33.214481, 34.785427>,  <25.904194, 33.355064, 34.705490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.081526, 33.214481, 34.785427>,  <26.377077, 32.980175, 34.918655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.081526, 33.214481, 34.785427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468689, 0.801890, 0.370544,
		0.484135, 0.117682, -0.867043,
		-0.738880, 0.585767, -0.333067,
		25.859861, 33.390213, 34.685509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740831, 32.868008, 34.329708>,  <26.377077, 32.980175, 34.918655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740831, 32.868008, 34.329708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451078, 33.140507, 34.287415>,  <26.277227, 33.304005, 34.262039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451078, 33.140507, 34.287415>,  <26.740831, 32.868008, 34.329708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451078, 33.140507, 34.287415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571262, 0.679001, 0.461105,
		0.385916, 0.273615, -0.881024,
		-0.724382, 0.681243, -0.105732,
		26.233765, 33.344879, 34.255695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932064, 33.482777, 33.964958>,  <26.740831, 32.868008, 34.329708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932064, 33.482777, 33.964958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643185, 33.546230, 34.234257>,  <26.469856, 33.584305, 34.395836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.643185, 33.546230, 34.234257>,  <26.932064, 33.482777, 33.964958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.643185, 33.546230, 34.234257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453788, 0.843257, 0.288088,
		-0.522019, 0.513569, -0.680987,
		-0.722200, 0.158636, 0.673247,
		26.426525, 33.593822, 34.436230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195526, 33.256241, 33.174736>,  <26.932064, 33.482777, 33.964958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195526, 33.256241, 33.174736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537714, 33.161430, 32.990566>,  <27.743027, 33.104546, 32.880066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.537714, 33.161430, 32.990566>,  <27.195526, 33.256241, 33.174736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537714, 33.161430, 32.990566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094553, -0.802662, 0.588892,
		-0.509148, -0.547314, -0.664241,
		0.855470, -0.237027, -0.460424,
		27.794355, 33.090321, 32.852440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804937, 33.565140, 33.472649>,  <27.195526, 33.256241, 33.174736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804937, 33.565140, 33.472649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871580, 33.170750, 33.476490>,  <27.911566, 32.934116, 33.478794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871580, 33.170750, 33.476490>,  <27.804937, 33.565140, 33.472649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871580, 33.170750, 33.476490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985052, 0.166869, 0.042743,
		-0.043746, 0.002338, 0.999040,
		0.166609, -0.985976, 0.009603,
		27.921562, 32.874958, 33.479370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083374, 33.350845, 34.185833>,  <27.804937, 33.565140, 33.472649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083374, 33.350845, 34.185833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188532, 33.203564, 33.829113>,  <28.251627, 33.115196, 33.615082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188532, 33.203564, 33.829113>,  <28.083374, 33.350845, 34.185833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188532, 33.203564, 33.829113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920666, 0.372169, 0.117743,
		0.288548, -0.852008, 0.436833,
		0.262894, -0.368203, -0.891804,
		28.267401, 33.093102, 33.561573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724958, 32.961620, 34.148823>,  <28.083374, 33.350845, 34.185833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724958, 32.961620, 34.148823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673674, 33.097775, 33.776222>,  <28.642902, 33.179466, 33.552662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673674, 33.097775, 33.776222>,  <28.724958, 32.961620, 34.148823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673674, 33.097775, 33.776222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985026, 0.152867, -0.079720,
		0.115261, -0.927777, -0.354887,
		-0.128213, 0.340385, -0.931504,
		28.635210, 33.199890, 33.496773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060070, 32.592049, 33.736462>,  <28.724958, 32.961620, 34.148823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060070, 32.592049, 33.736462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035875, 32.961361, 33.584724>,  <29.021358, 33.182949, 33.493683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.035875, 32.961361, 33.584724>,  <29.060070, 32.592049, 33.736462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035875, 32.961361, 33.584724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983071, -0.010747, -0.182908,
		-0.172952, -0.383987, -0.906996,
		-0.060487, 0.923276, -0.379345,
		29.017729, 33.238342, 33.470921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590633, 32.973705, 34.071766>,  <29.060070, 32.592049, 33.736462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590633, 32.973705, 34.071766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980017, 33.065250, 34.072186>,  <30.213646, 33.120178, 34.072437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980017, 33.065250, 34.072186>,  <29.590633, 32.973705, 34.071766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980017, 33.065250, 34.072186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157516, -0.673294, 0.722402,
		0.166035, -0.703064, -0.691473,
		0.973458, 0.228861, 0.001047,
		30.272055, 33.133907, 34.072498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885881, 32.650959, 34.687393>,  <29.590633, 32.973705, 34.071766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885881, 32.650959, 34.687393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239372, 32.789749, 34.561771>,  <30.451468, 32.873024, 34.486397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.239372, 32.789749, 34.561771>,  <29.885881, 32.650959, 34.687393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239372, 32.789749, 34.561771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464655, -0.570432, 0.677277,
		0.055852, -0.744456, -0.665331,
		0.883729, 0.346977, -0.314056,
		30.504490, 32.893841, 34.467556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254307, 32.142914, 34.392471>,  <29.885881, 32.650959, 34.687393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254307, 32.142914, 34.392471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451023, 32.418785, 34.605068>,  <30.569054, 32.584309, 34.732624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.451023, 32.418785, 34.605068>,  <30.254307, 32.142914, 34.392471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.451023, 32.418785, 34.605068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405291, -0.721569, 0.561318,
		0.770637, -0.060643, -0.634383,
		0.491791, 0.689682, 0.531489,
		30.598560, 32.625690, 34.764515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715054, 31.656542, 34.566647>,  <30.254307, 32.142914, 34.392471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715054, 31.656542, 34.566647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733065, 31.997982, 34.774239>,  <30.743872, 32.202847, 34.898792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733065, 31.997982, 34.774239>,  <30.715054, 31.656542, 34.566647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733065, 31.997982, 34.774239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421929, -0.487148, 0.764633,
		0.905510, 0.184542, -0.382094,
		0.045029, 0.853599, 0.518981,
		30.746574, 32.254063, 34.929932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765526, 31.475658, 33.829212>,  <30.715054, 31.656542, 34.566647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765526, 31.475658, 33.829212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696131, 31.486727, 33.435432>,  <30.654493, 31.493368, 33.199165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696131, 31.486727, 33.435432>,  <30.765526, 31.475658, 33.829212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696131, 31.486727, 33.435432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359324, -0.932475, 0.037112,
		-0.916946, 0.360173, 0.171714,
		-0.173485, 0.027672, -0.984448,
		30.644085, 31.495028, 33.140099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.297903, 31.138027, 33.365437>,  <30.765526, 31.475658, 33.829212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.297903, 31.138027, 33.365437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686583, 31.151005, 33.459034>,  <31.919790, 31.158792, 33.515194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686583, 31.151005, 33.459034>,  <31.297903, 31.138027, 33.365437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686583, 31.151005, 33.459034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220415, -0.231843, 0.947453,
		0.084992, -0.972212, -0.218129,
		0.971696, 0.032447, 0.233994,
		31.978092, 31.160738, 33.529232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498413, 30.459089, 33.629585>,  <31.297903, 31.138027, 33.365437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498413, 30.459089, 33.629585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753073, 30.732790, 33.771839>,  <31.905869, 30.897011, 33.857189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753073, 30.732790, 33.771839>,  <31.498413, 30.459089, 33.629585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753073, 30.732790, 33.771839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109687, -0.376128, 0.920052,
		0.763312, -0.624760, -0.164409,
		0.636651, 0.684253, 0.355632,
		31.944069, 30.938066, 33.878529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090591, 30.196959, 33.930378>,  <31.498413, 30.459089, 33.629585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090591, 30.196959, 33.930378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021374, 30.549658, 34.105915>,  <31.979843, 30.761276, 34.211235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021374, 30.549658, 34.105915>,  <32.090591, 30.196959, 33.930378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021374, 30.549658, 34.105915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056901, -0.435868, 0.898210,
		0.983270, 0.180398, 0.025251,
		-0.173041, 0.881746, 0.438841,
		31.969461, 30.814182, 34.237568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860382, 29.945932, 34.246727>,  <32.090591, 30.196959, 33.930378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860382, 29.945932, 34.246727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876999, 30.344938, 34.223965>,  <32.886967, 30.584341, 34.210308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876999, 30.344938, 34.223965>,  <32.860382, 29.945932, 34.246727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876999, 30.344938, 34.223965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077101, 0.053581, 0.995583,
		0.996158, -0.045743, -0.074683,
		0.041539, 0.997515, -0.056902,
		32.889462, 30.644194, 34.206894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436497, 30.138546, 34.576527>,  <32.860382, 29.945932, 34.246727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436497, 30.138546, 34.576527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168327, 30.435081, 34.588871>,  <33.007427, 30.613003, 34.596275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.168327, 30.435081, 34.588871>,  <33.436497, 30.138546, 34.576527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168327, 30.435081, 34.588871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139432, 0.085028, 0.986574,
		0.728762, 0.665723, -0.160371,
		-0.670421, 0.741339, 0.030858,
		32.967201, 30.657484, 34.598129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858395, 30.793371, 34.882309>,  <33.436497, 30.138546, 34.576527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858395, 30.793371, 34.882309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464554, 30.773535, 34.949360>,  <33.228249, 30.761633, 34.989590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.464554, 30.773535, 34.949360>,  <33.858395, 30.793371, 34.882309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464554, 30.773535, 34.949360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159242, 0.141063, 0.977110,
		-0.072101, 0.988758, -0.130994,
		-0.984603, -0.049591, 0.167623,
		33.169174, 30.758657, 34.999645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657429, 31.384867, 35.198383>,  <33.858395, 30.793371, 34.882309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657429, 31.384867, 35.198383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366631, 31.131693, 35.304867>,  <33.192150, 30.979788, 35.368759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366631, 31.131693, 35.304867>,  <33.657429, 31.384867, 35.198383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366631, 31.131693, 35.304867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266065, 0.097743, 0.958987,
		-0.632995, 0.768011, 0.097343,
		-0.726998, -0.632934, 0.266211,
		33.148533, 30.941813, 35.384731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173977, 31.607220, 35.724663>,  <33.657429, 31.384867, 35.198383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173977, 31.607220, 35.724663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209682, 31.209976, 35.755032>,  <33.231106, 30.971630, 35.773251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209682, 31.209976, 35.755032>,  <33.173977, 31.607220, 35.724663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209682, 31.209976, 35.755032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121522, 0.086512, 0.988811,
		-0.988567, -0.079043, 0.128408,
		0.089268, -0.993110, 0.075918,
		33.236462, 30.912043, 35.777805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658817, 31.624643, 36.217533>,  <33.173977, 31.607220, 35.724663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658817, 31.624643, 36.217533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669643, 31.320658, 36.477295>,  <33.676140, 31.138268, 36.633152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669643, 31.320658, 36.477295>,  <33.658817, 31.624643, 36.217533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669643, 31.320658, 36.477295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577393, -0.542199, -0.610440,
		0.816017, -0.358437, -0.453474,
		0.027068, -0.759963, 0.649403,
		33.677765, 31.092669, 36.672115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067146, 30.948122, 36.024601>,  <33.658817, 31.624643, 36.217533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067146, 30.948122, 36.024601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729111, 30.946898, 36.238449>,  <33.526291, 30.946163, 36.366756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729111, 30.946898, 36.238449>,  <34.067146, 30.948122, 36.024601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729111, 30.946898, 36.238449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493543, -0.379955, -0.782336,
		0.205526, -0.925000, 0.319585,
		-0.845089, -0.003062, 0.534618,
		33.475586, 30.945978, 36.398834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628227, 30.362797, 35.968578>,  <34.067146, 30.948122, 36.024601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628227, 30.362797, 35.968578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336750, 30.602551, 36.101089>,  <33.161865, 30.746403, 36.180595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336750, 30.602551, 36.101089>,  <33.628227, 30.362797, 35.968578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336750, 30.602551, 36.101089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545440, -0.215429, -0.809991,
		-0.414131, -0.770926, 0.483910,
		-0.728692, 0.599387, 0.331278,
		33.118141, 30.782366, 36.200474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944012, 29.946636, 35.914398>,  <33.628227, 30.362797, 35.968578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944012, 29.946636, 35.914398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904110, 30.343676, 35.886703>,  <32.880169, 30.581900, 35.870087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904110, 30.343676, 35.886703>,  <32.944012, 29.946636, 35.914398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904110, 30.343676, 35.886703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340208, -0.099419, -0.935080,
		-0.935044, -0.069725, 0.347609,
		-0.099757, 0.992600, -0.069240,
		32.874184, 30.641455, 35.865932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234531, 30.086666, 35.657379>,  <32.944012, 29.946636, 35.914398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234531, 30.086666, 35.657379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491356, 30.387383, 35.597294>,  <32.645451, 30.567812, 35.561241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491356, 30.387383, 35.597294>,  <32.234531, 30.086666, 35.657379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491356, 30.387383, 35.597294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353593, 0.116540, -0.928111,
		-0.680241, 0.649019, 0.340655,
		0.642062, 0.751793, -0.150214,
		32.683975, 30.612921, 35.552231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909136, 30.683779, 35.448105>,  <32.234531, 30.086666, 35.657379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909136, 30.683779, 35.448105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284618, 30.701143, 35.311317>,  <32.509907, 30.711561, 35.229244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284618, 30.701143, 35.311317>,  <31.909136, 30.683779, 35.448105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284618, 30.701143, 35.311317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343906, 0.185915, -0.920415,
		0.023623, 0.981606, 0.189449,
		0.938707, 0.043410, -0.341972,
		32.566231, 30.714167, 35.208725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858416, 31.175535, 34.958328>,  <31.909136, 30.683779, 35.448105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858416, 31.175535, 34.958328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202488, 30.992933, 34.867382>,  <32.408932, 30.883371, 34.812817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202488, 30.992933, 34.867382>,  <31.858416, 31.175535, 34.958328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202488, 30.992933, 34.867382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210551, 0.088168, -0.973599,
		0.464499, 0.885342, -0.020277,
		0.860180, -0.456505, -0.227364,
		32.460541, 30.855982, 34.799171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248642, 31.664970, 34.451931>,  <31.858416, 31.175535, 34.958328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248642, 31.664970, 34.451931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344559, 31.280067, 34.400448>,  <32.402107, 31.049126, 34.369556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344559, 31.280067, 34.400448>,  <32.248642, 31.664970, 34.451931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344559, 31.280067, 34.400448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134599, 0.098344, -0.986008,
		0.961449, 0.253759, -0.105937,
		0.239790, -0.962255, -0.128708,
		32.416496, 30.991390, 34.361835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989147, 31.634605, 34.149422>,  <32.248642, 31.664970, 34.451931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989147, 31.634605, 34.149422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677742, 31.395733, 34.072170>,  <32.490898, 31.252409, 34.025818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677742, 31.395733, 34.072170>,  <32.989147, 31.634605, 34.149422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677742, 31.395733, 34.072170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011631, 0.321385, -0.946877,
		0.627525, -0.734906, -0.257147,
		-0.778509, -0.597180, -0.193130,
		32.444191, 31.216579, 34.014233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223053, 31.281305, 33.635075>,  <32.989147, 31.634605, 34.149422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223053, 31.281305, 33.635075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825077, 31.250282, 33.609497>,  <32.586292, 31.231668, 33.594151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825077, 31.250282, 33.609497>,  <33.223053, 31.281305, 33.635075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825077, 31.250282, 33.609497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031716, 0.361427, -0.931861,
		0.095385, -0.929169, -0.357137,
		-0.994935, -0.077559, -0.063944,
		32.526596, 31.227015, 33.590313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019627, 30.992924, 32.973583>,  <33.223053, 31.281305, 33.635075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019627, 30.992924, 32.973583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712959, 31.209007, 33.112373>,  <32.528957, 31.338657, 33.195648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712959, 31.209007, 33.112373>,  <33.019627, 30.992924, 32.973583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712959, 31.209007, 33.112373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077687, 0.614513, -0.785073,
		-0.637325, -0.574936, -0.513095,
		-0.766670, 0.540207, 0.346979,
		32.482960, 31.371069, 33.216469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617596, 31.263054, 32.420193>,  <33.019627, 30.992924, 32.973583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617596, 31.263054, 32.420193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508816, 31.497484, 32.725494>,  <32.443546, 31.638142, 32.908676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508816, 31.497484, 32.725494>,  <32.617596, 31.263054, 32.420193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508816, 31.497484, 32.725494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005035, 0.794003, -0.607893,
		-0.962298, -0.161474, -0.218880,
		-0.271950, 0.586076, 0.763255,
		32.427231, 31.673307, 32.954472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012806, 31.717434, 32.426254>,  <32.617596, 31.263054, 32.420193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012806, 31.717434, 32.426254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296974, 31.903690, 32.637341>,  <32.467476, 32.015446, 32.763992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.296974, 31.903690, 32.637341>,  <32.012806, 31.717434, 32.426254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296974, 31.903690, 32.637341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114939, 0.816528, -0.565749,
		-0.694329, 0.341264, 0.633598,
		0.710420, 0.465641, 0.527714,
		32.510101, 32.043381, 32.795654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793795, 32.255028, 32.925388>,  <32.012806, 31.717434, 32.426254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793795, 32.255028, 32.925388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154881, 32.330601, 32.770775>,  <32.371532, 32.375946, 32.678005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154881, 32.330601, 32.770775>,  <31.793795, 32.255028, 32.925388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154881, 32.330601, 32.770775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361750, 0.819645, -0.444206,
		0.232896, 0.540821, 0.808252,
		0.902716, 0.188931, -0.386534,
		32.425694, 32.387280, 32.654816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034935, 32.954105, 33.059689>,  <31.793795, 32.255028, 32.925388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034935, 32.954105, 33.059689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244591, 32.863266, 32.731373>,  <32.370384, 32.808762, 32.534382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.244591, 32.863266, 32.731373>,  <32.034935, 32.954105, 33.059689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244591, 32.863266, 32.731373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167257, 0.917570, -0.360680,
		0.835044, 0.326331, 0.442956,
		0.524144, -0.227096, -0.820792,
		32.401833, 32.795135, 32.485134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657265, 33.344418, 32.943562>,  <32.034935, 32.954105, 33.059689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657265, 33.344418, 32.943562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468754, 33.231937, 32.609180>,  <32.355648, 33.164448, 32.408550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.468754, 33.231937, 32.609180>,  <32.657265, 33.344418, 32.943562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.468754, 33.231937, 32.609180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091409, 0.958281, -0.270818,
		0.877233, -0.051218, -0.477325,
		-0.471282, -0.281203, -0.835953,
		32.327370, 33.147575, 32.358395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019749, 33.540329, 32.256989>,  <32.657265, 33.344418, 32.943562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019749, 33.540329, 32.256989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621262, 33.508808, 32.271626>,  <32.382168, 33.489895, 32.280407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.621262, 33.508808, 32.271626>,  <33.019749, 33.540329, 32.256989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621262, 33.508808, 32.271626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086232, 0.948180, -0.305808,
		-0.010595, -0.307807, -0.951390,
		-0.996219, -0.078800, 0.036588,
		32.322395, 33.485168, 32.282600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665058, 33.612076, 31.614935>,  <33.019749, 33.540329, 32.256989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665058, 33.612076, 31.614935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439430, 33.788731, 31.894012>,  <32.304054, 33.894722, 32.061459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439430, 33.788731, 31.894012>,  <32.665058, 33.612076, 31.614935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439430, 33.788731, 31.894012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179433, 0.890318, -0.418495,
		-0.805993, -0.110872, -0.581449,
		-0.564074, 0.441635, 0.697696,
		32.270206, 33.921223, 32.103321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154701, 34.022018, 31.288448>,  <32.665058, 33.612076, 31.614935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154701, 34.022018, 31.288448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270039, 34.162628, 31.644716>,  <32.339241, 34.246994, 31.858477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270039, 34.162628, 31.644716>,  <32.154701, 34.022018, 31.288448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270039, 34.162628, 31.644716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290226, 0.854336, -0.431136,
		-0.912485, 0.382810, 0.144320,
		0.288341, 0.351520, 0.890670,
		32.356541, 34.268085, 31.911917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753658, 34.582939, 31.473722>,  <32.154701, 34.022018, 31.288448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753658, 34.582939, 31.473722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112549, 34.625050, 31.645260>,  <32.327881, 34.650318, 31.748182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.112549, 34.625050, 31.645260>,  <31.753658, 34.582939, 31.473722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.112549, 34.625050, 31.645260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138160, 0.855474, -0.499074,
		-0.419405, 0.507030, 0.753007,
		0.897224, 0.105279, 0.428842,
		32.381718, 34.656631, 31.773912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888258, 35.384525, 31.799728>,  <31.753658, 34.582939, 31.473722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888258, 35.384525, 31.799728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222088, 35.186127, 31.703833>,  <32.422386, 35.067089, 31.646296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222088, 35.186127, 31.703833>,  <31.888258, 35.384525, 31.799728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222088, 35.186127, 31.703833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321856, 0.792189, -0.518503,
		0.447092, 0.355568, 0.820780,
		0.834576, -0.495992, -0.239739,
		32.472462, 35.037331, 31.631910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401058, 35.858433, 32.030907>,  <31.888258, 35.384525, 31.799728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401058, 35.858433, 32.030907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551582, 35.612244, 31.753899>,  <32.641899, 35.464531, 31.587694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551582, 35.612244, 31.753899>,  <32.401058, 35.858433, 32.030907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551582, 35.612244, 31.753899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279661, 0.788055, -0.548416,
		0.883276, 0.012707, 0.468681,
		0.376315, -0.615474, -0.692516,
		32.664478, 35.427601, 31.546144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983440, 36.158901, 31.812634>,  <32.401058, 35.858433, 32.030907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983440, 36.158901, 31.812634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898315, 35.917248, 31.505457>,  <32.847240, 35.772255, 31.321152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898315, 35.917248, 31.505457>,  <32.983440, 36.158901, 31.812634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898315, 35.917248, 31.505457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239466, 0.729729, -0.640431,
		0.947294, -0.320190, -0.010628,
		-0.212815, -0.604131, -0.767942,
		32.834473, 35.736008, 31.275074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579224, 36.084869, 31.384604>,  <32.983440, 36.158901, 31.812634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579224, 36.084869, 31.384604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279976, 35.994915, 31.134886>,  <33.100426, 35.940941, 30.985054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279976, 35.994915, 31.134886>,  <33.579224, 36.084869, 31.384604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279976, 35.994915, 31.134886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314310, 0.708488, -0.631865,
		0.584404, -0.668932, -0.459349,
		-0.748118, -0.224886, -0.624296,
		33.055542, 35.927448, 30.947598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922474, 35.988167, 30.704182>,  <33.579224, 36.084869, 31.384604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922474, 35.988167, 30.704182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541851, 36.097530, 30.647921>,  <33.313477, 36.163151, 30.614164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541851, 36.097530, 30.647921>,  <33.922474, 35.988167, 30.704182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541851, 36.097530, 30.647921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304358, 0.772706, -0.557039,
		-0.043619, -0.572863, -0.818489,
		-0.951559, 0.273411, -0.140651,
		33.256382, 36.179554, 30.605724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096008, 35.451023, 30.183102>,  <33.922474, 35.988167, 30.704182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096008, 35.451023, 30.183102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729149, 35.306175, 30.249685>,  <33.509033, 35.219265, 30.289635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.729149, 35.306175, 30.249685>,  <34.096008, 35.451023, 30.183102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729149, 35.306175, 30.249685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157946, 0.713713, 0.682397,
		-0.365915, 0.599568, -0.711776,
		-0.917148, -0.362122, 0.166459,
		33.454006, 35.197540, 30.299623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503437, 35.229271, 29.760303>,  <34.096008, 35.451023, 30.183102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503437, 35.229271, 29.760303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808235, 35.474525, 29.676954>,  <33.991116, 35.621677, 29.626944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808235, 35.474525, 29.676954>,  <33.503437, 35.229271, 29.760303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808235, 35.474525, 29.676954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503607, -0.358786, 0.785909,
		0.407108, -0.703801, -0.582175,
		0.761999, 0.613137, -0.208375,
		34.036835, 35.658466, 29.614441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088570, 35.004364, 29.327120>,  <33.503437, 35.229271, 29.760303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088570, 35.004364, 29.327120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821121, 34.957573, 29.033382>,  <33.660652, 34.929497, 28.857140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821121, 34.957573, 29.033382>,  <34.088570, 35.004364, 29.327120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821121, 34.957573, 29.033382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742028, -0.169212, -0.648662,
		-0.048381, -0.978613, 0.199940,
		-0.668621, -0.116978, -0.734345,
		33.620537, 34.922482, 28.813080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329571, 34.323143, 28.932673>,  <34.088570, 35.004364, 29.327120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329571, 34.323143, 28.932673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119968, 34.560383, 28.688168>,  <33.994205, 34.702728, 28.541464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119968, 34.560383, 28.688168>,  <34.329571, 34.323143, 28.932673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119968, 34.560383, 28.688168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656848, -0.175452, -0.733326,
		-0.542185, -0.785778, -0.297640,
		-0.524010, 0.593103, -0.611264,
		33.962765, 34.738312, 28.504789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222603, 34.034321, 28.344336>,  <34.329571, 34.323143, 28.932673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222603, 34.034321, 28.344336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187847, 34.409523, 28.210115>,  <34.166996, 34.634644, 28.129583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.187847, 34.409523, 28.210115>,  <34.222603, 34.034321, 28.344336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187847, 34.409523, 28.210115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477198, -0.256478, -0.840536,
		-0.874490, -0.233154, -0.425331,
		-0.086887, 0.938008, -0.335548,
		34.161781, 34.690926, 28.109451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954384, 33.948368, 27.724550>,  <34.222603, 34.034321, 28.344336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954384, 33.948368, 27.724550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081932, 34.327477, 27.727243>,  <34.158463, 34.554943, 27.728859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081932, 34.327477, 27.727243>,  <33.954384, 33.948368, 27.724550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081932, 34.327477, 27.727243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461454, -0.149039, -0.874556,
		-0.827878, 0.281976, -0.484879,
		0.318869, 0.947775, 0.006732,
		34.177593, 34.611809, 27.729263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685295, 34.231979, 27.137096>,  <33.954384, 33.948368, 27.724550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685295, 34.231979, 27.137096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006363, 34.440762, 27.252537>,  <34.199001, 34.566032, 27.321802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006363, 34.440762, 27.252537>,  <33.685295, 34.231979, 27.137096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006363, 34.440762, 27.252537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358041, -0.034682, -0.933062,
		-0.477007, 0.852267, -0.214719,
		0.802665, 0.521955, 0.288603,
		34.247162, 34.597347, 27.339117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757080, 34.828228, 26.620672>,  <33.685295, 34.231979, 27.137096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757080, 34.828228, 26.620672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110474, 34.798122, 26.805626>,  <34.322510, 34.780060, 26.916597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110474, 34.798122, 26.805626>,  <33.757080, 34.828228, 26.620672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110474, 34.798122, 26.805626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467839, 0.192941, -0.862497,
		-0.024294, 0.978319, 0.205673,
		0.883480, -0.075268, 0.462383,
		34.375519, 34.775543, 26.944342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119171, 35.309048, 26.197989>,  <33.757080, 34.828228, 26.620672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119171, 35.309048, 26.197989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413052, 35.107651, 26.379848>,  <34.589382, 34.986813, 26.488964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413052, 35.107651, 26.379848>,  <34.119171, 35.309048, 26.197989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413052, 35.107651, 26.379848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571558, 0.098413, -0.814639,
		0.365418, 0.858379, 0.360078,
		0.734705, -0.503489, 0.454651,
		34.633465, 34.956604, 26.516243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715557, 35.563843, 25.980848>,  <34.119171, 35.309048, 26.197989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715557, 35.563843, 25.980848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848446, 35.200684, 26.083109>,  <34.928181, 34.982788, 26.144464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848446, 35.200684, 26.083109>,  <34.715557, 35.563843, 25.980848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848446, 35.200684, 26.083109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459863, -0.080734, -0.884312,
		0.823502, 0.411351, 0.390685,
		0.332221, -0.907895, 0.255650,
		34.948112, 34.928314, 26.159803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451515, 35.545116, 25.701685>,  <34.715557, 35.563843, 25.980848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451515, 35.545116, 25.701685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325703, 35.167248, 25.738918>,  <35.250214, 34.940525, 25.761259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325703, 35.167248, 25.738918>,  <35.451515, 35.545116, 25.701685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325703, 35.167248, 25.738918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306360, -0.193838, -0.931971,
		0.898449, -0.264621, 0.350378,
		-0.314536, -0.944670, 0.093084,
		35.231342, 34.883846, 25.766844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781113, 35.127186, 25.186737>,  <35.451515, 35.545116, 25.701685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781113, 35.127186, 25.186737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549377, 34.828655, 25.317804>,  <35.410336, 34.649536, 25.396444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549377, 34.828655, 25.317804>,  <35.781113, 35.127186, 25.186737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549377, 34.828655, 25.317804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242365, -0.541557, -0.804969,
		0.778218, -0.386936, 0.494628,
		-0.579341, -0.746323, 0.327670,
		35.375576, 34.604759, 25.416105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100357, 34.469315, 25.314520>,  <35.781113, 35.127186, 25.186737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100357, 34.469315, 25.314520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725636, 34.359238, 25.228111>,  <35.500801, 34.293190, 25.176266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.725636, 34.359238, 25.228111>,  <36.100357, 34.469315, 25.314520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725636, 34.359238, 25.228111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337838, -0.551155, -0.762951,
		0.090900, -0.787716, 0.609296,
		-0.936804, -0.275196, -0.216020,
		35.444595, 34.276680, 25.163305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134075, 33.740734, 25.226490>,  <36.100357, 34.469315, 25.314520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134075, 33.740734, 25.226490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801804, 33.865059, 25.041719>,  <35.602440, 33.939655, 24.930857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801804, 33.865059, 25.041719>,  <36.134075, 33.740734, 25.226490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801804, 33.865059, 25.041719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220806, -0.577719, -0.785802,
		-0.511099, -0.754743, 0.411268,
		-0.830676, 0.310812, -0.461924,
		35.552601, 33.958302, 24.903143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948017, 33.080837, 25.104105>,  <36.134075, 33.740734, 25.226490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948017, 33.080837, 25.104105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758331, 33.336102, 24.861496>,  <35.644520, 33.489258, 24.715931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.758331, 33.336102, 24.861496>,  <35.948017, 33.080837, 25.104105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758331, 33.336102, 24.861496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144394, -0.623209, -0.768609,
		-0.868487, -0.452066, 0.203390,
		-0.474216, 0.638159, -0.606525,
		35.616066, 33.527550, 24.679539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471283, 32.763130, 24.735016>,  <35.948017, 33.080837, 25.104105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471283, 32.763130, 24.735016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494419, 33.083920, 24.497192>,  <35.508301, 33.276394, 24.354498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494419, 33.083920, 24.497192>,  <35.471283, 32.763130, 24.735016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494419, 33.083920, 24.497192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110997, -0.597029, -0.794504,
		-0.992136, -0.020036, -0.123551,
		0.057845, 0.801970, -0.594557,
		35.511772, 33.324509, 24.318825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058609, 32.638363, 24.073694>,  <35.471283, 32.763130, 24.735016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058609, 32.638363, 24.073694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326195, 32.918087, 23.972939>,  <35.486748, 33.085922, 23.912485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326195, 32.918087, 23.972939>,  <35.058609, 32.638363, 24.073694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326195, 32.918087, 23.972939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210745, -0.503425, -0.837943,
		-0.712790, 0.507472, -0.484151,
		0.668967, 0.699311, -0.251889,
		35.526886, 33.127880, 23.897371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743660, 32.904816, 23.518152>,  <35.058609, 32.638363, 24.073694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743660, 32.904816, 23.518152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127636, 33.007156, 23.472464>,  <35.358025, 33.068562, 23.445051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127636, 33.007156, 23.472464>,  <34.743660, 32.904816, 23.518152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127636, 33.007156, 23.472464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040726, -0.530741, -0.846555,
		-0.277214, 0.807994, -0.519902,
		0.959945, 0.255851, -0.114222,
		35.415619, 33.083912, 23.438196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767262, 33.051125, 22.760397>,  <34.743660, 32.904816, 23.518152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767262, 33.051125, 22.760397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142197, 32.983063, 22.882021>,  <35.367157, 32.942226, 22.954996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.142197, 32.983063, 22.882021>,  <34.767262, 33.051125, 22.760397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142197, 32.983063, 22.882021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187654, -0.488760, -0.851998,
		0.293581, 0.855665, -0.426202,
		0.937335, -0.170152, 0.304059,
		35.423397, 32.932018, 22.973238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074295, 32.960480, 22.100344>,  <34.767262, 33.051125, 22.760397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074295, 32.960480, 22.100344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360783, 32.832092, 22.348219>,  <35.532673, 32.755058, 22.496944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360783, 32.832092, 22.348219>,  <35.074295, 32.960480, 22.100344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360783, 32.832092, 22.348219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448088, -0.469246, -0.760937,
		0.535025, 0.822669, -0.192258,
		0.716216, -0.320972, 0.619687,
		35.575649, 32.735802, 22.534124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676060, 33.147907, 21.792326>,  <35.074295, 32.960480, 22.100344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676060, 33.147907, 21.792326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751663, 32.830441, 22.023626>,  <35.797024, 32.639961, 22.162407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751663, 32.830441, 22.023626>,  <35.676060, 33.147907, 21.792326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751663, 32.830441, 22.023626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418137, -0.467765, -0.778690,
		0.888503, 0.388965, 0.243450,
		0.189006, -0.793664, 0.578251,
		35.808365, 32.592342, 22.197102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272366, 32.936211, 21.606483>,  <35.676060, 33.147907, 21.792326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272366, 32.936211, 21.606483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133106, 32.616184, 21.801905>,  <36.049549, 32.424168, 21.919157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133106, 32.616184, 21.801905>,  <36.272366, 32.936211, 21.606483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133106, 32.616184, 21.801905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393792, -0.597764, -0.698288,
		0.850716, -0.050722, 0.523173,
		-0.348153, -0.800066, 0.488553,
		36.028660, 32.376163, 21.948471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819271, 32.418179, 21.553963>,  <36.272366, 32.936211, 21.606483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819271, 32.418179, 21.553963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482082, 32.231441, 21.660883>,  <36.279770, 32.119400, 21.725035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.482082, 32.231441, 21.660883>,  <36.819271, 32.418179, 21.553963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482082, 32.231441, 21.660883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218102, -0.750811, -0.623469,
		0.491755, -0.467270, 0.734735,
		-0.842976, -0.466841, 0.267303,
		36.229191, 32.091389, 21.741074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979832, 31.716724, 21.654545>,  <36.819271, 32.418179, 21.553963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979832, 31.716724, 21.654545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592129, 31.723068, 21.556328>,  <36.359509, 31.726873, 21.497398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592129, 31.723068, 21.556328>,  <36.979832, 31.716724, 21.654545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592129, 31.723068, 21.556328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180079, -0.634307, -0.751816,
		-0.167670, -0.772919, 0.611950,
		-0.969257, 0.015858, -0.245541,
		36.301353, 31.727825, 21.482666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839249, 31.040131, 21.382639>,  <36.979832, 31.716724, 21.654545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839249, 31.040131, 21.382639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520546, 31.241833, 21.249434>,  <36.329323, 31.362854, 21.169510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.520546, 31.241833, 21.249434>,  <36.839249, 31.040131, 21.382639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.520546, 31.241833, 21.249434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123118, -0.674975, -0.727496,
		-0.591619, -0.538642, 0.599877,
		-0.796762, 0.504256, -0.333011,
		36.281517, 31.393110, 21.149530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241421, 30.468269, 21.316463>,  <36.839249, 31.040131, 21.382639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241421, 30.468269, 21.316463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145618, 30.773153, 21.075905>,  <36.088135, 30.956083, 20.931570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145618, 30.773153, 21.075905>,  <36.241421, 30.468269, 21.316463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145618, 30.773153, 21.075905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104729, -0.636091, -0.764474,
		-0.965229, -0.120114, 0.232174,
		-0.239508, 0.762208, -0.601395,
		36.073765, 31.001816, 20.895487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751564, 30.260223, 20.954805>,  <36.241421, 30.468269, 21.316463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751564, 30.260223, 20.954805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862835, 30.569920, 20.727415>,  <35.929600, 30.755737, 20.590981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862835, 30.569920, 20.727415>,  <35.751564, 30.260223, 20.954805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862835, 30.569920, 20.727415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233206, -0.519688, -0.821912,
		-0.931789, 0.361212, 0.035990,
		0.278181, 0.774242, -0.568476,
		35.946289, 30.802193, 20.556871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305576, 30.244864, 20.540043>,  <35.751564, 30.260223, 20.954805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305576, 30.244864, 20.540043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592766, 30.466976, 20.372149>,  <35.765079, 30.600243, 20.271412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.592766, 30.466976, 20.372149>,  <35.305576, 30.244864, 20.540043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592766, 30.466976, 20.372149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192585, -0.421005, -0.886378,
		-0.668899, 0.717230, -0.195332,
		0.717973, 0.555279, -0.419738,
		35.808159, 30.633560, 20.246227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069748, 30.391970, 19.931675>,  <35.305576, 30.244864, 20.540043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069748, 30.391970, 19.931675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453739, 30.492371, 19.881983>,  <35.684135, 30.552612, 19.852167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453739, 30.492371, 19.881983>,  <35.069748, 30.391970, 19.931675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453739, 30.492371, 19.881983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036995, -0.326046, -0.944630,
		-0.277611, 0.911423, -0.303712,
		0.959981, 0.251003, -0.124232,
		35.741734, 30.567671, 19.844713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009995, 30.720139, 19.324024>,  <35.069748, 30.391970, 19.931675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009995, 30.720139, 19.324024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388111, 30.599461, 19.373657>,  <35.614983, 30.527054, 19.403437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388111, 30.599461, 19.373657>,  <35.009995, 30.720139, 19.324024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388111, 30.599461, 19.373657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040992, -0.267501, -0.962685,
		0.323629, 0.915109, -0.240500,
		0.945296, -0.301694, 0.124083,
		35.671700, 30.508953, 19.410883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328362, 31.124300, 18.797306>,  <35.009995, 30.720139, 19.324024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328362, 31.124300, 18.797306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593998, 30.841009, 18.893137>,  <35.753380, 30.671036, 18.950636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593998, 30.841009, 18.893137>,  <35.328362, 31.124300, 18.797306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593998, 30.841009, 18.893137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045542, -0.281526, -0.958472,
		0.746261, 0.647425, -0.154706,
		0.664093, -0.708225, 0.239577,
		35.793224, 30.628542, 18.965010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984341, 31.265635, 18.345238>,  <35.328362, 31.124300, 18.797306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984341, 31.265635, 18.345238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004128, 30.879410, 18.447405>,  <36.015999, 30.647675, 18.508705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.004128, 30.879410, 18.447405>,  <35.984341, 31.265635, 18.345238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004128, 30.879410, 18.447405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100196, -0.249645, -0.963140,
		0.993737, 0.073235, 0.084397,
		0.049466, -0.965564, 0.255419,
		36.018967, 30.589741, 18.524031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505703, 31.068014, 17.903543>,  <35.984341, 31.265635, 18.345238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505703, 31.068014, 17.903543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305851, 30.740301, 18.016073>,  <36.185940, 30.543673, 18.083591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305851, 30.740301, 18.016073>,  <36.505703, 31.068014, 17.903543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305851, 30.740301, 18.016073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045249, -0.349009, -0.936026,
		0.865056, -0.454937, 0.211447,
		-0.499630, -0.819283, 0.281327,
		36.155960, 30.494516, 18.100471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921597, 30.483631, 17.874168>,  <36.505703, 31.068014, 17.903543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921597, 30.483631, 17.874168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548950, 30.341969, 17.841507>,  <36.325363, 30.256971, 17.821911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548950, 30.341969, 17.841507>,  <36.921597, 30.483631, 17.874168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548950, 30.341969, 17.841507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277250, -0.547243, -0.789720,
		0.234999, -0.758353, 0.608009,
		-0.931615, -0.354155, -0.081652,
		36.269466, 30.235722, 17.817011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949207, 29.794538, 17.727768>,  <36.921597, 30.483631, 17.874168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949207, 29.794538, 17.727768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565563, 29.853056, 17.630852>,  <36.335377, 29.888166, 17.572702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565563, 29.853056, 17.630852>,  <36.949207, 29.794538, 17.727768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565563, 29.853056, 17.630852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117081, -0.574306, -0.810225,
		-0.257682, -0.805463, 0.533694,
		-0.959110, 0.146295, -0.242292,
		36.277832, 29.896944, 17.558165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738068, 29.089359, 17.505140>,  <36.949207, 29.794538, 17.727768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738068, 29.089359, 17.505140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455574, 29.338549, 17.370602>,  <36.286076, 29.488062, 17.289879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455574, 29.338549, 17.370602>,  <36.738068, 29.089359, 17.505140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455574, 29.338549, 17.370602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106753, -0.563359, -0.819286,
		-0.699880, -0.542704, 0.464370,
		-0.706237, 0.622975, -0.336349,
		36.243702, 29.525440, 17.269697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108135, 28.626881, 17.264952>,  <36.738068, 29.089359, 17.505140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108135, 28.626881, 17.264952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098091, 28.974838, 17.067911>,  <36.092064, 29.183613, 16.949686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098091, 28.974838, 17.067911>,  <36.108135, 28.626881, 17.264952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098091, 28.974838, 17.067911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112821, -0.492074, -0.863212,
		-0.993298, 0.033901, 0.110498,
		-0.025110, 0.869893, -0.492601,
		36.090557, 29.235806, 16.920132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564556, 28.584074, 16.839476>,  <36.108135, 28.626881, 17.264952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564556, 28.584074, 16.839476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786015, 28.868031, 16.665337>,  <35.918892, 29.038404, 16.560854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.786015, 28.868031, 16.665337>,  <35.564556, 28.584074, 16.839476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786015, 28.868031, 16.665337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225348, -0.375559, -0.898985,
		-0.801681, 0.595826, -0.047955,
		0.553648, 0.709893, -0.435346,
		35.952110, 29.080997, 16.534733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166065, 28.769382, 16.270117>,  <35.564556, 28.584074, 16.839476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166065, 28.769382, 16.270117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544674, 28.888004, 16.219284>,  <35.771839, 28.959177, 16.188784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544674, 28.888004, 16.219284>,  <35.166065, 28.769382, 16.270117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544674, 28.888004, 16.219284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039021, -0.285772, -0.957503,
		-0.320267, 0.911257, -0.258919,
		0.946523, 0.296553, -0.127082,
		35.828632, 28.976971, 16.181160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133217, 29.025148, 15.678921>,  <35.166065, 28.769382, 16.270117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133217, 29.025148, 15.678921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531544, 28.996309, 15.701393>,  <35.770538, 28.979006, 15.714876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.531544, 28.996309, 15.701393>,  <35.133217, 29.025148, 15.678921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531544, 28.996309, 15.701393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037341, -0.240118, -0.970025,
		0.083425, 0.968063, -0.236420,
		0.995814, -0.072096, 0.056180,
		35.830288, 28.974680, 15.718247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358612, 29.368393, 15.121200>,  <35.133217, 29.025148, 15.678921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358612, 29.368393, 15.121200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643375, 29.109779, 15.230874>,  <35.814236, 28.954611, 15.296679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643375, 29.109779, 15.230874>,  <35.358612, 29.368393, 15.121200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643375, 29.109779, 15.230874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030257, -0.418304, -0.907803,
		0.701618, 0.637978, -0.317357,
		0.711910, -0.646533, 0.274187,
		35.856949, 28.915819, 15.313130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876663, 29.376196, 14.672318>,  <35.358612, 29.368393, 15.121200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876663, 29.376196, 14.672318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897072, 29.001184, 14.809975>,  <35.909317, 28.776176, 14.892569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.897072, 29.001184, 14.809975>,  <35.876663, 29.376196, 14.672318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897072, 29.001184, 14.809975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003361, -0.344749, -0.938689,
		0.998692, 0.046736, -0.020740,
		0.051021, -0.937531, 0.344141,
		35.912376, 28.719925, 14.913218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081459, 29.018837, 14.061808>,  <35.876663, 29.376196, 14.672318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081459, 29.018837, 14.061808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013161, 28.743849, 14.344149>,  <35.972179, 28.578856, 14.513553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013161, 28.743849, 14.344149>,  <36.081459, 29.018837, 14.061808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013161, 28.743849, 14.344149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056478, -0.708365, -0.703583,
		0.983695, -0.160001, 0.082125,
		-0.170748, -0.687473, 0.705852,
		35.961937, 28.537607, 14.555904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610645, 28.467201, 13.994151>,  <36.081459, 29.018837, 14.061808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610645, 28.467201, 13.994151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303616, 28.315971, 14.201184>,  <36.119396, 28.225233, 14.325404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303616, 28.315971, 14.201184>,  <36.610645, 28.467201, 13.994151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303616, 28.315971, 14.201184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100812, -0.726247, -0.680001,
		0.632983, -0.574129, 0.519334,
		-0.767573, -0.378074, 0.517582,
		36.073345, 28.202549, 14.356459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760662, 27.761436, 14.092614>,  <36.610645, 28.467201, 13.994151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760662, 27.761436, 14.092614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367756, 27.824169, 14.133704>,  <36.132011, 27.861809, 14.158359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367756, 27.824169, 14.133704>,  <36.760662, 27.761436, 14.092614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367756, 27.824169, 14.133704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187066, -0.783555, -0.592493,
		-0.012429, -0.601204, 0.798999,
		-0.982269, 0.156830, 0.102726,
		36.073074, 27.871218, 14.164522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473038, 27.107189, 13.999745>,  <36.760662, 27.761436, 14.092614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473038, 27.107189, 13.999745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157810, 27.348894, 13.952717>,  <35.968674, 27.493917, 13.924500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157810, 27.348894, 13.952717>,  <36.473038, 27.107189, 13.999745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157810, 27.348894, 13.952717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430946, -0.677913, -0.595583,
		-0.439590, -0.418692, 0.794643,
		-0.788064, 0.604261, -0.117570,
		35.921391, 27.530172, 13.917446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845581, 26.780872, 14.231320>,  <36.473038, 27.107189, 13.999745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845581, 26.780872, 14.231320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751247, 27.053135, 13.953877>,  <35.694649, 27.216492, 13.787412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751247, 27.053135, 13.953877>,  <35.845581, 26.780872, 14.231320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751247, 27.053135, 13.953877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422681, -0.714536, -0.557476,
		-0.875056, 0.161703, 0.456212,
		-0.235834, 0.680654, -0.693608,
		35.680496, 27.257332, 13.745795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198727, 26.704683, 14.049575>,  <35.845581, 26.780872, 14.231320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198727, 26.704683, 14.049575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345818, 26.875597, 13.719191>,  <35.434071, 26.978146, 13.520960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345818, 26.875597, 13.719191>,  <35.198727, 26.704683, 14.049575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345818, 26.875597, 13.719191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374592, -0.744885, -0.552112,
		-0.851153, 0.512422, -0.113854,
		0.367723, 0.427283, -0.825960,
		35.456135, 27.003782, 13.471403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710739, 26.843121, 13.489674>,  <35.198727, 26.704683, 14.049575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710739, 26.843121, 13.489674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077290, 26.771605, 13.346402>,  <35.297218, 26.728695, 13.260439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077290, 26.771605, 13.346402>,  <34.710739, 26.843121, 13.489674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077290, 26.771605, 13.346402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384557, -0.641757, -0.663524,
		-0.111234, 0.745777, -0.656844,
		0.916375, -0.178788, -0.358179,
		35.352203, 26.717968, 13.238949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570652, 26.896276, 12.698358>,  <34.710739, 26.843121, 13.489674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570652, 26.896276, 12.698358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914104, 26.699875, 12.757239>,  <35.120174, 26.582035, 12.792568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914104, 26.699875, 12.757239>,  <34.570652, 26.896276, 12.698358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914104, 26.699875, 12.757239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089443, -0.426284, -0.900157,
		0.504731, 0.759735, -0.409937,
		0.858631, -0.491003, 0.147206,
		35.171692, 26.552574, 12.801401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720882, 26.892817, 12.017221>,  <34.570652, 26.896276, 12.698358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720882, 26.892817, 12.017221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905998, 26.608658, 12.229321>,  <35.017067, 26.438164, 12.356580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905998, 26.608658, 12.229321>,  <34.720882, 26.892817, 12.017221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905998, 26.608658, 12.229321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004139, -0.599884, -0.800076,
		0.886457, 0.368074, -0.280562,
		0.462793, -0.710395, 0.530248,
		35.044834, 26.395540, 12.388395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457047, 27.408230, 11.532178>,  <34.720882, 26.892817, 12.017221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457047, 27.408230, 11.532178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569599, 27.733690, 11.328691>,  <34.637131, 27.928967, 11.206598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569599, 27.733690, 11.328691>,  <34.457047, 27.408230, 11.532178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569599, 27.733690, 11.328691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947838, 0.318398, -0.015016,
		0.149757, 0.486409, 0.860802,
		0.281382, 0.813652, -0.508719,
		34.654015, 27.977785, 11.176075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264420, 27.991354, 11.933403>,  <34.457047, 27.408230, 11.532178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264420, 27.991354, 11.933403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045994, 27.657160, 11.958007>,  <33.914940, 27.456644, 11.972769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.045994, 27.657160, 11.958007>,  <34.264420, 27.991354, 11.933403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045994, 27.657160, 11.958007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489040, 0.377520, 0.786332,
		-0.680190, 0.399304, -0.614734,
		-0.546060, -0.835484, 0.061509,
		33.882175, 27.406515, 11.976460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701828, 28.221405, 12.092267>,  <34.264420, 27.991354, 11.933403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701828, 28.221405, 12.092267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738651, 27.841738, 12.212673>,  <33.760746, 27.613937, 12.284917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738651, 27.841738, 12.212673>,  <33.701828, 28.221405, 12.092267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738651, 27.841738, 12.212673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410707, 0.239194, 0.879833,
		-0.907108, -0.204623, -0.367810,
		0.092056, -0.949166, 0.301014,
		33.766270, 27.556988, 12.302978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137753, 27.956430, 12.383812>,  <33.701828, 28.221405, 12.092267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137753, 27.956430, 12.383812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419815, 27.727684, 12.551491>,  <33.589054, 27.590437, 12.652098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419815, 27.727684, 12.551491>,  <33.137753, 27.956430, 12.383812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419815, 27.727684, 12.551491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478831, 0.051969, 0.876367,
		-0.522949, -0.818700, -0.237181,
		0.705156, -0.571865, 0.419196,
		33.631363, 27.556124, 12.677250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872559, 27.290575, 12.785213>,  <33.137753, 27.956430, 12.383812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872559, 27.290575, 12.785213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207436, 27.467455, 12.913943>,  <33.408360, 27.573584, 12.991181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207436, 27.467455, 12.913943>,  <32.872559, 27.290575, 12.785213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207436, 27.467455, 12.913943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424108, 0.153363, 0.892532,
		0.345322, -0.883707, 0.315935,
		0.837189, 0.442202, 0.321827,
		33.458591, 27.600115, 13.010491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999470, 27.008385, 13.496207>,  <32.872559, 27.290575, 12.785213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999470, 27.008385, 13.496207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203297, 27.352222, 13.481067>,  <33.325592, 27.558525, 13.471982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.203297, 27.352222, 13.481067>,  <32.999470, 27.008385, 13.496207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203297, 27.352222, 13.481067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365329, 0.255979, 0.894991,
		0.779020, -0.442233, 0.444475,
		0.509571, 0.859596, -0.037852,
		33.356167, 27.610102, 13.469711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385208, 26.983461, 14.128679>,  <32.999470, 27.008385, 13.496207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385208, 26.983461, 14.128679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378838, 27.361839, 13.999106>,  <33.375015, 27.588867, 13.921363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378838, 27.361839, 13.999106>,  <33.385208, 26.983461, 14.128679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378838, 27.361839, 13.999106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027772, 0.324267, 0.945558,
		0.999487, 0.006064, -0.031436,
		-0.015928, 0.945946, -0.323932,
		33.374058, 27.645622, 13.901927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845062, 27.292194, 14.599598>,  <33.385208, 26.983461, 14.128679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845062, 27.292194, 14.599598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671261, 27.611763, 14.433258>,  <33.566982, 27.803505, 14.333454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671261, 27.611763, 14.433258>,  <33.845062, 27.292194, 14.599598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671261, 27.611763, 14.433258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007909, 0.465077, 0.885235,
		0.900636, 0.381347, -0.208396,
		-0.434502, 0.798923, -0.415849,
		33.540909, 27.851440, 14.308503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321373, 27.891373, 14.718978>,  <33.845062, 27.292194, 14.599598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321373, 27.891373, 14.718978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946579, 28.022976, 14.671958>,  <33.721703, 28.101938, 14.643746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946579, 28.022976, 14.671958>,  <34.321373, 27.891373, 14.718978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946579, 28.022976, 14.671958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050174, 0.459685, 0.886663,
		0.345753, 0.824891, -0.447225,
		-0.936983, 0.329006, -0.117549,
		33.665485, 28.121677, 14.636693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289623, 28.466377, 15.123158>,  <34.321373, 27.891373, 14.718978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289623, 28.466377, 15.123158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897591, 28.425905, 15.054809>,  <33.662369, 28.401621, 15.013799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897591, 28.425905, 15.054809>,  <34.289623, 28.466377, 15.123158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897591, 28.425905, 15.054809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198041, 0.434398, 0.878680,
		-0.014679, 0.895020, -0.445784,
		-0.980084, -0.101182, -0.170874,
		33.603565, 28.395552, 15.003547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908409, 29.177105, 15.268506>,  <34.289623, 28.466377, 15.123158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908409, 29.177105, 15.268506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627953, 28.897366, 15.324095>,  <33.459679, 28.729521, 15.357449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627953, 28.897366, 15.324095>,  <33.908409, 29.177105, 15.268506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627953, 28.897366, 15.324095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453139, 0.587525, 0.670432,
		-0.550516, 0.407092, -0.728840,
		-0.701140, -0.699350, 0.138973,
		33.417610, 28.687561, 15.365787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318665, 29.542164, 15.479917>,  <33.908409, 29.177105, 15.268506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318665, 29.542164, 15.479917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229057, 29.161747, 15.565082>,  <33.175293, 28.933496, 15.616180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229057, 29.161747, 15.565082>,  <33.318665, 29.542164, 15.479917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229057, 29.161747, 15.565082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355236, 0.283117, 0.890872,
		-0.907537, 0.123938, -0.401268,
		-0.224018, -0.951044, 0.212912,
		33.161850, 28.876434, 15.628955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514446, 29.465269, 15.596210>,  <33.318665, 29.542164, 15.479917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514446, 29.465269, 15.596210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691566, 29.155926, 15.777692>,  <32.797836, 28.970320, 15.886581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691566, 29.155926, 15.777692>,  <32.514446, 29.465269, 15.596210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691566, 29.155926, 15.777692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448825, 0.246875, 0.858841,
		-0.776200, -0.583928, -0.237787,
		0.442798, -0.773357, 0.453706,
		32.824406, 28.923918, 15.913804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967073, 28.964643, 15.865134>,  <32.514446, 29.465269, 15.596210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967073, 28.964643, 15.865134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309647, 28.893175, 16.058876>,  <32.515190, 28.850294, 16.175121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309647, 28.893175, 16.058876>,  <31.967073, 28.964643, 15.865134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309647, 28.893175, 16.058876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493604, -0.008519, 0.869645,
		-0.151253, -0.983872, -0.095488,
		0.856433, -0.178670, 0.484355,
		32.566578, 28.839575, 16.204182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807760, 28.567602, 16.516020>,  <31.967073, 28.964643, 15.865134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807760, 28.567602, 16.516020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155411, 28.760794, 16.558638>,  <32.364002, 28.876709, 16.584208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155411, 28.760794, 16.558638>,  <31.807760, 28.567602, 16.516020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155411, 28.760794, 16.558638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322997, 0.391129, 0.861795,
		0.374545, -0.783429, 0.495939,
		0.869131, 0.482968, 0.106550,
		32.416149, 28.905687, 16.590601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864319, 28.516853, 17.191452>,  <31.807760, 28.567602, 16.516020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864319, 28.516853, 17.191452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144947, 28.795076, 17.129488>,  <32.313324, 28.962009, 17.092310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144947, 28.795076, 17.129488>,  <31.864319, 28.516853, 17.191452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144947, 28.795076, 17.129488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257668, 0.450295, 0.854892,
		0.664383, -0.559852, 0.495137,
		0.701571, 0.695557, -0.154913,
		32.355419, 29.003744, 17.083014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256100, 28.574299, 17.802523>,  <31.864319, 28.516853, 17.191452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256100, 28.574299, 17.802523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368973, 28.917921, 17.631691>,  <32.436695, 29.124094, 17.529192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368973, 28.917921, 17.631691>,  <32.256100, 28.574299, 17.802523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368973, 28.917921, 17.631691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069465, 0.425706, 0.902191,
		0.956843, -0.284248, 0.060452,
		0.282181, 0.859056, -0.427079,
		32.453629, 29.175638, 17.503567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792557, 28.845142, 18.217043>,  <32.256100, 28.574299, 17.802523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792557, 28.845142, 18.217043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633041, 29.135241, 17.992550>,  <32.537331, 29.309299, 17.857853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633041, 29.135241, 17.992550>,  <32.792557, 28.845142, 18.217043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633041, 29.135241, 17.992550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029367, 0.601591, 0.798264,
		0.916572, 0.334822, -0.218610,
		-0.398790, 0.725247, -0.561234,
		32.513405, 29.352814, 17.824181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155888, 29.418524, 18.413515>,  <32.792557, 28.845142, 18.217043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155888, 29.418524, 18.413515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816090, 29.556311, 18.253666>,  <32.612209, 29.638983, 18.157757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816090, 29.556311, 18.253666>,  <33.155888, 29.418524, 18.413515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816090, 29.556311, 18.253666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024235, 0.782122, 0.622654,
		0.527037, 0.519258, -0.672758,
		-0.849497, 0.344466, -0.399623,
		32.561241, 29.659651, 18.133780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285610, 30.196499, 18.391026>,  <33.155888, 29.418524, 18.413515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285610, 30.196499, 18.391026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889378, 30.150452, 18.361393>,  <32.651638, 30.122824, 18.343613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889378, 30.150452, 18.361393>,  <33.285610, 30.196499, 18.391026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889378, 30.150452, 18.361393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126062, 0.556105, 0.821496,
		-0.053369, 0.823101, -0.565382,
		-0.990586, -0.115116, -0.074083,
		32.592201, 30.115917, 18.339169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028625, 30.937408, 18.436066>,  <33.285610, 30.196499, 18.391026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028625, 30.937408, 18.436066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772404, 30.650469, 18.545683>,  <32.618671, 30.478304, 18.611454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.772404, 30.650469, 18.545683>,  <33.028625, 30.937408, 18.436066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772404, 30.650469, 18.545683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086366, 0.421904, 0.902518,
		-0.763043, 0.554442, -0.332206,
		-0.640552, -0.717351, 0.274045,
		32.580238, 30.435263, 18.627897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527821, 31.326492, 18.564280>,  <33.028625, 30.937408, 18.436066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527821, 31.326492, 18.564280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448566, 30.979523, 18.746845>,  <32.401012, 30.771341, 18.856384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.448566, 30.979523, 18.746845>,  <32.527821, 31.326492, 18.564280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448566, 30.979523, 18.746845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178268, 0.489773, 0.853430,
		-0.963827, 0.087731, -0.251676,
		-0.198136, -0.867425, 0.456417,
		32.389126, 30.719296, 18.883770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965477, 31.470623, 18.823273>,  <32.527821, 31.326492, 18.564280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965477, 31.470623, 18.823273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097027, 31.158188, 19.035591>,  <32.175957, 30.970726, 19.162981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097027, 31.158188, 19.035591>,  <31.965477, 31.470623, 18.823273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097027, 31.158188, 19.035591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034652, 0.551700, 0.833323,
		-0.943738, -0.292450, 0.154372,
		0.328873, -0.781089, 0.530794,
		32.195690, 30.923861, 19.194830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475904, 31.195749, 19.466732>,  <31.965477, 31.470623, 18.823273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475904, 31.195749, 19.466732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862204, 31.109200, 19.524025>,  <32.093983, 31.057270, 19.558401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862204, 31.109200, 19.524025>,  <31.475904, 31.195749, 19.466732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862204, 31.109200, 19.524025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050659, 0.384150, 0.921880,
		-0.254493, -0.897559, 0.360030,
		0.965747, -0.216373, 0.143233,
		32.151928, 31.044287, 19.566996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392765, 30.991976, 20.114243>,  <31.475904, 31.195749, 19.466732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392765, 30.991976, 20.114243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790884, 31.009216, 20.079540>,  <32.029755, 31.019560, 20.058718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790884, 31.009216, 20.079540>,  <31.392765, 30.991976, 20.114243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790884, 31.009216, 20.079540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068645, 0.318138, 0.945556,
		0.068354, -0.947064, 0.313683,
		0.995297, 0.043100, -0.086758,
		32.089474, 31.022146, 20.053513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.709158, 30.605682, 20.732500>,  <31.392765, 30.991976, 20.114243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.709158, 30.605682, 20.732500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982983, 30.851824, 20.576183>,  <32.147278, 30.999508, 20.482393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982983, 30.851824, 20.576183>,  <31.709158, 30.605682, 20.732500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982983, 30.851824, 20.576183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139741, 0.415376, 0.898852,
		0.715438, -0.669927, 0.198360,
		0.684559, 0.615353, -0.390792,
		32.188351, 31.036430, 20.458946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227074, 30.546831, 21.177811>,  <31.709158, 30.605682, 20.732500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227074, 30.546831, 21.177811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293953, 30.899593, 21.001499>,  <32.334080, 31.111252, 20.895712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293953, 30.899593, 21.001499>,  <32.227074, 30.546831, 21.177811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293953, 30.899593, 21.001499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132604, 0.463123, 0.876318,
		0.976966, -0.088066, 0.194376,
		0.167193, 0.881907, -0.440778,
		32.344112, 31.164165, 20.869267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725525, 30.880379, 21.533180>,  <32.227074, 30.546831, 21.177811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725525, 30.880379, 21.533180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549004, 31.186613, 21.345936>,  <32.443089, 31.370354, 21.233589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.549004, 31.186613, 21.345936>,  <32.725525, 30.880379, 21.533180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549004, 31.186613, 21.345936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108694, 0.563421, 0.818989,
		0.890750, 0.310543, -0.331855,
		-0.441305, 0.765585, -0.468113,
		32.416611, 31.416288, 21.205502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180347, 31.466803, 21.657551>,  <32.725525, 30.880379, 21.533180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180347, 31.466803, 21.657551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833267, 31.636072, 21.553226>,  <32.625019, 31.737633, 21.490633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.833267, 31.636072, 21.553226>,  <33.180347, 31.466803, 21.657551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833267, 31.636072, 21.553226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161647, 0.736366, 0.656990,
		0.470071, 0.527911, -0.707349,
		-0.867700, 0.423173, -0.260809,
		32.572956, 31.763023, 21.474983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321072, 32.202377, 21.731441>,  <33.180347, 31.466803, 21.657551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321072, 32.202377, 21.731441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922531, 32.171478, 21.745962>,  <32.683407, 32.152939, 21.754675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922531, 32.171478, 21.745962>,  <33.321072, 32.202377, 21.731441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922531, 32.171478, 21.745962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016117, 0.587904, 0.808770,
		-0.083820, 0.805233, -0.587004,
		-0.996351, -0.077252, 0.036300,
		32.623627, 32.148304, 21.756853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156990, 32.920341, 21.792963>,  <33.321072, 32.202377, 21.731441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156990, 32.920341, 21.792963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853096, 32.687584, 21.909027>,  <32.670757, 32.547928, 21.978666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853096, 32.687584, 21.909027>,  <33.156990, 32.920341, 21.792963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853096, 32.687584, 21.909027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031867, 0.412388, 0.910451,
		-0.649447, 0.700951, -0.294764,
		-0.759739, -0.581896, 0.290161,
		32.625175, 32.513016, 21.996075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682846, 33.387077, 22.108425>,  <33.156990, 32.920341, 21.792963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682846, 33.387077, 22.108425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581928, 33.022388, 22.238110>,  <32.521378, 32.803577, 22.315920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.581928, 33.022388, 22.238110>,  <32.682846, 33.387077, 22.108425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581928, 33.022388, 22.238110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111331, 0.360176, 0.926217,
		-0.961224, 0.197586, -0.192374,
		-0.252296, -0.911720, 0.324213,
		32.506241, 32.748871, 22.335373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111561, 33.503197, 22.526524>,  <32.682846, 33.387077, 22.108425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111561, 33.503197, 22.526524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223568, 33.136944, 22.641901>,  <32.290771, 32.917191, 22.711128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.223568, 33.136944, 22.641901>,  <32.111561, 33.503197, 22.526524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223568, 33.136944, 22.641901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224160, 0.229796, 0.947072,
		-0.933457, -0.329856, -0.140902,
		0.280019, -0.915636, 0.288445,
		32.307575, 32.862251, 22.728434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610481, 33.274460, 22.971603>,  <32.111561, 33.503197, 22.526524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610481, 33.274460, 22.971603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952133, 33.080555, 23.046936>,  <32.157124, 32.964211, 23.092134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952133, 33.080555, 23.046936>,  <31.610481, 33.274460, 22.971603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952133, 33.080555, 23.046936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012764, 0.342480, 0.939438,
		-0.519907, -0.804804, 0.286334,
		0.854128, -0.484765, 0.188330,
		32.208370, 32.935127, 23.103436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357372, 32.844296, 23.481346>,  <31.610481, 33.274460, 22.971603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357372, 32.844296, 23.481346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747890, 32.810974, 23.561249>,  <31.982203, 32.790981, 23.609190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747890, 32.810974, 23.561249>,  <31.357372, 32.844296, 23.481346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747890, 32.810974, 23.561249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163442, 0.321244, 0.932785,
		-0.141880, -0.943325, 0.300014,
		0.976297, -0.083309, 0.199757,
		32.040779, 32.785980, 23.621176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489391, 32.444527, 24.189228>,  <31.357372, 32.844296, 23.481346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489391, 32.444527, 24.189228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813513, 32.662548, 24.103136>,  <32.007984, 32.793362, 24.051481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813513, 32.662548, 24.103136>,  <31.489391, 32.444527, 24.189228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813513, 32.662548, 24.103136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032678, 0.324680, 0.945259,
		0.585098, -0.772981, 0.245278,
		0.810304, 0.545054, -0.215229,
		32.056602, 32.826065, 24.038567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166950, 32.265930, 24.710058>,  <31.489391, 32.444527, 24.189228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166950, 32.265930, 24.710058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186043, 32.632427, 24.550947>,  <32.197498, 32.852325, 24.455481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186043, 32.632427, 24.550947>,  <32.166950, 32.265930, 24.710058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186043, 32.632427, 24.550947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109845, 0.391003, 0.913811,
		0.992802, -0.087308, -0.081982,
		0.047728, 0.916239, -0.397779,
		32.200359, 32.907299, 24.431614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575134, 32.497776, 25.130899>,  <32.166950, 32.265930, 24.710058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575134, 32.497776, 25.130899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438206, 32.830376, 24.955893>,  <32.356049, 33.029938, 24.850887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438206, 32.830376, 24.955893>,  <32.575134, 32.497776, 25.130899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438206, 32.830376, 24.955893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011855, 0.469436, 0.882887,
		0.939509, 0.297042, -0.170554,
		-0.342319, 0.831502, -0.437518,
		32.335510, 33.079826, 24.824636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000130, 33.098980, 25.435976>,  <32.575134, 32.497776, 25.130899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000130, 33.098980, 25.435976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663960, 33.238102, 25.269737>,  <32.462257, 33.321575, 25.169994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663960, 33.238102, 25.269737>,  <33.000130, 33.098980, 25.435976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663960, 33.238102, 25.269737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115040, 0.634907, 0.763976,
		0.529579, 0.689874, -0.493579,
		-0.840424, 0.347804, -0.415597,
		32.411831, 33.342442, 25.145058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043198, 33.785255, 25.640451>,  <33.000130, 33.098980, 25.435976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043198, 33.785255, 25.640451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652328, 33.733406, 25.573112>,  <32.417809, 33.702297, 25.532709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652328, 33.733406, 25.573112>,  <33.043198, 33.785255, 25.640451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652328, 33.733406, 25.573112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212017, 0.646428, 0.732925,
		0.013820, 0.751883, -0.659151,
		-0.977168, -0.129622, -0.168346,
		32.359177, 33.694519, 25.522608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793850, 34.457890, 25.450325>,  <33.043198, 33.785255, 25.640451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793850, 34.457890, 25.450325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496708, 34.231373, 25.593140>,  <32.318420, 34.095463, 25.678829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496708, 34.231373, 25.593140>,  <32.793850, 34.457890, 25.450325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496708, 34.231373, 25.593140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356356, 0.785988, 0.505206,
		-0.566722, 0.248063, -0.785678,
		-0.742857, -0.566293, 0.357038,
		32.273849, 34.061485, 25.700251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462482, 34.993462, 25.720314>,  <32.793850, 34.457890, 25.450325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462482, 34.993462, 25.720314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260025, 34.669823, 25.839767>,  <32.138550, 34.475639, 25.911440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260025, 34.669823, 25.839767>,  <32.462482, 34.993462, 25.720314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260025, 34.669823, 25.839767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434948, 0.538466, 0.721716,
		-0.744743, 0.235400, -0.624455,
		-0.506140, -0.809099, 0.298632,
		32.108185, 34.427094, 25.929358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787001, 35.150875, 25.956612>,  <32.462482, 34.993462, 25.720314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787001, 35.150875, 25.956612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857290, 34.802834, 26.140802>,  <31.899464, 34.594009, 26.251316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857290, 34.802834, 26.140802>,  <31.787001, 35.150875, 25.956612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857290, 34.802834, 26.140802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147057, 0.439306, 0.886219,
		-0.973394, -0.223444, -0.050759,
		0.175722, -0.870105, 0.460477,
		31.910007, 34.541801, 26.278946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168432, 35.070633, 26.472660>,  <31.787001, 35.150875, 25.956612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168432, 35.070633, 26.472660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499317, 34.869564, 26.573090>,  <31.697847, 34.748920, 26.633347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499317, 34.869564, 26.573090>,  <31.168432, 35.070633, 26.472660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499317, 34.869564, 26.573090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021014, 0.474200, 0.880166,
		-0.561496, -0.722808, 0.402828,
		0.827213, -0.502675, 0.251072,
		31.747480, 34.718761, 26.648411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620459, 35.191612, 25.883455>,  <31.168432, 35.070633, 26.472660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620459, 35.191612, 25.883455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335760, 35.361176, 25.659412>,  <30.164940, 35.462914, 25.524986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335760, 35.361176, 25.659412>,  <30.620459, 35.191612, 25.883455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335760, 35.361176, 25.659412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101510, -0.851077, -0.515134,
		-0.695062, -0.309789, 0.648783,
		-0.711748, 0.423908, -0.560104,
		30.122236, 35.488350, 25.491381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093451, 34.608734, 25.747316>,  <30.620459, 35.191612, 25.883455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093451, 34.608734, 25.747316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018240, 34.886871, 25.469858>,  <29.973114, 35.053753, 25.303383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.018240, 34.886871, 25.469858>,  <30.093451, 34.608734, 25.747316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018240, 34.886871, 25.469858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102302, -0.716266, -0.690288,
		-0.976822, -0.058830, 0.205811,
		-0.188025, 0.695343, -0.693646,
		29.961832, 35.095474, 25.261765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424053, 34.454018, 25.408154>,  <30.093451, 34.608734, 25.747316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424053, 34.454018, 25.408154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631807, 34.683506, 25.154831>,  <29.756460, 34.821201, 25.002836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631807, 34.683506, 25.154831>,  <29.424053, 34.454018, 25.408154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631807, 34.683506, 25.154831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172648, -0.655376, -0.735306,
		-0.836918, 0.491246, -0.241341,
		0.519385, 0.573724, -0.633309,
		29.787622, 34.855621, 24.964838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125841, 34.353249, 24.845930>,  <29.424053, 34.454018, 25.408154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125841, 34.353249, 24.845930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446974, 34.534084, 24.690458>,  <29.639654, 34.642586, 24.597176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446974, 34.534084, 24.690458>,  <29.125841, 34.353249, 24.845930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446974, 34.534084, 24.690458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067430, -0.578890, -0.812613,
		-0.592377, 0.678602, -0.434268,
		0.802834, 0.452091, -0.388679,
		29.687824, 34.669712, 24.573854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813738, 34.460743, 24.190588>,  <29.125841, 34.353249, 24.845930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813738, 34.460743, 24.190588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213537, 34.450504, 24.198063>,  <29.453417, 34.444359, 24.202547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213537, 34.450504, 24.198063>,  <28.813738, 34.460743, 24.190588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213537, 34.450504, 24.198063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004386, -0.472215, -0.881473,
		0.031389, 0.881112, -0.471865,
		0.999498, -0.025599, 0.018687,
		29.513386, 34.442825, 24.203669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009556, 34.548016, 23.487047>,  <28.813738, 34.460743, 24.190588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009556, 34.548016, 23.487047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347292, 34.405678, 23.647278>,  <29.549934, 34.320274, 23.743416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.347292, 34.405678, 23.647278>,  <29.009556, 34.548016, 23.487047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.347292, 34.405678, 23.647278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216755, -0.456863, -0.862724,
		0.490006, 0.815261, -0.308617,
		0.844341, -0.355846, 0.400577,
		29.600594, 34.298923, 23.767450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643173, 34.827267, 23.036465>,  <29.009556, 34.548016, 23.487047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643173, 34.827267, 23.036465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774765, 34.513771, 23.247185>,  <29.853720, 34.325672, 23.373617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774765, 34.513771, 23.247185>,  <29.643173, 34.827267, 23.036465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774765, 34.513771, 23.247185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464718, -0.351264, -0.812804,
		0.822076, 0.512211, 0.248660,
		0.328982, -0.783744, 0.526799,
		29.873459, 34.278648, 23.405224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460768, 34.789619, 22.966259>,  <29.643173, 34.827267, 23.036465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460768, 34.789619, 22.966259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319437, 34.433556, 23.081347>,  <30.234638, 34.219917, 23.150398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319437, 34.433556, 23.081347>,  <30.460768, 34.789619, 22.966259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319437, 34.433556, 23.081347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332218, -0.406902, -0.850918,
		0.874524, -0.205066, 0.439495,
		-0.353325, -0.890157, 0.287719,
		30.213440, 34.166508, 23.167662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949667, 34.429955, 22.812885>,  <30.460768, 34.789619, 22.966259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949667, 34.429955, 22.812885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642778, 34.173523, 22.820765>,  <30.458645, 34.019665, 22.825493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642778, 34.173523, 22.820765>,  <30.949667, 34.429955, 22.812885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642778, 34.173523, 22.820765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313045, -0.401094, -0.860887,
		0.559799, -0.654324, 0.508414,
		-0.767221, -0.641081, 0.019700,
		30.412613, 33.981197, 22.826674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199205, 33.858959, 22.446770>,  <30.949667, 34.429955, 22.812885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199205, 33.858959, 22.446770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802340, 33.811134, 22.461287>,  <30.564220, 33.782440, 22.469997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.802340, 33.811134, 22.461287>,  <31.199205, 33.858959, 22.446770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802340, 33.811134, 22.461287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027933, -0.495359, -0.868239,
		0.121784, -0.860421, 0.494817,
		-0.992163, -0.119560, 0.036293,
		30.504690, 33.775265, 22.472174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092346, 33.205418, 22.150894>,  <31.199205, 33.858959, 22.446770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092346, 33.205418, 22.150894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726377, 33.366245, 22.136673>,  <30.506796, 33.462742, 22.128139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.726377, 33.366245, 22.136673>,  <31.092346, 33.205418, 22.150894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.726377, 33.366245, 22.136673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236389, -0.605141, -0.760214,
		-0.327172, -0.687130, 0.648699,
		-0.914920, 0.402065, -0.035555,
		30.451900, 33.486866, 22.126007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590755, 32.658192, 22.280060>,  <31.092346, 33.205418, 22.150894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590755, 32.658192, 22.280060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430681, 32.951618, 22.060337>,  <30.334637, 33.127674, 21.928505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430681, 32.951618, 22.060337>,  <30.590755, 32.658192, 22.280060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430681, 32.951618, 22.060337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220545, -0.658867, -0.719203,
		-0.889500, -0.166669, 0.425454,
		-0.400187, 0.733563, -0.549305,
		30.310625, 33.171688, 21.895546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093992, 32.301182, 21.973057>,  <30.590755, 32.658192, 22.280060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093992, 32.301182, 21.973057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158123, 32.633987, 21.760622>,  <30.196602, 32.833672, 21.633162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158123, 32.633987, 21.760622>,  <30.093992, 32.301182, 21.973057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158123, 32.633987, 21.760622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147708, -0.511764, -0.846333,
		-0.975950, 0.214136, 0.040845,
		0.160327, 0.832012, -0.531085,
		30.206221, 32.883591, 21.601297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401279, 32.452206, 21.573250>,  <30.093992, 32.301182, 21.973057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401279, 32.452206, 21.573250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695177, 32.653645, 21.391464>,  <29.871515, 32.774509, 21.282393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695177, 32.653645, 21.391464>,  <29.401279, 32.452206, 21.573250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695177, 32.653645, 21.391464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188631, -0.491856, -0.849997,
		-0.651590, 0.710257, -0.266393,
		0.734744, 0.503600, -0.454465,
		29.915600, 32.804726, 21.255125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146864, 32.663265, 20.924845>,  <29.401279, 32.452206, 21.573250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146864, 32.663265, 20.924845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544477, 32.683578, 20.886227>,  <29.783045, 32.695766, 20.863056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544477, 32.683578, 20.886227>,  <29.146864, 32.663265, 20.924845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544477, 32.683578, 20.886227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066304, -0.421535, -0.904385,
		-0.086622, 0.905389, -0.415653,
		0.994032, 0.050780, -0.096545,
		29.842688, 32.698811, 20.857264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205467, 32.859264, 20.254236>,  <29.146864, 32.663265, 20.924845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205467, 32.859264, 20.254236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563917, 32.697495, 20.327347>,  <29.778986, 32.600433, 20.371214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563917, 32.697495, 20.327347>,  <29.205467, 32.859264, 20.254236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563917, 32.697495, 20.327347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007738, -0.426011, -0.904685,
		0.443739, 0.809294, -0.384888,
		0.896123, -0.404422, 0.182776,
		29.832754, 32.576168, 20.382179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633259, 32.975986, 19.641052>,  <29.205467, 32.859264, 20.254236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633259, 32.975986, 19.641052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801842, 32.670219, 19.836208>,  <29.902990, 32.486759, 19.953302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.801842, 32.670219, 19.836208>,  <29.633259, 32.975986, 19.641052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.801842, 32.670219, 19.836208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106571, -0.492529, -0.863746,
		0.900566, 0.416025, -0.126114,
		0.421455, -0.764420, 0.487891,
		29.928278, 32.440895, 19.982576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.115625, 32.964581, 19.283863>,  <29.633259, 32.975986, 19.641052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.115625, 32.964581, 19.283863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105108, 32.605995, 19.460798>,  <30.098799, 32.390842, 19.566959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105108, 32.605995, 19.460798>,  <30.115625, 32.964581, 19.283863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105108, 32.605995, 19.460798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193999, -0.438655, -0.877466,
		0.980649, 0.062742, 0.185446,
		-0.026293, -0.896463, 0.442338,
		30.097221, 32.337055, 19.593500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542889, 32.609779, 18.850882>,  <30.115625, 32.964581, 19.283863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542889, 32.609779, 18.850882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326723, 32.338009, 19.049408>,  <30.197023, 32.174946, 19.168524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326723, 32.338009, 19.049408>,  <30.542889, 32.609779, 18.850882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326723, 32.338009, 19.049408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087574, -0.632087, -0.769933,
		0.836829, -0.372619, 0.401089,
		-0.540415, -0.679427, 0.496317,
		30.164598, 32.134182, 19.198303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870699, 32.016106, 18.626091>,  <30.542889, 32.609779, 18.850882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870699, 32.016106, 18.626091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519026, 31.893671, 18.772156>,  <30.308022, 31.820210, 18.859795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.519026, 31.893671, 18.772156>,  <30.870699, 32.016106, 18.626091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519026, 31.893671, 18.772156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047947, -0.705653, -0.706933,
		0.474064, -0.639033, 0.605723,
		-0.879184, -0.306089, 0.365164,
		30.255270, 31.801844, 18.881704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964642, 31.393250, 18.815611>,  <30.870699, 32.016106, 18.626091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964642, 31.393250, 18.815611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573090, 31.432650, 18.743959>,  <30.338158, 31.456289, 18.700968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573090, 31.432650, 18.743959>,  <30.964642, 31.393250, 18.815611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573090, 31.432650, 18.743959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040807, -0.764472, -0.643364,
		-0.200313, -0.637088, 0.744308,
		-0.978882, 0.098501, -0.179131,
		30.279425, 31.462200, 18.690220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669603, 30.705292, 18.692606>,  <30.964642, 31.393250, 18.815611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669603, 30.705292, 18.692606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419613, 30.957943, 18.509106>,  <30.269619, 31.109533, 18.399006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419613, 30.957943, 18.509106>,  <30.669603, 30.705292, 18.692606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419613, 30.957943, 18.509106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151797, -0.478109, -0.865083,
		-0.765742, -0.610295, 0.202929,
		-0.624978, 0.631626, -0.458749,
		30.232119, 31.147430, 18.371481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331161, 30.291960, 18.176315>,  <30.669603, 30.705292, 18.692606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331161, 30.291960, 18.176315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260643, 30.665522, 18.051899>,  <30.218332, 30.889658, 17.977249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260643, 30.665522, 18.051899>,  <30.331161, 30.291960, 18.176315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260643, 30.665522, 18.051899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105998, -0.296140, -0.949245,
		-0.978614, -0.200316, -0.046784,
		-0.176295, 0.933903, -0.311040,
		30.207754, 30.945692, 17.958588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.762644, 30.286686, 17.538378>,  <30.331161, 30.291960, 18.176315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.762644, 30.286686, 17.538378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992950, 30.613493, 17.525908>,  <30.131134, 30.809578, 17.518425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.992950, 30.613493, 17.525908>,  <29.762644, 30.286686, 17.538378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992950, 30.613493, 17.525908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048020, -0.071857, -0.996258,
		-0.816203, 0.572115, -0.080606,
		0.575767, 0.817019, -0.031177,
		30.165680, 30.858599, 17.516554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526691, 30.625237, 16.916548>,  <29.762644, 30.286686, 17.538378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526691, 30.625237, 16.916548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882563, 30.792334, 16.990269>,  <30.096085, 30.892591, 17.034502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.882563, 30.792334, 16.990269>,  <29.526691, 30.625237, 16.916548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.882563, 30.792334, 16.990269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164117, 0.084102, -0.982849,
		-0.426076, 0.904665, 0.006265,
		0.889677, 0.417741, 0.184304,
		30.149466, 30.917656, 17.045561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643282, 31.074348, 16.414999>,  <29.526691, 30.625237, 16.916548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643282, 31.074348, 16.414999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015684, 31.092747, 16.559837>,  <30.239126, 31.103785, 16.646740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015684, 31.092747, 16.559837>,  <29.643282, 31.074348, 16.414999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015684, 31.092747, 16.559837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362525, -0.001122, -0.931973,
		-0.042460, 0.998941, -0.017719,
		0.931006, 0.045995, 0.362093,
		30.294987, 31.106544, 16.668465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072954, 31.536299, 15.954856>,  <29.643282, 31.074348, 16.414999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072954, 31.536299, 15.954856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343664, 31.319206, 16.153822>,  <30.506090, 31.188951, 16.273201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343664, 31.319206, 16.153822>,  <30.072954, 31.536299, 15.954856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343664, 31.319206, 16.153822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487687, -0.175632, -0.855169,
		0.551488, 0.821339, 0.145820,
		0.676773, -0.542730, 0.497415,
		30.546696, 31.156387, 16.303047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792587, 31.884296, 15.734449>,  <30.072954, 31.536299, 15.954856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792587, 31.884296, 15.734449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774153, 31.497259, 15.833757>,  <30.763092, 31.265038, 15.893342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774153, 31.497259, 15.833757>,  <30.792587, 31.884296, 15.734449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774153, 31.497259, 15.833757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556031, -0.231322, -0.798323,
		0.829883, 0.101253, 0.548673,
		-0.046087, -0.967594, 0.248270,
		30.760326, 31.206982, 15.908238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.373940, 31.713533, 15.486060>,  <30.792587, 31.884296, 15.734449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.373940, 31.713533, 15.486060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214832, 31.349552, 15.532993>,  <31.119368, 31.131163, 15.561153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214832, 31.349552, 15.532993>,  <31.373940, 31.713533, 15.486060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214832, 31.349552, 15.532993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581720, -0.349022, -0.734701,
		0.709496, -0.223984, 0.668167,
		-0.397766, -0.909953, 0.117334,
		31.095503, 31.076567, 15.568193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925394, 31.156204, 15.280953>,  <31.373940, 31.713533, 15.486060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925394, 31.156204, 15.280953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587934, 30.941961, 15.266095>,  <31.385458, 30.813416, 15.257180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587934, 30.941961, 15.266095>,  <31.925394, 31.156204, 15.280953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587934, 30.941961, 15.266095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382538, -0.551113, -0.741579,
		0.376725, -0.639842, 0.669837,
		-0.843649, -0.535609, -0.037146,
		31.334839, 30.781279, 15.254951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081894, 30.416397, 15.343630>,  <31.925394, 31.156204, 15.280953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081894, 30.416397, 15.343630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722027, 30.454384, 15.173179>,  <31.506107, 30.477177, 15.070908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722027, 30.454384, 15.173179>,  <32.081894, 30.416397, 15.343630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722027, 30.454384, 15.173179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321448, -0.516377, -0.793742,
		-0.295423, -0.851080, 0.434039,
		-0.899665, 0.094968, -0.426127,
		31.452127, 30.482874, 15.045341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026207, 29.785059, 15.004770>,  <32.081894, 30.416397, 15.343630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026207, 29.785059, 15.004770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774609, 30.035969, 14.821078>,  <31.623650, 30.186514, 14.710863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774609, 30.035969, 14.821078>,  <32.026207, 29.785059, 15.004770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774609, 30.035969, 14.821078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310222, -0.339124, -0.888120,
		-0.712831, -0.701087, 0.018713,
		-0.628995, 0.627274, -0.459231,
		31.585911, 30.224152, 14.683309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741865, 29.349129, 14.565791>,  <32.026207, 29.785059, 15.004770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741865, 29.349129, 14.565791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670074, 29.720053, 14.434407>,  <31.627001, 29.942608, 14.355577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670074, 29.720053, 14.434407>,  <31.741865, 29.349129, 14.565791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670074, 29.720053, 14.434407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039885, -0.326747, -0.944270,
		-0.982954, -0.182574, 0.021657,
		-0.179476, 0.927310, -0.328459,
		31.616232, 29.998245, 14.335870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063459, 29.285854, 14.145712>,  <31.741865, 29.349129, 14.565791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063459, 29.285854, 14.145712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278332, 29.607210, 14.042949>,  <31.407255, 29.800024, 13.981291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278332, 29.607210, 14.042949>,  <31.063459, 29.285854, 14.145712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278332, 29.607210, 14.042949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027275, -0.320972, -0.946696,
		-0.843025, 0.501541, -0.194333,
		0.537183, 0.803389, -0.256908,
		31.439487, 29.848227, 13.965877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698488, 29.588434, 13.611466>,  <31.063459, 29.285854, 14.145712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698488, 29.588434, 13.611466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073298, 29.720993, 13.567354>,  <31.298183, 29.800529, 13.540887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073298, 29.720993, 13.567354>,  <30.698488, 29.588434, 13.611466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073298, 29.720993, 13.567354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071355, -0.127447, -0.989275,
		-0.341900, 0.934843, -0.095774,
		0.937023, 0.331399, -0.110280,
		31.354404, 29.820414, 13.534270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644783, 30.061876, 13.024802>,  <30.698488, 29.588434, 13.611466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.644783, 30.061876, 13.024802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038824, 30.013611, 13.073810>,  <31.275249, 29.984652, 13.103214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038824, 30.013611, 13.073810>,  <30.644783, 30.061876, 13.024802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038824, 30.013611, 13.073810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124346, 0.007702, -0.992209,
		0.118781, 0.992664, 0.022592,
		0.985104, -0.120665, 0.122519,
		31.334354, 29.977411, 13.110565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013493, 30.586519, 12.652064>,  <30.644783, 30.061876, 13.024802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013493, 30.586519, 12.652064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205992, 30.237278, 12.683269>,  <31.321491, 30.027733, 12.701991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205992, 30.237278, 12.683269>,  <31.013493, 30.586519, 12.652064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205992, 30.237278, 12.683269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162783, 0.001569, -0.986661,
		0.861336, 0.487529, 0.142881,
		0.481250, -0.873105, 0.078010,
		31.350367, 29.975346, 12.706672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658913, 30.594616, 12.283148>,  <31.013493, 30.586519, 12.652064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658913, 30.594616, 12.283148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531597, 30.216999, 12.317725>,  <31.455208, 29.990429, 12.338471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531597, 30.216999, 12.317725>,  <31.658913, 30.594616, 12.283148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531597, 30.216999, 12.317725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085796, -0.119498, -0.989121,
		0.944104, -0.307409, 0.119030,
		-0.318288, -0.944045, 0.086444,
		31.436111, 29.933786, 12.343658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135353, 31.120972, 12.304703>,  <31.658913, 30.594616, 12.283148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135353, 31.120972, 12.304703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390633, 31.381399, 12.140355>,  <32.543800, 31.537657, 12.041746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390633, 31.381399, 12.140355>,  <32.135353, 31.120972, 12.304703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390633, 31.381399, 12.140355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207748, 0.368246, 0.906220,
		0.741314, -0.663703, 0.099755,
		0.638196, 0.651070, -0.410869,
		32.582092, 31.576719, 12.017095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664909, 31.134644, 12.730881>,  <32.135353, 31.120972, 12.304703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664909, 31.134644, 12.730881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747852, 31.470016, 12.529275>,  <32.797619, 31.671240, 12.408311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747852, 31.470016, 12.529275>,  <32.664909, 31.134644, 12.730881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747852, 31.470016, 12.529275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259568, 0.449591, 0.854688,
		0.943200, -0.308056, -0.124402,
		0.207362, 0.838433, -0.504015,
		32.810062, 31.721546, 12.378070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389812, 31.360657, 12.875345>,  <32.664909, 31.134644, 12.730881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389812, 31.360657, 12.875345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192177, 31.681286, 12.740668>,  <33.073597, 31.873663, 12.659862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192177, 31.681286, 12.740668>,  <33.389812, 31.360657, 12.875345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192177, 31.681286, 12.740668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227563, 0.492995, 0.839744,
		0.839104, 0.338286, -0.425990,
		-0.494085, 0.801572, -0.336693,
		33.043953, 31.921757, 12.639661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820927, 31.904652, 13.051137>,  <33.389812, 31.360657, 12.875345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820927, 31.904652, 13.051137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461224, 32.075905, 13.015265>,  <33.245403, 32.178658, 12.993743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461224, 32.075905, 13.015265>,  <33.820927, 31.904652, 13.051137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461224, 32.075905, 13.015265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131840, 0.460759, 0.877678,
		0.417084, 0.777433, -0.470785,
		-0.899255, 0.428134, -0.089678,
		33.191448, 32.204346, 12.988362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898693, 32.566925, 13.310704>,  <33.820927, 31.904652, 13.051137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898693, 32.566925, 13.310704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498760, 32.559856, 13.308973>,  <33.258801, 32.555614, 13.307935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498760, 32.559856, 13.308973>,  <33.898693, 32.566925, 13.310704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498760, 32.559856, 13.308973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013341, 0.550468, 0.834750,
		-0.012367, 0.834669, -0.550613,
		-0.999835, -0.017669, -0.004328,
		33.198811, 32.554554, 13.307675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639416, 33.256798, 13.390042>,  <33.898693, 32.566925, 13.310704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639416, 33.256798, 13.390042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370380, 32.994633, 13.527476>,  <33.208958, 32.837334, 13.609937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370380, 32.994633, 13.527476>,  <33.639416, 33.256798, 13.390042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370380, 32.994633, 13.527476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082562, 0.527858, 0.845311,
		-0.735394, 0.540182, -0.409145,
		-0.672591, -0.655416, 0.343585,
		33.168602, 32.798008, 13.630552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451008, 33.595043, 13.940914>,  <33.639416, 33.256798, 13.390042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451008, 33.595043, 13.940914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237297, 33.261932, 13.998935>,  <33.109070, 33.062065, 14.033747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.237297, 33.261932, 13.998935>,  <33.451008, 33.595043, 13.940914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237297, 33.261932, 13.998935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186913, 0.283733, 0.940510,
		-0.824387, 0.475378, -0.307247,
		-0.534274, -0.832773, 0.145051,
		33.077015, 33.012100, 14.042450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796200, 33.774181, 14.227847>,  <33.451008, 33.595043, 13.940914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796200, 33.774181, 14.227847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838627, 33.389732, 14.329822>,  <32.864082, 33.159061, 14.391006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.838627, 33.389732, 14.329822>,  <32.796200, 33.774181, 14.227847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838627, 33.389732, 14.329822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404451, 0.192514, 0.894068,
		-0.908387, -0.197946, -0.368307,
		0.106072, -0.961122, 0.254937,
		32.870449, 33.101395, 14.406302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177612, 33.596470, 14.411890>,  <32.796200, 33.774181, 14.227847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177612, 33.596470, 14.411890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434948, 33.337269, 14.574964>,  <32.589348, 33.181747, 14.672808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.434948, 33.337269, 14.574964>,  <32.177612, 33.596470, 14.411890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434948, 33.337269, 14.574964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396371, 0.173661, 0.901517,
		-0.654985, -0.741574, -0.145127,
		0.643339, -0.648004, 0.407684,
		32.627949, 33.142868, 14.697268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813797, 33.363865, 14.977460>,  <32.177612, 33.596470, 14.411890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813797, 33.363865, 14.977460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172459, 33.228329, 15.091443>,  <32.387657, 33.147007, 15.159833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172459, 33.228329, 15.091443>,  <31.813797, 33.363865, 14.977460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172459, 33.228329, 15.091443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236552, 0.177404, 0.955286,
		-0.374240, -0.923968, 0.078917,
		0.896653, -0.338839, 0.284958,
		32.441456, 33.126678, 15.176930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766541, 32.904602, 15.612592>,  <31.813797, 33.363865, 14.977460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766541, 32.904602, 15.612592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155754, 32.996773, 15.608486>,  <32.389282, 33.052074, 15.606023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.155754, 32.996773, 15.608486>,  <31.766541, 32.904602, 15.612592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155754, 32.996773, 15.608486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028737, 0.165262, 0.985831,
		0.228861, -0.958953, 0.167427,
		0.973035, 0.230430, -0.010264,
		32.447666, 33.065903, 15.605407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.971121, 32.677658, 16.247059>,  <31.766541, 32.904602, 15.612592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.971121, 32.677658, 16.247059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289150, 32.903740, 16.159050>,  <32.479969, 33.039387, 16.106245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289150, 32.903740, 16.159050>,  <31.971121, 32.677658, 16.247059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289150, 32.903740, 16.159050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058640, 0.432698, 0.899630,
		0.603675, -0.702368, 0.377169,
		0.795071, 0.565201, -0.220022,
		32.527672, 33.073299, 16.093044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.481339, 32.526897, 16.752611>,  <31.971121, 32.677658, 16.247059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.481339, 32.526897, 16.752611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538345, 32.893543, 16.603207>,  <32.572552, 33.113529, 16.513563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538345, 32.893543, 16.603207>,  <32.481339, 32.526897, 16.752611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538345, 32.893543, 16.603207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038786, 0.382248, 0.923245,
		0.989032, -0.117093, 0.090029,
		0.142519, 0.916611, -0.373514,
		32.581100, 33.168526, 16.491152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916569, 32.845478, 17.182264>,  <32.481339, 32.526897, 16.752611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916569, 32.845478, 17.182264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740425, 33.147850, 16.988503>,  <32.634739, 33.329273, 16.872246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740425, 33.147850, 16.988503>,  <32.916569, 32.845478, 17.182264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740425, 33.147850, 16.988503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075235, 0.506566, 0.858912,
		0.894663, 0.414676, -0.166199,
		-0.440361, 0.755933, -0.484404,
		32.608318, 33.374630, 16.843182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224396, 33.459293, 17.391293>,  <32.916569, 32.845478, 17.182264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224396, 33.459293, 17.391293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862305, 33.562096, 17.255934>,  <32.645050, 33.623779, 17.174719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862305, 33.562096, 17.255934>,  <33.224396, 33.459293, 17.391293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862305, 33.562096, 17.255934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177649, 0.494530, 0.850812,
		0.386012, 0.830293, -0.402005,
		-0.905227, 0.257008, -0.338395,
		32.590736, 33.639198, 17.154415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146248, 34.158665, 17.500467>,  <33.224396, 33.459293, 17.391293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146248, 34.158665, 17.500467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770939, 34.027519, 17.456381>,  <32.545753, 33.948830, 17.429930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770939, 34.027519, 17.456381>,  <33.146248, 34.158665, 17.500467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770939, 34.027519, 17.456381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276012, 0.517631, 0.809861,
		-0.208476, 0.790291, -0.576175,
		-0.938272, -0.327868, -0.110216,
		32.489456, 33.929157, 17.423315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838501, 34.771294, 17.423569>,  <33.146248, 34.158665, 17.500467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838501, 34.771294, 17.423569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598270, 34.469185, 17.528543>,  <32.454132, 34.287922, 17.591528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598270, 34.469185, 17.528543>,  <32.838501, 34.771294, 17.423569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598270, 34.469185, 17.528543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303722, 0.519121, 0.798916,
		-0.739633, 0.400104, -0.541165,
		-0.600580, -0.755268, 0.262439,
		32.418098, 34.242603, 17.607275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208584, 35.147392, 17.607647>,  <32.838501, 34.771294, 17.423569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208584, 35.147392, 17.607647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191513, 34.782753, 17.771187>,  <32.181271, 34.563969, 17.869310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191513, 34.782753, 17.771187>,  <32.208584, 35.147392, 17.607647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191513, 34.782753, 17.771187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516313, 0.370469, 0.772123,
		-0.855336, -0.178141, -0.486484,
		-0.042681, -0.911602, 0.408852,
		32.178707, 34.509274, 17.893843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497776, 35.074821, 17.901781>,  <32.208584, 35.147392, 17.607647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497776, 35.074821, 17.901781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716829, 34.794556, 18.084723>,  <31.848261, 34.626396, 18.194487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716829, 34.794556, 18.084723>,  <31.497776, 35.074821, 17.901781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716829, 34.794556, 18.084723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419300, 0.243209, 0.874664,
		-0.724074, -0.670765, -0.160597,
		0.547635, -0.700660, 0.457353,
		31.881121, 34.584358, 18.221928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059624, 34.604679, 18.302565>,  <31.497776, 35.074821, 17.901781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059624, 34.604679, 18.302565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428427, 34.588417, 18.456575>,  <31.649710, 34.578659, 18.548983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428427, 34.588417, 18.456575>,  <31.059624, 34.604679, 18.302565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428427, 34.588417, 18.456575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366380, 0.229881, 0.901621,
		-0.125163, -0.972369, 0.197058,
		0.922009, -0.040652, 0.385029,
		31.705029, 34.576221, 18.572084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.952280, 34.265877, 18.961044>,  <31.059624, 34.604679, 18.302565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.952280, 34.265877, 18.961044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314816, 34.433304, 18.984211>,  <31.532337, 34.533760, 18.998112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.314816, 34.433304, 18.984211>,  <30.952280, 34.265877, 18.961044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314816, 34.433304, 18.984211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139895, 0.167891, 0.975829,
		0.398725, -0.892533, 0.210721,
		0.906337, 0.418566, 0.057919,
		31.586718, 34.558872, 19.001587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299994, 33.951790, 19.443853>,  <30.952280, 34.265877, 18.961044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299994, 33.951790, 19.443853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446878, 34.321720, 19.404160>,  <31.535009, 34.543678, 19.380344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446878, 34.321720, 19.404160>,  <31.299994, 33.951790, 19.443853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446878, 34.321720, 19.404160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222319, 0.190865, 0.956109,
		0.903176, -0.329035, 0.275696,
		0.367214, 0.924828, -0.099234,
		31.557043, 34.599167, 19.374390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676477, 34.023628, 20.047287>,  <31.299994, 33.951790, 19.443853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676477, 34.023628, 20.047287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626516, 34.392521, 19.900923>,  <31.596540, 34.613857, 19.813105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626516, 34.392521, 19.900923>,  <31.676477, 34.023628, 20.047287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626516, 34.392521, 19.900923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237265, 0.330334, 0.913556,
		0.963382, 0.200922, 0.177554,
		-0.124902, 0.922231, -0.365910,
		31.589046, 34.669189, 19.791149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.063614, 34.510105, 20.588671>,  <31.676477, 34.023628, 20.047287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.063614, 34.510105, 20.588671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796440, 34.713287, 20.371105>,  <31.636135, 34.835197, 20.240566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796440, 34.713287, 20.371105>,  <32.063614, 34.510105, 20.588671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796440, 34.713287, 20.371105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392605, 0.380380, 0.837360,
		0.632239, 0.772844, -0.054641,
		-0.667934, 0.507959, -0.543913,
		31.596060, 34.865677, 20.207932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010380, 35.178150, 20.965057>,  <32.063614, 34.510105, 20.588671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010380, 35.178150, 20.965057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670597, 35.145775, 20.756493>,  <31.466726, 35.126350, 20.631353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670597, 35.145775, 20.756493>,  <32.010380, 35.178150, 20.965057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670597, 35.145775, 20.756493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503932, 0.417414, 0.756187,
		0.156438, 0.905104, -0.395365,
		-0.849459, -0.080940, -0.521410,
		31.415760, 35.121494, 20.600069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845610, 35.820858, 20.917425>,  <32.010380, 35.178150, 20.965057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845610, 35.820858, 20.917425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503571, 35.623081, 20.855028>,  <31.298347, 35.504414, 20.817589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503571, 35.623081, 20.855028>,  <31.845610, 35.820858, 20.917425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503571, 35.623081, 20.855028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418481, 0.480592, 0.770652,
		-0.306074, 0.724264, -0.617868,
		-0.855098, -0.494442, -0.155994,
		31.247042, 35.474747, 20.808229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377600, 36.301151, 20.840599>,  <31.845610, 35.820858, 20.917425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377600, 36.301151, 20.840599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165146, 35.976078, 20.936472>,  <31.037674, 35.781033, 20.993996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.165146, 35.976078, 20.936472>,  <31.377600, 36.301151, 20.840599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.165146, 35.976078, 20.936472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480484, 0.521891, 0.704816,
		-0.697878, 0.259188, -0.667674,
		-0.531133, -0.812682, 0.239680,
		31.005806, 35.732273, 21.008375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702763, 36.458153, 20.687777>,  <31.377600, 36.301151, 20.840599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702763, 36.458153, 20.687777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703030, 36.161911, 20.956553>,  <30.703190, 35.984165, 21.117819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.703030, 36.161911, 20.956553>,  <30.702763, 36.458153, 20.687777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.703030, 36.161911, 20.956553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482202, 0.588421, 0.649031,
		-0.876060, -0.324443, -0.356730,
		0.000666, -0.740606, 0.671939,
		30.703230, 35.939728, 21.158134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081652, 36.475601, 20.862202>,  <30.702763, 36.458153, 20.687777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081652, 36.475601, 20.862202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256918, 36.269356, 21.156725>,  <30.362078, 36.145607, 21.333439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256918, 36.269356, 21.156725>,  <30.081652, 36.475601, 20.862202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256918, 36.269356, 21.156725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623041, 0.416242, 0.662241,
		-0.647944, -0.748922, -0.138866,
		0.438165, -0.515614, 0.736310,
		30.388367, 36.114670, 21.377619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511576, 36.338135, 21.374125>,  <30.081652, 36.475601, 20.862202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511576, 36.338135, 21.374125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861204, 36.298958, 21.564455>,  <30.070980, 36.275452, 21.678654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.861204, 36.298958, 21.564455>,  <29.511576, 36.338135, 21.374125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861204, 36.298958, 21.564455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336713, 0.583887, 0.738715,
		-0.350179, -0.805905, 0.477380,
		0.874070, -0.097943, 0.475824,
		30.123425, 36.269577, 21.707203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352869, 36.576710, 22.088867>,  <29.511576, 36.338135, 21.374125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352869, 36.576710, 22.088867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752472, 36.559299, 22.085144>,  <29.992233, 36.548851, 22.082911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.752472, 36.559299, 22.085144>,  <29.352869, 36.576710, 22.088867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.752472, 36.559299, 22.085144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030803, 0.525042, 0.850519,
		-0.032135, -0.849962, 0.525863,
		0.999009, -0.043529, -0.009310,
		30.052174, 36.546242, 22.082352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537951, 36.440868, 22.732115>,  <29.352869, 36.576710, 22.088867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537951, 36.440868, 22.732115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865904, 36.614532, 22.582827>,  <30.062675, 36.718731, 22.493254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.865904, 36.614532, 22.582827>,  <29.537951, 36.440868, 22.732115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865904, 36.614532, 22.582827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090707, 0.545143, 0.833422,
		0.565306, -0.717159, 0.407569,
		0.819879, 0.434169, -0.373223,
		30.111868, 36.744781, 22.470860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021183, 36.415985, 23.316811>,  <29.537951, 36.440868, 22.732115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021183, 36.415985, 23.316811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193266, 36.674984, 23.065201>,  <30.296515, 36.830383, 22.914234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193266, 36.674984, 23.065201>,  <30.021183, 36.415985, 23.316811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193266, 36.674984, 23.065201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270868, 0.572108, 0.774159,
		0.861135, -0.503430, 0.070739,
		0.430205, 0.647495, -0.629026,
		30.322327, 36.869232, 22.876493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619543, 36.575008, 23.658438>,  <30.021183, 36.415985, 23.316811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619543, 36.575008, 23.658438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561529, 36.871872, 23.396700>,  <30.526720, 37.049988, 23.239656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561529, 36.871872, 23.396700>,  <30.619543, 36.575008, 23.658438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561529, 36.871872, 23.396700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347988, 0.657347, 0.668430,
		0.926212, -0.130759, -0.353599,
		-0.145034, 0.742157, -0.654346,
		30.518019, 37.094521, 23.200396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200916, 36.918442, 23.690027>,  <30.619543, 36.575008, 23.658438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200916, 36.918442, 23.690027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949617, 37.182922, 23.526018>,  <30.798838, 37.341610, 23.427612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949617, 37.182922, 23.526018>,  <31.200916, 36.918442, 23.690027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949617, 37.182922, 23.526018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374652, 0.718991, 0.585396,
		0.681866, 0.214159, -0.699425,
		-0.628247, 0.661202, -0.410020,
		30.761143, 37.381283, 23.403011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604582, 37.451691, 23.452496>,  <31.200916, 36.918442, 23.690027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604582, 37.451691, 23.452496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252872, 37.631676, 23.514992>,  <31.041847, 37.739666, 23.552490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252872, 37.631676, 23.514992>,  <31.604582, 37.451691, 23.452496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252872, 37.631676, 23.514992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472344, 0.781425, 0.407758,
		0.061384, 0.432331, -0.899623,
		-0.879274, 0.449961, 0.156242,
		30.989090, 37.766663, 23.561865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697458, 38.264065, 23.290028>,  <31.604582, 37.451691, 23.452496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697458, 38.264065, 23.290028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371788, 38.210995, 23.516132>,  <31.176386, 38.179153, 23.651794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.371788, 38.210995, 23.516132>,  <31.697458, 38.264065, 23.290028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371788, 38.210995, 23.516132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266157, 0.779950, 0.566426,
		-0.516025, 0.611617, -0.599702,
		-0.814173, -0.132675, 0.565260,
		31.127537, 38.171192, 23.685711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442339, 39.006508, 23.341862>,  <31.697458, 38.264065, 23.290028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442339, 39.006508, 23.341862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306900, 38.783409, 23.644985>,  <31.225637, 38.649551, 23.826859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306900, 38.783409, 23.644985>,  <31.442339, 39.006508, 23.341862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306900, 38.783409, 23.644985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115427, 0.774677, 0.621733,
		-0.933825, 0.297988, -0.197925,
		-0.338597, -0.557744, 0.757808,
		31.205320, 38.616085, 23.872328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017605, 39.440712, 23.688631>,  <31.442339, 39.006508, 23.341862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017605, 39.440712, 23.688631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105137, 39.142818, 23.940817>,  <31.157656, 38.964081, 24.092129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.105137, 39.142818, 23.940817>,  <31.017605, 39.440712, 23.688631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105137, 39.142818, 23.940817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412026, 0.656221, 0.632146,
		-0.884505, 0.121437, 0.450449,
		0.218828, -0.744733, 0.630466,
		31.170786, 38.919399, 24.129957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736336, 39.609135, 24.337276>,  <31.017605, 39.440712, 23.688631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736336, 39.609135, 24.337276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029400, 39.351105, 24.424070>,  <31.205238, 39.196285, 24.476147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029400, 39.351105, 24.424070>,  <30.736336, 39.609135, 24.337276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029400, 39.351105, 24.424070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357716, 0.636220, 0.683567,
		-0.579004, -0.423204, 0.696888,
		0.732662, -0.645076, 0.216987,
		31.249199, 39.157581, 24.489166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681759, 39.426861, 25.081810>,  <30.736336, 39.609135, 24.337276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681759, 39.426861, 25.081810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054108, 39.389797, 24.940451>,  <31.277517, 39.367561, 24.855635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054108, 39.389797, 24.940451>,  <30.681759, 39.426861, 25.081810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054108, 39.389797, 24.940451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324720, 0.653123, 0.684096,
		0.167426, -0.751562, 0.638062,
		0.930873, -0.092656, -0.353397,
		31.333370, 39.362000, 24.834431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132156, 39.169010, 25.522806>,  <30.681759, 39.426861, 25.081810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132156, 39.169010, 25.522806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292622, 39.444988, 25.281794>,  <31.388901, 39.610573, 25.137186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.292622, 39.444988, 25.281794>,  <31.132156, 39.169010, 25.522806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292622, 39.444988, 25.281794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089099, 0.625273, 0.775303,
		0.911663, -0.364709, 0.189364,
		0.401164, 0.689942, -0.602533,
		31.412971, 39.651970, 25.101034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669828, 39.460678, 25.874617>,  <31.132156, 39.169010, 25.522806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669828, 39.460678, 25.874617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619156, 39.734604, 25.587566>,  <31.588753, 39.898960, 25.415337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619156, 39.734604, 25.587566>,  <31.669828, 39.460678, 25.874617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619156, 39.734604, 25.587566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288568, 0.717605, 0.633854,
		0.949042, -0.126787, -0.288521,
		-0.126680, 0.684812, -0.717624,
		31.581152, 39.940048, 25.372278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769693, 39.532307, 26.564808>,  <31.669828, 39.460678, 25.874617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769693, 39.532307, 26.564808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888773, 39.373459, 26.912066>,  <31.960220, 39.278152, 27.120420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888773, 39.373459, 26.912066>,  <31.769693, 39.532307, 26.564808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888773, 39.373459, 26.912066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584743, -0.642972, -0.494634,
		0.754620, 0.654893, 0.040799,
		0.297699, -0.397118, 0.868143,
		31.978083, 39.254322, 27.172508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527931, 39.520321, 26.680656>,  <31.769693, 39.532307, 26.564808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527931, 39.520321, 26.680656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352894, 39.206451, 26.856291>,  <32.247871, 39.018127, 26.961672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.352894, 39.206451, 26.856291>,  <32.527931, 39.520321, 26.680656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.352894, 39.206451, 26.856291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673079, -0.609642, -0.418689,
		0.596220, 0.112325, 0.794924,
		-0.437590, -0.784678, 0.439085,
		32.221615, 38.971046, 26.988016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063950, 39.052795, 26.923309>,  <32.527931, 39.520321, 26.680656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063950, 39.052795, 26.923309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752987, 38.811314, 26.993944>,  <32.566410, 38.666424, 27.036325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752987, 38.811314, 26.993944>,  <33.063950, 39.052795, 26.923309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752987, 38.811314, 26.993944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568701, -0.794560, -0.212727,
		0.268733, -0.064950, 0.961023,
		-0.777407, -0.603701, 0.176587,
		32.519764, 38.630203, 27.046921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340607, 38.500645, 27.421280>,  <33.063950, 39.052795, 26.923309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340607, 38.500645, 27.421280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047813, 38.386524, 27.173794>,  <32.872139, 38.318054, 27.025301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047813, 38.386524, 27.173794>,  <33.340607, 38.500645, 27.421280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047813, 38.386524, 27.173794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533539, -0.804785, -0.260110,
		-0.423725, -0.520505, 0.741304,
		-0.731979, -0.285300, -0.618717,
		32.828220, 38.300934, 26.988178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024490, 38.567894, 27.556311>,  <33.340607, 38.500645, 27.421280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024490, 38.567894, 27.556311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252380, 38.658611, 27.872280>,  <34.389114, 38.713043, 28.061861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252380, 38.658611, 27.872280>,  <34.024490, 38.567894, 27.556311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252380, 38.658611, 27.872280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311604, -0.829789, 0.462983,
		0.760469, -0.509917, -0.402084,
		0.569727, 0.226793, 0.789922,
		34.423298, 38.726650, 28.109257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340004, 37.985691, 27.582819>,  <34.024490, 38.567894, 27.556311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340004, 37.985691, 27.582819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293449, 38.151062, 27.944046>,  <34.265518, 38.250286, 28.160782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293449, 38.151062, 27.944046>,  <34.340004, 37.985691, 27.582819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293449, 38.151062, 27.944046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579313, -0.766815, 0.276391,
		0.806754, -0.490990, 0.328751,
		-0.116386, 0.413429, 0.903067,
		34.258533, 38.275089, 28.214966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357845, 37.351994, 27.916265>,  <34.340004, 37.985691, 27.582819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357845, 37.351994, 27.916265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244896, 37.568226, 28.233261>,  <34.177128, 37.697964, 28.423458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244896, 37.568226, 28.233261>,  <34.357845, 37.351994, 27.916265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244896, 37.568226, 28.233261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450104, -0.804189, 0.388183,
		0.847155, -0.247090, 0.470399,
		-0.282373, 0.540580, 0.792489,
		34.160183, 37.730400, 28.471008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163918, 36.880638, 28.379147>,  <34.357845, 37.351994, 27.916265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163918, 36.880638, 28.379147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029247, 37.200993, 28.577229>,  <33.948444, 37.393208, 28.696077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029247, 37.200993, 28.577229>,  <34.163918, 36.880638, 28.379147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029247, 37.200993, 28.577229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572540, -0.591636, 0.567596,
		0.747561, -0.092429, 0.657730,
		-0.336675, 0.800890, 0.495203,
		33.928246, 37.441261, 28.725790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266102, 36.738770, 29.131374>,  <34.163918, 36.880638, 28.379147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266102, 36.738770, 29.131374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994202, 37.030949, 29.104906>,  <33.831062, 37.206257, 29.089025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994202, 37.030949, 29.104906>,  <34.266102, 36.738770, 29.131374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994202, 37.030949, 29.104906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564431, -0.463369, 0.683159,
		0.468350, 0.501730, 0.727265,
		-0.679754, 0.730449, -0.066173,
		33.790276, 37.250084, 29.085054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154007, 36.747116, 29.854511>,  <34.266102, 36.738770, 29.131374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154007, 36.747116, 29.854511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865162, 36.908684, 29.629869>,  <33.691853, 37.005623, 29.495085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865162, 36.908684, 29.629869>,  <34.154007, 36.747116, 29.854511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865162, 36.908684, 29.629869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690310, -0.473490, 0.547065,
		-0.044946, 0.782726, 0.620741,
		-0.722117, 0.403915, -0.561605,
		33.648525, 37.029858, 29.461388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819790, 37.294506, 30.118902>,  <34.154007, 36.747116, 29.854511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819790, 37.294506, 30.118902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550320, 37.107880, 29.889648>,  <33.388638, 36.995903, 29.752096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550320, 37.107880, 29.889648>,  <33.819790, 37.294506, 30.118902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550320, 37.107880, 29.889648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433664, -0.378394, 0.817773,
		-0.598413, 0.799461, 0.052583,
		-0.673675, -0.466563, -0.573133,
		33.348217, 36.967911, 29.717709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105495, 37.402489, 30.409363>,  <33.819790, 37.294506, 30.118902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105495, 37.402489, 30.409363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087852, 37.097847, 30.150745>,  <33.077267, 36.915062, 29.995575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.087852, 37.097847, 30.150745>,  <33.105495, 37.402489, 30.409363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087852, 37.097847, 30.150745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528308, -0.531497, 0.662119,
		-0.847907, 0.370776, -0.378919,
		-0.044104, -0.761601, -0.646543,
		33.074623, 36.869366, 29.956781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362984, 36.988102, 30.415928>,  <33.105495, 37.402489, 30.409363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362984, 36.988102, 30.415928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646008, 36.745647, 30.270628>,  <32.815823, 36.600174, 30.183449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646008, 36.745647, 30.270628>,  <32.362984, 36.988102, 30.415928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646008, 36.745647, 30.270628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244689, -0.692398, 0.678759,
		-0.662933, -0.391383, -0.638231,
		0.707564, -0.606140, -0.363246,
		32.858276, 36.563805, 30.161654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046391, 36.401287, 30.195042>,  <32.362984, 36.988102, 30.415928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046391, 36.401287, 30.195042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416481, 36.318436, 30.322197>,  <32.638535, 36.268726, 30.398489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416481, 36.318436, 30.322197>,  <32.046391, 36.401287, 30.195042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416481, 36.318436, 30.322197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375864, -0.614676, 0.693469,
		0.051762, -0.761099, -0.646567,
		0.925228, -0.207126, 0.317887,
		32.694050, 36.256298, 30.417562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878992, 35.784756, 30.596325>,  <32.046391, 36.401287, 30.195042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878992, 35.784756, 30.596325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272781, 35.812347, 30.660885>,  <32.509056, 35.828903, 30.699621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.272781, 35.812347, 30.660885>,  <31.878992, 35.784756, 30.596325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272781, 35.812347, 30.660885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022403, -0.862647, 0.505309,
		0.174088, -0.501081, -0.847710,
		0.984475, 0.068977, 0.161402,
		32.568123, 35.833042, 30.709305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304699, 35.248814, 30.248007>,  <31.878992, 35.784756, 30.596325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304699, 35.248814, 30.248007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460567, 35.395336, 30.585995>,  <32.554089, 35.483250, 30.788788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.460567, 35.395336, 30.585995>,  <32.304699, 35.248814, 30.248007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460567, 35.395336, 30.585995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132494, -0.885651, 0.445048,
		0.911374, -0.285375, -0.296579,
		0.389671, 0.366310, 0.844970,
		32.577469, 35.505230, 30.839485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700497, 34.807270, 30.627907>,  <32.304699, 35.248814, 30.248007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700497, 34.807270, 30.627907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559353, 35.023849, 30.933147>,  <32.474667, 35.153797, 31.116293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559353, 35.023849, 30.933147>,  <32.700497, 34.807270, 30.627907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559353, 35.023849, 30.933147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158555, -0.838369, 0.521533,
		0.922144, 0.063035, 0.381676,
		-0.352860, 0.541446, 0.763103,
		32.453495, 35.186283, 31.162079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322311, 34.671574, 30.743217>,  <32.700497, 34.807270, 30.627907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322311, 34.671574, 30.743217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137226, 34.893047, 31.020153>,  <33.026176, 35.025932, 31.186314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137226, 34.893047, 31.020153>,  <33.322311, 34.671574, 30.743217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137226, 34.893047, 31.020153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029213, -0.790068, 0.612322,
		0.886029, 0.263102, 0.381747,
		-0.462710, 0.553687, 0.692337,
		32.998413, 35.059155, 31.227854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662128, 34.559914, 31.413906>,  <33.322311, 34.671574, 30.743217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662128, 34.559914, 31.413906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294754, 34.696621, 31.493582>,  <33.074329, 34.778645, 31.541388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294754, 34.696621, 31.493582>,  <33.662128, 34.559914, 31.413906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294754, 34.696621, 31.493582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108023, -0.701089, 0.704844,
		0.380545, 0.625834, 0.680821,
		-0.918431, 0.341770, 0.199191,
		33.019226, 34.799152, 31.553339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593765, 34.667027, 32.178417>,  <33.662128, 34.559914, 31.413906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593765, 34.667027, 32.178417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223248, 34.638702, 32.030380>,  <33.000938, 34.621708, 31.941559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223248, 34.638702, 32.030380>,  <33.593765, 34.667027, 32.178417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223248, 34.638702, 32.030380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214781, -0.707775, 0.672996,
		-0.309598, 0.702879, 0.640398,
		-0.926293, -0.070813, -0.370091,
		32.945358, 34.617458, 31.919353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292713, 34.389664, 32.744808>,  <33.593765, 34.667027, 32.178417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292713, 34.389664, 32.744808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992420, 34.356476, 32.482658>,  <32.812244, 34.336563, 32.325367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.992420, 34.356476, 32.482658>,  <33.292713, 34.389664, 32.744808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992420, 34.356476, 32.482658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330316, -0.812010, 0.481177,
		-0.572096, 0.577716, 0.582194,
		-0.750731, -0.082971, -0.655377,
		32.767200, 34.331585, 32.286045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674042, 34.354675, 33.044380>,  <33.292713, 34.389664, 32.744808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674042, 34.354675, 33.044380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664459, 34.127419, 32.715347>,  <32.658710, 33.991062, 32.517929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664459, 34.127419, 32.715347>,  <32.674042, 34.354675, 33.044380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664459, 34.127419, 32.715347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231202, -0.797361, 0.557459,
		-0.972611, 0.203538, -0.112253,
		-0.023958, -0.568144, -0.822581,
		32.657272, 33.956974, 32.468575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005348, 34.725670, 33.107143>,  <32.674042, 34.354675, 33.044380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005348, 34.725670, 33.107143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055767, 34.927086, 33.449036>,  <32.086018, 35.047935, 33.654171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055767, 34.927086, 33.449036>,  <32.005348, 34.725670, 33.107143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055767, 34.927086, 33.449036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976733, -0.213687, -0.018152,
		0.173505, 0.837132, -0.518755,
		0.126047, 0.503536, 0.854730,
		32.093582, 35.078148, 33.705456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480915, 35.251759, 32.989876>,  <32.005348, 34.725670, 33.107143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480915, 35.251759, 32.989876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462330, 35.104317, 33.361244>,  <32.451180, 35.015850, 33.584064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462330, 35.104317, 33.361244>,  <32.480915, 35.251759, 32.989876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462330, 35.104317, 33.361244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937044, -0.338111, -0.087342,
		0.346105, 0.865916, 0.361110,
		-0.046465, -0.368605, 0.928424,
		32.448391, 34.993736, 33.639771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.056118, 35.544666, 33.290771>,  <32.480915, 35.251759, 32.989876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.056118, 35.544666, 33.290771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949974, 35.191460, 33.445618>,  <32.886288, 34.979534, 33.538525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.949974, 35.191460, 33.445618>,  <33.056118, 35.544666, 33.290771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949974, 35.191460, 33.445618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945364, -0.317170, -0.075436,
		0.189394, 0.345951, 0.918938,
		-0.265362, -0.883018, 0.387120,
		32.870365, 34.926556, 33.561752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217659, 35.510372, 34.021416>,  <33.056118, 35.544666, 33.290771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217659, 35.510372, 34.021416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234306, 35.190056, 33.782413>,  <33.244293, 34.997868, 33.639011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234306, 35.190056, 33.782413>,  <33.217659, 35.510372, 34.021416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234306, 35.190056, 33.782413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993971, 0.093897, -0.056611,
		0.101437, -0.591543, 0.799867,
		0.041617, -0.800788, -0.597501,
		33.246792, 34.949821, 33.603165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588985, 35.002975, 34.398472>,  <33.217659, 35.510372, 34.021416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588985, 35.002975, 34.398472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597904, 34.990128, 33.998779>,  <33.603256, 34.982418, 33.758965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597904, 34.990128, 33.998779>,  <33.588985, 35.002975, 34.398472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597904, 34.990128, 33.998779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999658, -0.012983, 0.022720,
		-0.013703, -0.999400, 0.031815,
		0.022293, -0.032116, -0.999236,
		33.604591, 34.980492, 33.699009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849125, 34.395233, 34.125748>,  <33.588985, 35.002975, 34.398472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849125, 34.395233, 34.125748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935585, 34.680229, 33.858727>,  <33.987461, 34.851227, 33.698513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935585, 34.680229, 33.858727>,  <33.849125, 34.395233, 34.125748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935585, 34.680229, 33.858727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975324, -0.189058, 0.114019,
		-0.044969, -0.675730, -0.735777,
		0.216150, 0.712493, -0.667557,
		34.000431, 34.893978, 33.658459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220490, 34.049877, 33.547535>,  <33.849125, 34.395233, 34.125748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220490, 34.049877, 33.547535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299900, 34.431690, 33.636490>,  <34.347546, 34.660778, 33.689861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299900, 34.431690, 33.636490>,  <34.220490, 34.049877, 33.547535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299900, 34.431690, 33.636490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979751, -0.187261, -0.070863,
		-0.025997, 0.231951, -0.972380,
		0.198525, 0.954533, 0.222386,
		34.359459, 34.718048, 33.703205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524715, 34.407993, 32.963066>,  <34.220490, 34.049877, 33.547535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524715, 34.407993, 32.963066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647308, 34.564579, 33.310127>,  <34.720863, 34.658531, 33.518364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647308, 34.564579, 33.310127>,  <34.524715, 34.407993, 32.963066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647308, 34.564579, 33.310127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946245, -0.224302, -0.233044,
		0.103387, 0.892436, -0.439168,
		0.306483, 0.391467, 0.867653,
		34.739254, 34.682018, 33.570423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028564, 34.986431, 32.963661>,  <34.524715, 34.407993, 32.963066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028564, 34.986431, 32.963661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055832, 34.716370, 33.257469>,  <35.072193, 34.554333, 33.433754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055832, 34.716370, 33.257469>,  <35.028564, 34.986431, 32.963661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055832, 34.716370, 33.257469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828224, -0.372175, -0.418963,
		0.556235, 0.636907, 0.533809,
		0.068170, -0.675156, 0.734518,
		35.076283, 34.513824, 33.477825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710693, 35.086792, 33.205956>,  <35.028564, 34.986431, 32.963661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710693, 35.086792, 33.205956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555069, 34.730877, 33.301373>,  <35.461697, 34.517326, 33.358624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555069, 34.730877, 33.301373>,  <35.710693, 35.086792, 33.205956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555069, 34.730877, 33.301373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691642, -0.453184, -0.562366,
		0.608493, -0.053806, 0.791733,
		-0.389059, -0.889792, 0.238545,
		35.438351, 34.463940, 33.372936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186119, 34.495934, 33.451481>,  <35.710693, 35.086792, 33.205956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186119, 34.495934, 33.451481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889896, 34.307037, 33.260246>,  <35.712162, 34.193699, 33.145504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889896, 34.307037, 33.260246>,  <36.186119, 34.495934, 33.451481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889896, 34.307037, 33.260246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665825, -0.419427, -0.617056,
		0.090876, -0.775286, 0.625039,
		-0.740553, -0.472242, -0.478089,
		35.667732, 34.165363, 33.116821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165627, 33.764008, 33.314857>,  <36.186119, 34.495934, 33.451481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165627, 33.764008, 33.314857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031971, 33.917683, 32.970589>,  <35.951778, 34.009888, 32.764027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031971, 33.917683, 32.970589>,  <36.165627, 33.764008, 33.314857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031971, 33.917683, 32.970589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837709, -0.297449, -0.458005,
		-0.431963, -0.874029, -0.222445,
		-0.334143, 0.384185, -0.860668,
		35.931728, 34.032940, 32.712387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071247, 33.278336, 32.777988>,  <36.165627, 33.764008, 33.314857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071247, 33.278336, 32.777988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185268, 33.643085, 32.659851>,  <36.253681, 33.861935, 32.588966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185268, 33.643085, 32.659851>,  <36.071247, 33.278336, 32.777988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185268, 33.643085, 32.659851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776078, -0.400404, -0.487215,
		-0.562538, -0.090331, -0.821822,
		0.285051, 0.911875, -0.295347,
		36.270782, 33.916649, 32.571247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208294, 33.266052, 32.062939>,  <36.071247, 33.278336, 32.777988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208294, 33.266052, 32.062939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422905, 33.566193, 32.217396>,  <36.551670, 33.746277, 32.310070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422905, 33.566193, 32.217396>,  <36.208294, 33.266052, 32.062939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422905, 33.566193, 32.217396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786665, -0.279093, -0.550696,
		-0.305445, 0.599232, -0.740017,
		0.536528, 0.750352, 0.386147,
		36.583862, 33.791298, 32.333241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455090, 33.557892, 31.472666>,  <36.208294, 33.266052, 32.062939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455090, 33.557892, 31.472666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693439, 33.563744, 31.793844>,  <36.836449, 33.567257, 31.986551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693439, 33.563744, 31.793844>,  <36.455090, 33.557892, 31.472666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693439, 33.563744, 31.793844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789697, -0.192437, -0.582535,
		0.145991, 0.981200, -0.126224,
		0.595874, 0.014634, 0.802945,
		36.872200, 33.568134, 32.034729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885365, 34.175602, 31.421545>,  <36.455090, 33.557892, 31.472666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885365, 34.175602, 31.421545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037167, 33.874546, 31.636770>,  <37.128246, 33.693913, 31.765905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037167, 33.874546, 31.636770>,  <36.885365, 34.175602, 31.421545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037167, 33.874546, 31.636770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733551, -0.109632, -0.670734,
		0.563811, 0.649239, 0.510495,
		0.379500, -0.752641, 0.538062,
		37.151016, 33.648754, 31.798189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687195, 34.163830, 31.366217>,  <36.885365, 34.175602, 31.421545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687195, 34.163830, 31.366217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559662, 33.791763, 31.439037>,  <37.483143, 33.568523, 31.482729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559662, 33.791763, 31.439037>,  <37.687195, 34.163830, 31.366217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559662, 33.791763, 31.439037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619752, -0.349923, -0.702468,
		0.717113, -0.111146, 0.688038,
		-0.318836, -0.930162, 0.182051,
		37.464012, 33.512714, 31.493652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189308, 33.731785, 31.537529>,  <37.687195, 34.163830, 31.366217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189308, 33.731785, 31.537529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900494, 33.523724, 31.355051>,  <37.727207, 33.398888, 31.245565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900494, 33.523724, 31.355051>,  <38.189308, 33.731785, 31.537529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900494, 33.523724, 31.355051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662931, -0.331467, -0.671307,
		0.197967, -0.787130, 0.584153,
		-0.722033, -0.520150, -0.456193,
		37.683884, 33.367680, 31.218193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445835, 33.056911, 31.365351>,  <38.189308, 33.731785, 31.537529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445835, 33.056911, 31.365351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154873, 33.156094, 31.109415>,  <37.980293, 33.215603, 30.955853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.154873, 33.156094, 31.109415>,  <38.445835, 33.056911, 31.365351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154873, 33.156094, 31.109415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572361, -0.295111, -0.765057,
		-0.378522, -0.922729, 0.072748,
		-0.727409, 0.247953, -0.639840,
		37.936649, 33.230480, 30.917463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712677, 32.992592, 30.683687>,  <38.445835, 33.056911, 31.365351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712677, 32.992592, 30.683687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363369, 33.144779, 30.561939>,  <38.153786, 33.236092, 30.488890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363369, 33.144779, 30.561939>,  <38.712677, 32.992592, 30.683687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363369, 33.144779, 30.561939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306947, -0.055550, -0.950104,
		-0.378396, -0.923122, -0.068275,
		-0.873269, 0.380472, -0.304370,
		38.101387, 33.258923, 30.470629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323067, 32.495838, 30.934078>,  <38.712677, 32.992592, 30.683687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323067, 32.495838, 30.934078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459091, 32.515709, 30.558441>,  <39.540703, 32.527634, 30.333059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.459091, 32.515709, 30.558441>,  <39.323067, 32.495838, 30.934078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459091, 32.515709, 30.558441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782862, 0.538337, 0.311962,
		0.521046, -0.841264, 0.144173,
		0.340057, 0.049679, -0.939092,
		39.561108, 32.530613, 30.276714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989830, 32.158875, 30.940325>,  <39.323067, 32.495838, 30.934078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989830, 32.158875, 30.940325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004005, 32.425941, 30.642878>,  <40.012508, 32.586182, 30.464409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004005, 32.425941, 30.642878>,  <39.989830, 32.158875, 30.940325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004005, 32.425941, 30.642878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676000, 0.532015, 0.509888,
		0.736050, -0.520753, -0.432489,
		0.035435, 0.667665, -0.743618,
		40.014637, 32.626240, 30.419792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702248, 32.188244, 30.691685>,  <39.989830, 32.158875, 30.940325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702248, 32.188244, 30.691685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495415, 32.530445, 30.680796>,  <40.371315, 32.735767, 30.674261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495415, 32.530445, 30.680796>,  <40.702248, 32.188244, 30.691685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495415, 32.530445, 30.680796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764454, 0.475887, 0.434905,
		0.385019, 0.204068, -0.900065,
		-0.517079, 0.855505, -0.027225,
		40.340290, 32.787098, 30.672628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076672, 32.705364, 30.424122>,  <40.702248, 32.188244, 30.691685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076672, 32.705364, 30.424122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799168, 32.908020, 30.628870>,  <40.632664, 33.029613, 30.751719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799168, 32.908020, 30.628870>,  <41.076672, 32.705364, 30.424122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799168, 32.908020, 30.628870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719087, 0.526811, 0.453192,
		-0.040056, 0.682488, -0.729798,
		-0.693764, 0.506636, 0.511870,
		40.591038, 33.060009, 30.782431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335361, 33.288864, 30.347128>,  <41.076672, 32.705364, 30.424122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335361, 33.288864, 30.347128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120750, 33.325108, 30.682730>,  <40.991982, 33.346851, 30.884090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120750, 33.325108, 30.682730>,  <41.335361, 33.288864, 30.347128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120750, 33.325108, 30.682730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697316, 0.607547, 0.380312,
		-0.475275, 0.789099, -0.389149,
		-0.536530, 0.090607, 0.839003,
		40.959793, 33.352291, 30.934431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283573, 33.930435, 30.436275>,  <41.335361, 33.288864, 30.347128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283573, 33.930435, 30.436275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193333, 33.802490, 30.804361>,  <41.139191, 33.725723, 31.025213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.193333, 33.802490, 30.804361>,  <41.283573, 33.930435, 30.436275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193333, 33.802490, 30.804361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690323, 0.614017, 0.382671,
		-0.687430, 0.721573, 0.082290,
		-0.225598, -0.319866, 0.920213,
		41.125652, 33.706532, 31.080425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161457, 34.516991, 30.826857>,  <41.283573, 33.930435, 30.436275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161457, 34.516991, 30.826857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243858, 34.220249, 31.082109>,  <41.293301, 34.042206, 31.235262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243858, 34.220249, 31.082109>,  <41.161457, 34.516991, 30.826857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243858, 34.220249, 31.082109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711478, 0.561271, 0.422816,
		-0.671833, 0.366915, 0.643439,
		0.206006, -0.741855, 0.638132,
		41.305660, 33.997692, 31.273550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907673, 34.774601, 31.454554>,  <41.161457, 34.516991, 30.826857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.907673, 34.774601, 31.454554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205780, 34.508137, 31.443190>,  <41.384644, 34.348259, 31.436371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205780, 34.508137, 31.443190>,  <40.907673, 34.774601, 31.454554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205780, 34.508137, 31.443190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636593, 0.698231, 0.327447,
		-0.198295, -0.262122, 0.944442,
		0.745270, -0.666157, -0.028409,
		41.429359, 34.308289, 31.434668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099056, 34.744431, 32.120033>,  <40.907673, 34.774601, 31.454554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099056, 34.744431, 32.120033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360954, 34.674240, 31.825953>,  <41.518093, 34.632126, 31.649506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.360954, 34.674240, 31.825953>,  <41.099056, 34.744431, 32.120033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360954, 34.674240, 31.825953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700481, 0.506286, 0.502992,
		0.283957, -0.844324, 0.454406,
		0.654747, -0.175475, -0.735197,
		41.557377, 34.621597, 31.605392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799309, 34.383045, 32.241360>,  <41.099056, 34.744431, 32.120033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799309, 34.383045, 32.241360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869579, 34.631638, 31.935968>,  <41.911743, 34.780792, 31.752733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.869579, 34.631638, 31.935968>,  <41.799309, 34.383045, 32.241360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869579, 34.631638, 31.935968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765852, 0.401009, 0.502656,
		0.618553, -0.673016, -0.405514,
		0.175680, 0.621483, -0.763476,
		41.922283, 34.818081, 31.706926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350971, 33.804134, 32.360245>,  <41.799309, 34.383045, 32.241360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350971, 33.804134, 32.360245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513126, 33.440063, 32.326191>,  <42.610420, 33.221622, 32.305759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513126, 33.440063, 32.326191>,  <42.350971, 33.804134, 32.360245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513126, 33.440063, 32.326191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860075, -0.411303, 0.301829,
		-0.309733, -0.049134, -0.949553,
		0.405384, -0.910173, -0.085135,
		42.634743, 33.167011, 32.300652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767288, 34.244762, 33.025471>,  <42.350971, 33.804134, 32.360245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767288, 34.244762, 33.025471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002354, 34.073864, 33.300316>,  <43.143391, 33.971325, 33.465221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.002354, 34.073864, 33.300316>,  <42.767288, 34.244762, 33.025471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002354, 34.073864, 33.300316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788212, 0.494051, -0.366928,
		-0.182700, 0.757216, 0.627093,
		0.587659, -0.427244, 0.687109,
		43.178650, 33.945690, 33.506447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.081314, 34.749626, 33.381367>,  <42.767288, 34.244762, 33.025471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.081314, 34.749626, 33.381367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331532, 34.438362, 33.403881>,  <43.481663, 34.251606, 33.417389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331532, 34.438362, 33.403881>,  <43.081314, 34.749626, 33.381367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331532, 34.438362, 33.403881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768660, 0.602333, -0.215306,
		0.133638, 0.177949, 0.974923,
		0.625542, -0.778158, 0.056287,
		43.519196, 34.204914, 33.420769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627586, 34.999508, 33.867508>,  <43.081314, 34.749626, 33.381367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627586, 34.999508, 33.867508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711868, 34.710239, 33.604408>,  <43.762440, 34.536678, 33.446548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.711868, 34.710239, 33.604408>,  <43.627586, 34.999508, 33.867508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711868, 34.710239, 33.604408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669716, 0.596932, -0.441762,
		0.712098, -0.347421, 0.610095,
		0.210707, -0.723168, -0.657747,
		43.775082, 34.493290, 33.407085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091064, 34.544361, 34.303230>,  <43.627586, 34.999508, 33.867508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091064, 34.544361, 34.303230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392365, 34.780113, 34.186447>,  <44.573147, 34.921566, 34.116379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392365, 34.780113, 34.186447>,  <44.091064, 34.544361, 34.303230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392365, 34.780113, 34.186447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106216, 0.329055, 0.938318,
		0.649098, -0.737801, 0.185260,
		0.753253, 0.589383, -0.291955,
		44.618340, 34.956928, 34.098862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763599, 34.368073, 34.682362>,  <44.091064, 34.544361, 34.303230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763599, 34.368073, 34.682362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713242, 34.747097, 34.564873>,  <44.683025, 34.974514, 34.494381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.713242, 34.747097, 34.564873>,  <44.763599, 34.368073, 34.682362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713242, 34.747097, 34.564873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025870, 0.299113, 0.953867,
		0.991706, 0.112487, -0.062170,
		-0.125893, 0.947564, -0.293723,
		44.675472, 35.031364, 34.476757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925819, 34.492672, 35.449280>,  <44.763599, 34.368073, 34.682362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925819, 34.492672, 35.449280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058975, 34.809929, 35.245277>,  <45.138870, 35.000282, 35.122875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.058975, 34.809929, 35.245277>,  <44.925819, 34.492672, 35.449280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058975, 34.809929, 35.245277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721354, 0.134140, 0.679451,
		0.607315, -0.594079, -0.527483,
		0.332891, 0.793143, -0.510007,
		45.158844, 35.047871, 35.092274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.611786, 34.653397, 35.430347>,  <44.925819, 34.492672, 35.449280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.611786, 34.653397, 35.430347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.823975, 34.380123, 35.229607>,  <45.951286, 34.216160, 35.109161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.823975, 34.380123, 35.229607>,  <45.611786, 34.653397, 35.430347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.823975, 34.380123, 35.229607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838001, 0.511937, 0.188875,
		0.127880, -0.520746, 0.844079,
		0.530472, -0.683186, -0.501853,
		45.983116, 34.175167, 35.079052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.104183, 34.391205, 35.711727>,  <45.611786, 34.653397, 35.430347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.104183, 34.391205, 35.711727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258335, 34.303154, 35.353279>,  <46.350826, 34.250324, 35.138210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258335, 34.303154, 35.353279>,  <46.104183, 34.391205, 35.711727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.258335, 34.303154, 35.353279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806937, 0.551444, 0.211570,
		0.447587, -0.804645, 0.390143,
		0.385381, -0.220125, -0.896118,
		46.373951, 34.237118, 35.084442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.804771, 34.496674, 35.593960>,  <46.104183, 34.391205, 35.711727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.804771, 34.496674, 35.593960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792065, 34.507549, 35.194309>,  <46.784439, 34.514076, 34.954517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.792065, 34.507549, 35.194309>,  <46.804771, 34.496674, 35.593960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.792065, 34.507549, 35.194309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739100, 0.673575, -0.005169,
		0.672845, -0.738618, -0.041496,
		-0.031769, 0.027192, -0.999125,
		46.782536, 34.515705, 34.894573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.485413, 34.276505, 35.293274>,  <46.804771, 34.496674, 35.593960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.485413, 34.276505, 35.293274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.284622, 34.534737, 35.063057>,  <47.164150, 34.689674, 34.924927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.284622, 34.534737, 35.063057>,  <47.485413, 34.276505, 35.293274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.284622, 34.534737, 35.063057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742672, 0.662783, 0.095695,
		0.443239, -0.379403, -0.812153,
		-0.501974, 0.645579, -0.575543,
		47.134029, 34.728409, 34.890392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.021477, 34.662811, 34.786167>,  <47.485413, 34.276505, 35.293274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.021477, 34.662811, 34.786167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695919, 34.869854, 34.891743>,  <47.500584, 34.994080, 34.955086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.695919, 34.869854, 34.891743>,  <48.021477, 34.662811, 34.786167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.695919, 34.869854, 34.891743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581015, 0.723966, 0.371879,
		0.001407, 0.456020, -0.889968,
		-0.813892, 0.517608, 0.263936,
		47.451752, 35.025135, 34.970924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.520382, 34.206787, 18.432692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.712879, 33.914253, 18.625999>,  <36.828377, 33.738731, 18.741983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.712879, 33.914253, 18.625999>,  <36.520382, 34.206787, 18.432692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712879, 33.914253, 18.625999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190186, 0.451066, 0.871991,
		-0.855707, -0.511551, 0.077982,
		0.481243, -0.731338, 0.483270,
		36.857254, 33.694851, 18.770981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150536, 33.982754, 19.031246>,  <36.520382, 34.206787, 18.432692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150536, 33.982754, 19.031246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511112, 33.846722, 19.138395>,  <36.727459, 33.765102, 19.202684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.511112, 33.846722, 19.138395>,  <36.150536, 33.982754, 19.031246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.511112, 33.846722, 19.138395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097454, 0.443476, 0.890973,
		-0.421795, -0.829262, 0.366624,
		0.901439, -0.340079, 0.267871,
		36.781544, 33.744698, 19.218756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092197, 33.511482, 19.659037>,  <36.150536, 33.982754, 19.031246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092197, 33.511482, 19.659037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.470757, 33.640530, 19.665415>,  <36.697891, 33.717957, 19.669241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.470757, 33.640530, 19.665415>,  <36.092197, 33.511482, 19.659037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470757, 33.640530, 19.665415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085281, 0.201952, 0.975676,
		0.311555, -0.924733, 0.218639,
		0.946394, 0.322622, 0.015943,
		36.754673, 33.737316, 19.670198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396465, 33.222588, 20.274275>,  <36.092197, 33.511482, 19.659037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396465, 33.222588, 20.274275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645470, 33.521812, 20.182281>,  <36.794872, 33.701347, 20.127085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.645470, 33.521812, 20.182281>,  <36.396465, 33.222588, 20.274275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645470, 33.521812, 20.182281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048413, 0.256494, 0.965333,
		0.781116, -0.612060, 0.123453,
		0.622506, 0.748060, -0.229983,
		36.832222, 33.746231, 20.113287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770077, 33.298927, 20.841402>,  <36.396465, 33.222588, 20.274275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770077, 33.298927, 20.841402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839935, 33.647026, 20.657156>,  <36.881851, 33.855885, 20.546608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839935, 33.647026, 20.657156>,  <36.770077, 33.298927, 20.841402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839935, 33.647026, 20.657156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079661, 0.453784, 0.887544,
		0.981404, -0.191697, 0.009925,
		0.174644, 0.870249, -0.460616,
		36.892330, 33.908100, 20.518970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468571, 33.598682, 21.126947>,  <36.770077, 33.298927, 20.841402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468571, 33.598682, 21.126947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223572, 33.881603, 20.985769>,  <37.076572, 34.051353, 20.901062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.223572, 33.881603, 20.985769>,  <37.468571, 33.598682, 21.126947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223572, 33.881603, 20.985769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136854, 0.534641, 0.833924,
		0.778533, 0.462477, -0.424265,
		-0.612501, 0.707300, -0.352944,
		37.039822, 34.093792, 20.879887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652695, 34.260391, 21.453505>,  <37.468571, 33.598682, 21.126947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652695, 34.260391, 21.453505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287453, 34.352047, 21.318602>,  <37.068310, 34.407040, 21.237659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.287453, 34.352047, 21.318602>,  <37.652695, 34.260391, 21.453505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287453, 34.352047, 21.318602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172066, 0.533339, 0.828217,
		0.369647, 0.814276, -0.447566,
		-0.913101, 0.229137, -0.337256,
		37.013523, 34.420788, 21.217424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551800, 34.977554, 21.735481>,  <37.652695, 34.260391, 21.453505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551800, 34.977554, 21.735481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.191986, 34.842793, 21.624247>,  <36.976097, 34.761936, 21.557507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.191986, 34.842793, 21.624247>,  <37.551800, 34.977554, 21.735481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191986, 34.842793, 21.624247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416296, 0.468151, 0.779444,
		-0.132410, 0.816904, -0.561369,
		-0.899536, -0.336902, -0.278086,
		36.922127, 34.741722, 21.540821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121700, 35.544994, 21.727531>,  <37.551800, 34.977554, 21.735481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121700, 35.544994, 21.727531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901726, 35.218346, 21.797604>,  <36.769741, 35.022354, 21.839647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.901726, 35.218346, 21.797604>,  <37.121700, 35.544994, 21.727531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901726, 35.218346, 21.797604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412967, 0.448182, 0.792837,
		-0.725965, 0.363668, -0.583713,
		-0.549939, -0.816626, 0.175181,
		36.736744, 34.973358, 21.850159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460007, 35.706356, 21.611420>,  <37.121700, 35.544994, 21.727531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460007, 35.706356, 21.611420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.465027, 35.384396, 21.848730>,  <36.468037, 35.191219, 21.991116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.465027, 35.384396, 21.848730>,  <36.460007, 35.706356, 21.611420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465027, 35.384396, 21.848730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411912, 0.536479, 0.736558,
		-0.911137, -0.253620, -0.324817,
		0.012548, -0.804902, 0.593275,
		36.468792, 35.142925, 22.026712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853554, 35.782299, 21.967812>,  <36.460007, 35.706356, 21.611420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853554, 35.782299, 21.967812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.041054, 35.484035, 22.157236>,  <36.153553, 35.305077, 22.270891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.041054, 35.484035, 22.157236>,  <35.853554, 35.782299, 21.967812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041054, 35.484035, 22.157236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278789, 0.383824, 0.880316,
		-0.838184, -0.544670, -0.027966,
		0.468748, -0.745663, 0.473563,
		36.181679, 35.260338, 22.299305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352875, 35.603718, 22.507166>,  <35.853554, 35.782299, 21.967812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352875, 35.603718, 22.507166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715824, 35.481548, 22.622675>,  <35.933594, 35.408249, 22.691980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715824, 35.481548, 22.622675>,  <35.352875, 35.603718, 22.507166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715824, 35.481548, 22.622675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121880, 0.466320, 0.876180,
		-0.402263, -0.830219, 0.385902,
		0.907375, -0.305421, 0.288770,
		35.988037, 35.389923, 22.709307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237907, 35.363201, 23.201910>,  <35.352875, 35.603718, 22.507166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237907, 35.363201, 23.201910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630650, 35.438095, 23.189829>,  <35.866295, 35.483032, 23.182581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.630650, 35.438095, 23.189829>,  <35.237907, 35.363201, 23.201910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630650, 35.438095, 23.189829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073927, 0.524492, 0.848200,
		0.174653, -0.830573, 0.528814,
		0.981851, 0.187234, -0.030203,
		35.925205, 35.494267, 23.180767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577698, 35.194672, 23.924873>,  <35.237907, 35.363201, 23.201910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577698, 35.194672, 23.924873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811787, 35.450981, 23.726109>,  <35.952240, 35.604767, 23.606850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811787, 35.450981, 23.726109>,  <35.577698, 35.194672, 23.924873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811787, 35.450981, 23.726109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075001, 0.652957, 0.753672,
		0.807397, -0.403796, 0.430184,
		0.585222, 0.640777, -0.496911,
		35.987354, 35.643215, 23.577036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113098, 35.340523, 24.353104>,  <35.577698, 35.194672, 23.924873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113098, 35.340523, 24.353104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103298, 35.658745, 24.110947>,  <36.097420, 35.849678, 23.965652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103298, 35.658745, 24.110947>,  <36.113098, 35.340523, 24.353104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103298, 35.658745, 24.110947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010682, 0.605746, 0.795587,
		0.999643, 0.013026, -0.023339,
		-0.024501, 0.795552, -0.605390,
		36.095947, 35.897411, 23.929329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542355, 35.804836, 24.728439>,  <36.113098, 35.340523, 24.353104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542355, 35.804836, 24.728439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354240, 36.044312, 24.469086>,  <36.241371, 36.187996, 24.313473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.354240, 36.044312, 24.469086>,  <36.542355, 35.804836, 24.728439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354240, 36.044312, 24.469086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076461, 0.704297, 0.705776,
		0.879196, 0.381492, -0.285444,
		-0.470285, 0.598691, -0.648384,
		36.213154, 36.223919, 24.274570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872437, 36.608395, 24.826496>,  <36.542355, 35.804836, 24.728439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872437, 36.608395, 24.826496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521549, 36.643955, 24.637781>,  <36.311016, 36.665291, 24.524551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.521549, 36.643955, 24.637781>,  <36.872437, 36.608395, 24.826496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521549, 36.643955, 24.637781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249970, 0.754418, 0.606933,
		0.409881, 0.650346, -0.639568,
		-0.877219, 0.088898, -0.471789,
		36.258385, 36.670624, 24.496244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859970, 37.311577, 24.725361>,  <36.872437, 36.608395, 24.826496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859970, 37.311577, 24.725361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.487469, 37.165993, 24.718365>,  <36.263969, 37.078644, 24.714167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.487469, 37.165993, 24.718365>,  <36.859970, 37.311577, 24.725361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487469, 37.165993, 24.718365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273632, 0.666823, 0.693162,
		-0.240618, 0.650294, -0.720570,
		-0.931251, -0.363958, -0.017492,
		36.208092, 37.056805, 24.713118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450710, 37.827873, 24.356430>,  <36.859970, 37.311577, 24.725361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450710, 37.827873, 24.356430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193653, 37.598206, 24.559343>,  <36.039417, 37.460407, 24.681091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.193653, 37.598206, 24.559343>,  <36.450710, 37.827873, 24.356430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193653, 37.598206, 24.559343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310445, 0.800466, 0.512717,
		-0.700449, 0.172012, -0.692664,
		-0.642647, -0.574165, 0.507285,
		36.000858, 37.425957, 24.711529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845642, 38.234806, 24.375347>,  <36.450710, 37.827873, 24.356430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845642, 38.234806, 24.375347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769253, 37.975231, 24.669941>,  <35.723419, 37.819485, 24.846697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.769253, 37.975231, 24.669941>,  <35.845642, 38.234806, 24.375347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769253, 37.975231, 24.669941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366022, 0.743256, 0.559999,
		-0.910801, -0.162625, -0.379467,
		-0.190971, -0.648940, 0.736483,
		35.711960, 37.780548, 24.890886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384159, 38.636898, 24.803288>,  <35.845642, 38.234806, 24.375347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384159, 38.636898, 24.803288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.460602, 38.300243, 25.005327>,  <35.506466, 38.098251, 25.126551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.460602, 38.300243, 25.005327>,  <35.384159, 38.636898, 24.803288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460602, 38.300243, 25.005327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598355, 0.308034, 0.739653,
		-0.778107, -0.443579, -0.444732,
		0.191102, -0.841637, 0.505101,
		35.517933, 38.047752, 25.156858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731350, 38.265640, 24.888079>,  <35.384159, 38.636898, 24.803288>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731350, 38.265640, 24.888079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.011086, 38.232868, 25.172110>,  <35.178928, 38.213203, 25.342527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.011086, 38.232868, 25.172110>,  <34.731350, 38.265640, 24.888079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.011086, 38.232868, 25.172110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612233, 0.444046, 0.654212,
		-0.368906, -0.892250, 0.260380,
		0.699342, -0.081930, 0.710076,
		35.220886, 38.208290, 25.385132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334774, 38.968887, 25.109241>,  <34.731350, 38.265640, 24.888079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334774, 38.968887, 25.109241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.056442, 39.203655, 24.943663>,  <33.889442, 39.344517, 24.844315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.056442, 39.203655, 24.943663>,  <34.334774, 38.968887, 25.109241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056442, 39.203655, 24.943663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012009, -0.585787, -0.810377,
		-0.718110, -0.558910, 0.414654,
		-0.695826, 0.586919, -0.413947,
		33.847694, 39.379730, 24.819479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780293, 38.478058, 24.735542>,  <34.334774, 38.968887, 25.109241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780293, 38.478058, 24.735542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.743084, 38.836655, 24.562271>,  <33.720760, 39.051815, 24.458307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.743084, 38.836655, 24.562271>,  <33.780293, 38.478058, 24.735542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743084, 38.836655, 24.562271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011701, -0.434052, -0.900812,
		-0.995595, -0.088862, 0.029885,
		-0.093020, 0.896494, -0.433180,
		33.715179, 39.105602, 24.432318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306068, 38.401974, 24.233307>,  <33.780293, 38.478058, 24.735542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306068, 38.401974, 24.233307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.485401, 38.735600, 24.104729>,  <33.593002, 38.935776, 24.027582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.485401, 38.735600, 24.104729>,  <33.306068, 38.401974, 24.233307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485401, 38.735600, 24.104729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024080, -0.348215, -0.937105,
		-0.893541, 0.427878, -0.136032,
		0.448335, 0.834067, -0.321448,
		33.619900, 38.985821, 24.008295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905518, 38.793530, 23.656630>,  <33.306068, 38.401974, 24.233307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905518, 38.793530, 23.656630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.281116, 38.918011, 23.598053>,  <33.506474, 38.992699, 23.562906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.281116, 38.918011, 23.598053>,  <32.905518, 38.793530, 23.656630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.281116, 38.918011, 23.598053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027804, -0.355706, -0.934184,
		-0.342809, 0.881265, -0.325353,
		0.938993, 0.311201, -0.146442,
		33.562813, 39.011372, 23.554121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909546, 39.019707, 23.014593>,  <32.905518, 38.793530, 23.656630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909546, 39.019707, 23.014593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.299820, 38.971741, 23.087982>,  <33.533985, 38.942963, 23.132015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.299820, 38.971741, 23.087982>,  <32.909546, 39.019707, 23.014593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299820, 38.971741, 23.087982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146461, -0.266077, -0.952760,
		0.163069, 0.956464, -0.242044,
		0.975683, -0.119916, 0.183473,
		33.592525, 38.935764, 23.143024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252594, 39.404007, 22.546593>,  <32.909546, 39.019707, 23.014593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252594, 39.404007, 22.546593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481350, 39.107662, 22.687481>,  <33.618603, 38.929855, 22.772015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481350, 39.107662, 22.687481>,  <33.252594, 39.404007, 22.546593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481350, 39.107662, 22.687481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268247, -0.236867, -0.933776,
		0.775229, 0.628503, 0.063272,
		0.571894, -0.740863, 0.352220,
		33.652920, 38.885403, 22.793146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872475, 39.463833, 22.228849>,  <33.252594, 39.404007, 22.546593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872475, 39.463833, 22.228849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872158, 39.081829, 22.347481>,  <33.871967, 38.852627, 22.418659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872158, 39.081829, 22.347481>,  <33.872475, 39.463833, 22.228849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872158, 39.081829, 22.347481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413564, -0.270339, -0.869414,
		0.910475, 0.121963, 0.395172,
		-0.000794, -0.955009, 0.296576,
		33.871922, 38.795326, 22.436453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447781, 39.229942, 21.896183>,  <33.872475, 39.463833, 22.228849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447781, 39.229942, 21.896183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.272865, 38.880310, 21.980812>,  <34.167915, 38.670532, 22.031590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.272865, 38.880310, 21.980812>,  <34.447781, 39.229942, 21.896183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272865, 38.880310, 21.980812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280845, -0.356219, -0.891198,
		0.854345, -0.330292, 0.401251,
		-0.437289, -0.874080, 0.211573,
		34.141678, 38.618088, 22.044283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863979, 38.719952, 21.602837>,  <34.447781, 39.229942, 21.896183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863979, 38.719952, 21.602837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.531940, 38.511444, 21.682047>,  <34.332718, 38.386341, 21.729574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.531940, 38.511444, 21.682047>,  <34.863979, 38.719952, 21.602837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531940, 38.511444, 21.682047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145276, -0.545040, -0.825727,
		0.538356, -0.656669, 0.528166,
		-0.830101, -0.521265, 0.198027,
		34.282909, 38.355064, 21.741455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031189, 38.124577, 21.317610>,  <34.863979, 38.719952, 21.602837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031189, 38.124577, 21.317610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635498, 38.090160, 21.364977>,  <34.398083, 38.069511, 21.393396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635498, 38.090160, 21.364977>,  <35.031189, 38.124577, 21.317610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635498, 38.090160, 21.364977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020954, -0.883914, -0.467180,
		0.144865, -0.459667, 0.876197,
		-0.989230, -0.086038, 0.118416,
		34.338730, 38.064350, 21.400501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839077, 37.390060, 21.642630>,  <35.031189, 38.124577, 21.317610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839077, 37.390060, 21.642630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.543037, 37.533241, 21.414902>,  <34.365414, 37.619148, 21.278265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.543037, 37.533241, 21.414902>,  <34.839077, 37.390060, 21.642630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543037, 37.533241, 21.414902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029167, -0.828692, -0.558944,
		-0.671864, -0.430279, 0.602875,
		-0.740100, 0.357950, -0.569319,
		34.321007, 37.640625, 21.244106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430428, 36.816910, 21.528456>,  <34.839077, 37.390060, 21.642630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430428, 36.816910, 21.528456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335419, 37.073441, 21.236626>,  <34.278412, 37.227360, 21.061527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335419, 37.073441, 21.236626>,  <34.430428, 36.816910, 21.528456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335419, 37.073441, 21.236626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043626, -0.757354, -0.651545,
		-0.970402, -0.122928, 0.207867,
		-0.237522, 0.641329, -0.729575,
		34.264160, 37.265839, 21.017754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946629, 36.509289, 21.121593>,  <34.430428, 36.816910, 21.528456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946629, 36.509289, 21.121593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.132656, 36.790939, 20.906963>,  <34.244274, 36.959930, 20.778185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.132656, 36.790939, 20.906963>,  <33.946629, 36.509289, 21.121593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132656, 36.790939, 20.906963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048083, -0.625309, -0.778895,
		-0.883965, 0.336443, -0.324671,
		0.465073, 0.704127, -0.536574,
		34.272179, 37.002178, 20.745991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566250, 36.587231, 20.440409>,  <33.946629, 36.509289, 21.121593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566250, 36.587231, 20.440409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931934, 36.730896, 20.365332>,  <34.151344, 36.817093, 20.320286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.931934, 36.730896, 20.365332>,  <33.566250, 36.587231, 20.440409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931934, 36.730896, 20.365332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028890, -0.404214, -0.914208,
		-0.404214, 0.841198, -0.359160,
		0.914208, 0.359160, -0.187692,
		34.206196, 36.838642, 20.309025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489853, 36.729809, 19.717829>,  <33.566250, 36.587231, 20.440409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489853, 36.729809, 19.717829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.884975, 36.727345, 19.780058>,  <34.122047, 36.725864, 19.817396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.884975, 36.727345, 19.780058>,  <33.489853, 36.729809, 19.717829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884975, 36.727345, 19.780058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135613, -0.456835, -0.879153,
		0.076489, 0.889530, -0.450429,
		0.987805, -0.006162, 0.155575,
		34.181316, 36.725494, 19.826731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745811, 36.863346, 19.163221>,  <33.489853, 36.729809, 19.717829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745811, 36.863346, 19.163221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.047035, 36.671349, 19.343225>,  <34.227768, 36.556149, 19.451227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.047035, 36.671349, 19.343225>,  <33.745811, 36.863346, 19.163221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047035, 36.671349, 19.343225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181690, -0.505650, -0.843390,
		0.632373, 0.716882, -0.293572,
		0.753056, -0.479998, 0.450010,
		34.272953, 36.527348, 19.478228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241676, 36.760521, 18.683399>,  <33.745811, 36.863346, 19.163221>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241676, 36.760521, 18.683399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335499, 36.492226, 18.964849>,  <34.391792, 36.331249, 19.133720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.335499, 36.492226, 18.964849>,  <34.241676, 36.760521, 18.683399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335499, 36.492226, 18.964849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238663, -0.661931, -0.710554,
		0.942350, 0.334594, 0.004822,
		0.234555, -0.670742, 0.703626,
		34.405865, 36.291004, 19.175938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750740, 36.508930, 18.334978>,  <34.241676, 36.760521, 18.683399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750740, 36.508930, 18.334978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.631912, 36.244282, 18.610371>,  <34.560616, 36.085491, 18.775606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.631912, 36.244282, 18.610371>,  <34.750740, 36.508930, 18.334978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631912, 36.244282, 18.610371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180256, -0.746925, -0.640008,
		0.937687, -0.066024, 0.341151,
		-0.297070, -0.661622, 0.688480,
		34.542789, 36.045795, 18.816916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.201408, 35.952477, 18.229195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.913509, 35.799099, 18.460688>,  <34.740768, 35.707073, 18.599583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.913509, 35.799099, 18.460688>,  <35.201408, 35.952477, 18.229195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913509, 35.799099, 18.460688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154236, -0.901113, -0.405223,
		0.676884, -0.202398, 0.707717,
		-0.719749, -0.383445, 0.578732,
		34.697586, 35.684067, 18.634308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595234, 35.431141, 18.593971>,  <35.201408, 35.952477, 18.229195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595234, 35.431141, 18.593971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206474, 35.340149, 18.569733>,  <34.973221, 35.285553, 18.555189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.206474, 35.340149, 18.569733>,  <35.595234, 35.431141, 18.593971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206474, 35.340149, 18.569733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219972, -0.785875, -0.577938,
		0.083849, -0.575024, 0.813828,
		-0.971896, -0.227479, -0.060594,
		34.914906, 35.271904, 18.551554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549862, 34.758350, 18.824532>,  <35.595234, 35.431141, 18.593971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549862, 34.758350, 18.824532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220695, 34.833755, 18.610140>,  <35.023197, 34.878998, 18.481504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.220695, 34.833755, 18.610140>,  <35.549862, 34.758350, 18.824532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220695, 34.833755, 18.610140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131126, -0.854868, -0.502003,
		-0.552825, -0.483387, 0.678765,
		-0.822915, 0.188516, -0.535977,
		34.973820, 34.890312, 18.449347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144199, 34.131649, 18.744202>,  <35.549862, 34.758350, 18.824532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144199, 34.131649, 18.744202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993164, 34.344376, 18.440992>,  <34.902542, 34.472012, 18.259068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.993164, 34.344376, 18.440992>,  <35.144199, 34.131649, 18.744202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993164, 34.344376, 18.440992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001393, -0.818945, -0.573870,
		-0.925975, -0.215628, 0.309961,
		-0.377583, 0.531821, -0.758023,
		34.879890, 34.503922, 18.213585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613560, 33.630196, 18.303820>,  <35.144199, 34.131649, 18.744202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613560, 33.630196, 18.303820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.724316, 33.929611, 18.062815>,  <34.790768, 34.109261, 17.918213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.724316, 33.929611, 18.062815>,  <34.613560, 33.630196, 18.303820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724316, 33.929611, 18.062815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149237, -0.652917, -0.742581,
		-0.949242, 0.115696, -0.292496,
		0.276889, 0.748541, -0.602511,
		34.807381, 34.154175, 17.882061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478649, 33.321045, 17.666281>,  <34.613560, 33.630196, 18.303820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478649, 33.321045, 17.666281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.707363, 33.635109, 17.571123>,  <34.844589, 33.823547, 17.514029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.707363, 33.635109, 17.571123>,  <34.478649, 33.321045, 17.666281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707363, 33.635109, 17.571123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184991, -0.405892, -0.895003,
		-0.799277, 0.467739, -0.377329,
		0.571782, 0.785158, -0.237892,
		34.878899, 33.870655, 17.499756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298573, 33.540367, 16.994629>,  <34.478649, 33.321045, 17.666281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298573, 33.540367, 16.994629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651920, 33.722042, 17.040874>,  <34.863930, 33.831047, 17.068621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651920, 33.722042, 17.040874>,  <34.298573, 33.540367, 16.994629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651920, 33.722042, 17.040874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246068, -0.239519, -0.939192,
		-0.398879, 0.858104, -0.323346,
		0.883372, 0.454189, 0.115613,
		34.916931, 33.858299, 17.075558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281883, 34.027096, 16.421450>,  <34.298573, 33.540367, 16.994629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281883, 34.027096, 16.421450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.647835, 33.922398, 16.544403>,  <34.867405, 33.859577, 16.618176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.647835, 33.922398, 16.544403>,  <34.281883, 34.027096, 16.421450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647835, 33.922398, 16.544403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235465, -0.272528, -0.932891,
		0.327950, 0.925861, -0.187699,
		0.914880, -0.261745, 0.307383,
		34.922298, 33.843876, 16.636618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706646, 34.370518, 15.931272>,  <34.281883, 34.027096, 16.421450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706646, 34.370518, 15.931272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.928394, 34.075237, 16.085014>,  <35.061443, 33.898071, 16.177259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.928394, 34.075237, 16.085014>,  <34.706646, 34.370518, 15.931272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928394, 34.075237, 16.085014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444799, -0.127538, -0.886503,
		0.703436, 0.662417, 0.257646,
		0.554375, -0.738199, 0.384357,
		35.094707, 33.853779, 16.200321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332188, 34.564098, 15.671892>,  <34.706646, 34.370518, 15.931272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332188, 34.564098, 15.671892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326576, 34.176319, 15.769853>,  <35.323208, 33.943653, 15.828629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.326576, 34.176319, 15.769853>,  <35.332188, 34.564098, 15.671892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326576, 34.176319, 15.769853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467667, -0.222845, -0.855352,
		0.883793, 0.102532, 0.456505,
		-0.014029, -0.969447, 0.244900,
		35.322369, 33.885487, 15.843323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940777, 34.316601, 15.394627>,  <35.332188, 34.564098, 15.671892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940777, 34.316601, 15.394627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.728367, 33.987640, 15.476288>,  <35.600922, 33.790264, 15.525285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.728367, 33.987640, 15.476288>,  <35.940777, 34.316601, 15.394627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728367, 33.987640, 15.476288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259214, -0.387038, -0.884878,
		0.806736, -0.416972, 0.418703,
		-0.531023, -0.822397, 0.204153,
		35.569061, 33.740921, 15.537534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417072, 33.776920, 15.303910>,  <35.940777, 34.316601, 15.394627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417072, 33.776920, 15.303910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.045963, 33.634064, 15.260655>,  <35.823299, 33.548351, 15.234703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.045963, 33.634064, 15.260655>,  <36.417072, 33.776920, 15.303910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045963, 33.634064, 15.260655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260153, -0.411318, -0.873578,
		0.267510, -0.838612, 0.474519,
		-0.927771, -0.357138, -0.108136,
		35.767632, 33.526924, 15.228214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510818, 33.078178, 15.039299>,  <36.417072, 33.776920, 15.303910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510818, 33.078178, 15.039299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125233, 33.134659, 14.949108>,  <35.893883, 33.168545, 14.894994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.125233, 33.134659, 14.949108>,  <36.510818, 33.078178, 15.039299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125233, 33.134659, 14.949108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154364, -0.393423, -0.906306,
		-0.216675, -0.908450, 0.357449,
		-0.963963, 0.141197, -0.225477,
		35.836044, 33.177017, 14.881465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394028, 32.458847, 14.643572>,  <36.510818, 33.078178, 15.039299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394028, 32.458847, 14.643572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.108025, 32.722134, 14.549324>,  <35.936424, 32.880108, 14.492775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.108025, 32.722134, 14.549324>,  <36.394028, 32.458847, 14.643572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108025, 32.722134, 14.549324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090103, -0.420971, -0.902588,
		-0.693291, -0.624123, 0.360303,
		-0.715003, 0.658220, -0.235620,
		35.893524, 32.919601, 14.478639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919304, 32.045845, 14.390330>,  <36.394028, 32.458847, 14.643572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919304, 32.045845, 14.390330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.832333, 32.403580, 14.233932>,  <35.780148, 32.618221, 14.140094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.832333, 32.403580, 14.233932>,  <35.919304, 32.045845, 14.390330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832333, 32.403580, 14.233932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084980, -0.416403, -0.905200,
		-0.972369, -0.163592, 0.166540,
		-0.217431, 0.894341, -0.390995,
		35.767105, 32.671883, 14.116634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406460, 31.998270, 13.886962>,  <35.919304, 32.045845, 14.390330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406460, 31.998270, 13.886962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571323, 32.351284, 13.796398>,  <35.670242, 32.563091, 13.742060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.571323, 32.351284, 13.796398>,  <35.406460, 31.998270, 13.886962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571323, 32.351284, 13.796398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034724, -0.233101, -0.971832,
		-0.910452, 0.408407, -0.065429,
		0.412154, 0.882535, -0.226409,
		35.694969, 32.616043, 13.728476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965057, 32.308514, 13.372868>,  <35.406460, 31.998270, 13.886962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965057, 32.308514, 13.372868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313972, 32.499996, 13.332973>,  <35.523323, 32.614887, 13.309035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313972, 32.499996, 13.332973>,  <34.965057, 32.308514, 13.372868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313972, 32.499996, 13.332973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014235, -0.179023, -0.983742,
		-0.488782, 0.859528, -0.149345,
		0.872290, 0.478709, -0.099739,
		35.575661, 32.643608, 13.303051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895721, 32.865799, 12.959457>,  <34.965057, 32.308514, 13.372868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895721, 32.865799, 12.959457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.286346, 32.798756, 12.905438>,  <35.520721, 32.758530, 12.873027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.286346, 32.798756, 12.905438>,  <34.895721, 32.865799, 12.959457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286346, 32.798756, 12.905438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152921, -0.098704, -0.983297,
		0.151477, 0.980901, -0.122021,
		0.976560, -0.167607, -0.135049,
		35.579315, 32.748474, 12.864923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030170, 32.889687, 12.207508>,  <34.895721, 32.865799, 12.959457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030170, 32.889687, 12.207508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396305, 32.782349, 12.327604>,  <35.615986, 32.717945, 12.399662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396305, 32.782349, 12.327604>,  <35.030170, 32.889687, 12.207508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396305, 32.782349, 12.327604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114123, -0.542164, -0.832487,
		0.386170, 0.796273, -0.465641,
		0.915341, -0.268340, 0.300241,
		35.670906, 32.701847, 12.417677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432148, 33.037334, 11.675127>,  <35.030170, 32.889687, 12.207508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432148, 33.037334, 11.675127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632507, 32.766014, 11.890165>,  <35.752724, 32.603222, 12.019188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632507, 32.766014, 11.890165>,  <35.432148, 33.037334, 11.675127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632507, 32.766014, 11.890165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234704, -0.491408, -0.838709,
		0.833076, 0.546283, -0.086945,
		0.500898, -0.678302, 0.537595,
		35.782776, 32.562523, 12.051444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027554, 32.847561, 11.283963>,  <35.432148, 33.037334, 11.675127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027554, 32.847561, 11.283963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974773, 32.536922, 11.530374>,  <35.943104, 32.350540, 11.678220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.974773, 32.536922, 11.530374>,  <36.027554, 32.847561, 11.283963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974773, 32.536922, 11.530374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281123, -0.625261, -0.728023,
		0.950557, 0.077116, 0.300822,
		-0.131950, -0.776596, 0.616026,
		35.935188, 32.303944, 11.715181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720154, 32.393345, 11.256420>,  <36.027554, 32.847561, 11.283963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720154, 32.393345, 11.256420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403175, 32.180016, 11.374813>,  <36.212990, 32.052017, 11.445848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.403175, 32.180016, 11.374813>,  <36.720154, 32.393345, 11.256420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403175, 32.180016, 11.374813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128116, -0.619970, -0.774095,
		0.596340, -0.575506, 0.559617,
		-0.792442, -0.533320, 0.295982,
		36.165443, 32.020020, 11.463608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906601, 31.692928, 11.346099>,  <36.720154, 32.393345, 11.256420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906601, 31.692928, 11.346099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.524071, 31.737200, 11.237887>,  <36.294552, 31.763763, 11.172960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.524071, 31.737200, 11.237887>,  <36.906601, 31.692928, 11.346099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524071, 31.737200, 11.237887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187087, -0.479328, -0.857463,
		-0.224575, -0.870629, 0.437689,
		-0.956329, 0.110679, -0.270529,
		36.237171, 31.770403, 11.156729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176929, 31.016365, 11.352892>,  <36.906601, 31.692928, 11.346099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176929, 31.016365, 11.352892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045677, 30.651476, 11.254760>,  <36.966927, 30.432543, 11.195881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.045677, 30.651476, 11.254760>,  <37.176929, 31.016365, 11.352892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.045677, 30.651476, 11.254760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106190, -0.222442, 0.969146,
		-0.938646, 0.344054, -0.023880,
		-0.328127, -0.912220, -0.245330,
		36.947239, 30.377810, 11.181161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549854, 30.956522, 11.573519>,  <37.176929, 31.016365, 11.352892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549854, 30.956522, 11.573519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804165, 30.647896, 11.582221>,  <36.956753, 30.462719, 11.587442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804165, 30.647896, 11.582221>,  <36.549854, 30.956522, 11.573519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804165, 30.647896, 11.582221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051319, -0.014129, 0.998582,
		-0.770165, -0.635992, -0.048579,
		0.635776, -0.771567, 0.021757,
		36.994896, 30.416426, 11.588748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276020, 30.521492, 11.882550>,  <36.549854, 30.956522, 11.573519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276020, 30.521492, 11.882550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.653458, 30.394669, 11.920717>,  <36.879921, 30.318575, 11.943617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.653458, 30.394669, 11.920717>,  <36.276020, 30.521492, 11.882550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653458, 30.394669, 11.920717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139320, -0.118773, 0.983099,
		-0.300366, -0.940940, -0.156246,
		0.943594, -0.317058, 0.095416,
		36.936535, 30.299551, 11.949342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294388, 29.936152, 12.422845>,  <36.276020, 30.521492, 11.882550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294388, 29.936152, 12.422845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666695, 30.082388, 12.421456>,  <36.890079, 30.170130, 12.420623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666695, 30.082388, 12.421456>,  <36.294388, 29.936152, 12.422845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666695, 30.082388, 12.421456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013042, -0.023710, 0.999634,
		0.365375, -0.930474, -0.026837,
		0.930769, 0.365591, -0.003472,
		36.945927, 30.192064, 12.420415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622150, 29.591177, 13.018100>,  <36.294388, 29.936152, 12.422845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622150, 29.591177, 13.018100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859356, 29.906088, 12.950543>,  <37.001678, 30.095034, 12.910009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.859356, 29.906088, 12.950543>,  <36.622150, 29.591177, 13.018100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859356, 29.906088, 12.950543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029427, 0.188423, 0.981647,
		0.804652, -0.587104, 0.088571,
		0.593018, 0.787277, -0.168892,
		37.037262, 30.142271, 12.899876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232597, 29.451498, 13.505613>,  <36.622150, 29.591177, 13.018100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232597, 29.451498, 13.505613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.249657, 29.832752, 13.385801>,  <37.259892, 30.061504, 13.313914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.249657, 29.832752, 13.385801>,  <37.232597, 29.451498, 13.505613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249657, 29.832752, 13.385801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190305, 0.286564, 0.938970,
		0.980798, -0.097045, -0.169165,
		0.042646, 0.953134, -0.299530,
		37.262451, 30.118692, 13.295942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833256, 29.731619, 13.741766>,  <37.232597, 29.451498, 13.505613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833256, 29.731619, 13.741766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.617783, 30.063854, 13.685278>,  <37.488499, 30.263195, 13.651385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.617783, 30.063854, 13.685278>,  <37.833256, 29.731619, 13.741766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617783, 30.063854, 13.685278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353809, 0.375142, 0.856790,
		0.764616, 0.411575, -0.495952,
		-0.538685, 0.830587, -0.141220,
		37.456177, 30.313030, 13.642912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278854, 30.287071, 14.114392>,  <37.833256, 29.731619, 13.741766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278854, 30.287071, 14.114392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906784, 30.419180, 14.050265>,  <37.683544, 30.498446, 14.011789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906784, 30.419180, 14.050265>,  <38.278854, 30.287071, 14.114392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906784, 30.419180, 14.050265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029717, 0.502985, 0.863784,
		0.365919, 0.798704, -0.477677,
		-0.930172, 0.330271, -0.160317,
		37.627731, 30.518261, 14.002171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285725, 31.082376, 14.278461>,  <38.278854, 30.287071, 14.114392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285725, 31.082376, 14.278461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912666, 30.942144, 14.312557>,  <37.688831, 30.858006, 14.333014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.912666, 30.942144, 14.312557>,  <38.285725, 31.082376, 14.278461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912666, 30.942144, 14.312557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140895, 0.571395, 0.808490,
		-0.332147, 0.742024, -0.582304,
		-0.932645, -0.350581, 0.085240,
		37.632874, 30.836969, 14.338129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776806, 31.582600, 14.353078>,  <38.285725, 31.082376, 14.278461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776806, 31.582600, 14.353078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584728, 31.288828, 14.544922>,  <37.469482, 31.112564, 14.660028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.584728, 31.288828, 14.544922>,  <37.776806, 31.582600, 14.353078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584728, 31.288828, 14.544922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151722, 0.608075, 0.779246,
		-0.863942, 0.301421, -0.403423,
		-0.480193, -0.734431, 0.479610,
		37.440670, 31.068499, 14.688805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095711, 31.786493, 14.540532>,  <37.776806, 31.582600, 14.353078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095711, 31.786493, 14.540532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.161098, 31.496456, 14.808119>,  <37.200333, 31.322433, 14.968671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.161098, 31.496456, 14.808119>,  <37.095711, 31.786493, 14.540532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161098, 31.496456, 14.808119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369055, 0.583909, 0.723083,
		-0.914918, -0.365090, -0.172147,
		0.163472, -0.725093, 0.668967,
		37.210140, 31.278929, 15.008809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664104, 31.957951, 15.196889>,  <37.095711, 31.786493, 14.540532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664104, 31.957951, 15.196889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.912868, 31.677969, 15.337337>,  <37.062126, 31.509979, 15.421607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.912868, 31.677969, 15.337337>,  <36.664104, 31.957951, 15.196889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912868, 31.677969, 15.337337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098131, 0.375187, 0.921741,
		-0.776914, -0.607697, 0.164645,
		0.621912, -0.699957, 0.351122,
		37.099442, 31.467981, 15.442674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280304, 31.644312, 15.737585>,  <36.664104, 31.957951, 15.196889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280304, 31.644312, 15.737585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.665752, 31.569817, 15.814257>,  <36.897022, 31.525120, 15.860259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.665752, 31.569817, 15.814257>,  <36.280304, 31.644312, 15.737585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665752, 31.569817, 15.814257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111045, 0.373356, 0.921018,
		-0.243093, -0.908802, 0.339095,
		0.963626, -0.186239, 0.191678,
		36.954842, 31.513945, 15.871760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282520, 31.579563, 16.417852>,  <36.280304, 31.644312, 15.737585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282520, 31.579563, 16.417852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670116, 31.601334, 16.321444>,  <36.902676, 31.614395, 16.263597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.670116, 31.601334, 16.321444>,  <36.282520, 31.579563, 16.417852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670116, 31.601334, 16.321444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194097, 0.435975, 0.878779,
		0.152907, -0.898312, 0.411893,
		0.968992, 0.054425, -0.241023,
		36.960815, 31.617661, 16.249136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.727596, 31.177504, 16.890610>,  <36.282520, 31.579563, 16.417852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.727596, 31.177504, 16.890610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.935452, 31.479574, 16.730766>,  <37.060165, 31.660816, 16.634861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.935452, 31.479574, 16.730766>,  <36.727596, 31.177504, 16.890610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935452, 31.479574, 16.730766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220755, 0.333159, 0.916664,
		0.825376, -0.564548, 0.006413,
		0.519637, 0.755176, -0.399608,
		37.091343, 31.706127, 16.610884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239765, 31.226057, 17.389421>,  <36.727596, 31.177504, 16.890610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239765, 31.226057, 17.389421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.253349, 31.565100, 17.177607>,  <37.261501, 31.768526, 17.050518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.253349, 31.565100, 17.177607>,  <37.239765, 31.226057, 17.389421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253349, 31.565100, 17.177607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206432, 0.512468, 0.833524,
		0.977871, -0.137622, -0.157569,
		0.033963, 0.847607, -0.529537,
		37.263538, 31.819382, 17.018745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850128, 31.593412, 17.573793>,  <37.239765, 31.226057, 17.389421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850128, 31.593412, 17.573793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.592194, 31.868116, 17.439604>,  <37.437431, 32.032940, 17.359089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.592194, 31.868116, 17.439604>,  <37.850128, 31.593412, 17.573793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592194, 31.868116, 17.439604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230744, 0.593360, 0.771156,
		0.728658, 0.419861, -0.541086,
		-0.644837, 0.686761, -0.335476,
		37.398743, 32.074146, 17.338961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158291, 32.254501, 17.801504>,  <37.850128, 31.593412, 17.573793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158291, 32.254501, 17.801504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783390, 32.361668, 17.712261>,  <37.558449, 32.425968, 17.658714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.783390, 32.361668, 17.712261>,  <38.158291, 32.254501, 17.801504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783390, 32.361668, 17.712261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037641, 0.713943, 0.699191,
		0.346610, 0.646922, -0.679230,
		-0.937254, 0.267914, -0.223109,
		37.502213, 32.442043, 17.645329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197483, 32.892147, 17.877640>,  <38.158291, 32.254501, 17.801504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197483, 32.892147, 17.877640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.799675, 32.855282, 17.857910>,  <37.560989, 32.833164, 17.846073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.799675, 32.855282, 17.857910>,  <38.197483, 32.892147, 17.877640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799675, 32.855282, 17.857910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100389, 0.710658, 0.696338,
		-0.029122, 0.697475, -0.716017,
		-0.994522, -0.092159, -0.049323,
		37.501320, 32.827633, 17.843113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946129, 33.640732, 17.946638>,  <38.197483, 32.892147, 17.877640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946129, 33.640732, 17.946638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657322, 33.380898, 18.041914>,  <37.484039, 33.224998, 18.099079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.657322, 33.380898, 18.041914>,  <37.946129, 33.640732, 17.946638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657322, 33.380898, 18.041914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300007, 0.604158, 0.738234,
		-0.623447, 0.461560, -0.631092,
		-0.722018, -0.649581, 0.238189,
		37.440716, 33.186024, 18.113371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370964, 34.064980, 18.014437>,  <37.946129, 33.640732, 17.946638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370964, 34.064980, 18.014437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.291103, 33.741497, 18.235756>,  <37.243187, 33.547409, 18.368547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.291103, 33.741497, 18.235756>,  <37.370964, 34.064980, 18.014437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291103, 33.741497, 18.235756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333234, 0.587046, 0.737789,
		-0.921463, -0.037076, -0.386693,
		-0.199653, -0.808704, 0.553296,
		37.231209, 33.498886, 18.401745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.798073, 38.003284, 20.112665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.902290, 37.782379, 20.429428>,  <33.964821, 37.649834, 20.619486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.902290, 37.782379, 20.429428>,  <33.798073, 38.003284, 20.112665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902290, 37.782379, 20.429428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307029, 0.730260, 0.610290,
		-0.915341, -0.402146, 0.020703,
		0.260545, -0.552267, 0.791908,
		33.980453, 37.616699, 20.667000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244938, 38.047897, 20.567411>,  <33.798073, 38.003284, 20.112665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244938, 38.047897, 20.567411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.569370, 37.930851, 20.770004>,  <33.764030, 37.860622, 20.891560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.569370, 37.930851, 20.770004>,  <33.244938, 38.047897, 20.567411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569370, 37.930851, 20.770004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139191, 0.744452, 0.653007,
		-0.568135, -0.600138, 0.563079,
		0.811079, -0.292620, 0.506482,
		33.812695, 37.843063, 20.921949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068626, 38.038322, 21.240612>,  <33.244938, 38.047897, 20.567411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068626, 38.038322, 21.240612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.460983, 38.054337, 21.316763>,  <33.696400, 38.063946, 21.362453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.460983, 38.054337, 21.316763>,  <33.068626, 38.038322, 21.240612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460983, 38.054337, 21.316763> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186191, 0.476838, 0.859045,
		-0.056387, -0.878079, 0.475181,
		0.980894, 0.040035, 0.190378,
		33.755253, 38.066349, 21.373877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138020, 37.753231, 21.909811>,  <33.068626, 38.038322, 21.240612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138020, 37.753231, 21.909811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.486744, 37.942219, 21.858101>,  <33.695980, 38.055611, 21.827074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.486744, 37.942219, 21.858101>,  <33.138020, 37.753231, 21.909811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486744, 37.942219, 21.858101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045141, 0.340285, 0.939238,
		0.487756, -0.813004, 0.317993,
		0.871813, 0.472473, -0.129276,
		33.748287, 38.083961, 21.819319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687473, 37.465939, 22.376743>,  <33.138020, 37.753231, 21.909811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687473, 37.465939, 22.376743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.816486, 37.832195, 22.280760>,  <33.893894, 38.051949, 22.223169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.816486, 37.832195, 22.280760>,  <33.687473, 37.465939, 22.376743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816486, 37.832195, 22.280760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018025, 0.247522, 0.968715,
		0.946387, -0.316766, 0.063329,
		0.322532, 0.915638, -0.239961,
		33.913246, 38.106888, 22.208771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991325, 37.599461, 22.983269>,  <33.687473, 37.465939, 22.376743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991325, 37.599461, 22.983269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.971073, 37.964069, 22.820015>,  <33.958923, 38.182835, 22.722063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.971073, 37.964069, 22.820015>,  <33.991325, 37.599461, 22.983269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971073, 37.964069, 22.820015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062426, 0.410746, 0.909610,
		0.996765, 0.020577, -0.077699,
		-0.050631, 0.911517, -0.408133,
		33.955883, 38.237526, 22.697575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519768, 38.064087, 23.317095>,  <33.991325, 37.599461, 22.983269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519768, 38.064087, 23.317095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.260395, 38.315022, 23.144590>,  <34.104771, 38.465584, 23.041088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.260395, 38.315022, 23.144590>,  <34.519768, 38.064087, 23.317095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260395, 38.315022, 23.144590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056743, 0.604751, 0.794391,
		0.759157, 0.490635, -0.427735,
		-0.648429, 0.627339, -0.431261,
		34.065865, 38.503223, 23.015213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812550, 38.744659, 23.385771>,  <34.519768, 38.064087, 23.317095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812550, 38.744659, 23.385771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.428204, 38.827766, 23.312477>,  <34.197598, 38.877628, 23.268501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.428204, 38.827766, 23.312477>,  <34.812550, 38.744659, 23.385771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428204, 38.827766, 23.312477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007452, 0.680589, 0.732627,
		0.276921, 0.702590, -0.655502,
		-0.960864, 0.207764, -0.183234,
		34.139946, 38.890095, 23.257507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727341, 39.541492, 23.427488>,  <34.812550, 38.744659, 23.385771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727341, 39.541492, 23.427488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.376148, 39.354774, 23.469927>,  <34.165432, 39.242744, 23.495390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.376148, 39.354774, 23.469927>,  <34.727341, 39.541492, 23.427488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376148, 39.354774, 23.469927> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148926, 0.476987, 0.866201,
		-0.454943, 0.744706, -0.488302,
		-0.877979, -0.466793, 0.106096,
		34.112755, 39.214737, 23.501755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206890, 40.047775, 23.533022>,  <34.727341, 39.541492, 23.427488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206890, 40.047775, 23.533022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.057091, 39.709015, 23.684027>,  <33.967213, 39.505760, 23.774630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.057091, 39.709015, 23.684027>,  <34.206890, 40.047775, 23.533022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057091, 39.709015, 23.684027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155202, 0.458652, 0.874958,
		-0.914146, 0.269080, -0.303204,
		-0.374498, -0.846897, 0.377513,
		33.944740, 39.454945, 23.797281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594490, 40.263634, 23.851456>,  <34.206890, 40.047775, 23.533022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594490, 40.263634, 23.851456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.663128, 39.911346, 24.028044>,  <33.704311, 39.699974, 24.133997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.663128, 39.911346, 24.028044>,  <33.594490, 40.263634, 23.851456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663128, 39.911346, 24.028044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354165, 0.363013, 0.861852,
		-0.919306, -0.304239, -0.249629,
		0.171590, -0.880716, 0.441471,
		33.714603, 39.647133, 24.160484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949245, 40.081039, 24.209122>,  <33.594490, 40.263634, 23.851456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949245, 40.081039, 24.209122> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.240925, 39.890129, 24.405279>,  <33.415932, 39.775585, 24.522974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.240925, 39.890129, 24.405279>,  <32.949245, 40.081039, 24.209122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240925, 39.890129, 24.405279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382767, 0.309558, 0.870438,
		-0.567242, -0.822425, 0.043043,
		0.729195, -0.477274, 0.490392,
		33.459682, 39.746948, 24.552397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552048, 39.408127, 24.354256>,  <32.949245, 40.081039, 24.209122>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552048, 39.408127, 24.354256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.328003, 39.311100, 24.671099>,  <32.193577, 39.252884, 24.861204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.328003, 39.311100, 24.671099>,  <32.552048, 39.408127, 24.354256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328003, 39.311100, 24.671099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601938, -0.537764, -0.590323,
		0.569162, -0.807446, 0.155195,
		-0.560112, -0.242572, 0.792107,
		32.159969, 39.238327, 24.908731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456150, 38.642185, 24.497784>,  <32.552048, 39.408127, 24.354256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456150, 38.642185, 24.497784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.140682, 38.820648, 24.666988>,  <31.951401, 38.927727, 24.768511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.140682, 38.820648, 24.666988>,  <32.456150, 38.642185, 24.497784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140682, 38.820648, 24.666988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614560, -0.552384, -0.563195,
		-0.017607, -0.704144, 0.709839,
		-0.788674, 0.446155, 0.423013,
		31.904079, 38.954494, 24.793892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943005, 38.091217, 24.627142>,  <32.456150, 38.642185, 24.497784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943005, 38.091217, 24.627142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.733694, 38.431831, 24.614067>,  <31.608107, 38.636200, 24.606222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.733694, 38.431831, 24.614067>,  <31.943005, 38.091217, 24.627142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733694, 38.431831, 24.614067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640128, -0.418108, -0.644532,
		-0.562509, -0.316345, 0.763878,
		-0.523278, 0.851535, -0.032689,
		31.576710, 38.687290, 24.604261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398260, 37.988411, 25.008873>,  <31.943005, 38.091217, 24.627142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398260, 37.988411, 25.008873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.313274, 38.276466, 24.744673>,  <31.262283, 38.449299, 24.586153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.313274, 38.276466, 24.744673>,  <31.398260, 37.988411, 25.008873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313274, 38.276466, 24.744673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657776, -0.605259, -0.448321,
		-0.722627, 0.339212, 0.602283,
		-0.212462, 0.720137, -0.660502,
		31.249537, 38.492508, 24.546522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640638, 38.035633, 24.932997>,  <31.398260, 37.988411, 25.008873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640638, 38.035633, 24.932997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.810089, 38.199764, 24.609968>,  <30.911758, 38.298244, 24.416151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.810089, 38.199764, 24.609968>,  <30.640638, 38.035633, 24.932997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810089, 38.199764, 24.609968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539053, -0.602284, -0.588792,
		-0.727987, 0.684750, -0.033953,
		0.423625, 0.410330, -0.807571,
		30.937176, 38.322865, 24.367697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040691, 38.105938, 24.368540>,  <30.640638, 38.035633, 24.932997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040691, 38.105938, 24.368540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.383320, 38.143764, 24.165625>,  <30.588898, 38.166462, 24.043875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.383320, 38.143764, 24.165625>,  <30.040691, 38.105938, 24.368540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383320, 38.143764, 24.165625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386412, -0.534002, -0.752015,
		-0.342008, 0.840178, -0.420870,
		0.856572, 0.094566, -0.507288,
		30.640291, 38.172134, 24.013437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780327, 38.226559, 23.752428>,  <30.040691, 38.105938, 24.368540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780327, 38.226559, 23.752428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.148462, 38.088306, 23.679192>,  <30.369343, 38.005356, 23.635250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.148462, 38.088306, 23.679192>,  <29.780327, 38.226559, 23.752428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148462, 38.088306, 23.679192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343346, -0.489714, -0.801432,
		0.187333, 0.800452, -0.569371,
		0.920337, -0.345626, -0.183093,
		30.424562, 37.984619, 23.624264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928368, 38.218369, 22.901413>,  <29.780327, 38.226559, 23.752428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928368, 38.218369, 22.901413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.184464, 37.957767, 23.064207>,  <30.338121, 37.801407, 23.161882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.184464, 37.957767, 23.064207>,  <29.928368, 38.218369, 22.901413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184464, 37.957767, 23.064207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134714, -0.616822, -0.775489,
		0.756271, 0.441672, -0.482680,
		0.640240, -0.651504, 0.406984,
		30.376535, 37.762318, 23.186302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231739, 37.980618, 22.310343>,  <29.928368, 38.218369, 22.901413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231739, 37.980618, 22.310343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.327528, 37.712433, 22.591236>,  <30.385002, 37.551521, 22.759773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.327528, 37.712433, 22.591236>,  <30.231739, 37.980618, 22.310343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327528, 37.712433, 22.591236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032901, -0.728468, -0.684289,
		0.970345, 0.140764, -0.196507,
		0.239473, -0.670462, 0.702234,
		30.399370, 37.511295, 22.801907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770470, 37.743668, 22.043192>,  <30.231739, 37.980618, 22.310343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770470, 37.743668, 22.043192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.629429, 37.476467, 22.305319>,  <30.544804, 37.316147, 22.462595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.629429, 37.476467, 22.305319>,  <30.770470, 37.743668, 22.043192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629429, 37.476467, 22.305319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182400, -0.735925, -0.652031,
		0.917824, -0.110379, 0.381334,
		-0.352604, -0.668005, 0.655316,
		30.523647, 37.276066, 22.501913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204165, 37.235851, 21.910183>,  <30.770470, 37.743668, 22.043192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204165, 37.235851, 21.910183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.893438, 37.073044, 22.102390>,  <30.707003, 36.975361, 22.217714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.893438, 37.073044, 22.102390>,  <31.204165, 37.235851, 21.910183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893438, 37.073044, 22.102390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082257, -0.822102, -0.563366,
		0.624336, -0.398104, 0.672100,
		-0.776813, -0.407015, 0.480521,
		30.660395, 36.950939, 22.246546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341196, 36.590519, 22.076878>,  <31.204165, 37.235851, 21.910183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341196, 36.590519, 22.076878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.947901, 36.529289, 22.116505>,  <30.711924, 36.492554, 22.140280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.947901, 36.529289, 22.116505>,  <31.341196, 36.590519, 22.076878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947901, 36.529289, 22.116505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093806, -0.890577, -0.445054,
		0.156351, -0.428300, 0.890007,
		-0.983237, -0.153073, 0.099066,
		30.652929, 36.483368, 22.146225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212957, 35.869736, 22.365047>,  <31.341196, 36.590519, 22.076878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212957, 35.869736, 22.365047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.880405, 35.993092, 22.180136>,  <30.680874, 36.067104, 22.069189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.880405, 35.993092, 22.180136>,  <31.212957, 35.869736, 22.365047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880405, 35.993092, 22.180136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014965, -0.844000, -0.536135,
		-0.555503, -0.438814, 0.706300,
		-0.831380, 0.308394, -0.462277,
		30.630991, 36.085609, 22.041452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768326, 35.371052, 22.387037>,  <31.212957, 35.869736, 22.365047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768326, 35.371052, 22.387037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.698286, 35.611485, 22.075130>,  <30.656263, 35.755745, 21.887987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.698286, 35.611485, 22.075130>,  <30.768326, 35.371052, 22.387037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698286, 35.611485, 22.075130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046934, -0.796198, -0.603213,
		-0.983432, -0.069024, 0.167625,
		-0.175099, 0.601086, -0.779766,
		30.645756, 35.791809, 21.841200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610695, 34.870594, 21.947151>,  <30.768326, 35.371052, 22.387037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610695, 34.870594, 21.947151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.634361, 35.208916, 21.735073>,  <30.648561, 35.411911, 21.607826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.634361, 35.208916, 21.735073>,  <30.610695, 34.870594, 21.947151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.634361, 35.208916, 21.735073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192908, -0.530802, -0.825249,
		-0.979431, -0.053453, -0.194569,
		0.059166, 0.845809, -0.530195,
		30.652111, 35.462658, 21.576014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327263, 34.683815, 21.317774>,  <30.610695, 34.870594, 21.947151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327263, 34.683815, 21.317774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.539459, 35.012924, 21.236164>,  <30.666777, 35.210388, 21.187199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.539459, 35.012924, 21.236164>,  <30.327263, 34.683815, 21.317774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.539459, 35.012924, 21.236164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405967, -0.457875, -0.790912,
		-0.744159, 0.336743, -0.576916,
		0.530489, 0.822773, -0.204025,
		30.698606, 35.259754, 21.174957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866163, 34.232758, 21.336960>,  <30.327263, 34.683815, 21.317774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866163, 34.232758, 21.336960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.989416, 33.891071, 21.504469>,  <30.063368, 33.686058, 21.604975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.989416, 33.891071, 21.504469>,  <29.866163, 34.232758, 21.336960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989416, 33.891071, 21.504469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207691, 0.369174, 0.905856,
		-0.928397, -0.366098, -0.063659,
		0.308130, -0.854215, 0.418775,
		30.081856, 33.634808, 21.630102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.341217, 34.059597, 21.890312>,  <29.866163, 34.232758, 21.336960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.341217, 34.059597, 21.890312> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.686131, 33.877304, 21.978651>,  <29.893078, 33.767929, 22.031654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.686131, 33.877304, 21.978651>,  <29.341217, 34.059597, 21.890312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686131, 33.877304, 21.978651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138956, 0.206433, 0.968544,
		-0.486989, -0.865847, 0.114676,
		0.862284, -0.455735, 0.220846,
		29.944817, 33.740585, 22.044905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197554, 33.606827, 22.463614>,  <29.341217, 34.059597, 21.890312>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197554, 33.606827, 22.463614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.592630, 33.668747, 22.472532>,  <29.829678, 33.705898, 22.477884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.592630, 33.668747, 22.472532>,  <29.197554, 33.606827, 22.463614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.592630, 33.668747, 22.472532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015895, -0.042485, 0.998971,
		0.155593, -0.987031, -0.039502,
		0.987693, 0.154805, 0.022299,
		29.888939, 33.715187, 22.479221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335978, 33.230278, 23.031851>,  <29.197554, 33.606827, 22.463614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335978, 33.230278, 23.031851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.657598, 33.455795, 22.956347>,  <29.850571, 33.591106, 22.911043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.657598, 33.455795, 22.956347>,  <29.335978, 33.230278, 23.031851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.657598, 33.455795, 22.956347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099872, 0.184896, 0.977670,
		0.586110, -0.804950, 0.092359,
		0.804053, 0.563798, -0.188761,
		29.898815, 33.624935, 22.899717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834782, 33.005688, 23.530466>,  <29.335978, 33.230278, 23.031851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834782, 33.005688, 23.530466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.962084, 33.368435, 23.419971>,  <30.038465, 33.586082, 23.353674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.962084, 33.368435, 23.419971>,  <29.834782, 33.005688, 23.530466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962084, 33.368435, 23.419971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181475, 0.227718, 0.956666,
		0.930473, -0.354595, -0.092101,
		0.318256, 0.906866, -0.276236,
		30.057560, 33.640495, 23.337101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274691, 33.239037, 23.997681>,  <29.834782, 33.005688, 23.530466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274691, 33.239037, 23.997681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.165876, 33.577145, 23.813721>,  <30.100588, 33.780010, 23.703344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.165876, 33.577145, 23.813721>,  <30.274691, 33.239037, 23.997681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165876, 33.577145, 23.813721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146080, 0.508661, 0.848484,
		0.951135, 0.163635, -0.261851,
		-0.272035, 0.845274, -0.459901,
		30.084267, 33.830727, 23.675751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729246, 33.769089, 24.154232>,  <30.274691, 33.239037, 23.997681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729246, 33.769089, 24.154232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.370869, 33.918545, 24.058170>,  <30.155842, 34.008221, 24.000532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.370869, 33.918545, 24.058170>,  <30.729246, 33.769089, 24.154232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370869, 33.918545, 24.058170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099502, 0.695788, 0.711322,
		0.432878, 0.613409, -0.660565,
		-0.895944, 0.373643, -0.240156,
		30.102085, 34.030640, 23.986124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849167, 34.445946, 24.316315>,  <30.729246, 33.769089, 24.154232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849167, 34.445946, 24.316315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.450300, 34.441620, 24.286541>,  <30.210979, 34.439026, 24.268677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.450300, 34.441620, 24.286541>,  <30.849167, 34.445946, 24.316315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450300, 34.441620, 24.286541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063311, 0.654967, 0.753001,
		0.040606, 0.755580, -0.653797,
		-0.997167, -0.010816, -0.074432,
		30.151150, 34.438374, 24.264212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712391, 35.259808, 24.096119>,  <30.849167, 34.445946, 24.316315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712391, 35.259808, 24.096119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.387012, 35.070602, 24.231506>,  <30.191786, 34.957081, 24.312738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.387012, 35.070602, 24.231506>,  <30.712391, 35.259808, 24.096119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387012, 35.070602, 24.231506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156764, 0.738687, 0.655566,
		-0.560114, 0.480209, -0.675035,
		-0.813448, -0.473013, 0.338470,
		30.142979, 34.928699, 24.333048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250874, 35.808537, 24.136763>,  <30.712391, 35.259808, 24.096119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250874, 35.808537, 24.136763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.105795, 35.513027, 24.363976>,  <30.018747, 35.335720, 24.500303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.105795, 35.513027, 24.363976>,  <30.250874, 35.808537, 24.136763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105795, 35.513027, 24.363976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119765, 0.641436, 0.757771,
		-0.924180, 0.206809, -0.321124,
		-0.362694, -0.738776, 0.568034,
		29.996986, 35.291393, 24.534386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592911, 36.062481, 24.448103>,  <30.250874, 35.808537, 24.136763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592911, 36.062481, 24.448103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.714178, 35.770924, 24.693640>,  <29.786940, 35.595989, 24.840961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.714178, 35.770924, 24.693640>,  <29.592911, 36.062481, 24.448103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714178, 35.770924, 24.693640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199469, 0.581347, 0.788827,
		-0.931826, -0.361591, 0.030855,
		0.303170, -0.728895, 0.613840,
		29.805130, 35.552254, 24.877792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054085, 35.892040, 24.868080>,  <29.592911, 36.062481, 24.448103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054085, 35.892040, 24.868080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.392429, 35.793114, 25.057119>,  <29.595436, 35.733757, 25.170542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.392429, 35.793114, 25.057119>,  <29.054085, 35.892040, 24.868080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392429, 35.793114, 25.057119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219092, 0.646724, 0.730580,
		-0.486326, -0.721513, 0.492855,
		0.845864, -0.247320, 0.472596,
		29.646189, 35.718918, 25.198898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.045792, 31.714092, 18.504772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426262, 31.606289, 18.564949>,  <29.654543, 31.541607, 18.601055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426262, 31.606289, 18.564949>,  <29.045792, 31.714092, 18.504772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426262, 31.606289, 18.564949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059380, 0.318527, 0.946052,
		-0.302891, -0.908793, 0.286971,
		0.951174, -0.269510, 0.150443,
		29.711615, 31.525436, 18.610083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058466, 31.343775, 19.164305>,  <29.045792, 31.714092, 18.504772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058466, 31.343775, 19.164305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424728, 31.488632, 19.094532>,  <29.644485, 31.575546, 19.052670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424728, 31.488632, 19.094532>,  <29.058466, 31.343775, 19.164305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424728, 31.488632, 19.094532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000494, 0.434961, 0.900449,
		0.401959, -0.824417, 0.398454,
		0.915657, 0.362141, -0.174429,
		29.699425, 31.597275, 19.042202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533735, 31.137274, 19.697386>,  <29.058466, 31.343775, 19.164305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533735, 31.137274, 19.697386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707989, 31.464760, 19.547758>,  <29.812540, 31.661251, 19.457981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707989, 31.464760, 19.547758>,  <29.533735, 31.137274, 19.697386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707989, 31.464760, 19.547758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150775, 0.343334, 0.927032,
		0.887406, -0.460247, 0.026126,
		0.435634, 0.818715, -0.374070,
		29.838678, 31.710375, 19.435537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119585, 31.176165, 20.223522>,  <29.533735, 31.137274, 19.697386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119585, 31.176165, 20.223522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113993, 31.522217, 20.022980>,  <30.110638, 31.729847, 19.902655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113993, 31.522217, 20.022980>,  <30.119585, 31.176165, 20.223522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113993, 31.522217, 20.022980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273748, 0.485559, 0.830238,
		0.961700, -0.125638, -0.243616,
		-0.013980, 0.865129, -0.501355,
		30.109798, 31.781755, 19.872574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.524139, 31.499510, 20.624645>,  <30.119585, 31.176165, 20.223522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.524139, 31.499510, 20.624645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334251, 31.794401, 20.432339>,  <30.220320, 31.971336, 20.316956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.334251, 31.794401, 20.432339>,  <30.524139, 31.499510, 20.624645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334251, 31.794401, 20.432339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200653, 0.622507, 0.756454,
		0.856960, 0.262635, -0.443444,
		-0.474719, 0.737229, -0.480765,
		30.191835, 32.015572, 20.288109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986181, 31.970869, 20.635435>,  <30.524139, 31.499510, 20.624645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986181, 31.970869, 20.635435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640289, 32.157970, 20.562283>,  <30.432755, 32.270233, 20.518391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640289, 32.157970, 20.562283>,  <30.986181, 31.970869, 20.635435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640289, 32.157970, 20.562283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221765, 0.682326, 0.696600,
		0.450622, 0.561815, -0.693760,
		-0.864731, 0.467755, -0.182880,
		30.380871, 32.298298, 20.507418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132408, 32.738949, 20.547724>,  <30.986181, 31.970869, 20.635435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132408, 32.738949, 20.547724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748079, 32.736858, 20.658569>,  <30.517481, 32.735603, 20.725077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748079, 32.736858, 20.658569>,  <31.132408, 32.738949, 20.547724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748079, 32.736858, 20.658569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184278, 0.734783, 0.652791,
		-0.207027, 0.678282, -0.705034,
		-0.960823, -0.005223, 0.277112,
		30.459833, 32.735291, 20.741703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934208, 33.490257, 20.622704>,  <31.132408, 32.738949, 20.547724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934208, 33.490257, 20.622704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631304, 33.302425, 20.804276>,  <30.449560, 33.189728, 20.913219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.631304, 33.302425, 20.804276>,  <30.934208, 33.490257, 20.622704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631304, 33.302425, 20.804276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039661, 0.660683, 0.749617,
		-0.651906, 0.585660, -0.481686,
		-0.757262, -0.469575, 0.453930,
		30.404125, 33.161552, 20.940454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420301, 33.930668, 20.877195>,  <30.934208, 33.490257, 20.622704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420301, 33.930668, 20.877195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367893, 33.615700, 21.118130>,  <30.336449, 33.426720, 21.262690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367893, 33.615700, 21.118130>,  <30.420301, 33.930668, 20.877195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367893, 33.615700, 21.118130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024139, 0.609925, 0.792091,
		-0.991086, 0.089240, -0.098920,
		-0.131020, -0.787418, 0.602334,
		30.328587, 33.379475, 21.298830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252365, 34.656437, 20.538692>,  <30.420301, 33.930668, 20.877195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252365, 34.656437, 20.538692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543123, 34.918510, 20.621014>,  <30.717579, 35.075756, 20.670406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543123, 34.918510, 20.621014>,  <30.252365, 34.656437, 20.538692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543123, 34.918510, 20.621014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446737, -0.223516, -0.866295,
		-0.521582, 0.721647, -0.455168,
		0.726896, 0.655184, 0.205805,
		30.761192, 35.115067, 20.682755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277859, 35.172054, 20.030893>,  <30.252365, 34.656437, 20.538692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277859, 35.172054, 20.030893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645891, 35.153763, 20.186512>,  <30.866711, 35.142788, 20.279882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645891, 35.153763, 20.186512>,  <30.277859, 35.172054, 20.030893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645891, 35.153763, 20.186512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374525, -0.188363, -0.907882,
		0.114801, 0.981034, -0.156181,
		0.920083, -0.045732, 0.389046,
		30.921915, 35.140041, 20.303226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710497, 35.549488, 19.565794>,  <30.277859, 35.172054, 20.030893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710497, 35.549488, 19.565794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988995, 35.339695, 19.761818>,  <31.156094, 35.213818, 19.879433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.988995, 35.339695, 19.761818>,  <30.710497, 35.549488, 19.565794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988995, 35.339695, 19.761818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547638, -0.053234, -0.835020,
		0.464040, 0.849756, 0.250162,
		0.696246, -0.524481, 0.490062,
		31.197868, 35.182350, 19.908836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387152, 35.899261, 19.454485>,  <30.710497, 35.549488, 19.565794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387152, 35.899261, 19.454485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442789, 35.511982, 19.537674>,  <31.476171, 35.279613, 19.587587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442789, 35.511982, 19.537674>,  <31.387152, 35.899261, 19.454485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442789, 35.511982, 19.537674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563887, -0.095204, -0.820346,
		0.814055, 0.231375, 0.532710,
		0.139091, -0.968195, 0.207971,
		31.484516, 35.221523, 19.600065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059086, 35.730030, 19.155365>,  <31.387152, 35.899261, 19.454485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059086, 35.730030, 19.155365> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914976, 35.363575, 19.225666>,  <31.828510, 35.143700, 19.267847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914976, 35.363575, 19.225666>,  <32.059086, 35.730030, 19.155365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914976, 35.363575, 19.225666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476825, -0.342790, -0.809403,
		0.801773, -0.207804, 0.560337,
		-0.360275, -0.916140, 0.175754,
		31.806894, 35.088734, 19.278393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690289, 35.213535, 19.191963>,  <32.059086, 35.730030, 19.155365>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690289, 35.213535, 19.191963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355221, 35.004406, 19.128763>,  <32.154179, 34.878929, 19.090843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355221, 35.004406, 19.128763>,  <32.690289, 35.213535, 19.191963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355221, 35.004406, 19.128763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381108, -0.352288, -0.854781,
		0.391241, -0.776238, 0.494354,
		-0.837668, -0.522827, -0.158001,
		32.103920, 34.847557, 19.081364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873653, 34.383915, 19.128342>,  <32.690289, 35.213535, 19.191963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873653, 34.383915, 19.128342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522270, 34.475376, 18.960516>,  <32.311440, 34.530254, 18.859821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522270, 34.475376, 18.960516>,  <32.873653, 34.383915, 19.128342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522270, 34.475376, 18.960516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250400, -0.527558, -0.811777,
		-0.406957, -0.818170, 0.406182,
		-0.878456, 0.228651, -0.419563,
		32.258732, 34.543972, 18.834646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574680, 33.723724, 18.865398>,  <32.873653, 34.383915, 19.128342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574680, 33.723724, 18.865398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373108, 33.998405, 18.655828>,  <32.252167, 34.163212, 18.530087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373108, 33.998405, 18.655828>,  <32.574680, 33.723724, 18.865398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373108, 33.998405, 18.655828> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009282, -0.610845, -0.791696,
		-0.863696, -0.394095, 0.314196,
		-0.503928, 0.686701, -0.523926,
		32.221928, 34.204414, 18.498652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138958, 33.334679, 18.449152>,  <32.574680, 33.723724, 18.865398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138958, 33.334679, 18.449152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135239, 33.689701, 18.264912>,  <32.133007, 33.902714, 18.154367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135239, 33.689701, 18.264912>,  <32.138958, 33.334679, 18.449152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135239, 33.689701, 18.264912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125195, -0.455962, -0.881150,
		-0.992089, -0.065859, -0.106877,
		-0.009300, 0.887559, -0.460600,
		32.132450, 33.955967, 18.126732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645048, 33.254356, 17.976439>,  <32.138958, 33.334679, 18.449152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645048, 33.254356, 17.976439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868437, 33.562469, 17.853292>,  <32.002468, 33.747337, 17.779404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868437, 33.562469, 17.853292>,  <31.645048, 33.254356, 17.976439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868437, 33.562469, 17.853292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066969, -0.328059, -0.942281,
		-0.826818, 0.546852, -0.131626,
		0.558469, 0.770279, -0.307867,
		32.035976, 33.793552, 17.760933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265364, 33.619453, 17.344946>,  <31.645048, 33.254356, 17.976439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265364, 33.619453, 17.344946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652500, 33.720047, 17.342367>,  <31.884783, 33.780403, 17.340820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652500, 33.720047, 17.342367>,  <31.265364, 33.619453, 17.344946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652500, 33.720047, 17.342367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062349, -0.264620, -0.962335,
		-0.243715, 0.930985, -0.271789,
		0.967841, 0.251481, -0.006446,
		31.942852, 33.795490, 17.340433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435917, 33.902397, 16.680218>,  <31.265364, 33.619453, 17.344946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435917, 33.902397, 16.680218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802145, 33.838711, 16.827934>,  <32.021881, 33.800499, 16.916565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802145, 33.838711, 16.827934>,  <31.435917, 33.902397, 16.680218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802145, 33.838711, 16.827934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287093, -0.384261, -0.877451,
		0.281613, 0.909391, -0.306108,
		0.915572, -0.159220, 0.369292,
		32.076817, 33.790943, 16.938723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.915415, 34.316074, 16.344406>,  <31.435917, 33.902397, 16.680218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.915415, 34.316074, 16.344406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134834, 34.003929, 16.464491>,  <32.266487, 33.816643, 16.536543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134834, 34.003929, 16.464491>,  <31.915415, 34.316074, 16.344406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134834, 34.003929, 16.464491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390477, -0.078399, -0.917268,
		0.739338, 0.620394, 0.261708,
		0.548550, -0.780362, 0.300214,
		32.299400, 33.769821, 16.554556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625534, 34.370754, 15.994413>,  <31.915415, 34.316074, 16.344406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625534, 34.370754, 15.994413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602863, 33.995255, 16.130381>,  <32.589260, 33.769955, 16.211962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602863, 33.995255, 16.130381>,  <32.625534, 34.370754, 15.994413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602863, 33.995255, 16.130381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392449, -0.334004, -0.856986,
		0.918026, 0.084833, 0.387339,
		-0.056672, -0.938746, 0.339917,
		32.585861, 33.713631, 16.232355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.555920, 29.614882, 19.178661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.335564, 29.942604, 19.115093>,  <36.203350, 30.139236, 19.076952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.335564, 29.942604, 19.115093>,  <36.555920, 29.614882, 19.178661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335564, 29.942604, 19.115093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001749, 0.191555, 0.981480,
		0.834574, 0.540412, -0.106960,
		-0.550893, 0.819305, -0.158922,
		36.170296, 30.188396, 19.067417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921375, 30.133429, 19.488232>,  <36.555920, 29.614882, 19.178661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921375, 30.133429, 19.488232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.538116, 30.244759, 19.461437>,  <36.308163, 30.311558, 19.445360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.538116, 30.244759, 19.461437>,  <36.921375, 30.133429, 19.488232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538116, 30.244759, 19.461437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028922, 0.326915, 0.944611,
		0.284810, 0.903139, -0.321282,
		-0.958147, 0.278327, -0.066988,
		36.250671, 30.328257, 19.441341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031036, 30.718002, 19.828655>,  <36.921375, 30.133429, 19.488232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031036, 30.718002, 19.828655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.633381, 30.682281, 19.804296>,  <36.394787, 30.660849, 19.789682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.633381, 30.682281, 19.804296>,  <37.031036, 30.718002, 19.828655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633381, 30.682281, 19.804296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097279, 0.493650, 0.864203,
		-0.047113, 0.865063, -0.499445,
		-0.994141, -0.089301, -0.060896,
		36.335140, 30.655491, 19.786028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737881, 31.442480, 19.745626>,  <37.031036, 30.718002, 19.828655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737881, 31.442480, 19.745626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436806, 31.215117, 19.878519>,  <36.256161, 31.078699, 19.958254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.436806, 31.215117, 19.878519>,  <36.737881, 31.442480, 19.745626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436806, 31.215117, 19.878519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168904, 0.654439, 0.737008,
		-0.636346, 0.498620, -0.588593,
		-0.752685, -0.568408, 0.332230,
		36.210999, 31.044594, 19.978188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257324, 31.891804, 19.891537>,  <36.737881, 31.442480, 19.745626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257324, 31.891804, 19.891537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.134087, 31.566631, 20.089211>,  <36.060143, 31.371527, 20.207815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.134087, 31.566631, 20.089211>,  <36.257324, 31.891804, 19.891537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134087, 31.566631, 20.089211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190070, 0.561578, 0.805297,
		-0.932175, 0.154178, -0.327534,
		-0.308095, -0.812932, 0.494185,
		36.041656, 31.322752, 20.237467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551254, 32.024273, 20.187016>,  <36.257324, 31.891804, 19.891537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551254, 32.024273, 20.187016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.706490, 31.725130, 20.402460>,  <35.799629, 31.545645, 20.531727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.706490, 31.725130, 20.402460>,  <35.551254, 32.024273, 20.187016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706490, 31.725130, 20.402460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116104, 0.540089, 0.833561,
		-0.914280, -0.386029, 0.122773,
		0.388087, -0.747854, 0.538612,
		35.822914, 31.500774, 20.564043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097694, 31.964987, 20.803148>,  <35.551254, 32.024273, 20.187016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097694, 31.964987, 20.803148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.421707, 31.765997, 20.927319>,  <35.616116, 31.646603, 21.001822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.421707, 31.765997, 20.927319>,  <35.097694, 31.964987, 20.803148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421707, 31.765997, 20.927319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026759, 0.560201, 0.827925,
		-0.585771, -0.662341, 0.467094,
		0.810035, -0.497474, 0.310426,
		35.664719, 31.616755, 21.020447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015778, 31.587351, 21.374334>,  <35.097694, 31.964987, 20.803148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015778, 31.587351, 21.374334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.409595, 31.653984, 21.395943>,  <35.645885, 31.693964, 21.408907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.409595, 31.653984, 21.395943>,  <35.015778, 31.587351, 21.374334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409595, 31.653984, 21.395943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136319, 0.535378, 0.833539,
		0.109930, -0.828022, 0.549813,
		0.984547, 0.166581, 0.054021,
		35.704960, 31.703959, 21.412149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188740, 31.358273, 22.066593>,  <35.015778, 31.587351, 21.374334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188740, 31.358273, 22.066593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501053, 31.583506, 21.958288>,  <35.688442, 31.718645, 21.893305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.501053, 31.583506, 21.958288>,  <35.188740, 31.358273, 22.066593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501053, 31.583506, 21.958288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020904, 0.409575, 0.912037,
		0.624449, -0.717766, 0.308020,
		0.780786, 0.563081, -0.270763,
		35.735291, 31.752430, 21.877060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664188, 31.335091, 22.646330>,  <35.188740, 31.358273, 22.066593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664188, 31.335091, 22.646330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769352, 31.657503, 22.434219>,  <35.832451, 31.850950, 22.306953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.769352, 31.657503, 22.434219>,  <35.664188, 31.335091, 22.646330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769352, 31.657503, 22.434219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031027, 0.556392, 0.830341,
		0.964322, -0.201852, 0.171289,
		0.262909, 0.806030, -0.530278,
		35.848225, 31.899311, 22.275135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016407, 31.692415, 23.085354>,  <35.664188, 31.335091, 22.646330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016407, 31.692415, 23.085354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.966446, 31.961592, 22.793724>,  <35.936470, 32.123096, 22.618746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.966446, 31.961592, 22.793724>,  <36.016407, 31.692415, 23.085354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966446, 31.961592, 22.793724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163459, 0.710833, 0.684103,
		0.978612, 0.204619, 0.021214,
		-0.124901, 0.672939, -0.729077,
		35.928974, 32.163475, 22.575001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451683, 32.100578, 23.272812>,  <36.016407, 31.692415, 23.085354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451683, 32.100578, 23.272812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.221451, 32.329117, 23.038795>,  <36.083313, 32.466240, 22.898386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.221451, 32.329117, 23.038795>,  <36.451683, 32.100578, 23.272812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221451, 32.329117, 23.038795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034720, 0.697710, 0.715538,
		0.817009, 0.432161, -0.381749,
		-0.575578, 0.571347, -0.585040,
		36.048779, 32.500523, 22.863283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674599, 32.771969, 23.221478>,  <36.451683, 32.100578, 23.272812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674599, 32.771969, 23.221478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.282230, 32.817917, 23.158749>,  <36.046810, 32.845486, 23.121111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.282230, 32.817917, 23.158749>,  <36.674599, 32.771969, 23.221478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282230, 32.817917, 23.158749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030393, 0.706174, 0.707386,
		0.192004, 0.698658, -0.689211,
		-0.980923, 0.114873, -0.156822,
		35.987953, 32.852379, 23.111702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627670, 33.508942, 23.184280>,  <36.674599, 32.771969, 23.221478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627670, 33.508942, 23.184280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.258339, 33.379490, 23.266966>,  <36.036739, 33.301819, 23.316578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.258339, 33.379490, 23.266966>,  <36.627670, 33.508942, 23.184280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258339, 33.379490, 23.266966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115950, 0.748129, 0.653344,
		-0.366090, 0.579283, -0.728292,
		-0.923328, -0.323628, 0.206715,
		35.981342, 33.282402, 23.328979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386578, 33.971256, 22.578913>,  <36.627670, 33.508942, 23.184280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386578, 33.971256, 22.578913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.430637, 34.332947, 22.413870>,  <36.457073, 34.549961, 22.314844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.430637, 34.332947, 22.413870>,  <36.386578, 33.971256, 22.578913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430637, 34.332947, 22.413870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129389, -0.424647, -0.896065,
		-0.985457, 0.045314, -0.163771,
		0.110149, 0.904224, -0.412609,
		36.463680, 34.604214, 22.290087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929878, 34.014664, 21.979969>,  <36.386578, 33.971256, 22.578913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929878, 34.014664, 21.979969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.162258, 34.336834, 21.932991>,  <36.301685, 34.530136, 21.904804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.162258, 34.336834, 21.932991>,  <35.929878, 34.014664, 21.979969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162258, 34.336834, 21.932991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018129, -0.131451, -0.991157,
		-0.813741, 0.577937, -0.061765,
		0.580946, 0.805425, -0.117445,
		36.336540, 34.578461, 21.897758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664467, 34.385395, 21.370630>,  <35.929878, 34.014664, 21.979969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.664467, 34.385395, 21.370630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.049393, 34.478458, 21.426939>,  <36.280350, 34.534298, 21.460724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.049393, 34.478458, 21.426939>,  <35.664467, 34.385395, 21.370630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049393, 34.478458, 21.426939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190019, -0.205008, -0.960138,
		-0.194527, 0.950705, -0.241492,
		0.962316, 0.232661, 0.140773,
		36.338089, 34.548256, 21.469172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872684, 34.803249, 20.823919>,  <35.664467, 34.385395, 21.370630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872684, 34.803249, 20.823919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.226444, 34.677334, 20.961758>,  <36.438702, 34.601784, 21.044460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.226444, 34.677334, 20.961758>,  <35.872684, 34.803249, 20.823919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226444, 34.677334, 20.961758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339828, -0.071790, -0.937744,
		0.319926, 0.946444, 0.043482,
		0.884400, -0.314785, 0.344596,
		36.491764, 34.582897, 21.065136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356148, 35.097984, 20.384649>,  <35.872684, 34.803249, 20.823919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356148, 35.097984, 20.384649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.539089, 34.780014, 20.544111>,  <36.648853, 34.589233, 20.639788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.539089, 34.780014, 20.544111>,  <36.356148, 35.097984, 20.384649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539089, 34.780014, 20.544111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208892, -0.339711, -0.917039,
		0.864403, 0.502686, 0.010685,
		0.457353, -0.794923, 0.398654,
		36.676296, 34.541538, 20.663708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941338, 35.032139, 19.895273>,  <36.356148, 35.097984, 20.384649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941338, 35.032139, 19.895273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945564, 34.699448, 20.117304>,  <36.948101, 34.499832, 20.250523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.945564, 34.699448, 20.117304>,  <36.941338, 35.032139, 19.895273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945564, 34.699448, 20.117304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385248, -0.508871, -0.769827,
		0.922752, 0.221977, 0.315046,
		0.010566, -0.831731, 0.555078,
		36.948734, 34.449928, 20.283827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645588, 34.657127, 19.682413>,  <36.941338, 35.032139, 19.895273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645588, 34.657127, 19.682413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.400494, 34.379696, 19.833939>,  <37.253437, 34.213238, 19.924854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.400494, 34.379696, 19.833939>,  <37.645588, 34.657127, 19.682413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400494, 34.379696, 19.833939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187648, -0.593314, -0.782794,
		0.767689, -0.408560, 0.493692,
		-0.612733, -0.693583, 0.378815,
		37.216675, 34.171619, 19.947582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011307, 33.939831, 19.745407>,  <37.645588, 34.657127, 19.682413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011307, 33.939831, 19.745407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615379, 33.894501, 19.710949>,  <37.377823, 33.867302, 19.690275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.615379, 33.894501, 19.710949>,  <38.011307, 33.939831, 19.745407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615379, 33.894501, 19.710949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138191, -0.619784, -0.772510,
		0.034155, -0.776547, 0.629133,
		-0.989817, -0.113325, -0.086143,
		37.318436, 33.860504, 19.685106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928215, 33.281235, 19.506336>,  <38.011307, 33.939831, 19.745407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928215, 33.281235, 19.506336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561146, 33.415813, 19.421789>,  <37.340904, 33.496559, 19.371061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561146, 33.415813, 19.421789>,  <37.928215, 33.281235, 19.506336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561146, 33.415813, 19.421789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071615, -0.663313, -0.744908,
		-0.390822, -0.668447, 0.632801,
		-0.917676, 0.336444, -0.211367,
		37.285843, 33.516747, 19.358379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583973, 32.687389, 19.376429>,  <37.928215, 33.281235, 19.506336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583973, 32.687389, 19.376429> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393696, 32.998165, 19.211464>,  <37.279530, 33.184631, 19.112484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.393696, 32.998165, 19.211464>,  <37.583973, 32.687389, 19.376429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393696, 32.998165, 19.211464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111582, -0.518369, -0.847846,
		-0.872507, -0.357294, 0.333275,
		-0.475690, 0.776939, -0.412413,
		37.250988, 33.231247, 19.087740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911583, 32.436825, 19.068089>,  <37.583973, 32.687389, 19.376429>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911583, 32.436825, 19.068089> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.025471, 32.757198, 18.857397>,  <37.093803, 32.949421, 18.730982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.025471, 32.757198, 18.857397>,  <36.911583, 32.436825, 19.068089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025471, 32.757198, 18.857397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011508, -0.552286, -0.833575,
		-0.958542, 0.231272, -0.166464,
		0.284718, 0.800933, -0.526728,
		37.110886, 32.997478, 18.699379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448002, 32.464672, 18.486799>,  <36.911583, 32.436825, 19.068089>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448002, 32.464672, 18.486799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.768230, 32.674561, 18.371046>,  <36.960369, 32.800495, 18.301594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.768230, 32.674561, 18.371046>,  <36.448002, 32.464672, 18.486799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768230, 32.674561, 18.371046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039651, -0.435474, -0.899327,
		-0.597918, 0.731454, -0.327824,
		0.800576, 0.524725, -0.289381,
		37.008404, 32.831978, 18.284231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219097, 32.756618, 17.943958>,  <36.448002, 32.464672, 18.486799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219097, 32.756618, 17.943958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.613308, 32.795586, 17.888460>,  <36.849834, 32.818966, 17.855162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.613308, 32.795586, 17.888460>,  <36.219097, 32.756618, 17.943958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613308, 32.795586, 17.888460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055448, -0.588175, -0.806831,
		-0.160204, 0.802845, -0.574260,
		0.985525, 0.097416, -0.138744,
		36.908966, 32.824810, 17.846836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286522, 32.697556, 17.260166>,  <36.219097, 32.756618, 17.943958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286522, 32.697556, 17.260166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.646984, 32.595737, 17.400524>,  <36.863262, 32.534649, 17.484739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.646984, 32.595737, 17.400524>,  <36.286522, 32.697556, 17.260166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646984, 32.595737, 17.400524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122571, -0.626805, -0.769475,
		0.415806, 0.736426, -0.533650,
		0.901156, -0.254542, 0.350893,
		36.917332, 32.519375, 17.505793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074417, 33.483948, 17.271008>,  <36.286522, 32.697556, 17.260166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074417, 33.483948, 17.271008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.767231, 33.599277, 17.042238>,  <35.582920, 33.668476, 16.904978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.767231, 33.599277, 17.042238>,  <36.074417, 33.483948, 17.271008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767231, 33.599277, 17.042238> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176966, 0.762665, 0.622113,
		0.615555, 0.578973, -0.534679,
		-0.767968, 0.288324, -0.571921,
		35.536842, 33.685776, 16.870663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136574, 34.188908, 17.168516>,  <36.074417, 33.483948, 17.271008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136574, 34.188908, 17.168516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.750538, 34.089649, 17.134974>,  <35.518917, 34.030094, 17.114847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.750538, 34.089649, 17.134974>,  <36.136574, 34.188908, 17.168516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750538, 34.089649, 17.134974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242125, 0.723018, 0.647009,
		-0.099922, 0.644724, -0.757857,
		-0.965086, -0.248147, -0.083859,
		35.461014, 34.015205, 17.109816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768261, 34.761608, 17.204260>,  <36.136574, 34.188908, 17.168516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768261, 34.761608, 17.204260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.479042, 34.494278, 17.274170>,  <35.305511, 34.333878, 17.316116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.479042, 34.494278, 17.274170>,  <35.768261, 34.761608, 17.204260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479042, 34.494278, 17.274170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501140, 0.681601, 0.533178,
		-0.475466, 0.297924, -0.827752,
		-0.723043, -0.668328, 0.174776,
		35.262131, 34.293781, 17.326603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089367, 35.130653, 17.120266>,  <35.768261, 34.761608, 17.204260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089367, 35.130653, 17.120266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.018299, 34.820362, 17.362486>,  <34.975658, 34.634190, 17.507818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.018299, 34.820362, 17.362486>,  <35.089367, 35.130653, 17.120266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018299, 34.820362, 17.362486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480504, 0.605380, 0.634532,
		-0.858808, -0.178234, -0.480294,
		-0.177665, -0.775724, 0.605548,
		34.965000, 34.587646, 17.544149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287178, 35.118675, 17.276867>,  <35.089367, 35.130653, 17.120266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287178, 35.118675, 17.276867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.471916, 34.920685, 17.571268>,  <34.582760, 34.801891, 17.747908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.471916, 34.920685, 17.571268>,  <34.287178, 35.118675, 17.276867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471916, 34.920685, 17.571268> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478814, 0.559366, 0.676643,
		-0.746615, -0.664914, 0.021341,
		0.461847, -0.494974, 0.736002,
		34.610470, 34.772194, 17.792068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833019, 35.015404, 17.799332>,  <34.287178, 35.118675, 17.276867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833019, 35.015404, 17.799332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.180462, 34.964489, 17.990885>,  <34.388927, 34.933941, 18.105816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.180462, 34.964489, 17.990885>,  <33.833019, 35.015404, 17.799332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180462, 34.964489, 17.990885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357611, 0.507935, 0.783656,
		-0.342992, -0.851939, 0.395673,
		0.868603, -0.127291, 0.478881,
		34.441044, 34.926300, 18.134548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632187, 35.049976, 18.390276>,  <33.833019, 35.015404, 17.799332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632187, 35.049976, 18.390276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.020222, 35.138283, 18.430677>,  <34.253040, 35.191265, 18.454918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.020222, 35.138283, 18.430677>,  <33.632187, 35.049976, 18.390276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020222, 35.138283, 18.430677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221363, 0.633520, 0.741384,
		0.099686, -0.741562, 0.663436,
		0.970083, 0.220766, 0.101002,
		34.311245, 35.204514, 18.460978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707493, 35.058189, 19.144037>,  <33.632187, 35.049976, 18.390276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707493, 35.058189, 19.144037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025192, 35.266850, 19.019426>,  <34.215813, 35.392044, 18.944660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.025192, 35.266850, 19.019426>,  <33.707493, 35.058189, 19.144037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025192, 35.266850, 19.019426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017414, 0.532056, 0.846530,
		0.607344, -0.666930, 0.431669,
		0.794248, 0.521652, -0.311527,
		34.263466, 35.423344, 18.925968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249989, 35.133007, 19.726873>,  <33.707493, 35.058189, 19.144037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249989, 35.133007, 19.726873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.347969, 35.415180, 19.460833>,  <34.406757, 35.584484, 19.301208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.347969, 35.415180, 19.460833>,  <34.249989, 35.133007, 19.726873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347969, 35.415180, 19.460833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166043, 0.645342, 0.745629,
		0.955210, -0.293081, 0.040948,
		0.244955, 0.705434, -0.665102,
		34.421455, 35.626812, 19.261303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768661, 35.423862, 20.099798>,  <34.249989, 35.133007, 19.726873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768661, 35.423862, 20.099798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.682537, 35.690117, 19.813982>,  <34.630863, 35.849869, 19.642492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.682537, 35.690117, 19.813982>,  <34.768661, 35.423862, 20.099798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682537, 35.690117, 19.813982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110954, 0.743639, 0.659310,
		0.970222, 0.062673, -0.233966,
		-0.215308, 0.665637, -0.714542,
		34.617947, 35.889809, 19.599619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273136, 35.969452, 20.049213>,  <34.768661, 35.423862, 20.099798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273136, 35.969452, 20.049213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960560, 36.137234, 19.864424>,  <34.773014, 36.237904, 19.753550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.960560, 36.137234, 19.864424>,  <35.273136, 35.969452, 20.049213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960560, 36.137234, 19.864424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131510, 0.834437, 0.535182,
		0.609969, 0.357457, -0.707221,
		-0.781436, 0.419451, -0.461972,
		34.726128, 36.263069, 19.725832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470997, 36.649132, 20.091471>,  <35.273136, 35.969452, 20.049213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470997, 36.649132, 20.091471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.078873, 36.682297, 20.019783>,  <34.843597, 36.702198, 19.976770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.078873, 36.682297, 20.019783>,  <35.470997, 36.649132, 20.091471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078873, 36.682297, 20.019783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058199, 0.745947, 0.663457,
		0.188699, 0.660823, -0.726433,
		-0.980309, 0.082916, -0.179219,
		34.784779, 36.707172, 19.966017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306965, 37.369331, 19.973486>,  <35.470997, 36.649132, 20.091471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306965, 37.369331, 19.973486> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.968636, 37.190197, 20.089437>,  <34.765640, 37.082714, 20.159008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.968636, 37.190197, 20.089437>,  <35.306965, 37.369331, 19.973486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968636, 37.190197, 20.089437> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143185, 0.714025, 0.685322,
		-0.513895, 0.538152, -0.668060,
		-0.845819, -0.447840, 0.289879,
		34.714890, 37.055843, 20.176401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794037, 37.925442, 19.968027>,  <35.306965, 37.369331, 19.973486>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794037, 37.925442, 19.968027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.663372, 37.633488, 20.208216>,  <34.584972, 37.458317, 20.352329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.663372, 37.633488, 20.208216>,  <34.794037, 37.925442, 19.968027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663372, 37.633488, 20.208216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038074, 0.624645, 0.779980,
		-0.944374, 0.277652, -0.176258,
		-0.326662, -0.729882, 0.600470,
		34.565372, 37.414524, 20.388357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.222290, 34.050171, 15.652576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.026302, 33.737446, 15.806821>,  <32.908710, 33.549812, 15.899367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.026302, 33.737446, 15.806821>,  <33.222290, 34.050171, 15.652576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026302, 33.737446, 15.806821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272489, -0.557538, -0.784156,
		0.828058, -0.279138, 0.486212,
		-0.489970, -0.781814, 0.385612,
		32.879311, 33.502903, 15.922504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681622, 33.458176, 15.578420>,  <33.222290, 34.050171, 15.652576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681622, 33.458176, 15.578420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301590, 33.333900, 15.589962>,  <33.073570, 33.259335, 15.596888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301590, 33.333900, 15.589962>,  <33.681622, 33.458176, 15.578420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301590, 33.333900, 15.589962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133159, -0.487354, -0.862991,
		0.282181, -0.816064, 0.504394,
		-0.950075, -0.310685, 0.028856,
		33.016567, 33.240696, 15.598619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630676, 32.690681, 15.462646>,  <33.681622, 33.458176, 15.578420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630676, 32.690681, 15.462646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.270443, 32.837315, 15.369203>,  <33.054302, 32.925297, 15.313137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.270443, 32.837315, 15.369203>,  <33.630676, 32.690681, 15.462646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270443, 32.837315, 15.369203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016573, -0.565970, -0.824259,
		-0.434376, -0.738439, 0.515777,
		-0.900580, 0.366586, -0.233606,
		33.000271, 32.947292, 15.299121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356754, 32.158367, 15.275840>,  <33.630676, 32.690681, 15.462646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356754, 32.158367, 15.275840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.160927, 32.466129, 15.111722>,  <33.043430, 32.650787, 15.013251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.160927, 32.466129, 15.111722>,  <33.356754, 32.158367, 15.275840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160927, 32.466129, 15.111722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001705, -0.471384, -0.881926,
		-0.871965, -0.431060, 0.232085,
		-0.489565, 0.769405, -0.410296,
		33.014057, 32.696949, 14.988633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799744, 31.901894, 14.826610>,  <33.356754, 32.158367, 15.275840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799744, 31.901894, 14.826610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846142, 32.275291, 14.690886>,  <32.873981, 32.499332, 14.609452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846142, 32.275291, 14.690886>,  <32.799744, 31.901894, 14.826610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846142, 32.275291, 14.690886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264675, -0.300213, -0.916417,
		-0.957336, 0.196103, 0.212251,
		0.115991, 0.933497, -0.339308,
		32.880939, 32.555340, 14.589094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321342, 32.012215, 14.324389>,  <32.799744, 31.901894, 14.826610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321342, 32.012215, 14.324389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579773, 32.297768, 14.216343>,  <32.734829, 32.469101, 14.151516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579773, 32.297768, 14.216343>,  <32.321342, 32.012215, 14.324389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579773, 32.297768, 14.216343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020927, -0.337186, -0.941206,
		-0.762990, 0.613739, -0.202907,
		0.646072, 0.713884, -0.270113,
		32.773594, 32.511932, 14.135309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053490, 32.097763, 13.727942>,  <32.321342, 32.012215, 14.324389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053490, 32.097763, 13.727942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.402729, 32.292065, 13.744600>,  <32.612274, 32.408646, 13.754596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.402729, 32.292065, 13.744600>,  <32.053490, 32.097763, 13.727942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402729, 32.292065, 13.744600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192844, -0.265636, -0.944589,
		-0.447776, 0.832754, -0.325602,
		0.873102, 0.485755, 0.041646,
		32.664661, 32.437790, 13.757094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892918, 32.446766, 13.152235>,  <32.053490, 32.097763, 13.727942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892918, 32.446766, 13.152235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.280521, 32.528988, 13.207038>,  <32.513084, 32.578320, 13.239920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.280521, 32.528988, 13.207038>,  <31.892918, 32.446766, 13.152235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280521, 32.528988, 13.207038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175051, -0.180043, -0.967958,
		-0.174301, 0.961942, -0.210446,
		0.969008, 0.205554, 0.137007,
		32.571224, 32.590652, 13.248140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171783, 32.961105, 12.699723>,  <31.892918, 32.446766, 13.152235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171783, 32.961105, 12.699723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.483295, 32.719360, 12.766957>,  <32.670204, 32.574314, 12.807298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.483295, 32.719360, 12.766957>,  <32.171783, 32.961105, 12.699723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483295, 32.719360, 12.766957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034366, -0.226444, -0.973418,
		0.626355, 0.763855, -0.155581,
		0.778780, -0.604358, 0.168085,
		32.716930, 32.538052, 12.817383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426025, 32.924149, 12.132175>,  <32.171783, 32.961105, 12.699723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426025, 32.924149, 12.132175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.600368, 32.614044, 12.315041>,  <32.704975, 32.427982, 12.424760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.600368, 32.614044, 12.315041>,  <32.426025, 32.924149, 12.132175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600368, 32.614044, 12.315041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027226, -0.496360, -0.867690,
		0.899602, 0.390639, -0.195236,
		0.435861, -0.775260, 0.457163,
		32.731125, 32.381466, 12.452189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986523, 32.808834, 11.788835>,  <32.426025, 32.924149, 12.132175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986523, 32.808834, 11.788835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.920696, 32.462975, 11.978699>,  <32.881199, 32.255459, 12.092617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.920696, 32.462975, 11.978699>,  <32.986523, 32.808834, 11.788835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920696, 32.462975, 11.978699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054329, -0.488438, -0.870906,
		0.984869, -0.117534, 0.127355,
		-0.164566, -0.864647, 0.474661,
		32.871326, 32.203579, 12.121098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522305, 32.287495, 11.516419>,  <32.986523, 32.808834, 11.788835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522305, 32.287495, 11.516419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.196625, 32.104515, 11.659425>,  <33.001217, 31.994728, 11.745228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.196625, 32.104515, 11.659425>,  <33.522305, 32.287495, 11.516419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196625, 32.104515, 11.659425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050900, -0.557171, -0.828836,
		0.578346, -0.693038, 0.430366,
		-0.814202, -0.457449, 0.357513,
		32.952366, 31.967281, 11.766679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629730, 31.597744, 11.512324>,  <33.522305, 32.287495, 11.516419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629730, 31.597744, 11.512324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232895, 31.614632, 11.465026>,  <32.994793, 31.624763, 11.436646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.232895, 31.614632, 11.465026>,  <33.629730, 31.597744, 11.512324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232895, 31.614632, 11.465026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075273, -0.553777, -0.829256,
		-0.100492, -0.831594, 0.546216,
		-0.992086, 0.042218, -0.118247,
		32.935268, 31.627296, 11.429552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303791, 31.199545, 11.577748>,  <33.629730, 31.597744, 11.512324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303791, 31.199545, 11.577748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282536, 31.570095, 11.428617>,  <34.269783, 31.792425, 11.339139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282536, 31.570095, 11.428617>,  <34.303791, 31.199545, 11.577748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282536, 31.570095, 11.428617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763632, 0.278277, 0.582604,
		0.643461, -0.253744, -0.722200,
		-0.053140, 0.926378, -0.372828,
		34.266594, 31.848009, 11.316770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157040, 31.290932, 11.799426>,  <34.303791, 31.199545, 11.577748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157040, 31.290932, 11.799426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.481110, 31.505499, 11.704874>,  <35.675552, 31.634239, 11.648143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.481110, 31.505499, 11.704874>,  <35.157040, 31.290932, 11.799426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481110, 31.505499, 11.704874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017064, 0.424658, 0.905193,
		0.585946, -0.729327, 0.353199,
		0.810170, 0.536421, -0.236381,
		35.724159, 31.666426, 11.633960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467125, 31.344439, 12.481880>,  <35.157040, 31.290932, 11.799426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467125, 31.344439, 12.481880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.654221, 31.622612, 12.263675>,  <35.766479, 31.789516, 12.132751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.654221, 31.622612, 12.263675>,  <35.467125, 31.344439, 12.481880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654221, 31.622612, 12.263675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242217, 0.492708, 0.835805,
		0.850028, -0.523075, 0.062014,
		0.467743, 0.695436, -0.545513,
		35.794544, 31.831244, 12.100020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256832, 31.527967, 12.676713>,  <35.467125, 31.344439, 12.481880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256832, 31.527967, 12.676713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.118042, 31.853302, 12.489911>,  <36.034767, 32.048504, 12.377831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.118042, 31.853302, 12.489911>,  <36.256832, 31.527967, 12.676713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118042, 31.853302, 12.489911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235768, 0.557591, 0.795930,
		0.907756, 0.166064, -0.385230,
		-0.346976, 0.813336, -0.467004,
		36.013950, 32.097301, 12.349810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700695, 32.018871, 12.736849>,  <36.256832, 31.527967, 12.676713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700695, 32.018871, 12.736849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.381222, 32.238998, 12.639482>,  <36.189537, 32.371075, 12.581062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.381222, 32.238998, 12.639482>,  <36.700695, 32.018871, 12.736849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381222, 32.238998, 12.639482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237088, 0.659583, 0.713260,
		0.553071, 0.511960, -0.657274,
		-0.798687, 0.550315, -0.243416,
		36.141617, 32.404095, 12.566458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844574, 32.785141, 12.761745>,  <36.700695, 32.018871, 12.736849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844574, 32.785141, 12.761745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448299, 32.749405, 12.802836>,  <36.210533, 32.727962, 12.827491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.448299, 32.749405, 12.802836>,  <36.844574, 32.785141, 12.761745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448299, 32.749405, 12.802836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037878, 0.543874, 0.838311,
		-0.130767, 0.834397, -0.535426,
		-0.990689, -0.089342, 0.102726,
		36.151093, 32.722603, 12.833654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668121, 33.375996, 13.049255>,  <36.844574, 32.785141, 12.761745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668121, 33.375996, 13.049255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.357822, 33.141212, 13.141940>,  <36.171642, 33.000343, 13.197551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.357822, 33.141212, 13.141940>,  <36.668121, 33.375996, 13.049255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357822, 33.141212, 13.141940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077989, 0.453550, 0.887812,
		-0.626205, 0.670648, -0.397618,
		-0.775748, -0.586962, 0.231712,
		36.125099, 32.965122, 13.211453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292465, 33.721695, 13.396877>,  <36.668121, 33.375996, 13.049255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292465, 33.721695, 13.396877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.110294, 33.380512, 13.498899>,  <36.000992, 33.175804, 13.560113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.110294, 33.380512, 13.498899>,  <36.292465, 33.721695, 13.396877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110294, 33.380512, 13.498899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226823, 0.388204, 0.893224,
		-0.860896, 0.348943, -0.370267,
		-0.455423, -0.852957, 0.255056,
		35.973667, 33.124626, 13.575417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598335, 33.900902, 13.662837>,  <36.292465, 33.721695, 13.396877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598335, 33.900902, 13.662837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.676430, 33.538582, 13.813252>,  <35.723286, 33.321190, 13.903502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.676430, 33.538582, 13.813252>,  <35.598335, 33.900902, 13.662837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676430, 33.538582, 13.813252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362235, 0.289708, 0.885920,
		-0.911410, -0.309179, -0.271552,
		0.195237, -0.905802, 0.376039,
		35.735001, 33.266842, 13.926064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021381, 33.797356, 14.139326>,  <35.598335, 33.900902, 13.662837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021381, 33.797356, 14.139326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255890, 33.501560, 14.271649>,  <35.396595, 33.324081, 14.351043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.255890, 33.501560, 14.271649>,  <35.021381, 33.797356, 14.139326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255890, 33.501560, 14.271649> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369530, 0.119276, 0.921532,
		-0.720923, -0.662514, -0.203336,
		0.586275, -0.739492, 0.330807,
		35.431774, 33.279713, 14.370892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595608, 33.513241, 14.650337>,  <35.021381, 33.797356, 14.139326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595608, 33.513241, 14.650337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973198, 33.399292, 14.716985>,  <35.199753, 33.330925, 14.756973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973198, 33.399292, 14.716985>,  <34.595608, 33.513241, 14.650337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973198, 33.399292, 14.716985> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180618, -0.023402, 0.983275,
		-0.276206, -0.958281, -0.073544,
		0.943974, -0.284870, 0.166619,
		35.256390, 33.313831, 14.766971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603241, 32.918926, 15.119485>,  <34.595608, 33.513241, 14.650337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603241, 32.918926, 15.119485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.950809, 33.109707, 15.172387>,  <35.159351, 33.224174, 15.204128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.950809, 33.109707, 15.172387>,  <34.603241, 32.918926, 15.119485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950809, 33.109707, 15.172387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151254, 0.001455, 0.988494,
		0.471267, -0.878931, 0.073404,
		0.868924, 0.476947, 0.132256,
		35.211487, 33.252792, 15.212064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965603, 32.619019, 15.654090>,  <34.603241, 32.918926, 15.119485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965603, 32.619019, 15.654090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.151745, 32.972866, 15.642120>,  <35.263428, 33.185173, 15.634939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.151745, 32.972866, 15.642120>,  <34.965603, 32.619019, 15.654090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151745, 32.972866, 15.642120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014006, 0.041162, 0.999054,
		0.885015, -0.464492, 0.031545,
		0.465352, 0.884620, -0.029923,
		35.291351, 33.238251, 15.633143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467220, 32.627270, 16.252773>,  <34.965603, 32.619019, 15.654090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467220, 32.627270, 16.252773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.432522, 33.009537, 16.140226>,  <35.411705, 33.238899, 16.072699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.432522, 33.009537, 16.140226>,  <35.467220, 32.627270, 16.252773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432522, 33.009537, 16.140226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095915, 0.273109, 0.957189,
		0.991603, 0.110016, 0.067973,
		-0.086742, 0.955671, -0.281368,
		35.406498, 33.296238, 16.055817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007496, 33.062183, 16.564394>,  <35.467220, 32.627270, 16.252773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007496, 33.062183, 16.564394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.686745, 33.282661, 16.472162>,  <35.494293, 33.414948, 16.416822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.686745, 33.282661, 16.472162>,  <36.007496, 33.062183, 16.564394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686745, 33.282661, 16.472162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045604, 0.328331, 0.943461,
		0.595740, 0.767059, -0.238145,
		-0.801881, 0.551198, -0.230581,
		35.446178, 33.448021, 16.402988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841248, 33.117649, 16.813087>,  <36.007496, 33.062183, 16.564394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841248, 33.117649, 16.813087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.021542, 32.791042, 16.957384>,  <37.129719, 32.595078, 17.043962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.021542, 32.791042, 16.957384>,  <36.841248, 33.117649, 16.813087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021542, 32.791042, 16.957384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029395, -0.390323, -0.920208,
		0.892175, 0.425372, -0.151930,
		0.450732, -0.816521, 0.360741,
		37.156761, 32.546085, 17.065607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289619, 32.891117, 16.277430>,  <36.841248, 33.117649, 16.813087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289619, 32.891117, 16.277430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304394, 32.566383, 16.510515>,  <37.313259, 32.371544, 16.650368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.304394, 32.566383, 16.510515>,  <37.289619, 32.891117, 16.277430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304394, 32.566383, 16.510515> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101588, -0.577042, -0.810372,
		0.994141, 0.089129, 0.061159,
		0.036937, -0.811837, 0.582715,
		37.315475, 32.322834, 16.685329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918613, 32.530910, 16.123573>,  <37.289619, 32.891117, 16.277430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918613, 32.530910, 16.123573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.643780, 32.277824, 16.266449>,  <37.478878, 32.125973, 16.352175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.643780, 32.277824, 16.266449>,  <37.918613, 32.530910, 16.123573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.643780, 32.277824, 16.266449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184278, -0.627283, -0.756676,
		0.702817, -0.454081, 0.547594,
		-0.687088, -0.632714, 0.357187,
		37.437653, 32.088009, 16.373606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229778, 31.847750, 16.007114>,  <37.918613, 32.530910, 16.123573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229778, 31.847750, 16.007114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.842041, 31.778719, 16.077080>,  <37.609398, 31.737301, 16.119059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.842041, 31.778719, 16.077080>,  <38.229778, 31.847750, 16.007114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842041, 31.778719, 16.077080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050961, -0.837561, -0.543961,
		0.240375, -0.518370, 0.820678,
		-0.969341, -0.172577, 0.174912,
		37.551239, 31.726946, 16.129553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165638, 31.192736, 16.103374>,  <38.229778, 31.847750, 16.007114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.165638, 31.192736, 16.103374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.790215, 31.296200, 16.011988>,  <37.564960, 31.358278, 15.957155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.790215, 31.296200, 16.011988>,  <38.165638, 31.192736, 16.103374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790215, 31.296200, 16.011988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039906, -0.738910, -0.672621,
		-0.342796, -0.622179, 0.703835,
		-0.938562, 0.258659, -0.228467,
		37.508648, 31.373798, 15.943447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833782, 30.565075, 15.993098>,  <38.165638, 31.192736, 16.103374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833782, 30.565075, 15.993098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.613747, 30.846565, 15.813242>,  <37.481728, 31.015459, 15.705328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.613747, 30.846565, 15.813242>,  <37.833782, 30.565075, 15.993098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613747, 30.846565, 15.813242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128458, -0.603317, -0.787088,
		-0.825170, -0.375205, 0.422274,
		-0.550084, 0.703726, -0.449642,
		37.448723, 31.057682, 15.678349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350887, 30.124067, 15.645967>,  <37.833782, 30.565075, 15.993098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350887, 30.124067, 15.645967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.323547, 30.486784, 15.479568>,  <37.307144, 30.704414, 15.379728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.323547, 30.486784, 15.479568>,  <37.350887, 30.124067, 15.645967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323547, 30.486784, 15.479568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176379, -0.421387, -0.889564,
		-0.981947, 0.012576, 0.188739,
		-0.068345, 0.906794, -0.415998,
		37.303043, 30.758821, 15.354768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778282, 29.965696, 16.134628>,  <37.350887, 30.124067, 15.645967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778282, 29.965696, 16.134628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478848, 29.729382, 16.255024>,  <36.299187, 29.587593, 16.327261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478848, 29.729382, 16.255024>,  <36.778282, 29.965696, 16.134628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478848, 29.729382, 16.255024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158264, 0.600044, 0.784155,
		-0.643875, 0.539370, -0.542684,
		-0.748584, -0.590785, 0.300990,
		36.254272, 29.552147, 16.345322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105835, 30.407631, 16.315577>,  <36.778282, 29.965696, 16.134628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105835, 30.407631, 16.315577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.092655, 30.050663, 16.495575>,  <36.084747, 29.836481, 16.603575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.092655, 30.050663, 16.495575>,  <36.105835, 30.407631, 16.315577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092655, 30.050663, 16.495575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233138, 0.444684, 0.864814,
		-0.971885, -0.076416, -0.222709,
		-0.032950, -0.892422, 0.449998,
		36.082771, 29.782936, 16.630575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476768, 30.421137, 16.645760>,  <36.105835, 30.407631, 16.315577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476768, 30.421137, 16.645760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.690144, 30.143448, 16.839046>,  <35.818169, 29.976835, 16.955019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.690144, 30.143448, 16.839046>,  <35.476768, 30.421137, 16.645760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690144, 30.143448, 16.839046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343287, 0.344432, 0.873797,
		-0.773046, -0.631998, -0.054585,
		0.533437, -0.694223, 0.483219,
		35.850174, 29.935181, 16.984013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038422, 30.075224, 17.146103>,  <35.476768, 30.421137, 16.645760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038422, 30.075224, 17.146103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.416744, 30.033924, 17.269253>,  <35.643738, 30.009144, 17.343143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.416744, 30.033924, 17.269253>,  <35.038422, 30.075224, 17.146103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416744, 30.033924, 17.269253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275659, 0.245851, 0.929285,
		-0.171639, -0.963793, 0.204066,
		0.945808, -0.103249, 0.307875,
		35.700485, 30.002949, 17.361616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016754, 29.775898, 17.884392>,  <35.038422, 30.075224, 17.146103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016754, 29.775898, 17.884392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.386803, 29.923655, 17.849277>,  <35.608829, 30.012308, 17.828209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.386803, 29.923655, 17.849277>,  <35.016754, 29.775898, 17.884392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386803, 29.923655, 17.849277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050407, 0.109677, 0.992688,
		0.376321, -0.922778, 0.082844,
		0.925117, 0.369393, -0.087788,
		35.664337, 30.034472, 17.822941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393185, 29.428566, 18.406790>,  <35.016754, 29.775898, 17.884392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393185, 29.428566, 18.406790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621994, 29.749189, 18.337170>,  <35.759281, 29.941563, 18.295399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.621994, 29.749189, 18.337170>,  <35.393185, 29.428566, 18.406790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621994, 29.749189, 18.337170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172251, 0.090071, 0.980926,
		0.801946, -0.591094, -0.086546,
		0.572025, 0.801558, -0.174049,
		35.793602, 29.989656, 18.284954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013390, 29.359682, 18.746183>,  <35.393185, 29.428566, 18.406790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013390, 29.359682, 18.746183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969082, 29.755829, 18.712938>,  <35.942497, 29.993517, 18.692991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969082, 29.755829, 18.712938>,  <36.013390, 29.359682, 18.746183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969082, 29.755829, 18.712938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105188, 0.094841, 0.989920,
		0.988264, 0.100907, -0.114680,
		-0.110766, 0.990365, -0.083114,
		35.935852, 30.052938, 18.688004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.599859, 28.877623, 12.430909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.674046, 29.266058, 12.370792>,  <31.718557, 29.499119, 12.334723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.674046, 29.266058, 12.370792>,  <31.599859, 28.877623, 12.430909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674046, 29.266058, 12.370792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082001, 0.137118, 0.987155,
		0.979223, -0.195410, -0.054199,
		0.185468, 0.971089, -0.150293,
		31.729687, 29.557384, 12.325705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231720, 29.048721, 12.805759>,  <31.599859, 28.877623, 12.430909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231720, 29.048721, 12.805759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.972109, 29.351131, 12.771829>,  <31.816343, 29.532578, 12.751471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.972109, 29.351131, 12.771829>,  <32.231720, 29.048721, 12.805759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972109, 29.351131, 12.771829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135573, 0.224654, 0.964961,
		0.748591, 0.614783, -0.248303,
		-0.649024, 0.756024, -0.084826,
		31.777401, 29.577938, 12.746381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532284, 29.609150, 13.260925>,  <32.231720, 29.048721, 12.805759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532284, 29.609150, 13.260925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.150757, 29.712183, 13.199107>,  <31.921841, 29.774002, 13.162016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.150757, 29.712183, 13.199107>,  <32.532284, 29.609150, 13.260925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150757, 29.712183, 13.199107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026193, 0.441207, 0.897023,
		0.299245, 0.859644, -0.414084,
		-0.953817, 0.257583, -0.154545,
		31.864613, 29.789457, 13.152743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556637, 30.353224, 13.422196>,  <32.532284, 29.609150, 13.260925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556637, 30.353224, 13.422196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.196106, 30.182867, 13.453774>,  <31.979788, 30.080652, 13.472721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.196106, 30.182867, 13.453774>,  <32.556637, 30.353224, 13.422196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196106, 30.182867, 13.453774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141255, 0.461305, 0.875925,
		-0.409467, 0.778340, -0.475944,
		-0.901323, -0.425892, 0.078944,
		31.925709, 30.055099, 13.477458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146030, 30.879726, 13.706372>,  <32.556637, 30.353224, 13.422196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146030, 30.879726, 13.706372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.909258, 30.563623, 13.769753>,  <31.767195, 30.373960, 13.807782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.909258, 30.563623, 13.769753>,  <32.146030, 30.879726, 13.706372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909258, 30.563623, 13.769753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379642, 0.446795, 0.810090,
		-0.710978, 0.419362, -0.564487,
		-0.591932, -0.790259, 0.158454,
		31.731678, 30.326546, 13.817289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554363, 31.166826, 13.809815>,  <32.146030, 30.879726, 13.706372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554363, 31.166826, 13.809815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.570280, 30.808838, 13.987556>,  <31.579830, 30.594046, 14.094199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.570280, 30.808838, 13.987556>,  <31.554363, 31.166826, 13.809815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570280, 30.808838, 13.987556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369861, 0.399923, 0.838609,
		-0.928235, -0.197719, -0.315100,
		0.039793, -0.894969, 0.444350,
		31.582218, 30.540348, 14.120861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882860, 31.158070, 14.084543>,  <31.554363, 31.166826, 13.809815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882860, 31.158070, 14.084543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.085278, 30.868723, 14.272442>,  <31.206728, 30.695116, 14.385180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.085278, 30.868723, 14.272442>,  <30.882860, 31.158070, 14.084543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085278, 30.868723, 14.272442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472131, 0.223468, 0.852733,
		-0.721811, -0.653303, -0.228439,
		0.506045, -0.723365, 0.469746,
		31.237091, 30.651712, 14.413365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340195, 30.576405, 14.312237>,  <30.882860, 31.158070, 14.084543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340195, 30.576405, 14.312237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.674686, 30.550116, 14.530008>,  <30.875381, 30.534342, 14.660671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.674686, 30.550116, 14.530008>,  <30.340195, 30.576405, 14.312237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674686, 30.550116, 14.530008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531064, 0.150476, 0.833864,
		-0.136727, -0.986427, 0.090929,
		0.836228, -0.065722, 0.544430,
		30.925554, 30.530399, 14.693337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295553, 30.140203, 15.028149>,  <30.340195, 30.576405, 14.312237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295553, 30.140203, 15.028149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612411, 30.371685, 15.105718>,  <30.802526, 30.510574, 15.152259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612411, 30.371685, 15.105718>,  <30.295553, 30.140203, 15.028149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612411, 30.371685, 15.105718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318147, 0.120370, 0.940369,
		0.520854, -0.806605, 0.279464,
		0.792145, 0.578705, 0.193923,
		30.850056, 30.545296, 15.163895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575644, 29.845797, 15.593619>,  <30.295553, 30.140203, 15.028149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575644, 29.845797, 15.593619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682310, 30.231310, 15.592414>,  <30.746311, 30.462618, 15.591691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682310, 30.231310, 15.592414>,  <30.575644, 29.845797, 15.593619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682310, 30.231310, 15.592414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112250, 0.034163, 0.993093,
		0.957229, -0.264488, 0.117294,
		0.266668, 0.963784, -0.003013,
		30.762310, 30.520445, 15.591510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963789, 29.948587, 16.182177>,  <30.575644, 29.845797, 15.593619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963789, 29.948587, 16.182177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.891235, 30.335802, 16.112888>,  <30.847704, 30.568130, 16.071316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.891235, 30.335802, 16.112888>,  <30.963789, 29.948587, 16.182177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891235, 30.335802, 16.112888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192508, 0.137785, 0.971574,
		0.964386, 0.209575, 0.161362,
		-0.181385, 0.968036, -0.173223,
		30.836821, 30.626213, 16.060921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.317722, 30.321417, 16.751749>,  <30.963789, 29.948587, 16.182177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.317722, 30.321417, 16.751749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.040438, 30.563362, 16.594984>,  <30.874067, 30.708529, 16.500925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.040438, 30.563362, 16.594984>,  <31.317722, 30.321417, 16.751749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040438, 30.563362, 16.594984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339445, 0.205691, 0.917861,
		0.635794, 0.769305, 0.062730,
		-0.693212, 0.604864, -0.391914,
		30.832474, 30.744822, 16.477409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038181, 30.380325, 17.134146>,  <31.317722, 30.321417, 16.751749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038181, 30.380325, 17.134146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200806, 30.086033, 17.350815>,  <32.298378, 29.909458, 17.480816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.200806, 30.086033, 17.350815>,  <32.038181, 30.380325, 17.134146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200806, 30.086033, 17.350815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443345, -0.359529, -0.821087,
		0.798847, 0.573967, 0.180014,
		0.406557, -0.735731, 0.541675,
		32.322773, 29.865313, 17.513317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685635, 30.312626, 16.941372>,  <32.038181, 30.380325, 17.134146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685635, 30.312626, 16.941372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.594582, 29.955528, 17.096907>,  <32.539951, 29.741270, 17.190228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.594582, 29.955528, 17.096907>,  <32.685635, 30.312626, 16.941372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594582, 29.955528, 17.096907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517146, -0.449183, -0.728556,
		0.825073, 0.035244, 0.563926,
		-0.227629, -0.892744, 0.388835,
		32.526295, 29.687704, 17.213556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192944, 29.929153, 16.758976>,  <32.685635, 30.312626, 16.941372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192944, 29.929153, 16.758976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.941883, 29.639618, 16.873598>,  <32.791248, 29.465897, 16.942371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.941883, 29.639618, 16.873598>,  <33.192944, 29.929153, 16.758976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941883, 29.639618, 16.873598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421131, -0.625273, -0.657026,
		0.654757, -0.291703, 0.697282,
		-0.627648, -0.723839, 0.286557,
		32.753590, 29.422466, 16.959564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569145, 29.349804, 16.880619>,  <33.192944, 29.929153, 16.758976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569145, 29.349804, 16.880619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.197456, 29.235453, 16.786961>,  <32.974445, 29.166842, 16.730766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.197456, 29.235453, 16.786961>,  <33.569145, 29.349804, 16.880619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197456, 29.235453, 16.786961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362465, -0.581852, -0.728058,
		0.071896, -0.761396, 0.644288,
		-0.929220, -0.285876, -0.234146,
		32.918690, 29.149691, 16.716717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700607, 28.595850, 16.760511>,  <33.569145, 29.349804, 16.880619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700607, 28.595850, 16.760511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.347397, 28.692024, 16.599291>,  <33.135471, 28.749729, 16.502558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.347397, 28.692024, 16.599291>,  <33.700607, 28.595850, 16.760511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347397, 28.692024, 16.599291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207757, -0.569812, -0.795080,
		-0.420828, -0.785816, 0.453208,
		-0.883029, 0.240435, -0.403052,
		33.082489, 28.764154, 16.478374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431484, 27.925470, 16.562325>,  <33.700607, 28.595850, 16.760511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431484, 27.925470, 16.562325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.265060, 28.227606, 16.359797>,  <33.165207, 28.408888, 16.238279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.265060, 28.227606, 16.359797>,  <33.431484, 27.925470, 16.562325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265060, 28.227606, 16.359797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261977, -0.433626, -0.862170,
		-0.870784, -0.491355, -0.017469,
		-0.416056, 0.755340, -0.506318,
		33.140244, 28.454208, 16.207901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118309, 27.577999, 15.998848>,  <33.431484, 27.925470, 16.562325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118309, 27.577999, 15.998848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.105770, 27.963604, 15.893244>,  <33.098248, 28.194967, 15.829882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.105770, 27.963604, 15.893244>,  <33.118309, 27.577999, 15.998848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105770, 27.963604, 15.893244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062802, -0.261719, -0.963099,
		-0.997534, -0.046773, -0.052337,
		-0.031350, 0.964010, -0.264010,
		33.096367, 28.252808, 15.814040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528088, 27.712002, 15.496349>,  <33.118309, 27.577999, 15.998848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528088, 27.712002, 15.496349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.823162, 27.975636, 15.437808>,  <33.000206, 28.133816, 15.402683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.823162, 27.975636, 15.437808>,  <32.528088, 27.712002, 15.496349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823162, 27.975636, 15.437808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045629, -0.167609, -0.984797,
		-0.673595, 0.733154, -0.093570,
		0.737691, 0.659085, -0.146354,
		33.044468, 28.173361, 15.393902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.296738, 28.081705, 14.951333>,  <32.528088, 27.712002, 15.496349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.296738, 28.081705, 14.951333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.683678, 28.183025, 14.954953>,  <32.915840, 28.243818, 14.957126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.683678, 28.183025, 14.954953>,  <32.296738, 28.081705, 14.951333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683678, 28.183025, 14.954953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074440, -0.249789, -0.965435,
		-0.242284, 0.934583, -0.260487,
		0.967345, 0.253300, 0.009050,
		32.973881, 28.259016, 14.957668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.470547, 28.608919, 14.475575>,  <32.296738, 28.081705, 14.951333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.470547, 28.608919, 14.475575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.827740, 28.436255, 14.526573>,  <33.042053, 28.332655, 14.557172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.827740, 28.436255, 14.526573>,  <32.470547, 28.608919, 14.475575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827740, 28.436255, 14.526573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043302, -0.199552, -0.978930,
		0.448010, 0.879685, -0.159504,
		0.892979, -0.431664, 0.127493,
		33.095634, 28.306755, 14.564821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856323, 28.925552, 14.012770>,  <32.470547, 28.608919, 14.475575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856323, 28.925552, 14.012770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.032173, 28.575348, 14.092978>,  <33.137684, 28.365225, 14.141104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.032173, 28.575348, 14.092978>,  <32.856323, 28.925552, 14.012770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032173, 28.575348, 14.092978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142944, -0.152207, -0.977957,
		0.886734, 0.458598, 0.058235,
		0.439625, -0.875512, 0.200521,
		33.164062, 28.312695, 14.153135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497005, 28.892765, 13.568260>,  <32.856323, 28.925552, 14.012770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497005, 28.892765, 13.568260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.421528, 28.515539, 13.677823>,  <33.376240, 28.289204, 13.743561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.421528, 28.515539, 13.677823>,  <33.497005, 28.892765, 13.568260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421528, 28.515539, 13.677823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369441, -0.326600, -0.869969,
		0.909894, -0.062968, 0.410035,
		-0.188698, -0.943063, 0.273908,
		33.364918, 28.232620, 13.759995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132790, 28.609528, 13.451445>,  <33.497005, 28.892765, 13.568260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132790, 28.609528, 13.451445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.882999, 28.297487, 13.466824>,  <33.733128, 28.110264, 13.476050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.882999, 28.297487, 13.466824>,  <34.132790, 28.609528, 13.451445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882999, 28.297487, 13.466824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380887, -0.347137, -0.856984,
		0.681880, -0.520518, 0.513908,
		-0.624472, -0.780100, 0.038447,
		33.695660, 28.063457, 13.478357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594467, 28.100925, 13.428926>,  <34.132790, 28.609528, 13.451445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594467, 28.100925, 13.428926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.245651, 27.965040, 13.287987>,  <34.036362, 27.883509, 13.203424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.245651, 27.965040, 13.287987>,  <34.594467, 28.100925, 13.428926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245651, 27.965040, 13.287987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479437, -0.448076, -0.754565,
		0.098456, -0.826936, 0.553609,
		-0.872036, -0.339712, -0.352348,
		33.984039, 27.863127, 13.182282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835217, 27.867968, 14.160082>,  <34.594467, 28.100925, 13.428926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835217, 27.867968, 14.160082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.233631, 27.854900, 14.193180>,  <35.472679, 27.847061, 14.213038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.233631, 27.854900, 14.193180>,  <34.835217, 27.867968, 14.160082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233631, 27.854900, 14.193180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044297, 0.624495, 0.779772,
		-0.077147, -0.780345, 0.620572,
		0.996035, -0.032667, 0.082745,
		35.532440, 27.845100, 14.218003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002415, 27.696102, 14.875025>,  <34.835217, 27.867968, 14.160082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002415, 27.696102, 14.875025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.338970, 27.848736, 14.721948>,  <35.540905, 27.940317, 14.630101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.338970, 27.848736, 14.721948>,  <35.002415, 27.696102, 14.875025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338970, 27.848736, 14.721948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130872, 0.543187, 0.829350,
		0.524338, -0.747893, 0.407095,
		0.841393, 0.381582, -0.382692,
		35.591389, 27.963211, 14.607140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601101, 27.556818, 15.323701>,  <35.002415, 27.696102, 14.875025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601101, 27.556818, 15.323701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.726086, 27.865114, 15.101592>,  <35.801075, 28.050091, 14.968327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.726086, 27.865114, 15.101592>,  <35.601101, 27.556818, 15.323701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726086, 27.865114, 15.101592> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299291, 0.474894, 0.827588,
		0.901550, -0.424778, -0.082289,
		0.312462, 0.770740, -0.555273,
		35.819824, 28.096336, 14.935010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295979, 27.675568, 15.543805>,  <35.601101, 27.556818, 15.323701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295979, 27.675568, 15.543805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.155926, 28.010740, 15.376340>,  <36.071892, 28.211843, 15.275861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.155926, 28.010740, 15.376340>,  <36.295979, 27.675568, 15.543805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155926, 28.010740, 15.376340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554730, 0.545637, 0.628136,
		0.754772, -0.012313, -0.655872,
		-0.350134, 0.837931, -0.418662,
		36.050884, 28.262119, 15.250741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801018, 28.121284, 15.661501>,  <36.295979, 27.675568, 15.543805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801018, 28.121284, 15.661501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.495998, 28.355770, 15.552052>,  <36.312984, 28.496460, 15.486383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.495998, 28.355770, 15.552052>,  <36.801018, 28.121284, 15.661501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495998, 28.355770, 15.552052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176472, 0.595408, 0.783803,
		0.622391, 0.549405, -0.557480,
		-0.762553, 0.586212, -0.273622,
		36.267231, 28.531633, 15.469966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079247, 28.775658, 15.783466>,  <36.801018, 28.121284, 15.661501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079247, 28.775658, 15.783466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.682018, 28.821478, 15.772943>,  <36.443680, 28.848970, 15.766628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.682018, 28.821478, 15.772943>,  <37.079247, 28.775658, 15.783466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682018, 28.821478, 15.772943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055799, 0.656516, 0.752245,
		0.103442, 0.745564, -0.658358,
		-0.993069, 0.114550, -0.026310,
		36.384098, 28.855843, 15.765050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879826, 29.485487, 15.602091>,  <37.079247, 28.775658, 15.783466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879826, 29.485487, 15.602091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.577793, 29.339685, 15.820078>,  <36.396572, 29.252205, 15.950871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.577793, 29.339685, 15.820078>,  <36.879826, 29.485487, 15.602091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577793, 29.339685, 15.820078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050112, 0.860865, 0.506359,
		-0.653714, 0.355033, -0.668288,
		-0.755080, -0.364503, 0.544969,
		36.351269, 29.230335, 15.983568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788647, 30.045448, 15.160584>,  <36.879826, 29.485487, 15.602091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788647, 30.045448, 15.160584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.974648, 30.356136, 14.990651>,  <37.086246, 30.542549, 14.888691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.974648, 30.356136, 14.990651>,  <36.788647, 30.045448, 15.160584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974648, 30.356136, 14.990651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077002, -0.513533, -0.854608,
		-0.881956, 0.364679, -0.298601,
		0.464999, 0.776720, -0.424832,
		37.114147, 30.589151, 14.863201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429337, 30.443937, 14.647120>,  <36.788647, 30.045448, 15.160584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429337, 30.443937, 14.647120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.792927, 30.564899, 14.532354>,  <37.011082, 30.637476, 14.463495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.792927, 30.564899, 14.532354>,  <36.429337, 30.443937, 14.647120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792927, 30.564899, 14.532354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099522, -0.510945, -0.853833,
		-0.404800, 0.804665, -0.434340,
		0.908973, 0.302405, -0.286913,
		37.065620, 30.655621, 14.446280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375999, 30.849943, 13.951448>,  <36.429337, 30.443937, 14.647120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375999, 30.849943, 13.951448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.761227, 30.747431, 13.984491>,  <36.992363, 30.685923, 14.004317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.761227, 30.747431, 13.984491>,  <36.375999, 30.849943, 13.951448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761227, 30.747431, 13.984491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008646, -0.336065, -0.941799,
		0.269127, 0.906301, -0.325869,
		0.963066, -0.256280, 0.082608,
		37.050148, 30.670547, 14.009274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604366, 31.241657, 13.453770>,  <36.375999, 30.849943, 13.951448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604366, 31.241657, 13.453770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.869617, 30.951580, 13.527916>,  <37.028767, 30.777534, 13.572404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.869617, 30.951580, 13.527916>,  <36.604366, 31.241657, 13.453770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869617, 30.951580, 13.527916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165518, -0.099447, -0.981180,
		0.729978, 0.681327, 0.054087,
		0.663126, -0.725192, 0.185366,
		37.068554, 30.734022, 13.583526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206646, 31.435316, 13.016068>,  <36.604366, 31.241657, 13.453770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206646, 31.435316, 13.016068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.210716, 31.044029, 13.099005>,  <37.213158, 30.809258, 13.148767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.210716, 31.044029, 13.099005>,  <37.206646, 31.435316, 13.016068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210716, 31.044029, 13.099005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201286, -0.201105, -0.958666,
		0.979480, 0.051486, 0.194855,
		0.010171, -0.978216, 0.207342,
		37.213768, 30.750565, 13.161207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833256, 31.137360, 12.597874>,  <37.206646, 31.435316, 13.016068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833256, 31.137360, 12.597874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.594620, 30.832577, 12.698672>,  <37.451439, 30.649706, 12.759151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.594620, 30.832577, 12.698672>,  <37.833256, 31.137360, 12.597874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594620, 30.832577, 12.698672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161768, -0.421722, -0.892178,
		0.786076, -0.491497, 0.374854,
		-0.596587, -0.761959, 0.251997,
		37.415646, 30.603989, 12.774271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198738, 30.584681, 12.402113>,  <37.833256, 31.137360, 12.597874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198738, 30.584681, 12.402113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.814899, 30.472731, 12.413735>,  <37.584595, 30.405561, 12.420709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.814899, 30.472731, 12.413735>,  <38.198738, 30.584681, 12.402113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.814899, 30.472731, 12.413735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097713, -0.428293, -0.898341,
		0.263867, -0.859206, 0.438336,
		-0.959597, -0.279874, 0.029057,
		37.527020, 30.388769, 12.422452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156044, 29.937687, 12.091349>,  <38.198738, 30.584681, 12.402113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156044, 29.937687, 12.091349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.776890, 30.060873, 12.058678>,  <37.549397, 30.134785, 12.039075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.776890, 30.060873, 12.058678>,  <38.156044, 29.937687, 12.091349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776890, 30.060873, 12.058678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009447, -0.283407, -0.958953,
		-0.318483, -0.908203, 0.271545,
		-0.947882, 0.307975, -0.081680,
		37.492523, 30.153263, 12.034174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810913, 29.441942, 11.631986>,  <38.156044, 29.937687, 12.091349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810913, 29.441942, 11.631986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.607574, 29.785521, 11.607366>,  <37.485569, 29.991669, 11.592593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.607574, 29.785521, 11.607366>,  <37.810913, 29.441942, 11.631986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607574, 29.785521, 11.607366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197782, -0.186020, -0.962434,
		-0.838131, -0.477079, 0.264447,
		-0.508350, 0.858948, -0.061551,
		37.455070, 30.043205, 11.588901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.095634, 37.994301, 26.314989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806221, 38.043762, 26.043341>,  <35.632572, 38.073441, 25.880352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806221, 38.043762, 26.043341>,  <36.095634, 37.994301, 26.314989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806221, 38.043762, 26.043341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373359, -0.757394, -0.535685,
		-0.580602, -0.641143, 0.501834,
		-0.723536, 0.123655, -0.679120,
		35.589161, 38.080860, 25.839605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929611, 37.367340, 26.141329>,  <36.095634, 37.994301, 26.314989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929611, 37.367340, 26.141329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.813053, 37.589966, 25.830118>,  <35.743118, 37.723541, 25.643391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.813053, 37.589966, 25.830118>,  <35.929611, 37.367340, 26.141329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813053, 37.589966, 25.830118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416076, -0.658620, -0.626977,
		-0.861376, -0.506417, -0.039654,
		-0.291395, 0.556562, -0.778028,
		35.725636, 37.756935, 25.596710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690437, 36.844116, 25.756058>,  <35.929611, 37.367340, 26.141329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690437, 36.844116, 25.756058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658798, 37.133358, 25.481581>,  <35.639812, 37.306904, 25.316895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658798, 37.133358, 25.481581>,  <35.690437, 36.844116, 25.756058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658798, 37.133358, 25.481581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026931, -0.689650, -0.723642,
		-0.996503, -0.038760, 0.074025,
		-0.079100, 0.723105, -0.686194,
		35.635067, 37.350288, 25.275723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060753, 36.707684, 25.252155>,  <35.690437, 36.844116, 25.756058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060753, 36.707684, 25.252155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330563, 36.934635, 25.063227>,  <35.492451, 37.070808, 24.949869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330563, 36.934635, 25.063227>,  <35.060753, 36.707684, 25.252155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330563, 36.934635, 25.063227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105222, -0.707144, -0.699196,
		-0.730712, 0.421929, -0.536690,
		0.674528, 0.567383, -0.472322,
		35.532921, 37.104851, 24.921530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911587, 36.626144, 24.527876>,  <35.060753, 36.707684, 25.252155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911587, 36.626144, 24.527876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290386, 36.749321, 24.564445>,  <35.517666, 36.823227, 24.586388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.290386, 36.749321, 24.564445>,  <34.911587, 36.626144, 24.527876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290386, 36.749321, 24.564445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266199, -0.593015, -0.759916,
		-0.179796, 0.743978, -0.643560,
		0.947001, 0.307945, 0.091425,
		35.574486, 36.841705, 24.591873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113903, 36.733440, 23.878019>,  <34.911587, 36.626144, 24.527876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.113903, 36.733440, 23.878019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464931, 36.735870, 24.069778>,  <35.675549, 36.737328, 24.184834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.464931, 36.735870, 24.069778>,  <35.113903, 36.733440, 23.878019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464931, 36.735870, 24.069778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410670, -0.525522, -0.745102,
		0.247409, 0.850758, -0.463680,
		0.877576, 0.006075, 0.479400,
		35.728203, 36.737694, 24.213598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637703, 37.037971, 23.422983>,  <35.113903, 36.733440, 23.878019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637703, 37.037971, 23.422983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797562, 36.775688, 23.679213>,  <35.893475, 36.618320, 23.832951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797562, 36.775688, 23.679213>,  <35.637703, 37.037971, 23.422983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797562, 36.775688, 23.679213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355191, -0.533446, -0.767643,
		0.845059, 0.534310, 0.019712,
		0.399643, -0.655705, 0.640575,
		35.917454, 36.578976, 23.871386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309669, 36.893288, 23.224195>,  <35.637703, 37.037971, 23.422983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309669, 36.893288, 23.224195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225899, 36.550041, 23.411720>,  <36.175636, 36.344093, 23.524235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.225899, 36.550041, 23.411720>,  <36.309669, 36.893288, 23.224195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225899, 36.550041, 23.411720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432040, -0.511309, -0.742903,
		0.877202, 0.046964, 0.477819,
		-0.209423, -0.858113, 0.468811,
		36.163071, 36.292606, 23.552364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870792, 36.381546, 23.026495>,  <36.309669, 36.893288, 23.224195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870792, 36.381546, 23.026495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600494, 36.143551, 23.200556>,  <36.438316, 36.000755, 23.304993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600494, 36.143551, 23.200556>,  <36.870792, 36.381546, 23.026495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600494, 36.143551, 23.200556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168541, -0.699403, -0.694572,
		0.717606, -0.396015, 0.572900,
		-0.675749, -0.594986, 0.435151,
		36.397770, 35.965054, 23.331100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192928, 35.726727, 23.025621>,  <36.870792, 36.381546, 23.026495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192928, 35.726727, 23.025621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.797615, 35.676277, 23.060024>,  <36.560429, 35.646008, 23.080666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.797615, 35.676277, 23.060024>,  <37.192928, 35.726727, 23.025621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797615, 35.676277, 23.060024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025325, -0.691043, -0.722370,
		0.150541, -0.711725, 0.686138,
		-0.988279, -0.126123, 0.086006,
		36.501133, 35.638439, 23.085827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147472, 35.020435, 23.249098>,  <37.192928, 35.726727, 23.025621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147472, 35.020435, 23.249098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.805836, 35.124290, 23.068825>,  <36.600853, 35.186604, 22.960661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.805836, 35.124290, 23.068825>,  <37.147472, 35.020435, 23.249098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805836, 35.124290, 23.068825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183370, -0.660551, -0.728044,
		-0.486727, -0.704458, 0.516561,
		-0.854092, 0.259637, -0.450684,
		36.549610, 35.202183, 22.933619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829746, 34.393707, 23.068916>,  <37.147472, 35.020435, 23.249098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829746, 34.393707, 23.068916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658890, 34.677559, 22.844784>,  <36.556374, 34.847870, 22.710304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.658890, 34.677559, 22.844784>,  <36.829746, 34.393707, 23.068916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658890, 34.677559, 22.844784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067856, -0.592806, -0.802481,
		-0.901634, -0.380797, 0.205061,
		-0.427144, 0.709630, -0.560334,
		36.530746, 34.890450, 22.676683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229080, 34.138058, 23.499962>,  <36.829746, 34.393707, 23.068916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229080, 34.138058, 23.499962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005051, 33.828766, 23.618908>,  <35.870632, 33.643188, 23.690275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.005051, 33.828766, 23.618908>,  <36.229080, 34.138058, 23.499962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005051, 33.828766, 23.618908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228390, 0.489152, 0.841765,
		-0.796337, 0.403537, -0.450561,
		-0.560076, -0.773232, 0.297366,
		35.837029, 33.596798, 23.708118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623566, 34.395672, 23.547636>,  <36.229080, 34.138058, 23.499962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623566, 34.395672, 23.547636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.636478, 34.079262, 23.792009>,  <35.644226, 33.889416, 23.938633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.636478, 34.079262, 23.792009>,  <35.623566, 34.395672, 23.547636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636478, 34.079262, 23.792009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473080, 0.526351, 0.706506,
		-0.880428, -0.311830, -0.357224,
		0.032285, -0.791023, 0.610935,
		35.646164, 33.841953, 23.975290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888397, 34.367672, 23.901672>,  <35.623566, 34.395672, 23.547636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888397, 34.367672, 23.901672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144352, 34.151115, 24.119823>,  <35.297924, 34.021183, 24.250713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144352, 34.151115, 24.119823>,  <34.888397, 34.367672, 23.901672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144352, 34.151115, 24.119823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360215, 0.415582, 0.835187,
		-0.678812, -0.730880, 0.070910,
		0.639890, -0.541392, 0.545376,
		35.336319, 33.988697, 24.283436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428589, 34.089272, 24.376659>,  <34.888397, 34.367672, 23.901672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428589, 34.089272, 24.376659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788765, 34.042389, 24.544214>,  <35.004871, 34.014259, 24.644747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.788765, 34.042389, 24.544214>,  <34.428589, 34.089272, 24.376659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788765, 34.042389, 24.544214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369034, 0.303923, 0.878320,
		-0.230256, -0.945459, 0.230411,
		0.900442, -0.117209, 0.418886,
		35.058899, 34.007225, 24.669880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260143, 33.914852, 25.007748>,  <34.428589, 34.089272, 24.376659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260143, 33.914852, 25.007748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633415, 34.053986, 25.043917>,  <34.857380, 34.137466, 25.065619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633415, 34.053986, 25.043917>,  <34.260143, 33.914852, 25.007748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633415, 34.053986, 25.043917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221050, 0.357116, 0.907527,
		0.283377, -0.866879, 0.410144,
		0.933185, 0.347835, 0.090425,
		34.913372, 34.158337, 25.071045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350262, 33.818268, 25.688099>,  <34.260143, 33.914852, 25.007748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350262, 33.818268, 25.688099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682064, 34.024948, 25.603312>,  <34.881145, 34.148956, 25.552439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682064, 34.024948, 25.603312>,  <34.350262, 33.818268, 25.688099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682064, 34.024948, 25.603312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055740, 0.301048, 0.951979,
		0.555705, -0.801490, 0.220921,
		0.829509, 0.516705, -0.211969,
		34.930916, 34.179958, 25.539721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053547, 33.650616, 26.035061>,  <34.350262, 33.818268, 25.688099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053547, 33.650616, 26.035061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.096951, 34.036884, 25.940653>,  <35.122993, 34.268646, 25.884008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.096951, 34.036884, 25.940653>,  <35.053547, 33.650616, 26.035061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096951, 34.036884, 25.940653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016697, 0.239160, 0.970837,
		0.993956, -0.101400, 0.042074,
		0.108506, 0.965671, -0.236021,
		35.129501, 34.326584, 25.869846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460819, 33.853580, 26.567986>,  <35.053547, 33.650616, 26.035061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460819, 33.853580, 26.567986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288273, 34.183163, 26.421003>,  <35.184746, 34.380913, 26.332813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.288273, 34.183163, 26.421003>,  <35.460819, 33.853580, 26.567986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288273, 34.183163, 26.421003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088725, 0.366580, 0.926147,
		0.897805, 0.432107, -0.085023,
		-0.431362, 0.823956, -0.367456,
		35.158863, 34.430351, 26.310766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647972, 34.340683, 27.046978>,  <35.460819, 33.853580, 26.567986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647972, 34.340683, 27.046978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.325512, 34.518280, 26.890518>,  <35.132034, 34.624836, 26.796642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.325512, 34.518280, 26.890518>,  <35.647972, 34.340683, 27.046978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325512, 34.518280, 26.890518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270631, 0.311193, 0.910998,
		0.526196, 0.840257, -0.130711,
		-0.806149, 0.443990, -0.391148,
		35.083668, 34.651478, 26.773174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524940, 34.802265, 27.519470>,  <35.647972, 34.340683, 27.046978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524940, 34.802265, 27.519470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172760, 34.808834, 27.329931>,  <34.961452, 34.812775, 27.216208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172760, 34.808834, 27.329931>,  <35.524940, 34.802265, 27.519470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172760, 34.808834, 27.329931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432508, 0.381664, 0.816866,
		0.194268, 0.924155, -0.328933,
		-0.880453, 0.016425, -0.473850,
		34.908623, 34.813763, 27.187777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209435, 35.396069, 27.787193>,  <35.524940, 34.802265, 27.519470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209435, 35.396069, 27.787193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905190, 35.180237, 27.642792>,  <34.722645, 35.050735, 27.556150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.905190, 35.180237, 27.642792>,  <35.209435, 35.396069, 27.787193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905190, 35.180237, 27.642792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542902, 0.223737, 0.809444,
		-0.355993, 0.811659, -0.463118,
		-0.760610, -0.539584, -0.361002,
		34.677006, 35.018360, 27.534491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640789, 35.837234, 27.606207>,  <35.209435, 35.396069, 27.787193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640789, 35.837234, 27.606207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480595, 35.472393, 27.641239>,  <34.384480, 35.253487, 27.662258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.480595, 35.472393, 27.641239>,  <34.640789, 35.837234, 27.606207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480595, 35.472393, 27.641239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641961, 0.347499, 0.683469,
		-0.653832, 0.217497, -0.724706,
		-0.400487, -0.912107, 0.087581,
		34.360447, 35.198761, 27.667513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971699, 35.890194, 27.661175>,  <34.640789, 35.837234, 27.606207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971699, 35.890194, 27.661175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.017422, 35.521297, 27.808908>,  <34.044857, 35.299961, 27.897549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.017422, 35.521297, 27.808908>,  <33.971699, 35.890194, 27.661175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017422, 35.521297, 27.808908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623342, 0.222899, 0.749507,
		-0.773549, -0.315896, -0.549391,
		0.114307, -0.922239, 0.369335,
		34.051712, 35.244625, 27.919708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430168, 35.476471, 27.605761>,  <33.971699, 35.890194, 27.661175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430168, 35.476471, 27.605761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605564, 35.285358, 27.910248>,  <33.710804, 35.170692, 28.092939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605564, 35.285358, 27.910248>,  <33.430168, 35.476471, 27.605761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605564, 35.285358, 27.910248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797093, 0.184520, 0.574975,
		-0.415170, -0.858884, -0.299922,
		0.438494, -0.477778, 0.761217,
		33.737114, 35.142025, 28.138613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871334, 34.996292, 27.865568>,  <33.430168, 35.476471, 27.605761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871334, 34.996292, 27.865568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.149399, 35.101582, 28.133139>,  <33.316238, 35.164757, 28.293680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.149399, 35.101582, 28.133139>,  <32.871334, 34.996292, 27.865568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149399, 35.101582, 28.133139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716705, 0.325661, 0.616667,
		-0.055522, -0.908107, 0.415040,
		0.695162, 0.263223, 0.668927,
		33.357948, 35.180550, 28.333817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902950, 34.730309, 27.239958>,  <32.871334, 34.996292, 27.865568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902950, 34.730309, 27.239958> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507587, 34.670944, 27.227118>,  <32.270370, 34.635326, 27.219414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.507587, 34.670944, 27.227118>,  <32.902950, 34.730309, 27.239958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507587, 34.670944, 27.227118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076970, -0.307453, -0.948445,
		0.130891, -0.939918, 0.315311,
		-0.988404, -0.148412, -0.032103,
		32.211067, 34.626419, 27.217487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691868, 33.978592, 27.087355>,  <32.902950, 34.730309, 27.239958>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691868, 33.978592, 27.087355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.377827, 34.186543, 26.952686>,  <32.189404, 34.311314, 26.871885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.377827, 34.186543, 26.952686>,  <32.691868, 33.978592, 27.087355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377827, 34.186543, 26.952686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050845, -0.487637, -0.871565,
		-0.617280, -0.701382, 0.356411,
		-0.785099, 0.519878, -0.336670,
		32.142296, 34.342506, 26.851685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188667, 33.526882, 26.984491>,  <32.691868, 33.978592, 27.087355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188667, 33.526882, 26.984491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.117538, 33.840954, 26.747215>,  <32.074860, 34.029396, 26.604851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.117538, 33.840954, 26.747215>,  <32.188667, 33.526882, 26.984491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117538, 33.840954, 26.747215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155901, -0.617660, -0.770837,
		-0.971635, -0.044592, 0.232243,
		-0.177821, 0.785180, -0.593189,
		32.064194, 34.076508, 26.569260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664413, 33.313049, 26.586042>,  <32.188667, 33.526882, 26.984491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664413, 33.313049, 26.586042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.795933, 33.631229, 26.382416>,  <31.874844, 33.822136, 26.260239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.795933, 33.631229, 26.382416>,  <31.664413, 33.313049, 26.586042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795933, 33.631229, 26.382416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210473, -0.463761, -0.860597,
		-0.920649, 0.390106, 0.014938,
		0.328796, 0.795451, -0.509068,
		31.894571, 33.869865, 26.229696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223658, 33.388771, 25.976727>,  <31.664413, 33.313049, 26.586042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223658, 33.388771, 25.976727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.543205, 33.610245, 25.882710>,  <31.734934, 33.743130, 25.826300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.543205, 33.610245, 25.882710>,  <31.223658, 33.388771, 25.976727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543205, 33.610245, 25.882710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110019, -0.249663, -0.962062,
		-0.591356, 0.794422, -0.138533,
		0.798870, 0.553680, -0.235041,
		31.782866, 33.776348, 25.812197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097574, 33.680420, 25.314724>,  <31.223658, 33.388771, 25.976727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097574, 33.680420, 25.314724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.494959, 33.700645, 25.355677>,  <31.733389, 33.712780, 25.380247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.494959, 33.700645, 25.355677>,  <31.097574, 33.680420, 25.314724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494959, 33.700645, 25.355677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113752, -0.360072, -0.925964,
		-0.009956, 0.931553, -0.363469,
		0.993459, 0.050565, 0.102381,
		31.792997, 33.715816, 25.386391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349865, 33.806965, 24.655148>,  <31.097574, 33.680420, 25.314724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349865, 33.806965, 24.655148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703733, 33.700565, 24.808300>,  <31.916056, 33.636726, 24.900192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.703733, 33.700565, 24.808300>,  <31.349865, 33.806965, 24.655148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703733, 33.700565, 24.808300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299681, -0.304660, -0.904087,
		0.357135, 0.914564, -0.189810,
		0.884673, -0.265999, 0.382882,
		31.969135, 33.620766, 24.923164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916384, 34.177467, 24.295765>,  <31.349865, 33.806965, 24.655148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916384, 34.177467, 24.295765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058521, 33.838840, 24.454287>,  <32.143803, 33.635666, 24.549400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.058521, 33.838840, 24.454287>,  <31.916384, 34.177467, 24.295765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058521, 33.838840, 24.454287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397857, -0.246671, -0.883664,
		0.845837, 0.471677, 0.249160,
		0.355344, -0.846566, 0.396304,
		32.165123, 33.584869, 24.573177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609924, 34.024330, 24.030731>,  <31.916384, 34.177467, 24.295765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609924, 34.024330, 24.030731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469757, 33.667477, 24.144789>,  <32.385658, 33.453365, 24.213223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469757, 33.667477, 24.144789>,  <32.609924, 34.024330, 24.030731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469757, 33.667477, 24.144789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388156, -0.415401, -0.822664,
		0.852376, -0.177592, 0.491850,
		-0.350414, -0.892134, 0.285144,
		32.364632, 33.399837, 24.230331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160412, 33.476734, 23.842064>,  <32.609924, 34.024330, 24.030731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160412, 33.476734, 23.842064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.810932, 33.289314, 23.894386>,  <32.601246, 33.176861, 23.925779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.810932, 33.289314, 23.894386>,  <33.160412, 33.476734, 23.842064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810932, 33.289314, 23.894386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216260, -0.614953, -0.758330,
		0.435757, -0.634264, 0.638612,
		-0.873698, -0.468554, 0.130804,
		32.548824, 33.148746, 23.933628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334297, 32.818268, 23.778753>,  <33.160412, 33.476734, 23.842064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334297, 32.818268, 23.778753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.939911, 32.819469, 23.711977>,  <32.703281, 32.820190, 23.671911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.939911, 32.819469, 23.711977>,  <33.334297, 32.818268, 23.778753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939911, 32.819469, 23.711977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147074, -0.457651, -0.876884,
		-0.079038, -0.889127, 0.450784,
		-0.985963, 0.003008, -0.166939,
		32.644123, 32.820374, 23.661896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133934, 32.150871, 23.487200>,  <33.334297, 32.818268, 23.778753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133934, 32.150871, 23.487200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840111, 32.383415, 23.347231>,  <32.663818, 32.522942, 23.263248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840111, 32.383415, 23.347231>,  <33.133934, 32.150871, 23.487200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840111, 32.383415, 23.347231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011448, -0.526240, -0.850259,
		-0.678451, -0.620557, 0.393208,
		-0.734556, 0.581361, -0.349924,
		32.619743, 32.557823, 23.242254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.753834, 31.668606, 23.045441>,  <33.133934, 32.150871, 23.487200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.753834, 31.668606, 23.045441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.602104, 32.028294, 22.958254>,  <32.511066, 32.244106, 22.905941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.602104, 32.028294, 22.958254>,  <32.753834, 31.668606, 23.045441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602104, 32.028294, 22.958254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228895, -0.319452, -0.919542,
		-0.896503, -0.298916, 0.327005,
		-0.379328, 0.899222, -0.217969,
		32.488304, 32.298061, 22.892862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065887, 31.609962, 22.767538>,  <32.753834, 31.668606, 23.045441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065887, 31.609962, 22.767538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.182041, 31.971882, 22.642948>,  <32.251732, 32.189034, 22.568193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.182041, 31.971882, 22.642948>,  <32.065887, 31.609962, 22.767538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182041, 31.971882, 22.642948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170767, -0.271277, -0.947232,
		-0.941549, 0.328252, 0.075735,
		0.290385, 0.904798, -0.311475,
		32.269157, 32.243320, 22.549505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521257, 31.862686, 22.275089>,  <32.065887, 31.609962, 22.767538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521257, 31.862686, 22.275089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866154, 32.046974, 22.190922>,  <32.073093, 32.157547, 22.140421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866154, 32.046974, 22.190922>,  <31.521257, 31.862686, 22.275089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866154, 32.046974, 22.190922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042193, -0.348657, -0.936300,
		-0.504734, 0.816197, -0.281188,
		0.862243, 0.460719, -0.210417,
		32.124828, 32.185188, 22.127796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412685, 32.349224, 21.826790>,  <31.521257, 31.862686, 22.275089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412685, 32.349224, 21.826790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.793255, 32.232132, 21.788637>,  <32.021595, 32.161877, 21.765745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.793255, 32.232132, 21.788637>,  <31.412685, 32.349224, 21.826790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793255, 32.232132, 21.788637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173875, -0.255214, -0.951122,
		0.254084, 0.921505, -0.293716,
		0.951425, -0.292735, -0.095381,
		32.078682, 32.144310, 21.760023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433867, 32.221394, 21.156996>,  <31.412685, 32.349224, 21.826790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433867, 32.221394, 21.156996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.796360, 32.085487, 21.257631>,  <32.013855, 32.003944, 21.318012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.796360, 32.085487, 21.257631>,  <31.433867, 32.221394, 21.156996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796360, 32.085487, 21.257631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064299, -0.477408, -0.876326,
		0.417854, 0.810335, -0.410798,
		0.906236, -0.339762, 0.251591,
		32.068230, 31.983559, 21.333109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821362, 32.326771, 20.565342>,  <31.433867, 32.221394, 21.156996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821362, 32.326771, 20.565342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.004578, 32.038631, 20.773689>,  <32.114506, 31.865749, 20.898697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.004578, 32.038631, 20.773689>,  <31.821362, 32.326771, 20.565342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004578, 32.038631, 20.773689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122493, -0.529213, -0.839601,
		0.880452, 0.448373, -0.154163,
		0.458040, -0.720344, 0.520869,
		32.141991, 31.822529, 20.929951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557442, 32.276535, 20.277794>,  <31.821362, 32.326771, 20.565342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557442, 32.276535, 20.277794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480297, 31.929571, 20.461275>,  <32.434010, 31.721394, 20.571363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480297, 31.929571, 20.461275>,  <32.557442, 32.276535, 20.277794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480297, 31.929571, 20.461275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192701, -0.491860, -0.849082,
		0.962118, -0.075364, 0.262011,
		-0.192863, -0.867406, 0.458705,
		32.422440, 31.669350, 20.598886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.076870, 31.786894, 19.924961>,  <32.557442, 32.276535, 20.277794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.076870, 31.786894, 19.924961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792126, 31.571623, 20.105455>,  <32.621277, 31.442459, 20.213753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.792126, 31.571623, 20.105455>,  <33.076870, 31.786894, 19.924961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792126, 31.571623, 20.105455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080675, -0.700902, -0.708680,
		0.697670, -0.468080, 0.542364,
		-0.711863, -0.538180, 0.451236,
		32.578568, 31.410170, 20.240826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379005, 31.148134, 19.834578>,  <33.076870, 31.786894, 19.924961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379005, 31.148134, 19.834578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993206, 31.082060, 19.916994>,  <32.761726, 31.042416, 19.966444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.993206, 31.082060, 19.916994>,  <33.379005, 31.148134, 19.834578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993206, 31.082060, 19.916994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065295, -0.606831, -0.792144,
		0.255884, -0.777477, 0.574503,
		-0.964500, -0.165185, 0.206044,
		32.703857, 31.032505, 19.978807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264694, 30.385164, 19.903419>,  <33.379005, 31.148134, 19.834578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264694, 30.385164, 19.903419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920494, 30.569141, 19.815796>,  <32.713974, 30.679527, 19.763222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.920494, 30.569141, 19.815796>,  <33.264694, 30.385164, 19.903419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920494, 30.569141, 19.815796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233110, -0.737825, -0.633462,
		-0.452980, -0.494033, 0.742119,
		-0.860505, 0.459941, -0.219056,
		32.662342, 30.707125, 19.750078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740211, 29.916864, 19.818674>,  <33.264694, 30.385164, 19.903419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740211, 29.916864, 19.818674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.561886, 30.219122, 19.626738>,  <32.454891, 30.400476, 19.511576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.561886, 30.219122, 19.626738>,  <32.740211, 29.916864, 19.818674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561886, 30.219122, 19.626738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177914, -0.600168, -0.779836,
		-0.877266, -0.262293, 0.402004,
		-0.445816, 0.755646, -0.479842,
		32.428143, 30.445816, 19.482784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150227, 29.652914, 19.525167>,  <32.740211, 29.916864, 19.818674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150227, 29.652914, 19.525167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229698, 29.986109, 19.318611>,  <32.277382, 30.186026, 19.194677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229698, 29.986109, 19.318611>,  <32.150227, 29.652914, 19.525167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229698, 29.986109, 19.318611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298239, -0.450520, -0.841478,
		-0.933585, 0.321188, 0.158923,
		0.198675, 0.832988, -0.516390,
		32.289299, 30.236006, 19.163694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593109, 29.664715, 18.987038>,  <32.150227, 29.652914, 19.525167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593109, 29.664715, 18.987038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.888851, 29.909698, 18.875147>,  <32.066296, 30.056688, 18.808012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.888851, 29.909698, 18.875147>,  <31.593109, 29.664715, 18.987038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888851, 29.909698, 18.875147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036498, -0.378378, -0.924931,
		-0.672326, 0.694062, -0.257402,
		0.739355, 0.612461, -0.279725,
		32.110657, 30.093437, 18.791229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366999, 29.862888, 18.321005>,  <31.593109, 29.664715, 18.987038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366999, 29.862888, 18.321005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759686, 29.937321, 18.337042>,  <31.995298, 29.981979, 18.346664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.759686, 29.937321, 18.337042>,  <31.366999, 29.862888, 18.321005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759686, 29.937321, 18.337042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118382, -0.431917, -0.894110,
		-0.149059, 0.882509, -0.446049,
		0.981716, 0.186079, 0.040092,
		32.054199, 29.993145, 18.349070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521511, 30.194792, 17.669178>,  <31.366999, 29.862888, 18.321005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521511, 30.194792, 17.669178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859358, 30.026146, 17.801155>,  <32.062065, 29.924957, 17.880341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.859358, 30.026146, 17.801155>,  <31.521511, 30.194792, 17.669178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859358, 30.026146, 17.801155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154780, -0.397670, -0.904379,
		0.512509, 0.814923, -0.270621,
		0.844617, -0.421616, 0.329943,
		32.112743, 29.899662, 17.900139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469782, 30.836180, 17.243191>,  <31.521511, 30.194792, 17.669178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469782, 30.836180, 17.243191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.121271, 30.921677, 17.066469>,  <30.912165, 30.972975, 16.960436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.121271, 30.921677, 17.066469>,  <31.469782, 30.836180, 17.243191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.121271, 30.921677, 17.066469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339194, 0.388365, 0.856808,
		0.354719, 0.896374, -0.265872,
		-0.871276, 0.213744, -0.441805,
		30.859888, 30.985800, 16.933928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309132, 31.526878, 17.407160>,  <31.469782, 30.836180, 17.243191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309132, 31.526878, 17.407160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.965200, 31.350332, 17.304482>,  <30.758842, 31.244406, 17.242874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.965200, 31.350332, 17.304482>,  <31.309132, 31.526878, 17.407160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965200, 31.350332, 17.304482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398893, 0.266849, 0.877312,
		-0.318715, 0.856732, -0.405502,
		-0.859829, -0.441364, -0.256695,
		30.707253, 31.217922, 17.227472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804993, 32.000633, 17.430191>,  <31.309132, 31.526878, 17.407160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804993, 32.000633, 17.430191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.620102, 31.647318, 17.461567>,  <30.509167, 31.435329, 17.480392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.620102, 31.647318, 17.461567>,  <30.804993, 32.000633, 17.430191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620102, 31.647318, 17.461567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446045, 0.308044, 0.840329,
		-0.766413, 0.353436, -0.536371,
		-0.462229, -0.883284, 0.078441,
		30.481434, 31.382332, 17.485100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244026, 32.171650, 17.596004>,  <30.804993, 32.000633, 17.430191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244026, 32.171650, 17.596004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.212107, 31.789392, 17.709410>,  <30.192955, 31.560038, 17.777452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.212107, 31.789392, 17.709410>,  <30.244026, 32.171650, 17.596004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212107, 31.789392, 17.709410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427094, 0.289769, 0.856519,
		-0.900679, -0.052738, -0.431272,
		-0.079798, -0.955642, 0.283513,
		30.188168, 31.502699, 17.794464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480686, 32.133976, 17.817335>,  <30.244026, 32.171650, 17.596004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480686, 32.133976, 17.817335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.708124, 31.858406, 17.997149>,  <29.844587, 31.693064, 18.105038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.708124, 31.858406, 17.997149>,  <29.480686, 32.133976, 17.817335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708124, 31.858406, 17.997149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382102, 0.262753, 0.885979,
		-0.728488, -0.675534, -0.113839,
		0.568597, -0.688923, 0.449535,
		29.878704, 31.651730, 18.132010>
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
