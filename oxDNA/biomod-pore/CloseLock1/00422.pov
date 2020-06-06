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
	<24.412178, 35.170040, 34.874050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404861, 34.904068, 35.172726>,  <24.400471, 34.744484, 35.351929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.404861, 34.904068, 35.172726>,  <24.412178, 35.170040, 34.874050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.404861, 34.904068, 35.172726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946008, -0.253238, -0.202333,
		0.323625, 0.702669, 0.633658,
		-0.018294, -0.664926, 0.746686,
		24.399374, 34.704590, 35.396732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.097832, 35.166557, 35.112999>,  <24.412178, 35.170040, 34.874050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.097832, 35.166557, 35.112999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915096, 34.821548, 35.200039>,  <24.805454, 34.614544, 35.252262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.915096, 34.821548, 35.200039>,  <25.097832, 35.166557, 35.112999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.915096, 34.821548, 35.200039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804189, -0.505013, -0.313437,
		0.380236, 0.031799, 0.924343,
		-0.456838, -0.862526, 0.217596,
		24.778046, 34.562790, 35.265316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.455334, 34.786724, 35.587639>,  <25.097832, 35.166557, 35.112999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.455334, 34.786724, 35.587639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247383, 34.502834, 35.397472>,  <25.122612, 34.332500, 35.283371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.247383, 34.502834, 35.397472>,  <25.455334, 34.786724, 35.587639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.247383, 34.502834, 35.397472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851558, -0.474639, -0.222634,
		-0.067644, -0.520590, 0.851123,
		-0.519878, -0.709721, -0.475419,
		25.091419, 34.289917, 35.254848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.612637, 34.182972, 35.755409>,  <25.455334, 34.786724, 35.587639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.612637, 34.182972, 35.755409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495773, 34.134705, 35.375919>,  <25.425655, 34.105743, 35.148224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495773, 34.134705, 35.375919>,  <25.612637, 34.182972, 35.755409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495773, 34.134705, 35.375919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824562, -0.534337, -0.185959,
		-0.484501, -0.836614, 0.255609,
		-0.292157, -0.120668, -0.948727,
		25.408127, 34.098503, 35.091301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.880428, 33.526783, 35.629681>,  <25.612637, 34.182972, 35.755409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.880428, 33.526783, 35.629681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801437, 33.714218, 35.285255>,  <25.754044, 33.826679, 35.078602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.801437, 33.714218, 35.285255>,  <25.880428, 33.526783, 35.629681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.801437, 33.714218, 35.285255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810136, -0.416570, -0.412492,
		-0.551982, -0.779034, -0.297358,
		-0.197475, 0.468588, -0.861063,
		25.742195, 33.854794, 35.026936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806185, 33.077553, 34.915230>,  <25.880428, 33.526783, 35.629681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806185, 33.077553, 34.915230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981066, 33.435654, 34.880882>,  <26.085995, 33.650517, 34.860275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981066, 33.435654, 34.880882>,  <25.806185, 33.077553, 34.915230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981066, 33.435654, 34.880882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893574, -0.443218, -0.071290,
		-0.101880, -0.045561, -0.993753,
		0.437201, 0.895255, -0.085867,
		26.112226, 33.704231, 34.855122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275581, 33.064308, 34.368801>,  <25.806185, 33.077553, 34.915230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275581, 33.064308, 34.368801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416187, 33.370338, 34.584618>,  <26.500551, 33.553955, 34.714108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.416187, 33.370338, 34.584618>,  <26.275581, 33.064308, 34.368801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.416187, 33.370338, 34.584618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897975, -0.438507, 0.036772,
		0.264724, 0.471565, -0.841159,
		0.351513, 0.765074, 0.539537,
		26.521641, 33.599861, 34.746479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947924, 32.980423, 34.499283>,  <26.275581, 33.064308, 34.368801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947924, 32.980423, 34.499283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955862, 33.334740, 34.684750>,  <26.960625, 33.547329, 34.796028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.955862, 33.334740, 34.684750>,  <26.947924, 32.980423, 34.499283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.955862, 33.334740, 34.684750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952905, -0.157128, 0.259391,
		0.302620, 0.436678, -0.847192,
		0.019847, 0.885790, 0.463662,
		26.961817, 33.600475, 34.823849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552851, 33.342636, 34.273029>,  <26.947924, 32.980423, 34.499283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552851, 33.342636, 34.273029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440687, 33.508282, 34.619411>,  <27.373388, 33.607670, 34.827240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440687, 33.508282, 34.619411>,  <27.552851, 33.342636, 34.273029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440687, 33.508282, 34.619411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946454, -0.031079, 0.321338,
		0.159985, 0.909693, -0.383228,
		-0.280409, 0.414117, 0.865955,
		27.356565, 33.632515, 34.879196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864155, 34.017216, 34.435974>,  <27.552851, 33.342636, 34.273029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864155, 34.017216, 34.435974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783840, 33.837029, 34.783943>,  <27.735651, 33.728916, 34.992725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.783840, 33.837029, 34.783943>,  <27.864155, 34.017216, 34.435974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783840, 33.837029, 34.783943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977901, -0.144987, 0.150629,
		0.058273, 0.880940, 0.469625,
		-0.200785, -0.450469, 0.869921,
		27.723604, 33.701889, 35.044918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418222, 34.217064, 34.943413>,  <27.864155, 34.017216, 34.435974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418222, 34.217064, 34.943413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247995, 33.883801, 35.084682>,  <28.145859, 33.683842, 35.169445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.247995, 33.883801, 35.084682>,  <28.418222, 34.217064, 34.943413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.247995, 33.883801, 35.084682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903665, -0.411874, 0.117259,
		0.047767, 0.369052, 0.928181,
		-0.425568, -0.833163, 0.353173,
		28.120325, 33.633850, 35.190636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655539, 34.115341, 35.672756>,  <28.418222, 34.217064, 34.943413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655539, 34.115341, 35.672756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554491, 33.749763, 35.545704>,  <28.493862, 33.530418, 35.469475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.554491, 33.749763, 35.545704>,  <28.655539, 34.115341, 35.672756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554491, 33.749763, 35.545704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841294, -0.369628, 0.394462,
		-0.477920, -0.167568, 0.862272,
		-0.252621, -0.913945, -0.317627,
		28.478704, 33.475578, 35.450417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982841, 33.712196, 36.144047>,  <28.655539, 34.115341, 35.672756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982841, 33.712196, 36.144047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868271, 33.467869, 35.848789>,  <28.799528, 33.321274, 35.671635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.868271, 33.467869, 35.848789>,  <28.982841, 33.712196, 36.144047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868271, 33.467869, 35.848789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657848, -0.685495, 0.311982,
		-0.696560, -0.396227, 0.598171,
		-0.286427, -0.610820, -0.738146,
		28.782343, 33.284622, 35.627346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876907, 33.096397, 36.422180>,  <28.982841, 33.712196, 36.144047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876907, 33.096397, 36.422180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929062, 33.013050, 36.034451>,  <28.960356, 32.963039, 35.801815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.929062, 33.013050, 36.034451>,  <28.876907, 33.096397, 36.422180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929062, 33.013050, 36.034451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621404, -0.744639, 0.243660,
		-0.772564, -0.634110, 0.032389,
		0.130389, -0.208370, -0.969320,
		28.968178, 32.950539, 35.743656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814667, 32.216465, 36.344101>,  <28.876907, 33.096397, 36.422180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814667, 32.216465, 36.344101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025253, 32.362930, 36.037178>,  <29.151606, 32.450809, 35.853024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025253, 32.362930, 36.037178>,  <28.814667, 32.216465, 36.344101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025253, 32.362930, 36.037178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663886, -0.740849, 0.101970,
		-0.531119, -0.563086, -0.633125,
		0.526468, 0.366164, -0.767304,
		29.183193, 32.472778, 35.806988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891060, 31.664925, 35.964489>,  <28.814667, 32.216465, 36.344101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891060, 31.664925, 35.964489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178408, 31.898405, 35.813103>,  <29.350817, 32.038494, 35.722271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178408, 31.898405, 35.813103>,  <28.891060, 31.664925, 35.964489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178408, 31.898405, 35.813103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660816, -0.742588, 0.109023,
		-0.217410, -0.328418, -0.919170,
		0.718370, 0.583700, -0.378470,
		29.393919, 32.073517, 35.699562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266226, 31.303823, 35.409332>,  <28.891060, 31.664925, 35.964489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266226, 31.303823, 35.409332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510691, 31.586329, 35.552258>,  <29.657370, 31.755831, 35.638012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510691, 31.586329, 35.552258>,  <29.266226, 31.303823, 35.409332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510691, 31.586329, 35.552258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790336, -0.569067, -0.227005,
		0.043012, 0.421136, -0.905977,
		0.611162, 0.706262, 0.357316,
		29.694038, 31.798206, 35.659451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860603, 31.122356, 35.008114>,  <29.266226, 31.303823, 35.409332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860603, 31.122356, 35.008114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979609, 31.384344, 35.285961>,  <30.051012, 31.541536, 35.452671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979609, 31.384344, 35.285961>,  <29.860603, 31.122356, 35.008114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979609, 31.384344, 35.285961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866427, -0.490812, 0.091698,
		0.400988, 0.574558, -0.713507,
		0.297512, 0.654971, 0.694622,
		30.068863, 31.580835, 35.494347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508532, 31.206230, 34.867165>,  <29.860603, 31.122356, 35.008114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508532, 31.206230, 34.867165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461660, 31.317221, 35.248589>,  <30.433538, 31.383816, 35.477444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461660, 31.317221, 35.248589>,  <30.508532, 31.206230, 34.867165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461660, 31.317221, 35.248589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808387, -0.531088, 0.253881,
		0.576870, 0.800594, -0.162078,
		-0.117178, 0.277478, 0.953559,
		30.426508, 31.400465, 35.534657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145828, 31.584373, 35.063686>,  <30.508532, 31.206230, 34.867165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145828, 31.584373, 35.063686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993881, 31.422716, 35.396523>,  <30.902714, 31.325722, 35.596222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993881, 31.422716, 35.396523>,  <31.145828, 31.584373, 35.063686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993881, 31.422716, 35.396523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867048, -0.469040, 0.168017,
		0.322379, 0.785283, 0.528585,
		-0.379868, -0.404143, 0.832087,
		30.879921, 31.301474, 35.646149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645824, 31.549963, 35.520103>,  <31.145828, 31.584373, 35.063686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645824, 31.549963, 35.520103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397161, 31.273640, 35.667793>,  <31.247963, 31.107845, 35.756409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.397161, 31.273640, 35.667793>,  <31.645824, 31.549963, 35.520103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397161, 31.273640, 35.667793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775965, -0.607447, 0.169964,
		0.106872, 0.392165, 0.913666,
		-0.621657, -0.690808, 0.369226,
		31.210665, 31.066397, 35.778561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868099, 31.338148, 36.263344>,  <31.645824, 31.549963, 35.520103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868099, 31.338148, 36.263344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635920, 31.043587, 36.124325>,  <31.496613, 30.866850, 36.040913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635920, 31.043587, 36.124325>,  <31.868099, 31.338148, 36.263344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635920, 31.043587, 36.124325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615486, -0.676215, 0.404859,
		-0.533158, 0.021086, 0.845753,
		-0.580448, -0.736403, -0.347551,
		31.461786, 30.822666, 36.020058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942131, 30.867941, 36.681419>,  <31.868099, 31.338148, 36.263344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942131, 30.867941, 36.681419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809900, 30.651197, 36.372330>,  <31.730562, 30.521151, 36.186874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809900, 30.651197, 36.372330>,  <31.942131, 30.867941, 36.681419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809900, 30.651197, 36.372330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552137, -0.775061, 0.307286,
		-0.765417, -0.325069, 0.555398,
		-0.330578, -0.541858, -0.772727,
		31.710728, 30.488640, 36.140511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965948, 30.136662, 36.972012>,  <31.942131, 30.867941, 36.681419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965948, 30.136662, 36.972012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935390, 30.113977, 36.573826>,  <31.917055, 30.100367, 36.334915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935390, 30.113977, 36.573826>,  <31.965948, 30.136662, 36.972012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935390, 30.113977, 36.573826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573510, -0.819194, 0.002654,
		-0.815628, -0.570706, 0.095106,
		-0.076396, -0.056709, -0.995463,
		31.912472, 30.096964, 36.275188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786791, 29.426224, 36.862289>,  <31.965948, 30.136662, 36.972012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786791, 29.426224, 36.862289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951498, 29.558477, 36.522614>,  <32.050323, 29.637831, 36.318810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951498, 29.558477, 36.522614>,  <31.786791, 29.426224, 36.862289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951498, 29.558477, 36.522614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655356, -0.754944, 0.023840,
		-0.633209, -0.566339, -0.527547,
		0.411770, 0.330635, -0.849191,
		32.075027, 29.657667, 36.267857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835552, 28.854830, 36.291248>,  <31.786791, 29.426224, 36.862289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835552, 28.854830, 36.291248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130440, 29.125011, 36.284660>,  <32.307373, 29.287121, 36.280708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130440, 29.125011, 36.284660>,  <31.835552, 28.854830, 36.291248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130440, 29.125011, 36.284660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672796, -0.731643, 0.109746,
		0.062078, -0.091988, -0.993823,
		0.737219, 0.675453, -0.016470,
		32.351604, 29.327648, 36.279720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173050, 28.676018, 35.732162>,  <31.835552, 28.854830, 36.291248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173050, 28.676018, 35.732162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374081, 28.855923, 36.027496>,  <32.494698, 28.963865, 36.204697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374081, 28.855923, 36.027496>,  <32.173050, 28.676018, 35.732162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374081, 28.855923, 36.027496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634976, -0.771606, 0.037806,
		0.586703, 0.449822, -0.673379,
		0.502577, 0.449761, 0.738330,
		32.524853, 28.990850, 36.248997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881962, 28.705107, 35.647118>,  <32.173050, 28.676018, 35.732162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881962, 28.705107, 35.647118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779530, 28.674978, 36.032604>,  <32.718071, 28.656900, 36.263897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779530, 28.674978, 36.032604>,  <32.881962, 28.705107, 35.647118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779530, 28.674978, 36.032604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563778, -0.821478, 0.085607,
		0.785223, 0.565244, 0.252832,
		-0.256085, -0.075321, 0.963715,
		32.702705, 28.652382, 36.321720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495842, 28.376455, 35.849434>,  <32.881962, 28.705107, 35.647118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495842, 28.376455, 35.849434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202374, 28.304077, 36.111423>,  <33.026291, 28.260651, 36.268616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202374, 28.304077, 36.111423>,  <33.495842, 28.376455, 35.849434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202374, 28.304077, 36.111423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456678, -0.845049, 0.278096,
		0.503162, 0.503141, 0.702621,
		-0.733671, -0.180944, 0.654970,
		32.982273, 28.249794, 36.307915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535297, 29.154200, 35.954945>,  <33.495842, 28.376455, 35.849434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535297, 29.154200, 35.954945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860256, 29.386713, 35.936520>,  <34.055233, 29.526220, 35.925465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.860256, 29.386713, 35.936520>,  <33.535297, 29.154200, 35.954945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860256, 29.386713, 35.936520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370736, 0.453929, -0.810249,
		-0.450075, 0.675320, 0.584273,
		0.812396, 0.581284, -0.046064,
		34.103973, 29.561098, 35.922699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404362, 29.864611, 35.990501>,  <33.535297, 29.154200, 35.954945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404362, 29.864611, 35.990501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742798, 29.831860, 35.779816>,  <33.945858, 29.812210, 35.653404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742798, 29.831860, 35.779816>,  <33.404362, 29.864611, 35.990501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742798, 29.831860, 35.779816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493369, 0.253782, -0.831974,
		0.201790, 0.963790, 0.174327,
		0.846090, -0.081876, -0.526715,
		33.996624, 29.807297, 35.621799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808994, 30.476068, 35.776478>,  <33.404362, 29.864611, 35.990501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808994, 30.476068, 35.776478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779152, 30.159796, 35.533413>,  <33.761246, 29.970032, 35.387573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779152, 30.159796, 35.533413>,  <33.808994, 30.476068, 35.776478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779152, 30.159796, 35.533413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678942, 0.486591, -0.549788,
		0.730392, 0.371554, -0.573128,
		-0.074604, -0.790681, -0.607666,
		33.756771, 29.922592, 35.351112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041229, 30.555382, 35.034286>,  <33.808994, 30.476068, 35.776478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041229, 30.555382, 35.034286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750900, 30.282909, 34.995964>,  <33.576702, 30.119427, 34.972973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750900, 30.282909, 34.995964>,  <34.041229, 30.555382, 35.034286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750900, 30.282909, 34.995964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473109, 0.595433, -0.649328,
		0.499355, -0.425969, -0.754450,
		-0.725819, -0.681182, -0.095802,
		33.533154, 30.078554, 34.967224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725197, 30.868170, 34.949120>,  <34.041229, 30.555382, 35.034286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725197, 30.868170, 34.949120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998341, 30.836369, 34.658638>,  <35.162228, 30.817287, 34.484348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.998341, 30.836369, 34.658638>,  <34.725197, 30.868170, 34.949120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998341, 30.836369, 34.658638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140739, 0.961123, -0.237561,
		0.716862, 0.264427, 0.645126,
		0.682863, -0.079504, -0.726207,
		35.203201, 30.812517, 34.440777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355412, 31.335426, 35.046837>,  <34.725197, 30.868170, 34.949120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355412, 31.335426, 35.046837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286171, 31.278913, 34.656948>,  <35.244625, 31.245007, 34.423016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286171, 31.278913, 34.656948>,  <35.355412, 31.335426, 35.046837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286171, 31.278913, 34.656948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120534, 0.985258, -0.121403,
		0.977501, 0.096472, -0.187577,
		-0.173099, -0.141281, -0.974719,
		35.234241, 31.236528, 34.364532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409302, 31.935165, 34.846931>,  <35.355412, 31.335426, 35.046837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409302, 31.935165, 34.846931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271122, 31.773922, 34.507954>,  <35.188213, 31.677176, 34.304565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.271122, 31.773922, 34.507954>,  <35.409302, 31.935165, 34.846931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271122, 31.773922, 34.507954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309767, 0.901408, -0.302503,
		0.885837, 0.158010, -0.436264,
		-0.345453, -0.403108, -0.847446,
		35.167484, 31.652988, 34.253719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635342, 32.365086, 34.350769>,  <35.409302, 31.935165, 34.846931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635342, 32.365086, 34.350769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298801, 32.159351, 34.284336>,  <35.096878, 32.035912, 34.244476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298801, 32.159351, 34.284336>,  <35.635342, 32.365086, 34.350769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298801, 32.159351, 34.284336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476242, 0.850779, -0.222192,
		0.255580, -0.107847, -0.960754,
		-0.841352, -0.514339, -0.166080,
		35.046394, 32.005051, 34.234512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419132, 32.527191, 33.706207>,  <35.635342, 32.365086, 34.350769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419132, 32.527191, 33.706207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098721, 32.403835, 33.911434>,  <34.906471, 32.329823, 34.034569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.098721, 32.403835, 33.911434>,  <35.419132, 32.527191, 33.706207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098721, 32.403835, 33.911434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529724, 0.764375, -0.367592,
		-0.278814, -0.566238, -0.775653,
		-0.801034, -0.308392, 0.513068,
		34.858410, 32.311317, 34.065353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832695, 32.864586, 33.382462>,  <35.419132, 32.527191, 33.706207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832695, 32.864586, 33.382462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653538, 32.731064, 33.714237>,  <34.546043, 32.650951, 33.913303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653538, 32.731064, 33.714237>,  <34.832695, 32.864586, 33.382462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653538, 32.731064, 33.714237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741737, 0.656708, -0.136241,
		-0.499221, -0.676246, -0.541728,
		-0.447889, -0.333805, 0.829439,
		34.519173, 32.630920, 33.963070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105625, 33.009262, 33.098011>,  <34.832695, 32.864586, 33.382462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105625, 33.009262, 33.098011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079655, 32.926750, 33.488544>,  <34.064072, 32.877243, 33.722866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079655, 32.926750, 33.488544>,  <34.105625, 33.009262, 33.098011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079655, 32.926750, 33.488544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832092, 0.551258, 0.061140,
		-0.550825, -0.808432, -0.207435,
		-0.064923, -0.206282, 0.976336,
		34.060177, 32.864864, 33.781445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524696, 32.701572, 33.117088>,  <34.105625, 33.009262, 33.098011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524696, 32.701572, 33.117088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569946, 32.837311, 33.490623>,  <33.597095, 32.918755, 33.714745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569946, 32.837311, 33.490623>,  <33.524696, 32.701572, 33.117088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569946, 32.837311, 33.490623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916356, 0.398922, -0.033955,
		-0.384050, -0.851883, 0.356093,
		0.113128, 0.339348, 0.933833,
		33.603886, 32.939114, 33.770775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848034, 32.666492, 33.465969>,  <33.524696, 32.701572, 33.117088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848034, 32.666492, 33.465969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054726, 32.887428, 33.727627>,  <33.178741, 33.019989, 33.884621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.054726, 32.887428, 33.727627>,  <32.848034, 32.666492, 33.465969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.054726, 32.887428, 33.727627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798134, 0.587248, 0.134620,
		-0.309788, -0.591657, 0.744293,
		0.516734, 0.552342, 0.654144,
		33.209747, 33.053131, 33.923870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615330, 32.590317, 34.152374>,  <32.848034, 32.666492, 33.465969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615330, 32.590317, 34.152374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761044, 32.961746, 34.123966>,  <32.848473, 33.184605, 34.106922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761044, 32.961746, 34.123966>,  <32.615330, 32.590317, 34.152374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761044, 32.961746, 34.123966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910006, 0.371134, 0.184794,
		0.197955, -0.002685, 0.980208,
		0.364284, 0.928576, -0.071024,
		32.870327, 33.240318, 34.102657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250427, 33.007565, 34.723347>,  <32.615330, 32.590317, 34.152374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250427, 33.007565, 34.723347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432381, 33.298592, 34.517929>,  <32.541553, 33.473206, 34.394676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432381, 33.298592, 34.517929>,  <32.250427, 33.007565, 34.723347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432381, 33.298592, 34.517929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711712, 0.643628, 0.281439,
		0.535298, 0.237476, 0.810593,
		0.454886, 0.727563, -0.513548,
		32.568848, 33.516861, 34.363865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441013, 33.737999, 35.106480>,  <32.250427, 33.007565, 34.723347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441013, 33.737999, 35.106480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362305, 33.789516, 34.717697>,  <32.315079, 33.820427, 34.484428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362305, 33.789516, 34.717697>,  <32.441013, 33.737999, 35.106480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362305, 33.789516, 34.717697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649063, 0.725892, 0.227591,
		0.734846, 0.675642, -0.059238,
		-0.196770, 0.128795, -0.971953,
		32.303272, 33.828156, 34.426109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209824, 34.309471, 35.256248>,  <32.441013, 33.737999, 35.106480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209824, 34.309471, 35.256248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126030, 34.269859, 34.867134>,  <32.075752, 34.246090, 34.633667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.126030, 34.269859, 34.867134>,  <32.209824, 34.309471, 35.256248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126030, 34.269859, 34.867134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721681, 0.686927, 0.085481,
		0.659766, 0.719947, -0.215372,
		-0.209486, -0.099032, -0.972784,
		32.063183, 34.240150, 34.575298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177383, 35.020779, 35.038139>,  <32.209824, 34.309471, 35.256248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177383, 35.020779, 35.038139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974411, 34.774525, 34.796974>,  <31.852627, 34.626770, 34.652275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974411, 34.774525, 34.796974>,  <32.177383, 35.020779, 35.038139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974411, 34.774525, 34.796974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833366, 0.528543, 0.161689,
		0.219123, 0.584493, -0.781251,
		-0.507431, -0.615638, -0.602912,
		31.822182, 34.589832, 34.616100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840370, 35.487583, 34.562481>,  <32.177383, 35.020779, 35.038139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840370, 35.487583, 34.562481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654915, 35.133194, 34.566433>,  <31.543642, 34.920563, 34.568806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654915, 35.133194, 34.566433>,  <31.840370, 35.487583, 34.562481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654915, 35.133194, 34.566433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885297, 0.463682, 0.035335,
		-0.035887, 0.007635, -0.999327,
		-0.463639, -0.885969, 0.009881,
		31.515823, 34.867405, 34.569397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200819, 35.610691, 34.225746>,  <31.840370, 35.487583, 34.562481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200819, 35.610691, 34.225746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132242, 35.264984, 34.414917>,  <31.091095, 35.057560, 34.528419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132242, 35.264984, 34.414917>,  <31.200819, 35.610691, 34.225746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132242, 35.264984, 34.414917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974030, 0.220755, 0.050325,
		-0.147894, -0.452013, -0.879666,
		-0.171443, -0.864263, 0.472922,
		31.080809, 35.005707, 34.556793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515888, 35.461044, 34.076111>,  <31.200819, 35.610691, 34.225746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515888, 35.461044, 34.076111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572226, 35.212635, 34.384525>,  <30.606028, 35.063591, 34.569572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572226, 35.212635, 34.384525>,  <30.515888, 35.461044, 34.076111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572226, 35.212635, 34.384525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889603, 0.262389, 0.373841,
		-0.434476, -0.738567, -0.515510,
		0.140842, -0.621024, 0.771033,
		30.614479, 35.026329, 34.615837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.924425, 35.174583, 34.124687>,  <30.515888, 35.461044, 34.076111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.924425, 35.174583, 34.124687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089586, 35.104214, 34.482136>,  <30.188683, 35.061993, 34.696606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.089586, 35.104214, 34.482136>,  <29.924425, 35.174583, 34.124687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089586, 35.104214, 34.482136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851869, 0.272538, 0.447260,
		-0.322229, -0.945926, -0.037329,
		0.412901, -0.175920, 0.893624,
		30.213457, 35.051437, 34.750221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443539, 34.830124, 34.526787>,  <29.924425, 35.174583, 34.124687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443539, 34.830124, 34.526787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685093, 34.982395, 34.806904>,  <29.830025, 35.073757, 34.974972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.685093, 34.982395, 34.806904>,  <29.443539, 34.830124, 34.526787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685093, 34.982395, 34.806904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779858, 0.463784, 0.420387,
		-0.164751, -0.799993, 0.576947,
		0.603886, 0.380677, 0.700290,
		29.866259, 35.096600, 35.016991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082722, 34.769722, 35.114822>,  <29.443539, 34.830124, 34.526787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082722, 34.769722, 35.114822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360548, 35.024879, 35.247890>,  <29.527243, 35.177975, 35.327732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.360548, 35.024879, 35.247890>,  <29.082722, 34.769722, 35.114822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360548, 35.024879, 35.247890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697941, 0.485280, 0.526670,
		0.174524, -0.597988, 0.782273,
		0.694564, 0.637897, 0.332668,
		29.568916, 35.216248, 35.347691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037979, 34.804482, 35.854557>,  <29.082722, 34.769722, 35.114822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.037979, 34.804482, 35.854557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220264, 35.145424, 35.751938>,  <29.329636, 35.349991, 35.690365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.220264, 35.145424, 35.751938>,  <29.037979, 34.804482, 35.854557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220264, 35.145424, 35.751938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590098, 0.505066, 0.629835,
		0.666417, -0.135634, 0.733138,
		0.455710, 0.852357, -0.256548,
		29.356977, 35.401131, 35.674973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210062, 35.128281, 36.525295>,  <29.037979, 34.804482, 35.854557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210062, 35.128281, 36.525295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198730, 35.392658, 36.225334>,  <29.191933, 35.551285, 36.045357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.198730, 35.392658, 36.225334>,  <29.210062, 35.128281, 36.525295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198730, 35.392658, 36.225334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754189, 0.478235, 0.449989,
		0.656046, 0.578316, 0.484927,
		-0.028327, 0.660940, -0.749904,
		29.190233, 35.590939, 36.000362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201298, 35.727634, 36.868805>,  <29.210062, 35.128281, 36.525295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201298, 35.727634, 36.868805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040678, 35.783474, 36.506752>,  <28.944305, 35.816978, 36.289520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040678, 35.783474, 36.506752>,  <29.201298, 35.727634, 36.868805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040678, 35.783474, 36.506752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775637, 0.473675, 0.417156,
		0.486976, 0.869565, -0.081924,
		-0.401550, 0.139602, -0.905135,
		28.920214, 35.825356, 36.235210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040850, 36.349712, 36.950790>,  <29.201298, 35.727634, 36.868805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040850, 36.349712, 36.950790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816887, 36.186256, 36.662479>,  <28.682508, 36.088184, 36.489494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816887, 36.186256, 36.662479>,  <29.040850, 36.349712, 36.950790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816887, 36.186256, 36.662479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825397, 0.350956, 0.442210,
		0.072258, 0.842524, -0.533791,
		-0.559909, -0.408636, -0.720776,
		28.648914, 36.063667, 36.446247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574205, 36.491940, 37.470139>,  <29.040850, 36.349712, 36.950790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574205, 36.491940, 37.470139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798277, 36.527050, 37.799622>,  <29.932720, 36.548115, 37.997311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798277, 36.527050, 37.799622>,  <29.574205, 36.491940, 37.470139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798277, 36.527050, 37.799622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035561, 0.996002, -0.081953,
		-0.827610, 0.016617, 0.561058,
		0.560176, 0.087777, 0.823710,
		29.966330, 36.553383, 38.046734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122889, 36.165752, 37.780582>,  <29.574205, 36.491940, 37.470139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122889, 36.165752, 37.780582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121077, 35.804813, 37.608192>,  <30.119989, 35.588249, 37.504757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121077, 35.804813, 37.608192>,  <30.122889, 36.165752, 37.780582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121077, 35.804813, 37.608192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026807, 0.430937, -0.901984,
		0.999630, 0.007466, -0.026142,
		-0.004531, -0.902351, -0.430978,
		30.119717, 35.534107, 37.478901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697147, 36.068401, 37.267254>,  <30.122889, 36.165752, 37.780582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697147, 36.068401, 37.267254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387148, 35.837238, 37.164963>,  <30.201149, 35.698540, 37.103588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387148, 35.837238, 37.164963>,  <30.697147, 36.068401, 37.267254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387148, 35.837238, 37.164963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137377, 0.240925, -0.960772,
		0.616853, -0.779727, -0.107325,
		-0.774997, -0.577911, -0.255732,
		30.154648, 35.663864, 37.088242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187733, 36.730179, 37.220261>,  <30.697147, 36.068401, 37.267254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187733, 36.730179, 37.220261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488749, 36.926811, 37.044975>,  <31.669359, 37.044788, 36.939804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488749, 36.926811, 37.044975>,  <31.187733, 36.730179, 37.220261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488749, 36.926811, 37.044975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290333, 0.349617, 0.890772,
		0.591092, -0.797571, 0.120379,
		0.752540, 0.491578, -0.438217,
		31.714510, 37.074284, 36.913509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767733, 36.582886, 37.640381>,  <31.187733, 36.730179, 37.220261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767733, 36.582886, 37.640381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750475, 36.934162, 37.449833>,  <31.740120, 37.144928, 37.335506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750475, 36.934162, 37.449833>,  <31.767733, 36.582886, 37.640381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750475, 36.934162, 37.449833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147582, 0.477182, 0.866324,
		0.988108, -0.032927, -0.150192,
		-0.043143, 0.878187, -0.476367,
		31.737532, 37.197617, 37.306923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418930, 37.016285, 37.667583>,  <31.767733, 36.582886, 37.640381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418930, 37.016285, 37.667583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056961, 37.182861, 37.702652>,  <31.839779, 37.282806, 37.723694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056961, 37.182861, 37.702652>,  <32.418930, 37.016285, 37.667583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056961, 37.182861, 37.702652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171325, 0.167912, 0.970800,
		0.389564, 0.893521, -0.223295,
		-0.904924, 0.416445, 0.087670,
		31.785484, 37.307796, 37.728954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516064, 37.575008, 38.234886>,  <32.418930, 37.016285, 37.667583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516064, 37.575008, 38.234886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144405, 37.438988, 38.176846>,  <31.921410, 37.357376, 38.142021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.144405, 37.438988, 38.176846>,  <32.516064, 37.575008, 38.234886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144405, 37.438988, 38.176846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090050, -0.172495, 0.980886,
		-0.358580, 0.924452, 0.129651,
		-0.929145, -0.340051, -0.145100,
		31.865662, 37.336971, 38.133316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837574, 37.963425, 38.382591>,  <32.516064, 37.575008, 38.234886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837574, 37.963425, 38.382591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865335, 37.567459, 38.431984>,  <31.881992, 37.329880, 38.461620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.865335, 37.567459, 38.431984>,  <31.837574, 37.963425, 38.382591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865335, 37.567459, 38.431984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098576, 0.116369, 0.988302,
		-0.992706, -0.080764, -0.089506,
		0.069404, -0.989917, 0.123482,
		31.886156, 37.270485, 38.469028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147734, 37.577271, 38.714142>,  <31.837574, 37.963425, 38.382591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147734, 37.577271, 38.714142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492136, 37.393314, 38.801014>,  <31.698776, 37.282940, 38.853138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.492136, 37.393314, 38.801014>,  <31.147734, 37.577271, 38.714142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492136, 37.393314, 38.801014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177114, 0.129167, 0.975677,
		-0.476762, -0.878529, 0.029759,
		0.861004, -0.459895, 0.217182,
		31.750437, 37.255344, 38.866169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073376, 37.115421, 39.365772>,  <31.147734, 37.577271, 38.714142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073376, 37.115421, 39.365772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466051, 37.183006, 39.330570>,  <31.701656, 37.223557, 39.309448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466051, 37.183006, 39.330570>,  <31.073376, 37.115421, 39.365772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466051, 37.183006, 39.330570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054602, 0.193026, 0.979673,
		0.182486, -0.966542, 0.180268,
		0.981691, 0.168934, -0.087999,
		31.760557, 37.233692, 39.304169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211769, 37.030548, 40.062229>,  <31.073376, 37.115421, 39.365772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211769, 37.030548, 40.062229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537840, 37.215958, 39.923302>,  <31.733482, 37.327206, 39.839947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537840, 37.215958, 39.923302>,  <31.211769, 37.030548, 40.062229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537840, 37.215958, 39.923302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318640, 0.141860, 0.937200,
		0.483687, -0.874654, -0.032056,
		0.815178, 0.463526, -0.347315,
		31.782393, 37.355015, 39.819107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685213, 36.741383, 40.458900>,  <31.211769, 37.030548, 40.062229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685213, 36.741383, 40.458900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827868, 37.093571, 40.333954>,  <31.913460, 37.304886, 40.258984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.827868, 37.093571, 40.333954>,  <31.685213, 36.741383, 40.458900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827868, 37.093571, 40.333954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488117, 0.109483, 0.865884,
		0.796588, -0.461278, -0.390730,
		0.356635, 0.880475, -0.312370,
		31.934858, 37.357712, 40.240242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537857, 36.702435, 40.581089>,  <31.685213, 36.741383, 40.458900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537857, 36.702435, 40.581089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393341, 37.075317, 40.589695>,  <32.306629, 37.299046, 40.594860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393341, 37.075317, 40.589695>,  <32.537857, 36.702435, 40.581089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393341, 37.075317, 40.589695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282435, 0.087414, 0.955295,
		0.888649, 0.351218, -0.294869,
		-0.361293, 0.932204, 0.021516,
		32.284954, 37.354980, 40.596149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963406, 37.048851, 41.071911>,  <32.537857, 36.702435, 40.581089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963406, 37.048851, 41.071911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674084, 37.323235, 41.040157>,  <32.500492, 37.487865, 41.021107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.674084, 37.323235, 41.040157>,  <32.963406, 37.048851, 41.071911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674084, 37.323235, 41.040157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105417, 0.223299, 0.969033,
		0.682440, 0.692533, -0.233824,
		-0.723300, 0.685955, -0.079383,
		32.457092, 37.529022, 41.016342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174202, 37.600327, 41.408318>,  <32.963406, 37.048851, 41.071911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174202, 37.600327, 41.408318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780830, 37.672802, 41.405952>,  <32.544807, 37.716286, 41.404533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780830, 37.672802, 41.405952>,  <33.174202, 37.600327, 41.408318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780830, 37.672802, 41.405952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080238, 0.464286, 0.882043,
		0.162558, 0.866955, -0.471131,
		-0.983431, 0.181186, -0.005911,
		32.485802, 37.727158, 41.404179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149101, 38.149139, 41.830364>,  <33.174202, 37.600327, 41.408318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149101, 38.149139, 41.830364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762714, 38.046921, 41.814327>,  <32.530884, 37.985588, 41.804703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762714, 38.046921, 41.814327>,  <33.149101, 38.149139, 41.830364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762714, 38.046921, 41.814327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093617, 0.200865, 0.975135,
		-0.241139, 0.945700, -0.217952,
		-0.965965, -0.255547, -0.040097,
		32.472923, 37.970257, 41.802299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885387, 38.636135, 42.287743>,  <33.149101, 38.149139, 41.830364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885387, 38.636135, 42.287743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630466, 38.330013, 42.251629>,  <32.477512, 38.146339, 42.229961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630466, 38.330013, 42.251629>,  <32.885387, 38.636135, 42.287743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630466, 38.330013, 42.251629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004272, -0.113649, 0.993512,
		-0.770599, 0.633556, 0.069160,
		-0.637306, -0.765304, -0.090285,
		32.439274, 38.100422, 42.224545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319057, 38.807846, 42.918739>,  <32.885387, 38.636135, 42.287743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319057, 38.807846, 42.918739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289478, 38.423828, 42.810776>,  <32.271732, 38.193417, 42.745998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289478, 38.423828, 42.810776>,  <32.319057, 38.807846, 42.918739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289478, 38.423828, 42.810776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167875, -0.254804, 0.952309,
		-0.983031, 0.115733, -0.142324,
		-0.073949, -0.960042, -0.269909,
		32.267292, 38.135815, 42.729805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787424, 38.510242, 43.321308>,  <32.319057, 38.807846, 42.918739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787424, 38.510242, 43.321308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987062, 38.184090, 43.203968>,  <32.106846, 37.988400, 43.133564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987062, 38.184090, 43.203968>,  <31.787424, 38.510242, 43.321308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987062, 38.184090, 43.203968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085556, -0.383237, 0.919679,
		-0.862312, -0.433911, -0.261034,
		0.499097, -0.815383, -0.293346,
		32.136791, 37.939476, 43.115963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464886, 38.031490, 43.615997>,  <31.787424, 38.510242, 43.321308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464886, 38.031490, 43.615997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809847, 37.859791, 43.508663>,  <32.016823, 37.756771, 43.444263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.809847, 37.859791, 43.508663>,  <31.464886, 38.031490, 43.615997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809847, 37.859791, 43.508663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044754, -0.463348, 0.885046,
		-0.504240, -0.775276, -0.380382,
		0.862403, -0.429251, -0.268335,
		32.068569, 37.731014, 43.428162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.313921, 37.274632, 43.601582>,  <31.464886, 38.031490, 43.615997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.313921, 37.274632, 43.601582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703007, 37.353951, 43.649757>,  <31.936459, 37.401543, 43.678661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703007, 37.353951, 43.649757>,  <31.313921, 37.274632, 43.601582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703007, 37.353951, 43.649757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008516, -0.549265, 0.835605,
		0.231854, -0.811778, -0.535966,
		0.972713, 0.198302, 0.120437,
		31.994822, 37.413441, 43.685890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627062, 36.649902, 43.670681>,  <31.313921, 37.274632, 43.601582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627062, 36.649902, 43.670681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902966, 36.887024, 43.836964>,  <32.068508, 37.029297, 43.936733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902966, 36.887024, 43.836964>,  <31.627062, 36.649902, 43.670681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902966, 36.887024, 43.836964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031213, -0.597965, 0.800914,
		0.723365, -0.539463, -0.430956,
		0.689760, 0.592805, 0.415709,
		32.109894, 37.064865, 43.961678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201923, 36.236763, 44.041321>,  <31.627062, 36.649902, 43.670681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201923, 36.236763, 44.041321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164555, 36.596329, 44.212536>,  <32.142132, 36.812069, 44.315266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164555, 36.596329, 44.212536>,  <32.201923, 36.236763, 44.041321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164555, 36.596329, 44.212536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035731, -0.432670, 0.900844,
		0.994985, 0.068865, 0.072541,
		-0.093423, 0.898918, 0.428040,
		32.136528, 36.866005, 44.340946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883080, 36.420067, 44.401596>,  <32.201923, 36.236763, 44.041321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883080, 36.420067, 44.401596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575150, 36.616901, 44.564182>,  <32.390392, 36.735001, 44.661736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575150, 36.616901, 44.564182>,  <32.883080, 36.420067, 44.401596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575150, 36.616901, 44.564182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180482, -0.443015, 0.878159,
		0.612200, 0.749393, 0.252233,
		-0.769830, 0.492086, 0.406466,
		32.344200, 36.764526, 44.686123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030369, 36.395908, 45.069645>,  <32.883080, 36.420067, 44.401596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030369, 36.395908, 45.069645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656075, 36.535629, 45.089191>,  <32.431499, 36.619461, 45.100918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656075, 36.535629, 45.089191>,  <33.030369, 36.395908, 45.069645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656075, 36.535629, 45.089191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103635, -0.404723, 0.908547,
		0.337133, 0.845096, 0.414914,
		-0.935735, 0.349301, 0.048864,
		32.375355, 36.640419, 45.103851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119476, 36.766666, 45.646912>,  <33.030369, 36.395908, 45.069645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119476, 36.766666, 45.646912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728352, 36.702728, 45.592743>,  <32.493679, 36.664368, 45.560242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728352, 36.702728, 45.592743>,  <33.119476, 36.766666, 45.646912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728352, 36.702728, 45.592743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091571, -0.255288, 0.962519,
		-0.188423, 0.953561, 0.234986,
		-0.977809, -0.159843, -0.135421,
		32.435009, 36.654774, 45.552116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727551, 37.147968, 46.156826>,  <33.119476, 36.766666, 45.646912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727551, 37.147968, 46.156826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478230, 36.854454, 46.048710>,  <32.328636, 36.678345, 45.983841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478230, 36.854454, 46.048710>,  <32.727551, 37.147968, 46.156826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478230, 36.854454, 46.048710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154151, -0.223570, 0.962421,
		-0.766636, 0.641546, 0.026239,
		-0.623303, -0.733782, -0.270292,
		32.291237, 36.634319, 45.967621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014023, 37.351864, 46.424934>,  <32.727551, 37.147968, 46.156826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014023, 37.351864, 46.424934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071381, 36.960876, 46.362976>,  <32.105793, 36.726284, 46.325802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071381, 36.960876, 46.362976>,  <32.014023, 37.351864, 46.424934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071381, 36.960876, 46.362976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412831, -0.201323, 0.888279,
		-0.899449, -0.063426, -0.432397,
		0.143392, -0.977469, -0.154895,
		32.114399, 36.667637, 46.316509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488325, 37.130947, 46.708763>,  <32.014023, 37.351864, 46.424934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488325, 37.130947, 46.708763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676897, 36.780396, 46.669334>,  <31.790041, 36.570065, 46.645679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676897, 36.780396, 46.669334>,  <31.488325, 37.130947, 46.708763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676897, 36.780396, 46.669334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432904, -0.327339, 0.839907,
		-0.768341, -0.353287, -0.533705,
		0.471431, -0.876377, -0.098569,
		31.818327, 36.517483, 46.639763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.949636, 36.675423, 46.686073>,  <31.488325, 37.130947, 46.708763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.949636, 36.675423, 46.686073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290621, 36.497864, 46.796539>,  <31.495211, 36.391327, 46.862820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290621, 36.497864, 46.796539>,  <30.949636, 36.675423, 46.686073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290621, 36.497864, 46.796539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404645, -0.225770, 0.886166,
		-0.331024, -0.867166, -0.372083,
		0.852458, -0.443904, 0.276159,
		31.546358, 36.364693, 46.879387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790720, 36.055721, 46.964809>,  <30.949636, 36.675423, 46.686073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790720, 36.055721, 46.964809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148109, 36.148617, 47.118576>,  <31.362543, 36.204353, 47.210835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148109, 36.148617, 47.118576>,  <30.790720, 36.055721, 46.964809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148109, 36.148617, 47.118576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318718, -0.275179, 0.907025,
		0.316430, -0.932921, -0.171846,
		0.893471, 0.232239, 0.384414,
		31.416151, 36.218288, 47.233902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960266, 35.477329, 47.144367>,  <30.790720, 36.055721, 46.964809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960266, 35.477329, 47.144367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199932, 35.710766, 47.363613>,  <31.343731, 35.850826, 47.495159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199932, 35.710766, 47.363613>,  <30.960266, 35.477329, 47.144367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199932, 35.710766, 47.363613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330959, -0.442836, 0.833284,
		0.729019, -0.680676, -0.072187,
		0.599164, 0.583589, 0.548112,
		31.379681, 35.885841, 47.528046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493074, 35.047619, 47.436283>,  <30.960266, 35.477329, 47.144367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493074, 35.047619, 47.436283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454165, 35.359005, 47.684322>,  <31.430819, 35.545837, 47.833145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454165, 35.359005, 47.684322>,  <31.493074, 35.047619, 47.436283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454165, 35.359005, 47.684322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123453, -0.608807, 0.783654,
		0.987571, 0.152783, -0.036883,
		-0.097274, 0.778467, 0.620102,
		31.424982, 35.592545, 47.870354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835909, 34.881050, 48.026207>,  <31.493074, 35.047619, 47.436283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835909, 34.881050, 48.026207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643511, 35.204395, 48.161968>,  <31.528072, 35.398403, 48.243423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643511, 35.204395, 48.161968>,  <31.835909, 34.881050, 48.026207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643511, 35.204395, 48.161968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054227, -0.358953, 0.931779,
		0.875045, 0.466585, 0.128819,
		-0.480994, 0.808364, 0.339402,
		31.499212, 35.446903, 48.263790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212894, 35.115509, 48.549675>,  <31.835909, 34.881050, 48.026207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212894, 35.115509, 48.549675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848576, 35.264854, 48.620152>,  <31.629984, 35.354462, 48.662437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848576, 35.264854, 48.620152>,  <32.212894, 35.115509, 48.549675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848576, 35.264854, 48.620152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031638, -0.362400, 0.931485,
		0.411635, 0.853971, 0.318261,
		-0.910800, 0.373363, 0.176195,
		31.575336, 35.376862, 48.673012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274693, 35.534893, 49.168568>,  <32.212894, 35.115509, 48.549675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274693, 35.534893, 49.168568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896645, 35.414410, 49.117947>,  <31.669815, 35.342117, 49.087574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896645, 35.414410, 49.117947>,  <32.274693, 35.534893, 49.168568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896645, 35.414410, 49.117947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016638, -0.342474, 0.939380,
		-0.326293, 0.889935, 0.318668,
		-0.945122, -0.301211, -0.126553,
		31.613108, 35.324047, 49.079979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839949, 35.651340, 49.858757>,  <32.274693, 35.534893, 49.168568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839949, 35.651340, 49.858757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588257, 35.410202, 49.662537>,  <31.437243, 35.265518, 49.544804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588257, 35.410202, 49.662537>,  <31.839949, 35.651340, 49.858757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588257, 35.410202, 49.662537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288911, -0.404513, 0.867698,
		-0.721527, 0.687707, 0.080361,
		-0.629229, -0.602850, -0.490553,
		31.399488, 35.229347, 49.515369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254902, 35.778355, 50.209679>,  <31.839949, 35.651340, 49.858757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254902, 35.778355, 50.209679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228971, 35.432419, 50.010544>,  <31.213413, 35.224857, 49.891064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228971, 35.432419, 50.010544>,  <31.254902, 35.778355, 50.209679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228971, 35.432419, 50.010544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292965, -0.460410, 0.837971,
		-0.953923, 0.200171, -0.223523,
		-0.064825, -0.864844, -0.497838,
		31.209524, 35.172966, 49.861191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682936, 35.562298, 50.494370>,  <31.254902, 35.778355, 50.209679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682936, 35.562298, 50.494370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844835, 35.242851, 50.316208>,  <30.941975, 35.051182, 50.209312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844835, 35.242851, 50.316208>,  <30.682936, 35.562298, 50.494370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844835, 35.242851, 50.316208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117323, -0.528412, 0.840842,
		-0.906871, -0.288073, -0.307570,
		0.404748, -0.798620, -0.445404,
		30.966259, 35.003265, 50.182587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268541, 34.959316, 50.700089>,  <30.682936, 35.562298, 50.494370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268541, 34.959316, 50.700089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618118, 34.798004, 50.591579>,  <30.827866, 34.701218, 50.526474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618118, 34.798004, 50.591579>,  <30.268541, 34.959316, 50.700089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618118, 34.798004, 50.591579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028932, -0.600320, 0.799237,
		-0.485164, -0.690640, -0.536314,
		0.873944, -0.403278, -0.271272,
		30.880301, 34.677021, 50.510197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268867, 34.212070, 50.766945>,  <30.268541, 34.959316, 50.700089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268867, 34.212070, 50.766945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642666, 34.346325, 50.814373>,  <30.866945, 34.426880, 50.842831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642666, 34.346325, 50.814373>,  <30.268867, 34.212070, 50.766945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642666, 34.346325, 50.814373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086680, -0.537634, 0.838711,
		0.345255, -0.773495, -0.531511,
		0.934497, 0.335640, 0.118574,
		30.923016, 34.447018, 50.849945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666821, 33.619438, 50.912827>,  <30.268867, 34.212070, 50.766945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666821, 33.619438, 50.912827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937740, 33.890118, 51.028305>,  <31.100292, 34.052525, 51.097591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937740, 33.890118, 51.028305>,  <30.666821, 33.619438, 50.912827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937740, 33.890118, 51.028305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207937, -0.552481, 0.807173,
		0.705709, -0.486669, -0.514906,
		0.677301, 0.676697, 0.288694,
		31.140930, 34.093128, 51.114914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136303, 33.141769, 51.084457>,  <30.666821, 33.619438, 50.912827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136303, 33.141769, 51.084457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213343, 33.502193, 51.239895>,  <31.259567, 33.718449, 51.333157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213343, 33.502193, 51.239895>,  <31.136303, 33.141769, 51.084457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213343, 33.502193, 51.239895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335216, -0.432597, 0.836953,
		0.922245, -0.030934, -0.385367,
		0.192599, 0.901056, 0.388591,
		31.271122, 33.772511, 51.356472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828592, 33.111572, 51.291809>,  <31.136303, 33.141769, 51.084457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828592, 33.111572, 51.291809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615845, 33.384365, 51.492619>,  <31.488197, 33.548038, 51.613102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.615845, 33.384365, 51.492619>,  <31.828592, 33.111572, 51.291809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615845, 33.384365, 51.492619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187461, -0.483298, 0.855150,
		0.825818, 0.548936, 0.129206,
		-0.531867, 0.681977, 0.502020,
		31.456285, 33.588959, 51.643223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159721, 33.107246, 51.920864>,  <31.828592, 33.111572, 51.291809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159721, 33.107246, 51.920864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847763, 33.338203, 52.017506>,  <31.660587, 33.476780, 52.075489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847763, 33.338203, 52.017506>,  <32.159721, 33.107246, 51.920864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847763, 33.338203, 52.017506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039324, -0.430444, 0.901760,
		0.624671, 0.693780, 0.358408,
		-0.779897, 0.577397, 0.241604,
		31.613794, 33.511421, 52.089985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382179, 33.395947, 52.581028>,  <32.159721, 33.107246, 51.920864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382179, 33.395947, 52.581028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984035, 33.407730, 52.544380>,  <31.745150, 33.414799, 52.522392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984035, 33.407730, 52.544380>,  <32.382179, 33.395947, 52.581028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984035, 33.407730, 52.544380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095465, -0.422426, 0.901356,
		-0.012148, 0.905918, 0.423278,
		-0.995359, 0.029459, -0.091615,
		31.685429, 33.416569, 52.516895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121605, 33.751934, 53.106590>,  <32.382179, 33.395947, 52.581028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121605, 33.751934, 53.106590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826031, 33.517048, 52.974438>,  <31.648687, 33.376118, 52.895145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826031, 33.517048, 52.974438>,  <32.121605, 33.751934, 53.106590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826031, 33.517048, 52.974438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202720, -0.273863, 0.940161,
		-0.642558, 0.761693, 0.083326,
		-0.738934, -0.587216, -0.330383,
		31.604351, 33.340881, 52.875324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771111, 33.725960, 53.639305>,  <32.121605, 33.751934, 53.106590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771111, 33.725960, 53.639305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632963, 33.419769, 53.422138>,  <31.550076, 33.236053, 53.291836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632963, 33.419769, 53.422138>,  <31.771111, 33.725960, 53.639305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632963, 33.419769, 53.422138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248783, -0.483142, 0.839453,
		-0.904891, 0.424991, -0.023576,
		-0.345369, -0.765479, -0.542921,
		31.529352, 33.190125, 53.259262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128698, 33.483116, 53.962135>,  <31.771111, 33.725960, 53.639305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128698, 33.483116, 53.962135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325562, 33.206909, 53.750111>,  <31.443680, 33.041183, 53.622898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325562, 33.206909, 53.750111>,  <31.128698, 33.483116, 53.962135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325562, 33.206909, 53.750111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219231, -0.687600, 0.692202,
		-0.842448, -0.224468, -0.489792,
		0.492158, -0.690521, -0.530057,
		31.473209, 32.999752, 53.591095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329826, 33.801983, 54.604034>,  <31.128698, 33.483116, 53.962135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329826, 33.801983, 54.604034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120146, 33.463142, 54.569096>,  <30.994337, 33.259838, 54.548130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120146, 33.463142, 54.569096>,  <31.329826, 33.801983, 54.604034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120146, 33.463142, 54.569096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688410, -0.481897, 0.542095,
		-0.501305, 0.224033, 0.835765,
		-0.524200, -0.847104, -0.087351,
		30.962887, 33.209011, 54.542889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482857, 33.573246, 55.260693>,  <31.329826, 33.801983, 54.604034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482857, 33.573246, 55.260693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368025, 33.263203, 55.035553>,  <31.299126, 33.077175, 54.900471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368025, 33.263203, 55.035553>,  <31.482857, 33.573246, 55.260693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368025, 33.263203, 55.035553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697439, -0.571907, 0.431857,
		-0.656630, -0.268573, 0.704773,
		-0.287079, -0.775107, -0.562845,
		31.281900, 33.030670, 54.866699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419111, 33.002289, 55.630386>,  <31.482857, 33.573246, 55.260693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419111, 33.002289, 55.630386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522968, 32.912441, 55.254700>,  <31.585283, 32.858532, 55.029285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522968, 32.912441, 55.254700>,  <31.419111, 33.002289, 55.630386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522968, 32.912441, 55.254700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711184, -0.613474, 0.343317,
		-0.653301, -0.757098, 0.000458,
		0.259644, -0.224615, -0.939220,
		31.600863, 32.845058, 54.972935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202372, 32.338844, 55.151775>,  <31.419111, 33.002289, 55.630386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202372, 32.338844, 55.151775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582224, 32.449989, 55.093819>,  <31.810135, 32.516678, 55.059044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.582224, 32.449989, 55.093819>,  <31.202372, 32.338844, 55.151775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.582224, 32.449989, 55.093819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313343, -0.835717, 0.450992,
		0.004223, -0.473677, -0.880689,
		0.949631, 0.277862, -0.144894,
		31.867113, 32.533348, 55.050350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478102, 31.826969, 54.788841>,  <31.202372, 32.338844, 55.151775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478102, 31.826969, 54.788841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754616, 31.994282, 55.024525>,  <31.920525, 32.094669, 55.165936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.754616, 31.994282, 55.024525>,  <31.478102, 31.826969, 54.788841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754616, 31.994282, 55.024525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064243, -0.847768, 0.526462,
		0.719722, -0.326082, -0.612920,
		0.691284, 0.418282, 0.589208,
		31.962002, 32.119766, 55.201286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020796, 31.364603, 54.831581>,  <31.478102, 31.826969, 54.788841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020796, 31.364603, 54.831581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077938, 30.969269, 54.810471>,  <31.112223, 30.732069, 54.797806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077938, 30.969269, 54.810471>,  <31.020796, 31.364603, 54.831581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077938, 30.969269, 54.810471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031932, 0.048695, -0.998303,
		0.989228, 0.144298, -0.024603,
		0.142855, -0.988335, -0.052778,
		31.120794, 30.672768, 54.794636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712599, 31.262739, 54.408016>,  <31.020796, 31.364603, 54.831581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712599, 31.262739, 54.408016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448826, 30.962267, 54.396156>,  <31.290562, 30.781984, 54.389042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448826, 30.962267, 54.396156>,  <31.712599, 31.262739, 54.408016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448826, 30.962267, 54.396156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195585, -0.133352, -0.971578,
		0.725877, -0.646486, 0.234856,
		-0.659431, -0.751181, -0.029646,
		31.250996, 30.736914, 54.387264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033222, 30.567381, 54.247658>,  <31.712599, 31.262739, 54.408016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033222, 30.567381, 54.247658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671867, 30.664062, 54.105968>,  <31.455055, 30.722071, 54.020954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.671867, 30.664062, 54.105968>,  <32.033222, 30.567381, 54.247658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671867, 30.664062, 54.105968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303535, -0.223085, -0.926337,
		-0.302924, -0.944357, 0.128165,
		-0.903384, 0.241707, -0.354223,
		31.400852, 30.736572, 53.999702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727186, 30.016197, 53.852264>,  <32.033222, 30.567381, 54.247658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727186, 30.016197, 53.852264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626745, 30.367397, 53.689262>,  <31.566481, 30.578117, 53.591461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626745, 30.367397, 53.689262>,  <31.727186, 30.016197, 53.852264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626745, 30.367397, 53.689262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201707, -0.364287, -0.909181,
		-0.946711, -0.310495, -0.085626,
		-0.251104, 0.878002, -0.407503,
		31.551414, 30.630798, 53.567013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620499, 29.714897, 53.189270>,  <31.727186, 30.016197, 53.852264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620499, 29.714897, 53.189270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619705, 30.113167, 53.152107>,  <31.619230, 30.352129, 53.129810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619705, 30.113167, 53.152107>,  <31.620499, 29.714897, 53.189270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619705, 30.113167, 53.152107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015809, -0.092869, -0.995553,
		-0.999873, -0.003442, -0.015557,
		-0.001982, 0.995672, -0.092911,
		31.619110, 30.411869, 53.124233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128077, 29.760794, 52.670544>,  <31.620499, 29.714897, 53.189270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128077, 29.760794, 52.670544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315805, 30.114004, 52.670883>,  <31.428444, 30.325930, 52.671085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.315805, 30.114004, 52.670883>,  <31.128077, 29.760794, 52.670544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315805, 30.114004, 52.670883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023650, -0.011613, -0.999653,
		-0.882710, 0.469180, -0.026334,
		0.469323, 0.883026, 0.000845,
		31.456602, 30.378912, 52.671135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792217, 30.315384, 52.207516>,  <31.128077, 29.760794, 52.670544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792217, 30.315384, 52.207516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179974, 30.401199, 52.255264>,  <31.412628, 30.452688, 52.283913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179974, 30.401199, 52.255264>,  <30.792217, 30.315384, 52.207516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179974, 30.401199, 52.255264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108935, 0.059890, -0.992243,
		-0.220024, 0.974878, 0.034686,
		0.969393, 0.214539, 0.119375,
		31.470791, 30.465561, 52.291077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893414, 30.770113, 51.615891>,  <30.792217, 30.315384, 52.207516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893414, 30.770113, 51.615891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266470, 30.668707, 51.718578>,  <31.490305, 30.607862, 51.780193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.266470, 30.668707, 51.718578>,  <30.893414, 30.770113, 51.615891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266470, 30.668707, 51.718578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286442, 0.087622, -0.954082,
		0.219380, 0.963355, 0.154338,
		0.932643, -0.253515, 0.256723,
		31.546263, 30.592651, 51.795597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.293646, 31.167833, 51.213177>,  <30.893414, 30.770113, 51.615891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.293646, 31.167833, 51.213177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570047, 30.909302, 51.342651>,  <31.735888, 30.754183, 51.420338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570047, 30.909302, 51.342651>,  <31.293646, 31.167833, 51.213177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570047, 30.909302, 51.342651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454624, 0.040444, -0.889765,
		0.561988, 0.761987, 0.321783,
		0.691004, -0.646328, 0.323689,
		31.777348, 30.715403, 51.439758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885853, 31.543749, 51.066078>,  <31.293646, 31.167833, 51.213177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885853, 31.543749, 51.066078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956467, 31.150614, 51.087479>,  <31.998835, 30.914732, 51.100319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956467, 31.150614, 51.087479>,  <31.885853, 31.543749, 51.066078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956467, 31.150614, 51.087479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551607, 0.053763, -0.832370,
		0.815209, 0.176455, 0.551632,
		0.176533, -0.982839, 0.053505,
		32.009426, 30.855762, 51.103531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570564, 31.460350, 50.990353>,  <31.885853, 31.543749, 51.066078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570564, 31.460350, 50.990353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408749, 31.111528, 50.880177>,  <32.311657, 30.902235, 50.814072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408749, 31.111528, 50.880177>,  <32.570564, 31.460350, 50.990353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408749, 31.111528, 50.880177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581369, -0.012734, -0.813540,
		0.705943, -0.489246, 0.512136,
		-0.404543, -0.872053, -0.275443,
		32.287384, 30.849913, 50.797543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105732, 31.032515, 50.943890>,  <32.570564, 31.460350, 50.990353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105732, 31.032515, 50.943890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811226, 30.887405, 50.715397>,  <32.634521, 30.800341, 50.578300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811226, 30.887405, 50.715397>,  <33.105732, 31.032515, 50.943890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811226, 30.887405, 50.715397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613165, -0.000577, -0.789955,
		0.286244, -0.931878, 0.222864,
		-0.736270, -0.362772, -0.571229,
		32.590343, 30.778574, 50.544029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433437, 30.574060, 50.446510>,  <33.105732, 31.032515, 50.943890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433437, 30.574060, 50.446510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067333, 30.613140, 50.290173>,  <32.847672, 30.636589, 50.196369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067333, 30.613140, 50.290173>,  <33.433437, 30.574060, 50.446510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067333, 30.613140, 50.290173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380622, -0.108253, -0.918373,
		-0.132050, -0.989309, 0.061886,
		-0.915254, 0.097716, -0.390847,
		32.792755, 30.642450, 50.172920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256340, 29.954121, 49.962509>,  <33.433437, 30.574060, 50.446510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256340, 29.954121, 49.962509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035751, 30.275721, 49.873550>,  <32.903397, 30.468681, 49.820175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035751, 30.275721, 49.873550>,  <33.256340, 29.954121, 49.962509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035751, 30.275721, 49.873550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405308, 0.025227, -0.913832,
		-0.729110, -0.594094, -0.339779,
		-0.551474, 0.804000, -0.222398,
		32.870308, 30.516920, 49.806831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044094, 29.817898, 49.225872>,  <33.256340, 29.954121, 49.962509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044094, 29.817898, 49.225872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994793, 30.209337, 49.291782>,  <32.965214, 30.444201, 49.331329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.994793, 30.209337, 49.291782>,  <33.044094, 29.817898, 49.225872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994793, 30.209337, 49.291782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368621, 0.199309, -0.907962,
		-0.921373, -0.051164, -0.385297,
		-0.123248, 0.978600, 0.164778,
		32.957817, 30.502916, 49.341217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896271, 30.010632, 48.601215>,  <33.044094, 29.817898, 49.225872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896271, 30.010632, 48.601215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943615, 30.367899, 48.774761>,  <32.972019, 30.582260, 48.878891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943615, 30.367899, 48.774761>,  <32.896271, 30.010632, 48.601215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943615, 30.367899, 48.774761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367331, 0.366558, -0.854812,
		-0.922529, 0.260544, -0.284704,
		0.118356, 0.893170, 0.433866,
		32.979122, 30.635849, 48.904922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554058, 30.601377, 48.265190>,  <32.896271, 30.010632, 48.601215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554058, 30.601377, 48.265190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860302, 30.780176, 48.450249>,  <33.044048, 30.887455, 48.561283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860302, 30.780176, 48.450249>,  <32.554058, 30.601377, 48.265190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860302, 30.780176, 48.450249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246986, 0.459812, -0.852978,
		-0.594007, 0.767313, 0.241634,
		0.765607, 0.446994, 0.462647,
		33.089985, 30.914274, 48.589043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621120, 31.210447, 47.996201>,  <32.554058, 30.601377, 48.265190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621120, 31.210447, 47.996201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975574, 31.182486, 48.179447>,  <33.188248, 31.165709, 48.289394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.975574, 31.182486, 48.179447>,  <32.621120, 31.210447, 47.996201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975574, 31.182486, 48.179447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415095, 0.559255, -0.717586,
		-0.206041, 0.826043, 0.524595,
		0.886139, -0.069904, 0.458116,
		33.241417, 31.161514, 48.316883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714855, 31.793348, 48.072449>,  <32.621120, 31.210447, 47.996201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714855, 31.793348, 48.072449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053253, 31.580421, 48.060188>,  <33.256290, 31.452665, 48.052834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053253, 31.580421, 48.060188>,  <32.714855, 31.793348, 48.072449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053253, 31.580421, 48.060188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269980, 0.477219, -0.836285,
		0.459794, 0.699215, 0.547438,
		0.845991, -0.532316, -0.030648,
		33.307049, 31.420727, 48.050995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111240, 32.200825, 47.689293>,  <32.714855, 31.793348, 48.072449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111240, 32.200825, 47.689293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358818, 31.887728, 47.663284>,  <33.507366, 31.699871, 47.647678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358818, 31.887728, 47.663284>,  <33.111240, 32.200825, 47.689293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358818, 31.887728, 47.663284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374612, 0.366950, -0.851477,
		0.690342, 0.502662, 0.520345,
		0.618946, -0.782738, -0.065017,
		33.544502, 31.652906, 47.643780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815533, 32.528233, 47.641403>,  <33.111240, 32.200825, 47.689293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815533, 32.528233, 47.641403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807014, 32.160282, 47.484753>,  <33.801903, 31.939512, 47.390762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807014, 32.160282, 47.484753>,  <33.815533, 32.528233, 47.641403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807014, 32.160282, 47.484753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446701, 0.341689, -0.826865,
		0.894430, -0.192552, 0.403633,
		-0.021297, -0.919876, -0.391630,
		33.800625, 31.884319, 47.367264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437210, 32.427036, 47.374687>,  <33.815533, 32.528233, 47.641403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437210, 32.427036, 47.374687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212837, 32.157635, 47.182121>,  <34.078213, 31.995995, 47.066582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212837, 32.157635, 47.182121>,  <34.437210, 32.427036, 47.374687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212837, 32.157635, 47.182121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387126, 0.300620, -0.871643,
		0.731773, -0.675297, 0.092103,
		-0.560929, -0.673500, -0.481411,
		34.044559, 31.955585, 47.037697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912262, 32.026321, 46.845531>,  <34.437210, 32.427036, 47.374687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912262, 32.026321, 46.845531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542191, 31.953386, 46.712387>,  <34.320148, 31.909626, 46.632500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542191, 31.953386, 46.712387>,  <34.912262, 32.026321, 46.845531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542191, 31.953386, 46.712387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288083, 0.233602, -0.928675,
		0.247096, -0.955081, -0.163593,
		-0.925176, -0.182344, -0.332865,
		34.264637, 31.898685, 46.612530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026432, 31.621552, 46.282642>,  <34.912262, 32.026321, 46.845531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026432, 31.621552, 46.282642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657082, 31.773634, 46.261406>,  <34.435471, 31.864883, 46.248665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.657082, 31.773634, 46.261406>,  <35.026432, 31.621552, 46.282642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657082, 31.773634, 46.261406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085456, 0.068749, -0.993967,
		-0.374264, -0.922343, -0.095972,
		-0.923376, 0.380207, -0.053090,
		34.380070, 31.887695, 46.245480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722466, 31.280993, 45.689541>,  <35.026432, 31.621552, 46.282642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722466, 31.280993, 45.689541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501190, 31.604063, 45.771164>,  <34.368423, 31.797905, 45.820137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501190, 31.604063, 45.771164>,  <34.722466, 31.280993, 45.689541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501190, 31.604063, 45.771164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102713, 0.176948, -0.978846,
		-0.826700, -0.562446, -0.014927,
		-0.553189, 0.807678, 0.204054,
		34.335232, 31.846367, 45.832378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030846, 31.206060, 45.356243>,  <34.722466, 31.280993, 45.689541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030846, 31.206060, 45.356243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097912, 31.595755, 45.416580>,  <34.138153, 31.829571, 45.452782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097912, 31.595755, 45.416580>,  <34.030846, 31.206060, 45.356243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097912, 31.595755, 45.416580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073956, 0.140151, -0.987364,
		-0.983066, 0.176703, -0.048552,
		0.167665, 0.974235, 0.150846,
		34.148212, 31.888025, 45.461834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642036, 31.431612, 44.870689>,  <34.030846, 31.206060, 45.356243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642036, 31.431612, 44.870689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894886, 31.728558, 44.959518>,  <34.046597, 31.906725, 45.012814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894886, 31.728558, 44.959518>,  <33.642036, 31.431612, 44.870689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894886, 31.728558, 44.959518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076802, 0.225153, -0.971292,
		-0.771049, 0.631035, 0.085310,
		0.632127, 0.742362, 0.222069,
		34.084522, 31.951265, 45.026138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417637, 32.138622, 44.610802>,  <33.642036, 31.431612, 44.870689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417637, 32.138622, 44.610802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814610, 32.180412, 44.636612>,  <34.052792, 32.205486, 44.652100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814610, 32.180412, 44.636612>,  <33.417637, 32.138622, 44.610802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814610, 32.180412, 44.636612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024543, 0.346113, -0.937872,
		-0.120321, 0.932357, 0.340930,
		0.992432, 0.104479, 0.064527,
		34.112339, 32.211758, 44.655972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515865, 32.799297, 44.228111>,  <33.417637, 32.138622, 44.610802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515865, 32.799297, 44.228111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864170, 32.607170, 44.270199>,  <34.073151, 32.491894, 44.295452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864170, 32.607170, 44.270199>,  <33.515865, 32.799297, 44.228111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864170, 32.607170, 44.270199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241843, 0.232044, -0.942161,
		0.428123, 0.845842, 0.318217,
		0.870760, -0.480319, 0.105218,
		34.125397, 32.463074, 44.301765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054352, 33.356251, 44.038944>,  <33.515865, 32.799297, 44.228111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054352, 33.356251, 44.038944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241470, 33.002911, 44.027222>,  <34.353741, 32.790905, 44.020187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241470, 33.002911, 44.027222>,  <34.054352, 33.356251, 44.038944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241470, 33.002911, 44.027222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483012, 0.283277, -0.828525,
		0.740180, 0.373425, 0.559185,
		0.467796, -0.883350, -0.029307,
		34.381809, 32.737904, 44.018429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780823, 33.457199, 43.729729>,  <34.054352, 33.356251, 44.038944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780823, 33.457199, 43.729729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700222, 33.067669, 43.687641>,  <34.651863, 32.833950, 43.662388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700222, 33.067669, 43.687641>,  <34.780823, 33.457199, 43.729729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700222, 33.067669, 43.687641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178469, 0.069121, -0.981515,
		0.963093, -0.216551, 0.159869,
		-0.201497, -0.973821, -0.105217,
		34.639774, 32.775524, 43.656075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265076, 33.213200, 43.176559>,  <34.780823, 33.457199, 43.729729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265076, 33.213200, 43.176559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969666, 32.943726, 43.187363>,  <34.792419, 32.782040, 43.193844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969666, 32.943726, 43.187363>,  <35.265076, 33.213200, 43.176559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969666, 32.943726, 43.187363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101434, -0.150615, -0.983375,
		0.666557, -0.723504, 0.179567,
		-0.738521, -0.673689, 0.027005,
		34.748108, 32.741619, 43.195465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575768, 32.452831, 42.968147>,  <35.265076, 33.213200, 43.176559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575768, 32.452831, 42.968147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181297, 32.446999, 42.902122>,  <34.944614, 32.443501, 42.862507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.181297, 32.446999, 42.902122>,  <35.575768, 32.452831, 42.968147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181297, 32.446999, 42.902122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165461, -0.140633, -0.976138,
		-0.008977, -0.989954, 0.141102,
		-0.986175, -0.014584, -0.165062,
		34.885445, 32.442623, 42.852604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466866, 31.841118, 42.437363>,  <35.575768, 32.452831, 42.968147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466866, 31.841118, 42.437363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171230, 32.109398, 42.412357>,  <34.993847, 32.270367, 42.397354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171230, 32.109398, 42.412357>,  <35.466866, 31.841118, 42.437363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171230, 32.109398, 42.412357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104046, 0.021973, -0.994330,
		-0.665523, -0.741403, -0.086024,
		-0.739090, 0.670700, -0.062516,
		34.949505, 32.310608, 42.393604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178864, 31.700089, 41.783680>,  <35.466866, 31.841118, 42.437363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178864, 31.700089, 41.783680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022675, 32.050892, 41.895668>,  <34.928959, 32.261375, 41.962860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022675, 32.050892, 41.895668>,  <35.178864, 31.700089, 41.783680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022675, 32.050892, 41.895668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172747, 0.228914, -0.957996,
		-0.904260, -0.422439, 0.062115,
		-0.390476, 0.877008, 0.279973,
		34.905533, 32.313995, 41.979660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664051, 31.907200, 41.270359>,  <35.178864, 31.700089, 41.783680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664051, 31.907200, 41.270359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712135, 32.268299, 41.435574>,  <34.740986, 32.484959, 41.534702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712135, 32.268299, 41.435574>,  <34.664051, 31.907200, 41.270359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712135, 32.268299, 41.435574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085587, 0.405078, -0.910267,
		-0.989052, 0.144775, -0.028569,
		0.120211, 0.902747, 0.413034,
		34.748199, 32.539124, 41.559483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265984, 32.465828, 40.842873>,  <34.664051, 31.907200, 41.270359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265984, 32.465828, 40.842873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531685, 32.670258, 41.061069>,  <34.691105, 32.792915, 41.191990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531685, 32.670258, 41.061069>,  <34.265984, 32.465828, 40.842873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531685, 32.670258, 41.061069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060420, 0.690658, -0.720653,
		-0.745059, 0.511657, 0.427895,
		0.664256, 0.511076, 0.545496,
		34.730961, 32.823582, 41.224720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030174, 33.207336, 41.034733>,  <34.265984, 32.465828, 40.842873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030174, 33.207336, 41.034733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430077, 33.201405, 41.028236>,  <34.670017, 33.197845, 41.024338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430077, 33.201405, 41.028236>,  <34.030174, 33.207336, 41.034733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430077, 33.201405, 41.028236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002959, 0.822532, -0.568712,
		0.021795, 0.568526, 0.822376,
		0.999758, -0.014829, -0.016245,
		34.730003, 33.196957, 41.023361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189388, 33.891468, 40.861202>,  <34.030174, 33.207336, 41.034733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189388, 33.891468, 40.861202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546478, 33.721806, 40.800365>,  <34.760731, 33.620007, 40.763863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.546478, 33.721806, 40.800365>,  <34.189388, 33.891468, 40.861202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546478, 33.721806, 40.800365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216723, 0.700097, -0.680364,
		0.395065, 0.574414, 0.716918,
		0.892723, -0.424161, -0.152095,
		34.814297, 33.594559, 40.754738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677906, 34.478596, 40.752644>,  <34.189388, 33.891468, 40.861202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677906, 34.478596, 40.752644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856968, 34.169128, 40.573288>,  <34.964405, 33.983448, 40.465675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856968, 34.169128, 40.573288>,  <34.677906, 34.478596, 40.752644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856968, 34.169128, 40.573288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222854, 0.582137, -0.781955,
		0.865993, 0.250119, 0.433009,
		0.447652, -0.773665, -0.448386,
		34.991264, 33.937027, 40.438770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288036, 34.703335, 40.510597>,  <34.677906, 34.478596, 40.752644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288036, 34.703335, 40.510597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270870, 34.370731, 40.289055>,  <35.260571, 34.171169, 40.156128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270870, 34.370731, 40.289055>,  <35.288036, 34.703335, 40.510597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270870, 34.370731, 40.289055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366342, 0.502658, -0.783025,
		0.929490, -0.236508, 0.283041,
		-0.042918, -0.831504, -0.553858,
		35.257996, 34.121281, 40.122898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892574, 34.589184, 40.248016>,  <35.288036, 34.703335, 40.510597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892574, 34.589184, 40.248016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712971, 34.364140, 39.970352>,  <35.605209, 34.229111, 39.803753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712971, 34.364140, 39.970352>,  <35.892574, 34.589184, 40.248016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712971, 34.364140, 39.970352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670721, 0.301059, -0.677862,
		0.590357, -0.769953, 0.242179,
		-0.449012, -0.562615, -0.694156,
		35.578266, 34.195354, 39.762104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432201, 34.266544, 39.883171>,  <35.892574, 34.589184, 40.248016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432201, 34.266544, 39.883171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105732, 34.239094, 39.653683>,  <35.909851, 34.222626, 39.515991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105732, 34.239094, 39.653683>,  <36.432201, 34.266544, 39.883171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105732, 34.239094, 39.653683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555253, 0.181567, -0.811620,
		0.159861, -0.980982, -0.110089,
		-0.816173, -0.068619, -0.573719,
		35.860882, 34.218506, 39.481567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362839, 33.653198, 39.312050>,  <36.432201, 34.266544, 39.883171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362839, 33.653198, 39.312050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210201, 34.010235, 39.215988>,  <36.118618, 34.224457, 39.158352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210201, 34.010235, 39.215988>,  <36.362839, 33.653198, 39.312050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210201, 34.010235, 39.215988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628866, 0.060290, -0.775172,
		-0.677430, -0.446825, -0.584325,
		-0.381596, 0.892587, -0.240151,
		36.095722, 34.278011, 39.143944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284374, 32.823406, 39.296223>,  <36.362839, 33.653198, 39.312050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284374, 32.823406, 39.296223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661713, 32.786575, 39.168713>,  <36.888115, 32.764477, 39.092209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661713, 32.786575, 39.168713>,  <36.284374, 32.823406, 39.296223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661713, 32.786575, 39.168713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268616, -0.352039, 0.896613,
		-0.194781, -0.931445, -0.307361,
		0.943348, -0.092081, -0.318772,
		36.944717, 32.758949, 39.073082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520592, 32.330963, 39.757511>,  <36.284374, 32.823406, 39.296223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520592, 32.330963, 39.757511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853550, 32.455463, 39.574100>,  <37.053326, 32.530163, 39.464054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853550, 32.455463, 39.574100>,  <36.520592, 32.330963, 39.757511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853550, 32.455463, 39.574100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530386, -0.207549, 0.821958,
		0.160671, -0.927386, -0.337847,
		0.832392, 0.311254, -0.458525,
		37.103268, 32.548840, 39.436543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080391, 31.793322, 39.736526>,  <36.520592, 32.330963, 39.757511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080391, 31.793322, 39.736526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214054, 32.170292, 39.741779>,  <37.294254, 32.396473, 39.744930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214054, 32.170292, 39.741779>,  <37.080391, 31.793322, 39.736526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214054, 32.170292, 39.741779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501139, -0.189456, 0.844373,
		0.798246, -0.275576, -0.535595,
		0.334160, 0.942425, 0.013131,
		37.314301, 32.453018, 39.745720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653957, 31.632969, 40.024525>,  <37.080391, 31.793322, 39.736526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653957, 31.632969, 40.024525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602280, 32.026623, 40.073174>,  <37.571274, 32.262814, 40.102364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602280, 32.026623, 40.073174>,  <37.653957, 31.632969, 40.024525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602280, 32.026623, 40.073174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471678, -0.046893, 0.880523,
		0.872255, 0.171126, -0.458135,
		-0.129197, 0.984133, 0.121620,
		37.563522, 32.321861, 40.109661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273758, 31.929590, 40.203659>,  <37.653957, 31.632969, 40.024525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273758, 31.929590, 40.203659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002079, 32.185181, 40.348103>,  <37.839073, 32.338535, 40.434769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.002079, 32.185181, 40.348103>,  <38.273758, 31.929590, 40.203659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002079, 32.185181, 40.348103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345234, -0.156047, 0.925453,
		0.647693, 0.753231, -0.114611,
		-0.679195, 0.638977, 0.361112,
		37.798321, 32.376873, 40.456436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734894, 32.390667, 40.532654>,  <38.273758, 31.929590, 40.203659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734894, 32.390667, 40.532654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372017, 32.469242, 40.681465>,  <38.154289, 32.516388, 40.770752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372017, 32.469242, 40.681465>,  <38.734894, 32.390667, 40.532654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372017, 32.469242, 40.681465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353001, -0.125657, 0.927146,
		0.228877, 0.972431, 0.044652,
		-0.907196, 0.196440, 0.372029,
		38.099857, 32.528175, 40.793076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761410, 32.863270, 41.171841>,  <38.734894, 32.390667, 40.532654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761410, 32.863270, 41.171841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405483, 32.682682, 41.198410>,  <38.191929, 32.574329, 41.214352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405483, 32.682682, 41.198410>,  <38.761410, 32.863270, 41.171841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405483, 32.682682, 41.198410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143935, -0.139555, 0.979697,
		-0.433032, 0.881307, 0.189160,
		-0.889812, -0.451467, 0.066419,
		38.138538, 32.547241, 41.218334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469128, 33.187107, 41.724354>,  <38.761410, 32.863270, 41.171841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469128, 33.187107, 41.724354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282726, 32.839127, 41.659832>,  <38.170883, 32.630337, 41.621120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282726, 32.839127, 41.659832>,  <38.469128, 33.187107, 41.724354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282726, 32.839127, 41.659832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191030, -0.276935, 0.941709,
		-0.863914, 0.408028, 0.295240,
		-0.466005, -0.869954, -0.161302,
		38.142925, 32.578140, 41.611443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984001, 33.132988, 42.266701>,  <38.469128, 33.187107, 41.724354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984001, 33.132988, 42.266701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987843, 32.756107, 42.132736>,  <37.990147, 32.529980, 42.052357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987843, 32.756107, 42.132736>,  <37.984001, 33.132988, 42.266701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987843, 32.756107, 42.132736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002420, -0.334907, 0.942248,
		-0.999951, -0.009860, -0.000936,
		0.009604, -0.942200, -0.334914,
		37.990723, 32.473446, 42.032261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331532, 32.721928, 42.382168>,  <37.984001, 33.132988, 42.266701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.331532, 32.721928, 42.382168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669510, 32.507992, 42.383144>,  <37.872299, 32.379631, 42.383732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669510, 32.507992, 42.383144>,  <37.331532, 32.721928, 42.382168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669510, 32.507992, 42.383144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190905, -0.297321, 0.935497,
		-0.499618, -0.790913, -0.353325,
		0.844948, -0.534843, 0.002442,
		37.922993, 32.347538, 42.383877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073799, 32.225677, 42.824654>,  <37.331532, 32.721928, 42.382168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073799, 32.225677, 42.824654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441948, 32.084656, 42.756985>,  <37.662838, 32.000042, 42.716385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441948, 32.084656, 42.756985>,  <37.073799, 32.225677, 42.824654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441948, 32.084656, 42.756985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038205, -0.511612, 0.858367,
		-0.389172, -0.783554, -0.484343,
		0.920372, -0.352557, -0.169170,
		37.718060, 31.978888, 42.706234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023453, 31.589338, 43.011696>,  <37.073799, 32.225677, 42.824654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023453, 31.589338, 43.011696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410542, 31.684818, 43.044048>,  <37.642796, 31.742105, 43.063461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410542, 31.684818, 43.044048>,  <37.023453, 31.589338, 43.011696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410542, 31.684818, 43.044048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003300, -0.332902, 0.942956,
		0.252011, -0.912249, -0.322943,
		0.967718, 0.238701, 0.080884,
		37.700859, 31.756428, 43.068314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356670, 30.952890, 43.261314>,  <37.023453, 31.589338, 43.011696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356670, 30.952890, 43.261314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587494, 31.261248, 43.369186>,  <37.725986, 31.446262, 43.433910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.587494, 31.261248, 43.369186>,  <37.356670, 30.952890, 43.261314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587494, 31.261248, 43.369186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101890, -0.259671, 0.960307,
		0.810321, -0.581632, -0.071299,
		0.577060, 0.770892, 0.269679,
		37.760612, 31.492516, 43.450089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878082, 30.632269, 43.649940>,  <37.356670, 30.952890, 43.261314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878082, 30.632269, 43.649940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873352, 31.025427, 43.723454>,  <37.870514, 31.261322, 43.767563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873352, 31.025427, 43.723454>,  <37.878082, 30.632269, 43.649940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873352, 31.025427, 43.723454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114597, -0.183918, 0.976239,
		0.993342, -0.009521, 0.114811,
		-0.011821, 0.982896, 0.183784,
		37.869804, 31.320295, 43.778587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270367, 30.704851, 44.188538>,  <37.878082, 30.632269, 43.649940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270367, 30.704851, 44.188538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065331, 31.046925, 44.219280>,  <37.942307, 31.252169, 44.237728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065331, 31.046925, 44.219280>,  <38.270367, 30.704851, 44.188538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065331, 31.046925, 44.219280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184766, -0.197278, 0.962779,
		0.838515, 0.479314, 0.259133,
		-0.512595, 0.855184, 0.076860,
		37.911552, 31.303480, 44.242340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505726, 31.088381, 44.787216>,  <38.270367, 30.704851, 44.188538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505726, 31.088381, 44.787216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132118, 31.214008, 44.719135>,  <37.907955, 31.289385, 44.678288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132118, 31.214008, 44.719135>,  <38.505726, 31.088381, 44.787216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132118, 31.214008, 44.719135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193718, -0.044997, 0.980025,
		0.300136, 0.948333, 0.102869,
		-0.934019, 0.314069, -0.170204,
		37.851913, 31.308229, 44.668076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385811, 31.551970, 45.397682>,  <38.505726, 31.088381, 44.787216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385811, 31.551970, 45.397682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029369, 31.447294, 45.249382>,  <37.815506, 31.384489, 45.160404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.029369, 31.447294, 45.249382>,  <38.385811, 31.551970, 45.397682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029369, 31.447294, 45.249382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321588, -0.212271, 0.922780,
		-0.320180, 0.941520, 0.104999,
		-0.891104, -0.261689, -0.370747,
		37.762039, 31.368788, 45.138157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861885, 31.897133, 45.818871>,  <38.385811, 31.551970, 45.397682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861885, 31.897133, 45.818871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679302, 31.584204, 45.649345>,  <37.569752, 31.396446, 45.547630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679302, 31.584204, 45.649345>,  <37.861885, 31.897133, 45.818871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679302, 31.584204, 45.649345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465053, -0.196308, 0.863243,
		-0.758531, 0.591132, -0.274214,
		-0.456460, -0.782321, -0.423814,
		37.542366, 31.349508, 45.522202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264156, 31.932524, 46.140522>,  <37.861885, 31.897133, 45.818871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264156, 31.932524, 46.140522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279625, 31.557959, 46.001019>,  <37.288906, 31.333220, 45.917316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279625, 31.557959, 46.001019>,  <37.264156, 31.932524, 46.140522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279625, 31.557959, 46.001019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577058, -0.305865, 0.757265,
		-0.815787, 0.171971, -0.552193,
		0.038669, -0.936415, -0.348758,
		37.291225, 31.277035, 45.896393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638451, 31.830591, 45.947926>,  <37.264156, 31.932524, 46.140522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638451, 31.830591, 45.947926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831192, 31.489719, 46.029518>,  <36.946838, 31.285196, 46.078472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.831192, 31.489719, 46.029518>,  <36.638451, 31.830591, 45.947926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831192, 31.489719, 46.029518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714270, -0.247144, 0.654781,
		-0.507577, -0.461208, -0.727773,
		0.481855, -0.852178, 0.203982,
		36.975750, 31.234066, 46.090714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080479, 31.417692, 46.167526>,  <36.638451, 31.830591, 45.947926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080479, 31.417692, 46.167526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401188, 31.222717, 46.305843>,  <36.593613, 31.105732, 46.388832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.401188, 31.222717, 46.305843>,  <36.080479, 31.417692, 46.167526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401188, 31.222717, 46.305843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490257, -0.205542, 0.846995,
		-0.341782, -0.848621, -0.403766,
		0.801769, -0.487437, 0.345792,
		36.641720, 31.076487, 46.409580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863220, 30.750322, 46.425812>,  <36.080479, 31.417692, 46.167526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863220, 30.750322, 46.425812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200642, 30.871738, 46.603027>,  <36.403095, 30.944588, 46.709354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.200642, 30.871738, 46.603027>,  <35.863220, 30.750322, 46.425812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200642, 30.871738, 46.603027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403068, -0.187323, 0.895794,
		0.354899, -0.934224, -0.035670,
		0.843554, 0.303538, 0.443037,
		36.453709, 30.962799, 46.735939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121021, 30.254749, 46.989578>,  <35.863220, 30.750322, 46.425812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121021, 30.254749, 46.989578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260777, 30.624540, 47.050594>,  <36.344631, 30.846415, 47.087204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260777, 30.624540, 47.050594>,  <36.121021, 30.254749, 46.989578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260777, 30.624540, 47.050594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323240, -0.033881, 0.945710,
		0.879455, -0.379731, 0.286989,
		0.349392, 0.924476, 0.152541,
		36.365593, 30.901884, 47.096355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606373, 30.328188, 47.601254>,  <36.121021, 30.254749, 46.989578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606373, 30.328188, 47.601254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475559, 30.700211, 47.534271>,  <36.397072, 30.923424, 47.494083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475559, 30.700211, 47.534271>,  <36.606373, 30.328188, 47.601254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475559, 30.700211, 47.534271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342565, 0.048472, 0.938243,
		0.880736, 0.364204, 0.302752,
		-0.327037, 0.930057, -0.167454,
		36.377449, 30.979227, 47.484035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762115, 30.662205, 48.234215>,  <36.606373, 30.328188, 47.601254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762115, 30.662205, 48.234215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493904, 30.901138, 48.058224>,  <36.332977, 31.044498, 47.952629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493904, 30.901138, 48.058224>,  <36.762115, 30.662205, 48.234215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493904, 30.901138, 48.058224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301525, 0.322437, 0.897283,
		0.677843, 0.734321, -0.036093,
		-0.670531, 0.597334, -0.439978,
		36.292744, 31.080338, 47.926231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972664, 31.372929, 48.475468>,  <36.762115, 30.662205, 48.234215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972664, 31.372929, 48.475468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584846, 31.324488, 48.390312>,  <36.352158, 31.295424, 48.339218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584846, 31.324488, 48.390312>,  <36.972664, 31.372929, 48.475468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584846, 31.324488, 48.390312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244571, 0.432308, 0.867925,
		-0.013078, 0.893557, -0.448760,
		-0.969543, -0.121104, -0.212885,
		36.293983, 31.288157, 48.326447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680248, 31.965666, 48.730152>,  <36.972664, 31.372929, 48.475468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680248, 31.965666, 48.730152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366810, 31.719830, 48.693802>,  <36.178749, 31.572329, 48.671989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366810, 31.719830, 48.693802>,  <36.680248, 31.965666, 48.730152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366810, 31.719830, 48.693802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362024, 0.332822, 0.870729,
		-0.504895, 0.715199, -0.483294,
		-0.783595, -0.614590, -0.090879,
		36.131733, 31.535452, 48.666538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211723, 32.338421, 48.959034>,  <36.680248, 31.965666, 48.730152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211723, 32.338421, 48.959034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027637, 31.984514, 48.988388>,  <35.917187, 31.772169, 49.006001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027637, 31.984514, 48.988388>,  <36.211723, 32.338421, 48.959034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027637, 31.984514, 48.988388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454230, 0.305677, 0.836801,
		-0.762808, 0.351776, -0.542566,
		-0.460217, -0.884769, 0.073386,
		35.889572, 31.719084, 49.010403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563911, 32.479172, 49.144413>,  <36.211723, 32.338421, 48.959034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563911, 32.479172, 49.144413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645206, 32.106270, 49.264145>,  <35.693985, 31.882530, 49.335983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645206, 32.106270, 49.264145>,  <35.563911, 32.479172, 49.144413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645206, 32.106270, 49.264145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348420, 0.216846, 0.911911,
		-0.915040, -0.289627, -0.280745,
		0.203236, -0.932252, 0.299334,
		35.706177, 31.826593, 49.353947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997429, 32.303051, 49.493706>,  <35.563911, 32.479172, 49.144413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997429, 32.303051, 49.493706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244263, 32.011036, 49.611179>,  <35.392365, 31.835827, 49.681664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244263, 32.011036, 49.611179>,  <34.997429, 32.303051, 49.493706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244263, 32.011036, 49.611179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457636, -0.029336, 0.888655,
		-0.640134, -0.682780, -0.352193,
		0.617088, -0.730035, 0.293686,
		35.429390, 31.792025, 49.699284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587570, 31.816715, 49.736263>,  <34.997429, 32.303051, 49.493706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587570, 31.816715, 49.736263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951244, 31.761923, 49.893551>,  <35.169449, 31.729048, 49.987923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951244, 31.761923, 49.893551>,  <34.587570, 31.816715, 49.736263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951244, 31.761923, 49.893551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390370, 0.048186, 0.919396,
		-0.144890, -0.989401, -0.009665,
		0.909186, -0.136985, 0.393214,
		35.223999, 31.720829, 50.011517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434933, 31.499342, 50.405663>,  <34.587570, 31.816715, 49.736263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434933, 31.499342, 50.405663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819355, 31.594372, 50.462139>,  <35.050007, 31.651390, 50.496025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819355, 31.594372, 50.462139>,  <34.434933, 31.499342, 50.405663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819355, 31.594372, 50.462139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142833, -0.010381, 0.989692,
		0.236595, -0.971313, 0.023957,
		0.961052, 0.237578, 0.141192,
		35.107670, 31.665646, 50.504498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706848, 30.969669, 50.827637>,  <34.434933, 31.499342, 50.405663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706848, 30.969669, 50.827637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951393, 31.281473, 50.882183>,  <35.098122, 31.468555, 50.914909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951393, 31.281473, 50.882183>,  <34.706848, 30.969669, 50.827637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951393, 31.281473, 50.882183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117689, -0.080838, 0.989755,
		0.782549, -0.621150, 0.042318,
		0.611365, 0.779512, 0.136362,
		35.134804, 31.515327, 50.923092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198135, 30.701548, 51.264317>,  <34.706848, 30.969669, 50.827637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198135, 30.701548, 51.264317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206966, 31.101189, 51.278778>,  <35.212265, 31.340973, 51.287457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206966, 31.101189, 51.278778>,  <35.198135, 30.701548, 51.264317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206966, 31.101189, 51.278778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119006, -0.033284, 0.992335,
		0.992648, -0.026213, 0.118164,
		0.022079, 0.999102, 0.036159,
		35.213589, 31.400919, 51.289627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616329, 30.829941, 51.760723>,  <35.198135, 30.701548, 51.264317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616329, 30.829941, 51.760723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421989, 31.175854, 51.709969>,  <35.305386, 31.383402, 51.679516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.421989, 31.175854, 51.709969>,  <35.616329, 30.829941, 51.760723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421989, 31.175854, 51.709969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273642, -0.012621, 0.961749,
		0.830103, 0.501986, 0.242773,
		-0.485849, 0.864783, -0.126888,
		35.276234, 31.435289, 51.671902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903622, 31.344126, 52.245689>,  <35.616329, 30.829941, 51.760723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903622, 31.344126, 52.245689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533314, 31.423441, 52.116917>,  <35.311131, 31.471029, 52.039654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533314, 31.423441, 52.116917>,  <35.903622, 31.344126, 52.245689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533314, 31.423441, 52.116917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304676, 0.112964, 0.945733,
		0.223894, 0.973612, -0.044164,
		-0.925767, 0.198289, -0.321928,
		35.255585, 31.482927, 52.020340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695675, 31.691820, 52.765041>,  <35.903622, 31.344126, 52.245689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695675, 31.691820, 52.765041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363434, 31.571592, 52.577530>,  <35.164089, 31.499456, 52.465023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363434, 31.571592, 52.577530>,  <35.695675, 31.691820, 52.765041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363434, 31.571592, 52.577530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450306, -0.132701, 0.882958,
		-0.327596, 0.944483, -0.025126,
		-0.830605, -0.300568, -0.468779,
		35.114254, 31.481422, 52.436897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055763, 32.333225, 52.706165>,  <35.695675, 31.691820, 52.765041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055763, 32.333225, 52.706165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233234, 32.630535, 52.906437>,  <36.339718, 32.808922, 53.026600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233234, 32.630535, 52.906437>,  <36.055763, 32.333225, 52.706165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233234, 32.630535, 52.906437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637361, 0.131043, -0.759341,
		-0.630013, 0.656021, -0.415596,
		0.443682, 0.743279, 0.500681,
		36.366341, 32.853519, 53.056641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209625, 32.909447, 52.283134>,  <36.055763, 32.333225, 52.706165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209625, 32.909447, 52.283134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480946, 32.943264, 52.575096>,  <36.643738, 32.963554, 52.750271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480946, 32.943264, 52.575096>,  <36.209625, 32.909447, 52.283134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480946, 32.943264, 52.575096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708467, 0.188214, -0.680184,
		-0.194881, 0.978483, 0.067772,
		0.678304, 0.084540, 0.729902,
		36.684437, 32.968628, 52.794067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571163, 33.475212, 52.137016>,  <36.209625, 32.909447, 52.283134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571163, 33.475212, 52.137016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810238, 33.278931, 52.390625>,  <36.953682, 33.161163, 52.542789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810238, 33.278931, 52.390625>,  <36.571163, 33.475212, 52.137016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810238, 33.278931, 52.390625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746597, 0.052464, -0.663204,
		0.292174, 0.869745, 0.397716,
		0.597685, -0.490705, 0.634021,
		36.989544, 33.131718, 52.580830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198311, 33.912937, 52.238358>,  <36.571163, 33.475212, 52.137016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198311, 33.912937, 52.238358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300270, 33.541046, 52.344666>,  <37.361446, 33.317913, 52.408451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300270, 33.541046, 52.344666>,  <37.198311, 33.912937, 52.238358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300270, 33.541046, 52.344666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775037, 0.032080, -0.631101,
		0.578225, 0.366850, 0.728750,
		0.254897, -0.929727, 0.265773,
		37.376740, 33.262127, 52.424397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913425, 33.947765, 52.366638>,  <37.198311, 33.912937, 52.238358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913425, 33.947765, 52.366638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822514, 33.568977, 52.275784>,  <37.767967, 33.341705, 52.221272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822514, 33.568977, 52.275784>,  <37.913425, 33.947765, 52.366638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822514, 33.568977, 52.275784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798079, -0.047469, -0.600680,
		0.558045, -0.317792, 0.766546,
		-0.227279, -0.946971, -0.227133,
		37.754330, 33.284885, 52.207642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521805, 33.500664, 52.387074>,  <37.913425, 33.947765, 52.366638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521805, 33.500664, 52.387074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278397, 33.277863, 52.160992>,  <38.132351, 33.144180, 52.025345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278397, 33.277863, 52.160992>,  <38.521805, 33.500664, 52.387074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278397, 33.277863, 52.160992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727715, -0.107669, -0.677376,
		0.316447, -0.823500, 0.470860,
		-0.608516, -0.557005, -0.565202,
		38.095840, 33.110760, 51.991432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889347, 32.953377, 52.176708>,  <38.521805, 33.500664, 52.387074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889347, 32.953377, 52.176708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590012, 32.962360, 51.911533>,  <38.410412, 32.967751, 51.752430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590012, 32.962360, 51.911533>,  <38.889347, 32.953377, 52.176708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590012, 32.962360, 51.911533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641430, -0.230105, -0.731860,
		-0.168985, -0.972907, 0.157788,
		-0.748339, 0.022463, -0.662936,
		38.365509, 32.969097, 51.712654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119823, 32.441238, 51.674076>,  <38.889347, 32.953377, 52.176708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119823, 32.441238, 51.674076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833935, 32.647263, 51.484810>,  <38.662403, 32.770878, 51.371250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.833935, 32.647263, 51.484810>,  <39.119823, 32.441238, 51.674076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833935, 32.647263, 51.484810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568036, 0.032764, -0.822351,
		-0.408060, -0.856526, -0.315990,
		-0.714719, 0.515062, -0.473168,
		38.619518, 32.801781, 51.342861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091431, 32.157787, 51.009521>,  <39.119823, 32.441238, 51.674076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091431, 32.157787, 51.009521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915600, 32.514423, 50.966007>,  <38.810101, 32.728405, 50.939899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915600, 32.514423, 50.966007>,  <39.091431, 32.157787, 51.009521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915600, 32.514423, 50.966007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466670, 0.123223, -0.875805,
		-0.767457, -0.435750, -0.470246,
		-0.439577, 0.891593, -0.108783,
		38.783726, 32.781902, 50.933372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961105, 32.248955, 50.296333>,  <39.091431, 32.157787, 51.009521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961105, 32.248955, 50.296333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867252, 32.629459, 50.376381>,  <38.810940, 32.857761, 50.424412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.867252, 32.629459, 50.376381>,  <38.961105, 32.248955, 50.296333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867252, 32.629459, 50.376381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322365, 0.270364, -0.907185,
		-0.917076, -0.148343, -0.370090,
		-0.234634, 0.951261, 0.200124,
		38.796864, 32.914837, 50.436417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534077, 32.504147, 49.699787>,  <38.961105, 32.248955, 50.296333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534077, 32.504147, 49.699787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706467, 32.804420, 49.900078>,  <38.809902, 32.984585, 50.020252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706467, 32.804420, 49.900078>,  <38.534077, 32.504147, 49.699787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706467, 32.804420, 49.900078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303905, 0.401741, -0.863855,
		-0.849649, 0.524474, -0.054997,
		0.430975, 0.750687, 0.500729,
		38.835758, 33.029625, 50.050297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293030, 32.985420, 49.329170>,  <38.534077, 32.504147, 49.699787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293030, 32.985420, 49.329170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599983, 33.155285, 49.521328>,  <38.784157, 33.257206, 49.636623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599983, 33.155285, 49.521328>,  <38.293030, 32.985420, 49.329170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599983, 33.155285, 49.521328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217647, 0.532227, -0.818147,
		-0.603119, 0.732389, 0.315996,
		0.767383, 0.424665, 0.480399,
		38.830196, 33.282684, 49.665447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192318, 33.675499, 49.340008>,  <38.293030, 32.985420, 49.329170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192318, 33.675499, 49.340008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586937, 33.612946, 49.359062>,  <38.823708, 33.575413, 49.370495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586937, 33.612946, 49.359062>,  <38.192318, 33.675499, 49.340008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586937, 33.612946, 49.359062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112743, 0.439822, -0.890980,
		0.118383, 0.884364, 0.451536,
		0.986547, -0.156385, 0.047639,
		38.882900, 33.566029, 49.373352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596687, 34.339825, 49.301319>,  <38.192318, 33.675499, 49.340008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596687, 34.339825, 49.301319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845177, 34.050373, 49.181023>,  <38.994270, 33.876701, 49.108845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845177, 34.050373, 49.181023>,  <38.596687, 34.339825, 49.301319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845177, 34.050373, 49.181023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157298, 0.491115, -0.856775,
		0.767685, 0.484942, 0.418917,
		0.621223, -0.723628, -0.300741,
		39.031544, 33.833286, 49.090801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879288, 34.630787, 48.743717>,  <38.596687, 34.339825, 49.301319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879288, 34.630787, 48.743717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046932, 34.267647, 48.738842>,  <39.147518, 34.049763, 48.735916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.046932, 34.267647, 48.738842>,  <38.879288, 34.630787, 48.743717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046932, 34.267647, 48.738842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500790, 0.242348, -0.830949,
		0.757333, 0.342157, 0.556215,
		0.419113, -0.907853, -0.012190,
		39.172665, 33.995293, 48.735184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568607, 34.724316, 48.592052>,  <38.879288, 34.630787, 48.743717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568607, 34.724316, 48.592052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466202, 34.365108, 48.448929>,  <39.404758, 34.149586, 48.363056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466202, 34.365108, 48.448929>,  <39.568607, 34.724316, 48.592052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466202, 34.365108, 48.448929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566407, 0.160597, -0.808326,
		0.783351, -0.409609, 0.467526,
		-0.256015, -0.898014, -0.357810,
		39.389397, 34.095703, 48.341587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200684, 34.375286, 48.206337>,  <39.568607, 34.724316, 48.592052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.200684, 34.375286, 48.206337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887764, 34.147884, 48.104511>,  <39.700012, 34.011444, 48.043415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.887764, 34.147884, 48.104511>,  <40.200684, 34.375286, 48.206337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887764, 34.147884, 48.104511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304923, 0.006846, -0.952352,
		0.543163, -0.822649, 0.167995,
		-0.782301, -0.568509, -0.254564,
		39.653072, 33.977333, 48.028141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482090, 33.768375, 47.744156>,  <40.200684, 34.375286, 48.206337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482090, 33.768375, 47.744156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092735, 33.827091, 47.673771>,  <39.859123, 33.862320, 47.631538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092735, 33.827091, 47.673771>,  <40.482090, 33.768375, 47.744156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092735, 33.827091, 47.673771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163380, -0.093886, -0.982086,
		-0.160681, -0.984702, 0.067405,
		-0.973390, 0.146790, -0.175966,
		39.800716, 33.871128, 47.620979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285854, 33.169910, 47.473820>,  <40.482090, 33.768375, 47.744156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285854, 33.169910, 47.473820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006248, 33.437420, 47.372536>,  <39.838486, 33.597927, 47.311764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.006248, 33.437420, 47.372536>,  <40.285854, 33.169910, 47.473820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006248, 33.437420, 47.372536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082060, -0.276734, -0.957437,
		-0.710384, -0.690040, 0.138561,
		-0.699014, 0.668777, -0.253212,
		39.796543, 33.638054, 47.296574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975624, 32.806366, 47.080647>,  <40.285854, 33.169910, 47.473820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975624, 32.806366, 47.080647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842983, 33.170063, 46.980000>,  <39.763397, 33.388283, 46.919609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.842983, 33.170063, 46.980000>,  <39.975624, 32.806366, 47.080647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842983, 33.170063, 46.980000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031244, -0.255982, -0.966176,
		-0.942901, -0.328251, 0.056477,
		-0.331606, 0.909244, -0.251622,
		39.743500, 33.442837, 46.904514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352287, 32.648960, 46.677979>,  <39.975624, 32.806366, 47.080647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352287, 32.648960, 46.677979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470154, 33.020077, 46.586430>,  <39.540874, 33.242744, 46.531502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470154, 33.020077, 46.586430>,  <39.352287, 32.648960, 46.677979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470154, 33.020077, 46.586430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128719, -0.198783, -0.971553,
		-0.946893, 0.315740, 0.060851,
		0.294662, 0.927790, -0.228868,
		39.558552, 33.298412, 46.517769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881184, 32.887501, 46.186966>,  <39.352287, 32.648960, 46.677979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881184, 32.887501, 46.186966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196243, 33.129513, 46.140415>,  <39.385281, 33.274719, 46.112484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.196243, 33.129513, 46.140415>,  <38.881184, 32.887501, 46.186966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196243, 33.129513, 46.140415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108276, -0.050010, -0.992862,
		-0.606534, 0.794628, 0.026121,
		0.787650, 0.605033, -0.116372,
		39.432537, 33.311024, 46.105503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630589, 33.324936, 45.714912>,  <38.881184, 32.887501, 46.186966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630589, 33.324936, 45.714912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030518, 33.331432, 45.710968>,  <39.270473, 33.335331, 45.708603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030518, 33.331432, 45.710968>,  <38.630589, 33.324936, 45.714912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030518, 33.331432, 45.710968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008830, -0.062298, -0.998019,
		-0.016822, 0.997926, -0.062144,
		0.999820, 0.016240, -0.009860,
		39.330463, 33.336304, 45.708012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810932, 33.812359, 45.062744>,  <38.630589, 33.324936, 45.714912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810932, 33.812359, 45.062744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149166, 33.624447, 45.164165>,  <39.352108, 33.511700, 45.225018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149166, 33.624447, 45.164165>,  <38.810932, 33.812359, 45.062744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149166, 33.624447, 45.164165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331902, 0.090627, -0.938950,
		0.418123, 0.878118, 0.232554,
		0.845585, -0.469782, 0.253556,
		39.402840, 33.483513, 45.240231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454987, 34.227417, 44.926777>,  <38.810932, 33.812359, 45.062744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454987, 34.227417, 44.926777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568386, 33.844280, 44.908157>,  <39.636425, 33.614399, 44.896984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568386, 33.844280, 44.908157>,  <39.454987, 34.227417, 44.926777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568386, 33.844280, 44.908157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407738, 0.164335, -0.898189,
		0.867973, 0.235655, 0.437138,
		0.283500, -0.957841, -0.046553,
		39.653435, 33.556927, 44.894192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088696, 34.164150, 44.601280>,  <39.454987, 34.227417, 44.926777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088696, 34.164150, 44.601280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924892, 33.802402, 44.553242>,  <39.826611, 33.585354, 44.524418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.924892, 33.802402, 44.553242>,  <40.088696, 34.164150, 44.601280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924892, 33.802402, 44.553242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209345, 0.034974, -0.977216,
		0.887965, -0.425315, 0.175003,
		-0.409504, -0.904369, -0.120093,
		39.802040, 33.531094, 44.517216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601154, 33.803101, 44.319504>,  <40.088696, 34.164150, 44.601280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601154, 33.803101, 44.319504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314137, 33.531746, 44.256355>,  <40.141926, 33.368935, 44.218468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314137, 33.531746, 44.256355>,  <40.601154, 33.803101, 44.319504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314137, 33.531746, 44.256355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253360, -0.043091, -0.966412,
		0.648798, -0.733441, 0.202796,
		-0.717544, -0.678386, -0.157868,
		40.098873, 33.328232, 44.208996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946262, 33.190910, 44.278347>,  <40.601154, 33.803101, 44.319504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946262, 33.190910, 44.278347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599255, 33.169109, 44.080582>,  <40.391048, 33.156029, 43.961922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599255, 33.169109, 44.080582>,  <40.946262, 33.190910, 44.278347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599255, 33.169109, 44.080582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496744, -0.146122, -0.855508,
		-0.025615, -0.987764, 0.153838,
		-0.867519, -0.054504, -0.494409,
		40.339001, 33.152760, 43.932259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133289, 32.856972, 43.635544>,  <40.946262, 33.190910, 44.278347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133289, 32.856972, 43.635544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763790, 32.978222, 43.541901>,  <40.542091, 33.050972, 43.485714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763790, 32.978222, 43.541901>,  <41.133289, 32.856972, 43.635544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763790, 32.978222, 43.541901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200227, -0.138873, -0.969857,
		-0.326497, -0.942779, 0.067590,
		-0.923747, 0.303122, -0.234111,
		40.486668, 33.069157, 43.471668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932156, 32.324142, 43.238834>,  <41.133289, 32.856972, 43.635544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932156, 32.324142, 43.238834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679787, 32.624382, 43.160313>,  <40.528366, 32.804527, 43.113201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679787, 32.624382, 43.160313>,  <40.932156, 32.324142, 43.238834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679787, 32.624382, 43.160313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275590, -0.019698, -0.961073,
		-0.725250, -0.660462, -0.194431,
		-0.630923, 0.750601, -0.196302,
		40.490509, 32.849564, 43.101421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473549, 32.097229, 42.651070>,  <40.932156, 32.324142, 43.238834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473549, 32.097229, 42.651070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454788, 32.496502, 42.635921>,  <40.443531, 32.736065, 42.626831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.454788, 32.496502, 42.635921>,  <40.473549, 32.097229, 42.651070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454788, 32.496502, 42.635921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229922, -0.026109, -0.972858,
		-0.972078, -0.054332, -0.228280,
		-0.046897, 0.998182, -0.037872,
		40.440720, 32.795956, 42.624561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062183, 32.269325, 42.121258>,  <40.473549, 32.097229, 42.651070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062183, 32.269325, 42.121258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278851, 32.600407, 42.179920>,  <40.408852, 32.799053, 42.215118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278851, 32.600407, 42.179920>,  <40.062183, 32.269325, 42.121258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278851, 32.600407, 42.179920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183578, 0.053773, -0.981533,
		-0.820301, 0.558589, -0.122820,
		0.541669, 0.827699, 0.146655,
		40.441353, 32.848717, 42.223915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801823, 32.825024, 41.677132>,  <40.062183, 32.269325, 42.121258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801823, 32.825024, 41.677132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181721, 32.922955, 41.755154>,  <40.409660, 32.981712, 41.801968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181721, 32.922955, 41.755154>,  <39.801823, 32.825024, 41.677132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181721, 32.922955, 41.755154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162640, 0.146458, -0.975755,
		-0.267456, 0.958442, 0.099279,
		0.949745, 0.244824, 0.195052,
		40.466644, 32.996403, 41.813671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960354, 33.348095, 41.298626>,  <39.801823, 32.825024, 41.677132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960354, 33.348095, 41.298626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337784, 33.241695, 41.377522>,  <40.564243, 33.177856, 41.424858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337784, 33.241695, 41.377522>,  <39.960354, 33.348095, 41.298626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337784, 33.241695, 41.377522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266056, 0.254311, -0.929807,
		0.197169, 0.929822, 0.310733,
		0.943578, -0.266001, 0.197243,
		40.620857, 33.161896, 41.436695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350658, 33.858974, 41.000679>,  <39.960354, 33.348095, 41.298626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350658, 33.858974, 41.000679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628338, 33.572659, 41.030979>,  <40.794945, 33.400871, 41.049160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.628338, 33.572659, 41.030979>,  <40.350658, 33.858974, 41.000679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628338, 33.572659, 41.030979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279285, 0.170866, -0.944884,
		0.663392, 0.677092, 0.318523,
		0.694198, -0.715787, 0.075750,
		40.836597, 33.357922, 41.053703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937477, 34.154716, 40.754608>,  <40.350658, 33.858974, 41.000679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937477, 34.154716, 40.754608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.967449, 33.756073, 40.740971>,  <40.985432, 33.516888, 40.732788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.967449, 33.756073, 40.740971>,  <40.937477, 34.154716, 40.754608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967449, 33.756073, 40.740971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209396, 0.049156, -0.976594,
		0.974955, 0.066040, 0.212369,
		0.074934, -0.996605, -0.034097,
		40.989929, 33.457092, 40.730743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449947, 34.078079, 40.343567>,  <40.937477, 34.154716, 40.754608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449947, 34.078079, 40.343567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295132, 33.709255, 40.342869>,  <41.202244, 33.487961, 40.342449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.295132, 33.709255, 40.342869>,  <41.449947, 34.078079, 40.343567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295132, 33.709255, 40.342869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190542, -0.078129, -0.978565,
		0.902161, -0.379075, 0.205931,
		-0.387039, -0.922062, -0.001745,
		41.179020, 33.432636, 40.342346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866093, 33.741096, 40.045677>,  <41.449947, 34.078079, 40.343567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866093, 33.741096, 40.045677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558052, 33.491863, 39.990959>,  <41.373230, 33.342323, 39.958130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.558052, 33.491863, 39.990959>,  <41.866093, 33.741096, 40.045677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558052, 33.491863, 39.990959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240216, -0.084591, -0.967027,
		0.590971, -0.777564, 0.214819,
		-0.770097, -0.623088, -0.136793,
		41.327023, 33.304935, 39.949921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111057, 33.158836, 39.627586>,  <41.866093, 33.741096, 40.045677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111057, 33.158836, 39.627586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713089, 33.129585, 39.599915>,  <41.474308, 33.112034, 39.583309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713089, 33.129585, 39.599915>,  <42.111057, 33.158836, 39.627586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713089, 33.129585, 39.599915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082379, -0.196447, -0.977048,
		0.057858, -0.977784, 0.201474,
		-0.994920, -0.073127, -0.069183,
		41.414612, 33.107647, 39.579159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931782, 32.587425, 39.351433>,  <42.111057, 33.158836, 39.627586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931782, 32.587425, 39.351433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600723, 32.800724, 39.281406>,  <41.402088, 32.928703, 39.239391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.600723, 32.800724, 39.281406>,  <41.931782, 32.587425, 39.351433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600723, 32.800724, 39.281406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083402, -0.191610, -0.977921,
		-0.555018, -0.823974, 0.114112,
		-0.827647, 0.533246, -0.175068,
		41.352428, 32.960697, 39.228886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.406555, 32.234470, 39.033329>,  <41.931782, 32.587425, 39.351433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.406555, 32.234470, 39.033329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415844, 32.620869, 38.930317>,  <41.421417, 32.852707, 38.868511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415844, 32.620869, 38.930317>,  <41.406555, 32.234470, 39.033329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415844, 32.620869, 38.930317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046898, -0.258368, -0.964907,
		-0.998630, 0.010332, -0.051303,
		0.023225, 0.965991, -0.257530,
		41.422810, 32.910667, 38.853058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817520, 32.424892, 38.448101>,  <41.406555, 32.234470, 39.033329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817520, 32.424892, 38.448101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133549, 32.668530, 38.475792>,  <41.323166, 32.814713, 38.492405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133549, 32.668530, 38.475792>,  <40.817520, 32.424892, 38.448101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133549, 32.668530, 38.475792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186109, -0.130735, -0.973792,
		-0.584081, 0.782248, -0.216648,
		0.790071, 0.609094, 0.069223,
		41.370571, 32.851257, 38.496559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738415, 32.855125, 37.827641>,  <40.817520, 32.424892, 38.448101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738415, 32.855125, 37.827641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106449, 32.852226, 37.984303>,  <41.327271, 32.850487, 38.078300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106449, 32.852226, 37.984303>,  <40.738415, 32.855125, 37.827641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106449, 32.852226, 37.984303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391615, -0.006810, -0.920104,
		0.009335, 0.999951, -0.003427,
		0.920082, -0.007247, 0.391659,
		41.382473, 32.850052, 38.101799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242535, 33.293488, 37.455540>,  <40.738415, 32.855125, 37.827641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242535, 33.293488, 37.455540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471077, 33.019436, 37.636269>,  <41.608204, 32.855003, 37.744705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.471077, 33.019436, 37.636269>,  <41.242535, 33.293488, 37.455540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.471077, 33.019436, 37.636269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592623, -0.036433, -0.804655,
		0.567755, 0.727508, 0.385208,
		0.571359, -0.685131, 0.451823,
		41.642487, 32.813896, 37.771816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049442, 33.539196, 37.508503>,  <41.242535, 33.293488, 37.455540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049442, 33.539196, 37.508503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971149, 33.147083, 37.519363>,  <41.924171, 32.911816, 37.525879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971149, 33.147083, 37.519363>,  <42.049442, 33.539196, 37.508503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971149, 33.147083, 37.519363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533769, -0.129727, -0.835620,
		0.822665, -0.149067, 0.548636,
		-0.195736, -0.980280, 0.027155,
		41.912430, 32.853001, 37.527512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743355, 33.190891, 37.458313>,  <42.049442, 33.539196, 37.508503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743355, 33.190891, 37.458313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411747, 33.001740, 37.338909>,  <42.212780, 32.888248, 37.267265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.411747, 33.001740, 37.338909>,  <42.743355, 33.190891, 37.458313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.411747, 33.001740, 37.338909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411802, -0.155083, -0.897980,
		0.378338, -0.867374, 0.323299,
		-0.829023, -0.472875, -0.298513,
		42.163040, 32.859879, 37.249355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002136, 32.710239, 36.964092>,  <42.743355, 33.190891, 37.458313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002136, 32.710239, 36.964092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620255, 32.795124, 36.880657>,  <42.391125, 32.846054, 36.830597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620255, 32.795124, 36.880657>,  <43.002136, 32.710239, 36.964092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620255, 32.795124, 36.880657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219137, 0.027206, -0.975315,
		-0.201296, -0.976846, -0.072476,
		-0.954703, 0.212209, -0.208586,
		42.333843, 32.858788, 36.818081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.478481, 32.175434, 36.771442>,  <43.002136, 32.710239, 36.964092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.478481, 32.175434, 36.771442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445267, 32.542606, 36.616264>,  <42.425339, 32.762909, 36.523159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445267, 32.542606, 36.616264>,  <42.478481, 32.175434, 36.771442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445267, 32.542606, 36.616264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351524, -0.337285, -0.873309,
		-0.932489, -0.208888, -0.294670,
		-0.083036, 0.917935, -0.387944,
		42.420357, 32.817986, 36.499882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040600, 32.172188, 36.253170>,  <42.478481, 32.175434, 36.771442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040600, 32.172188, 36.253170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316700, 32.440453, 36.144531>,  <42.482361, 32.601410, 36.079350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316700, 32.440453, 36.144531>,  <42.040600, 32.172188, 36.253170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316700, 32.440453, 36.144531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132968, -0.486534, -0.863484,
		-0.711246, 0.559909, -0.425008,
		0.690253, 0.670662, -0.271595,
		42.523777, 32.641651, 36.063053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.771633, 32.347565, 35.668571>,  <42.040600, 32.172188, 36.253170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.771633, 32.347565, 35.668571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163685, 32.426903, 35.668697>,  <42.398918, 32.474506, 35.668774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163685, 32.426903, 35.668697>,  <41.771633, 32.347565, 35.668571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163685, 32.426903, 35.668697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076811, -0.378084, -0.922579,
		-0.182873, 0.904273, -0.385808,
		0.980131, 0.198349, 0.000317,
		42.457726, 32.486408, 35.668793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851669, 32.444595, 34.933983>,  <41.771633, 32.347565, 35.668571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851669, 32.444595, 34.933983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221024, 32.390072, 35.077526>,  <42.442635, 32.357357, 35.163654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221024, 32.390072, 35.077526>,  <41.851669, 32.444595, 34.933983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221024, 32.390072, 35.077526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304082, -0.310841, -0.900506,
		0.234298, 0.940636, -0.245576,
		0.923384, -0.136312, 0.358860,
		42.498039, 32.349178, 35.185184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279060, 32.706860, 34.426651>,  <41.851669, 32.444595, 34.933983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279060, 32.706860, 34.426651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515232, 32.467876, 34.643700>,  <42.656937, 32.324486, 34.773930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.515232, 32.467876, 34.643700>,  <42.279060, 32.706860, 34.426651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515232, 32.467876, 34.643700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362472, -0.404403, -0.839686,
		0.721117, 0.692458, -0.022208,
		0.590428, -0.597462, 0.542618,
		42.692360, 32.288639, 34.806484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846725, 32.557877, 34.036552>,  <42.279060, 32.706860, 34.426651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846725, 32.557877, 34.036552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882504, 32.258915, 34.299881>,  <42.903969, 32.079536, 34.457878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882504, 32.258915, 34.299881>,  <42.846725, 32.557877, 34.036552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882504, 32.258915, 34.299881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202507, -0.633514, -0.746760,
		0.975187, 0.200108, 0.094691,
		0.089444, -0.747407, 0.658318,
		42.909336, 32.034695, 34.497375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446342, 32.222885, 33.812248>,  <42.846725, 32.557877, 34.036552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446342, 32.222885, 33.812248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240528, 31.962442, 34.035431>,  <43.117039, 31.806177, 34.169338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.240528, 31.962442, 34.035431>,  <43.446342, 32.222885, 33.812248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.240528, 31.962442, 34.035431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041174, -0.668710, -0.742382,
		0.856479, -0.359009, 0.370885,
		-0.514536, -0.651106, 0.557954,
		43.086166, 31.767111, 34.202816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660255, 31.581018, 33.630745>,  <43.446342, 32.222885, 33.812248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660255, 31.581018, 33.630745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312702, 31.493637, 33.808434>,  <43.104172, 31.441208, 33.915047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312702, 31.493637, 33.808434>,  <43.660255, 31.581018, 33.630745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312702, 31.493637, 33.808434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163119, -0.720898, -0.673572,
		0.467378, -0.657712, 0.590739,
		-0.868879, -0.218452, 0.444217,
		43.052040, 31.428101, 33.941700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678211, 30.833050, 33.750340>,  <43.660255, 31.581018, 33.630745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678211, 30.833050, 33.750340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297817, 30.955557, 33.733212>,  <43.069580, 31.029060, 33.722935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.297817, 30.955557, 33.733212>,  <43.678211, 30.833050, 33.750340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297817, 30.955557, 33.733212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209224, -0.739163, -0.640206,
		-0.227723, -0.599867, 0.767009,
		-0.950983, 0.306266, -0.042818,
		43.012524, 31.047438, 33.720367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.288677, 30.240673, 33.841084>,  <43.678211, 30.833050, 33.750340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.288677, 30.240673, 33.841084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039043, 30.496876, 33.662079>,  <42.889263, 30.650597, 33.554676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039043, 30.496876, 33.662079>,  <43.288677, 30.240673, 33.841084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039043, 30.496876, 33.662079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157684, -0.664200, -0.730735,
		-0.765281, -0.385474, 0.515514,
		-0.624084, 0.640506, -0.447517,
		42.851818, 30.689028, 33.527824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686005, 29.868631, 33.626877>,  <43.288677, 30.240673, 33.841084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686005, 29.868631, 33.626877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701626, 30.185457, 33.383202>,  <42.710999, 30.375553, 33.236996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701626, 30.185457, 33.383202>,  <42.686005, 29.868631, 33.626877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701626, 30.185457, 33.383202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020131, -0.610155, -0.792027,
		-0.999034, 0.018667, -0.039773,
		0.039052, 0.792062, -0.609190,
		42.713341, 30.423077, 33.200443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262657, 29.636293, 33.125679>,  <42.686005, 29.868631, 33.626877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262657, 29.636293, 33.125679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455677, 29.947973, 32.965683>,  <42.571487, 30.134981, 32.869686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.455677, 29.947973, 32.965683>,  <42.262657, 29.636293, 33.125679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455677, 29.947973, 32.965683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195020, -0.540799, -0.818232,
		-0.853882, 0.316831, -0.412922,
		0.482549, 0.779201, -0.399990,
		42.600441, 30.181734, 32.845688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973473, 29.760881, 32.419777>,  <42.262657, 29.636293, 33.125679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973473, 29.760881, 32.419777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334549, 29.932949, 32.415840>,  <42.551197, 30.036190, 32.413479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334549, 29.932949, 32.415840>,  <41.973473, 29.760881, 32.419777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334549, 29.932949, 32.415840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204145, -0.448292, -0.870264,
		-0.378773, 0.783573, -0.492488,
		0.902694, 0.430171, -0.009838,
		42.605358, 30.062000, 32.412888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006168, 29.978062, 31.830528>,  <41.973473, 29.760881, 32.419777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006168, 29.978062, 31.830528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389935, 29.957666, 31.941473>,  <42.620193, 29.945429, 32.008041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389935, 29.957666, 31.941473>,  <42.006168, 29.978062, 31.830528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389935, 29.957666, 31.941473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222508, -0.467388, -0.855592,
		0.173260, 0.882581, -0.437073,
		0.959412, -0.050987, 0.277361,
		42.677757, 29.942369, 32.024681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450974, 30.117720, 31.215929>,  <42.006168, 29.978062, 31.830528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450974, 30.117720, 31.215929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701843, 29.946091, 31.475943>,  <42.852367, 29.843113, 31.631950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.701843, 29.946091, 31.475943>,  <42.450974, 30.117720, 31.215929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701843, 29.946091, 31.475943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446359, -0.485935, -0.751419,
		0.638287, 0.761423, -0.113248,
		0.627179, -0.429072, 0.650034,
		42.889996, 29.817369, 31.670952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.940670, 29.981102, 30.765610>,  <42.450974, 30.117720, 31.215929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.940670, 29.981102, 30.765610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082306, 29.778721, 31.080223>,  <43.167286, 29.657293, 31.268991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.082306, 29.778721, 31.080223>,  <42.940670, 29.981102, 30.765610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082306, 29.778721, 31.080223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708416, -0.403948, -0.578769,
		0.610546, 0.762129, 0.215389,
		0.354091, -0.505951, 0.786533,
		43.188534, 29.626936, 31.316183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.753559, 29.976082, 30.751263>,  <42.940670, 29.981102, 30.765610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.753559, 29.976082, 30.751263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601753, 29.663902, 30.950006>,  <43.510670, 29.476595, 31.069252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601753, 29.663902, 30.950006>,  <43.753559, 29.976082, 30.751263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601753, 29.663902, 30.950006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651504, -0.606742, -0.455419,
		0.656897, 0.150867, 0.738732,
		-0.379512, -0.780450, 0.496858,
		43.487900, 29.429768, 31.099064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337421, 29.609005, 30.959652>,  <43.753559, 29.976082, 30.751263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337421, 29.609005, 30.959652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039715, 29.342306, 30.975225>,  <43.861092, 29.182287, 30.984570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.039715, 29.342306, 30.975225>,  <44.337421, 29.609005, 30.959652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.039715, 29.342306, 30.975225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566987, -0.661563, -0.490775,
		0.352981, -0.343192, 0.870416,
		-0.744265, -0.666749, 0.038933,
		43.816437, 29.142281, 30.986906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673630, 29.007679, 31.156223>,  <44.337421, 29.609005, 30.959652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.673630, 29.007679, 31.156223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333645, 28.887585, 30.983057>,  <44.129654, 28.815529, 30.879156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333645, 28.887585, 30.983057>,  <44.673630, 29.007679, 31.156223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333645, 28.887585, 30.983057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526292, -0.521282, -0.671776,
		-0.023981, -0.798827, 0.601082,
		-0.849966, -0.300235, -0.432917,
		44.078655, 28.797514, 30.853182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.711216, 28.319706, 31.028385>,  <44.673630, 29.007679, 31.156223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.711216, 28.319706, 31.028385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.413235, 28.408070, 30.776594>,  <44.234444, 28.461088, 30.625521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.413235, 28.408070, 30.776594>,  <44.711216, 28.319706, 31.028385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413235, 28.408070, 30.776594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500780, -0.438232, -0.746440,
		-0.440731, -0.871300, 0.215854,
		-0.744967, 0.220883, -0.629472,
		44.189747, 28.474342, 30.587751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695602, 27.891241, 30.623110>,  <44.711216, 28.319706, 31.028385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695602, 27.891241, 30.623110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498356, 28.164314, 30.407415>,  <44.380009, 28.328159, 30.277998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.498356, 28.164314, 30.407415>,  <44.695602, 27.891241, 30.623110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.498356, 28.164314, 30.407415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641064, -0.133872, -0.755722,
		-0.588108, -0.718345, -0.371630,
		-0.493118, 0.682685, -0.539236,
		44.350422, 28.369120, 30.245644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409645, 27.526615, 30.055115>,  <44.695602, 27.891241, 30.623110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409645, 27.526615, 30.055115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514931, 27.909252, 30.005074>,  <44.578102, 28.138834, 29.975048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.514931, 27.909252, 30.005074>,  <44.409645, 27.526615, 30.055115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514931, 27.909252, 30.005074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580377, -0.260595, -0.771526,
		-0.770637, 0.130469, -0.623776,
		0.263213, 0.956592, -0.125103,
		44.593895, 28.196230, 29.967543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.253742, 27.693224, 29.318054>,  <44.409645, 27.526615, 30.055115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.253742, 27.693224, 29.318054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549099, 27.904346, 29.485958>,  <44.726311, 28.031021, 29.586700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.549099, 27.904346, 29.485958>,  <44.253742, 27.693224, 29.318054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.549099, 27.904346, 29.485958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638754, -0.347769, -0.686331,
		-0.216271, 0.774904, -0.593928,
		0.738390, 0.527808, 0.419761,
		44.770615, 28.062689, 29.611887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621620, 27.978209, 28.652855>,  <44.253742, 27.693224, 29.318054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621620, 27.978209, 28.652855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649632, 28.293247, 28.897736>,  <44.666439, 28.482269, 29.044664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649632, 28.293247, 28.897736>,  <44.621620, 27.978209, 28.652855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649632, 28.293247, 28.897736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223796, 0.585659, -0.779050,
		-0.972117, 0.191565, -0.135247,
		0.070030, 0.787596, 0.612200,
		44.670639, 28.529526, 29.081396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095509, 28.342968, 28.396011>,  <44.621620, 27.978209, 28.652855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095509, 28.342968, 28.396011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355968, 28.615393, 28.529968>,  <44.512245, 28.778849, 28.610342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355968, 28.615393, 28.529968>,  <44.095509, 28.342968, 28.396011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355968, 28.615393, 28.529968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255295, 0.218989, -0.941737,
		-0.714720, 0.698711, -0.031277,
		0.651152, 0.681063, 0.334894,
		44.551315, 28.819712, 28.630436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788906, 28.938349, 28.211117>,  <44.095509, 28.342968, 28.396011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788906, 28.938349, 28.211117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186546, 28.932308, 28.254093>,  <44.425129, 28.928684, 28.279879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186546, 28.932308, 28.254093>,  <43.788906, 28.938349, 28.211117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186546, 28.932308, 28.254093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108484, 0.123968, -0.986338,
		0.001575, 0.992171, 0.124874,
		0.994097, -0.015100, 0.107440,
		44.484776, 28.927778, 28.286325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050312, 29.459732, 27.822783>,  <43.788906, 28.938349, 28.211117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050312, 29.459732, 27.822783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346474, 29.194860, 27.868954>,  <44.524170, 29.035936, 27.896656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.346474, 29.194860, 27.868954>,  <44.050312, 29.459732, 27.822783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.346474, 29.194860, 27.868954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215960, 0.071726, -0.973764,
		0.636529, 0.745903, 0.196110,
		0.740400, -0.662181, 0.115430,
		44.568592, 28.996206, 27.903584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531536, 29.846556, 27.709978>,  <44.050312, 29.459732, 27.822783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531536, 29.846556, 27.709978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548264, 29.458447, 27.614628>,  <44.558300, 29.225582, 27.557417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548264, 29.458447, 27.614628>,  <44.531536, 29.846556, 27.709978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548264, 29.458447, 27.614628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014925, 0.239166, -0.970864,
		0.999014, 0.037040, 0.024483,
		0.041817, -0.970272, -0.238377,
		44.560810, 29.167364, 27.543116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.133526, 29.633701, 27.227951>,  <44.531536, 29.846556, 27.709978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.133526, 29.633701, 27.227951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805382, 29.408823, 27.186110>,  <44.608494, 29.273897, 27.161005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805382, 29.408823, 27.186110>,  <45.133526, 29.633701, 27.227951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.805382, 29.408823, 27.186110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045717, 0.246819, -0.967983,
		0.570014, -0.789314, -0.228183,
		-0.820363, -0.562195, -0.104605,
		44.559273, 29.240164, 27.154728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331974, 30.425539, 27.303585>,  <45.133526, 29.633701, 27.227951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331974, 30.425539, 27.303585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315094, 30.536190, 27.687605>,  <45.304966, 30.602581, 27.918016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315094, 30.536190, 27.687605>,  <45.331974, 30.425539, 27.303585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315094, 30.536190, 27.687605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425035, 0.864648, -0.267823,
		-0.904193, -0.419358, 0.081086,
		-0.042202, 0.276628, 0.960050,
		45.302433, 30.619179, 27.975620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.598988, 31.193754, 27.470785>,  <45.331974, 30.425539, 27.303585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.598988, 31.193754, 27.470785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.636562, 31.540485, 27.274912>,  <45.659107, 31.748524, 27.157389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.636562, 31.540485, 27.274912>,  <45.598988, 31.193754, 27.470785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.636562, 31.540485, 27.274912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082854, 0.496958, 0.863810,
		0.992125, -0.040568, 0.118501,
		0.093933, 0.866826, -0.489683,
		45.664742, 31.800533, 27.128008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195328, 31.616749, 27.844961>,  <45.598988, 31.193754, 27.470785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195328, 31.616749, 27.844961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.896648, 31.823984, 27.678097>,  <45.717442, 31.948324, 27.577978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.896648, 31.823984, 27.678097>,  <46.195328, 31.616749, 27.844961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.896648, 31.823984, 27.678097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098868, 0.533742, 0.839848,
		0.657770, 0.668360, -0.347323,
		-0.746702, 0.518087, -0.417159,
		45.672638, 31.979410, 27.552950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.249977, 32.409481, 27.780445>,  <46.195328, 31.616749, 27.844961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.249977, 32.409481, 27.780445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856842, 32.335705, 27.779549>,  <45.620960, 32.291439, 27.779011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856842, 32.335705, 27.779549>,  <46.249977, 32.409481, 27.780445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856842, 32.335705, 27.779549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101786, 0.532188, 0.840486,
		-0.153827, 0.826292, -0.541829,
		-0.982841, -0.184440, -0.002240,
		45.561989, 32.280373, 27.778877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904060, 33.080364, 27.664244>,  <46.249977, 32.409481, 27.780445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904060, 33.080364, 27.664244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690792, 32.808712, 27.866043>,  <45.562832, 32.645721, 27.987123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.690792, 32.808712, 27.866043>,  <45.904060, 33.080364, 27.664244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690792, 32.808712, 27.866043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030264, 0.611255, 0.790855,
		-0.845469, 0.406389, -0.346453,
		-0.533166, -0.679128, 0.504498,
		45.530842, 32.604973, 28.017393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352219, 33.455132, 27.998960>,  <45.904060, 33.080364, 27.664244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352219, 33.455132, 27.998960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.362751, 33.099014, 28.180813>,  <45.369072, 32.885345, 28.289925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.362751, 33.099014, 28.180813>,  <45.352219, 33.455132, 27.998960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.362751, 33.099014, 28.180813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257243, 0.433438, 0.863689,
		-0.965988, -0.139693, -0.217608,
		0.026332, -0.890291, 0.454630,
		45.370651, 32.831928, 28.317202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.943619, 33.549450, 28.564920>,  <45.352219, 33.455132, 27.998960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.943619, 33.549450, 28.564920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106361, 33.203468, 28.682442>,  <45.204006, 32.995880, 28.752954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.106361, 33.203468, 28.682442>,  <44.943619, 33.549450, 28.564920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.106361, 33.203468, 28.682442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192108, 0.233416, 0.953211,
		-0.893064, -0.444261, -0.071198,
		0.406856, -0.864956, 0.293801,
		45.228416, 32.943981, 28.770582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507477, 33.300297, 29.049417>,  <44.943619, 33.549450, 28.564920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507477, 33.300297, 29.049417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848091, 33.108761, 29.134830>,  <45.052460, 32.993839, 29.186077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848091, 33.108761, 29.134830>,  <44.507477, 33.300297, 29.049417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848091, 33.108761, 29.134830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232392, 0.020359, 0.972409,
		-0.469974, -0.877667, -0.093942,
		0.851539, -0.478838, 0.213531,
		45.103554, 32.965111, 29.198891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298534, 32.730328, 29.345440>,  <44.507477, 33.300297, 29.049417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298534, 32.730328, 29.345440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673370, 32.812275, 29.458500>,  <44.898273, 32.861443, 29.526337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673370, 32.812275, 29.458500>,  <44.298534, 32.730328, 29.345440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673370, 32.812275, 29.458500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289832, 0.005285, 0.957063,
		0.194577, -0.978776, 0.064329,
		0.937089, 0.204867, 0.282652,
		44.954498, 32.873734, 29.543295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382824, 32.298290, 29.949394>,  <44.298534, 32.730328, 29.345440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382824, 32.298290, 29.949394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660225, 32.585350, 29.974825>,  <44.826664, 32.757584, 29.990084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.660225, 32.585350, 29.974825>,  <44.382824, 32.298290, 29.949394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.660225, 32.585350, 29.974825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110093, 0.018352, 0.993752,
		0.711995, -0.696167, 0.091735,
		0.693501, 0.717645, 0.063577,
		44.868275, 32.800644, 29.993898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732941, 32.038952, 30.411163>,  <44.382824, 32.298290, 29.949394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732941, 32.038952, 30.411163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802055, 32.432762, 30.399439>,  <44.843525, 32.669048, 30.392405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.802055, 32.432762, 30.399439>,  <44.732941, 32.038952, 30.411163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802055, 32.432762, 30.399439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154998, 0.056568, 0.986294,
		0.972688, -0.165872, 0.162373,
		0.172784, 0.984524, -0.029313,
		44.853889, 32.728119, 30.390644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.168518, 32.084827, 30.886480>,  <44.732941, 32.038952, 30.411163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.168518, 32.084827, 30.886480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068771, 32.471405, 30.861839>,  <45.008923, 32.703354, 30.847055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068771, 32.471405, 30.861839>,  <45.168518, 32.084827, 30.886480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068771, 32.471405, 30.861839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075818, 0.082899, 0.993670,
		0.965437, 0.243115, -0.093946,
		-0.249364, 0.966449, -0.061601,
		44.993961, 32.761341, 30.843359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.737518, 32.443237, 31.294380>,  <45.168518, 32.084827, 30.886480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.737518, 32.443237, 31.294380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423798, 32.690327, 31.271465>,  <45.235565, 32.838581, 31.257717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423798, 32.690327, 31.271465>,  <45.737518, 32.443237, 31.294380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423798, 32.690327, 31.271465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133926, 0.258755, 0.956614,
		0.605749, 0.742603, -0.285672,
		-0.784303, 0.617727, -0.057286,
		45.188507, 32.875645, 31.254280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997807, 33.024765, 31.587566>,  <45.737518, 32.443237, 31.294380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997807, 33.024765, 31.587566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602459, 33.073559, 31.623892>,  <45.365250, 33.102837, 31.645687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.602459, 33.073559, 31.623892>,  <45.997807, 33.024765, 31.587566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.602459, 33.073559, 31.623892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135343, 0.433235, 0.891061,
		0.069351, 0.892988, -0.444705,
		-0.988369, 0.121984, 0.090814,
		45.305950, 33.110153, 31.651136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798279, 33.706161, 32.021843>,  <45.997807, 33.024765, 31.587566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798279, 33.706161, 32.021843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464962, 33.485115, 32.015648>,  <45.264973, 33.352489, 32.011929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.464962, 33.485115, 32.015648>,  <45.798279, 33.706161, 32.021843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.464962, 33.485115, 32.015648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203321, 0.280297, 0.938133,
		-0.514082, 0.784891, -0.345928,
		-0.833295, -0.552612, -0.015490,
		45.214973, 33.319332, 32.011002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.253746, 34.129734, 32.256756>,  <45.798279, 33.706161, 32.021843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.253746, 34.129734, 32.256756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173714, 33.748672, 32.348339>,  <45.125694, 33.520035, 32.403290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173714, 33.748672, 32.348339>,  <45.253746, 34.129734, 32.256756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173714, 33.748672, 32.348339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070513, 0.247076, 0.966427,
		-0.977239, 0.177219, -0.116609,
		-0.200080, -0.952653, 0.228956,
		45.113689, 33.462875, 32.417027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698689, 34.123619, 32.790977>,  <45.253746, 34.129734, 32.256756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698689, 34.123619, 32.790977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849983, 33.755928, 32.834724>,  <44.940762, 33.535313, 32.860973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849983, 33.755928, 32.834724>,  <44.698689, 34.123619, 32.790977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849983, 33.755928, 32.834724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076714, 0.086617, 0.993284,
		-0.922524, -0.384088, -0.037755,
		0.378238, -0.919225, 0.109371,
		44.963455, 33.480160, 32.867535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.217724, 33.807255, 33.228043>,  <44.698689, 34.123619, 32.790977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.217724, 33.807255, 33.228043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570854, 33.621727, 33.257664>,  <44.782734, 33.510410, 33.275436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.570854, 33.621727, 33.257664>,  <44.217724, 33.807255, 33.228043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.570854, 33.621727, 33.257664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088417, -0.009261, 0.996040,
		-0.461301, -0.885879, -0.049185,
		0.882827, -0.463823, 0.074054,
		44.835701, 33.482578, 33.279881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069275, 33.544678, 33.759708>,  <44.217724, 33.807255, 33.228043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069275, 33.544678, 33.759708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.467812, 33.510571, 33.761993>,  <44.706932, 33.490105, 33.763363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.467812, 33.510571, 33.761993>,  <44.069275, 33.544678, 33.759708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.467812, 33.510571, 33.761993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004529, 0.014072, 0.999891,
		-0.085340, -0.996259, 0.013635,
		0.996342, -0.085269, 0.005713,
		44.766712, 33.484989, 33.763706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.189487, 33.120094, 34.268097>,  <44.069275, 33.544678, 33.759708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.189487, 33.120094, 34.268097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579266, 33.200577, 34.228161>,  <44.813133, 33.248867, 34.204197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579266, 33.200577, 34.228161>,  <44.189487, 33.120094, 34.268097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579266, 33.200577, 34.228161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123531, -0.108814, 0.986357,
		0.187594, -0.973487, -0.130888,
		0.974448, 0.201203, -0.099843,
		44.871601, 33.260937, 34.198208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673431, 32.545715, 34.514503>,  <44.189487, 33.120094, 34.268097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.673431, 32.545715, 34.514503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877277, 32.889835, 34.519787>,  <44.999584, 33.096310, 34.522957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.877277, 32.889835, 34.519787>,  <44.673431, 32.545715, 34.514503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.877277, 32.889835, 34.519787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290491, -0.186481, 0.938531,
		0.809884, -0.474450, -0.344943,
		0.509611, 0.860304, 0.013204,
		45.030159, 33.147926, 34.523746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316612, 32.430168, 34.893635>,  <44.673431, 32.545715, 34.514503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316612, 32.430168, 34.893635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276730, 32.827976, 34.906162>,  <45.252800, 33.066662, 34.913677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276730, 32.827976, 34.906162>,  <45.316612, 32.430168, 34.893635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276730, 32.827976, 34.906162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358913, 0.006590, 0.933348,
		0.928031, 0.104297, -0.357605,
		-0.099702, 0.994524, 0.031317,
		45.246819, 33.126335, 34.915558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906631, 32.649460, 35.221809>,  <45.316612, 32.430168, 34.893635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906631, 32.649460, 35.221809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614948, 32.919098, 35.268894>,  <45.439938, 33.080879, 35.297146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.614948, 32.919098, 35.268894>,  <45.906631, 32.649460, 35.221809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614948, 32.919098, 35.268894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206520, 0.052796, 0.977017,
		0.652383, 0.736760, -0.177712,
		-0.729209, 0.674091, 0.117713,
		45.396187, 33.121326, 35.304207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147747, 33.011677, 35.792782>,  <45.906631, 32.649460, 35.221809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147747, 33.011677, 35.792782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777531, 33.153988, 35.740936>,  <45.555401, 33.239376, 35.709827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.777531, 33.153988, 35.740936>,  <46.147747, 33.011677, 35.792782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.777531, 33.153988, 35.740936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006444, 0.327454, 0.944845,
		0.378599, 0.875326, -0.300779,
		-0.925538, 0.355779, -0.129614,
		45.499870, 33.260723, 35.702053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189377, 33.684799, 35.851685>,  <46.147747, 33.011677, 35.792782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189377, 33.684799, 35.851685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853764, 33.502876, 35.971130>,  <45.652393, 33.393723, 36.042797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.853764, 33.502876, 35.971130>,  <46.189377, 33.684799, 35.851685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.853764, 33.502876, 35.971130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160496, 0.317520, 0.934571,
		-0.519863, 0.832065, -0.193416,
		-0.839037, -0.454806, 0.298610,
		45.602051, 33.366436, 36.060715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.642090, 34.246838, 35.363552>,  <46.189377, 33.684799, 35.851685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.642090, 34.246838, 35.363552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689056, 34.640465, 35.416954>,  <46.717236, 34.876640, 35.448997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689056, 34.640465, 35.416954>,  <46.642090, 34.246838, 35.363552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.689056, 34.640465, 35.416954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952947, -0.073814, -0.294013,
		-0.279474, 0.161748, -0.946431,
		0.117416, 0.984068, 0.133508,
		46.724281, 34.935684, 35.457005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963146, 34.649593, 34.704483>,  <46.642090, 34.246838, 35.363552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963146, 34.649593, 34.704483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039612, 34.856800, 35.037979>,  <47.085491, 34.981125, 35.238075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039612, 34.856800, 35.037979>,  <46.963146, 34.649593, 34.704483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039612, 34.856800, 35.037979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980559, -0.062454, -0.186021,
		-0.044291, 0.853089, -0.519883,
		0.191161, 0.518015, 0.833737,
		47.096962, 35.012203, 35.288101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.539314, 35.209938, 34.656040>,  <46.963146, 34.649593, 34.704483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.539314, 35.209938, 34.656040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523399, 35.041271, 35.018391>,  <47.513851, 34.940071, 35.235802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523399, 35.041271, 35.018391>,  <47.539314, 35.209938, 34.656040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.523399, 35.041271, 35.018391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992832, -0.118940, -0.011752,
		0.112701, 0.898918, 0.423374,
		-0.039791, -0.421663, 0.905879,
		47.511463, 34.914772, 35.290154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.548065, 37.552853, 47.440605> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149689, 37.524181, 47.418831>,  <34.910664, 37.506981, 47.405766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.149689, 37.524181, 47.418831>,  <35.548065, 37.552853, 47.440605>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149689, 37.524181, 47.418831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031899, 0.284480, -0.958151,
		0.084160, -0.955999, -0.281039,
		-0.995941, -0.071674, -0.054437,
		34.850906, 37.502678, 47.402500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310890, 37.013954, 46.912086>,  <35.548065, 37.552853, 47.440605>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310890, 37.013954, 46.912086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005974, 37.267944, 46.962234>,  <34.823025, 37.420338, 46.992325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005974, 37.267944, 46.962234>,  <35.310890, 37.013954, 46.912086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005974, 37.267944, 46.962234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066208, 0.116192, -0.991018,
		-0.643840, -0.763744, -0.046532,
		-0.762290, 0.634977, 0.125375,
		34.777287, 37.458439, 46.999847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781620, 36.760201, 46.437397>,  <35.310890, 37.013954, 46.912086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781620, 36.760201, 46.437397> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641735, 37.126053, 46.518536>,  <34.557804, 37.345566, 46.567219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.641735, 37.126053, 46.518536>,  <34.781620, 36.760201, 46.437397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641735, 37.126053, 46.518536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154450, 0.157273, -0.975403,
		-0.924037, -0.372444, 0.086264,
		-0.349716, 0.914631, 0.202850,
		34.536819, 37.400444, 46.579391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214317, 36.859371, 46.065742>,  <34.781620, 36.760201, 46.437397>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214317, 36.859371, 46.065742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.277763, 37.247833, 46.136971>,  <34.315830, 37.480911, 46.179707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.277763, 37.247833, 46.136971>,  <34.214317, 36.859371, 46.065742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277763, 37.247833, 46.136971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227558, 0.211453, -0.950529,
		-0.960760, 0.110247, 0.254532,
		0.158615, 0.971151, 0.178068,
		34.325348, 37.539177, 46.190392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821274, 37.232204, 45.620491>,  <34.214317, 36.859371, 46.065742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821274, 37.232204, 45.620491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.052986, 37.533901, 45.744137>,  <34.192013, 37.714920, 45.818325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.052986, 37.533901, 45.744137>,  <33.821274, 37.232204, 45.620491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052986, 37.533901, 45.744137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014449, 0.388667, -0.921265,
		-0.815001, 0.529203, 0.236045,
		0.579279, 0.754243, 0.309118,
		34.226768, 37.760174, 45.836872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504246, 37.841404, 45.260624>,  <33.821274, 37.232204, 45.620491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504246, 37.841404, 45.260624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883953, 37.927505, 45.352318>,  <34.111778, 37.979168, 45.407333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.883953, 37.927505, 45.352318>,  <33.504246, 37.841404, 45.260624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883953, 37.927505, 45.352318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152278, 0.323142, -0.934019,
		-0.275129, 0.921544, 0.273970,
		0.949271, 0.215256, 0.229237,
		34.168736, 37.992081, 45.421089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592331, 38.469334, 44.869915>,  <33.504246, 37.841404, 45.260624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592331, 38.469334, 44.869915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.964180, 38.364120, 44.973152>,  <34.187290, 38.300991, 45.035095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.964180, 38.364120, 44.973152>,  <33.592331, 38.469334, 44.869915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964180, 38.364120, 44.973152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315998, 0.208671, -0.925528,
		0.189589, 0.941950, 0.277104,
		0.929624, -0.263034, 0.258092,
		34.243069, 38.285210, 45.050579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059010, 38.978146, 44.606678>,  <33.592331, 38.469334, 44.869915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059010, 38.978146, 44.606678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.263893, 38.635002, 44.623253>,  <34.386822, 38.429115, 44.633198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.263893, 38.635002, 44.623253>,  <34.059010, 38.978146, 44.606678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263893, 38.635002, 44.623253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313892, 0.142076, -0.938769,
		0.799447, 0.493849, 0.342048,
		0.512207, -0.857862, 0.041434,
		34.417557, 38.377644, 44.635681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516357, 39.062813, 44.077656>,  <34.059010, 38.978146, 44.606678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516357, 39.062813, 44.077656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.501110, 38.668602, 44.143726>,  <34.491962, 38.432076, 44.183369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.501110, 38.668602, 44.143726>,  <34.516357, 39.062813, 44.077656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501110, 38.668602, 44.143726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372664, -0.167393, -0.912744,
		0.927183, 0.026759, 0.373652,
		-0.038122, -0.985527, 0.165176,
		34.489674, 38.372944, 44.193279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199753, 38.753296, 43.881214>,  <34.516357, 39.062813, 44.077656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199753, 38.753296, 43.881214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926853, 38.465321, 43.830269>,  <34.763115, 38.292534, 43.799702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.926853, 38.465321, 43.830269>,  <35.199753, 38.753296, 43.881214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926853, 38.465321, 43.830269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309818, -0.126896, -0.942290,
		0.662229, -0.682337, 0.309625,
		-0.682250, -0.719939, -0.127366,
		34.722179, 38.249340, 43.792057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555183, 38.133450, 43.526352>,  <35.199753, 38.753296, 43.881214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555183, 38.133450, 43.526352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.158619, 38.111351, 43.478943>,  <34.920681, 38.098091, 43.450497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.158619, 38.111351, 43.478943>,  <35.555183, 38.133450, 43.526352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158619, 38.111351, 43.478943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130542, -0.365183, -0.921738,
		0.007642, -0.929295, 0.369260,
		-0.991414, -0.055248, -0.118521,
		34.861195, 38.094776, 43.443386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362984, 37.476009, 43.414886>,  <35.555183, 38.133450, 43.526352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362984, 37.476009, 43.414886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.080013, 37.711372, 43.258259>,  <34.910233, 37.852589, 43.164284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.080013, 37.711372, 43.258259>,  <35.362984, 37.476009, 43.414886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080013, 37.711372, 43.258259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265682, -0.292000, -0.918776,
		-0.654950, -0.754000, 0.050240,
		-0.707427, 0.588405, -0.391569,
		34.867786, 37.887894, 43.140789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149612, 37.046772, 42.853180>,  <35.362984, 37.476009, 43.414886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149612, 37.046772, 42.853180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.985298, 37.405994, 42.790257>,  <34.886707, 37.621529, 42.752502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.985298, 37.405994, 42.790257>,  <35.149612, 37.046772, 42.853180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985298, 37.405994, 42.790257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079327, -0.136677, -0.987434,
		-0.908273, -0.418106, -0.015094,
		-0.410789, 0.898057, -0.157307,
		34.862061, 37.675411, 42.743065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604519, 36.942974, 42.275452>,  <35.149612, 37.046772, 42.853180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604519, 36.942974, 42.275452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699730, 37.331417, 42.268635>,  <34.756859, 37.564484, 42.264545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699730, 37.331417, 42.268635>,  <34.604519, 36.942974, 42.275452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699730, 37.331417, 42.268635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117687, -0.046253, -0.991973,
		-0.964101, 0.234115, -0.125297,
		0.238031, 0.971108, -0.017041,
		34.771141, 37.622749, 42.263523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226070, 37.214382, 41.780251>,  <34.604519, 36.942974, 42.275452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226070, 37.214382, 41.780251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515556, 37.488586, 41.812031>,  <34.689247, 37.653107, 41.831100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.515556, 37.488586, 41.812031>,  <34.226070, 37.214382, 41.780251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515556, 37.488586, 41.812031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239444, -0.141460, -0.960550,
		-0.647225, 0.714191, -0.266518,
		0.723717, 0.685508, 0.079453,
		34.732670, 37.694241, 41.835865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164619, 37.628693, 41.270943>,  <34.226070, 37.214382, 41.780251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164619, 37.628693, 41.270943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.539127, 37.709427, 41.385952>,  <34.763832, 37.757866, 41.454956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.539127, 37.709427, 41.385952>,  <34.164619, 37.628693, 41.270943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539127, 37.709427, 41.385952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267917, 0.119121, -0.956049,
		-0.227215, 0.972148, 0.057454,
		0.936266, 0.201836, 0.287521,
		34.820007, 37.769978, 41.472210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387600, 37.927979, 40.745300>,  <34.164619, 37.628693, 41.270943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387600, 37.927979, 40.745300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.728188, 37.814266, 40.921566>,  <34.932541, 37.746040, 41.027325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.728188, 37.814266, 40.921566>,  <34.387600, 37.927979, 40.745300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728188, 37.814266, 40.921566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408965, -0.166006, -0.897323,
		0.328244, 0.944260, -0.025089,
		0.851471, -0.284281, 0.440660,
		34.983627, 37.728981, 41.053764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949787, 38.269897, 40.488468>,  <34.387600, 37.927979, 40.745300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949787, 38.269897, 40.488468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104599, 37.925117, 40.619465>,  <35.197487, 37.718250, 40.698063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.104599, 37.925117, 40.619465>,  <34.949787, 38.269897, 40.488468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104599, 37.925117, 40.619465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388047, -0.169932, -0.905838,
		0.836439, 0.477666, 0.268709,
		0.387026, -0.861951, 0.327494,
		35.220707, 37.666531, 40.717712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648388, 38.265537, 40.242439>,  <34.949787, 38.269897, 40.488468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648388, 38.265537, 40.242439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563114, 37.883320, 40.323910>,  <35.511951, 37.653988, 40.372791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.563114, 37.883320, 40.323910>,  <35.648388, 38.265537, 40.242439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563114, 37.883320, 40.323910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445412, -0.280600, -0.850218,
		0.869576, -0.090528, 0.485431,
		-0.213181, -0.955546, 0.203681,
		35.499161, 37.596657, 40.385014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249290, 37.916355, 40.162655>,  <35.648388, 38.265537, 40.242439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249290, 37.916355, 40.162655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975658, 37.625790, 40.136250>,  <35.811481, 37.451450, 40.120407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975658, 37.625790, 40.136250>,  <36.249290, 37.916355, 40.162655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975658, 37.625790, 40.136250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586911, -0.494439, -0.641144,
		0.433096, -0.477338, 0.764576,
		-0.684078, -0.726415, -0.066015,
		35.770435, 37.407864, 40.116444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645996, 37.242298, 40.140118>,  <36.249290, 37.916355, 40.162655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645996, 37.242298, 40.140118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.286221, 37.140648, 39.997887>,  <36.070354, 37.079659, 39.912548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.286221, 37.140648, 39.997887>,  <36.645996, 37.242298, 40.140118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286221, 37.140648, 39.997887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428572, -0.672293, -0.603613,
		-0.085657, -0.695301, 0.713596,
		-0.899438, -0.254123, -0.355573,
		36.016388, 37.064411, 39.891216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585735, 36.428692, 39.994762>,  <36.645996, 37.242298, 40.140118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585735, 36.428692, 39.994762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.332790, 36.613537, 39.746067>,  <36.181023, 36.724445, 39.596848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.332790, 36.613537, 39.746067>,  <36.585735, 36.428692, 39.994762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332790, 36.613537, 39.746067> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222614, -0.660335, -0.717218,
		-0.741996, -0.591952, 0.314699,
		-0.632365, 0.462116, -0.621742,
		36.143082, 36.752171, 39.559544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882778, 35.781086, 39.796753>,  <36.585735, 36.428692, 39.994762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882778, 35.781086, 39.796753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220894, 35.579151, 39.726746>,  <37.423763, 35.457989, 39.684742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.220894, 35.579151, 39.726746>,  <36.882778, 35.781086, 39.796753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220894, 35.579151, 39.726746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063330, -0.419907, 0.905355,
		-0.530550, -0.754198, -0.386912,
		0.845285, -0.504839, -0.175019,
		37.474480, 35.427700, 39.674240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835972, 34.985901, 39.917953>,  <36.882778, 35.781086, 39.796753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835972, 34.985901, 39.917953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221218, 35.086990, 39.954910>,  <37.452366, 35.147644, 39.977085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.221218, 35.086990, 39.954910>,  <36.835972, 34.985901, 39.917953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221218, 35.086990, 39.954910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018010, -0.403115, 0.914972,
		0.268481, -0.879561, -0.392799,
		0.963117, 0.252726, 0.092388,
		37.510155, 35.162807, 39.982628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977482, 34.534203, 40.331505>,  <36.835972, 34.985901, 39.917953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977482, 34.534203, 40.331505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292885, 34.778717, 40.358562>,  <37.482128, 34.925426, 40.374798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.292885, 34.778717, 40.358562>,  <36.977482, 34.534203, 40.331505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292885, 34.778717, 40.358562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127660, -0.270264, 0.954285,
		0.601627, -0.743829, -0.291143,
		0.788510, 0.611291, 0.067641,
		37.529438, 34.962105, 40.378857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468872, 34.232994, 40.805145>,  <36.977482, 34.534203, 40.331505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468872, 34.232994, 40.805145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608002, 34.607628, 40.788025>,  <37.691479, 34.832409, 40.777752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.608002, 34.607628, 40.788025>,  <37.468872, 34.232994, 40.805145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608002, 34.607628, 40.788025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207931, -0.032546, 0.977602,
		0.914212, -0.348932, -0.206065,
		0.347823, 0.936583, -0.042800,
		37.712349, 34.888603, 40.775185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067692, 34.223850, 41.246246>,  <37.468872, 34.232994, 40.805145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067692, 34.223850, 41.246246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.925491, 34.594368, 41.196281>,  <37.840172, 34.816677, 41.166302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.925491, 34.594368, 41.196281>,  <38.067692, 34.223850, 41.246246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925491, 34.594368, 41.196281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063143, 0.109535, 0.991975,
		0.932539, 0.360539, 0.019549,
		-0.355505, 0.926290, -0.124911,
		37.818840, 34.872253, 41.158810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531086, 34.686821, 41.657040>,  <38.067692, 34.223850, 41.246246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531086, 34.686821, 41.657040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.161503, 34.831089, 41.606106>,  <37.939751, 34.917648, 41.575546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.161503, 34.831089, 41.606106>,  <38.531086, 34.686821, 41.657040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161503, 34.831089, 41.606106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089205, 0.120529, 0.988694,
		0.371936, 0.924874, -0.079191,
		-0.923962, 0.360666, -0.127332,
		37.884315, 34.939289, 41.567905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445179, 35.199268, 42.262119>,  <38.531086, 34.686821, 41.657040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445179, 35.199268, 42.262119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065399, 35.161682, 42.142311>,  <37.837532, 35.139130, 42.070427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065399, 35.161682, 42.142311>,  <38.445179, 35.199268, 42.262119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065399, 35.161682, 42.142311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312883, 0.206069, 0.927168,
		-0.025397, 0.974016, -0.225052,
		-0.949452, -0.093962, -0.299519,
		37.780563, 35.133495, 42.052456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016102, 35.806549, 42.615921>,  <38.445179, 35.199268, 42.262119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016102, 35.806549, 42.615921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727505, 35.548164, 42.516167>,  <37.554348, 35.393135, 42.456314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727505, 35.548164, 42.516167>,  <38.016102, 35.806549, 42.615921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727505, 35.548164, 42.516167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481784, 0.209633, 0.850846,
		-0.497331, 0.734025, -0.462460,
		-0.721489, -0.645957, -0.249384,
		37.511059, 35.354378, 42.441353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336308, 36.125568, 42.712585>,  <38.016102, 35.806549, 42.615921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336308, 36.125568, 42.712585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311699, 35.726711, 42.730114>,  <37.296936, 35.487396, 42.740631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.311699, 35.726711, 42.730114>,  <37.336308, 36.125568, 42.712585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311699, 35.726711, 42.730114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597203, 0.071951, 0.798856,
		-0.799727, 0.022974, -0.599924,
		-0.061518, -0.997144, 0.043821,
		37.293243, 35.427567, 42.743259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647350, 36.068176, 42.903660>,  <37.336308, 36.125568, 42.712585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647350, 36.068176, 42.903660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833820, 35.722549, 42.979622>,  <36.945702, 35.515171, 43.025200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833820, 35.722549, 42.979622>,  <36.647350, 36.068176, 42.903660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833820, 35.722549, 42.979622> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473034, -0.062053, 0.878856,
		-0.747610, -0.499529, -0.437663,
		0.466173, -0.864072, 0.189903,
		36.973671, 35.463329, 43.036594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129044, 35.541100, 43.161854>,  <36.647350, 36.068176, 42.903660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129044, 35.541100, 43.161854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481869, 35.444653, 43.323757>,  <36.693562, 35.386784, 43.420898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.481869, 35.444653, 43.323757>,  <36.129044, 35.541100, 43.161854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481869, 35.444653, 43.323757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438372, -0.105243, 0.892610,
		-0.172626, -0.964773, -0.198530,
		0.882060, -0.241118, 0.404762,
		36.746487, 35.372318, 43.445187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890442, 35.097908, 43.702187>,  <36.129044, 35.541100, 43.161854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890442, 35.097908, 43.702187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273746, 35.193382, 43.765144>,  <36.503727, 35.250668, 43.802917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.273746, 35.193382, 43.765144>,  <35.890442, 35.097908, 43.702187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273746, 35.193382, 43.765144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152079, -0.040626, 0.987533,
		0.242109, -0.970246, -0.002631,
		0.958257, 0.238690, 0.157390,
		36.561222, 35.264988, 43.812363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979427, 35.155476, 44.321827>,  <35.890442, 35.097908, 43.702187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979427, 35.155476, 44.321827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370972, 35.231201, 44.290844>,  <36.605896, 35.276638, 44.272255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.370972, 35.231201, 44.290844>,  <35.979427, 35.155476, 44.321827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370972, 35.231201, 44.290844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077175, 0.008859, 0.996978,
		0.189434, -0.981875, -0.005939,
		0.978856, 0.189320, -0.077455,
		36.664627, 35.287998, 44.267609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498756, 34.614307, 44.674385>,  <35.979427, 35.155476, 44.321827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498756, 34.614307, 44.674385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636757, 34.989235, 44.654720>,  <36.719555, 35.214191, 44.642921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636757, 34.989235, 44.654720>,  <36.498756, 34.614307, 44.674385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636757, 34.989235, 44.654720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032355, 0.040465, 0.998657,
		0.938045, -0.346126, -0.016367,
		0.344999, 0.937315, -0.049157,
		36.740257, 35.270428, 44.639973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163406, 34.513683, 44.939659>,  <36.498756, 34.614307, 44.674385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163406, 34.513683, 44.939659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036152, 34.891495, 44.972282>,  <36.959797, 35.118183, 44.991856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036152, 34.891495, 44.972282>,  <37.163406, 34.513683, 44.939659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036152, 34.891495, 44.972282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139691, -0.038384, 0.989451,
		0.937696, 0.326175, -0.119731,
		-0.318139, 0.944530, 0.081557,
		36.940712, 35.174854, 44.996750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559940, 34.747681, 45.499760>,  <37.163406, 34.513683, 44.939659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559940, 34.747681, 45.499760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295937, 35.047272, 45.476387>,  <37.137535, 35.227028, 45.462364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.295937, 35.047272, 45.476387>,  <37.559940, 34.747681, 45.499760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295937, 35.047272, 45.476387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024620, 0.099308, 0.994752,
		0.750850, 0.655111, -0.083984,
		-0.660014, 0.748977, -0.058436,
		37.097931, 35.271965, 45.458855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837723, 35.337452, 45.828426>,  <37.559940, 34.747681, 45.499760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837723, 35.337452, 45.828426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439732, 35.376259, 45.838276>,  <37.200935, 35.399544, 45.844185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.439732, 35.376259, 45.838276>,  <37.837723, 35.337452, 45.828426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439732, 35.376259, 45.838276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024866, 0.001258, 0.999690,
		0.096952, 0.995282, -0.003664,
		-0.994978, 0.097013, 0.024626,
		37.141239, 35.405361, 45.845665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653576, 35.974609, 46.390221>,  <37.837723, 35.337452, 45.828426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653576, 35.974609, 46.390221> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322281, 35.759056, 46.328739>,  <37.123505, 35.629723, 46.291851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.322281, 35.759056, 46.328739>,  <37.653576, 35.974609, 46.390221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322281, 35.759056, 46.328739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107760, -0.116006, 0.987386,
		-0.549921, 0.834352, 0.038009,
		-0.828236, -0.538888, -0.153704,
		37.073811, 35.597389, 46.282627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.124180, 36.352325, 46.830173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985981, 35.985283, 46.751564>,  <36.903061, 35.765057, 46.704399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985981, 35.985283, 46.751564>,  <37.124180, 36.352325, 46.830173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985981, 35.985283, 46.751564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242754, -0.114904, 0.963259,
		-0.906479, 0.380509, -0.183054,
		-0.345495, -0.917611, -0.196528,
		36.882332, 35.709999, 46.692604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540146, 36.372044, 47.175346>,  <37.124180, 36.352325, 46.830173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540146, 36.372044, 47.175346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635475, 35.987522, 47.120079>,  <36.692673, 35.756809, 47.086918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.635475, 35.987522, 47.120079>,  <36.540146, 36.372044, 47.175346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635475, 35.987522, 47.120079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342202, -0.216266, 0.914400,
		-0.908901, -0.170636, -0.380502,
		0.238319, -0.961308, -0.138173,
		36.706970, 35.699131, 47.078629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003677, 36.002434, 47.342308>,  <36.540146, 36.372044, 47.175346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003677, 36.002434, 47.342308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.279392, 35.715279, 47.381336>,  <36.444820, 35.542984, 47.404755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.279392, 35.715279, 47.381336>,  <36.003677, 36.002434, 47.342308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279392, 35.715279, 47.381336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346651, -0.208544, 0.914517,
		-0.636176, -0.664185, -0.392604,
		0.689284, -0.717891, 0.097570,
		36.486179, 35.499912, 47.410606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617176, 35.464340, 47.512302>,  <36.003677, 36.002434, 47.342308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617176, 35.464340, 47.512302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995876, 35.411964, 47.629963>,  <36.223095, 35.380539, 47.700558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.995876, 35.411964, 47.629963>,  <35.617176, 35.464340, 47.512302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.995876, 35.411964, 47.629963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316426, -0.209424, 0.925211,
		-0.059541, -0.969019, -0.239703,
		0.946747, -0.130937, 0.294153,
		36.279900, 35.372684, 47.718208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578060, 34.973385, 47.976463>,  <35.617176, 35.464340, 47.512302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578060, 34.973385, 47.976463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951542, 35.079868, 48.072243>,  <36.175632, 35.143757, 48.129711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951542, 35.079868, 48.072243>,  <35.578060, 34.973385, 47.976463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951542, 35.079868, 48.072243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186266, -0.209994, 0.959795,
		0.305784, -0.940764, -0.146488,
		0.933703, 0.266204, 0.239446,
		36.231651, 35.159729, 48.144077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645760, 34.616817, 48.614323>,  <35.578060, 34.973385, 47.976463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645760, 34.616817, 48.614323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951973, 34.874172, 48.613335>,  <36.135700, 35.028584, 48.612743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.951973, 34.874172, 48.613335>,  <35.645760, 34.616817, 48.614323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951973, 34.874172, 48.613335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007857, 0.013184, 0.999882,
		0.643345, -0.765427, 0.015148,
		0.765536, 0.643388, -0.002468,
		36.181633, 35.067188, 48.612595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.169643, 34.344967, 49.076263>,  <35.645760, 34.616817, 48.614323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.169643, 34.344967, 49.076263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.194202, 34.740894, 49.024914>,  <36.208939, 34.978451, 48.994102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.194202, 34.740894, 49.024914>,  <36.169643, 34.344967, 49.076263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194202, 34.740894, 49.024914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001134, 0.128690, 0.991684,
		0.998113, -0.060743, 0.009024,
		0.061399, 0.989823, -0.128379,
		36.212624, 35.037842, 48.986401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719383, 34.574932, 49.479603>,  <36.169643, 34.344967, 49.076263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719383, 34.574932, 49.479603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.507153, 34.910946, 49.434315>,  <36.379814, 35.112556, 49.407143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.507153, 34.910946, 49.434315>,  <36.719383, 34.574932, 49.479603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507153, 34.910946, 49.434315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155150, 0.227563, 0.961324,
		0.833314, 0.492494, -0.251073,
		-0.530581, 0.840039, -0.113221,
		36.347977, 35.162956, 49.400349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124405, 35.057098, 49.856495>,  <36.719383, 34.574932, 49.479603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124405, 35.057098, 49.856495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741570, 35.172241, 49.843056>,  <36.511868, 35.241325, 49.834991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741570, 35.172241, 49.843056>,  <37.124405, 35.057098, 49.856495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741570, 35.172241, 49.843056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102407, 0.444360, 0.889976,
		0.271110, 0.848343, -0.454768,
		-0.957085, 0.287853, -0.033594,
		36.454445, 35.258598, 49.832977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136669, 35.721687, 50.109215>,  <37.124405, 35.057098, 49.856495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136669, 35.721687, 50.109215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748726, 35.626266, 50.129101>,  <36.515961, 35.569016, 50.141033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.748726, 35.626266, 50.129101>,  <37.136669, 35.721687, 50.109215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748726, 35.626266, 50.129101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035251, 0.339239, 0.940040,
		-0.241110, 0.909952, -0.337422,
		-0.969857, -0.238548, 0.049717,
		36.457767, 35.554703, 50.144016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858673, 36.378651, 50.436157>,  <37.136669, 35.721687, 50.109215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858673, 36.378651, 50.436157> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585434, 36.088009, 50.465607>,  <36.421490, 35.913624, 50.483276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.585434, 36.088009, 50.465607>,  <36.858673, 36.378651, 50.436157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585434, 36.088009, 50.465607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009023, 0.092411, 0.995680,
		-0.730268, 0.680814, -0.056570,
		-0.683101, -0.726603, 0.073628,
		36.380505, 35.870029, 50.487694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362461, 36.637341, 50.861309>,  <36.858673, 36.378651, 50.436157>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362461, 36.637341, 50.861309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339191, 36.238869, 50.887352>,  <36.325230, 35.999786, 50.902977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.339191, 36.238869, 50.887352>,  <36.362461, 36.637341, 50.861309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339191, 36.238869, 50.887352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061795, 0.068686, 0.995723,
		-0.996392, 0.053900, -0.065555,
		-0.058172, -0.996181, 0.065108,
		36.321739, 35.940014, 50.906883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793285, 36.497009, 51.371243>,  <36.362461, 36.637341, 50.861309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793285, 36.497009, 51.371243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.007263, 36.161621, 51.329666>,  <36.135651, 35.960388, 51.304722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.007263, 36.161621, 51.329666>,  <35.793285, 36.497009, 51.371243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007263, 36.161621, 51.329666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109917, -0.052909, 0.992532,
		-0.837708, -0.542372, 0.063859,
		0.534943, -0.838471, -0.103938,
		36.167747, 35.910080, 51.298485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502842, 36.008663, 51.928417>,  <35.793285, 36.497009, 51.371243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502842, 36.008663, 51.928417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848724, 35.831505, 51.833652>,  <36.056255, 35.725212, 51.776794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.848724, 35.831505, 51.833652>,  <35.502842, 36.008663, 51.928417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848724, 35.831505, 51.833652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087980, -0.330827, 0.939581,
		-0.494512, -0.833305, -0.247103,
		0.864707, -0.442894, -0.236913,
		36.108135, 35.698635, 51.762577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498878, 35.276211, 52.131191>,  <35.502842, 36.008663, 51.928417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498878, 35.276211, 52.131191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893810, 35.336754, 52.112125>,  <36.130768, 35.373081, 52.100685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.893810, 35.336754, 52.112125>,  <35.498878, 35.276211, 52.131191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893810, 35.336754, 52.112125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119674, -0.512996, 0.850008,
		0.104205, -0.844941, -0.524610,
		0.987329, 0.151358, -0.047661,
		36.190010, 35.382160, 52.097828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793259, 34.671169, 52.253799>,  <35.498878, 35.276211, 52.131191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793259, 34.671169, 52.253799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.084999, 34.933128, 52.332947>,  <36.260044, 35.090305, 52.380436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.084999, 34.933128, 52.332947>,  <35.793259, 34.671169, 52.253799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084999, 34.933128, 52.332947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064981, -0.354235, 0.932896,
		0.681048, -0.667550, -0.300917,
		0.729350, 0.654901, 0.197873,
		36.303802, 35.129597, 52.392307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.375160, 34.323006, 52.576286>,  <35.793259, 34.671169, 52.253799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.375160, 34.323006, 52.576286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.387039, 34.705402, 52.693047>,  <36.394165, 34.934841, 52.763103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.387039, 34.705402, 52.693047>,  <36.375160, 34.323006, 52.576286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387039, 34.705402, 52.693047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001819, -0.291975, 0.956424,
		0.999557, -0.028933, -0.006931,
		0.029696, 0.955988, 0.291899,
		36.395947, 34.992199, 52.780617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992817, 34.410469, 53.027294>,  <36.375160, 34.323006, 52.576286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992817, 34.410469, 53.027294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.724464, 34.700329, 53.090298>,  <36.563454, 34.874245, 53.128098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.724464, 34.700329, 53.090298>,  <36.992817, 34.410469, 53.027294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724464, 34.700329, 53.090298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149493, -0.340192, 0.928397,
		0.726341, 0.599298, 0.336557,
		-0.670881, 0.724646, 0.157504,
		36.523201, 34.917721, 53.137550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081890, 34.529736, 53.708408>,  <36.992817, 34.410469, 53.027294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081890, 34.529736, 53.708408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727253, 34.696987, 53.629288>,  <36.514473, 34.797340, 53.581818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.727253, 34.696987, 53.629288>,  <37.081890, 34.529736, 53.708408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727253, 34.696987, 53.629288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297309, -0.187542, 0.936181,
		0.354352, 0.888816, 0.290587,
		-0.886590, 0.418132, -0.197797,
		36.461277, 34.822426, 53.569950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902691, 34.705982, 54.369152>,  <37.081890, 34.529736, 53.708408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902691, 34.705982, 54.369152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570251, 34.683563, 54.147835>,  <36.370789, 34.670113, 54.015045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570251, 34.683563, 54.147835>,  <36.902691, 34.705982, 54.369152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570251, 34.683563, 54.147835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521304, -0.267983, 0.810202,
		-0.193679, 0.961792, 0.193505,
		-0.831102, -0.056044, -0.553289,
		36.320919, 34.666748, 53.981850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380135, 34.774456, 54.843719>,  <36.902691, 34.705982, 54.369152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380135, 34.774456, 54.843719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.179367, 34.637405, 54.526058>,  <36.058907, 34.555176, 54.335461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.179367, 34.637405, 54.526058>,  <36.380135, 34.774456, 54.843719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179367, 34.637405, 54.526058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581799, -0.545663, 0.603126,
		-0.639986, 0.764762, 0.074543,
		-0.501923, -0.342623, -0.794155,
		36.028790, 34.534618, 54.287811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733494, 34.842560, 55.075851>,  <36.380135, 34.774456, 54.843719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733494, 34.842560, 55.075851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744904, 34.573181, 54.780376>,  <35.751747, 34.411552, 54.603092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.744904, 34.573181, 54.780376>,  <35.733494, 34.842560, 55.075851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744904, 34.573181, 54.780376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669419, -0.561667, 0.486219,
		-0.742338, 0.480621, -0.466839,
		0.028521, -0.673450, -0.738683,
		35.753460, 34.371147, 54.558773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052361, 34.642673, 54.982784>,  <35.733494, 34.842560, 55.075851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052361, 34.642673, 54.982784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.284393, 34.363144, 54.815384>,  <35.423615, 34.195427, 54.714943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.284393, 34.363144, 54.815384>,  <35.052361, 34.642673, 54.982784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284393, 34.363144, 54.815384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637557, -0.709299, 0.300692,
		-0.506974, 0.092393, -0.856995,
		0.580084, -0.698826, -0.418502,
		35.458420, 34.153496, 54.689835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281445, 34.669552, 55.251560>,  <35.052361, 34.642673, 54.982784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281445, 34.669552, 55.251560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.912594, 34.549946, 55.153355>,  <33.691284, 34.478184, 55.094429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.912594, 34.549946, 55.153355>,  <34.281445, 34.669552, 55.251560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912594, 34.549946, 55.153355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198368, 0.179427, -0.963564,
		0.332170, -0.937229, -0.106140,
		-0.922124, -0.299012, -0.245516,
		33.635956, 34.460243, 55.079700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327183, 34.159122, 54.615120>,  <34.281445, 34.669552, 55.251560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327183, 34.159122, 54.615120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.951328, 34.289436, 54.656971>,  <33.725815, 34.367626, 54.682083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.951328, 34.289436, 54.656971>,  <34.327183, 34.159122, 54.615120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951328, 34.289436, 54.656971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013835, 0.269357, -0.962941,
		-0.341899, -0.906261, -0.248590,
		-0.939635, 0.325789, 0.104631,
		33.669437, 34.387173, 54.688358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934280, 33.784920, 54.176117>,  <34.327183, 34.159122, 54.615120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934280, 33.784920, 54.176117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731689, 34.127445, 54.216534>,  <33.610134, 34.332958, 54.240784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.731689, 34.127445, 54.216534>,  <33.934280, 33.784920, 54.176117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731689, 34.127445, 54.216534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041456, 0.092871, -0.994815,
		-0.861254, -0.508043, -0.011538,
		-0.506480, 0.856310, 0.101046,
		33.579746, 34.384338, 54.246849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513466, 33.720509, 53.558941>,  <33.934280, 33.784920, 54.176117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513466, 33.720509, 53.558941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446297, 34.092426, 53.689957>,  <33.405994, 34.315578, 53.768566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446297, 34.092426, 53.689957>,  <33.513466, 33.720509, 53.558941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446297, 34.092426, 53.689957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292601, 0.270274, -0.917244,
		-0.941375, -0.249863, 0.226674,
		-0.167921, 0.929796, 0.327540,
		33.395920, 34.371365, 53.788219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899902, 33.889034, 53.317638>,  <33.513466, 33.720509, 53.558941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899902, 33.889034, 53.317638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.072643, 34.241703, 53.393703>,  <33.176289, 34.453304, 53.439342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.072643, 34.241703, 53.393703>,  <32.899902, 33.889034, 53.317638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072643, 34.241703, 53.393703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347599, 0.357245, -0.866920,
		-0.832273, 0.308279, 0.460744,
		0.431852, 0.881669, 0.190167,
		33.202198, 34.506203, 53.450752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456024, 34.422188, 53.031536>,  <32.899902, 33.889034, 53.317638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456024, 34.422188, 53.031536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.810329, 34.600925, 53.081745>,  <33.022911, 34.708168, 53.111870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.810329, 34.600925, 53.081745>,  <32.456024, 34.422188, 53.031536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810329, 34.600925, 53.081745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080641, 0.414491, -0.906474,
		-0.457086, 0.792795, 0.403173,
		0.885759, 0.446849, 0.125526,
		33.076057, 34.734982, 53.119404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425056, 35.109715, 52.826290>,  <32.456024, 34.422188, 53.031536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425056, 35.109715, 52.826290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818466, 35.048180, 52.788303>,  <33.054512, 35.011257, 52.765511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.818466, 35.048180, 52.788303>,  <32.425056, 35.109715, 52.826290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818466, 35.048180, 52.788303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012891, 0.583619, -0.811926,
		0.180328, 0.797323, 0.575985,
		0.983522, -0.153838, -0.094964,
		33.113522, 35.002029, 52.759815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773552, 35.781250, 52.754269>,  <32.425056, 35.109715, 52.826290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773552, 35.781250, 52.754269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015255, 35.513111, 52.581989>,  <33.160278, 35.352226, 52.478622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.015255, 35.513111, 52.581989>,  <32.773552, 35.781250, 52.754269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015255, 35.513111, 52.581989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041459, 0.513364, -0.857169,
		0.795707, 0.535810, 0.282414,
		0.604261, -0.670347, -0.430702,
		33.196533, 35.312008, 52.452778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219769, 36.188221, 52.470493>,  <32.773552, 35.781250, 52.754269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219769, 36.188221, 52.470493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.303333, 35.841434, 52.289509>,  <33.353474, 35.633362, 52.180916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.303333, 35.841434, 52.289509>,  <33.219769, 36.188221, 52.470493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303333, 35.841434, 52.289509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242223, 0.494132, -0.834962,
		0.947461, 0.064838, 0.313231,
		0.208915, -0.866966, -0.452466,
		33.366009, 35.581345, 52.153770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844784, 36.274189, 52.157429>,  <33.219769, 36.188221, 52.470493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844784, 36.274189, 52.157429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652782, 35.974384, 51.975071>,  <33.537582, 35.794502, 51.865658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652782, 35.974384, 51.975071>,  <33.844784, 36.274189, 52.157429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652782, 35.974384, 51.975071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155975, 0.438481, -0.885102,
		0.863291, -0.495957, -0.093566,
		-0.480000, -0.749507, -0.455894,
		33.508781, 35.749531, 51.838303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165527, 36.107285, 51.650970>,  <33.844784, 36.274189, 52.157429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165527, 36.107285, 51.650970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843533, 35.914791, 51.512173>,  <33.650333, 35.799294, 51.428894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.843533, 35.914791, 51.512173>,  <34.165527, 36.107285, 51.650970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843533, 35.914791, 51.512173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260193, 0.239266, -0.935442,
		0.533190, -0.843307, -0.067393,
		-0.804989, -0.481232, -0.346997,
		33.602036, 35.770420, 51.408073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371082, 35.624458, 51.073872>,  <34.165527, 36.107285, 51.650970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371082, 35.624458, 51.073872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.982922, 35.704765, 51.020195>,  <33.750023, 35.752949, 50.987991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.982922, 35.704765, 51.020195>,  <34.371082, 35.624458, 51.073872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982922, 35.704765, 51.020195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173875, 0.195305, -0.965206,
		-0.167575, -0.959973, -0.224434,
		-0.970405, 0.200767, -0.134187,
		33.691799, 35.764996, 50.979939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077431, 35.157459, 50.553482>,  <34.371082, 35.624458, 51.073872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077431, 35.157459, 50.553482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886494, 35.508808, 50.563290>,  <33.771931, 35.719616, 50.569176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.886494, 35.508808, 50.563290>,  <34.077431, 35.157459, 50.553482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886494, 35.508808, 50.563290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193063, 0.132061, -0.972258,
		-0.857244, -0.459369, -0.232620,
		-0.477346, 0.878374, 0.024522,
		33.743290, 35.772320, 50.570644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886505, 35.157730, 49.931503>,  <34.077431, 35.157459, 50.553482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886505, 35.157730, 49.931503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782993, 35.527367, 50.043999>,  <33.720886, 35.749149, 50.111496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782993, 35.527367, 50.043999>,  <33.886505, 35.157730, 49.931503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782993, 35.527367, 50.043999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237276, 0.343044, -0.908857,
		-0.936341, -0.168462, -0.308037,
		-0.258778, 0.924090, 0.281234,
		33.705360, 35.804592, 50.128368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416252, 35.418751, 49.400684>,  <33.886505, 35.157730, 49.931503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416252, 35.418751, 49.400684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562428, 35.750412, 49.569901>,  <33.650131, 35.949409, 49.671429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562428, 35.750412, 49.569901>,  <33.416252, 35.418751, 49.400684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562428, 35.750412, 49.569901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132251, 0.403611, -0.905322,
		-0.921394, 0.386784, 0.037837,
		0.365435, 0.829154, 0.423037,
		33.672058, 35.999157, 49.696812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181122, 35.969776, 48.940575>,  <33.416252, 35.418751, 49.400684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181122, 35.969776, 48.940575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.451420, 36.166542, 49.160172>,  <33.613598, 36.284599, 49.291931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.451420, 36.166542, 49.160172>,  <33.181122, 35.969776, 48.940575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451420, 36.166542, 49.160172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222898, 0.573544, -0.788266,
		-0.702630, 0.655035, 0.277922,
		0.675743, 0.491911, 0.548995,
		33.654144, 36.314114, 49.324871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149963, 36.657562, 48.745049>,  <33.181122, 35.969776, 48.940575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149963, 36.657562, 48.745049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507275, 36.688019, 48.922253>,  <33.721661, 36.706295, 49.028576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507275, 36.688019, 48.922253>,  <33.149963, 36.657562, 48.745049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507275, 36.688019, 48.922253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272277, 0.692519, -0.668044,
		-0.357661, 0.717370, 0.597878,
		0.893277, 0.076145, 0.443011,
		33.775257, 36.710861, 49.055157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381802, 37.389462, 48.881626>,  <33.149963, 36.657562, 48.745049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381802, 37.389462, 48.881626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712036, 37.163918, 48.872955>,  <33.910179, 37.028591, 48.867752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712036, 37.163918, 48.872955>,  <33.381802, 37.389462, 48.881626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712036, 37.163918, 48.872955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373965, 0.575516, -0.727277,
		0.422557, 0.592323, 0.686001,
		0.825588, -0.563857, -0.021680,
		33.959713, 36.994759, 48.866451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005054, 37.848495, 48.888241>,  <33.381802, 37.389462, 48.881626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005054, 37.848495, 48.888241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.149670, 37.498184, 48.760303>,  <34.236439, 37.287998, 48.683540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.149670, 37.498184, 48.760303>,  <34.005054, 37.848495, 48.888241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149670, 37.498184, 48.760303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421551, 0.459525, -0.781749,
		0.831615, 0.147804, 0.535322,
		0.361539, -0.875780, -0.319841,
		34.258133, 37.235451, 48.664352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655457, 37.963673, 48.571701>,  <34.005054, 37.848495, 48.888241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655457, 37.963673, 48.571701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.572582, 37.598465, 48.431149>,  <34.522858, 37.379341, 48.346817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.572582, 37.598465, 48.431149>,  <34.655457, 37.963673, 48.571701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572582, 37.598465, 48.431149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344816, 0.267972, -0.899607,
		0.915519, -0.307551, 0.259302,
		-0.207189, -0.913019, -0.351382,
		34.510426, 37.324558, 48.325733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277859, 37.694668, 48.233658>,  <34.655457, 37.963673, 48.571701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277859, 37.694668, 48.233658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.952835, 37.554546, 48.047314>,  <34.757820, 37.470474, 47.935505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.952835, 37.554546, 48.047314>,  <35.277859, 37.694668, 48.233658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952835, 37.554546, 48.047314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362756, 0.321674, -0.874605,
		0.456236, -0.879665, -0.134305,
		-0.812562, -0.350306, -0.465863,
		34.709068, 37.449455, 47.907555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.459087, 29.390594, 29.722656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.423626, 28.992228, 29.729506>,  <44.402348, 28.753208, 29.733616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.423626, 28.992228, 29.729506>,  <44.459087, 29.390594, 29.722656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.423626, 28.992228, 29.729506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714216, 0.075541, 0.695837,
		-0.694289, 0.049459, -0.717995,
		-0.088654, -0.995915, 0.017123,
		44.397030, 28.693453, 29.734642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770206, 29.164749, 29.491156>,  <44.459087, 29.390594, 29.722656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770206, 29.164749, 29.491156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.943993, 28.893354, 29.728102>,  <44.048264, 28.730518, 29.870270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.943993, 28.893354, 29.728102>,  <43.770206, 29.164749, 29.491156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943993, 28.893354, 29.728102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795267, 0.019781, 0.605936,
		-0.422837, -0.734348, -0.530983,
		0.434464, -0.678485, 0.592367,
		44.074333, 28.689808, 29.905811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207142, 28.932076, 29.801455>,  <43.770206, 29.164749, 29.491156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207142, 28.932076, 29.801455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.491951, 28.768187, 30.029543>,  <43.662838, 28.669853, 30.166397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.491951, 28.768187, 30.029543>,  <43.207142, 28.932076, 29.801455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491951, 28.768187, 30.029543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605879, 0.051930, 0.793860,
		-0.354873, -0.910732, -0.211267,
		0.712022, -0.409721, 0.570222,
		43.705559, 28.645269, 30.200609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896278, 28.490068, 30.337534>,  <43.207142, 28.932076, 29.801455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896278, 28.490068, 30.337534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.263401, 28.566761, 30.476603>,  <43.483673, 28.612778, 30.560043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.263401, 28.566761, 30.476603>,  <42.896278, 28.490068, 30.337534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263401, 28.566761, 30.476603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395406, 0.362179, 0.844086,
		0.035920, -0.912176, 0.408221,
		0.917804, 0.191733, 0.347670,
		43.538742, 28.624281, 30.580904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999241, 28.165808, 31.085810>,  <42.896278, 28.490068, 30.337534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999241, 28.165808, 31.085810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.228161, 28.489601, 31.033344>,  <43.365513, 28.683878, 31.001865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.228161, 28.489601, 31.033344>,  <42.999241, 28.165808, 31.085810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228161, 28.489601, 31.033344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552262, 0.498694, 0.668065,
		0.606200, -0.309898, 0.732452,
		0.572301, 0.809486, -0.131164,
		43.399853, 28.732447, 30.993996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089890, 28.327496, 31.739216>,  <42.999241, 28.165808, 31.085810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089890, 28.327496, 31.739216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.195786, 28.653166, 31.532518>,  <43.259323, 28.848568, 31.408499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.195786, 28.653166, 31.532518>,  <43.089890, 28.327496, 31.739216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195786, 28.653166, 31.532518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331807, 0.580056, 0.743935,
		0.905437, -0.025492, 0.423715,
		0.264743, 0.814177, -0.516746,
		43.275208, 28.897419, 31.377495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303543, 28.741056, 32.277870>,  <43.089890, 28.327496, 31.739216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303543, 28.741056, 32.277870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295376, 29.021219, 31.992489>,  <43.290474, 29.189318, 31.821260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.295376, 29.021219, 31.992489>,  <43.303543, 28.741056, 32.277870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295376, 29.021219, 31.992489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153500, 0.702942, 0.694486,
		0.987938, 0.123697, 0.093157,
		-0.020422, 0.700409, -0.713450,
		43.289249, 29.231342, 31.778454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.743599, 29.256557, 32.421688>,  <43.303543, 28.741056, 32.277870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.743599, 29.256557, 32.421688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484936, 29.447989, 32.184097>,  <43.329739, 29.562847, 32.041542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484936, 29.447989, 32.184097>,  <43.743599, 29.256557, 32.421688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484936, 29.447989, 32.184097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085176, 0.819126, 0.567255,
		0.758012, 0.316226, -0.570455,
		-0.646655, 0.478575, -0.593972,
		43.290939, 29.591560, 32.005905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.953449, 29.984087, 32.375698>,  <43.743599, 29.256557, 32.421688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.953449, 29.984087, 32.375698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563919, 29.953053, 32.290234>,  <43.330200, 29.934433, 32.238956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563919, 29.953053, 32.290234>,  <43.953449, 29.984087, 32.375698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563919, 29.953053, 32.290234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202682, 0.721912, 0.661637,
		0.102912, 0.687622, -0.718739,
		-0.973822, -0.077585, -0.213662,
		43.271774, 29.929777, 32.226135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798611, 30.582901, 32.448238>,  <43.953449, 29.984087, 32.375698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798611, 30.582901, 32.448238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438118, 30.409597, 32.445049>,  <43.221821, 30.305616, 32.443138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438118, 30.409597, 32.445049>,  <43.798611, 30.582901, 32.448238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438118, 30.409597, 32.445049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320876, 0.654880, 0.684230,
		-0.291228, 0.619210, -0.729223,
		-0.901235, -0.433257, -0.007970,
		43.167747, 30.279621, 32.442657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311668, 31.172892, 32.438892>,  <43.798611, 30.582901, 32.448238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311668, 31.172892, 32.438892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.100735, 30.856604, 32.563263>,  <42.974174, 30.666832, 32.637886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.100735, 30.856604, 32.563263>,  <43.311668, 31.172892, 32.438892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.100735, 30.856604, 32.563263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340751, 0.532048, 0.775122,
		-0.778333, 0.302801, -0.550008,
		-0.527338, -0.790719, 0.310931,
		42.942532, 30.619389, 32.656544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633427, 31.405594, 32.410614>,  <43.311668, 31.172892, 32.438892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633427, 31.405594, 32.410614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.655087, 31.106342, 32.675148>,  <42.668083, 30.926792, 32.833870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.655087, 31.106342, 32.675148>,  <42.633427, 31.405594, 32.410614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655087, 31.106342, 32.675148> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112729, 0.653496, 0.748488,
		-0.992149, -0.115085, -0.048948,
		0.054153, -0.748130, 0.661339,
		42.671333, 30.881903, 32.873550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.032600, 31.497868, 32.947784>,  <42.633427, 31.405594, 32.410614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.032600, 31.497868, 32.947784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308643, 31.258011, 33.109859>,  <42.474270, 31.114096, 33.207104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.308643, 31.258011, 33.109859>,  <42.032600, 31.497868, 32.947784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308643, 31.258011, 33.109859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015976, 0.572368, 0.819841,
		-0.723530, -0.559305, 0.404576,
		0.690108, -0.599643, 0.405190,
		42.515675, 31.078117, 33.231415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.746269, 31.362703, 33.646885>,  <42.032600, 31.497868, 32.947784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.746269, 31.362703, 33.646885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.139557, 31.290056, 33.653713>,  <42.375530, 31.246468, 33.657810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.139557, 31.290056, 33.653713>,  <41.746269, 31.362703, 33.646885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139557, 31.290056, 33.653713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088301, 0.555731, 0.826660,
		-0.159624, -0.811282, 0.562443,
		0.983221, -0.181619, 0.017071,
		42.434525, 31.235571, 33.658833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.920311, 31.084000, 34.409954>,  <41.746269, 31.362703, 33.646885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.920311, 31.084000, 34.409954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.262367, 31.207151, 34.243122>,  <42.467602, 31.281042, 34.143024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.262367, 31.207151, 34.243122>,  <41.920311, 31.084000, 34.409954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.262367, 31.207151, 34.243122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244132, 0.470575, 0.847914,
		0.457316, -0.826906, 0.327245,
		0.855139, 0.307873, -0.417076,
		42.518909, 31.299515, 34.118000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301655, 31.049543, 35.002872>,  <41.920311, 31.084000, 34.409954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301655, 31.049543, 35.002872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527534, 31.262671, 34.750771>,  <42.663063, 31.390547, 34.599510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.527534, 31.262671, 34.750771>,  <42.301655, 31.049543, 35.002872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527534, 31.262671, 34.750771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357333, 0.530521, 0.768674,
		0.743926, -0.659281, 0.109192,
		0.564701, 0.532819, -0.630251,
		42.696945, 31.422516, 34.561695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883453, 31.032160, 35.284103>,  <42.301655, 31.049543, 35.002872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883453, 31.032160, 35.284103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.896904, 31.352900, 35.045471>,  <42.904976, 31.545343, 34.902294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.896904, 31.352900, 35.045471>,  <42.883453, 31.032160, 35.284103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896904, 31.352900, 35.045471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196601, 0.579943, 0.790578,
		0.979907, -0.143875, -0.138141,
		0.033631, 0.801851, -0.596576,
		42.906994, 31.593454, 34.866497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410328, 31.427797, 35.542301>,  <42.883453, 31.032160, 35.284103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410328, 31.427797, 35.542301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207031, 31.697830, 35.328400>,  <43.085052, 31.859850, 35.200058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.207031, 31.697830, 35.328400>,  <43.410328, 31.427797, 35.542301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.207031, 31.697830, 35.328400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051847, 0.595818, 0.801445,
		0.859655, 0.435049, -0.267816,
		-0.508237, 0.675081, -0.534754,
		43.054562, 31.900354, 35.167973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.654003, 32.097584, 35.723152>,  <43.410328, 31.427797, 35.542301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.654003, 32.097584, 35.723152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311729, 32.184925, 35.535480>,  <43.106365, 32.237331, 35.422878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.311729, 32.184925, 35.535480>,  <43.654003, 32.097584, 35.723152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.311729, 32.184925, 35.535480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247604, 0.623367, 0.741691,
		0.454420, 0.750823, -0.479340,
		-0.855683, 0.218353, -0.469178,
		43.055023, 32.250431, 35.394726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667934, 32.792522, 35.452282>,  <43.654003, 32.097584, 35.723152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667934, 32.792522, 35.452282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280979, 32.720680, 35.523727>,  <43.048805, 32.677574, 35.566597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280979, 32.720680, 35.523727>,  <43.667934, 32.792522, 35.452282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280979, 32.720680, 35.523727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016535, 0.658874, 0.752072,
		-0.252760, 0.730498, -0.634416,
		-0.967388, -0.179604, 0.178616,
		42.990765, 32.666798, 35.577312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492668, 33.461281, 35.610924>,  <43.667934, 32.792522, 35.452282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492668, 33.461281, 35.610924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.208958, 33.212692, 35.744011>,  <43.038731, 33.063538, 35.823864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.208958, 33.212692, 35.744011>,  <43.492668, 33.461281, 35.610924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208958, 33.212692, 35.744011> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012352, 0.482868, 0.875606,
		-0.704826, 0.616934, -0.350162,
		-0.709273, -0.621475, 0.332718,
		42.996178, 33.026249, 35.843826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260078, 33.668880, 35.809090>,  <43.492668, 33.461281, 35.610924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260078, 33.668880, 35.809090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.649307, 33.583435, 35.774426>,  <44.882843, 33.532169, 35.753628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.649307, 33.583435, 35.774426>,  <44.260078, 33.668880, 35.809090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649307, 33.583435, 35.774426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025876, 0.272339, -0.961853,
		0.229061, 0.938191, 0.259477,
		0.973068, -0.213609, -0.086659,
		44.941227, 33.519352, 35.748428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442463, 34.076279, 35.321487>,  <44.260078, 33.668880, 35.809090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442463, 34.076279, 35.321487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.732800, 33.801136, 35.320210>,  <44.907001, 33.636051, 35.319443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.732800, 33.801136, 35.320210>,  <44.442463, 34.076279, 35.321487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732800, 33.801136, 35.320210> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069184, 0.077624, -0.994579,
		0.684376, 0.721684, 0.103932,
		0.725839, -0.687857, -0.003195,
		44.950550, 33.594780, 35.319252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087345, 34.388428, 35.027061>,  <44.442463, 34.076279, 35.321487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087345, 34.388428, 35.027061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136600, 33.994072, 34.981697>,  <45.166153, 33.757458, 34.954479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136600, 33.994072, 34.981697>,  <45.087345, 34.388428, 35.027061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136600, 33.994072, 34.981697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150017, 0.131465, -0.979904,
		0.980985, 0.103652, 0.164088,
		0.123141, -0.985887, -0.113415,
		45.173542, 33.698307, 34.947674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731403, 34.234406, 34.520817>,  <45.087345, 34.388428, 35.027061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731403, 34.234406, 34.520817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.498505, 33.909393, 34.531998>,  <45.358765, 33.714386, 34.538704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.498505, 33.909393, 34.531998>,  <45.731403, 34.234406, 34.520817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498505, 33.909393, 34.531998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037466, -0.007525, -0.999269,
		0.812152, -0.582864, -0.026061,
		-0.582242, -0.812535, 0.027948,
		45.323833, 33.665634, 34.540382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.931927, 33.891777, 33.919151>,  <45.731403, 34.234406, 34.520817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.931927, 33.891777, 33.919151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614761, 33.672188, 34.024914>,  <45.424461, 33.540436, 34.088371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.614761, 33.672188, 34.024914>,  <45.931927, 33.891777, 33.919151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.614761, 33.672188, 34.024914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075899, -0.341574, -0.936785,
		0.604583, -0.762862, 0.229174,
		-0.792918, -0.548971, 0.264410,
		45.376884, 33.507496, 34.104237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018768, 33.280342, 33.674625>,  <45.931927, 33.891777, 33.919151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018768, 33.280342, 33.674625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.624786, 33.332081, 33.720463>,  <45.388397, 33.363125, 33.747967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.624786, 33.332081, 33.720463>,  <46.018768, 33.280342, 33.674625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624786, 33.332081, 33.720463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162162, -0.462692, -0.871561,
		-0.059713, -0.877032, 0.476707,
		-0.984956, 0.129348, 0.114593,
		45.329300, 33.370884, 33.754841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837090, 32.655167, 33.369987>,  <46.018768, 33.280342, 33.674625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837090, 32.655167, 33.369987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516575, 32.893944, 33.353970>,  <45.324265, 33.037209, 33.344360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.516575, 32.893944, 33.353970>,  <45.837090, 32.655167, 33.369987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.516575, 32.893944, 33.353970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124725, -0.232128, -0.964655,
		-0.585135, -0.767971, 0.260455,
		-0.801287, 0.596939, -0.040041,
		45.276188, 33.073025, 33.341957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299786, 32.253090, 33.136490>,  <45.837090, 32.655167, 33.369987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299786, 32.253090, 33.136490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.220394, 32.632107, 33.036278>,  <45.172760, 32.859516, 32.976151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.220394, 32.632107, 33.036278>,  <45.299786, 32.253090, 33.136490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.220394, 32.632107, 33.036278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093328, -0.272729, -0.957554,
		-0.975652, -0.166671, 0.142563,
		-0.198478, 0.947544, -0.250533,
		45.160851, 32.916370, 32.961117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741966, 32.187420, 32.633327>,  <45.299786, 32.253090, 33.136490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741966, 32.187420, 32.633327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.838135, 32.571381, 32.575645>,  <44.895836, 32.801758, 32.541035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.838135, 32.571381, 32.575645>,  <44.741966, 32.187420, 32.633327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838135, 32.571381, 32.575645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112692, -0.119954, -0.986363,
		-0.964105, 0.253392, 0.079334,
		0.240420, 0.959898, -0.144204,
		44.910259, 32.859348, 32.532383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290699, 32.435833, 32.149498>,  <44.741966, 32.187420, 32.633327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290699, 32.435833, 32.149498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.582722, 32.705379, 32.104034>,  <44.757935, 32.867107, 32.076756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.582722, 32.705379, 32.104034>,  <44.290699, 32.435833, 32.149498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582722, 32.705379, 32.104034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168028, 0.015787, -0.985656,
		-0.662404, 0.738686, 0.124754,
		0.730060, 0.673865, -0.113662,
		44.801739, 32.907539, 32.069935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027225, 33.031166, 31.685705>,  <44.290699, 32.435833, 32.149498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027225, 33.031166, 31.685705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.424561, 33.076508, 31.677391>,  <44.662960, 33.103714, 31.672403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.424561, 33.076508, 31.677391>,  <44.027225, 33.031166, 31.685705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424561, 33.076508, 31.677391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025315, 0.038677, -0.998931,
		-0.112431, 0.992801, 0.041289,
		0.993337, 0.113356, -0.020784,
		44.722561, 33.110516, 31.671156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.228912, 33.709068, 31.302660>,  <44.027225, 33.031166, 31.685705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.228912, 33.709068, 31.302660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.531578, 33.448612, 31.279060>,  <44.713177, 33.292339, 31.264900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.531578, 33.448612, 31.279060>,  <44.228912, 33.709068, 31.302660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531578, 33.448612, 31.279060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156213, -0.092427, -0.983389,
		0.634868, 0.753311, -0.171652,
		0.756664, -0.651137, -0.058998,
		44.758575, 33.253273, 31.261360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652428, 33.981590, 30.737982>,  <44.228912, 33.709068, 31.302660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652428, 33.981590, 30.737982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781002, 33.603939, 30.767092>,  <44.858147, 33.377346, 30.784557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.781002, 33.603939, 30.767092>,  <44.652428, 33.981590, 30.737982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.781002, 33.603939, 30.767092> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224613, 0.001360, -0.974447,
		0.919906, 0.329570, 0.212501,
		0.321437, -0.944130, 0.072775,
		44.877434, 33.320702, 30.788923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.309719, 33.937511, 30.416767>,  <44.652428, 33.981590, 30.737982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.309719, 33.937511, 30.416767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149559, 33.571640, 30.394670>,  <45.053463, 33.352119, 30.381413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.149559, 33.571640, 30.394670>,  <45.309719, 33.937511, 30.416767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149559, 33.571640, 30.394670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288400, -0.068570, -0.955051,
		0.869773, -0.398333, 0.291248,
		-0.400399, -0.914674, -0.055239,
		45.029438, 33.297237, 30.378099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942944, 33.527328, 30.247278>,  <45.309719, 33.937511, 30.416767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.942944, 33.527328, 30.247278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.617741, 33.310352, 30.162634>,  <45.422619, 33.180164, 30.111847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.617741, 33.310352, 30.162634>,  <45.942944, 33.527328, 30.247278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.617741, 33.310352, 30.162634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430002, -0.314314, -0.846348,
		0.392584, -0.779077, 0.488791,
		-0.813004, -0.542444, -0.211610,
		45.373840, 33.147617, 30.099152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196766, 33.010818, 29.972933>,  <45.942944, 33.527328, 30.247278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196766, 33.010818, 29.972933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.822433, 32.971058, 29.837673>,  <45.597836, 32.947201, 29.756517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.822433, 32.971058, 29.837673>,  <46.196766, 33.010818, 29.972933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822433, 32.971058, 29.837673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351294, -0.340860, -0.872013,
		-0.028584, -0.934844, 0.353905,
		-0.935829, -0.099399, -0.338148,
		45.541683, 32.941238, 29.736229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195232, 32.369877, 29.558594>,  <46.196766, 33.010818, 29.972933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195232, 32.369877, 29.558594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.863365, 32.568718, 29.456972>,  <45.664246, 32.688023, 29.395998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.863365, 32.568718, 29.456972>,  <46.195232, 32.369877, 29.558594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.863365, 32.568718, 29.456972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054309, -0.381056, -0.922955,
		-0.555610, -0.779543, 0.289153,
		-0.829668, 0.497100, -0.254055,
		45.614464, 32.717846, 29.380756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.812931, 31.833431, 29.099287>,  <46.195232, 32.369877, 29.558594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.812931, 31.833431, 29.099287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628166, 32.175255, 29.004322>,  <45.517307, 32.380348, 28.947342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.628166, 32.175255, 29.004322>,  <45.812931, 31.833431, 29.099287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628166, 32.175255, 29.004322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049825, -0.242258, -0.968932,
		-0.885523, -0.459394, 0.069324,
		-0.461916, 0.854557, -0.237415,
		45.489590, 32.431622, 28.933098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192158, 31.662836, 28.816076>,  <45.812931, 31.833431, 29.099287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192158, 31.662836, 28.816076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.289249, 32.026974, 28.681995>,  <45.347504, 32.245457, 28.601547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.289249, 32.026974, 28.681995>,  <45.192158, 31.662836, 28.816076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289249, 32.026974, 28.681995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000913, -0.345322, -0.938484,
		-0.970094, 0.228102, -0.082988,
		0.242727, 0.910342, -0.335203,
		45.362068, 32.300076, 28.581434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613167, 31.798265, 28.445946>,  <45.192158, 31.662836, 28.816076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613167, 31.798265, 28.445946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.906918, 32.039207, 28.320820>,  <45.083168, 32.183773, 28.245745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.906918, 32.039207, 28.320820>,  <44.613167, 31.798265, 28.445946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.906918, 32.039207, 28.320820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105989, -0.353451, -0.929429,
		-0.670413, 0.715708, -0.195724,
		0.734379, 0.602357, -0.312815,
		45.127232, 32.219913, 28.226974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321686, 32.020958, 27.783159>,  <44.613167, 31.798265, 28.445946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321686, 32.020958, 27.783159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.714943, 32.093895, 27.788406>,  <44.950897, 32.137657, 27.791555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.714943, 32.093895, 27.788406>,  <44.321686, 32.020958, 27.783159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.714943, 32.093895, 27.788406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042563, -0.158508, -0.986440,
		-0.177794, 0.970374, -0.163598,
		0.983147, 0.182346, 0.013120,
		45.009888, 32.148598, 27.792343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.813030, 35.313869, 44.171013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430382, 35.295448, 44.055946>,  <37.200790, 35.284393, 43.986908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430382, 35.295448, 44.055946>,  <37.813030, 35.313869, 44.171013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430382, 35.295448, 44.055946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285592, -0.343221, -0.894783,
		-0.057523, -0.938125, 0.341487,
		-0.956623, -0.046055, -0.287664,
		37.143394, 35.281631, 43.969646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873394, 34.804790, 43.783230>,  <37.813030, 35.313869, 44.171013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873394, 34.804790, 43.783230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529011, 34.974422, 43.670868>,  <37.322380, 35.076202, 43.603451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529011, 34.974422, 43.670868>,  <37.873394, 34.804790, 43.783230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529011, 34.974422, 43.670868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165836, -0.288059, -0.943144,
		-0.480883, -0.858593, 0.177680,
		-0.860959, 0.424076, -0.280908,
		37.270721, 35.101646, 43.586594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525230, 34.329823, 43.347939>,  <37.873394, 34.804790, 43.783230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525230, 34.329823, 43.347939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310139, 34.648479, 43.237518>,  <37.181084, 34.839676, 43.171265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310139, 34.648479, 43.237518>,  <37.525230, 34.329823, 43.347939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310139, 34.648479, 43.237518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150436, -0.231505, -0.961132,
		-0.829588, -0.558356, 0.004643,
		-0.537729, 0.796645, -0.276051,
		37.148819, 34.887474, 43.154701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927608, 34.182503, 42.791428>,  <37.525230, 34.329823, 43.347939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927608, 34.182503, 42.791428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033073, 34.566132, 42.750107>,  <37.096352, 34.796307, 42.725315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033073, 34.566132, 42.750107>,  <36.927608, 34.182503, 42.791428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033073, 34.566132, 42.750107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039513, -0.117741, -0.992258,
		-0.963806, 0.257535, -0.068939,
		0.263658, 0.959069, -0.103304,
		37.112171, 34.853851, 42.719116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570992, 34.471153, 42.216888>,  <36.927608, 34.182503, 42.791428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570992, 34.471153, 42.216888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884640, 34.715065, 42.263062>,  <37.072830, 34.861412, 42.290764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884640, 34.715065, 42.263062>,  <36.570992, 34.471153, 42.216888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884640, 34.715065, 42.263062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188342, -0.056590, -0.980472,
		-0.591337, 0.790550, -0.159220,
		0.784122, 0.609777, 0.115430,
		37.119877, 34.897999, 42.297691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493298, 35.032639, 41.741547>,  <36.570992, 34.471153, 42.216888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493298, 35.032639, 41.741547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885750, 35.038605, 41.818661>,  <37.121220, 35.042183, 41.864929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885750, 35.038605, 41.818661>,  <36.493298, 35.032639, 41.741547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885750, 35.038605, 41.818661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189909, 0.113303, -0.975242,
		-0.036386, 0.993449, 0.108332,
		0.981127, 0.014912, 0.192787,
		37.180088, 35.043079, 41.876495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811207, 35.627754, 41.485298>,  <36.493298, 35.032639, 41.741547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811207, 35.627754, 41.485298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108395, 35.362114, 41.518684>,  <37.286709, 35.202728, 41.538715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108395, 35.362114, 41.518684>,  <36.811207, 35.627754, 41.485298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108395, 35.362114, 41.518684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250440, 0.160179, -0.954789,
		0.620705, 0.730284, 0.285326,
		0.742971, -0.664099, 0.083469,
		37.331287, 35.162884, 41.543724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369320, 36.047237, 41.191471>,  <36.811207, 35.627754, 41.485298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369320, 36.047237, 41.191471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530781, 35.681446, 41.180241>,  <37.627659, 35.461971, 41.173500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530781, 35.681446, 41.180241>,  <37.369320, 36.047237, 41.191471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.530781, 35.681446, 41.180241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224208, 0.128626, -0.966016,
		0.887015, 0.383638, 0.256954,
		0.403652, -0.914482, -0.028079,
		37.651875, 35.407101, 41.171818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081944, 36.068367, 40.845657>,  <37.369320, 36.047237, 41.191471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081944, 36.068367, 40.845657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945663, 35.694687, 40.803349>,  <37.863895, 35.470478, 40.777962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945663, 35.694687, 40.803349>,  <38.081944, 36.068367, 40.845657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945663, 35.694687, 40.803349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297250, -0.000302, -0.954800,
		0.891945, -0.356740, 0.277795,
		-0.340699, -0.934203, -0.105772,
		37.843452, 35.414425, 40.771618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501377, 35.815620, 40.406017>,  <38.081944, 36.068367, 40.845657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501377, 35.815620, 40.406017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208199, 35.543709, 40.395557>,  <38.032291, 35.380562, 40.389282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208199, 35.543709, 40.395557>,  <38.501377, 35.815620, 40.406017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208199, 35.543709, 40.395557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079663, -0.047597, -0.995685,
		0.675604, -0.731869, 0.089040,
		-0.732948, -0.679782, -0.026146,
		37.988316, 35.339775, 40.387714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753281, 35.147354, 40.051029>,  <38.501377, 35.815620, 40.406017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753281, 35.147354, 40.051029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355846, 35.189018, 40.033409>,  <38.117386, 35.214016, 40.022835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355846, 35.189018, 40.033409>,  <38.753281, 35.147354, 40.051029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355846, 35.189018, 40.033409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039824, -0.042339, -0.998309,
		-0.105852, -0.993658, 0.037919,
		-0.993584, 0.104163, -0.044053,
		38.057770, 35.220264, 40.020195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608910, 34.787315, 39.482544>,  <38.753281, 35.147354, 40.051029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608910, 34.787315, 39.482544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274807, 35.005196, 39.512577>,  <38.074345, 35.135925, 39.530598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274807, 35.005196, 39.512577>,  <38.608910, 34.787315, 39.482544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274807, 35.005196, 39.512577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050516, 0.059949, -0.996922,
		-0.547528, -0.836483, -0.022557,
		-0.835261, 0.544704, 0.075079,
		38.024227, 35.168606, 39.535099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049374, 34.206673, 39.404942>,  <38.608910, 34.787315, 39.482544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049374, 34.206673, 39.404942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964497, 33.846115, 39.253967>,  <38.913570, 33.629780, 39.163383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964497, 33.846115, 39.253967>,  <39.049374, 34.206673, 39.404942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964497, 33.846115, 39.253967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885411, 0.340782, -0.316091,
		0.413548, 0.267115, -0.870418,
		-0.212191, -0.901397, -0.377436,
		38.900841, 33.575695, 39.140736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274891, 34.216328, 38.631760>,  <39.049374, 34.206673, 39.404942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274891, 34.216328, 38.631760> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282452, 34.613106, 38.681850>,  <39.286987, 34.851173, 38.711903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282452, 34.613106, 38.681850>,  <39.274891, 34.216328, 38.631760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282452, 34.613106, 38.681850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999229, 0.014427, 0.036507,
		0.034407, -0.125818, 0.991457,
		0.018897, 0.991948, 0.125225,
		39.288120, 34.910690, 38.719418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493916, 33.626328, 38.912342>,  <39.274891, 34.216328, 38.631760>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493916, 33.626328, 38.912342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383350, 33.246937, 38.850388>,  <39.317013, 33.019302, 38.813213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383350, 33.246937, 38.850388>,  <39.493916, 33.626328, 38.912342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383350, 33.246937, 38.850388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535038, -0.017997, -0.844637,
		0.798330, -0.316338, 0.512445,
		-0.276414, -0.948476, -0.154885,
		39.300426, 32.962395, 38.803921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315826, 33.659462, 39.133492>,  <39.493916, 33.626328, 38.912342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.315826, 33.659462, 39.133492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638908, 33.423870, 39.144226>,  <40.832756, 33.282513, 39.150669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638908, 33.423870, 39.144226>,  <40.315826, 33.659462, 39.133492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638908, 33.423870, 39.144226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267652, -0.325722, 0.906790,
		-0.525340, -0.739598, -0.420728,
		0.807700, -0.588982, 0.026840,
		40.881218, 33.247177, 39.152279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122288, 33.009476, 39.403347>,  <40.315826, 33.659462, 39.133492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122288, 33.009476, 39.403347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516636, 33.042255, 39.461781>,  <40.753246, 33.061924, 39.496841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516636, 33.042255, 39.461781>,  <40.122288, 33.009476, 39.403347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516636, 33.042255, 39.461781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130217, -0.173588, 0.976171,
		0.105356, -0.981403, -0.160464,
		0.985872, 0.081950, 0.146084,
		40.812397, 33.066841, 39.505608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328415, 32.480503, 39.847515>,  <40.122288, 33.009476, 39.403347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328415, 32.480503, 39.847515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628254, 32.744343, 39.869534>,  <40.808159, 32.902645, 39.882744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628254, 32.744343, 39.869534>,  <40.328415, 32.480503, 39.847515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628254, 32.744343, 39.869534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105476, 0.036933, 0.993736,
		0.653431, -0.750712, 0.097257,
		0.749601, 0.659596, 0.055049,
		40.853134, 32.942223, 39.886047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696270, 32.229393, 40.302521>,  <40.328415, 32.480503, 39.847515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696270, 32.229393, 40.302521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844299, 32.600903, 40.310806>,  <40.933117, 32.823807, 40.315777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844299, 32.600903, 40.310806>,  <40.696270, 32.229393, 40.302521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844299, 32.600903, 40.310806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162069, -0.086498, 0.982981,
		0.914756, -0.360420, -0.182536,
		0.370075, 0.928771, 0.020712,
		40.955322, 32.879536, 40.317020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287060, 32.170307, 40.716282>,  <40.696270, 32.229393, 40.302521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287060, 32.170307, 40.716282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194466, 32.559311, 40.706131>,  <41.138908, 32.792713, 40.700039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194466, 32.559311, 40.706131>,  <41.287060, 32.170307, 40.716282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194466, 32.559311, 40.706131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095828, 0.048757, 0.994203,
		0.968107, 0.227713, -0.104480,
		-0.231487, 0.972507, -0.025380,
		41.125019, 32.851063, 40.698517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634949, 32.373886, 41.219601>,  <41.287060, 32.170307, 40.716282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634949, 32.373886, 41.219601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391800, 32.688843, 41.178585>,  <41.245911, 32.877815, 41.153976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391800, 32.688843, 41.178585>,  <41.634949, 32.373886, 41.219601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391800, 32.688843, 41.178585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051512, 0.167973, 0.984445,
		0.792364, 0.593132, -0.142666,
		-0.607869, 0.787388, -0.102542,
		41.209438, 32.925060, 41.147823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828125, 32.797127, 41.766102>,  <41.634949, 32.373886, 41.219601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828125, 32.797127, 41.766102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468010, 32.921673, 41.644424>,  <41.251942, 32.996399, 41.571419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468010, 32.921673, 41.644424>,  <41.828125, 32.797127, 41.766102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468010, 32.921673, 41.644424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302972, 0.053547, 0.951494,
		0.312548, 0.948781, 0.046126,
		-0.900290, 0.311362, -0.304191,
		41.197922, 33.015083, 41.553165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640671, 33.483929, 42.087795>,  <41.828125, 32.797127, 41.766102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640671, 33.483929, 42.087795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295788, 33.306660, 41.989658>,  <41.088856, 33.200298, 41.930779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.295788, 33.306660, 41.989658>,  <41.640671, 33.483929, 42.087795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295788, 33.306660, 41.989658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358966, 0.192830, 0.913214,
		-0.357403, 0.875451, -0.325344,
		-0.862210, -0.443173, -0.245339,
		41.037125, 33.173706, 41.916058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097950, 33.936863, 42.377991>,  <41.640671, 33.483929, 42.087795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097950, 33.936863, 42.377991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907555, 33.588760, 42.327267>,  <40.793316, 33.379898, 42.296833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.907555, 33.588760, 42.327267>,  <41.097950, 33.936863, 42.377991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.907555, 33.588760, 42.327267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508166, 0.154474, 0.847292,
		-0.717775, 0.467746, -0.515764,
		-0.475990, -0.870259, -0.126815,
		40.764759, 33.327682, 42.289223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.506001, 34.081329, 42.691597>,  <41.097950, 33.936863, 42.377991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.506001, 34.081329, 42.691597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482166, 33.683205, 42.661110>,  <40.467865, 33.444332, 42.642818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482166, 33.683205, 42.661110>,  <40.506001, 34.081329, 42.691597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482166, 33.683205, 42.661110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575612, -0.028120, 0.817239,
		-0.815549, 0.092562, -0.571236,
		-0.059582, -0.995310, -0.076213,
		40.464291, 33.384613, 42.638245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823517, 33.948822, 42.767723>,  <40.506001, 34.081329, 42.691597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823517, 33.948822, 42.767723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010605, 33.605927, 42.853867>,  <40.122856, 33.400188, 42.905552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010605, 33.605927, 42.853867>,  <39.823517, 33.948822, 42.767723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.010605, 33.605927, 42.853867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512893, -0.064793, 0.856004,
		-0.719850, -0.510820, -0.469978,
		0.467715, -0.857242, 0.215355,
		40.150921, 33.348755, 42.918472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309078, 33.416687, 42.978836>,  <39.823517, 33.948822, 42.767723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309078, 33.416687, 42.978836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663979, 33.315865, 43.133366>,  <39.876919, 33.255371, 43.226082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663979, 33.315865, 43.133366>,  <39.309078, 33.416687, 42.978836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663979, 33.315865, 43.133366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442474, -0.228351, 0.867221,
		-0.130368, -0.940386, -0.314132,
		0.887255, -0.252053, 0.386326,
		39.930157, 33.240250, 43.249264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154770, 32.851246, 43.354465>,  <39.309078, 33.416687, 42.978836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154770, 32.851246, 43.354465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488155, 32.988789, 43.527489>,  <39.688187, 33.071316, 43.631302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488155, 32.988789, 43.527489>,  <39.154770, 32.851246, 43.354465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488155, 32.988789, 43.527489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373958, -0.225318, 0.899659,
		0.406819, -0.911588, -0.059204,
		0.833459, 0.343858, 0.432559,
		39.738194, 33.091946, 43.657257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926125, 32.169476, 43.258121>,  <39.154770, 32.851246, 43.354465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926125, 32.169476, 43.258121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547924, 32.049374, 43.207706>,  <38.321003, 31.977314, 43.177456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547924, 32.049374, 43.207706>,  <38.926125, 32.169476, 43.258121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547924, 32.049374, 43.207706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081931, 0.155257, -0.984471,
		0.315156, -0.941140, -0.122195,
		-0.945496, -0.300251, -0.126039,
		38.264275, 31.959299, 43.169895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984760, 31.736784, 42.682533>,  <38.926125, 32.169476, 43.258121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984760, 31.736784, 42.682533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587696, 31.785152, 42.682396>,  <38.349457, 31.814175, 42.682312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587696, 31.785152, 42.682396>,  <38.984760, 31.736784, 42.682533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587696, 31.785152, 42.682396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034783, 0.282814, -0.958544,
		-0.115814, -0.951522, -0.284945,
		-0.992662, 0.120924, -0.000343,
		38.289898, 31.821430, 42.682293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670300, 31.320137, 42.167648>,  <38.984760, 31.736784, 42.682533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670300, 31.320137, 42.167648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428143, 31.630735, 42.237564>,  <38.282848, 31.817095, 42.279514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428143, 31.630735, 42.237564>,  <38.670300, 31.320137, 42.167648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428143, 31.630735, 42.237564> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057251, 0.176549, -0.982625,
		-0.793863, -0.604883, -0.062426,
		-0.605395, 0.776496, 0.174786,
		38.246525, 31.863684, 42.290001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224510, 31.300303, 41.559044>,  <38.670300, 31.320137, 42.167648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224510, 31.300303, 41.559044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132545, 31.650036, 41.730007>,  <38.077366, 31.859877, 41.832584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132545, 31.650036, 41.730007>,  <38.224510, 31.300303, 41.559044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132545, 31.650036, 41.730007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222488, 0.380325, -0.897693,
		-0.947439, -0.301484, 0.107087,
		-0.229912, 0.874334, 0.427411,
		38.063572, 31.912336, 41.858231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586025, 31.434422, 41.451366>,  <38.224510, 31.300303, 41.559044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586025, 31.434422, 41.451366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735218, 31.801844, 41.503727>,  <37.824734, 32.022297, 41.535141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735218, 31.801844, 41.503727>,  <37.586025, 31.434422, 41.451366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735218, 31.801844, 41.503727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221260, 0.225065, -0.948889,
		-0.901069, 0.324959, 0.287186,
		0.372985, 0.918557, 0.130899,
		37.847115, 32.077412, 41.542995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991051, 31.920256, 41.344563>,  <37.586025, 31.434422, 41.451366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991051, 31.920256, 41.344563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317276, 32.151112, 41.327751>,  <37.513012, 32.289623, 41.317665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317276, 32.151112, 41.327751>,  <36.991051, 31.920256, 41.344563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317276, 32.151112, 41.327751> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249277, 0.284858, -0.925590,
		-0.522221, 0.765355, 0.376187,
		0.815565, 0.577138, -0.042027,
		37.561947, 32.324253, 41.315144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865719, 32.636505, 41.168697>,  <36.991051, 31.920256, 41.344563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865719, 32.636505, 41.168697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248325, 32.618027, 41.053501>,  <37.477890, 32.606937, 40.984383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248325, 32.618027, 41.053501>,  <36.865719, 32.636505, 41.168697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248325, 32.618027, 41.053501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193518, 0.638230, -0.745126,
		0.218230, 0.768458, 0.601538,
		0.956518, -0.046201, -0.287991,
		37.535282, 32.604168, 40.967102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031208, 33.263027, 40.860512>,  <36.865719, 32.636505, 41.168697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031208, 33.263027, 40.860512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297894, 32.994904, 40.730167>,  <37.457905, 32.834030, 40.651958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297894, 32.994904, 40.730167>,  <37.031208, 33.263027, 40.860512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297894, 32.994904, 40.730167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218638, 0.242084, -0.945301,
		0.712528, 0.701487, 0.014845,
		0.666709, -0.670307, -0.325863,
		37.497906, 32.793812, 40.632408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316639, 33.633682, 40.268845>,  <37.031208, 33.263027, 40.860512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316639, 33.633682, 40.268845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400063, 33.245522, 40.220154>,  <37.450115, 33.012623, 40.190937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400063, 33.245522, 40.220154>,  <37.316639, 33.633682, 40.268845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400063, 33.245522, 40.220154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209381, 0.077278, -0.974776,
		0.955334, 0.228787, -0.187067,
		0.208559, -0.970404, -0.121729,
		37.462631, 32.954399, 40.183636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854500, 33.619747, 39.818867>,  <37.316639, 33.633682, 40.268845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854500, 33.619747, 39.818867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693966, 33.254253, 39.793480>,  <37.597645, 33.034958, 39.778248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693966, 33.254253, 39.793480>,  <37.854500, 33.619747, 39.818867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693966, 33.254253, 39.793480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193123, 0.152148, -0.969306,
		0.895341, -0.376758, -0.237525,
		-0.401332, -0.913731, -0.063464,
		37.573566, 32.980133, 39.774441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068569, 33.348236, 39.203457>,  <37.854500, 33.619747, 39.818867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068569, 33.348236, 39.203457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754642, 33.121353, 39.303322>,  <37.566284, 32.985222, 39.363243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754642, 33.121353, 39.303322>,  <38.068569, 33.348236, 39.203457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754642, 33.121353, 39.303322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277751, -0.038199, -0.959893,
		0.553998, -0.822687, -0.127563,
		-0.784819, -0.567210, 0.249664,
		37.519196, 32.951191, 39.378220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200184, 32.721905, 38.898384>,  <38.068569, 33.348236, 39.203457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200184, 32.721905, 38.898384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808365, 32.794968, 38.932140>,  <37.573273, 32.838806, 38.952393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808365, 32.794968, 38.932140>,  <38.200184, 32.721905, 38.898384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808365, 32.794968, 38.932140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085709, 0.000662, -0.996320,
		-0.182043, -0.983176, 0.015007,
		-0.979548, 0.182659, 0.084387,
		37.514500, 32.849766, 38.957458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.726852, 30.430386, 46.686436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383121, 30.624456, 46.621750>,  <37.176884, 30.740900, 46.582939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.383121, 30.624456, 46.621750>,  <37.726852, 30.430386, 46.686436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383121, 30.624456, 46.621750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271171, 0.164179, -0.948426,
		-0.433607, -0.858863, -0.272651,
		-0.859331, 0.485180, -0.161710,
		37.125320, 30.770010, 46.573238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389164, 30.001049, 46.187946>,  <37.726852, 30.430386, 46.686436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389164, 30.001049, 46.187946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293777, 30.388857, 46.165451>,  <37.236546, 30.621542, 46.151955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293777, 30.388857, 46.165451>,  <37.389164, 30.001049, 46.187946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293777, 30.388857, 46.165451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322046, 0.024309, -0.946412,
		-0.916199, -0.243799, -0.318027,
		-0.238466, 0.969521, -0.056242,
		37.222237, 30.679712, 46.148579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209835, 30.085039, 45.448616>,  <37.389164, 30.001049, 46.187946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209835, 30.085039, 45.448616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256210, 30.462729, 45.571907>,  <37.284035, 30.689342, 45.645882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.256210, 30.462729, 45.571907>,  <37.209835, 30.085039, 45.448616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256210, 30.462729, 45.571907> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110990, 0.296062, -0.948698,
		-0.987036, 0.144199, -0.070475,
		0.115936, 0.944221, 0.308229,
		37.290993, 30.745995, 45.664375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842945, 30.444082, 44.956875>,  <37.209835, 30.085039, 45.448616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842945, 30.444082, 44.956875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048386, 30.738880, 45.132622>,  <37.171650, 30.915760, 45.238071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.048386, 30.738880, 45.132622>,  <36.842945, 30.444082, 44.956875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048386, 30.738880, 45.132622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083762, 0.466558, -0.880515,
		-0.853929, 0.489039, 0.177894,
		0.513604, 0.736997, 0.439370,
		37.202465, 30.959980, 45.264431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545124, 31.118170, 44.751011>,  <36.842945, 30.444082, 44.956875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545124, 31.118170, 44.751011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.922729, 31.192711, 44.859901>,  <37.149292, 31.237434, 44.925236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.922729, 31.192711, 44.859901>,  <36.545124, 31.118170, 44.751011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922729, 31.192711, 44.859901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172264, 0.425303, -0.888506,
		-0.281353, 0.885658, 0.369392,
		0.944016, 0.186351, 0.272228,
		37.205933, 31.248615, 44.941570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657967, 31.658644, 44.383736>,  <36.545124, 31.118170, 44.751011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657967, 31.658644, 44.383736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.035606, 31.564518, 44.476082>,  <37.262192, 31.508041, 44.531490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.035606, 31.564518, 44.476082>,  <36.657967, 31.658644, 44.383736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035606, 31.564518, 44.476082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305285, 0.359850, -0.881651,
		0.124390, 0.902848, 0.411573,
		0.944102, -0.235316, 0.230864,
		37.318836, 31.493923, 44.545341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055058, 32.311054, 44.271324>,  <36.657967, 31.658644, 44.383736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055058, 32.311054, 44.271324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306618, 32.000561, 44.253677>,  <37.457554, 31.814264, 44.243092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.306618, 32.000561, 44.253677>,  <37.055058, 32.311054, 44.271324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306618, 32.000561, 44.253677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431295, 0.395512, -0.810897,
		0.646895, 0.490945, 0.583524,
		0.628897, -0.776236, -0.044112,
		37.495285, 31.767691, 44.240444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794971, 32.664200, 44.059967>,  <37.055058, 32.311054, 44.271324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794971, 32.664200, 44.059967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.812649, 32.274914, 43.969730>,  <37.823254, 32.041340, 43.915588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.812649, 32.274914, 43.969730>,  <37.794971, 32.664200, 44.059967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812649, 32.274914, 43.969730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268073, 0.229080, -0.935767,
		0.962385, -0.019124, 0.271017,
		0.044189, -0.973220, -0.225589,
		37.825905, 31.982948, 43.902054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.442120, 32.516556, 43.761425>,  <37.794971, 32.664200, 44.059967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.442120, 32.516556, 43.761425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.245892, 32.179081, 43.674210>,  <38.128155, 31.976597, 43.621880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.245892, 32.179081, 43.674210>,  <38.442120, 32.516556, 43.761425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245892, 32.179081, 43.674210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278156, 0.085517, -0.956722,
		0.825817, -0.529985, 0.192724,
		-0.490567, -0.843684, -0.218040,
		38.098721, 31.925976, 43.608799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153385, 32.441975, 43.983574>,  <38.442120, 32.516556, 43.761425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153385, 32.441975, 43.983574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455479, 32.696178, 44.047764>,  <39.636734, 32.848701, 44.086277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455479, 32.696178, 44.047764>,  <39.153385, 32.441975, 43.983574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455479, 32.696178, 44.047764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138494, -0.084586, 0.986745,
		0.640655, -0.767449, 0.024131,
		0.755235, 0.635505, 0.160477,
		39.682049, 32.886829, 44.095905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412209, 32.270706, 44.589676>,  <39.153385, 32.441975, 43.983574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412209, 32.270706, 44.589676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.536880, 32.648148, 44.544998>,  <39.611683, 32.874611, 44.518192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.536880, 32.648148, 44.544998>,  <39.412209, 32.270706, 44.589676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536880, 32.648148, 44.544998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032628, 0.128107, 0.991223,
		0.949628, -0.305296, 0.070716,
		0.311676, 0.943601, -0.111692,
		39.630383, 32.931229, 44.511490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970654, 32.350723, 45.117062>,  <39.412209, 32.270706, 44.589676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970654, 32.350723, 45.117062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.866142, 32.724457, 45.020111>,  <39.803436, 32.948696, 44.961941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.866142, 32.724457, 45.020111>,  <39.970654, 32.350723, 45.117062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866142, 32.724457, 45.020111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060559, 0.234735, 0.970171,
		0.963362, 0.268163, -0.004749,
		-0.261279, 0.934338, -0.242375,
		39.787758, 33.004757, 44.947399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481144, 32.774998, 45.462906>,  <39.970654, 32.350723, 45.117062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481144, 32.774998, 45.462906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.144104, 32.972740, 45.377453>,  <39.941879, 33.091385, 45.326183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.144104, 32.972740, 45.377453>,  <40.481144, 32.774998, 45.462906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144104, 32.972740, 45.377453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147590, 0.169523, 0.974412,
		0.517926, 0.852567, -0.069877,
		-0.842597, 0.494360, -0.213630,
		39.891323, 33.121048, 45.313362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615688, 33.552357, 45.676437>,  <40.481144, 32.774998, 45.462906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615688, 33.552357, 45.676437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.223476, 33.474373, 45.685848>,  <39.988148, 33.427582, 45.691494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.223476, 33.474373, 45.685848>,  <40.615688, 33.552357, 45.676437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223476, 33.474373, 45.685848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063777, 0.429463, 0.900830,
		-0.185729, 0.881790, -0.433535,
		-0.980529, -0.194959, 0.023526,
		39.929317, 33.415886, 45.692905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159966, 34.257740, 45.666832>,  <40.615688, 33.552357, 45.676437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159966, 34.257740, 45.666832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.955917, 33.965126, 45.847778>,  <39.833488, 33.789558, 45.956345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.955917, 33.965126, 45.847778>,  <40.159966, 34.257740, 45.666832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955917, 33.965126, 45.847778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017123, 0.534476, 0.845010,
		-0.859933, 0.423310, -0.285172,
		-0.510119, -0.731535, 0.452365,
		39.802883, 33.745667, 45.983486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746037, 34.590645, 46.153946>,  <40.159966, 34.257740, 45.666832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746037, 34.590645, 46.153946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.724525, 34.208954, 46.271626>,  <39.711617, 33.979939, 46.342232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.724525, 34.208954, 46.271626>,  <39.746037, 34.590645, 46.153946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724525, 34.208954, 46.271626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129609, 0.298800, 0.945473,
		-0.990106, 0.012719, -0.139747,
		-0.053781, -0.954231, 0.294195,
		39.708389, 33.922684, 46.359882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213188, 34.557930, 46.521008>,  <39.746037, 34.590645, 46.153946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213188, 34.557930, 46.521008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.418171, 34.232899, 46.632072>,  <39.541161, 34.037880, 46.698711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.418171, 34.232899, 46.632072>,  <39.213188, 34.557930, 46.521008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418171, 34.232899, 46.632072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111137, 0.257870, 0.959767,
		-0.851490, -0.522700, 0.041840,
		0.512459, -0.812581, 0.277665,
		39.571907, 33.989124, 46.715370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765991, 34.383362, 46.932266>,  <39.213188, 34.557930, 46.521008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765991, 34.383362, 46.932266> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065517, 34.145153, 47.048626>,  <39.245232, 34.002228, 47.118443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.065517, 34.145153, 47.048626>,  <38.765991, 34.383362, 46.932266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065517, 34.145153, 47.048626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309921, 0.073350, 0.947929,
		-0.585853, -0.799981, -0.129641,
		0.748816, -0.595525, 0.290903,
		39.290161, 33.966496, 47.135899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488285, 34.031254, 47.422081>,  <38.765991, 34.383362, 46.932266>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488285, 34.031254, 47.422081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.882416, 33.980042, 47.467224>,  <39.118896, 33.949314, 47.494308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.882416, 33.980042, 47.467224>,  <38.488285, 34.031254, 47.422081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882416, 33.980042, 47.467224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136255, -0.191915, 0.971907,
		-0.102769, -0.973026, -0.206544,
		0.985329, -0.128024, 0.112857,
		39.178013, 33.941635, 47.501080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584579, 33.367619, 47.761177>,  <38.488285, 34.031254, 47.422081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584579, 33.367619, 47.761177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.933273, 33.543526, 47.847603>,  <39.142490, 33.649071, 47.899460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.933273, 33.543526, 47.847603>,  <38.584579, 33.367619, 47.761177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933273, 33.543526, 47.847603> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085249, -0.298114, 0.950716,
		0.482510, -0.847189, -0.222385,
		0.871732, 0.439772, 0.216065,
		39.194794, 33.675457, 47.912422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956589, 32.858131, 48.120716>,  <38.584579, 33.367619, 47.761177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956589, 32.858131, 48.120716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110252, 33.222431, 48.181309>,  <39.202450, 33.441013, 48.217667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.110252, 33.222431, 48.181309>,  <38.956589, 32.858131, 48.120716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110252, 33.222431, 48.181309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059038, -0.187971, 0.980399,
		0.921376, -0.367688, -0.125980,
		0.384162, 0.910754, 0.151485,
		39.225502, 33.495659, 48.226753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691120, 32.848286, 48.548843>,  <38.956589, 32.858131, 48.120716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691120, 32.848286, 48.548843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.495899, 33.192829, 48.605225>,  <39.378765, 33.399555, 48.639053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.495899, 33.192829, 48.605225>,  <39.691120, 32.848286, 48.548843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495899, 33.192829, 48.605225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104836, -0.102470, 0.989196,
		0.866494, 0.497559, -0.040290,
		-0.488055, 0.861357, 0.140952,
		39.349483, 33.451237, 48.647511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138153, 33.170380, 48.957741>,  <39.691120, 32.848286, 48.548843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138153, 33.170380, 48.957741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.795414, 33.374222, 48.989017>,  <39.589771, 33.496529, 49.007786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.795414, 33.374222, 48.989017>,  <40.138153, 33.170380, 48.957741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795414, 33.374222, 48.989017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007339, -0.139598, 0.990181,
		0.515516, 0.849009, 0.115874,
		-0.856848, 0.509604, 0.078196,
		39.538361, 33.527103, 49.012478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.811953, 36.522961, 48.658752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.038845, 36.208576, 48.560356>,  <31.174980, 36.019947, 48.501320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.038845, 36.208576, 48.560356>,  <30.811953, 36.522961, 48.658752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038845, 36.208576, 48.560356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323783, 0.487466, -0.810889,
		0.757239, 0.380316, 0.530988,
		0.567233, -0.785962, -0.245989,
		31.209015, 35.972786, 48.486561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426081, 36.729187, 48.464199>,  <30.811953, 36.522961, 48.658752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426081, 36.729187, 48.464199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428909, 36.369640, 48.288937>,  <31.430607, 36.153912, 48.183777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.428909, 36.369640, 48.288937>,  <31.426081, 36.729187, 48.464199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428909, 36.369640, 48.288937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538151, 0.372730, -0.755954,
		0.842819, -0.230450, 0.486363,
		0.007072, -0.898869, -0.438161,
		31.431030, 36.099979, 48.157490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133518, 36.670261, 48.214188>,  <31.426081, 36.729187, 48.464199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133518, 36.670261, 48.214188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.910765, 36.415756, 48.000626>,  <31.777113, 36.263054, 47.872490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.910765, 36.415756, 48.000626>,  <32.133518, 36.670261, 48.214188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910765, 36.415756, 48.000626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544234, 0.206066, -0.813232,
		0.627445, -0.743446, 0.231518,
		-0.556886, -0.636259, -0.533904,
		31.743698, 36.224880, 47.840454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568302, 36.343670, 47.777546>,  <32.133518, 36.670261, 48.214188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568302, 36.343670, 47.777546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.212605, 36.315891, 47.596691>,  <31.999186, 36.299225, 47.488178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.212605, 36.315891, 47.596691>,  <32.568302, 36.343670, 47.777546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212605, 36.315891, 47.596691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457048, -0.094264, -0.884433,
		0.018800, -0.993122, 0.115563,
		-0.889243, -0.069445, -0.452132,
		31.945831, 36.295059, 47.461052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724396, 35.903347, 47.186417>,  <32.568302, 36.343670, 47.777546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724396, 35.903347, 47.186417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.347454, 36.011288, 47.107277>,  <32.121288, 36.076050, 47.059792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.347454, 36.011288, 47.107277>,  <32.724396, 35.903347, 47.186417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347454, 36.011288, 47.107277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199219, -0.022601, -0.979694,
		-0.268841, -0.962637, -0.032461,
		-0.942357, 0.269849, -0.197852,
		32.064747, 36.092243, 47.047920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.597008, 35.470627, 46.619396>,  <32.724396, 35.903347, 47.186417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.597008, 35.470627, 46.619396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.345211, 35.781094, 46.633881>,  <32.194134, 35.967373, 46.642570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.345211, 35.781094, 46.633881>,  <32.597008, 35.470627, 46.619396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345211, 35.781094, 46.633881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166724, 0.180439, -0.969353,
		-0.758912, -0.604159, -0.242990,
		-0.629488, 0.776166, 0.036209,
		32.156364, 36.013943, 46.644745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018524, 35.385990, 46.082363>,  <32.597008, 35.470627, 46.619396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018524, 35.385990, 46.082363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087162, 35.771225, 46.165333>,  <32.128345, 36.002365, 46.215115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087162, 35.771225, 46.165333>,  <32.018524, 35.385990, 46.082363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087162, 35.771225, 46.165333> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162651, 0.235353, -0.958203,
		-0.971648, 0.130682, 0.197031,
		0.171592, 0.963084, 0.207425,
		32.138641, 36.060150, 46.227562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.462271, 35.703785, 45.671825>,  <32.018524, 35.385990, 46.082363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.462271, 35.703785, 45.671825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.746840, 35.968380, 45.766747>,  <31.917582, 36.127136, 45.823700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.746840, 35.968380, 45.766747>,  <31.462271, 35.703785, 45.671825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746840, 35.968380, 45.766747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124920, 0.451323, -0.883574,
		-0.691572, 0.598951, 0.403715,
		0.711423, 0.661487, 0.237302,
		31.960266, 36.166824, 45.837936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187141, 36.344280, 45.338917>,  <31.462271, 35.703785, 45.671825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187141, 36.344280, 45.338917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.570320, 36.439030, 45.403694>,  <31.800228, 36.495880, 45.442562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.570320, 36.439030, 45.403694>,  <31.187141, 36.344280, 45.338917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570320, 36.439030, 45.403694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035552, 0.658014, -0.752166,
		-0.284730, 0.714779, 0.638764,
		0.957948, 0.236874, 0.161944,
		31.857704, 36.510094, 45.452278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155857, 37.031387, 45.371513>,  <31.187141, 36.344280, 45.338917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155857, 37.031387, 45.371513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.527613, 36.922192, 45.272148>,  <31.750666, 36.856674, 45.212528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.527613, 36.922192, 45.272148>,  <31.155857, 37.031387, 45.371513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527613, 36.922192, 45.272148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047962, 0.578006, -0.814622,
		0.365967, 0.769017, 0.524100,
		0.929391, -0.272988, -0.248414,
		31.806431, 36.840294, 45.197624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555998, 37.595150, 45.315273>,  <31.155857, 37.031387, 45.371513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555998, 37.595150, 45.315273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.780079, 37.333488, 45.112000>,  <31.914528, 37.176491, 44.990036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.780079, 37.333488, 45.112000>,  <31.555998, 37.595150, 45.315273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780079, 37.333488, 45.112000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071601, 0.649431, -0.757042,
		0.825257, 0.387709, 0.410650,
		0.560200, -0.654157, -0.508187,
		31.948139, 37.137241, 44.959545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231979, 37.965656, 45.018490>,  <31.555998, 37.595150, 45.315273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231979, 37.965656, 45.018490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.157391, 37.635456, 44.805408>,  <32.112637, 37.437336, 44.677559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.157391, 37.635456, 44.805408>,  <32.231979, 37.965656, 45.018490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157391, 37.635456, 44.805408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332069, 0.457339, -0.824967,
		0.924639, -0.330730, 0.188842,
		-0.186476, -0.825505, -0.532699,
		32.101448, 37.387806, 44.645599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872066, 37.900124, 44.527229>,  <32.231979, 37.965656, 45.018490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872066, 37.900124, 44.527229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606651, 37.649403, 44.363853>,  <32.447403, 37.498970, 44.265827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.606651, 37.649403, 44.363853>,  <32.872066, 37.900124, 44.527229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606651, 37.649403, 44.363853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159507, 0.414866, -0.895792,
		0.730938, -0.659545, -0.175301,
		-0.663542, -0.626806, -0.408444,
		32.407589, 37.461361, 44.241322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267738, 37.675350, 43.904350>,  <32.872066, 37.900124, 44.527229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267738, 37.675350, 43.904350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879032, 37.600319, 43.847088>,  <32.645809, 37.555298, 43.812729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879032, 37.600319, 43.847088>,  <33.267738, 37.675350, 43.904350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879032, 37.600319, 43.847088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090939, 0.262110, -0.960744,
		0.217743, -0.946631, -0.237649,
		-0.971760, -0.187584, -0.143158,
		32.587505, 37.544044, 43.804142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931183, 37.233406, 43.811329>,  <33.267738, 37.675350, 43.904350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931183, 37.233406, 43.811329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169147, 37.554920, 43.809715>,  <34.311928, 37.747829, 43.808746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.169147, 37.554920, 43.809715>,  <33.931183, 37.233406, 43.811329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169147, 37.554920, 43.809715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084342, 0.067412, 0.994154,
		0.799355, -0.591092, 0.107896,
		0.594910, 0.803782, -0.004032,
		34.347622, 37.796055, 43.808506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463272, 37.106968, 44.249729>,  <33.931183, 37.233406, 43.811329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.463272, 37.106968, 44.249729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452076, 37.505024, 44.211964>,  <34.445358, 37.743858, 44.189304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.452076, 37.505024, 44.211964>,  <34.463272, 37.106968, 44.249729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452076, 37.505024, 44.211964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222381, 0.098283, 0.969993,
		0.974558, 0.006156, -0.224051,
		-0.027992, 0.995139, -0.094414,
		34.443680, 37.803566, 44.183640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985725, 37.233784, 44.835087>,  <34.463272, 37.106968, 44.249729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985725, 37.233784, 44.835087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805347, 37.586246, 44.778221>,  <34.697121, 37.797726, 44.744102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.805347, 37.586246, 44.778221>,  <34.985725, 37.233784, 44.835087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805347, 37.586246, 44.778221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132015, 0.223375, 0.965751,
		0.882736, 0.416730, -0.217055,
		-0.450943, 0.881158, -0.142166,
		34.670063, 37.850594, 44.735573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451920, 37.753216, 45.068100>,  <34.985725, 37.233784, 44.835087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451920, 37.753216, 45.068100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.076599, 37.890568, 45.084492>,  <34.851406, 37.972980, 45.094326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.076599, 37.890568, 45.084492>,  <35.451920, 37.753216, 45.068100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076599, 37.890568, 45.084492> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058931, 0.042011, 0.997378,
		0.340759, 0.938256, -0.059655,
		-0.938302, 0.343381, 0.040977,
		34.795109, 37.993584, 45.096786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424698, 38.224155, 45.563976>,  <35.451920, 37.753216, 45.068100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424698, 38.224155, 45.563976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033714, 38.145508, 45.533234>,  <34.799122, 38.098320, 45.514786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.033714, 38.145508, 45.533234>,  <35.424698, 38.224155, 45.563976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033714, 38.145508, 45.533234> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086810, 0.042490, 0.995318,
		-0.192434, 0.979559, -0.058601,
		-0.977463, -0.196620, -0.076859,
		34.740475, 38.086521, 45.510178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168125, 38.562851, 46.185806>,  <35.424698, 38.224155, 45.563976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168125, 38.562851, 46.185806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.853992, 38.337502, 46.083145>,  <34.665512, 38.202293, 46.021549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.853992, 38.337502, 46.083145>,  <35.168125, 38.562851, 46.185806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853992, 38.337502, 46.083145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043913, -0.362836, 0.930818,
		-0.617520, 0.742268, 0.260206,
		-0.785328, -0.563372, -0.256653,
		34.618393, 38.168491, 46.006149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615746, 38.734745, 46.627842>,  <35.168125, 38.562851, 46.185806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615746, 38.734745, 46.627842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.521137, 38.371956, 46.488441>,  <34.464371, 38.154282, 46.404800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.521137, 38.371956, 46.488441>,  <34.615746, 38.734745, 46.627842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521137, 38.371956, 46.488441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061200, -0.344057, 0.936952,
		-0.969697, 0.242937, 0.025870,
		-0.236521, -0.906976, -0.348499,
		34.450180, 38.099861, 46.383892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942310, 38.542515, 46.908543>,  <34.615746, 38.734745, 46.627842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942310, 38.542515, 46.908543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139095, 38.207432, 46.813698>,  <34.257164, 38.006382, 46.756790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139095, 38.207432, 46.813698>,  <33.942310, 38.542515, 46.908543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139095, 38.207432, 46.813698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008284, -0.267833, 0.963430,
		-0.870579, -0.475932, -0.124823,
		0.491958, -0.837708, -0.237112,
		34.286682, 37.956120, 46.742565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605919, 38.029984, 47.219055>,  <33.942310, 38.542515, 46.908543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605919, 38.029984, 47.219055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.955448, 37.846893, 47.153419>,  <34.165165, 37.737038, 47.114037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.955448, 37.846893, 47.153419>,  <33.605919, 38.029984, 47.219055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955448, 37.846893, 47.153419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113628, -0.520342, 0.846364,
		-0.472783, -0.720926, -0.506696,
		0.873822, -0.457722, -0.164092,
		34.217594, 37.709576, 47.104191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488358, 37.397091, 47.354778>,  <33.605919, 38.029984, 47.219055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488358, 37.397091, 47.354778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887516, 37.419048, 47.368526>,  <34.127010, 37.432224, 47.376778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.887516, 37.419048, 47.368526>,  <33.488358, 37.397091, 47.354778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887516, 37.419048, 47.368526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002357, -0.561137, 0.827719,
		0.064729, -0.825900, -0.560088,
		0.997900, 0.054898, 0.034375,
		34.186886, 37.435516, 47.378838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772739, 36.716080, 47.448990>,  <33.488358, 37.397091, 47.354778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772739, 36.716080, 47.448990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.039032, 36.978912, 47.590431>,  <34.198807, 37.136612, 47.675297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.039032, 36.978912, 47.590431>,  <33.772739, 36.716080, 47.448990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039032, 36.978912, 47.590431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089239, -0.540594, 0.836537,
		0.740833, -0.525356, -0.418530,
		0.665735, 0.657084, 0.353607,
		34.238754, 37.176037, 47.696514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213039, 36.199917, 47.777637>,  <33.772739, 36.716080, 47.448990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213039, 36.199917, 47.777637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293987, 36.551311, 47.950756>,  <34.342556, 36.762146, 48.054626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293987, 36.551311, 47.950756>,  <34.213039, 36.199917, 47.777637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293987, 36.551311, 47.950756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009507, -0.443684, 0.896133,
		0.979264, -0.177232, -0.098138,
		0.202366, 0.878483, 0.432799,
		34.354698, 36.814857, 48.080597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758938, 36.100750, 48.229179>,  <34.213039, 36.199917, 47.777637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758938, 36.100750, 48.229179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.588390, 36.435123, 48.367413>,  <34.486061, 36.635746, 48.450352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.588390, 36.435123, 48.367413>,  <34.758938, 36.100750, 48.229179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588390, 36.435123, 48.367413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040343, -0.364102, 0.930485,
		0.903648, 0.410673, 0.121519,
		-0.426371, 0.835929, 0.345588,
		34.460480, 36.685902, 48.471088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979630, 36.248123, 48.812737>,  <34.758938, 36.100750, 48.229179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979630, 36.248123, 48.812737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647743, 36.471306, 48.819237>,  <34.448612, 36.605213, 48.823135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647743, 36.471306, 48.819237>,  <34.979630, 36.248123, 48.812737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647743, 36.471306, 48.819237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207306, -0.335044, 0.919114,
		0.518268, 0.759232, 0.393657,
		-0.829712, 0.557955, 0.016249,
		34.398830, 36.638691, 48.824112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700611, 36.218548, 49.095173>,  <34.979630, 36.248123, 48.812737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700611, 36.218548, 49.095173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.910648, 35.897667, 49.208839>,  <36.036671, 35.705139, 49.277039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.910648, 35.897667, 49.208839>,  <35.700611, 36.218548, 49.095173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910648, 35.897667, 49.208839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156511, -0.237187, -0.958773,
		0.836528, 0.547924, 0.001007,
		0.525096, -0.802198, 0.284170,
		36.068176, 35.657009, 49.294090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352913, 36.263233, 48.871052>,  <35.700611, 36.218548, 49.095173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352913, 36.263233, 48.871052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.332031, 35.867264, 48.923698>,  <36.319500, 35.629681, 48.955288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.332031, 35.867264, 48.923698>,  <36.352913, 36.263233, 48.871052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332031, 35.867264, 48.923698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360848, -0.141594, -0.921813,
		0.931162, -0.000630, 0.364604,
		-0.052206, -0.989924, 0.131620,
		36.316368, 35.570286, 48.963184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984001, 36.078785, 48.716072>,  <36.352913, 36.263233, 48.871052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984001, 36.078785, 48.716072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.754284, 35.753822, 48.675690>,  <36.616455, 35.558846, 48.651459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.754284, 35.753822, 48.675690>,  <36.984001, 36.078785, 48.716072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754284, 35.753822, 48.675690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263161, -0.066423, -0.962463,
		0.775202, -0.579300, 0.251939,
		-0.574289, -0.812404, -0.100957,
		36.581997, 35.510101, 48.645401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398006, 35.560856, 48.553497>,  <36.984001, 36.078785, 48.716072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398006, 35.560856, 48.553497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042675, 35.455639, 48.402939>,  <36.829475, 35.392509, 48.312603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.042675, 35.455639, 48.402939>,  <37.398006, 35.560856, 48.553497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042675, 35.455639, 48.402939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405613, -0.065204, -0.911716,
		0.215282, -0.962577, 0.164618,
		-0.888331, -0.263048, -0.376397,
		36.776176, 35.376724, 48.290020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499233, 35.024895, 48.047749>,  <37.398006, 35.560856, 48.553497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499233, 35.024895, 48.047749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.137894, 35.144932, 47.925175>,  <36.921089, 35.216953, 47.851631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.137894, 35.144932, 47.925175>,  <37.499233, 35.024895, 48.047749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137894, 35.144932, 47.925175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257283, -0.192502, -0.946968,
		-0.343172, -0.934283, 0.096687,
		-0.903349, 0.300097, -0.306437,
		36.866890, 35.234959, 47.833244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411064, 34.607361, 47.446434>,  <37.499233, 35.024895, 48.047749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411064, 34.607361, 47.446434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.124031, 34.885948, 47.445263>,  <36.951813, 35.053101, 47.444561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.124031, 34.885948, 47.445263>,  <37.411064, 34.607361, 47.446434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124031, 34.885948, 47.445263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020854, 0.017287, -0.999633,
		-0.696162, -0.717380, -0.026929,
		-0.717582, 0.696468, -0.002925,
		36.908756, 35.094887, 47.444386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844101, 34.397343, 47.041969>,  <37.411064, 34.607361, 47.446434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844101, 34.397343, 47.041969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.815235, 34.796299, 47.042351>,  <36.797916, 35.035675, 47.042580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.815235, 34.796299, 47.042351>,  <36.844101, 34.397343, 47.041969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815235, 34.796299, 47.042351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124380, 0.009948, -0.992185,
		-0.989607, -0.071478, -0.124774,
		-0.072161, 0.997393, 0.000954,
		36.793587, 35.095516, 47.042637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537350, 34.463882, 46.360073>,  <36.844101, 34.397343, 47.041969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537350, 34.463882, 46.360073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.628468, 34.837406, 46.470421>,  <36.683140, 35.061520, 46.536629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.628468, 34.837406, 46.470421>,  <36.537350, 34.463882, 46.360073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628468, 34.837406, 46.470421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164549, 0.316166, -0.934325,
		-0.959704, 0.167441, 0.225680,
		0.227797, 0.933811, 0.275873,
		36.696808, 35.117550, 46.553185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.992840, 34.858536, 46.145592>,  <36.537350, 34.463882, 46.360073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.992840, 34.858536, 46.145592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321743, 35.084305, 46.174782>,  <36.519085, 35.219765, 46.192295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321743, 35.084305, 46.174782>,  <35.992840, 34.858536, 46.145592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321743, 35.084305, 46.174782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063743, 0.218745, -0.973698,
		-0.565539, 0.795976, 0.215842,
		0.822254, 0.564423, 0.072971,
		36.568420, 35.253632, 46.196674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844009, 35.541534, 45.790920>,  <35.992840, 34.858536, 46.145592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844009, 35.541534, 45.790920> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.240250, 35.490810, 45.811405>,  <36.477993, 35.460377, 45.823696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.240250, 35.490810, 45.811405>,  <35.844009, 35.541534, 45.790920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240250, 35.490810, 45.811405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075330, 0.193421, -0.978220,
		0.114142, 0.972886, 0.201157,
		0.990604, -0.126809, 0.051210,
		36.537430, 35.452766, 45.826767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101685, 36.105713, 45.361610>,  <35.844009, 35.541534, 45.790920>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101685, 36.105713, 45.361610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.401325, 35.843105, 45.397003>,  <36.581108, 35.685539, 45.418240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.401325, 35.843105, 45.397003>,  <36.101685, 36.105713, 45.361610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401325, 35.843105, 45.397003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258741, 0.166998, -0.951402,
		0.609835, 0.735592, 0.294967,
		0.749103, -0.656518, 0.088486,
		36.626057, 35.646149, 45.423550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626011, 36.471420, 45.046509>,  <36.101685, 36.105713, 45.361610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626011, 36.471420, 45.046509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.704407, 36.079304, 45.056454>,  <36.751446, 35.844032, 45.062420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.704407, 36.079304, 45.056454>,  <36.626011, 36.471420, 45.046509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704407, 36.079304, 45.056454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335190, 0.043142, -0.941163,
		0.921540, 0.192793, 0.337039,
		0.195990, -0.980291, 0.024865,
		36.763203, 35.785217, 45.063911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170078, 36.473263, 44.647690>,  <36.626011, 36.471420, 45.046509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170078, 36.473263, 44.647690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.036098, 36.096481, 44.638454>,  <36.955711, 35.870415, 44.632912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.036098, 36.096481, 44.638454>,  <37.170078, 36.473263, 44.647690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036098, 36.096481, 44.638454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354486, -0.103271, -0.929341,
		0.873009, -0.319472, 0.368500,
		-0.334954, -0.941951, -0.023092,
		36.935612, 35.813896, 44.631527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705597, 36.035583, 44.223049>,  <37.170078, 36.473263, 44.647690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705597, 36.035583, 44.223049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.396698, 35.782036, 44.240227>,  <37.211357, 35.629910, 44.250534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.396698, 35.782036, 44.240227>,  <37.705597, 36.035583, 44.223049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396698, 35.782036, 44.240227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188811, -0.293523, -0.937120,
		0.606614, -0.715583, 0.346354,
		-0.772250, -0.633866, 0.042946,
		37.165024, 35.591877, 44.253109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.358322, 30.185259, 35.044605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.258244, 29.992579, 35.380550>,  <32.198196, 29.876970, 35.582115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.258244, 29.992579, 35.380550>,  <32.358322, 30.185259, 35.044605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258244, 29.992579, 35.380550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917082, 0.396028, -0.046062,
		-0.310421, -0.781746, -0.540843,
		-0.250198, -0.481699, 0.839861,
		32.183186, 29.848068, 35.632507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703245, 29.984274, 34.983173>,  <32.358322, 30.185259, 35.044605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703245, 29.984274, 34.983173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.761055, 29.994642, 35.378838>,  <31.795740, 30.000862, 35.616238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.761055, 29.994642, 35.378838>,  <31.703245, 29.984274, 34.983173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761055, 29.994642, 35.378838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817626, 0.566164, 0.104626,
		-0.557316, -0.823885, 0.103017,
		0.144524, 0.025920, 0.989162,
		31.804413, 30.002419, 35.675587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139080, 29.705614, 35.340973>,  <31.703245, 29.984274, 34.983173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139080, 29.705614, 35.340973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315887, 29.962866, 35.591095>,  <31.421972, 30.117216, 35.741169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315887, 29.962866, 35.591095>,  <31.139080, 29.705614, 35.340973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315887, 29.962866, 35.591095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845991, 0.530631, 0.052261,
		-0.298195, -0.552103, 0.778628,
		0.442018, 0.643128, 0.625305,
		31.448492, 30.155804, 35.778687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703430, 29.856165, 35.877380>,  <31.139080, 29.705614, 35.340973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703430, 29.856165, 35.877380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.935745, 30.177691, 35.928867>,  <31.075134, 30.370605, 35.959759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.935745, 30.177691, 35.928867>,  <30.703430, 29.856165, 35.877380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935745, 30.177691, 35.928867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814043, 0.572643, 0.097024,
		0.004281, -0.161131, 0.986924,
		0.580789, 0.803814, 0.128716,
		31.109982, 30.418835, 35.967484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400410, 30.292118, 36.479099>,  <30.703430, 29.856165, 35.877380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400410, 30.292118, 36.479099> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.640913, 30.522505, 36.257557>,  <30.785215, 30.660736, 36.124634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.640913, 30.522505, 36.257557>,  <30.400410, 30.292118, 36.479099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640913, 30.522505, 36.257557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676481, 0.735815, 0.030812,
		0.425281, 0.356146, 0.832043,
		0.601257, 0.575966, -0.553854,
		30.821289, 30.695295, 36.091400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.319662, 30.970245, 36.764915>,  <30.400410, 30.292118, 36.479099>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.319662, 30.970245, 36.764915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489069, 31.069798, 36.416504>,  <30.590714, 31.129528, 36.207458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489069, 31.069798, 36.416504>,  <30.319662, 30.970245, 36.764915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489069, 31.069798, 36.416504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555551, 0.830838, -0.032728,
		0.715539, 0.497762, 0.490140,
		0.423518, 0.248879, -0.871029,
		30.616125, 31.144461, 36.155193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448446, 31.610744, 36.841194>,  <30.319662, 30.970245, 36.764915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448446, 31.610744, 36.841194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423326, 31.571827, 36.443886>,  <30.408255, 31.548475, 36.205502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.423326, 31.571827, 36.443886>,  <30.448446, 31.610744, 36.841194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423326, 31.571827, 36.443886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572371, 0.818812, -0.044017,
		0.817586, 0.565756, -0.107113,
		-0.062802, -0.097296, -0.993272,
		30.404486, 31.542639, 36.145905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593678, 32.253330, 36.471497>,  <30.448446, 31.610744, 36.841194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593678, 32.253330, 36.471497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.414877, 32.044441, 36.180988>,  <30.307596, 31.919107, 36.006683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.414877, 32.044441, 36.180988>,  <30.593678, 32.253330, 36.471497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414877, 32.044441, 36.180988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672850, 0.731295, -0.111715,
		0.589461, 0.438736, -0.678267,
		-0.447000, -0.522223, -0.726274,
		30.280777, 31.887774, 35.963104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485374, 32.757462, 35.950459>,  <30.593678, 32.253330, 36.471497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485374, 32.757462, 35.950459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226437, 32.460064, 35.883335>,  <30.071074, 32.281624, 35.843060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.226437, 32.460064, 35.883335>,  <30.485374, 32.757462, 35.950459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226437, 32.460064, 35.883335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683604, 0.663720, -0.303581,
		0.337089, -0.081807, -0.937912,
		-0.647346, -0.743494, -0.167810,
		30.032232, 32.237015, 35.832993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280296, 32.998741, 35.340565>,  <30.485374, 32.757462, 35.950459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280296, 32.998741, 35.340565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017345, 32.726044, 35.468990>,  <29.859573, 32.562428, 35.546047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017345, 32.726044, 35.468990>,  <30.280296, 32.998741, 35.340565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017345, 32.726044, 35.468990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743104, 0.657203, -0.126018,
		-0.125093, -0.321425, -0.938636,
		-0.657380, -0.681740, 0.321064,
		29.820131, 32.521523, 35.565308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832664, 32.937813, 34.740566>,  <30.280296, 32.998741, 35.340565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832664, 32.937813, 34.740566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.636393, 32.784248, 35.053448>,  <29.518629, 32.692108, 35.241177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.636393, 32.784248, 35.053448>,  <29.832664, 32.937813, 34.740566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636393, 32.784248, 35.053448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818544, 0.510829, -0.262754,
		-0.298699, -0.769197, -0.564902,
		-0.490678, -0.383913, 0.782206,
		29.489189, 32.669075, 35.288109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251657, 32.645977, 34.511311>,  <29.832664, 32.937813, 34.740566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251657, 32.645977, 34.511311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172054, 32.737701, 34.892426>,  <29.124292, 32.792736, 35.121094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172054, 32.737701, 34.892426>,  <29.251657, 32.645977, 34.511311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172054, 32.737701, 34.892426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869799, 0.406587, -0.279529,
		-0.451492, -0.884366, 0.118541,
		-0.199009, 0.229312, 0.952791,
		29.112352, 32.806496, 35.178265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604095, 32.552608, 34.564476>,  <29.251657, 32.645977, 34.511311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604095, 32.552608, 34.564476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.648895, 32.736000, 34.917122>,  <28.675776, 32.846035, 35.128712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.648895, 32.736000, 34.917122>,  <28.604095, 32.552608, 34.564476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648895, 32.736000, 34.917122> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952586, 0.302120, -0.036098,
		-0.282905, -0.835775, 0.470579,
		0.112001, 0.458479, 0.881619,
		28.682495, 32.873543, 35.181606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121571, 32.296818, 35.017292>,  <28.604095, 32.552608, 34.564476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121571, 32.296818, 35.017292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.221674, 32.659779, 35.152340>,  <28.281736, 32.877556, 35.233368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.221674, 32.659779, 35.152340>,  <28.121571, 32.296818, 35.017292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221674, 32.659779, 35.152340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958943, 0.184257, 0.215588,
		0.133416, -0.377715, 0.916260,
		0.250258, 0.907403, 0.337624,
		28.296751, 32.931999, 35.253628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.751663, 32.512440, 35.624546>,  <28.121571, 32.296818, 35.017292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.751663, 32.512440, 35.624546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.866911, 32.870674, 35.488956>,  <27.936060, 33.085617, 35.407600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.866911, 32.870674, 35.488956>,  <27.751663, 32.512440, 35.624546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.866911, 32.870674, 35.488956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915981, 0.360974, 0.175149,
		0.279223, 0.260031, 0.924348,
		0.288121, 0.895590, -0.338976,
		27.953348, 33.139351, 35.387264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385506, 33.020145, 36.128124>,  <27.751663, 32.512440, 35.624546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385506, 33.020145, 36.128124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.496607, 33.208981, 35.793465>,  <27.563267, 33.322281, 35.592667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.496607, 33.208981, 35.793465>,  <27.385506, 33.020145, 36.128124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.496607, 33.208981, 35.793465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874896, 0.484000, -0.017346,
		0.396751, 0.736802, 0.547459,
		0.277751, 0.472087, -0.836653,
		27.579931, 33.350605, 35.542469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191278, 33.688118, 36.215328>,  <27.385506, 33.020145, 36.128124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191278, 33.688118, 36.215328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246105, 33.664497, 35.819809>,  <27.279001, 33.650326, 35.582497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246105, 33.664497, 35.819809>,  <27.191278, 33.688118, 36.215328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246105, 33.664497, 35.819809> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859757, 0.488677, -0.148366,
		0.491965, 0.870464, 0.016209,
		0.137068, -0.059055, -0.988800,
		27.287226, 33.646782, 35.523170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011507, 34.359406, 35.969505>,  <27.191278, 33.688118, 36.215328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011507, 34.359406, 35.969505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.965317, 34.114109, 35.656940>,  <26.937603, 33.966930, 35.469402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.965317, 34.114109, 35.656940>,  <27.011507, 34.359406, 35.969505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965317, 34.114109, 35.656940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887024, 0.417713, -0.196733,
		0.447049, 0.670411, -0.592196,
		-0.115476, -0.613241, -0.781409,
		26.930674, 33.930138, 35.422516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174995, 34.687820, 35.219994>,  <27.011507, 34.359406, 35.969505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174995, 34.687820, 35.219994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.892479, 34.406940, 35.255932>,  <26.722969, 34.238415, 35.277493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.892479, 34.406940, 35.255932>,  <27.174995, 34.687820, 35.219994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.892479, 34.406940, 35.255932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705501, 0.687694, -0.171303,
		0.058504, -0.184375, -0.981113,
		-0.706290, -0.702198, 0.089844,
		26.680592, 34.196281, 35.282887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611797, 35.146618, 34.794285>,  <27.174995, 34.687820, 35.219994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611797, 35.146618, 34.794285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615568, 35.529427, 34.910229>,  <27.617830, 35.759113, 34.979794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.615568, 35.529427, 34.910229>,  <27.611797, 35.146618, 34.794285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.615568, 35.529427, 34.910229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849569, -0.145218, 0.507094,
		0.527393, -0.251038, 0.811687,
		0.009428, 0.957022, 0.289861,
		27.618397, 35.816532, 34.997189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060799, 35.613884, 35.298622>,  <27.611797, 35.146618, 34.794285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060799, 35.613884, 35.298622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.226610, 35.785435, 35.619678>,  <28.326097, 35.888363, 35.812313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.226610, 35.785435, 35.619678>,  <28.060799, 35.613884, 35.298622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226610, 35.785435, 35.619678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897381, -0.046059, -0.438845,
		-0.151239, 0.902190, -0.403955,
		0.414528, 0.428872, 0.802643,
		28.350969, 35.914097, 35.860470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.483496, 36.222599, 35.094929>,  <28.060799, 35.613884, 35.298622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.483496, 36.222599, 35.094929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.622942, 36.092247, 35.446442>,  <28.706610, 36.014034, 35.657349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.622942, 36.092247, 35.446442>,  <28.483496, 36.222599, 35.094929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622942, 36.092247, 35.446442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832714, -0.322643, -0.449988,
		0.430179, 0.888651, 0.158889,
		0.348618, -0.325885, 0.878786,
		28.727528, 35.994480, 35.710079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092276, 36.378677, 34.997429>,  <28.483496, 36.222599, 35.094929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092276, 36.378677, 34.997429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134882, 36.121811, 35.301083>,  <29.160446, 35.967693, 35.483276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.134882, 36.121811, 35.301083>,  <29.092276, 36.378677, 34.997429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134882, 36.121811, 35.301083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870521, -0.308695, -0.383276,
		0.480466, 0.701666, 0.526134,
		0.106517, -0.642162, 0.759133,
		29.166838, 35.929161, 35.528824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775545, 36.492920, 35.181446>,  <29.092276, 36.378677, 34.997429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775545, 36.492920, 35.181446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.659750, 36.157925, 35.366837>,  <29.590273, 35.956928, 35.478073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.659750, 36.157925, 35.366837>,  <29.775545, 36.492920, 35.181446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659750, 36.157925, 35.366837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863991, -0.437031, -0.250047,
		0.411966, 0.328057, 0.850096,
		-0.289488, -0.837486, 0.463480,
		29.572903, 35.906677, 35.505882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411537, 36.230995, 35.539112>,  <29.775545, 36.492920, 35.181446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411537, 36.230995, 35.539112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.160040, 35.922768, 35.497353>,  <30.009142, 35.737831, 35.472298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.160040, 35.922768, 35.497353>,  <30.411537, 36.230995, 35.539112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160040, 35.922768, 35.497353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766871, -0.592208, -0.247385,
		0.128801, -0.235604, 0.963276,
		-0.628744, -0.770572, -0.104401,
		29.971416, 35.691597, 35.466034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.754011, 35.623096, 35.795521>,  <30.411537, 36.230995, 35.539112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.754011, 35.623096, 35.795521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.474230, 35.463734, 35.558189>,  <30.306362, 35.368118, 35.415791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.474230, 35.463734, 35.558189>,  <30.754011, 35.623096, 35.795521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474230, 35.463734, 35.558189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673308, -0.645712, -0.360158,
		-0.239633, -0.651407, 0.719892,
		-0.699452, -0.398403, -0.593331,
		30.264395, 35.344212, 35.380188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766064, 34.928261, 35.900715>,  <30.754011, 35.623096, 35.795521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766064, 34.928261, 35.900715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.605364, 34.992764, 35.540138>,  <30.508944, 35.031464, 35.323792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.605364, 34.992764, 35.540138>,  <30.766064, 34.928261, 35.900715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605364, 34.992764, 35.540138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625555, -0.670581, -0.398751,
		-0.668783, -0.724101, 0.168545,
		-0.401759, 0.161244, -0.901438,
		30.484838, 35.041138, 35.269707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867891, 34.347862, 35.680328>,  <30.766064, 34.928261, 35.900715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867891, 34.347862, 35.680328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.788685, 34.560844, 35.351143>,  <30.741161, 34.688633, 35.153629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.788685, 34.560844, 35.351143>,  <30.867891, 34.347862, 35.680328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788685, 34.560844, 35.351143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590078, -0.605659, -0.533841,
		-0.782686, -0.591324, -0.194263,
		-0.198016, 0.532460, -0.822968,
		30.729280, 34.720581, 35.104252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687302, 33.908810, 35.084354>,  <30.867891, 34.347862, 35.680328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687302, 33.908810, 35.084354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.830963, 34.252441, 34.938480>,  <30.917160, 34.458622, 34.850956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.830963, 34.252441, 34.938480>,  <30.687302, 33.908810, 35.084354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830963, 34.252441, 34.938480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578122, -0.511544, -0.635687,
		-0.732656, 0.017479, -0.680374,
		0.359152, 0.859079, -0.364681,
		30.938709, 34.510166, 34.829075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792528, 33.800968, 34.375797>,  <30.687302, 33.908810, 35.084354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792528, 33.800968, 34.375797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.042522, 34.099648, 34.466873>,  <31.192518, 34.278854, 34.521519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.042522, 34.099648, 34.466873>,  <30.792528, 33.800968, 34.375797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042522, 34.099648, 34.466873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681837, -0.380122, -0.624984,
		-0.380122, 0.545851, -0.746695,
		0.624984, 0.746695, 0.227689,
		31.230017, 34.323654, 34.535179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206486, 33.816044, 33.785862>,  <30.792528, 33.800968, 34.375797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206486, 33.816044, 33.785862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.400347, 34.060162, 34.036510>,  <31.516663, 34.206635, 34.186897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.400347, 34.060162, 34.036510>,  <31.206486, 33.816044, 33.785862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400347, 34.060162, 34.036510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874593, -0.326537, -0.358413,
		-0.014124, 0.721742, -0.692018,
		0.484651, 0.610297, 0.626619,
		31.545742, 34.243252, 34.224495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712944, 34.107914, 33.341137>,  <31.206486, 33.816044, 33.785862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712944, 34.107914, 33.341137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.819094, 34.183002, 33.719414>,  <31.882784, 34.228054, 33.946381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.819094, 34.183002, 33.719414>,  <31.712944, 34.107914, 33.341137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819094, 34.183002, 33.719414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924605, -0.327571, -0.194432,
		0.273283, 0.925990, -0.260498,
		0.265373, 0.187722, 0.945694,
		31.898706, 34.239319, 34.003120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377304, 34.429913, 33.333183>,  <31.712944, 34.107914, 33.341137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377304, 34.429913, 33.333183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.342594, 34.272991, 33.699478>,  <32.321770, 34.178841, 33.919254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.342594, 34.272991, 33.699478>,  <32.377304, 34.429913, 33.333183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342594, 34.272991, 33.699478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934027, -0.351750, -0.062181,
		0.346503, 0.849926, 0.396940,
		-0.086775, -0.392299, 0.915736,
		32.316563, 34.155300, 33.974197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064651, 34.464203, 33.628136>,  <32.377304, 34.429913, 33.333183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064651, 34.464203, 33.628136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.931236, 34.166309, 33.859352>,  <32.851189, 33.987572, 33.998081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.931236, 34.166309, 33.859352>,  <33.064651, 34.464203, 33.628136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931236, 34.166309, 33.859352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873084, -0.475319, -0.108611,
		0.355638, 0.468450, 0.808750,
		-0.333536, -0.744732, 0.578038,
		32.831177, 33.942890, 34.032764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535851, 34.376579, 34.248917>,  <33.064651, 34.464203, 33.628136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535851, 34.376579, 34.248917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.331169, 34.035767, 34.204723>,  <33.208363, 33.831280, 34.178207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.331169, 34.035767, 34.204723>,  <33.535851, 34.376579, 34.248917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331169, 34.035767, 34.204723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852131, -0.519718, 0.061371,
		-0.109708, -0.062739, 0.991982,
		-0.511700, -0.852031, -0.110479,
		33.177658, 33.780159, 34.171581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936012, 33.969662, 34.487823>,  <33.535851, 34.376579, 34.248917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936012, 33.969662, 34.487823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.693596, 33.688648, 34.338608>,  <33.548145, 33.520039, 34.249081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.693596, 33.688648, 34.338608>,  <33.936012, 33.969662, 34.487823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693596, 33.688648, 34.338608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731952, -0.676133, 0.084206,
		-0.311380, -0.222013, 0.923988,
		-0.606043, -0.702535, -0.373037,
		33.511784, 33.477886, 34.226696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992805, 33.476669, 34.961086>,  <33.936012, 33.969662, 34.487823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992805, 33.476669, 34.961086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.872345, 33.308289, 34.618832>,  <33.800068, 33.207260, 34.413479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.872345, 33.308289, 34.618832>,  <33.992805, 33.476669, 34.961086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872345, 33.308289, 34.618832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718011, -0.690569, 0.087035,
		-0.627512, -0.588144, 0.510211,
		-0.301147, -0.420953, -0.855634,
		33.782001, 33.182003, 34.362141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942669, 32.803616, 35.113850>,  <33.992805, 33.476669, 34.961086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942669, 32.803616, 35.113850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.949921, 32.810322, 34.713970>,  <33.954269, 32.814346, 34.474045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.949921, 32.810322, 34.713970>,  <33.942669, 32.803616, 35.113850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949921, 32.810322, 34.713970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516356, -0.856360, -0.005002,
		-0.856182, -0.516108, -0.024182,
		0.018127, 0.016769, -0.999695,
		33.955360, 32.815353, 34.414062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994587, 32.103752, 35.004883>,  <33.942669, 32.803616, 35.113850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994587, 32.103752, 35.004883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.107525, 32.254520, 34.652016>,  <34.175285, 32.344982, 34.440296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.107525, 32.254520, 34.652016>,  <33.994587, 32.103752, 35.004883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107525, 32.254520, 34.652016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488975, -0.847698, -0.205697,
		-0.825340, -0.373279, -0.423646,
		0.282342, 0.376923, -0.882163,
		34.192226, 32.367596, 34.387367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828129, 31.576328, 34.647873>,  <33.994587, 32.103752, 35.004883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828129, 31.576328, 34.647873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.104435, 31.781237, 34.443748>,  <34.270218, 31.904182, 34.321274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.104435, 31.781237, 34.443748>,  <33.828129, 31.576328, 34.647873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104435, 31.781237, 34.443748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526437, -0.840103, -0.130732,
		-0.495682, -0.178340, -0.849997,
		0.690770, 0.512272, -0.510308,
		34.311665, 31.934917, 34.290657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986126, 31.264593, 33.985485>,  <33.828129, 31.576328, 34.647873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986126, 31.264593, 33.985485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.310028, 31.469246, 34.100391>,  <34.504372, 31.592037, 34.169334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.310028, 31.469246, 34.100391>,  <33.986126, 31.264593, 33.985485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310028, 31.469246, 34.100391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563274, -0.814944, -0.136338,
		0.164353, 0.272212, -0.948097,
		0.809759, 0.511631, 0.287268,
		34.552956, 31.622736, 34.186573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523571, 31.192013, 33.506275>,  <33.986126, 31.264593, 33.985485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523571, 31.192013, 33.506275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.699749, 31.248209, 33.860962>,  <34.805454, 31.281927, 34.073776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.699749, 31.248209, 33.860962>,  <34.523571, 31.192013, 33.506275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699749, 31.248209, 33.860962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565851, -0.810246, -0.152690,
		0.697008, 0.569002, -0.436367,
		0.440446, 0.140492, 0.886719,
		34.831882, 31.290356, 34.126976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.151131, 33.694290, 49.636791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768562, 33.613522, 49.552422>,  <39.539021, 33.565060, 49.501801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.768562, 33.613522, 49.552422>,  <40.151131, 33.694290, 49.636791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768562, 33.613522, 49.552422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212457, -0.014320, 0.977066,
		-0.200307, 0.979298, -0.029202,
		-0.956420, -0.201917, -0.210927,
		39.481636, 33.552948, 49.489143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955978, 33.736881, 50.204292>,  <40.151131, 33.694290, 49.636791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955978, 33.736881, 50.204292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.605247, 33.619869, 50.051662>,  <39.394810, 33.549664, 49.960083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.605247, 33.619869, 50.051662>,  <39.955978, 33.736881, 50.204292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.605247, 33.619869, 50.051662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325575, -0.222750, 0.918903,
		-0.353803, 0.929951, 0.100072,
		-0.876826, -0.292530, -0.381578,
		39.342201, 33.532112, 49.937187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347843, 34.127213, 50.535282>,  <39.955978, 33.736881, 50.204292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347843, 34.127213, 50.535282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.211582, 33.782825, 50.384190>,  <39.129826, 33.576191, 50.293533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.211582, 33.782825, 50.384190>,  <39.347843, 34.127213, 50.535282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211582, 33.782825, 50.384190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459521, -0.198038, 0.865807,
		-0.820241, 0.468516, -0.328172,
		-0.340654, -0.860972, -0.377732,
		39.109386, 33.524532, 50.270870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694225, 34.143974, 50.805145>,  <39.347843, 34.127213, 50.535282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694225, 34.143974, 50.805145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.739895, 33.760975, 50.699196>,  <38.767296, 33.531174, 50.635628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.739895, 33.760975, 50.699196>,  <38.694225, 34.143974, 50.805145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739895, 33.760975, 50.699196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517035, -0.284931, 0.807149,
		-0.848315, 0.044793, -0.527593,
		0.114173, -0.957501, -0.264871,
		38.774147, 33.473724, 50.619736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104179, 33.903805, 50.784122>,  <38.694225, 34.143974, 50.805145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104179, 33.903805, 50.784122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.299866, 33.560081, 50.843800>,  <38.417278, 33.353848, 50.879604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.299866, 33.560081, 50.843800>,  <38.104179, 33.903805, 50.784122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299866, 33.560081, 50.843800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663335, -0.255528, 0.703344,
		-0.566267, -0.443049, -0.695018,
		0.489212, -0.859310, 0.149192,
		38.446629, 33.302288, 50.888557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665009, 33.483128, 50.804924>,  <38.104179, 33.903805, 50.784122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665009, 33.483128, 50.804924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965965, 33.288124, 50.982121>,  <38.146542, 33.171124, 51.088436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.965965, 33.288124, 50.982121>,  <37.665009, 33.483128, 50.804924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965965, 33.288124, 50.982121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620551, -0.299007, 0.724922,
		-0.220942, -0.820328, -0.527490,
		0.752397, -0.487500, 0.442992,
		38.191685, 33.141872, 51.115017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382751, 32.898987, 50.878029>,  <37.665009, 33.483128, 50.804924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382751, 32.898987, 50.878029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689007, 32.916424, 51.134747>,  <37.872761, 32.926888, 51.288776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689007, 32.916424, 51.134747>,  <37.382751, 32.898987, 50.878029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689007, 32.916424, 51.134747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576967, -0.394625, 0.715108,
		0.284442, -0.917808, -0.276987,
		0.765638, 0.043594, 0.641793,
		37.918697, 32.929501, 51.327286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214371, 32.286308, 51.427052>,  <37.382751, 32.898987, 50.878029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214371, 32.286308, 51.427052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.475666, 32.542679, 51.588295>,  <37.632442, 32.696503, 51.685040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.475666, 32.542679, 51.588295>,  <37.214371, 32.286308, 51.427052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475666, 32.542679, 51.588295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458907, -0.088323, 0.884084,
		0.602237, -0.762503, 0.236430,
		0.653234, 0.640927, 0.403109,
		37.671635, 32.734959, 51.709229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335468, 32.036812, 52.011734>,  <37.214371, 32.286308, 51.427052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335468, 32.036812, 52.011734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479424, 32.403957, 52.078667>,  <37.565796, 32.624245, 52.118828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479424, 32.403957, 52.078667>,  <37.335468, 32.036812, 52.011734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479424, 32.403957, 52.078667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546987, 0.062274, 0.834822,
		0.755836, -0.391968, 0.524473,
		0.359884, 0.917869, 0.167333,
		37.587387, 32.679317, 52.128868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581223, 32.017094, 52.669636>,  <37.335468, 32.036812, 52.011734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581223, 32.017094, 52.669636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521431, 32.406006, 52.597710>,  <37.485558, 32.639351, 52.554554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.521431, 32.406006, 52.597710>,  <37.581223, 32.017094, 52.669636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.521431, 32.406006, 52.597710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543869, 0.071025, 0.836159,
		0.825750, 0.222779, 0.518176,
		-0.149475, 0.972278, -0.179811,
		37.476589, 32.697689, 52.543766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762074, 32.447029, 53.304192>,  <37.581223, 32.017094, 52.669636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762074, 32.447029, 53.304192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.505264, 32.650917, 53.075108>,  <37.351177, 32.773251, 52.937656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.505264, 32.650917, 53.075108>,  <37.762074, 32.447029, 53.304192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505264, 32.650917, 53.075108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618951, 0.096227, 0.779512,
		0.452440, 0.854944, 0.253710,
		-0.642026, 0.509717, -0.572706,
		37.312656, 32.803833, 52.903297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582024, 32.989105, 53.721107>,  <37.762074, 32.447029, 53.304192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582024, 32.989105, 53.721107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.301018, 32.948151, 53.439400>,  <37.132416, 32.923576, 53.270374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.301018, 32.948151, 53.439400>,  <37.582024, 32.989105, 53.721107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301018, 32.948151, 53.439400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711594, 0.115793, 0.692984,
		0.010595, 0.987982, -0.154205,
		-0.702511, -0.102389, -0.704269,
		37.090263, 32.917435, 53.228119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205929, 33.640926, 53.614120>,  <37.582024, 32.989105, 53.721107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205929, 33.640926, 53.614120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.986206, 33.312271, 53.553242>,  <36.854374, 33.115078, 53.516712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.986206, 33.312271, 53.553242>,  <37.205929, 33.640926, 53.614120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986206, 33.312271, 53.553242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608286, 0.268295, 0.746998,
		-0.572930, 0.502914, -0.647170,
		-0.549308, -0.821642, -0.152201,
		36.821415, 33.065777, 53.507580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369339, 33.718266, 53.487881>,  <37.205929, 33.640926, 53.614120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369339, 33.718266, 53.487881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489132, 33.377945, 53.660599>,  <36.561008, 33.173752, 53.764229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.489132, 33.377945, 53.660599>,  <36.369339, 33.718266, 53.487881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489132, 33.377945, 53.660599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603254, 0.181770, 0.776559,
		-0.739186, -0.493045, -0.458814,
		0.299480, -0.850803, 0.431793,
		36.578976, 33.122704, 53.790138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691982, 33.469120, 53.592613>,  <36.369339, 33.718266, 53.487881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691982, 33.469120, 53.592613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667988, 33.754368, 53.872002>,  <35.653591, 33.925514, 54.039635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.667988, 33.754368, 53.872002>,  <35.691982, 33.469120, 53.592613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667988, 33.754368, 53.872002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469807, 0.637558, -0.610575,
		-0.880729, 0.291524, -0.373270,
		-0.059984, 0.713116, 0.698476,
		35.649994, 33.968304, 54.081543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613922, 34.049767, 53.195019>,  <35.691982, 33.469120, 53.592613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613922, 34.049767, 53.195019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722839, 34.194729, 53.551563>,  <35.788189, 34.281708, 53.765488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.722839, 34.194729, 53.551563>,  <35.613922, 34.049767, 53.195019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722839, 34.194729, 53.551563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376197, 0.812528, -0.445279,
		-0.885625, 0.456573, 0.084911,
		0.272295, 0.362407, 0.891357,
		35.804527, 34.303452, 53.818970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290379, 34.750835, 53.197678>,  <35.613922, 34.049767, 53.195019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290379, 34.750835, 53.197678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596397, 34.729530, 53.454388>,  <35.780006, 34.716747, 53.608414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596397, 34.729530, 53.454388>,  <35.290379, 34.750835, 53.197678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596397, 34.729530, 53.454388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321499, 0.895084, -0.308971,
		-0.557984, 0.442705, 0.701901,
		0.765044, -0.053259, 0.641772,
		35.825909, 34.713554, 53.646919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334896, 35.455292, 53.415806>,  <35.290379, 34.750835, 53.197678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334896, 35.455292, 53.415806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680931, 35.259750, 53.460770>,  <35.888554, 35.142426, 53.487747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680931, 35.259750, 53.460770>,  <35.334896, 35.455292, 53.415806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680931, 35.259750, 53.460770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433551, 0.615982, -0.657723,
		0.252290, 0.617726, 0.744825,
		0.865092, -0.488856, 0.112410,
		35.940460, 35.113094, 53.494492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899750, 36.017220, 53.304550>,  <35.334896, 35.455292, 53.415806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899750, 36.017220, 53.304550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078472, 35.662960, 53.253971>,  <36.185703, 35.450405, 53.223625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.078472, 35.662960, 53.253971>,  <35.899750, 36.017220, 53.304550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078472, 35.662960, 53.253971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470142, 0.352692, -0.809057,
		0.761140, 0.302041, 0.573966,
		0.446802, -0.885652, -0.126446,
		36.212513, 35.397263, 53.216038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496914, 36.208332, 53.002914>,  <35.899750, 36.017220, 53.304550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496914, 36.208332, 53.002914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.494503, 35.815487, 52.927628>,  <36.493057, 35.579781, 52.882454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.494503, 35.815487, 52.927628>,  <36.496914, 36.208332, 53.002914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494503, 35.815487, 52.927628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395188, 0.170560, -0.902627,
		0.918581, -0.079822, 0.387089,
		-0.006028, -0.982109, -0.188218,
		36.492695, 35.520855, 52.871162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133766, 36.062725, 52.680588>,  <36.496914, 36.208332, 53.002914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133766, 36.062725, 52.680588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.867428, 35.777077, 52.594158>,  <36.707626, 35.605690, 52.542301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.867428, 35.777077, 52.594158>,  <37.133766, 36.062725, 52.680588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867428, 35.777077, 52.594158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156574, 0.149408, -0.976300,
		0.729477, -0.683895, 0.012329,
		-0.665844, -0.714119, -0.216070,
		36.667675, 35.562840, 52.529339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460041, 35.735123, 52.065506>,  <37.133766, 36.062725, 52.680588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460041, 35.735123, 52.065506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.075375, 35.625443, 52.064659>,  <36.844574, 35.559635, 52.064152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.075375, 35.625443, 52.064659>,  <37.460041, 35.735123, 52.065506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075375, 35.625443, 52.064659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022492, 0.086576, -0.995991,
		0.273288, -0.957767, -0.089425,
		-0.961669, -0.274204, -0.002118,
		36.786873, 35.543182, 52.064022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307961, 35.264526, 51.537544>,  <37.460041, 35.735123, 52.065506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307961, 35.264526, 51.537544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936199, 35.388367, 51.617912>,  <36.713142, 35.462669, 51.666134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936199, 35.388367, 51.617912>,  <37.307961, 35.264526, 51.537544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936199, 35.388367, 51.617912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180271, 0.094229, -0.979093,
		-0.322056, -0.946188, -0.031765,
		-0.929399, 0.309597, 0.200918,
		36.657379, 35.481247, 51.678188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831505, 34.811073, 51.268383>,  <37.307961, 35.264526, 51.537544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831505, 34.811073, 51.268383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632896, 35.157406, 51.293041>,  <36.513733, 35.365208, 51.307835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.632896, 35.157406, 51.293041>,  <36.831505, 34.811073, 51.268383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632896, 35.157406, 51.293041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223886, -0.059126, -0.972820,
		-0.838657, -0.496823, 0.223205,
		-0.496517, 0.865835, 0.061645,
		36.483940, 35.417156, 51.311535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074883, 34.714951, 51.086472>,  <36.831505, 34.811073, 51.268383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074883, 34.714951, 51.086472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185364, 35.091438, 51.008678>,  <36.251652, 35.317329, 50.962002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.185364, 35.091438, 51.008678>,  <36.074883, 34.714951, 51.086472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185364, 35.091438, 51.008678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346530, -0.091216, -0.933593,
		-0.896452, 0.325259, 0.300965,
		0.276207, 0.941215, -0.194483,
		36.268227, 35.373802, 50.950333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485146, 34.990307, 50.701180>,  <36.074883, 34.714951, 51.086472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.485146, 34.990307, 50.701180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797173, 35.229275, 50.626793>,  <35.984390, 35.372658, 50.582161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.797173, 35.229275, 50.626793>,  <35.485146, 34.990307, 50.701180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797173, 35.229275, 50.626793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242310, 0.014421, -0.970092,
		-0.576874, 0.801796, 0.156011,
		0.780066, 0.597423, -0.185964,
		36.031193, 35.408501, 50.571003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204926, 35.385952, 50.153156>,  <35.485146, 34.990307, 50.701180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204926, 35.385952, 50.153156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.598747, 35.455971, 50.154518>,  <35.835041, 35.497982, 50.155334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.598747, 35.455971, 50.154518>,  <35.204926, 35.385952, 50.153156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598747, 35.455971, 50.154518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005016, 0.047653, -0.998851,
		-0.175004, 0.983407, 0.047795,
		0.984555, 0.175042, 0.003407,
		35.894115, 35.508484, 50.155540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282043, 35.950424, 49.631691>,  <35.204926, 35.385952, 50.153156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282043, 35.950424, 49.631691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639965, 35.778652, 49.680534>,  <35.854717, 35.675591, 49.709839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639965, 35.778652, 49.680534>,  <35.282043, 35.950424, 49.631691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639965, 35.778652, 49.680534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091436, -0.091433, -0.991604,
		0.436991, 0.898459, -0.042549,
		0.894806, -0.429431, 0.122107,
		35.908405, 35.649822, 49.717167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953522, 36.561470, 49.559013>,  <35.282043, 35.950424, 49.631691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953522, 36.561470, 49.559013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584572, 36.614868, 49.414017>,  <34.363201, 36.646908, 49.327019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.584572, 36.614868, 49.414017>,  <34.953522, 36.561470, 49.559013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584572, 36.614868, 49.414017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385911, -0.360063, 0.849369,
		-0.017138, 0.923328, 0.383629,
		-0.922377, 0.133491, -0.362493,
		34.307858, 36.654915, 49.305267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585529, 36.888695, 50.056293>,  <34.953522, 36.561470, 49.559013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585529, 36.888695, 50.056293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308914, 36.718452, 49.822838>,  <34.142944, 36.616306, 49.682762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.308914, 36.718452, 49.822838>,  <34.585529, 36.888695, 50.056293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308914, 36.718452, 49.822838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503497, -0.295346, 0.811949,
		-0.517945, 0.855355, -0.010048,
		-0.691537, -0.425604, -0.583642,
		34.101452, 36.590771, 49.647747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921528, 37.148487, 50.216434>,  <34.585529, 36.888695, 50.056293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921528, 37.148487, 50.216434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870358, 36.779495, 50.070744>,  <33.839657, 36.558098, 49.983330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870358, 36.779495, 50.070744>,  <33.921528, 37.148487, 50.216434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870358, 36.779495, 50.070744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458765, -0.270556, 0.846365,
		-0.879301, 0.275364, -0.388592,
		-0.127922, -0.922482, -0.364228,
		33.831982, 36.502750, 49.961475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262089, 37.024830, 50.364479>,  <33.921528, 37.148487, 50.216434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262089, 37.024830, 50.364479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427849, 36.666595, 50.299732>,  <33.527306, 36.451656, 50.260883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427849, 36.666595, 50.299732>,  <33.262089, 37.024830, 50.364479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427849, 36.666595, 50.299732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382844, -0.332903, 0.861746,
		-0.825653, -0.295137, -0.480824,
		0.414400, -0.895583, -0.161871,
		33.552170, 36.397919, 50.251171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787872, 36.670097, 50.621655>,  <33.262089, 37.024830, 50.364479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787872, 36.670097, 50.621655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075638, 36.393280, 50.597939>,  <33.248299, 36.227188, 50.583710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075638, 36.393280, 50.597939>,  <32.787872, 36.670097, 50.621655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075638, 36.393280, 50.597939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382629, -0.466109, 0.797707,
		-0.579686, -0.551196, -0.600123,
		0.719415, -0.692045, -0.059293,
		33.291462, 36.185665, 50.580151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453186, 35.996689, 50.743690>,  <32.787872, 36.670097, 50.621655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453186, 35.996689, 50.743690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839798, 35.936886, 50.827084>,  <33.071766, 35.901005, 50.877121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.839798, 35.936886, 50.827084>,  <32.453186, 35.996689, 50.743690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839798, 35.936886, 50.827084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255947, -0.506180, 0.823573,
		-0.017594, -0.849370, -0.527504,
		0.966531, -0.149503, 0.208488,
		33.129757, 35.892036, 50.889629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416348, 35.315712, 50.956318>,  <32.453186, 35.996689, 50.743690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416348, 35.315712, 50.956318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765808, 35.460903, 51.085915>,  <32.975487, 35.548019, 51.163673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.765808, 35.460903, 51.085915>,  <32.416348, 35.315712, 50.956318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765808, 35.460903, 51.085915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071763, -0.562491, 0.823683,
		0.481224, -0.742866, -0.465375,
		0.873655, 0.362979, 0.323995,
		33.027905, 35.569798, 51.183113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231335, 34.552917, 50.812428>,  <32.416348, 35.315712, 50.956318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231335, 34.552917, 50.812428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832264, 34.530308, 50.827644>,  <31.592821, 34.516743, 50.836777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.832264, 34.530308, 50.827644>,  <32.231335, 34.552917, 50.812428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832264, 34.530308, 50.827644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059682, 0.455620, -0.888171,
		0.032869, -0.888378, -0.457935,
		-0.997676, -0.056524, 0.038045,
		31.532961, 34.513351, 50.839058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074333, 34.287861, 50.161747>,  <32.231335, 34.552917, 50.812428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074333, 34.287861, 50.161747> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.717590, 34.420677, 50.284599>,  <31.503544, 34.500366, 50.358311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.717590, 34.420677, 50.284599>,  <32.074333, 34.287861, 50.161747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717590, 34.420677, 50.284599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154910, 0.413735, -0.897121,
		-0.424957, -0.847685, -0.317557,
		-0.891860, 0.332045, 0.307134,
		31.450033, 34.520290, 50.376740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558264, 33.920345, 49.709972>,  <32.074333, 34.287861, 50.161747>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558264, 33.920345, 49.709972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.384235, 34.251572, 49.851402>,  <31.279818, 34.450310, 49.936260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.384235, 34.251572, 49.851402>,  <31.558264, 33.920345, 49.709972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384235, 34.251572, 49.851402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167958, 0.311154, -0.935400,
		-0.884591, -0.466353, 0.003706,
		-0.435073, 0.828069, 0.353572,
		31.253714, 34.499992, 49.957474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941311, 34.083916, 49.232792>,  <31.558264, 33.920345, 49.709972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941311, 34.083916, 49.232792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.045580, 34.419010, 49.424728>,  <31.108141, 34.620068, 49.539890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.045580, 34.419010, 49.424728>,  <30.941311, 34.083916, 49.232792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045580, 34.419010, 49.424728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115157, 0.520453, -0.846089,
		-0.958535, 0.165295, 0.232139,
		0.260673, 0.837738, 0.479838,
		31.123781, 34.670330, 49.568680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542006, 34.502602, 48.886024>,  <30.941311, 34.083916, 49.232792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542006, 34.502602, 48.886024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.800632, 34.732620, 49.086533>,  <30.955809, 34.870632, 49.206837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.800632, 34.732620, 49.086533>,  <30.542006, 34.502602, 48.886024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800632, 34.732620, 49.086533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004143, 0.659736, -0.751486,
		-0.762848, 0.483808, 0.428944,
		0.646565, 0.575046, 0.501274,
		30.994602, 34.905132, 49.236916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.347965, 35.175991, 48.867134>,  <30.542006, 34.502602, 48.886024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.347965, 35.175991, 48.867134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.739803, 35.203533, 48.942665>,  <30.974905, 35.220058, 48.987984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.739803, 35.203533, 48.942665>,  <30.347965, 35.175991, 48.867134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739803, 35.203533, 48.942665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100723, 0.644838, -0.757653,
		-0.173929, 0.761212, 0.624744,
		0.979593, 0.068852, 0.188828,
		31.033682, 35.224190, 48.999313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383747, 35.911655, 48.908810>,  <30.347965, 35.175991, 48.867134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383747, 35.911655, 48.908810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.744488, 35.759430, 48.827000>,  <30.960932, 35.668095, 48.777912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.744488, 35.759430, 48.827000>,  <30.383747, 35.911655, 48.908810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744488, 35.759430, 48.827000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030266, 0.527880, -0.848779,
		0.430982, 0.759284, 0.487588,
		0.901853, -0.380566, -0.204526,
		31.015043, 35.645260, 48.765640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.363354, 30.628073, 52.130676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419708, 30.958832, 52.348446>,  <34.453522, 31.157288, 52.479107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.419708, 30.958832, 52.348446>,  <34.363354, 30.628073, 52.130676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419708, 30.958832, 52.348446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301536, 0.487940, -0.819140,
		-0.942988, 0.279568, -0.180595,
		0.140886, 0.826896, 0.544421,
		34.461975, 31.206900, 52.511772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961773, 31.219431, 51.779095>,  <34.363354, 30.628073, 52.130676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961773, 31.219431, 51.779095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.298977, 31.293230, 51.981201>,  <34.501301, 31.337509, 52.102463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.298977, 31.293230, 51.981201>,  <33.961773, 31.219431, 51.779095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298977, 31.293230, 51.981201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437053, 0.312618, -0.843359,
		-0.313552, 0.931789, 0.182906,
		0.843012, 0.184498, 0.505263,
		34.551880, 31.348579, 52.132782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131245, 31.949886, 51.665371>,  <33.961773, 31.219431, 51.779095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131245, 31.949886, 51.665371> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.468967, 31.773100, 51.786575>,  <34.671600, 31.667028, 51.859299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.468967, 31.773100, 51.786575>,  <34.131245, 31.949886, 51.665371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468967, 31.773100, 51.786575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404488, 0.154747, -0.901356,
		0.351478, 0.883584, 0.309423,
		0.844306, -0.441965, 0.303009,
		34.722260, 31.640511, 51.877480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.548882, 32.504379, 51.562073>,  <34.131245, 31.949886, 51.665371>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.548882, 32.504379, 51.562073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.795139, 32.191422, 51.599686>,  <34.942894, 32.003647, 51.622253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.795139, 32.191422, 51.599686>,  <34.548882, 32.504379, 51.562073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795139, 32.191422, 51.599686> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451206, 0.252157, -0.856055,
		0.646059, 0.569456, 0.508259,
		0.615647, -0.782392, 0.094033,
		34.979832, 31.956703, 51.627895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101402, 32.747780, 51.245193>,  <34.548882, 32.504379, 51.562073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101402, 32.747780, 51.245193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.174587, 32.355080, 51.265911>,  <35.218498, 32.119457, 51.278343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.174587, 32.355080, 51.265911>,  <35.101402, 32.747780, 51.245193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174587, 32.355080, 51.265911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419742, 0.030367, -0.907135,
		0.889011, 0.187715, 0.417639,
		0.182965, -0.981754, 0.051795,
		35.229477, 32.060555, 51.281448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830357, 32.609093, 51.128162>,  <35.101402, 32.747780, 51.245193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830357, 32.609093, 51.128162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.621758, 32.281273, 51.033176>,  <35.496597, 32.084583, 50.976185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.621758, 32.281273, 51.033176>,  <35.830357, 32.609093, 51.128162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.621758, 32.281273, 51.033176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403320, 0.008484, -0.915020,
		0.751915, -0.572951, 0.326115,
		-0.521495, -0.819546, -0.237462,
		35.465309, 32.035408, 50.961937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291039, 32.208786, 50.669022>,  <35.830357, 32.609093, 51.128162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291039, 32.208786, 50.669022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.923534, 32.058834, 50.619476>,  <35.703033, 31.968863, 50.589748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.923534, 32.058834, 50.619476>,  <36.291039, 32.208786, 50.669022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923534, 32.058834, 50.619476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250794, -0.311848, -0.916435,
		0.304927, -0.873049, 0.380532,
		-0.918761, -0.374881, -0.123865,
		35.647907, 31.946369, 50.582317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398643, 31.554306, 50.515007>,  <36.291039, 32.208786, 50.669022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398643, 31.554306, 50.515007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.035252, 31.616179, 50.359707>,  <35.817215, 31.653303, 50.266529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.035252, 31.616179, 50.359707>,  <36.398643, 31.554306, 50.515007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035252, 31.616179, 50.359707> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263965, -0.507854, -0.820004,
		-0.324012, -0.847441, 0.420545,
		-0.908481, 0.154682, -0.388246,
		35.762707, 31.662584, 50.243233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211315, 30.903599, 50.119164>,  <36.398643, 31.554306, 50.515007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211315, 30.903599, 50.119164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.986923, 31.210953, 49.995949>,  <35.852287, 31.395365, 49.922020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.986923, 31.210953, 49.995949>,  <36.211315, 30.903599, 50.119164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986923, 31.210953, 49.995949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165552, -0.260452, -0.951187,
		-0.811106, -0.584594, 0.018902,
		-0.560982, 0.768384, -0.308035,
		35.818630, 31.441467, 49.903538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894207, 30.544369, 49.576553>,  <36.211315, 30.903599, 50.119164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894207, 30.544369, 49.576553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.829899, 30.934895, 49.518635>,  <35.791313, 31.169210, 49.483883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.829899, 30.934895, 49.518635>,  <35.894207, 30.544369, 49.576553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829899, 30.934895, 49.518635> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046453, -0.139056, -0.989195,
		-0.985899, -0.165756, -0.022997,
		-0.160767, 0.976314, -0.144795,
		35.781670, 31.227789, 49.475197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409908, 30.539854, 49.047108>,  <35.894207, 30.544369, 49.576553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409908, 30.539854, 49.047108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.534573, 30.919264, 49.024582>,  <35.609371, 31.146910, 49.011066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.534573, 30.919264, 49.024582>,  <35.409908, 30.539854, 49.047108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534573, 30.919264, 49.024582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258194, -0.141572, -0.955664,
		-0.914443, 0.283299, -0.289025,
		0.311656, 0.948525, -0.056314,
		35.628071, 31.203821, 49.007687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083714, 30.797234, 48.495213>,  <35.409908, 30.539854, 49.047108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083714, 30.797234, 48.495213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.395409, 31.042915, 48.545086>,  <35.582424, 31.190325, 48.575012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.395409, 31.042915, 48.545086>,  <35.083714, 30.797234, 48.495213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395409, 31.042915, 48.545086> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326317, -0.227759, -0.917411,
		-0.535079, 0.755566, -0.377903,
		0.779235, 0.614204, 0.124685,
		35.629181, 31.227177, 48.582493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433453, 31.135328, 48.793602>,  <35.083714, 30.797234, 48.495213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433453, 31.135328, 48.793602> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.064472, 31.146460, 48.639561>,  <33.843082, 31.153139, 48.547134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.064472, 31.146460, 48.639561>,  <34.433453, 31.135328, 48.793602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064472, 31.146460, 48.639561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379322, -0.251483, 0.890433,
		-0.072067, 0.967461, 0.242537,
		-0.922454, 0.027829, -0.385103,
		33.787735, 31.154808, 48.524029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047768, 31.378639, 49.315269>,  <34.433453, 31.135328, 48.793602>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047768, 31.378639, 49.315269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.733265, 31.263706, 49.096458>,  <33.544563, 31.194746, 48.965172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.733265, 31.263706, 49.096458>,  <34.047768, 31.378639, 49.315269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733265, 31.263706, 49.096458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471925, -0.292219, 0.831802,
		-0.398855, 0.912167, 0.094160,
		-0.786258, -0.287332, -0.547027,
		33.497387, 31.177507, 48.932350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342350, 31.803005, 49.440105>,  <34.047768, 31.378639, 49.315269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342350, 31.803005, 49.440105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.230160, 31.447510, 49.295063>,  <33.162846, 31.234213, 49.208038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.230160, 31.447510, 49.295063>,  <33.342350, 31.803005, 49.440105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230160, 31.447510, 49.295063> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502957, -0.185676, 0.844132,
		-0.817538, 0.419129, -0.394920,
		-0.280473, -0.888738, -0.362602,
		33.146019, 31.180889, 49.186283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722984, 31.771294, 49.599682>,  <33.342350, 31.803005, 49.440105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722984, 31.771294, 49.599682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.791710, 31.386879, 49.513065>,  <32.832943, 31.156231, 49.461094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.791710, 31.386879, 49.513065>,  <32.722984, 31.771294, 49.599682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791710, 31.386879, 49.513065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537272, -0.275654, 0.797090,
		-0.825724, -0.020605, -0.563698,
		0.171809, -0.961036, -0.216544,
		32.843254, 31.098568, 49.448101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039848, 31.489782, 49.520969>,  <32.722984, 31.771294, 49.599682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039848, 31.489782, 49.520969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.292042, 31.186911, 49.589279>,  <32.443359, 31.005188, 49.630264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.292042, 31.186911, 49.589279>,  <32.039848, 31.489782, 49.520969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292042, 31.186911, 49.589279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562078, -0.293637, 0.773205,
		-0.535310, -0.583484, -0.610729,
		0.630485, -0.757182, 0.170777,
		32.481186, 30.959757, 49.640511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673193, 30.846346, 49.616013>,  <32.039848, 31.489782, 49.520969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673193, 30.846346, 49.616013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.024063, 30.804554, 49.803478>,  <32.234585, 30.779478, 49.915958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.024063, 30.804554, 49.803478>,  <31.673193, 30.846346, 49.616013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024063, 30.804554, 49.803478> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477534, -0.291915, 0.828702,
		0.050228, -0.950721, -0.305953,
		0.877176, -0.104479, 0.468663,
		32.287216, 30.773211, 49.944077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627932, 30.206797, 49.920269>,  <31.673193, 30.846346, 49.616013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627932, 30.206797, 49.920269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.932425, 30.375530, 50.117279>,  <32.115120, 30.476770, 50.235485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.932425, 30.375530, 50.117279>,  <31.627932, 30.206797, 49.920269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.932425, 30.375530, 50.117279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467112, -0.170143, 0.867674,
		0.449813, -0.890567, 0.067525,
		0.761232, 0.421832, 0.492527,
		32.160793, 30.502079, 50.265038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927937, 29.656820, 50.491951>,  <31.627932, 30.206797, 49.920269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927937, 29.656820, 50.491951> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.036674, 30.023945, 50.607689>,  <32.101917, 30.244219, 50.677132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.036674, 30.023945, 50.607689>,  <31.927937, 29.656820, 50.491951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036674, 30.023945, 50.607689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223515, -0.232229, 0.946631,
		0.936024, -0.322010, 0.142014,
		0.271845, 0.917812, 0.289346,
		32.118229, 30.299288, 50.694492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233238, 29.592669, 51.140812>,  <31.927937, 29.656820, 50.491951>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233238, 29.592669, 51.140812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.171402, 29.987837, 51.145130>,  <32.134300, 30.224937, 51.147720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.171402, 29.987837, 51.145130>,  <32.233238, 29.592669, 51.140812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171402, 29.987837, 51.145130> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158522, -0.035585, 0.986714,
		0.975178, 0.150826, 0.162108,
		-0.154591, 0.987920, 0.010792,
		32.125023, 30.284212, 51.148369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546913, 29.741285, 51.793617>,  <32.233238, 29.592669, 51.140812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546913, 29.741285, 51.793617> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.329109, 30.061373, 51.693096>,  <32.198425, 30.253426, 51.632782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.329109, 30.061373, 51.693096>,  <32.546913, 29.741285, 51.793617>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329109, 30.061373, 51.693096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251170, 0.130300, 0.959132,
		0.800261, 0.585381, 0.130041,
		-0.544513, 0.800219, -0.251305,
		32.165756, 30.301439, 51.617706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758003, 30.275959, 52.221615>,  <32.546913, 29.741285, 51.793617>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758003, 30.275959, 52.221615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.385372, 30.367287, 52.108448>,  <32.161793, 30.422083, 52.040546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.385372, 30.367287, 52.108448>,  <32.758003, 30.275959, 52.221615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385372, 30.367287, 52.108448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260169, 0.124879, 0.957454,
		0.253934, 0.965544, -0.056933,
		-0.931574, 0.228318, -0.282916,
		32.105900, 30.435781, 52.023575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683540, 30.812960, 52.531261>,  <32.758003, 30.275959, 52.221615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683540, 30.812960, 52.531261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.309616, 30.689165, 52.461582>,  <32.085262, 30.614889, 52.419773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.309616, 30.689165, 52.461582>,  <32.683540, 30.812960, 52.531261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309616, 30.689165, 52.461582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237735, 0.180914, 0.954333,
		-0.263838, 0.933535, -0.242696,
		-0.934811, -0.309487, -0.174202,
		32.029171, 30.596319, 52.409321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274681, 31.421854, 52.665295>,  <32.683540, 30.812960, 52.531261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274681, 31.421854, 52.665295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.008659, 31.123138, 52.666542>,  <31.849047, 30.943909, 52.667290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.008659, 31.123138, 52.666542>,  <32.274681, 31.421854, 52.665295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.008659, 31.123138, 52.666542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345549, 0.311429, 0.885217,
		-0.662040, 0.587640, -0.465169,
		-0.665056, -0.746787, 0.003120,
		31.809143, 30.899101, 52.667477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629534, 31.701561, 52.797035>,  <32.274681, 31.421854, 52.665295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629534, 31.701561, 52.797035> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.643818, 31.315847, 52.902016>,  <31.652390, 31.084419, 52.965004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.643818, 31.315847, 52.902016>,  <31.629534, 31.701561, 52.797035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643818, 31.315847, 52.902016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323190, 0.237362, 0.916083,
		-0.945660, -0.117536, -0.303171,
		0.035711, -0.964285, 0.262450,
		31.654531, 31.026562, 52.980751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126938, 32.161228, 52.579449>,  <31.629534, 31.701561, 52.797035>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126938, 32.161228, 52.579449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.221277, 32.484360, 52.795517>,  <31.277882, 32.678238, 52.925156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.221277, 32.484360, 52.795517>,  <31.126938, 32.161228, 52.579449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221277, 32.484360, 52.795517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179428, 0.582492, -0.792785,
		-0.955081, 0.090056, 0.282328,
		0.235850, 0.807832, 0.540169,
		31.292032, 32.726707, 52.957569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549622, 32.588882, 52.578842>,  <31.126938, 32.161228, 52.579449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549622, 32.588882, 52.578842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.879066, 32.803646, 52.651932>,  <31.076733, 32.932507, 52.695786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.879066, 32.803646, 52.651932>,  <30.549622, 32.588882, 52.578842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879066, 32.803646, 52.651932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187157, 0.561430, -0.806082,
		-0.535383, 0.629700, 0.562888,
		0.823612, 0.536911, 0.182727,
		31.126150, 32.964718, 52.706749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403799, 33.268612, 52.395699>,  <30.549622, 32.588882, 52.578842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403799, 33.268612, 52.395699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.796568, 33.336609, 52.428993>,  <31.032230, 33.377407, 52.448971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.796568, 33.336609, 52.428993>,  <30.403799, 33.268612, 52.395699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796568, 33.336609, 52.428993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061457, 0.702289, -0.709234,
		-0.179019, 0.691299, 0.700041,
		0.981924, 0.169989, 0.083238,
		31.091145, 33.387604, 52.453964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.536654, 34.060284, 52.389118>,  <30.403799, 33.268612, 52.395699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.536654, 34.060284, 52.389118> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.882452, 33.886078, 52.288738>,  <31.089931, 33.781555, 52.228512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.882452, 33.886078, 52.288738>,  <30.536654, 34.060284, 52.389118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882452, 33.886078, 52.288738> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128023, 0.673574, -0.727948,
		0.486065, 0.597180, 0.638057,
		0.864495, -0.435516, -0.250948,
		31.141800, 33.755424, 52.213455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036930, 34.558846, 52.395443>,  <30.536654, 34.060284, 52.389118>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036930, 34.558846, 52.395443> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190269, 34.273750, 52.160477>,  <31.282272, 34.102695, 52.019497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.190269, 34.273750, 52.160477>,  <31.036930, 34.558846, 52.395443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190269, 34.273750, 52.160477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055757, 0.652699, -0.755563,
		0.921919, 0.256892, 0.289951,
		0.383349, -0.712735, -0.587412,
		31.305275, 34.059929, 51.984253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626581, 34.858124, 52.072197>,  <31.036930, 34.558846, 52.395443>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626581, 34.858124, 52.072197> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.517550, 34.540100, 51.855461>,  <31.452129, 34.349285, 51.725422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.517550, 34.540100, 51.855461>,  <31.626581, 34.858124, 52.072197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517550, 34.540100, 51.855461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081393, 0.542088, -0.836370,
		0.958684, -0.272080, -0.083051,
		-0.272580, -0.795055, -0.541837,
		31.435776, 34.301582, 51.692909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039436, 34.918762, 51.540844>,  <31.626581, 34.858124, 52.072197>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039436, 34.918762, 51.540844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.736691, 34.679844, 51.434715>,  <31.555042, 34.536495, 51.371040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.736691, 34.679844, 51.434715>,  <32.039436, 34.918762, 51.540844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736691, 34.679844, 51.434715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073375, 0.481041, -0.873622,
		0.649436, -0.641748, -0.407911,
		-0.756867, -0.597293, -0.265318,
		31.509630, 34.500656, 51.355122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788898, 34.785454, 51.350468>,  <32.039436, 34.918762, 51.540844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788898, 34.785454, 51.350468> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.034370, 35.073666, 51.479614>,  <33.181652, 35.246593, 51.557102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.034370, 35.073666, 51.479614>,  <32.788898, 34.785454, 51.350468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034370, 35.073666, 51.479614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177568, -0.524392, 0.832756,
		0.769332, -0.453711, -0.449749,
		0.613676, 0.720527, 0.322867,
		33.218472, 35.289825, 51.576473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515415, 34.450951, 51.527729>,  <32.788898, 34.785454, 51.350468>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515415, 34.450951, 51.527729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442013, 34.798882, 51.710915>,  <33.397972, 35.007641, 51.820827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442013, 34.798882, 51.710915>,  <33.515415, 34.450951, 51.527729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442013, 34.798882, 51.710915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283073, -0.399381, 0.871989,
		0.941379, 0.289655, -0.172934,
		-0.183509, 0.869825, 0.457962,
		33.386959, 35.059830, 51.848305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119617, 34.608543, 51.982765>,  <33.515415, 34.450951, 51.527729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119617, 34.608543, 51.982765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.838226, 34.858177, 52.118790>,  <33.669392, 35.007957, 52.200405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.838226, 34.858177, 52.118790>,  <34.119617, 34.608543, 51.982765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838226, 34.858177, 52.118790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317795, -0.151771, 0.935934,
		0.635711, 0.766478, -0.091563,
		-0.703476, 0.624082, 0.340065,
		33.627182, 35.045403, 52.220810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370262, 34.764008, 52.688400>,  <34.119617, 34.608543, 51.982765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370262, 34.764008, 52.688400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.983345, 34.860817, 52.718773>,  <33.751194, 34.918903, 52.736996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.983345, 34.860817, 52.718773>,  <34.370262, 34.764008, 52.688400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983345, 34.860817, 52.718773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028910, -0.192227, 0.980925,
		0.252001, 0.951039, 0.178943,
		-0.967295, 0.242021, 0.075936,
		33.693157, 34.933422, 52.741554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272953, 35.098225, 53.240032>,  <34.370262, 34.764008, 52.688400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272953, 35.098225, 53.240032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.876694, 35.051205, 53.212334>,  <33.638939, 35.022995, 53.195713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.876694, 35.051205, 53.212334>,  <34.272953, 35.098225, 53.240032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876694, 35.051205, 53.212334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053207, -0.134501, 0.989484,
		-0.125624, 0.983917, 0.126989,
		-0.990650, -0.117546, -0.069248,
		33.579498, 35.015942, 53.191559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.910103, 35.621784, 53.697517>,  <34.272953, 35.098225, 53.240032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.910103, 35.621784, 53.697517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.699604, 35.289036, 53.627018>,  <33.573307, 35.089386, 53.584721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.699604, 35.289036, 53.627018>,  <33.910103, 35.621784, 53.697517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699604, 35.289036, 53.627018> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113116, -0.136941, 0.984100,
		-0.842776, 0.537813, -0.022033,
		-0.526244, -0.831868, -0.176246,
		33.541729, 35.039474, 53.574142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340714, 35.634289, 54.198208>,  <33.910103, 35.621784, 53.697517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340714, 35.634289, 54.198208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337570, 35.254612, 54.072365>,  <33.335686, 35.026806, 53.996857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.337570, 35.254612, 54.072365>,  <33.340714, 35.634289, 54.198208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337570, 35.254612, 54.072365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021556, -0.314387, 0.949050,
		-0.999737, 0.014235, -0.017991,
		-0.007854, -0.949188, -0.314611,
		33.335213, 34.969856, 53.977982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814278, 35.374695, 54.493500>,  <33.340714, 35.634289, 54.198208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814278, 35.374695, 54.493500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.044407, 35.055439, 54.421967>,  <33.182484, 34.863884, 54.379047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.044407, 35.055439, 54.421967>,  <32.814278, 35.374695, 54.493500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044407, 35.055439, 54.421967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249896, -0.379709, 0.890715,
		-0.778820, -0.467755, -0.417906,
		0.575319, -0.798139, -0.178835,
		33.217003, 34.815998, 54.368317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446056, 34.817707, 54.632114>,  <32.814278, 35.374695, 54.493500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446056, 34.817707, 54.632114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.822235, 34.686222, 54.666767>,  <33.047943, 34.607330, 54.687561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.822235, 34.686222, 54.666767>,  <32.446056, 34.817707, 54.632114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822235, 34.686222, 54.666767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222695, -0.403198, 0.887602,
		-0.256834, -0.854037, -0.452390,
		0.940448, -0.328712, 0.086635,
		33.104370, 34.587608, 54.692757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.205761, 37.466110, 39.269733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439331, 37.147621, 39.333054>,  <35.579472, 36.956528, 39.371048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439331, 37.147621, 39.333054>,  <35.205761, 37.466110, 39.269733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439331, 37.147621, 39.333054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022455, 0.179086, 0.983577,
		-0.811497, -0.577890, 0.086694,
		0.583925, -0.796223, 0.158304,
		35.614510, 36.908752, 39.380547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797596, 36.916378, 39.658226>,  <35.205761, 37.466110, 39.269733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797596, 36.916378, 39.658226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193466, 36.950706, 39.704151>,  <35.430988, 36.971306, 39.731705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193466, 36.950706, 39.704151>,  <34.797596, 36.916378, 39.658226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193466, 36.950706, 39.704151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130949, 0.215565, 0.967669,
		0.058298, -0.972711, 0.224577,
		0.989673, 0.085822, 0.114809,
		35.490368, 36.976452, 39.738594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986736, 36.420776, 40.170391>,  <34.797596, 36.916378, 39.658226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986736, 36.420776, 40.170391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227814, 36.738316, 40.137981>,  <35.372459, 36.928837, 40.118534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227814, 36.738316, 40.137981>,  <34.986736, 36.420776, 40.170391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227814, 36.738316, 40.137981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188614, 0.240383, 0.952177,
		0.775359, -0.558591, 0.294609,
		0.602697, 0.793846, -0.081025,
		35.408623, 36.976471, 40.113674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313633, 36.349785, 40.805981>,  <34.986736, 36.420776, 40.170391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313633, 36.349785, 40.805981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364895, 36.721901, 40.668499>,  <35.395653, 36.945171, 40.586010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364895, 36.721901, 40.668499>,  <35.313633, 36.349785, 40.805981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364895, 36.721901, 40.668499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050446, 0.352230, 0.934553,
		0.990470, -0.102429, 0.092070,
		0.128155, 0.930291, -0.343707,
		35.403343, 37.000988, 40.565388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829338, 36.609848, 41.244667>,  <35.313633, 36.349785, 40.805981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829338, 36.609848, 41.244667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631077, 36.920502, 41.089146>,  <35.512119, 37.106895, 40.995834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.631077, 36.920502, 41.089146>,  <35.829338, 36.609848, 41.244667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631077, 36.920502, 41.089146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166045, 0.524138, 0.835290,
		0.852499, 0.349458, -0.388748,
		-0.495656, 0.776633, -0.388801,
		35.482380, 37.153492, 40.972504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018791, 37.233078, 41.663815>,  <35.829338, 36.609848, 41.244667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018791, 37.233078, 41.663815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705688, 37.398914, 41.478168>,  <35.517826, 37.498417, 41.366783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705688, 37.398914, 41.478168>,  <36.018791, 37.233078, 41.663815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705688, 37.398914, 41.478168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258671, 0.461546, 0.848566,
		0.566019, 0.784275, -0.254036,
		-0.782759, 0.414593, -0.464113,
		35.470860, 37.523293, 41.338936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056034, 38.043892, 41.835316>,  <36.018791, 37.233078, 41.663815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056034, 38.043892, 41.835316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684093, 37.972389, 41.706680>,  <35.460930, 37.929485, 41.629498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684093, 37.972389, 41.706680>,  <36.056034, 38.043892, 41.835316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684093, 37.972389, 41.706680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366363, 0.369159, 0.854108,
		-0.033963, 0.912012, -0.408754,
		-0.929852, -0.178760, -0.321590,
		35.405136, 37.918762, 41.610203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561680, 38.706791, 41.947731>,  <36.056034, 38.043892, 41.835316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561680, 38.706791, 41.947731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351059, 38.366741, 41.945847>,  <35.224686, 38.162712, 41.944714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351059, 38.366741, 41.945847>,  <35.561680, 38.706791, 41.947731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351059, 38.366741, 41.945847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490681, 0.299380, 0.818293,
		-0.694243, 0.433189, -0.574781,
		-0.526554, -0.850129, -0.004715,
		35.193092, 38.111702, 41.944431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040104, 38.936699, 42.195518>,  <35.561680, 38.706791, 41.947731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040104, 38.936699, 42.195518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975716, 38.544373, 42.239487>,  <34.937080, 38.308975, 42.265865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975716, 38.544373, 42.239487>,  <35.040104, 38.936699, 42.195518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975716, 38.544373, 42.239487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575133, 0.183729, 0.797161,
		-0.802066, 0.065106, -0.593677,
		-0.160975, -0.980819, 0.109919,
		34.927422, 38.250126, 42.272461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366558, 38.865227, 42.458767>,  <35.040104, 38.936699, 42.195518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366558, 38.865227, 42.458767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501137, 38.499981, 42.550880>,  <34.581882, 38.280834, 42.606148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501137, 38.499981, 42.550880>,  <34.366558, 38.865227, 42.458767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501137, 38.499981, 42.550880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463592, 0.052257, 0.884506,
		-0.819686, -0.404348, -0.405730,
		0.336447, -0.913111, 0.230287,
		34.602070, 38.226048, 42.619965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816525, 38.493572, 42.721405>,  <34.366558, 38.865227, 42.458767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816525, 38.493572, 42.721405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153202, 38.328541, 42.860737>,  <34.355209, 38.229523, 42.944336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153202, 38.328541, 42.860737>,  <33.816525, 38.493572, 42.721405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153202, 38.328541, 42.860737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391655, -0.022411, 0.919839,
		-0.371699, -0.910646, -0.180452,
		0.841693, -0.412578, 0.348329,
		34.405708, 38.204769, 42.965237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548000, 38.070282, 43.247356>,  <33.816525, 38.493572, 42.721405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548000, 38.070282, 43.247356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942200, 38.090515, 43.312149>,  <34.178719, 38.102654, 43.351025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942200, 38.090515, 43.312149>,  <33.548000, 38.070282, 43.247356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942200, 38.090515, 43.312149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164668, 0.054336, 0.984851,
		0.040987, -0.997242, 0.061872,
		0.985497, 0.050554, 0.161987,
		34.237850, 38.105690, 43.360744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250839, 37.264099, 43.318104>,  <33.548000, 38.070282, 43.247356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250839, 37.264099, 43.318104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871101, 37.389481, 43.326958>,  <32.643257, 37.464710, 43.332272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871101, 37.389481, 43.326958>,  <33.250839, 37.264099, 43.318104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871101, 37.389481, 43.326958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026516, -0.009720, -0.999601,
		-0.313112, -0.949555, 0.017539,
		-0.949346, 0.313452, 0.022135,
		32.586296, 37.483517, 43.333599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861565, 36.865978, 42.819786>,  <33.250839, 37.264099, 43.318104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861565, 36.865978, 42.819786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646351, 37.193222, 42.900997>,  <32.517223, 37.389568, 42.949722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646351, 37.193222, 42.900997>,  <32.861565, 36.865978, 42.819786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646351, 37.193222, 42.900997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145312, 0.147234, -0.978369,
		-0.830304, -0.555898, 0.039664,
		-0.538033, 0.818108, 0.203028,
		32.484940, 37.438656, 42.961906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278843, 36.823753, 42.460522>,  <32.861565, 36.865978, 42.819786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278843, 36.823753, 42.460522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267670, 37.215557, 42.540306>,  <32.260967, 37.450638, 42.588177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267670, 37.215557, 42.540306>,  <32.278843, 36.823753, 42.460522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267670, 37.215557, 42.540306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402723, 0.171606, -0.899091,
		-0.914896, -0.105441, 0.389677,
		-0.027930, 0.979506, 0.199465,
		32.259289, 37.509411, 42.600147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.625370, 37.079643, 42.129360>,  <32.278843, 36.823753, 42.460522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.625370, 37.079643, 42.129360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870686, 37.393948, 42.161518>,  <32.017876, 37.582531, 42.180813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870686, 37.393948, 42.161518>,  <31.625370, 37.079643, 42.129360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870686, 37.393948, 42.161518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198831, 0.252087, -0.947058,
		-0.764425, 0.564833, 0.310835,
		0.613287, 0.785758, 0.080395,
		32.054672, 37.629677, 42.185638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261461, 37.553642, 41.793682>,  <31.625370, 37.079643, 42.129360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261461, 37.553642, 41.793682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637234, 37.690674, 41.789600>,  <31.862698, 37.772892, 41.787151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.637234, 37.690674, 41.789600>,  <31.261461, 37.553642, 41.793682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.637234, 37.690674, 41.789600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082439, 0.196956, -0.976940,
		-0.332671, 0.918611, 0.213269,
		0.939433, 0.342581, -0.010208,
		31.919064, 37.793449, 41.786537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319407, 38.159546, 41.425434>,  <31.261461, 37.553642, 41.793682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319407, 38.159546, 41.425434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681286, 37.990089, 41.407345>,  <31.898415, 37.888416, 41.396492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681286, 37.990089, 41.407345>,  <31.319407, 38.159546, 41.425434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681286, 37.990089, 41.407345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006128, 0.093188, -0.995630,
		0.426006, 0.901023, 0.081711,
		0.904700, -0.423644, -0.045220,
		31.952696, 37.862995, 41.393780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575619, 38.501270, 40.818989>,  <31.319407, 38.159546, 41.425434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575619, 38.501270, 40.818989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862053, 38.225632, 40.863476>,  <32.033913, 38.060249, 40.890167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862053, 38.225632, 40.863476>,  <31.575619, 38.501270, 40.818989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862053, 38.225632, 40.863476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098545, -0.057937, -0.993444,
		0.691021, 0.722351, 0.026419,
		0.716085, -0.689095, 0.111220,
		32.076878, 38.018902, 40.896843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104858, 38.648228, 40.484501>,  <31.575619, 38.501270, 40.818989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104858, 38.648228, 40.484501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125561, 38.249729, 40.512257>,  <32.137981, 38.010632, 40.528912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125561, 38.249729, 40.512257>,  <32.104858, 38.648228, 40.484501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125561, 38.249729, 40.512257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023237, -0.070669, -0.997229,
		0.998390, 0.049998, -0.026807,
		0.051754, -0.996246, 0.069394,
		32.141087, 37.950855, 40.533073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615314, 38.391129, 39.888699>,  <32.104858, 38.648228, 40.484501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615314, 38.391129, 39.888699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387905, 38.081818, 40.000992>,  <32.251457, 37.896229, 40.068367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387905, 38.081818, 40.000992>,  <32.615314, 38.391129, 39.888699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387905, 38.081818, 40.000992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060412, -0.301087, -0.951681,
		0.820444, -0.558016, 0.124460,
		-0.568527, -0.773282, 0.280736,
		32.217346, 37.849834, 40.085213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748306, 38.030449, 39.315838>,  <32.615314, 38.391129, 39.888699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748306, 38.030449, 39.315838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483711, 37.781590, 39.483345>,  <32.324955, 37.632275, 39.583847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483711, 37.781590, 39.483345>,  <32.748306, 38.030449, 39.315838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483711, 37.781590, 39.483345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127153, -0.457261, -0.880196,
		0.739099, -0.635485, 0.223364,
		-0.661487, -0.622151, 0.418765,
		32.285267, 37.594944, 39.608974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021564, 37.314819, 39.238861>,  <32.748306, 38.030449, 39.315838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021564, 37.314819, 39.238861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622631, 37.293446, 39.258747>,  <32.383270, 37.280621, 39.270679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622631, 37.293446, 39.258747>,  <33.021564, 37.314819, 39.238861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622631, 37.293446, 39.258747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011834, -0.553750, -0.832599,
		0.072022, -0.830966, 0.551641,
		-0.997333, -0.053438, 0.049716,
		32.323433, 37.277416, 39.273663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881504, 36.574390, 38.989799>,  <33.021564, 37.314819, 39.238861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881504, 36.574390, 38.989799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561245, 36.811501, 38.954998>,  <32.369087, 36.953766, 38.934116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.561245, 36.811501, 38.954998>,  <32.881504, 36.574390, 38.989799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561245, 36.811501, 38.954998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133842, -0.318519, -0.938420,
		-0.583989, -0.739702, 0.334362,
		-0.800651, 0.592779, -0.087008,
		32.321049, 36.989334, 38.928894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533428, 36.552952, 38.929970>,  <32.881504, 36.574390, 38.989799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533428, 36.552952, 38.929970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925117, 36.594833, 38.999439>,  <34.160130, 36.619961, 39.041122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925117, 36.594833, 38.999439>,  <33.533428, 36.552952, 38.929970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925117, 36.594833, 38.999439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072035, -0.980145, 0.184736,
		0.189570, -0.168387, -0.967321,
		0.979221, 0.104701, 0.173677,
		34.218884, 36.626244, 39.051540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864750, 35.939095, 38.677483>,  <33.533428, 36.552952, 38.929970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864750, 35.939095, 38.677483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089981, 36.262035, 38.606918>,  <34.225121, 36.455799, 38.564579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.089981, 36.262035, 38.606918>,  <33.864750, 35.939095, 38.677483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089981, 36.262035, 38.606918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657177, -0.308031, 0.687921,
		0.501056, -0.503287, -0.704021,
		0.563082, 0.807353, -0.176408,
		34.258907, 36.504242, 38.553997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886406, 35.328285, 38.542076>,  <33.864750, 35.939095, 38.677483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886406, 35.328285, 38.542076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834480, 35.387634, 38.934227>,  <33.803326, 35.423244, 39.169518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834480, 35.387634, 38.934227>,  <33.886406, 35.328285, 38.542076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834480, 35.387634, 38.934227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236545, -0.955558, 0.175943,
		0.962909, 0.254743, 0.088950,
		-0.129817, 0.148376, 0.980373,
		33.795536, 35.432148, 39.228340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560535, 35.161373, 38.905373>,  <33.886406, 35.328285, 38.542076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560535, 35.161373, 38.905373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409687, 34.835316, 38.729496>,  <34.319180, 34.639683, 38.623970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.409687, 34.835316, 38.729496>,  <34.560535, 35.161373, 38.905373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409687, 34.835316, 38.729496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831725, -0.089216, -0.547973,
		0.407447, -0.572352, 0.711618,
		-0.377121, -0.815140, -0.439689,
		34.296551, 34.590775, 38.597588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967945, 34.753506, 39.446304>,  <34.560535, 35.161373, 38.905373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967945, 34.753506, 39.446304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573273, 34.803082, 39.404156>,  <34.336472, 34.832829, 39.378868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.573273, 34.803082, 39.404156>,  <34.967945, 34.753506, 39.446304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573273, 34.803082, 39.404156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036362, -0.799348, -0.599767,
		-0.158563, -0.587946, 0.793207,
		-0.986679, 0.123943, -0.105368,
		34.277267, 34.840263, 39.372543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724857, 34.296936, 38.848484>,  <34.967945, 34.753506, 39.446304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724857, 34.296936, 38.848484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083374, 34.271999, 39.024109>,  <35.298485, 34.257038, 39.129482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083374, 34.271999, 39.024109>,  <34.724857, 34.296936, 38.848484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083374, 34.271999, 39.024109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368985, -0.654034, 0.660371,
		0.245990, -0.753892, -0.609210,
		0.896292, -0.062345, 0.439061,
		35.352261, 34.253296, 39.155827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663013, 33.655388, 39.151340>,  <34.724857, 34.296936, 38.848484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663013, 33.655388, 39.151340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996937, 33.799873, 39.317528>,  <35.197292, 33.886566, 39.417240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996937, 33.799873, 39.317528>,  <34.663013, 33.655388, 39.151340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996937, 33.799873, 39.317528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130527, -0.603274, 0.786780,
		0.534837, -0.711043, -0.456472,
		0.834813, 0.361218, 0.415464,
		35.247379, 33.908237, 39.442165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130299, 33.121849, 39.323605>,  <34.663013, 33.655388, 39.151340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130299, 33.121849, 39.323605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182159, 33.428986, 39.574558>,  <35.213276, 33.613266, 39.725132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.182159, 33.428986, 39.574558>,  <35.130299, 33.121849, 39.323605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182159, 33.428986, 39.574558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083211, -0.622069, 0.778528,
		0.988061, -0.153146, -0.016762,
		0.129656, 0.767839, 0.627386,
		35.221058, 33.659336, 39.762775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610085, 32.889370, 39.999958>,  <35.130299, 33.121849, 39.323605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610085, 32.889370, 39.999958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412708, 33.215057, 40.122307>,  <35.294285, 33.410469, 40.195717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412708, 33.215057, 40.122307>,  <35.610085, 32.889370, 39.999958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412708, 33.215057, 40.122307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166656, -0.433661, 0.885530,
		0.853665, 0.385978, 0.349680,
		-0.493438, 0.814223, 0.305876,
		35.264675, 33.459324, 40.214069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003841, 33.154228, 40.593189>,  <35.610085, 32.889370, 39.999958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003841, 33.154228, 40.593189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620495, 33.264603, 40.622551>,  <35.390488, 33.330830, 40.640167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620495, 33.264603, 40.622551>,  <36.003841, 33.154228, 40.593189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620495, 33.264603, 40.622551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050794, -0.417719, 0.907155,
		0.280979, 0.865661, 0.414345,
		-0.958369, 0.275938, 0.073400,
		35.332985, 33.347385, 40.644569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945683, 33.395119, 41.278118>,  <36.003841, 33.154228, 40.593189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945683, 33.395119, 41.278118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568573, 33.319920, 41.167973>,  <35.342308, 33.274799, 41.101883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.568573, 33.319920, 41.167973>,  <35.945683, 33.395119, 41.278118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568573, 33.319920, 41.167973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158190, -0.474808, 0.865756,
		-0.293505, 0.859776, 0.417899,
		-0.942778, -0.187996, -0.275366,
		35.285740, 33.263519, 41.085361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608276, 33.567333, 41.834469>,  <35.945683, 33.395119, 41.278118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608276, 33.567333, 41.834469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336426, 33.338238, 41.651131>,  <35.173313, 33.200783, 41.541126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336426, 33.338238, 41.651131>,  <35.608276, 33.567333, 41.834469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336426, 33.338238, 41.651131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285081, -0.369492, 0.884423,
		-0.675895, 0.731745, 0.087841,
		-0.679628, -0.572735, -0.458345,
		35.132538, 33.166416, 41.513626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061478, 33.685932, 42.183739>,  <35.608276, 33.567333, 41.834469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061478, 33.685932, 42.183739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978386, 33.342861, 41.995594>,  <34.928532, 33.137020, 41.882706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978386, 33.342861, 41.995594>,  <35.061478, 33.685932, 42.183739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978386, 33.342861, 41.995594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498091, -0.321102, 0.805480,
		-0.841875, 0.401606, -0.360498,
		-0.207729, -0.857675, -0.470364,
		34.916069, 33.085560, 41.854485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335571, 33.476852, 42.196556>,  <35.061478, 33.685932, 42.183739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335571, 33.476852, 42.196556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525024, 33.128014, 42.147369>,  <34.638699, 32.918713, 42.117859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525024, 33.128014, 42.147369>,  <34.335571, 33.476852, 42.196556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525024, 33.128014, 42.147369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350654, -0.314802, 0.882010,
		-0.807905, -0.374633, -0.454905,
		0.473635, -0.872095, -0.122964,
		34.667114, 32.866386, 42.110481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867195, 33.041336, 42.369198>,  <34.335571, 33.476852, 42.196556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867195, 33.041336, 42.369198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202736, 32.823620, 42.372684>,  <34.404060, 32.692989, 42.374779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202736, 32.823620, 42.372684>,  <33.867195, 33.041336, 42.369198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202736, 32.823620, 42.372684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217102, -0.319818, 0.922271,
		-0.499193, -0.775542, -0.386446,
		0.838852, -0.544289, 0.008720,
		34.454391, 32.660332, 42.375301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620888, 32.496658, 42.710541>,  <33.867195, 33.041336, 42.369198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620888, 32.496658, 42.710541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018738, 32.498810, 42.751900>,  <34.257446, 32.500099, 42.776714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018738, 32.498810, 42.751900>,  <33.620888, 32.496658, 42.710541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018738, 32.498810, 42.751900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099261, -0.234616, 0.967007,
		0.029460, -0.972073, -0.232822,
		0.994625, 0.005377, 0.103401,
		34.317127, 32.500423, 42.782921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759315, 31.958189, 43.164688>,  <33.620888, 32.496658, 42.710541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759315, 31.958189, 43.164688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066017, 32.214405, 43.181614>,  <34.250038, 32.368134, 43.191769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.066017, 32.214405, 43.181614>,  <33.759315, 31.958189, 43.164688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066017, 32.214405, 43.181614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095835, -0.179397, 0.979098,
		0.634743, -0.746676, -0.198940,
		0.766758, 0.640540, 0.042314,
		34.296043, 32.406567, 43.194309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291149, 31.526878, 43.531929>,  <33.759315, 31.958189, 43.164688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291149, 31.526878, 43.531929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360931, 31.920053, 43.555252>,  <34.402802, 32.155960, 43.569244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360931, 31.920053, 43.555252>,  <34.291149, 31.526878, 43.531929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360931, 31.920053, 43.555252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170247, -0.088431, 0.981425,
		0.969835, -0.161293, -0.182769,
		0.174460, 0.982937, 0.058304,
		34.413269, 32.214935, 43.572742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871571, 31.550817, 43.896351>,  <34.291149, 31.526878, 43.531929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871571, 31.550817, 43.896351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717514, 31.918423, 43.930008>,  <34.625080, 32.138985, 43.950203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717514, 31.918423, 43.930008>,  <34.871571, 31.550817, 43.896351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717514, 31.918423, 43.930008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113071, -0.043498, 0.992634,
		0.915905, 0.391818, -0.087161,
		-0.385140, 0.919014, 0.084143,
		34.601971, 32.194126, 43.955250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305504, 31.909452, 44.412685>,  <34.871571, 31.550817, 43.896351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305504, 31.909452, 44.412685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943920, 32.078388, 44.385868>,  <34.726971, 32.179749, 44.369778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943920, 32.078388, 44.385868>,  <35.305504, 31.909452, 44.412685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943920, 32.078388, 44.385868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004272, 0.147860, 0.988999,
		0.427607, 0.894297, -0.131855,
		-0.903955, 0.422340, -0.067046,
		34.672733, 32.205090, 44.365753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326511, 32.511189, 44.834309>,  <35.305504, 31.909452, 44.412685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326511, 32.511189, 44.834309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943020, 32.413586, 44.775921>,  <34.712925, 32.355026, 44.740887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943020, 32.413586, 44.775921>,  <35.326511, 32.511189, 44.834309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943020, 32.413586, 44.775921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127291, -0.090735, 0.987706,
		-0.254248, 0.965520, 0.055931,
		-0.958726, -0.244003, -0.145971,
		34.655403, 32.340385, 44.732128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994835, 32.895683, 45.310123>,  <35.326511, 32.511189, 44.834309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994835, 32.895683, 45.310123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733559, 32.604702, 45.226070>,  <34.576794, 32.430115, 45.175640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733559, 32.604702, 45.226070>,  <34.994835, 32.895683, 45.310123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733559, 32.604702, 45.226070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247011, -0.057619, 0.967298,
		-0.715772, 0.683733, -0.142053,
		-0.653189, -0.727454, -0.210132,
		34.537601, 32.386467, 45.163033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252380, 33.152431, 45.542786>,  <34.994835, 32.895683, 45.310123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252380, 33.152431, 45.542786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228657, 32.753624, 45.523056>,  <34.214424, 32.514339, 45.511219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228657, 32.753624, 45.523056>,  <34.252380, 33.152431, 45.542786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228657, 32.753624, 45.523056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354040, -0.025192, 0.934891,
		-0.933348, 0.072907, -0.351491,
		-0.059305, -0.997020, -0.049325,
		34.210865, 32.454517, 45.508259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801716, 32.992947, 46.035023>,  <34.252380, 33.152431, 45.542786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801716, 32.992947, 46.035023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935772, 32.624802, 45.954418>,  <34.016205, 32.403915, 45.906055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935772, 32.624802, 45.954418>,  <33.801716, 32.992947, 46.035023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935772, 32.624802, 45.954418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309142, -0.309464, 0.899257,
		-0.890005, -0.239085, -0.388238,
		0.335144, -0.920364, -0.201513,
		34.036316, 32.348694, 45.893963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217743, 32.435627, 46.180225>,  <33.801716, 32.992947, 46.035023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217743, 32.435627, 46.180225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579144, 32.266212, 46.206429>,  <33.795986, 32.164562, 46.222153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579144, 32.266212, 46.206429>,  <33.217743, 32.435627, 46.180225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579144, 32.266212, 46.206429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287590, -0.485829, 0.825386,
		-0.317756, -0.764581, -0.560755,
		0.903506, -0.423539, 0.065511,
		33.850197, 32.139153, 46.226082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174099, 31.622450, 46.037266>,  <33.217743, 32.435627, 46.180225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174099, 31.622450, 46.037266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493118, 31.739239, 46.248421>,  <33.684532, 31.809313, 46.375114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493118, 31.739239, 46.248421>,  <33.174099, 31.622450, 46.037266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493118, 31.739239, 46.248421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375250, -0.445042, 0.813096,
		0.472334, -0.846575, -0.245381,
		0.797551, 0.291973, 0.527886,
		33.732384, 31.826830, 46.406788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399902, 31.038546, 46.457390>,  <33.174099, 31.622450, 46.037266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399902, 31.038546, 46.457390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597534, 31.333105, 46.642258>,  <33.716114, 31.509840, 46.753178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597534, 31.333105, 46.642258>,  <33.399902, 31.038546, 46.457390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597534, 31.333105, 46.642258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160334, -0.445289, 0.880915,
		0.854503, -0.509346, -0.101940,
		0.494083, 0.736399, 0.462167,
		33.745758, 31.554026, 46.780907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762489, 30.670267, 46.925674>,  <33.399902, 31.038546, 46.457390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762489, 30.670267, 46.925674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782410, 31.045307, 47.063328>,  <33.794361, 31.270330, 47.145920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.782410, 31.045307, 47.063328>,  <33.762489, 30.670267, 46.925674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782410, 31.045307, 47.063328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052603, -0.341622, 0.938364,
		0.997373, -0.064836, 0.032307,
		0.049803, 0.937599, 0.344135,
		33.797352, 31.326586, 47.166569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111095, 30.508974, 47.467281>,  <33.762489, 30.670267, 46.925674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111095, 30.508974, 47.467281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957714, 30.872475, 47.533176>,  <33.865685, 31.090574, 47.572712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957714, 30.872475, 47.533176>,  <34.111095, 30.508974, 47.467281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957714, 30.872475, 47.533176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057227, -0.201406, 0.977835,
		0.921786, 0.365526, 0.129235,
		-0.383453, 0.908750, 0.164735,
		33.842678, 31.145100, 47.582596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467155, 30.819914, 48.020222>,  <34.111095, 30.508974, 47.467281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467155, 30.819914, 48.020222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106628, 30.993134, 48.024311>,  <33.890312, 31.097065, 48.026764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106628, 30.993134, 48.024311>,  <34.467155, 30.819914, 48.020222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106628, 30.993134, 48.024311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088512, -0.207233, 0.974279,
		0.424028, 0.877225, 0.225112,
		-0.901313, 0.433047, 0.010228,
		33.836235, 31.123047, 48.027378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965710, 31.239845, 47.880558>,  <34.467155, 30.819914, 48.020222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965710, 31.239845, 47.880558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339527, 31.295557, 48.011539>,  <35.563816, 31.328983, 48.090130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339527, 31.295557, 48.011539>,  <34.965710, 31.239845, 47.880558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339527, 31.295557, 48.011539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342069, -0.098054, -0.934545,
		-0.098054, 0.985387, -0.139279,
		0.934545, 0.139279, 0.327456,
		35.619892, 31.337341, 48.109776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354473, 31.829630, 47.537968>,  <34.965710, 31.239845, 47.880558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354473, 31.829630, 47.537968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626995, 31.559961, 47.652035>,  <35.790508, 31.398161, 47.720474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626995, 31.559961, 47.652035>,  <35.354473, 31.829630, 47.537968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626995, 31.559961, 47.652035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451342, 0.080194, -0.888740,
		0.576294, 0.734209, 0.358918,
		0.681304, -0.674170, 0.285165,
		35.831387, 31.357710, 47.737583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981823, 32.165741, 47.364761>,  <35.354473, 31.829630, 47.537968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981823, 32.165741, 47.364761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071419, 31.777576, 47.400833>,  <36.125175, 31.544678, 47.422478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071419, 31.777576, 47.400833>,  <35.981823, 32.165741, 47.364761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071419, 31.777576, 47.400833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591535, 0.061831, -0.803905,
		0.774541, 0.233414, 0.587881,
		0.223992, -0.970410, 0.090181,
		36.138615, 31.486454, 47.427887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797329, 32.081699, 47.299671>,  <35.981823, 32.165741, 47.364761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797329, 32.081699, 47.299671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653069, 31.714499, 47.233692>,  <36.566513, 31.494179, 47.194103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653069, 31.714499, 47.233692>,  <36.797329, 32.081699, 47.299671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653069, 31.714499, 47.233692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661512, -0.127085, -0.739088,
		0.657521, -0.375666, 0.653101,
		-0.360650, -0.918000, -0.164947,
		36.544872, 31.439098, 47.184208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355980, 31.613308, 47.291336>,  <36.797329, 32.081699, 47.299671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355980, 31.613308, 47.291336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054310, 31.458046, 47.079468>,  <36.873306, 31.364889, 46.952347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054310, 31.458046, 47.079468>,  <37.355980, 31.613308, 47.291336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054310, 31.458046, 47.079468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602087, -0.086771, -0.793702,
		0.262117, -0.917501, 0.299142,
		-0.754179, -0.388152, -0.529672,
		36.828056, 31.341600, 46.920567>
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
