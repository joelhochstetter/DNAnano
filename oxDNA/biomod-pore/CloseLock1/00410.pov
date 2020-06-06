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
	<24.159163, 35.544796, 34.851765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222109, 35.267262, 35.132854>,  <24.259876, 35.100742, 35.301510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.222109, 35.267262, 35.132854>,  <24.159163, 35.544796, 34.851765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.222109, 35.267262, 35.132854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670043, -0.447721, -0.592105,
		0.725450, 0.564035, 0.394444,
		0.157367, -0.693837, 0.702727,
		24.269320, 35.059109, 35.343674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.900537, 35.477623, 34.993393>,  <24.159163, 35.544796, 34.851765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.900537, 35.477623, 34.993393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720762, 35.132656, 35.086555>,  <24.612896, 34.925678, 35.142452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.720762, 35.132656, 35.086555>,  <24.900537, 35.477623, 34.993393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.720762, 35.132656, 35.086555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660277, -0.496322, -0.563648,
		0.601696, -0.099541, 0.792498,
		-0.449440, -0.862413, 0.232910,
		24.585930, 34.873932, 35.156429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.316589, 35.010212, 35.140335>,  <24.900537, 35.477623, 34.993393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.316589, 35.010212, 35.140335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020798, 34.834068, 34.936665>,  <24.843323, 34.728382, 34.814465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020798, 34.834068, 34.936665>,  <25.316589, 35.010212, 35.140335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020798, 34.834068, 34.936665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672885, -0.505893, -0.539720,
		-0.019916, -0.741726, 0.670408,
		-0.739479, -0.440358, -0.509172,
		24.798954, 34.701962, 34.783913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390017, 34.272820, 35.155407>,  <25.316589, 35.010212, 35.140335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390017, 34.272820, 35.155407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211048, 34.357952, 34.807957>,  <25.103666, 34.409031, 34.599487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.211048, 34.357952, 34.807957>,  <25.390017, 34.272820, 35.155407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.211048, 34.357952, 34.807957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647355, -0.593061, -0.478759,
		-0.617047, -0.776518, 0.127567,
		-0.447420, 0.212836, -0.868629,
		25.076822, 34.421803, 34.547367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.955082, 33.721455, 34.741028>,  <25.390017, 34.272820, 35.155407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.955082, 33.721455, 34.741028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133390, 33.995937, 34.511101>,  <25.240376, 34.160625, 34.373146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.133390, 33.995937, 34.511101>,  <24.955082, 33.721455, 34.741028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.133390, 33.995937, 34.511101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445188, -0.727050, -0.522691,
		-0.776591, -0.022900, -0.629588,
		0.445772, 0.686202, -0.574816,
		25.267122, 34.201797, 34.338657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.760834, 33.634613, 34.108311>,  <24.955082, 33.721455, 34.741028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.760834, 33.634613, 34.108311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.122047, 33.806332, 34.114410>,  <25.338776, 33.909363, 34.118069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.122047, 33.806332, 34.114410>,  <24.760834, 33.634613, 34.108311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.122047, 33.806332, 34.114410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358840, -0.734364, -0.576145,
		-0.236143, 0.525749, -0.817205,
		0.903034, 0.429299, 0.015245,
		25.392958, 33.935120, 34.118984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.991730, 33.602036, 33.371998>,  <24.760834, 33.634613, 34.108311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.991730, 33.602036, 33.371998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291842, 33.631882, 33.634758>,  <25.471909, 33.649792, 33.792412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291842, 33.631882, 33.634758>,  <24.991730, 33.602036, 33.371998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291842, 33.631882, 33.634758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411654, -0.830220, -0.375867,
		0.517321, 0.552419, -0.653614,
		0.750280, 0.074619, 0.656896,
		25.516926, 33.654266, 33.831825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590460, 33.500481, 32.915325>,  <24.991730, 33.602036, 33.371998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590460, 33.500481, 32.915325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675327, 33.419434, 33.297726>,  <25.726248, 33.370804, 33.527164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675327, 33.419434, 33.297726>,  <25.590460, 33.500481, 32.915325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675327, 33.419434, 33.297726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318009, -0.910707, -0.263596,
		0.924043, 0.359943, -0.128789,
		0.212168, -0.202617, 0.955997,
		25.738977, 33.358650, 33.584526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098530, 33.073742, 32.896049>,  <25.590460, 33.500481, 32.915325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098530, 33.073742, 32.896049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014404, 33.013496, 33.282436>,  <25.963930, 32.977348, 33.514267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.014404, 33.013496, 33.282436>,  <26.098530, 33.073742, 32.896049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.014404, 33.013496, 33.282436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222813, -0.969443, -0.102642,
		0.951905, 0.193643, 0.237444,
		-0.210312, -0.150611, 0.965963,
		25.951311, 32.968311, 33.572224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728426, 32.703773, 33.175167>,  <26.098530, 33.073742, 32.896049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728426, 32.703773, 33.175167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419075, 32.621799, 33.415127>,  <26.233463, 32.572613, 33.559105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419075, 32.621799, 33.415127>,  <26.728426, 32.703773, 33.175167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419075, 32.621799, 33.415127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344548, -0.930220, 0.126400,
		0.532138, 0.304450, 0.790024,
		-0.773379, -0.204939, 0.599904,
		26.187061, 32.560318, 33.595097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019684, 32.347210, 33.699425>,  <26.728426, 32.703773, 33.175167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019684, 32.347210, 33.699425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633421, 32.244537, 33.715504>,  <26.401663, 32.182934, 33.725151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633421, 32.244537, 33.715504>,  <27.019684, 32.347210, 33.699425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633421, 32.244537, 33.715504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259631, -0.959167, 0.112204,
		0.009755, 0.118787, 0.992872,
		-0.965659, -0.256686, 0.040197,
		26.343723, 32.167530, 33.727562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.008978, 31.895000, 34.246723>,  <27.019684, 32.347210, 33.699425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.008978, 31.895000, 34.246723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657488, 31.809479, 34.076019>,  <26.446594, 31.758165, 33.973595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657488, 31.809479, 34.076019>,  <27.008978, 31.895000, 34.246723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657488, 31.809479, 34.076019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093709, -0.953946, 0.284967,
		-0.468038, 0.210416, 0.858292,
		-0.878726, -0.213805, -0.426764,
		26.393869, 31.745337, 33.947990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604937, 31.512718, 34.702148>,  <27.008978, 31.895000, 34.246723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604937, 31.512718, 34.702148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.424166, 31.443634, 34.352077>,  <26.315702, 31.402184, 34.142036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.424166, 31.443634, 34.352077>,  <26.604937, 31.512718, 34.702148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.424166, 31.443634, 34.352077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151930, -0.951843, 0.266293,
		-0.879021, 0.253311, 0.403925,
		-0.451928, -0.172709, -0.875176,
		26.288588, 31.391821, 34.089523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.034334, 31.149931, 34.857769>,  <26.604937, 31.512718, 34.702148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.034334, 31.149931, 34.857769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140070, 31.082516, 34.477932>,  <26.203510, 31.042067, 34.250031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140070, 31.082516, 34.477932>,  <26.034334, 31.149931, 34.857769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140070, 31.082516, 34.477932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066431, -0.985456, 0.156410,
		-0.962139, 0.021738, -0.271690,
		0.264338, -0.168536, -0.949590,
		26.219372, 31.031956, 34.193054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.587488, 30.716677, 34.616230>,  <26.034334, 31.149931, 34.857769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.587488, 30.716677, 34.616230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869421, 30.687496, 34.333984>,  <26.038580, 30.669987, 34.164639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.869421, 30.687496, 34.333984>,  <25.587488, 30.716677, 34.616230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.869421, 30.687496, 34.333984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029411, -0.996848, 0.073686,
		-0.708765, -0.031184, -0.704755,
		0.704832, -0.072954, -0.705613,
		26.080870, 30.665609, 34.122299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317944, 30.322342, 34.117996>,  <25.587488, 30.716677, 34.616230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317944, 30.322342, 34.117996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712660, 30.264828, 34.088146>,  <25.949490, 30.230320, 34.070236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712660, 30.264828, 34.088146>,  <25.317944, 30.322342, 34.117996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712660, 30.264828, 34.088146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145174, -0.989314, -0.013501,
		-0.071884, 0.024155, -0.997120,
		0.986792, -0.143785, -0.074622,
		26.008698, 30.221693, 34.065758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.393610, 29.789160, 33.590389>,  <25.317944, 30.322342, 34.117996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.393610, 29.789160, 33.590389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729609, 29.795542, 33.807331>,  <25.931208, 29.799372, 33.937496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.729609, 29.795542, 33.807331>,  <25.393610, 29.789160, 33.590389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.729609, 29.795542, 33.807331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049534, -0.997649, -0.047366,
		0.540328, 0.066652, -0.838811,
		0.839995, 0.015956, 0.542359,
		25.981607, 29.800329, 33.970039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818956, 29.357315, 33.271317>,  <25.393610, 29.789160, 33.590389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818956, 29.357315, 33.271317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998621, 29.378693, 33.628056>,  <26.106419, 29.391520, 33.842098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.998621, 29.378693, 33.628056>,  <25.818956, 29.357315, 33.271317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.998621, 29.378693, 33.628056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214012, -0.975585, -0.049318,
		0.867441, 0.213019, -0.449632,
		0.449160, 0.053446, 0.891851,
		26.133369, 29.394726, 33.895611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447830, 29.010847, 33.236515>,  <25.818956, 29.357315, 33.271317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447830, 29.010847, 33.236515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395363, 29.001007, 33.632938>,  <26.363882, 28.995104, 33.870792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.395363, 29.001007, 33.632938>,  <26.447830, 29.010847, 33.236515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.395363, 29.001007, 33.632938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269578, -0.962906, 0.011780,
		0.954003, 0.268712, 0.132935,
		-0.131169, -0.024598, 0.991055,
		26.356012, 28.993628, 33.930256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106380, 28.589573, 33.533276>,  <26.447830, 29.010847, 33.236515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106380, 28.589573, 33.533276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857805, 28.580843, 33.846539>,  <26.708660, 28.575605, 34.034496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.857805, 28.580843, 33.846539>,  <27.106380, 28.589573, 33.533276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857805, 28.580843, 33.846539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382576, -0.880784, 0.279027,
		0.683706, 0.473016, 0.555700,
		-0.621436, -0.021825, 0.783161,
		26.671375, 28.574295, 34.081486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.477449, 28.433416, 34.171623>,  <27.106380, 28.589573, 33.533276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.477449, 28.433416, 34.171623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092382, 28.348558, 34.238876>,  <26.861343, 28.297644, 34.279228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092382, 28.348558, 34.238876>,  <27.477449, 28.433416, 34.171623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092382, 28.348558, 34.238876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248344, -0.939299, 0.236732,
		0.107708, 0.269650, 0.956916,
		-0.962665, -0.212146, 0.168136,
		26.803583, 28.284914, 34.289318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504951, 28.046522, 34.767448>,  <27.477449, 28.433416, 34.171623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504951, 28.046522, 34.767448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145815, 27.969538, 34.609035>,  <26.930334, 27.923347, 34.513988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.145815, 27.969538, 34.609035>,  <27.504951, 28.046522, 34.767448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145815, 27.969538, 34.609035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094908, -0.962863, 0.252759,
		-0.429972, 0.189350, 0.882763,
		-0.897840, -0.192461, -0.396033,
		26.876463, 27.911800, 34.490227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050289, 27.766571, 35.275215>,  <27.504951, 28.046522, 34.767448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050289, 27.766571, 35.275215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932131, 27.631666, 34.917667>,  <26.861235, 27.550724, 34.703140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.932131, 27.631666, 34.917667>,  <27.050289, 27.766571, 35.275215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932131, 27.631666, 34.917667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139459, -0.940818, 0.308889,
		-0.945141, -0.033413, 0.324949,
		-0.295397, -0.337261, -0.893866,
		26.843512, 27.530487, 34.649509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635118, 27.119873, 35.363029>,  <27.050289, 27.766571, 35.275215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635118, 27.119873, 35.363029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705370, 27.115335, 34.969273>,  <26.747520, 27.112612, 34.733017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705370, 27.115335, 34.969273>,  <26.635118, 27.119873, 35.363029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705370, 27.115335, 34.969273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119913, -0.992241, 0.032831,
		-0.977126, -0.123807, -0.172907,
		0.175630, -0.011346, -0.984391,
		26.758059, 27.111931, 34.673954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161638, 26.610180, 34.942833>,  <26.635118, 27.119873, 35.363029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161638, 26.610180, 34.942833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513096, 26.665125, 34.759914>,  <26.723970, 26.698092, 34.650162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.513096, 26.665125, 34.759914>,  <26.161638, 26.610180, 34.942833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513096, 26.665125, 34.759914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156751, -0.987628, 0.004513,
		-0.451018, -0.075647, -0.889304,
		0.878642, 0.137364, -0.457295,
		26.776688, 26.706333, 34.622726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297573, 26.010887, 34.345337>,  <26.161638, 26.610180, 34.942833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297573, 26.010887, 34.345337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593086, 26.181942, 34.553696>,  <26.770393, 26.284575, 34.678711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593086, 26.181942, 34.553696>,  <26.297573, 26.010887, 34.345337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593086, 26.181942, 34.553696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282918, -0.898290, 0.336203,
		0.611687, -0.101010, -0.784625,
		0.738781, 0.427635, 0.520894,
		26.814720, 26.310232, 34.709965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.791471, 25.537920, 34.619553>,  <26.297573, 26.010887, 34.345337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.791471, 25.537920, 34.619553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974556, 25.846647, 34.796097>,  <27.084406, 26.031883, 34.902023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974556, 25.846647, 34.796097>,  <26.791471, 25.537920, 34.619553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974556, 25.846647, 34.796097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336931, -0.609958, 0.717237,
		0.822788, -0.179578, -0.539233,
		0.457710, 0.771818, 0.441360,
		27.111870, 26.078192, 34.928505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557352, 25.400213, 34.660686>,  <26.791471, 25.537920, 34.619553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557352, 25.400213, 34.660686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395306, 25.624805, 34.949303>,  <27.298079, 25.759562, 35.122471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.395306, 25.624805, 34.949303>,  <27.557352, 25.400213, 34.660686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.395306, 25.624805, 34.949303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475215, -0.544899, 0.690837,
		0.781058, 0.622756, -0.046077,
		-0.405115, 0.561480, 0.721541,
		27.273771, 25.793249, 35.165764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165495, 25.581570, 35.093143>,  <27.557352, 25.400213, 34.660686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165495, 25.581570, 35.093143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835005, 25.637623, 35.311398>,  <27.636711, 25.671255, 35.442348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.835005, 25.637623, 35.311398>,  <28.165495, 25.581570, 35.093143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835005, 25.637623, 35.311398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365999, -0.602772, 0.709021,
		0.428251, 0.785511, 0.446736,
		-0.826224, 0.140134, 0.545634,
		27.587137, 25.679663, 35.475086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274267, 25.928854, 35.826664>,  <28.165495, 25.581570, 35.093143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274267, 25.928854, 35.826664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963806, 25.677782, 35.850697>,  <27.777531, 25.527140, 35.865116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963806, 25.677782, 35.850697>,  <28.274267, 25.928854, 35.826664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963806, 25.677782, 35.850697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388420, -0.400880, 0.829713,
		-0.496709, 0.667319, 0.554947,
		-0.776151, -0.627679, 0.060079,
		27.730961, 25.489479, 35.868721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039606, 26.117716, 36.543083>,  <28.274267, 25.928854, 35.826664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039606, 26.117716, 36.543083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961828, 25.763454, 36.374413>,  <27.915161, 25.550898, 36.273209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961828, 25.763454, 36.374413>,  <28.039606, 26.117716, 36.543083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961828, 25.763454, 36.374413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412510, -0.463851, 0.784014,
		-0.889959, -0.021501, 0.455533,
		-0.194443, -0.885652, -0.421678,
		27.903496, 25.497759, 36.247910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.850567, 25.867399, 36.576763>,  <28.039606, 26.117716, 36.543083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.850567, 25.867399, 36.576763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869623, 25.569176, 36.842655>,  <28.881058, 25.390242, 37.002190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.869623, 25.569176, 36.842655>,  <28.850567, 25.867399, 36.576763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.869623, 25.569176, 36.842655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636856, -0.490011, -0.595235,
		0.769510, 0.451698, 0.451469,
		0.047642, -0.745559, 0.664734,
		28.883915, 25.345509, 37.042076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574940, 25.739199, 36.812038>,  <28.850567, 25.867399, 36.576763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574940, 25.739199, 36.812038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301758, 25.447939, 36.788818>,  <29.137848, 25.273184, 36.774887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301758, 25.447939, 36.788818>,  <29.574940, 25.739199, 36.812038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301758, 25.447939, 36.788818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585576, -0.498258, -0.639405,
		0.436659, -0.470678, 0.766675,
		-0.682956, -0.728149, -0.058049,
		29.096870, 25.229494, 36.771404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709017, 26.251160, 37.261673>,  <29.574940, 25.739199, 36.812038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709017, 26.251160, 37.261673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082806, 26.195572, 37.130558>,  <30.307079, 26.162218, 37.051888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082806, 26.195572, 37.130558>,  <29.709017, 26.251160, 37.261673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082806, 26.195572, 37.130558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056446, 0.966858, -0.248995,
		0.351527, 0.214177, 0.911349,
		0.934474, -0.138971, -0.327788,
		30.363148, 26.153881, 37.032223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184958, 26.721457, 37.619045>,  <29.709017, 26.251160, 37.261673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184958, 26.721457, 37.619045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310268, 26.610352, 37.255791>,  <30.385454, 26.543688, 37.037838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310268, 26.610352, 37.255791>,  <30.184958, 26.721457, 37.619045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310268, 26.610352, 37.255791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138662, 0.959400, -0.245608,
		0.939484, -0.048980, 0.339073,
		0.313277, -0.277762, -0.908133,
		30.404251, 26.527023, 36.983353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716381, 27.181190, 37.436928>,  <30.184958, 26.721457, 37.619045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716381, 27.181190, 37.436928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550867, 27.043226, 37.099926>,  <30.451559, 26.960447, 36.897724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550867, 27.043226, 37.099926>,  <30.716381, 27.181190, 37.436928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550867, 27.043226, 37.099926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025923, 0.929541, -0.367807,
		0.910005, -0.130354, -0.393573,
		-0.413787, -0.344908, -0.842508,
		30.426731, 26.939754, 36.847172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012140, 27.516937, 36.857307>,  <30.716381, 27.181190, 37.436928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012140, 27.516937, 36.857307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671890, 27.384819, 36.693676>,  <30.467741, 27.305548, 36.595497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671890, 27.384819, 36.693676>,  <31.012140, 27.516937, 36.857307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671890, 27.384819, 36.693676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208382, 0.926117, -0.314458,
		0.482717, -0.182242, -0.856605,
		-0.850624, -0.330295, -0.409077,
		30.416702, 27.285730, 36.570953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077133, 27.672453, 36.103523>,  <31.012140, 27.516937, 36.857307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077133, 27.672453, 36.103523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687714, 27.654457, 36.193127>,  <30.454062, 27.643660, 36.246887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687714, 27.654457, 36.193127>,  <31.077133, 27.672453, 36.103523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687714, 27.654457, 36.193127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111886, 0.948700, -0.295720,
		-0.199214, -0.312962, -0.928638,
		-0.973548, -0.044990, 0.224010,
		30.395649, 27.640961, 36.260330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750435, 28.026020, 35.527611>,  <31.077133, 27.672453, 36.103523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750435, 28.026020, 35.527611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491402, 28.021210, 35.832371>,  <30.335981, 28.018324, 36.015228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491402, 28.021210, 35.832371>,  <30.750435, 28.026020, 35.527611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491402, 28.021210, 35.832371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292507, 0.927196, -0.233982,
		-0.703617, -0.374384, -0.603953,
		-0.647582, -0.012027, 0.761901,
		30.297127, 28.017601, 36.060940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060846, 28.275364, 35.261238>,  <30.750435, 28.026020, 35.527611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060846, 28.275364, 35.261238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062164, 28.343929, 35.655315>,  <30.062954, 28.385069, 35.891762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.062164, 28.343929, 35.655315>,  <30.060846, 28.275364, 35.261238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062164, 28.343929, 35.655315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378862, 0.911969, -0.157407,
		-0.925447, -0.372734, 0.067945,
		0.003293, 0.171413, 0.985194,
		30.063152, 28.395353, 35.950874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434883, 28.461613, 35.462872>,  <30.060846, 28.275364, 35.261238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434883, 28.461613, 35.462872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668083, 28.611202, 35.751385>,  <29.808004, 28.700956, 35.924492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668083, 28.611202, 35.751385>,  <29.434883, 28.461613, 35.462872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668083, 28.611202, 35.751385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341264, 0.918373, -0.200325,
		-0.737325, -0.129358, 0.663037,
		0.583002, 0.373975, 0.721285,
		29.842983, 28.723394, 35.967770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976521, 28.827229, 35.748966>,  <29.434883, 28.461613, 35.462872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976521, 28.827229, 35.748966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316753, 28.974741, 35.898903>,  <29.520893, 29.063250, 35.988865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316753, 28.974741, 35.898903>,  <28.976521, 28.827229, 35.748966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316753, 28.974741, 35.898903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297736, 0.925333, -0.234758,
		-0.433431, 0.088076, 0.896872,
		0.850583, 0.368782, 0.374845,
		29.571928, 29.085375, 36.011356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807726, 29.461765, 36.097496>,  <28.976521, 28.827229, 35.748966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807726, 29.461765, 36.097496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202818, 29.521151, 36.078102>,  <29.439873, 29.556782, 36.066467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.202818, 29.521151, 36.078102>,  <28.807726, 29.461765, 36.097496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202818, 29.521151, 36.078102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156128, 0.946633, -0.281976,
		0.004035, 0.286085, 0.958196,
		0.987729, 0.148463, -0.048485,
		29.499136, 29.565689, 36.063557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942781, 29.974680, 36.619175>,  <28.807726, 29.461765, 36.097496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942781, 29.974680, 36.619175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212107, 29.968765, 36.323490>,  <29.373701, 29.965216, 36.146080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212107, 29.968765, 36.323490>,  <28.942781, 29.974680, 36.619175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212107, 29.968765, 36.323490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166323, 0.971144, -0.170924,
		0.720409, 0.238033, 0.651423,
		0.673311, -0.014789, -0.739211,
		29.414101, 29.964329, 36.101727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.259338, 30.655045, 36.657875>,  <28.942781, 29.974680, 36.619175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.259338, 30.655045, 36.657875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359898, 30.532347, 36.290680>,  <29.420235, 30.458729, 36.070362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359898, 30.532347, 36.290680>,  <29.259338, 30.655045, 36.657875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359898, 30.532347, 36.290680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232453, 0.901557, -0.364912,
		0.939555, 0.305129, 0.155348,
		0.251400, -0.306743, -0.917990,
		29.435318, 30.440323, 36.015282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.559807, 31.183178, 36.435574>,  <29.259338, 30.655045, 36.657875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.559807, 31.183178, 36.435574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483084, 30.989492, 36.094105>,  <29.437050, 30.873281, 35.889225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.483084, 30.989492, 36.094105>,  <29.559807, 31.183178, 36.435574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483084, 30.989492, 36.094105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167222, 0.873223, -0.457732,
		0.967081, 0.054955, -0.248462,
		-0.191808, -0.484212, -0.853668,
		29.425541, 30.844229, 35.838005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892902, 31.557024, 35.955921>,  <29.559807, 31.183178, 36.435574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892902, 31.557024, 35.955921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637295, 31.348036, 35.730114>,  <29.483931, 31.222643, 35.594631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637295, 31.348036, 35.730114>,  <29.892902, 31.557024, 35.955921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637295, 31.348036, 35.730114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227337, 0.829410, -0.510291,
		0.734826, -0.197752, -0.648788,
		-0.639022, -0.522468, -0.564516,
		29.445589, 31.191296, 35.560760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012932, 31.660084, 35.204353>,  <29.892902, 31.557024, 35.955921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012932, 31.660084, 35.204353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638611, 31.521709, 35.231499>,  <29.414019, 31.438684, 35.247787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638611, 31.521709, 35.231499>,  <30.012932, 31.660084, 35.204353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638611, 31.521709, 35.231499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308570, 0.710690, -0.632221,
		0.170476, -0.612575, -0.771810,
		-0.935801, -0.345936, 0.067866,
		29.357870, 31.417929, 35.251858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648296, 31.873266, 34.566116>,  <30.012932, 31.660084, 35.204353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648296, 31.873266, 34.566116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318600, 31.712326, 34.725487>,  <29.120783, 31.615761, 34.821110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.318600, 31.712326, 34.725487>,  <29.648296, 31.873266, 34.566116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.318600, 31.712326, 34.725487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559331, 0.688118, -0.462214,
		-0.088189, -0.603826, -0.792223,
		-0.824240, -0.402353, 0.398423,
		29.071327, 31.591619, 34.845013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169743, 31.880573, 34.062611>,  <29.648296, 31.873266, 34.566116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169743, 31.880573, 34.062611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939095, 31.875826, 34.389381>,  <28.800705, 31.872978, 34.585442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.939095, 31.875826, 34.389381>,  <29.169743, 31.880573, 34.062611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.939095, 31.875826, 34.389381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488852, 0.806168, -0.333341,
		-0.654623, -0.591567, -0.470655,
		-0.576621, -0.011868, 0.816925,
		28.766108, 31.872265, 34.634460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.504578, 32.009930, 33.795921>,  <29.169743, 31.880573, 34.062611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.504578, 32.009930, 33.795921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500841, 32.109604, 34.183285>,  <28.498600, 32.169407, 34.415703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500841, 32.109604, 34.183285>,  <28.504578, 32.009930, 33.795921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500841, 32.109604, 34.183285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472128, 0.852612, -0.223939,
		-0.881480, -0.459306, 0.109683,
		-0.009339, 0.249182, 0.968412,
		28.498039, 32.184357, 34.473808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792784, 32.317280, 34.002750>,  <28.504578, 32.009930, 33.795921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792784, 32.317280, 34.002750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020193, 32.450859, 34.303486>,  <28.156639, 32.531006, 34.483925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020193, 32.450859, 34.303486>,  <27.792784, 32.317280, 34.002750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020193, 32.450859, 34.303486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537719, 0.842502, 0.032386,
		-0.622608, -0.422689, 0.658554,
		0.568522, 0.333953, 0.751837,
		28.190750, 32.551044, 34.529037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310349, 32.646870, 34.589149>,  <27.792784, 32.317280, 34.002750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310349, 32.646870, 34.589149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674330, 32.809742, 34.620609>,  <27.892719, 32.907463, 34.639484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.674330, 32.809742, 34.620609>,  <27.310349, 32.646870, 34.589149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.674330, 32.809742, 34.620609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412033, 0.909180, 0.060176,
		-0.047008, -0.087166, 0.995084,
		0.909956, 0.407179, 0.078654,
		27.947317, 32.931896, 34.644207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138329, 33.176388, 34.949432>,  <27.310349, 32.646870, 34.589149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138329, 33.176388, 34.949432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497902, 33.245747, 34.788509>,  <27.713646, 33.287361, 34.691956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497902, 33.245747, 34.788509>,  <27.138329, 33.176388, 34.949432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497902, 33.245747, 34.788509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222426, 0.971812, -0.078151,
		0.377416, 0.159736, 0.912163,
		0.898935, 0.173394, -0.402307,
		27.767582, 33.297764, 34.667816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358730, 33.707287, 35.340679>,  <27.138329, 33.176388, 34.949432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358730, 33.707287, 35.340679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566765, 33.712700, 34.999077>,  <27.691586, 33.715946, 34.794117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566765, 33.712700, 34.999077>,  <27.358730, 33.707287, 35.340679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566765, 33.712700, 34.999077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237226, 0.962823, -0.129213,
		0.820508, 0.269794, 0.503962,
		0.520087, 0.013532, -0.854006,
		27.722792, 33.716759, 34.742874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949554, 34.258465, 35.315311>,  <27.358730, 33.707287, 35.340679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949554, 34.258465, 35.315311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804863, 34.171867, 34.952591>,  <27.718048, 34.119907, 34.734959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804863, 34.171867, 34.952591>,  <27.949554, 34.258465, 35.315311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804863, 34.171867, 34.952591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339687, 0.936407, -0.088060,
		0.868197, 0.276174, -0.412264,
		-0.361727, -0.216494, -0.906798,
		27.696344, 34.106918, 34.680550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056221, 34.822315, 34.937908>,  <27.949554, 34.258465, 35.315311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056221, 34.822315, 34.937908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808071, 34.643600, 34.680065>,  <27.659182, 34.536373, 34.525360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.808071, 34.643600, 34.680065>,  <28.056221, 34.822315, 34.937908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.808071, 34.643600, 34.680065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385232, 0.889492, -0.245763,
		0.683176, 0.095858, -0.723935,
		-0.620376, -0.446782, -0.644608,
		27.621958, 34.509567, 34.486683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392866, 35.509720, 35.144817>,  <28.056221, 34.822315, 34.937908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392866, 35.509720, 35.144817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432878, 35.875481, 34.987911>,  <28.456886, 36.094936, 34.893768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432878, 35.875481, 34.987911>,  <28.392866, 35.509720, 35.144817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432878, 35.875481, 34.987911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883379, -0.263036, -0.387882,
		-0.457858, -0.307717, -0.834072,
		0.100033, 0.914397, -0.392264,
		28.462889, 36.149799, 34.870232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058033, 35.509773, 34.878490>,  <28.392866, 35.509720, 35.144817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058033, 35.509773, 34.878490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922771, 35.872807, 34.778938>,  <28.841614, 36.090626, 34.719208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922771, 35.872807, 34.778938>,  <29.058033, 35.509773, 34.878490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922771, 35.872807, 34.778938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832109, 0.164818, -0.529556,
		-0.439598, -0.386165, -0.810944,
		-0.338154, 0.907586, -0.248877,
		28.821325, 36.145081, 34.704273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888058, 35.596489, 34.171497>,  <29.058033, 35.509773, 34.878490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888058, 35.596489, 34.171497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036177, 35.921341, 34.351864>,  <29.125048, 36.116253, 34.460083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.036177, 35.921341, 34.351864>,  <28.888058, 35.596489, 34.171497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036177, 35.921341, 34.351864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805285, -0.038688, -0.591624,
		-0.463029, 0.582196, -0.668320,
		0.370297, 0.812128, 0.450920,
		29.147266, 36.164978, 34.487141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.125568, 36.104832, 33.624599>,  <28.888058, 35.596489, 34.171497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.125568, 36.104832, 33.624599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345249, 36.160919, 33.954136>,  <29.477058, 36.194572, 34.151859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345249, 36.160919, 33.954136>,  <29.125568, 36.104832, 33.624599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345249, 36.160919, 33.954136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813964, -0.313074, -0.489333,
		0.189310, 0.939321, -0.286073,
		0.549203, 0.140217, 0.823842,
		29.510010, 36.202984, 34.201290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726109, 36.706184, 33.509575>,  <29.125568, 36.104832, 33.624599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726109, 36.706184, 33.509575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803520, 36.442154, 33.799911>,  <29.849966, 36.283733, 33.974113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803520, 36.442154, 33.799911>,  <29.726109, 36.706184, 33.509575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803520, 36.442154, 33.799911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858614, -0.244004, -0.450826,
		0.474688, 0.710463, 0.519532,
		0.193527, -0.660079, 0.725839,
		29.861578, 36.244129, 34.017662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402607, 36.714668, 33.866528>,  <29.726109, 36.706184, 33.509575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402607, 36.714668, 33.866528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281094, 36.335461, 33.828648>,  <30.208185, 36.107937, 33.805920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.281094, 36.335461, 33.828648>,  <30.402607, 36.714668, 33.866528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281094, 36.335461, 33.828648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805988, -0.202715, -0.556139,
		0.508034, -0.245276, 0.825676,
		-0.303785, -0.948022, -0.094703,
		30.189959, 36.051056, 33.800236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900457, 36.028252, 34.094498>,  <30.402607, 36.714668, 33.866528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900457, 36.028252, 34.094498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658268, 35.985840, 33.778988>,  <30.512955, 35.960392, 33.589684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658268, 35.985840, 33.778988>,  <30.900457, 36.028252, 34.094498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658268, 35.985840, 33.778988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795711, -0.100123, -0.597344,
		-0.015637, -0.989309, 0.144992,
		-0.605475, -0.106031, -0.788770,
		30.476625, 35.954033, 33.542358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137817, 35.424713, 33.680107>,  <30.900457, 36.028252, 34.094498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137817, 35.424713, 33.680107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965874, 35.682877, 33.427547>,  <30.862707, 35.837776, 33.276012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.965874, 35.682877, 33.427547>,  <31.137817, 35.424713, 33.680107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.965874, 35.682877, 33.427547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737750, -0.152087, -0.657720,
		-0.520526, -0.748545, -0.410773,
		-0.429859, 0.645408, -0.631403,
		30.836916, 35.876499, 33.238125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571825, 35.305901, 33.151463>,  <31.137817, 35.424713, 33.680107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571825, 35.305901, 33.151463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899666, 35.092571, 33.067730>,  <32.096371, 34.964573, 33.017490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899666, 35.092571, 33.067730>,  <31.571825, 35.305901, 33.151463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899666, 35.092571, 33.067730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079137, -0.256486, 0.963303,
		-0.567445, -0.806089, -0.168010,
		0.819599, -0.533325, -0.209333,
		32.145546, 34.932575, 33.004929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509418, 34.654102, 33.288387>,  <31.571825, 35.305901, 33.151463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509418, 34.654102, 33.288387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895525, 34.753860, 33.319527>,  <32.127190, 34.813717, 33.338211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895525, 34.753860, 33.319527>,  <31.509418, 34.654102, 33.288387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895525, 34.753860, 33.319527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042642, -0.143571, 0.988721,
		0.257762, -0.957699, -0.127949,
		0.965267, 0.249398, 0.077845,
		32.185104, 34.828678, 33.342880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805918, 34.143406, 33.830929>,  <31.509418, 34.654102, 33.288387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805918, 34.143406, 33.830929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061264, 34.451298, 33.831409>,  <32.214474, 34.636032, 33.831696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061264, 34.451298, 33.831409>,  <31.805918, 34.143406, 33.830929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061264, 34.451298, 33.831409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184553, -0.154570, 0.970592,
		0.747279, -0.619374, -0.240729,
		0.638368, 0.769730, 0.001199,
		32.252773, 34.682217, 33.831768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390087, 33.904438, 34.190205>,  <31.805918, 34.143406, 33.830929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390087, 33.904438, 34.190205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374702, 34.303993, 34.201168>,  <32.365471, 34.543724, 34.207745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374702, 34.303993, 34.201168>,  <32.390087, 33.904438, 34.190205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374702, 34.303993, 34.201168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206346, -0.018895, 0.978297,
		0.977723, 0.043278, -0.205389,
		-0.038458, 0.998884, 0.027405,
		32.363167, 34.603657, 34.209389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807407, 34.082947, 34.702770>,  <32.390087, 33.904438, 34.190205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807407, 34.082947, 34.702770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622158, 34.432743, 34.645115>,  <32.511009, 34.642620, 34.610519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.622158, 34.432743, 34.645115>,  <32.807407, 34.082947, 34.702770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.622158, 34.432743, 34.645115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068720, 0.197574, 0.977876,
		0.883624, 0.442975, -0.151597,
		-0.463127, 0.874493, -0.144140,
		32.483219, 34.695091, 34.601871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040062, 34.568939, 35.104820>,  <32.807407, 34.082947, 34.702770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040062, 34.568939, 35.104820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688324, 34.746559, 35.036041>,  <32.477280, 34.853130, 34.994774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688324, 34.746559, 35.036041>,  <33.040062, 34.568939, 35.104820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688324, 34.746559, 35.036041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146142, 0.092013, 0.984975,
		0.453204, 0.891263, -0.016017,
		-0.879346, 0.444054, -0.171951,
		32.424519, 34.879776, 34.984455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022915, 35.155773, 35.570503>,  <33.040062, 34.568939, 35.104820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022915, 35.155773, 35.570503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659000, 35.029003, 35.463284>,  <32.440651, 34.952942, 35.398952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659000, 35.029003, 35.463284>,  <33.022915, 35.155773, 35.570503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659000, 35.029003, 35.463284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252331, -0.090461, 0.963403,
		-0.329579, 0.944125, 0.002329,
		-0.909784, -0.316930, -0.268046,
		32.386066, 34.933926, 35.382870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562740, 35.447643, 36.106255>,  <33.022915, 35.155773, 35.570503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562740, 35.447643, 36.106255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386509, 35.138809, 35.923046>,  <32.280769, 34.953510, 35.813122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.386509, 35.138809, 35.923046>,  <32.562740, 35.447643, 36.106255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386509, 35.138809, 35.923046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475882, -0.231755, 0.848426,
		-0.761202, 0.591760, -0.265313,
		-0.440577, -0.772081, -0.458020,
		32.254337, 34.907185, 35.785641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927603, 35.436226, 36.320454>,  <32.562740, 35.447643, 36.106255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927603, 35.436226, 36.320454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938742, 35.061680, 36.180485>,  <31.945425, 34.836952, 36.096504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938742, 35.061680, 36.180485>,  <31.927603, 35.436226, 36.320454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938742, 35.061680, 36.180485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231959, -0.346555, 0.908898,
		-0.972327, 0.055855, -0.226850,
		0.027849, -0.936365, -0.349921,
		31.947096, 34.780769, 36.075508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382044, 35.069752, 36.615135>,  <31.927603, 35.436226, 36.320454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382044, 35.069752, 36.615135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634768, 34.779652, 36.505714>,  <31.786402, 34.605591, 36.440060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634768, 34.779652, 36.505714>,  <31.382044, 35.069752, 36.615135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634768, 34.779652, 36.505714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194046, -0.489670, 0.850041,
		-0.750444, -0.483980, -0.450109,
		0.631807, -0.725250, -0.273556,
		31.824310, 34.562077, 36.423649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991976, 34.548832, 36.806210>,  <31.382044, 35.069752, 36.615135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991976, 34.548832, 36.806210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360130, 34.397675, 36.766045>,  <31.581022, 34.306980, 36.741947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360130, 34.397675, 36.766045>,  <30.991976, 34.548832, 36.806210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360130, 34.397675, 36.766045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172419, -0.622728, 0.763205,
		-0.350942, -0.685131, -0.638307,
		0.920387, -0.377897, -0.100411,
		31.636246, 34.284306, 36.735920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933392, 33.897026, 36.787964>,  <30.991976, 34.548832, 36.806210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933392, 33.897026, 36.787964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306875, 33.954063, 36.919331>,  <31.530966, 33.988285, 36.998150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306875, 33.954063, 36.919331>,  <30.933392, 33.897026, 36.787964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306875, 33.954063, 36.919331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154741, -0.666464, 0.729302,
		0.322868, -0.731774, -0.600219,
		0.933709, 0.142590, 0.328415,
		31.586988, 33.996841, 37.017857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133308, 33.285179, 36.768757>,  <30.933392, 33.897026, 36.787964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133308, 33.285179, 36.768757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389656, 33.477665, 37.007996>,  <31.543465, 33.593159, 37.151539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389656, 33.477665, 37.007996>,  <31.133308, 33.285179, 36.768757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389656, 33.477665, 37.007996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247742, -0.607781, 0.754471,
		0.726574, -0.631691, -0.270291,
		0.640870, 0.481217, 0.598093,
		31.581917, 33.622028, 37.187424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414715, 32.795437, 37.067120>,  <31.133308, 33.285179, 36.768757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414715, 32.795437, 37.067120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489033, 33.099667, 37.315960>,  <31.533623, 33.282204, 37.465263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.489033, 33.099667, 37.315960>,  <31.414715, 32.795437, 37.067120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.489033, 33.099667, 37.315960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310265, -0.555323, 0.771590,
		0.932318, -0.336373, 0.132804,
		0.185793, 0.760571, 0.622103,
		31.544771, 33.327839, 37.502590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784986, 32.531353, 37.711784>,  <31.414715, 32.795437, 37.067120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784986, 32.531353, 37.711784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630791, 32.874718, 37.847157>,  <31.538273, 33.080734, 37.928379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630791, 32.874718, 37.847157>,  <31.784986, 32.531353, 37.711784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630791, 32.874718, 37.847157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267501, -0.454992, 0.849368,
		0.883087, 0.236890, 0.405019,
		-0.385487, 0.858408, 0.338430,
		31.515144, 33.132240, 37.948685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966742, 32.711483, 38.499851>,  <31.784986, 32.531353, 37.711784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966742, 32.711483, 38.499851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622349, 32.897591, 38.417645>,  <31.415712, 33.009254, 38.368320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622349, 32.897591, 38.417645>,  <31.966742, 32.711483, 38.499851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622349, 32.897591, 38.417645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408947, -0.392956, 0.823619,
		0.302444, 0.793166, 0.528598,
		-0.860982, 0.465267, -0.205515,
		31.364054, 33.037170, 38.355991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754185, 32.986443, 39.065231>,  <31.966742, 32.711483, 38.499851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754185, 32.986443, 39.065231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406786, 32.993076, 38.867062>,  <31.198347, 32.997055, 38.748161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406786, 32.993076, 38.867062>,  <31.754185, 32.986443, 39.065231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406786, 32.993076, 38.867062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464355, -0.376970, 0.801417,
		-0.173469, 0.926077, 0.335096,
		-0.868495, 0.016582, -0.495421,
		31.146238, 32.998051, 38.718437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306660, 33.080200, 39.578495>,  <31.754185, 32.986443, 39.065231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306660, 33.080200, 39.578495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057779, 32.955479, 39.291264>,  <30.908451, 32.880646, 39.118923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057779, 32.955479, 39.291264>,  <31.306660, 33.080200, 39.578495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057779, 32.955479, 39.291264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487584, -0.563280, 0.667066,
		-0.612476, 0.765176, 0.198442,
		-0.622201, -0.311805, -0.718083,
		30.871119, 32.861938, 39.075840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596241, 33.139313, 39.864666>,  <31.306660, 33.080200, 39.578495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596241, 33.139313, 39.864666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552267, 32.884708, 39.559307>,  <30.525883, 32.731945, 39.376091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.552267, 32.884708, 39.559307>,  <30.596241, 33.139313, 39.864666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.552267, 32.884708, 39.559307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632103, -0.547951, 0.547902,
		-0.767047, 0.542777, -0.342100,
		-0.109935, -0.636509, -0.763395,
		30.519287, 32.693756, 39.330288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910105, 33.207291, 39.808071>,  <30.596241, 33.139313, 39.864666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910105, 33.207291, 39.808071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991999, 32.867027, 39.614388>,  <30.041134, 32.662868, 39.498177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.991999, 32.867027, 39.614388>,  <29.910105, 33.207291, 39.808071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991999, 32.867027, 39.614388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719009, -0.466363, 0.515297,
		-0.664161, 0.242654, -0.707113,
		0.204733, -0.850661, -0.484210,
		30.053419, 32.611828, 39.469124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233664, 32.919720, 39.816208>,  <29.910105, 33.207291, 39.808071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233664, 32.919720, 39.816208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501390, 32.633736, 39.735363>,  <29.662027, 32.462147, 39.686855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501390, 32.633736, 39.735363>,  <29.233664, 32.919720, 39.816208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501390, 32.633736, 39.735363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462198, -0.613656, 0.640156,
		-0.581707, -0.335057, -0.741184,
		0.669321, -0.714957, -0.202106,
		29.702187, 32.419247, 39.674732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803801, 32.375519, 39.598717>,  <29.233664, 32.919720, 39.816208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803801, 32.375519, 39.598717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140469, 32.193420, 39.714882>,  <29.342468, 32.084160, 39.784580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140469, 32.193420, 39.714882>,  <28.803801, 32.375519, 39.598717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140469, 32.193420, 39.714882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509983, -0.493342, 0.704649,
		-0.177516, -0.741189, -0.647400,
		0.841669, -0.455250, 0.290418,
		29.392969, 32.056847, 39.802006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.680531, 31.665472, 39.530426>,  <28.803801, 32.375519, 39.598717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.680531, 31.665472, 39.530426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971739, 31.736036, 39.795414>,  <29.146463, 31.778374, 39.954407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.971739, 31.736036, 39.795414>,  <28.680531, 31.665472, 39.530426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971739, 31.736036, 39.795414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397416, -0.678795, 0.617493,
		0.558614, -0.712823, -0.424068,
		0.728019, 0.176409, 0.662472,
		29.190144, 31.788960, 39.994156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944082, 30.948301, 39.715660>,  <28.680531, 31.665472, 39.530426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944082, 30.948301, 39.715660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031086, 31.189375, 40.022766>,  <29.083288, 31.334019, 40.207031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031086, 31.189375, 40.022766>,  <28.944082, 30.948301, 39.715660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031086, 31.189375, 40.022766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236095, -0.730753, 0.640514,
		0.947074, -0.320583, -0.016656,
		0.217509, 0.602682, 0.767765,
		29.096338, 31.370180, 40.253098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144766, 30.491669, 40.120667>,  <28.944082, 30.948301, 39.715660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144766, 30.491669, 40.120667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119366, 30.810863, 40.360394>,  <29.104126, 31.002380, 40.504230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.119366, 30.810863, 40.360394>,  <29.144766, 30.491669, 40.120667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.119366, 30.810863, 40.360394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274466, -0.591336, 0.758281,
		0.959498, -0.116342, 0.256571,
		-0.063499, 0.797989, 0.599317,
		29.100315, 31.050261, 40.540188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.611265, 30.391706, 40.788589>,  <29.144766, 30.491669, 40.120667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.611265, 30.391706, 40.788589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310846, 30.644386, 40.865406>,  <29.130594, 30.795994, 40.911495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.310846, 30.644386, 40.865406>,  <29.611265, 30.391706, 40.788589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310846, 30.644386, 40.865406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240189, -0.532346, 0.811737,
		0.615010, 0.563526, 0.551544,
		-0.751047, 0.631701, 0.192046,
		29.085531, 30.833897, 40.923019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653656, 30.410196, 41.480324>,  <29.611265, 30.391706, 40.788589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653656, 30.410196, 41.480324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300304, 30.564928, 41.374489>,  <29.088293, 30.657766, 41.310989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.300304, 30.564928, 41.374489>,  <29.653656, 30.410196, 41.480324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300304, 30.564928, 41.374489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421185, -0.407683, 0.810183,
		0.205537, 0.827138, 0.523065,
		-0.883378, 0.386830, -0.264585,
		29.035292, 30.680977, 41.295113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390118, 30.822552, 42.015205>,  <29.653656, 30.410196, 41.480324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390118, 30.822552, 42.015205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078064, 30.707363, 41.793049>,  <28.890831, 30.638250, 41.659756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.078064, 30.707363, 41.793049>,  <29.390118, 30.822552, 42.015205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.078064, 30.707363, 41.793049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505724, -0.232313, 0.830827,
		-0.368280, 0.929033, 0.035601,
		-0.780136, -0.287973, -0.555391,
		28.844023, 30.620972, 41.626431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.780657, 31.005907, 42.363968>,  <29.390118, 30.822552, 42.015205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.780657, 31.005907, 42.363968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703341, 30.694708, 42.124851>,  <28.656950, 30.507988, 41.981380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.703341, 30.694708, 42.124851>,  <28.780657, 31.005907, 42.363968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.703341, 30.694708, 42.124851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461123, -0.465766, 0.755266,
		-0.866028, 0.421645, -0.268723,
		-0.193292, -0.777996, -0.597796,
		28.645353, 30.461309, 41.945511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085701, 30.776083, 42.607883>,  <28.780657, 31.005907, 42.363968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085701, 30.776083, 42.607883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179556, 30.471148, 42.366627>,  <28.235868, 30.288187, 42.221870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179556, 30.471148, 42.366627>,  <28.085701, 30.776083, 42.607883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179556, 30.471148, 42.366627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460586, -0.633586, 0.621634,
		-0.856040, 0.131941, -0.499787,
		0.234639, -0.762338, -0.603146,
		28.249949, 30.242447, 42.185684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586401, 30.218788, 42.759949>,  <28.085701, 30.776083, 42.607883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586401, 30.218788, 42.759949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885193, 30.030367, 42.572277>,  <28.064468, 29.917315, 42.459675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885193, 30.030367, 42.572277>,  <27.586401, 30.218788, 42.759949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885193, 30.030367, 42.572277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113885, -0.785924, 0.607745,
		-0.655018, -0.400543, -0.640716,
		0.746982, -0.471052, -0.469179,
		28.109287, 29.889051, 42.431522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332977, 29.658043, 42.578495>,  <27.586401, 30.218788, 42.759949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332977, 29.658043, 42.578495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720865, 29.585396, 42.643810>,  <27.953598, 29.541807, 42.682999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720865, 29.585396, 42.643810>,  <27.332977, 29.658043, 42.578495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720865, 29.585396, 42.643810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244174, -0.735040, 0.632531,
		0.005142, -0.653247, -0.757127,
		0.969718, -0.181618, 0.163286,
		28.011780, 29.530910, 42.692795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425625, 28.929987, 42.614067>,  <27.332977, 29.658043, 42.578495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425625, 28.929987, 42.614067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761709, 29.059437, 42.788109>,  <27.963360, 29.137108, 42.892532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761709, 29.059437, 42.788109>,  <27.425625, 28.929987, 42.614067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761709, 29.059437, 42.788109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074910, -0.725420, 0.684218,
		0.537063, -0.607479, -0.585262,
		0.840209, 0.323626, 0.435103,
		28.013773, 29.156525, 42.918640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810694, 28.359688, 42.699108>,  <27.425625, 28.929987, 42.614067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810694, 28.359688, 42.699108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942822, 28.600117, 42.990204>,  <28.022099, 28.744375, 43.164860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942822, 28.600117, 42.990204>,  <27.810694, 28.359688, 42.699108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942822, 28.600117, 42.990204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226597, -0.798966, 0.557053,
		0.916266, -0.019101, -0.400114,
		0.330318, 0.601073, 0.727737,
		28.041916, 28.780439, 43.208527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374632, 28.048286, 42.893063>,  <27.810694, 28.359688, 42.699108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374632, 28.048286, 42.893063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312454, 28.304214, 43.194118>,  <28.275146, 28.457771, 43.374752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.312454, 28.304214, 43.194118>,  <28.374632, 28.048286, 42.893063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.312454, 28.304214, 43.194118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341750, -0.680023, 0.648672,
		0.926846, 0.358047, -0.112952,
		-0.155445, 0.639821, 0.752640,
		28.265821, 28.496161, 43.419910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879038, 27.882307, 43.410812>,  <28.374632, 28.048286, 42.893063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879038, 27.882307, 43.410812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563225, 28.060682, 43.579468>,  <28.373737, 28.167707, 43.680660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563225, 28.060682, 43.579468>,  <28.879038, 27.882307, 43.410812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563225, 28.060682, 43.579468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018737, -0.704229, 0.709726,
		0.613424, 0.552450, 0.564366,
		-0.789531, 0.445937, 0.421640,
		28.326365, 28.194464, 43.705959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931768, 27.814680, 44.168411>,  <28.879038, 27.882307, 43.410812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931768, 27.814680, 44.168411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543755, 27.853483, 44.079308>,  <28.310946, 27.876764, 44.025845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.543755, 27.853483, 44.079308>,  <28.931768, 27.814680, 44.168411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.543755, 27.853483, 44.079308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223681, -0.714535, 0.662878,
		-0.094864, 0.692842, 0.714823,
		-0.970035, 0.097008, -0.222759,
		28.252745, 27.882586, 44.012482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.501764, 27.565096, 44.885746>,  <28.931768, 27.814680, 44.168411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.501764, 27.565096, 44.885746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242723, 27.574310, 44.581093>,  <28.087299, 27.579838, 44.398300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.242723, 27.574310, 44.581093>,  <28.501764, 27.565096, 44.885746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242723, 27.574310, 44.581093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584911, -0.655636, 0.477515,
		-0.488352, 0.754726, 0.438066,
		-0.647604, 0.023034, -0.761629,
		28.048443, 27.581221, 44.352604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897800, 27.653893, 45.275269>,  <28.501764, 27.565096, 44.885746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897800, 27.653893, 45.275269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800049, 27.527945, 44.908413>,  <27.741398, 27.452375, 44.688301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800049, 27.527945, 44.908413>,  <27.897800, 27.653893, 45.275269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800049, 27.527945, 44.908413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734513, -0.557374, 0.387072,
		-0.633065, 0.768240, -0.095066,
		-0.244377, -0.314869, -0.917136,
		27.726736, 27.433483, 44.633274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167273, 27.816576, 45.178539>,  <27.897800, 27.653893, 45.275269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167273, 27.816576, 45.178539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273897, 27.522072, 44.929745>,  <27.337872, 27.345369, 44.780468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.273897, 27.522072, 44.929745>,  <27.167273, 27.816576, 45.178539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.273897, 27.522072, 44.929745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787688, -0.538305, 0.299627,
		-0.555423, 0.410066, -0.723430,
		0.266559, -0.736257, -0.621991,
		27.353865, 27.301195, 44.743149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.603434, 27.565008, 45.011097>,  <27.167273, 27.816576, 45.178539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.603434, 27.565008, 45.011097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803171, 27.230600, 44.920120>,  <26.923014, 27.029957, 44.865536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803171, 27.230600, 44.920120>,  <26.603434, 27.565008, 45.011097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803171, 27.230600, 44.920120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769145, -0.548587, 0.327824,
		-0.398839, 0.011239, -0.916952,
		0.499343, -0.836018, -0.227442,
		26.952974, 26.979795, 44.851887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112272, 27.099834, 44.786129>,  <26.603434, 27.565008, 45.011097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112272, 27.099834, 44.786129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407528, 26.873137, 44.932529>,  <26.584681, 26.737118, 45.020370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407528, 26.873137, 44.932529>,  <26.112272, 27.099834, 44.786129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407528, 26.873137, 44.932529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664722, -0.703675, 0.250971,
		0.115307, -0.428538, -0.896136,
		0.738139, -0.566743, 0.365997,
		26.628969, 26.703114, 45.042328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169283, 26.434244, 44.485855>,  <26.112272, 27.099834, 44.786129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169283, 26.434244, 44.485855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237764, 26.459454, 44.879143>,  <26.278852, 26.474579, 45.115116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.237764, 26.459454, 44.879143>,  <26.169283, 26.434244, 44.485855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237764, 26.459454, 44.879143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759044, -0.627796, 0.172409,
		0.628126, -0.775823, -0.059642,
		0.171202, 0.063024, 0.983218,
		26.289125, 26.478361, 45.174107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.082365, 25.743830, 44.681530>,  <26.169283, 26.434244, 44.485855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.082365, 25.743830, 44.681530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017202, 25.983696, 44.994926>,  <25.978106, 26.127615, 45.182964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017202, 25.983696, 44.994926>,  <26.082365, 25.743830, 44.681530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017202, 25.983696, 44.994926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678897, -0.644350, 0.352010,
		0.715933, -0.474566, 0.512081,
		-0.162907, 0.599666, 0.783494,
		25.968330, 26.163595, 45.229973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112301, 25.198690, 45.275463>,  <26.082365, 25.743830, 44.681530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112301, 25.198690, 45.275463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915955, 25.542385, 45.333103>,  <25.798147, 25.748602, 45.367687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.915955, 25.542385, 45.333103>,  <26.112301, 25.198690, 45.275463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915955, 25.542385, 45.333103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749790, -0.500854, 0.432389,
		0.443698, 0.104199, 0.890098,
		-0.490864, 0.859236, 0.144101,
		25.768696, 25.800156, 45.376335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967491, 24.739130, 44.708408>,  <26.112301, 25.198690, 45.275463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967491, 24.739130, 44.708408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028740, 24.384684, 44.533436>,  <26.065489, 24.172016, 44.428452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.028740, 24.384684, 44.533436>,  <25.967491, 24.739130, 44.708408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028740, 24.384684, 44.533436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828484, 0.356401, -0.431963,
		0.538672, -0.296264, 0.788707,
		0.153121, -0.886118, -0.437434,
		26.074677, 24.118849, 44.402206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542452, 24.429256, 44.905605>,  <25.967491, 24.739130, 44.708408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542452, 24.429256, 44.905605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464262, 24.251362, 44.555977>,  <26.417349, 24.144625, 44.346199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.464262, 24.251362, 44.555977>,  <26.542452, 24.429256, 44.905605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.464262, 24.251362, 44.555977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854517, 0.360110, -0.374327,
		0.481238, -0.820080, 0.309643,
		-0.195473, -0.444736, -0.874071,
		26.405621, 24.117941, 44.293755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197197, 24.552361, 44.631039>,  <26.542452, 24.429256, 44.905605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197197, 24.552361, 44.631039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933437, 24.505789, 44.333950>,  <26.775181, 24.477846, 44.155697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.933437, 24.505789, 44.333950>,  <27.197197, 24.552361, 44.631039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933437, 24.505789, 44.333950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665897, 0.368115, -0.648902,
		0.348957, -0.922462, -0.165206,
		-0.659402, -0.116428, -0.742720,
		26.735617, 24.470860, 44.111134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563822, 24.143604, 44.109581>,  <27.197197, 24.552361, 44.631039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563822, 24.143604, 44.109581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284960, 24.379055, 43.945877>,  <27.117641, 24.520325, 43.847656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.284960, 24.379055, 43.945877>,  <27.563822, 24.143604, 44.109581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284960, 24.379055, 43.945877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678373, 0.356960, -0.642176,
		-0.231914, -0.725326, -0.648165,
		-0.697156, 0.588627, -0.409258,
		27.075813, 24.555643, 43.823101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.230700, 24.045912, 43.313026>,  <27.563822, 24.143604, 44.109581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.230700, 24.045912, 43.313026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335653, 24.394258, 43.479275>,  <27.398626, 24.603268, 43.579025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335653, 24.394258, 43.479275>,  <27.230700, 24.045912, 43.313026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335653, 24.394258, 43.479275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746890, 0.089432, -0.658906,
		-0.610990, 0.483313, -0.626976,
		0.262386, 0.870867, 0.415624,
		27.414370, 24.655519, 43.603962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826998, 24.141115, 42.959404>,  <27.230700, 24.045912, 43.313026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826998, 24.141115, 42.959404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809937, 24.502047, 43.130978>,  <27.799700, 24.718605, 43.233921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809937, 24.502047, 43.130978>,  <27.826998, 24.141115, 42.959404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809937, 24.502047, 43.130978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696408, 0.334690, -0.634821,
		-0.716377, 0.271637, -0.642664,
		-0.042652, 0.902328, 0.428935,
		27.797140, 24.772745, 43.259659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934452, 24.628811, 42.366020>,  <27.826998, 24.141115, 42.959404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934452, 24.628811, 42.366020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983532, 24.841148, 42.701435>,  <28.012980, 24.968552, 42.902683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.983532, 24.841148, 42.701435>,  <27.934452, 24.628811, 42.366020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983532, 24.841148, 42.701435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629158, 0.611837, -0.479391,
		-0.767532, 0.586395, -0.258913,
		0.122700, 0.530845, 0.838539,
		28.020342, 25.000402, 42.952995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938370, 25.319408, 42.154530>,  <27.934452, 24.628811, 42.366020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938370, 25.319408, 42.154530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115396, 25.299046, 42.512646>,  <28.221613, 25.286829, 42.727516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115396, 25.299046, 42.512646>,  <27.938370, 25.319408, 42.154530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115396, 25.299046, 42.512646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713424, 0.624861, -0.317135,
		-0.543288, 0.779075, 0.312859,
		0.442565, -0.050905, 0.895290,
		28.248167, 25.283773, 42.781231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070684, 26.019840, 42.249100>,  <27.938370, 25.319408, 42.154530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070684, 26.019840, 42.249100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321350, 25.809216, 42.478889>,  <28.471750, 25.682840, 42.616764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.321350, 25.809216, 42.478889>,  <28.070684, 26.019840, 42.249100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.321350, 25.809216, 42.478889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700972, 0.702967, -0.120320,
		-0.340484, 0.478093, 0.809628,
		0.626666, -0.526560, 0.574478,
		28.509350, 25.651247, 42.651234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370781, 26.430817, 42.854340>,  <28.070684, 26.019840, 42.249100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370781, 26.430817, 42.854340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623484, 26.138371, 42.751301>,  <28.775106, 25.962904, 42.689480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623484, 26.138371, 42.751301>,  <28.370781, 26.430817, 42.854340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623484, 26.138371, 42.751301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737704, 0.669117, -0.089867,
		0.238063, -0.133254, 0.962065,
		0.631759, -0.731113, -0.257594,
		28.813011, 25.919037, 42.674023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072760, 26.643127, 43.109020>,  <28.370781, 26.430817, 42.854340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072760, 26.643127, 43.109020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163450, 26.352310, 42.849789>,  <29.217865, 26.177820, 42.694248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.163450, 26.352310, 42.849789>,  <29.072760, 26.643127, 43.109020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.163450, 26.352310, 42.849789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747155, 0.556686, -0.363126,
		0.624784, -0.401885, 0.669428,
		0.226726, -0.727041, -0.648079,
		29.231468, 26.134197, 42.655365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785353, 26.568445, 43.189251>,  <29.072760, 26.643127, 43.109020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785353, 26.568445, 43.189251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695969, 26.412088, 42.832092>,  <29.642338, 26.318275, 42.617798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.695969, 26.412088, 42.832092>,  <29.785353, 26.568445, 43.189251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.695969, 26.412088, 42.832092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669163, 0.604556, -0.432126,
		0.708722, -0.694058, 0.126477,
		-0.223458, -0.390891, -0.892900,
		29.628931, 26.294821, 42.564220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417536, 26.568939, 42.799286>,  <29.785353, 26.568445, 43.189251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417536, 26.568939, 42.799286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180796, 26.497002, 42.484993>,  <30.038752, 26.453838, 42.296417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180796, 26.497002, 42.484993>,  <30.417536, 26.568939, 42.799286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180796, 26.497002, 42.484993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492026, 0.691507, -0.528894,
		0.638456, -0.699625, -0.320780,
		-0.591849, -0.179843, -0.785729,
		30.003241, 26.443048, 42.249275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842644, 26.450897, 42.180744>,  <30.417536, 26.568939, 42.799286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842644, 26.450897, 42.180744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478830, 26.579702, 42.075630>,  <30.260542, 26.656984, 42.012562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478830, 26.579702, 42.075630>,  <30.842644, 26.450897, 42.180744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478830, 26.579702, 42.075630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402231, 0.522696, -0.751664,
		-0.104686, -0.789365, -0.604932,
		-0.909533, 0.322011, -0.262789,
		30.205971, 26.676306, 41.996792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.768423, 26.397573, 41.459774>,  <30.842644, 26.450897, 42.180744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.768423, 26.397573, 41.459774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476355, 26.651873, 41.559910>,  <30.301113, 26.804453, 41.619991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476355, 26.651873, 41.559910>,  <30.768423, 26.397573, 41.459774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476355, 26.651873, 41.559910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414354, 0.703341, -0.577601,
		-0.543287, -0.318017, -0.776984,
		-0.730172, 0.635750, 0.250344,
		30.257303, 26.842598, 41.635014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629951, 26.685034, 40.868610>,  <30.768423, 26.397573, 41.459774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629951, 26.685034, 40.868610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485662, 26.959761, 41.121010>,  <30.399090, 27.124598, 41.272449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485662, 26.959761, 41.121010>,  <30.629951, 26.685034, 40.868610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485662, 26.959761, 41.121010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314003, 0.726484, -0.611247,
		-0.878227, -0.022355, -0.477722,
		-0.360722, 0.686819, 0.630998,
		30.377445, 27.165806, 41.310310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281096, 27.164146, 40.461468>,  <30.629951, 26.685034, 40.868610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281096, 27.164146, 40.461468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369343, 27.337578, 40.810944>,  <30.422291, 27.441637, 41.020630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369343, 27.337578, 40.810944>,  <30.281096, 27.164146, 40.461468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369343, 27.337578, 40.810944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362646, 0.795081, -0.486143,
		-0.905436, 0.424093, 0.018175,
		0.220620, 0.433580, 0.873690,
		30.435530, 27.467651, 41.073051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120258, 27.801058, 40.336689>,  <30.281096, 27.164146, 40.461468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120258, 27.801058, 40.336689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337305, 27.827591, 40.671631>,  <30.467533, 27.843510, 40.872597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337305, 27.827591, 40.671631>,  <30.120258, 27.801058, 40.336689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337305, 27.827591, 40.671631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469413, 0.802741, -0.367776,
		-0.696574, 0.592628, 0.404446,
		0.542619, 0.066331, 0.837356,
		30.500092, 27.847490, 40.922836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206099, 28.557091, 40.376163>,  <30.120258, 27.801058, 40.336689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206099, 28.557091, 40.376163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482141, 28.414217, 40.627934>,  <30.647768, 28.328493, 40.778996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482141, 28.414217, 40.627934>,  <30.206099, 28.557091, 40.376163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482141, 28.414217, 40.627934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640592, 0.706162, -0.301623,
		-0.336738, 0.611355, 0.716138,
		0.690108, -0.357184, 0.629421,
		30.689175, 28.307062, 40.816761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490854, 29.135281, 40.845123>,  <30.206099, 28.557091, 40.376163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490854, 29.135281, 40.845123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770313, 28.850370, 40.818134>,  <30.937988, 28.679424, 40.801941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.770313, 28.850370, 40.818134>,  <30.490854, 29.135281, 40.845123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770313, 28.850370, 40.818134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629248, 0.656603, -0.415836,
		0.340494, 0.248066, 0.906933,
		0.698650, -0.712275, -0.067474,
		30.979908, 28.636688, 40.797894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113255, 29.422274, 41.126812>,  <30.490854, 29.135281, 40.845123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113255, 29.422274, 41.126812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219154, 29.126295, 40.879459>,  <31.282694, 28.948708, 40.731049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219154, 29.126295, 40.879459>,  <31.113255, 29.422274, 41.126812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219154, 29.126295, 40.879459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600466, 0.628265, -0.494696,
		0.754552, -0.240345, 0.610643,
		0.264748, -0.739944, -0.618378,
		31.298578, 28.904312, 40.693947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800772, 29.512321, 41.054745>,  <31.113255, 29.422274, 41.126812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800772, 29.512321, 41.054745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707561, 29.278902, 40.743576>,  <31.651634, 29.138849, 40.556873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707561, 29.278902, 40.743576>,  <31.800772, 29.512321, 41.054745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707561, 29.278902, 40.743576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675632, 0.478207, -0.561106,
		0.699443, -0.656343, 0.282830,
		-0.233026, -0.583550, -0.777925,
		31.637653, 29.103836, 40.510197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434471, 29.301041, 40.766056>,  <31.800772, 29.512321, 41.054745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434471, 29.301041, 40.766056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180389, 29.235899, 40.464066>,  <32.027939, 29.196814, 40.282871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.180389, 29.235899, 40.464066>,  <32.434471, 29.301041, 40.766056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180389, 29.235899, 40.464066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624018, 0.467778, -0.625928,
		0.455095, -0.868713, -0.195514,
		-0.635209, -0.162853, -0.754976,
		31.989826, 29.187042, 40.237572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834217, 29.215034, 40.194633>,  <32.434471, 29.301041, 40.766056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834217, 29.215034, 40.194633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475712, 29.291294, 40.034451>,  <32.260609, 29.337049, 39.938339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475712, 29.291294, 40.034451>,  <32.834217, 29.215034, 40.194633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475712, 29.291294, 40.034451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435973, 0.544601, -0.716476,
		0.081496, -0.816740, -0.571222,
		-0.896262, 0.190647, -0.400459,
		32.206833, 29.348488, 39.914314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.944996, 29.150673, 39.526638>,  <32.834217, 29.215034, 40.194633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.944996, 29.150673, 39.526638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596718, 29.347317, 39.532516>,  <32.387753, 29.465303, 39.536045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596718, 29.347317, 39.532516>,  <32.944996, 29.150673, 39.526638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596718, 29.347317, 39.532516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272330, 0.506778, -0.817932,
		-0.409551, -0.708165, -0.575127,
		-0.870692, 0.491609, 0.014697,
		32.335510, 29.494799, 39.536926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537670, 29.000565, 38.869610>,  <32.944996, 29.150673, 39.526638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537670, 29.000565, 38.869610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416821, 29.342419, 39.038521>,  <32.344311, 29.547531, 39.139866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416821, 29.342419, 39.038521>,  <32.537670, 29.000565, 38.869610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416821, 29.342419, 39.038521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232931, 0.495737, -0.836653,
		-0.924372, -0.154413, -0.348846,
		-0.302126, 0.854635, 0.422278,
		32.326183, 29.598808, 39.165203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.229702, 29.340611, 38.342766>,  <32.537670, 29.000565, 38.869610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.229702, 29.340611, 38.342766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316658, 29.630856, 38.603909>,  <32.368832, 29.805002, 38.760597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316658, 29.630856, 38.603909>,  <32.229702, 29.340611, 38.342766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316658, 29.630856, 38.603909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323600, 0.577454, -0.749553,
		-0.920883, 0.374209, -0.109277,
		0.217388, 0.725613, 0.652862,
		32.381874, 29.848539, 38.799767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.873007, 29.893044, 38.088093>,  <32.229702, 29.340611, 38.342766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.873007, 29.893044, 38.088093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153618, 30.069147, 38.312248>,  <32.321983, 30.174809, 38.446743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153618, 30.069147, 38.312248>,  <31.873007, 29.893044, 38.088093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153618, 30.069147, 38.312248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329113, 0.497324, -0.802716,
		-0.632096, 0.747558, 0.203992,
		0.701527, 0.440257, 0.560388,
		32.364075, 30.201223, 38.480366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861286, 30.611279, 37.924850>,  <31.873007, 29.893044, 38.088093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861286, 30.611279, 37.924850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220543, 30.543613, 38.087196>,  <32.436096, 30.503014, 38.184605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220543, 30.543613, 38.087196>,  <31.861286, 30.611279, 37.924850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220543, 30.543613, 38.087196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432904, 0.501882, -0.748805,
		-0.077023, 0.848233, 0.523993,
		0.898143, -0.169163, 0.405860,
		32.489986, 30.492865, 38.208954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196049, 31.325052, 38.028835>,  <31.861286, 30.611279, 37.924850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196049, 31.325052, 38.028835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479187, 31.042599, 38.021648>,  <32.649071, 30.873127, 38.017334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479187, 31.042599, 38.021648>,  <32.196049, 31.325052, 38.028835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479187, 31.042599, 38.021648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457533, 0.477730, -0.749959,
		0.538157, 0.522636, 0.661241,
		0.707849, -0.706135, -0.017971,
		32.691544, 30.830759, 38.016258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900883, 31.746191, 38.147598>,  <32.196049, 31.325052, 38.028835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900883, 31.746191, 38.147598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987495, 31.388760, 37.990307>,  <33.039463, 31.174301, 37.895931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987495, 31.388760, 37.990307>,  <32.900883, 31.746191, 38.147598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987495, 31.388760, 37.990307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589870, 0.440699, -0.676637,
		0.777926, -0.085442, 0.622520,
		0.216531, -0.893579, -0.393231,
		33.052456, 31.120686, 37.872337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583260, 31.710361, 38.127647>,  <32.900883, 31.746191, 38.147598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583260, 31.710361, 38.127647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488773, 31.436152, 37.852180>,  <33.432079, 31.271626, 37.686901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488773, 31.436152, 37.852180>,  <33.583260, 31.710361, 38.127647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488773, 31.436152, 37.852180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680455, 0.389240, -0.620865,
		0.693673, -0.615265, 0.374522,
		-0.236218, -0.685523, -0.688665,
		33.417908, 31.230495, 37.645580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220299, 31.498407, 37.803009>,  <33.583260, 31.710361, 38.127647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220299, 31.498407, 37.803009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935974, 31.396790, 37.540646>,  <33.765381, 31.335819, 37.383228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.935974, 31.396790, 37.540646>,  <34.220299, 31.498407, 37.803009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935974, 31.396790, 37.540646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609411, 0.243218, -0.754628,
		0.351239, -0.936112, -0.018063,
		-0.710809, -0.254047, -0.655904,
		33.722733, 31.320576, 37.343876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560070, 31.130409, 37.233677>,  <34.220299, 31.498407, 37.803009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560070, 31.130409, 37.233677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203476, 31.239161, 37.088711>,  <33.989521, 31.304411, 37.001732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203476, 31.239161, 37.088711>,  <34.560070, 31.130409, 37.233677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203476, 31.239161, 37.088711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420079, 0.196419, -0.885976,
		-0.169692, -0.942073, -0.289314,
		-0.891481, 0.271878, -0.362414,
		33.936031, 31.320724, 36.979988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500240, 30.848433, 36.559917>,  <34.560070, 31.130409, 37.233677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500240, 30.848433, 36.559917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257412, 31.163452, 36.602291>,  <34.111713, 31.352465, 36.627716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.257412, 31.163452, 36.602291>,  <34.500240, 30.848433, 36.559917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.257412, 31.163452, 36.602291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288865, 0.342906, -0.893853,
		-0.740282, -0.512034, -0.435665,
		-0.607075, 0.787551, 0.105938,
		34.075291, 31.399717, 36.634071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233009, 30.842649, 36.030144>,  <34.500240, 30.848433, 36.559917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233009, 30.842649, 36.030144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131081, 31.208952, 36.154373>,  <34.069923, 31.428734, 36.228912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131081, 31.208952, 36.154373>,  <34.233009, 30.842649, 36.030144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131081, 31.208952, 36.154373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041397, 0.331212, -0.942648,
		-0.966103, -0.227347, -0.122308,
		-0.254818, 0.915758, 0.310573,
		34.054634, 31.483679, 36.247543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658176, 31.133858, 35.568508>,  <34.233009, 30.842649, 36.030144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658176, 31.133858, 35.568508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854019, 31.440817, 35.734104>,  <33.971527, 31.624992, 35.833462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.854019, 31.440817, 35.734104>,  <33.658176, 31.133858, 35.568508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854019, 31.440817, 35.734104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104314, 0.522927, -0.845970,
		-0.865680, 0.371010, 0.336081,
		0.489609, 0.767397, 0.413986,
		34.000900, 31.671036, 35.858299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132645, 31.745192, 35.557598>,  <33.658176, 31.133858, 35.568508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132645, 31.745192, 35.557598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508717, 31.877960, 35.588291>,  <33.734360, 31.957621, 35.606705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508717, 31.877960, 35.588291>,  <33.132645, 31.745192, 35.557598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508717, 31.877960, 35.588291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136536, 0.573472, -0.807767,
		-0.312115, 0.748972, 0.584487,
		0.940182, 0.331920, 0.076728,
		33.790771, 31.977535, 35.611309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066021, 32.508671, 35.541794>,  <33.132645, 31.745192, 35.557598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066021, 32.508671, 35.541794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438896, 32.414600, 35.431728>,  <33.662621, 32.358158, 35.365688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438896, 32.414600, 35.431728>,  <33.066021, 32.508671, 35.541794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438896, 32.414600, 35.431728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076764, 0.614461, -0.785204,
		0.353738, 0.753081, 0.554741,
		0.932189, -0.235172, -0.275168,
		33.718552, 32.344048, 35.349178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366447, 33.119251, 35.248077>,  <33.066021, 32.508671, 35.541794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366447, 33.119251, 35.248077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608109, 32.832001, 35.109921>,  <33.753105, 32.659649, 35.027027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608109, 32.832001, 35.109921>,  <33.366447, 33.119251, 35.248077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608109, 32.832001, 35.109921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097667, 0.363443, -0.926483,
		0.790864, 0.593468, 0.149436,
		0.604149, -0.718127, -0.345396,
		33.789352, 32.616562, 35.006302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696720, 33.496746, 34.838112>,  <33.366447, 33.119251, 35.248077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696720, 33.496746, 34.838112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818989, 33.135300, 34.718086>,  <33.892349, 32.918430, 34.646072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818989, 33.135300, 34.718086>,  <33.696720, 33.496746, 34.838112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818989, 33.135300, 34.718086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047347, 0.300332, -0.952659,
		0.950959, 0.305408, 0.049019,
		0.305672, -0.903619, -0.300063,
		33.910690, 32.864216, 34.628067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080669, 33.642208, 34.215054>,  <33.696720, 33.496746, 34.838112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080669, 33.642208, 34.215054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989395, 33.253040, 34.200291>,  <33.934631, 33.019539, 34.191433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989395, 33.253040, 34.200291>,  <34.080669, 33.642208, 34.215054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989395, 33.253040, 34.200291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036418, 0.046406, -0.998258,
		0.972935, -0.226448, -0.046021,
		-0.228189, -0.972917, -0.036903,
		33.920937, 32.961166, 34.189220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518734, 33.341488, 33.763260>,  <34.080669, 33.642208, 34.215054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518734, 33.341488, 33.763260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236336, 33.058235, 33.767632>,  <34.066898, 32.888283, 33.770256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236336, 33.058235, 33.767632>,  <34.518734, 33.341488, 33.763260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236336, 33.058235, 33.767632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162551, -0.177041, -0.970687,
		0.689313, -0.683521, 0.240098,
		-0.705992, -0.708135, 0.010929,
		34.024536, 32.845795, 33.770912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777885, 32.685326, 33.599895>,  <34.518734, 33.341488, 33.763260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777885, 32.685326, 33.599895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393578, 32.748310, 33.508575>,  <34.162991, 32.786102, 33.453781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393578, 32.748310, 33.508575>,  <34.777885, 32.685326, 33.599895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393578, 32.748310, 33.508575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155414, -0.376120, -0.913444,
		-0.229700, -0.913094, 0.336895,
		-0.960773, 0.157460, -0.228302,
		34.105347, 32.795547, 33.440086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470032, 32.332447, 33.469727>,  <34.777885, 32.685326, 33.599895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470032, 32.332447, 33.469727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718903, 32.105030, 33.254448>,  <35.868225, 31.968580, 33.125282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718903, 32.105030, 33.254448>,  <35.470032, 32.332447, 33.469727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718903, 32.105030, 33.254448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417774, -0.340276, 0.842423,
		-0.662088, -0.748981, 0.025810,
		0.622177, -0.568541, -0.538198,
		35.905556, 31.934467, 33.092987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290573, 31.591789, 33.488991>,  <35.470032, 32.332447, 33.469727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290573, 31.591789, 33.488991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678814, 31.687250, 33.476521>,  <35.911758, 31.744526, 33.469036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.678814, 31.687250, 33.476521>,  <35.290573, 31.591789, 33.488991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678814, 31.687250, 33.476521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187140, -0.666868, 0.721294,
		0.151347, -0.705926, -0.691927,
		0.970604, 0.238653, -0.031179,
		35.969994, 31.758846, 33.467167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572536, 31.015882, 33.556320>,  <35.290573, 31.591789, 33.488991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572536, 31.015882, 33.556320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850548, 31.289192, 33.645836>,  <36.017353, 31.453178, 33.699543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850548, 31.289192, 33.645836>,  <35.572536, 31.015882, 33.556320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850548, 31.289192, 33.645836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415805, -0.635902, 0.650181,
		0.586556, -0.358840, -0.726075,
		0.695024, 0.683273, 0.223785,
		36.059055, 31.494175, 33.712971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106144, 30.621737, 33.714890>,  <35.572536, 31.015882, 33.556320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106144, 30.621737, 33.714890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190647, 30.966587, 33.899113>,  <36.241348, 31.173498, 34.009647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.190647, 30.966587, 33.899113>,  <36.106144, 30.621737, 33.714890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190647, 30.966587, 33.899113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089163, -0.486221, 0.869275,
		0.973356, -0.142574, -0.179586,
		0.211255, 0.862127, 0.460553,
		36.254025, 31.225225, 34.037277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801804, 30.512808, 34.030361>,  <36.106144, 30.621737, 33.714890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801804, 30.512808, 34.030361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585529, 30.793825, 34.215443>,  <36.455765, 30.962435, 34.326492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.585529, 30.793825, 34.215443>,  <36.801804, 30.512808, 34.030361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585529, 30.793825, 34.215443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093707, -0.496312, 0.863072,
		0.835990, 0.510008, 0.202515,
		-0.540685, 0.702543, 0.462703,
		36.423325, 31.004587, 34.354252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077133, 30.532198, 34.732536>,  <36.801804, 30.512808, 34.030361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077133, 30.532198, 34.732536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761421, 30.770407, 34.792381>,  <36.571995, 30.913332, 34.828289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761421, 30.770407, 34.792381>,  <37.077133, 30.532198, 34.732536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761421, 30.770407, 34.792381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118422, -0.386722, 0.914561,
		0.602502, 0.704130, 0.375756,
		-0.789283, 0.595523, 0.149616,
		36.524635, 30.949064, 34.837265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197872, 30.635210, 35.417969>,  <37.077133, 30.532198, 34.732536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197872, 30.635210, 35.417969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821037, 30.753849, 35.355358>,  <36.594936, 30.825033, 35.317791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821037, 30.753849, 35.355358>,  <37.197872, 30.635210, 35.417969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821037, 30.753849, 35.355358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246656, -0.296559, 0.922612,
		0.227226, 0.907790, 0.352543,
		-0.942088, 0.296599, -0.156526,
		36.538410, 30.842829, 35.308399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991863, 30.991753, 36.010712>,  <37.197872, 30.635210, 35.417969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991863, 30.991753, 36.010712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657707, 30.866413, 35.830078>,  <36.457214, 30.791210, 35.721699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657707, 30.866413, 35.830078>,  <36.991863, 30.991753, 36.010712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657707, 30.866413, 35.830078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283909, -0.457511, 0.842662,
		-0.470654, 0.832163, 0.293238,
		-0.835392, -0.313350, -0.451588,
		36.407089, 30.772408, 35.694603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505398, 31.246033, 36.427528>,  <36.991863, 30.991753, 36.010712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505398, 31.246033, 36.427528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352764, 30.932484, 36.231594>,  <36.261185, 30.744354, 36.114033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352764, 30.932484, 36.231594>,  <36.505398, 31.246033, 36.427528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352764, 30.932484, 36.231594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292603, -0.400243, 0.868441,
		-0.876800, 0.474710, -0.076637,
		-0.381584, -0.783872, -0.489834,
		36.238289, 30.697323, 36.084644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913830, 31.118082, 36.839008>,  <36.505398, 31.246033, 36.427528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913830, 31.118082, 36.839008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954189, 30.800379, 36.599350>,  <35.978405, 30.609756, 36.455555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954189, 30.800379, 36.599350>,  <35.913830, 31.118082, 36.839008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954189, 30.800379, 36.599350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359663, -0.590610, 0.722373,
		-0.927611, 0.142602, -0.345259,
		0.100901, -0.794258, -0.599145,
		35.984459, 30.562101, 36.419605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312344, 30.733656, 36.993465>,  <35.913830, 31.118082, 36.839008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312344, 30.733656, 36.993465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544514, 30.457905, 36.820091>,  <35.683815, 30.292454, 36.716068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544514, 30.457905, 36.820091>,  <35.312344, 30.733656, 36.993465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544514, 30.457905, 36.820091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337781, -0.688142, 0.642156,
		-0.740949, -0.226322, -0.632277,
		0.580430, -0.689376, -0.433431,
		35.718643, 30.251093, 36.690063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907021, 30.183107, 36.817818>,  <35.312344, 30.733656, 36.993465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907021, 30.183107, 36.817818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284122, 30.062572, 36.874958>,  <35.510384, 29.990252, 36.909241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284122, 30.062572, 36.874958>,  <34.907021, 30.183107, 36.817818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284122, 30.062572, 36.874958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322124, -0.712042, 0.623885,
		-0.086284, -0.634187, -0.768350,
		0.942757, -0.301335, 0.142850,
		35.566948, 29.972172, 36.917812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846371, 29.431992, 36.825108>,  <34.907021, 30.183107, 36.817818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846371, 29.431992, 36.825108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201347, 29.493574, 36.998890>,  <35.414333, 29.530523, 37.103161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201347, 29.493574, 36.998890>,  <34.846371, 29.431992, 36.825108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201347, 29.493574, 36.998890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219198, -0.688197, 0.691619,
		0.405472, -0.709000, -0.576984,
		0.887437, 0.153958, 0.434456,
		35.467579, 29.539762, 37.129227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205433, 28.769209, 36.777744>,  <34.846371, 29.431992, 36.825108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205433, 28.769209, 36.777744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376316, 28.949871, 37.091049>,  <35.478844, 29.058268, 37.279034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.376316, 28.949871, 37.091049>,  <35.205433, 28.769209, 36.777744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376316, 28.949871, 37.091049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253076, -0.771935, 0.583155,
		0.868014, -0.447353, -0.215472,
		0.427206, 0.451656, 0.783264,
		35.504478, 29.085367, 37.326027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673561, 28.212135, 36.905872>,  <35.205433, 28.769209, 36.777744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673561, 28.212135, 36.905872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593449, 28.462858, 37.207069>,  <35.545380, 28.613293, 37.387787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593449, 28.462858, 37.207069>,  <35.673561, 28.212135, 36.905872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593449, 28.462858, 37.207069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344503, -0.764541, 0.544789,
		0.917172, -0.150296, 0.369062,
		-0.200283, 0.626809, 0.752993,
		35.533363, 28.650900, 37.432968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838158, 27.795601, 37.614300>,  <35.673561, 28.212135, 36.905872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838158, 27.795601, 37.614300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624943, 28.113668, 37.729935>,  <35.497013, 28.304510, 37.799316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624943, 28.113668, 37.729935>,  <35.838158, 27.795601, 37.614300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624943, 28.113668, 37.729935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462407, -0.559919, 0.687510,
		0.708554, 0.232794, 0.666151,
		-0.533039, 0.795171, 0.289088,
		35.465031, 28.352221, 37.816662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918510, 27.872419, 38.303661>,  <35.838158, 27.795601, 37.614300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918510, 27.872419, 38.303661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561134, 28.032309, 38.221695>,  <35.346710, 28.128242, 38.172516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.561134, 28.032309, 38.221695>,  <35.918510, 27.872419, 38.303661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561134, 28.032309, 38.221695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398995, -0.496675, 0.770790,
		0.206326, 0.770413, 0.603236,
		-0.893439, 0.399722, -0.204914,
		35.293102, 28.152225, 38.160221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647320, 27.988747, 38.950302>,  <35.918510, 27.872419, 38.303661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647320, 27.988747, 38.950302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319431, 28.014362, 38.722630>,  <35.122700, 28.029732, 38.586025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319431, 28.014362, 38.722630>,  <35.647320, 27.988747, 38.950302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319431, 28.014362, 38.722630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569284, -0.200524, 0.797311,
		-0.063074, 0.977593, 0.200830,
		-0.819718, 0.064039, -0.569177,
		35.073517, 28.033575, 38.551876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299282, 28.403681, 39.315376>,  <35.647320, 27.988747, 38.950302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299282, 28.403681, 39.315376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045940, 28.217613, 39.067997>,  <34.893936, 28.105972, 38.919567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045940, 28.217613, 39.067997>,  <35.299282, 28.403681, 39.315376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045940, 28.217613, 39.067997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607526, -0.196154, 0.769698,
		-0.479351, 0.863216, -0.158368,
		-0.633351, -0.465168, -0.618453,
		34.855934, 28.078062, 38.882462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593147, 28.637228, 39.496876>,  <35.299282, 28.403681, 39.315376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593147, 28.637228, 39.496876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521114, 28.284590, 39.322353>,  <34.477894, 28.073008, 39.217640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.521114, 28.284590, 39.322353>,  <34.593147, 28.637228, 39.496876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521114, 28.284590, 39.322353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519542, -0.291389, 0.803224,
		-0.835252, 0.371328, -0.405550,
		-0.180086, -0.881594, -0.436303,
		34.467087, 28.020111, 39.191463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830906, 28.479902, 39.464142>,  <34.593147, 28.637228, 39.496876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830906, 28.479902, 39.464142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014469, 28.125046, 39.444618>,  <34.124607, 27.912132, 39.432903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014469, 28.125046, 39.444618>,  <33.830906, 28.479902, 39.464142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014469, 28.125046, 39.444618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613806, -0.356276, 0.704493,
		-0.642375, -0.293338, -0.708031,
		0.458909, -0.887141, -0.048810,
		34.152142, 27.858904, 39.429974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305237, 28.089691, 39.594593>,  <33.830906, 28.479902, 39.464142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305237, 28.089691, 39.594593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626965, 27.861315, 39.660431>,  <33.820004, 27.724289, 39.699932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626965, 27.861315, 39.660431>,  <33.305237, 28.089691, 39.594593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626965, 27.861315, 39.660431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448142, -0.400992, 0.798983,
		-0.390159, -0.716411, -0.578387,
		0.804329, -0.570930, 0.164604,
		33.868259, 27.690031, 39.709808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007381, 27.594116, 39.930717>,  <33.305237, 28.089691, 39.594593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007381, 27.594116, 39.930717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397724, 27.545698, 40.003429>,  <33.631931, 27.516647, 40.047058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.397724, 27.545698, 40.003429>,  <33.007381, 27.594116, 39.930717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397724, 27.545698, 40.003429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213469, -0.352927, 0.910974,
		-0.046112, -0.927788, -0.370247,
		0.975861, -0.121043, 0.181779,
		33.690483, 27.509384, 40.057964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105995, 26.853117, 40.137779>,  <33.007381, 27.594116, 39.930717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105995, 26.853117, 40.137779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417652, 27.056444, 40.284504>,  <33.604645, 27.178440, 40.372540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417652, 27.056444, 40.284504>,  <33.105995, 26.853117, 40.137779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417652, 27.056444, 40.284504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240641, -0.297785, 0.923805,
		0.578820, -0.808044, -0.109694,
		0.779140, 0.508320, 0.366813,
		33.651394, 27.208941, 40.394547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555740, 26.366892, 40.570740>,  <33.105995, 26.853117, 40.137779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555740, 26.366892, 40.570740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591591, 26.747829, 40.687366>,  <33.613102, 26.976391, 40.757343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591591, 26.747829, 40.687366>,  <33.555740, 26.366892, 40.570740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591591, 26.747829, 40.687366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258224, -0.260515, 0.930297,
		0.961918, -0.158672, 0.222567,
		0.089630, 0.952342, 0.291567,
		33.618481, 27.033531, 40.774837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802475, 26.360268, 41.276028>,  <33.555740, 26.366892, 40.570740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802475, 26.360268, 41.276028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642738, 26.726406, 41.255356>,  <33.546898, 26.946089, 41.242954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642738, 26.726406, 41.255356>,  <33.802475, 26.360268, 41.276028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642738, 26.726406, 41.255356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255528, -0.056991, 0.965120,
		0.880472, 0.398619, 0.256655,
		-0.399343, 0.915344, -0.051680,
		33.522934, 27.001009, 41.239853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993225, 26.581657, 41.961994>,  <33.802475, 26.360268, 41.276028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993225, 26.581657, 41.961994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728580, 26.857725, 41.844734>,  <33.569794, 27.023365, 41.774376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728580, 26.857725, 41.844734>,  <33.993225, 26.581657, 41.961994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728580, 26.857725, 41.844734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443835, -0.045330, 0.894961,
		0.604384, 0.722229, 0.336311,
		-0.661612, 0.690167, -0.293153,
		33.530098, 27.064775, 41.756786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879498, 27.010084, 42.506886>,  <33.993225, 26.581657, 41.961994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879498, 27.010084, 42.506886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553402, 27.048401, 42.278427>,  <33.357746, 27.071390, 42.141354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553402, 27.048401, 42.278427>,  <33.879498, 27.010084, 42.506886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553402, 27.048401, 42.278427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571518, 0.026224, 0.820170,
		0.093544, 0.995056, 0.033369,
		-0.815240, 0.095792, -0.571145,
		33.308830, 27.077139, 42.107082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478447, 27.327225, 42.965939>,  <33.879498, 27.010084, 42.506886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478447, 27.327225, 42.965939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222385, 27.196060, 42.688038>,  <33.068748, 27.117361, 42.521297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222385, 27.196060, 42.688038>,  <33.478447, 27.327225, 42.965939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222385, 27.196060, 42.688038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686814, -0.160928, 0.708794,
		-0.344226, 0.930901, -0.122195,
		-0.640152, -0.327910, -0.694752,
		33.030338, 27.097687, 42.479610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886467, 27.693275, 43.005795>,  <33.478447, 27.327225, 42.965939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886467, 27.693275, 43.005795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785309, 27.343281, 42.840660>,  <32.724613, 27.133284, 42.741577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785309, 27.343281, 42.840660>,  <32.886467, 27.693275, 43.005795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785309, 27.343281, 42.840660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681473, -0.141791, 0.717976,
		-0.686758, 0.462915, -0.560423,
		-0.252899, -0.874989, -0.412840,
		32.709438, 27.080784, 42.716808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216167, 27.684267, 43.083508>,  <32.886467, 27.693275, 43.005795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216167, 27.684267, 43.083508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294743, 27.298254, 43.014084>,  <32.341888, 27.066647, 42.972431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.294743, 27.298254, 43.014084>,  <32.216167, 27.684267, 43.083508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294743, 27.298254, 43.014084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588143, -0.257595, 0.766637,
		-0.784538, -0.048519, -0.618180,
		0.196436, -0.965034, -0.173557,
		32.353672, 27.008743, 42.962017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546497, 27.300478, 43.082611>,  <32.216167, 27.684267, 43.083508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546497, 27.300478, 43.082611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819525, 27.012682, 43.133900>,  <31.983341, 26.840004, 43.164673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819525, 27.012682, 43.133900>,  <31.546497, 27.300478, 43.082611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819525, 27.012682, 43.133900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529152, -0.365536, 0.765756,
		-0.504083, -0.590526, -0.630221,
		0.682567, -0.719487, 0.128217,
		32.024296, 26.796835, 43.172363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233770, 26.580011, 43.142014>,  <31.546497, 27.300478, 43.082611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233770, 26.580011, 43.142014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589506, 26.547113, 43.321930>,  <31.802948, 26.527374, 43.429878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589506, 26.547113, 43.321930>,  <31.233770, 26.580011, 43.142014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589506, 26.547113, 43.321930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412198, -0.569964, 0.710798,
		0.197903, -0.817543, -0.540793,
		0.889341, -0.082244, 0.449787,
		31.856308, 26.522440, 43.456867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056536, 26.056307, 43.553745>,  <31.233770, 26.580011, 43.142014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056536, 26.056307, 43.553745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416855, 26.189461, 43.665279>,  <31.633047, 26.269354, 43.732201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416855, 26.189461, 43.665279>,  <31.056536, 26.056307, 43.553745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416855, 26.189461, 43.665279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132870, -0.400030, 0.906819,
		0.413410, -0.853911, -0.316116,
		0.900798, 0.332885, 0.278836,
		31.687094, 26.289326, 43.748932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254166, 25.541784, 43.964912>,  <31.056536, 26.056307, 43.553745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254166, 25.541784, 43.964912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468884, 25.846348, 44.110298>,  <31.597713, 26.029085, 44.197529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.468884, 25.846348, 44.110298>,  <31.254166, 25.541784, 43.964912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468884, 25.846348, 44.110298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199787, -0.303833, 0.931542,
		0.819718, -0.572662, -0.010976,
		0.536794, 0.761409, 0.363468,
		31.629921, 26.074770, 44.219337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805672, 25.315571, 44.506908>,  <31.254166, 25.541784, 43.964912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805672, 25.315571, 44.506908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708786, 25.697531, 44.575611>,  <31.650654, 25.926706, 44.616833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.708786, 25.697531, 44.575611>,  <31.805672, 25.315571, 44.506908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708786, 25.697531, 44.575611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034910, -0.168340, 0.985111,
		0.969595, 0.244603, 0.007439,
		-0.242214, 0.954898, 0.171761,
		31.636122, 25.984001, 44.627140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238884, 25.473013, 45.015221>,  <31.805672, 25.315571, 44.506908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238884, 25.473013, 45.015221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963333, 25.762531, 45.031059>,  <31.798002, 25.936243, 45.040562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.963333, 25.762531, 45.031059>,  <32.238884, 25.473013, 45.015221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.963333, 25.762531, 45.031059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046593, -0.010299, 0.998861,
		0.723380, 0.689937, -0.026629,
		-0.688876, 0.723797, 0.039596,
		31.756670, 25.979670, 45.042938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438705, 25.841625, 45.603813>,  <32.238884, 25.473013, 45.015221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438705, 25.841625, 45.603813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066406, 25.952950, 45.508945>,  <31.843027, 26.019745, 45.452023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066406, 25.952950, 45.508945>,  <32.438705, 25.841625, 45.603813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066406, 25.952950, 45.508945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229314, 0.060965, 0.971441,
		0.284822, 0.958554, 0.007077,
		-0.930748, 0.278311, -0.237174,
		31.787182, 26.036444, 45.437794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913116, 26.230913, 46.073109>,  <32.438705, 25.841625, 45.603813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913116, 26.230913, 46.073109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030167, 26.468515, 46.372849>,  <32.100395, 26.611076, 46.552692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030167, 26.468515, 46.372849>,  <31.913116, 26.230913, 46.073109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030167, 26.468515, 46.372849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670671, 0.431093, -0.603622,
		-0.681595, 0.679204, -0.272233,
		0.292625, 0.594004, 0.749353,
		32.117954, 26.646717, 46.597656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972971, 26.980387, 45.829189>,  <31.913116, 26.230913, 46.073109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972971, 26.980387, 45.829189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215012, 26.948156, 46.146011>,  <32.360237, 26.928818, 46.336105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215012, 26.948156, 46.146011>,  <31.972971, 26.980387, 45.829189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215012, 26.948156, 46.146011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727920, 0.458943, -0.509414,
		-0.322464, 0.884804, 0.336361,
		0.605103, -0.080576, 0.792060,
		32.396542, 26.923983, 46.383629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272148, 27.591246, 45.809299>,  <31.972971, 26.980387, 45.829189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272148, 27.591246, 45.809299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510601, 27.382931, 46.053730>,  <32.653671, 27.257942, 46.200390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510601, 27.382931, 46.053730>,  <32.272148, 27.591246, 45.809299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510601, 27.382931, 46.053730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796088, 0.482248, -0.365623,
		-0.104279, 0.704428, 0.702073,
		0.596129, -0.520785, 0.611076,
		32.689438, 27.226696, 46.237053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710751, 28.068443, 46.185680>,  <32.272148, 27.591246, 45.809299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710751, 28.068443, 46.185680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861328, 27.701576, 46.133373>,  <32.951675, 27.481457, 46.101990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861328, 27.701576, 46.133373>,  <32.710751, 28.068443, 46.185680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861328, 27.701576, 46.133373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864960, 0.398502, -0.305026,
		0.331870, 0.001717, 0.943324,
		0.376440, -0.917166, -0.130765,
		32.974258, 27.426426, 46.094143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413486, 28.133663, 46.331444>,  <32.710751, 28.068443, 46.185680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413486, 28.133663, 46.331444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429600, 27.762274, 46.183762>,  <33.439266, 27.539440, 46.095150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429600, 27.762274, 46.183762>,  <33.413486, 28.133663, 46.331444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429600, 27.762274, 46.183762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795173, 0.253539, -0.550834,
		0.605043, -0.271397, 0.748509,
		0.040282, -0.928473, -0.369210,
		33.441685, 27.483732, 46.072998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135025, 27.917660, 46.435181>,  <33.413486, 28.133663, 46.331444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135025, 27.917660, 46.435181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973087, 27.700369, 46.140968>,  <33.875923, 27.569994, 45.964439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.973087, 27.700369, 46.140968>,  <34.135025, 27.917660, 46.435181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973087, 27.700369, 46.140968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745625, 0.269500, -0.609437,
		0.529288, -0.795158, 0.295937,
		-0.404844, -0.543225, -0.735532,
		33.851635, 27.537401, 45.920307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615845, 27.533556, 46.190350>,  <34.135025, 27.917660, 46.435181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615845, 27.533556, 46.190350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349060, 27.536167, 45.892326>,  <34.188988, 27.537735, 45.713512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349060, 27.536167, 45.892326>,  <34.615845, 27.533556, 46.190350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349060, 27.536167, 45.892326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729762, 0.207508, -0.651450,
		0.150352, -0.978212, -0.143165,
		-0.666964, 0.006530, -0.745061,
		34.148972, 27.538126, 45.668808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905594, 27.175322, 45.621998>,  <34.615845, 27.533556, 46.190350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905594, 27.175322, 45.621998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615601, 27.389174, 45.448296>,  <34.441605, 27.517485, 45.344074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615601, 27.389174, 45.448296>,  <34.905594, 27.175322, 45.621998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615601, 27.389174, 45.448296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648674, 0.317998, -0.691447,
		-0.231575, -0.782975, -0.577341,
		-0.724979, 0.534628, -0.434255,
		34.398106, 27.549562, 45.318020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999294, 27.081715, 44.932400>,  <34.905594, 27.175322, 45.621998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999294, 27.081715, 44.932400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805332, 27.429756, 44.967690>,  <34.688953, 27.638582, 44.988865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805332, 27.429756, 44.967690>,  <34.999294, 27.081715, 44.932400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805332, 27.429756, 44.967690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521552, 0.368676, -0.769456,
		-0.702035, -0.327098, -0.632578,
		-0.484904, 0.870106, 0.088225,
		34.659863, 27.690788, 44.994156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731827, 27.145166, 44.313457>,  <34.999294, 27.081715, 44.932400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731827, 27.145166, 44.313457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744335, 27.506870, 44.483791>,  <34.751839, 27.723892, 44.585991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.744335, 27.506870, 44.483791>,  <34.731827, 27.145166, 44.313457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744335, 27.506870, 44.483791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552400, 0.339435, -0.761340,
		-0.832992, 0.259038, -0.488899,
		0.031267, 0.904258, 0.425839,
		34.753716, 27.778149, 44.611542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502472, 27.605639, 43.732399>,  <34.731827, 27.145166, 44.313457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502472, 27.605639, 43.732399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674698, 27.841921, 44.005360>,  <34.778034, 27.983690, 44.169136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674698, 27.841921, 44.005360>,  <34.502472, 27.605639, 43.732399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674698, 27.841921, 44.005360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593117, 0.384719, -0.707251,
		-0.680312, 0.709265, -0.184712,
		0.430566, 0.590707, 0.682406,
		34.803867, 28.019133, 44.210083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511436, 28.205238, 43.304802>,  <34.502472, 27.605639, 43.732399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511436, 28.205238, 43.304802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761433, 28.269789, 43.610310>,  <34.911430, 28.308519, 43.793613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761433, 28.269789, 43.610310>,  <34.511436, 28.205238, 43.304802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761433, 28.269789, 43.610310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640558, 0.453192, -0.619921,
		-0.446174, 0.876684, 0.179871,
		0.624991, 0.161375, 0.763770,
		34.948929, 28.318201, 43.839439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709568, 28.877983, 43.340462>,  <34.511436, 28.205238, 43.304802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709568, 28.877983, 43.340462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001972, 28.669401, 43.516510>,  <35.177414, 28.544252, 43.622139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001972, 28.669401, 43.516510>,  <34.709568, 28.877983, 43.340462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001972, 28.669401, 43.516510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674823, 0.456848, -0.579572,
		0.101152, 0.720678, 0.685851,
		0.731015, -0.521452, 0.440119,
		35.221275, 28.512966, 43.648544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094639, 29.388277, 43.494801>,  <34.709568, 28.877983, 43.340462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094639, 29.388277, 43.494801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329067, 29.064417, 43.507351>,  <35.469723, 28.870100, 43.514881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329067, 29.064417, 43.507351>,  <35.094639, 29.388277, 43.494801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329067, 29.064417, 43.507351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656946, 0.452158, -0.603304,
		0.474281, 0.374189, 0.796894,
		0.586072, -0.809652, 0.031372,
		35.504890, 28.821522, 43.516762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764156, 29.631344, 43.585201>,  <35.094639, 29.388277, 43.494801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764156, 29.631344, 43.585201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788933, 29.259636, 43.439533>,  <35.803799, 29.036612, 43.352131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788933, 29.259636, 43.439533>,  <35.764156, 29.631344, 43.585201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788933, 29.259636, 43.439533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663492, 0.310916, -0.680521,
		0.745615, -0.199473, 0.635822,
		0.061942, -0.929269, -0.364173,
		35.807514, 28.980856, 43.330280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425629, 29.594841, 43.475262>,  <35.764156, 29.631344, 43.585201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425629, 29.594841, 43.475262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255524, 29.318413, 43.241486>,  <36.153461, 29.152555, 43.101219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255524, 29.318413, 43.241486>,  <36.425629, 29.594841, 43.475262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255524, 29.318413, 43.241486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539294, 0.325107, -0.776832,
		0.726851, -0.645545, 0.234433,
		-0.425263, -0.691069, -0.584443,
		36.127945, 29.111092, 43.066154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993355, 29.347019, 43.093292>,  <36.425629, 29.594841, 43.475262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993355, 29.347019, 43.093292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694180, 29.175842, 42.890331>,  <36.514675, 29.073135, 42.768555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694180, 29.175842, 42.890331>,  <36.993355, 29.347019, 43.093292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694180, 29.175842, 42.890331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529550, 0.076193, -0.844850,
		0.400209, -0.900588, 0.169630,
		-0.747937, -0.427944, -0.507400,
		36.469799, 29.047459, 42.738110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258183, 28.859941, 42.710682>,  <36.993355, 29.347019, 43.093292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258183, 28.859941, 42.710682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913712, 28.918713, 42.516037>,  <36.707031, 28.953976, 42.399250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913712, 28.918713, 42.516037>,  <37.258183, 28.859941, 42.710682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913712, 28.918713, 42.516037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506929, 0.177748, -0.843463,
		-0.037434, -0.973046, -0.227554,
		-0.861175, 0.146927, -0.486611,
		36.655357, 28.962791, 42.370052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383320, 28.392681, 42.076653>,  <37.258183, 28.859941, 42.710682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383320, 28.392681, 42.076653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088627, 28.654449, 42.008583>,  <36.911812, 28.811510, 41.967739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088627, 28.654449, 42.008583>,  <37.383320, 28.392681, 42.076653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088627, 28.654449, 42.008583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402550, 0.222261, -0.888005,
		-0.543306, -0.722726, -0.427184,
		-0.736730, 0.654422, -0.170178,
		36.867607, 28.850777, 41.957531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203648, 28.303467, 41.407242>,  <37.383320, 28.392681, 42.076653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203648, 28.303467, 41.407242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048306, 28.669518, 41.450550>,  <36.955101, 28.889149, 41.476536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.048306, 28.669518, 41.450550>,  <37.203648, 28.303467, 41.407242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048306, 28.669518, 41.450550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302999, 0.237772, -0.922852,
		-0.870271, -0.325588, -0.369623,
		-0.388356, 0.915127, 0.108273,
		36.931797, 28.944056, 41.483032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652420, 28.479372, 40.824543>,  <37.203648, 28.303467, 41.407242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652420, 28.479372, 40.824543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801704, 28.818613, 40.974976>,  <36.891273, 29.022158, 41.065235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801704, 28.818613, 40.974976>,  <36.652420, 28.479372, 40.824543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801704, 28.818613, 40.974976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057292, 0.383527, -0.921751,
		-0.925977, 0.365551, 0.094546,
		0.373208, 0.848103, 0.376080,
		36.913666, 29.073044, 41.087799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300179, 28.972307, 40.431511>,  <36.652420, 28.479372, 40.824543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300179, 28.972307, 40.431511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623032, 29.155085, 40.581039>,  <36.816742, 29.264751, 40.670757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623032, 29.155085, 40.581039>,  <36.300179, 28.972307, 40.431511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623032, 29.155085, 40.581039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166401, 0.431440, -0.886663,
		-0.566436, 0.777857, 0.272193,
		0.807132, 0.456944, 0.373819,
		36.865170, 29.292168, 40.693184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183510, 29.663794, 40.107090>,  <36.300179, 28.972307, 40.431511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183510, 29.663794, 40.107090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563126, 29.614159, 40.222969>,  <36.790897, 29.584377, 40.292496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563126, 29.614159, 40.222969>,  <36.183510, 29.663794, 40.107090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563126, 29.614159, 40.222969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292626, 0.688249, -0.663839,
		-0.117008, 0.714783, 0.689488,
		0.949041, -0.124087, 0.289695,
		36.847839, 29.576933, 40.309879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398266, 30.338440, 40.176643>,  <36.183510, 29.663794, 40.107090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398266, 30.338440, 40.176643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727287, 30.112726, 40.148384>,  <36.924702, 29.977299, 40.131428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727287, 30.112726, 40.148384>,  <36.398266, 30.338440, 40.176643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727287, 30.112726, 40.148384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317036, 0.558144, -0.766788,
		0.472118, 0.608325, 0.638001,
		0.822553, -0.564284, -0.070649,
		36.974052, 29.943441, 40.127190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856514, 30.756407, 39.959999>,  <36.398266, 30.338440, 40.176643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856514, 30.756407, 39.959999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031559, 30.416191, 39.843327>,  <37.136585, 30.212063, 39.773323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031559, 30.416191, 39.843327>,  <36.856514, 30.756407, 39.959999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031559, 30.416191, 39.843327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343735, 0.458002, -0.819805,
		0.830867, 0.258495, 0.492788,
		0.437613, -0.850538, -0.291685,
		37.162842, 30.161030, 39.755821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534363, 30.892254, 39.678574>,  <36.856514, 30.756407, 39.959999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534363, 30.892254, 39.678574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489506, 30.524628, 39.527447>,  <37.462589, 30.304052, 39.436771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489506, 30.524628, 39.527447>,  <37.534363, 30.892254, 39.678574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489506, 30.524628, 39.527447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361326, 0.316472, -0.877091,
		0.925671, -0.234877, 0.296590,
		-0.112146, -0.919064, -0.377817,
		37.455860, 30.248909, 39.414101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253197, 30.695061, 39.369358>,  <37.534363, 30.892254, 39.678574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253197, 30.695061, 39.369358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985493, 30.453234, 39.196571>,  <37.824871, 30.308138, 39.092899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985493, 30.453234, 39.196571>,  <38.253197, 30.695061, 39.369358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985493, 30.453234, 39.196571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238418, 0.375885, -0.895470,
		0.703740, -0.702289, -0.107424,
		-0.669258, -0.604567, -0.431964,
		37.784714, 30.271864, 39.066982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561058, 30.331049, 38.879330>,  <38.253197, 30.695061, 39.369358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561058, 30.331049, 38.879330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180519, 30.320953, 38.756500>,  <37.952194, 30.314896, 38.682804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180519, 30.320953, 38.756500>,  <38.561058, 30.331049, 38.879330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180519, 30.320953, 38.756500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283079, 0.321877, -0.903472,
		0.121643, -0.946445, -0.299073,
		-0.951351, -0.025240, -0.307073,
		37.895115, 30.313381, 38.664379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636723, 29.969992, 38.304550>,  <38.561058, 30.331049, 38.879330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636723, 29.969992, 38.304550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279060, 30.144867, 38.265854>,  <38.064465, 30.249792, 38.242638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279060, 30.144867, 38.265854>,  <38.636723, 29.969992, 38.304550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279060, 30.144867, 38.265854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330837, 0.499465, -0.800675,
		-0.301729, -0.747930, -0.591236,
		-0.894151, 0.437190, -0.096740,
		38.010815, 30.276024, 38.236832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.382553, 29.802645, 37.562996>,  <38.636723, 29.969992, 38.304550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.382553, 29.802645, 37.562996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208458, 30.132061, 37.708515>,  <38.104000, 30.329710, 37.795826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208458, 30.132061, 37.708515>,  <38.382553, 29.802645, 37.562996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208458, 30.132061, 37.708515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349125, 0.526843, -0.774950,
		-0.829868, -0.210277, -0.516821,
		-0.435237, 0.823541, 0.363797,
		38.077888, 30.379124, 37.817654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125008, 30.144373, 36.906563>,  <38.382553, 29.802645, 37.562996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125008, 30.144373, 36.906563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111607, 30.426022, 37.190277>,  <38.103565, 30.595011, 37.360508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.111607, 30.426022, 37.190277>,  <38.125008, 30.144373, 36.906563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.111607, 30.426022, 37.190277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456905, 0.641973, -0.615718,
		-0.888885, 0.303451, -0.343222,
		-0.033499, 0.704122, 0.709288,
		38.101559, 30.637259, 37.403065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884739, 30.757938, 36.547333>,  <38.125008, 30.144373, 36.906563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884739, 30.757938, 36.547333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045757, 30.912092, 36.879459>,  <38.142368, 31.004585, 37.078735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045757, 30.912092, 36.879459>,  <37.884739, 30.757938, 36.547333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045757, 30.912092, 36.879459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440866, 0.713313, -0.544814,
		-0.802241, 0.585375, 0.117240,
		0.402549, 0.385385, 0.830321,
		38.166523, 31.027708, 37.128555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718353, 31.497444, 36.524399>,  <37.884739, 30.757938, 36.547333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718353, 31.497444, 36.524399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031952, 31.456127, 36.769245>,  <38.220112, 31.431337, 36.916153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031952, 31.456127, 36.769245>,  <37.718353, 31.497444, 36.524399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031952, 31.456127, 36.769245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465818, 0.749669, -0.470118,
		-0.410323, 0.653703, 0.635851,
		0.783995, -0.103290, 0.612113,
		38.267151, 31.425140, 36.952881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917557, 32.206692, 36.744331>,  <37.718353, 31.497444, 36.524399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917557, 32.206692, 36.744331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245022, 31.979551, 36.778595>,  <38.441502, 31.843267, 36.799152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245022, 31.979551, 36.778595>,  <37.917557, 32.206692, 36.744331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245022, 31.979551, 36.778595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560742, 0.758240, -0.332625,
		0.123934, 0.320338, 0.939161,
		0.818663, -0.567851, 0.085655,
		38.490620, 31.809196, 36.804291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511749, 32.684593, 36.926517>,  <37.917557, 32.206692, 36.744331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511749, 32.684593, 36.926517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705982, 32.352238, 36.817822>,  <38.822521, 32.152824, 36.752605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.705982, 32.352238, 36.817822>,  <38.511749, 32.684593, 36.926517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705982, 32.352238, 36.817822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724253, 0.556443, -0.407221,
		0.489559, 0.000934, 0.871970,
		0.485582, -0.830885, -0.271735,
		38.851658, 32.102974, 36.736301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192284, 32.771854, 37.187744>,  <38.511749, 32.684593, 36.926517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192284, 32.771854, 37.187744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220097, 32.513592, 36.883560>,  <39.236786, 32.358635, 36.701050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.220097, 32.513592, 36.883560>,  <39.192284, 32.771854, 37.187744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220097, 32.513592, 36.883560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694219, 0.578753, -0.427908,
		0.716398, -0.498170, 0.488468,
		0.069532, -0.645656, -0.760456,
		39.240955, 32.319897, 36.655422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876350, 32.885384, 37.090843>,  <39.192284, 32.771854, 37.187744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876350, 32.885384, 37.090843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771275, 32.683720, 36.761768>,  <39.708229, 32.562721, 36.564323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771275, 32.683720, 36.761768>,  <39.876350, 32.885384, 37.090843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771275, 32.683720, 36.761768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607477, 0.576020, -0.546966,
		0.749645, -0.643444, 0.154955,
		-0.262685, -0.504163, -0.822689,
		39.692471, 32.532471, 36.514961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489075, 32.716259, 36.720985>,  <39.876350, 32.885384, 37.090843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489075, 32.716259, 36.720985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187038, 32.715736, 36.458736>,  <40.005817, 32.715424, 36.301388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187038, 32.715736, 36.458736>,  <40.489075, 32.716259, 36.720985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187038, 32.715736, 36.458736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621482, 0.317073, -0.716397,
		0.208815, -0.948400, -0.238607,
		-0.755087, -0.001304, -0.655624,
		39.960514, 32.715343, 36.262051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782467, 32.485256, 36.223331>,  <40.489075, 32.716259, 36.720985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782467, 32.485256, 36.223331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458031, 32.653400, 36.060638>,  <40.263367, 32.754288, 35.963024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458031, 32.653400, 36.060638>,  <40.782467, 32.485256, 36.223331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458031, 32.653400, 36.060638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573136, 0.432295, -0.696158,
		-0.116809, -0.797759, -0.591553,
		-0.811093, 0.420358, -0.406729,
		40.214703, 32.779507, 35.938622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863529, 32.462959, 35.532436>,  <40.782467, 32.485256, 36.223331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863529, 32.462959, 35.532436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585403, 32.748566, 35.565228>,  <40.418530, 32.919930, 35.584904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.585403, 32.748566, 35.565228>,  <40.863529, 32.462959, 35.532436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585403, 32.748566, 35.565228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498459, 0.561260, -0.660701,
		-0.517765, -0.418528, -0.746159,
		-0.695311, 0.714018, 0.081982,
		40.376808, 32.962772, 35.589821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743523, 32.608002, 34.906826>,  <40.863529, 32.462959, 35.532436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743523, 32.608002, 34.906826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627522, 32.932220, 35.110355>,  <40.557919, 33.126751, 35.232471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.627522, 32.932220, 35.110355>,  <40.743523, 32.608002, 34.906826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627522, 32.932220, 35.110355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512804, 0.580517, -0.632480,
		-0.808039, 0.077503, -0.584008,
		-0.290007, 0.810551, 0.508825,
		40.540520, 33.175385, 35.263004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.364906, 33.117592, 34.488117>,  <40.743523, 32.608002, 34.906826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.364906, 33.117592, 34.488117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546383, 33.328758, 34.775303>,  <40.655270, 33.455460, 34.947613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546383, 33.328758, 34.775303>,  <40.364906, 33.117592, 34.488117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546383, 33.328758, 34.775303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572100, 0.445172, -0.688857,
		-0.683274, 0.723275, -0.100048,
		0.453695, 0.527915, 0.717960,
		40.682491, 33.487133, 34.990692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.291019, 33.915722, 34.372749>,  <40.364906, 33.117592, 34.488117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.291019, 33.915722, 34.372749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629620, 33.805748, 34.555111>,  <40.832779, 33.739761, 34.664528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629620, 33.805748, 34.555111>,  <40.291019, 33.915722, 34.372749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629620, 33.805748, 34.555111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532364, 0.445383, -0.719877,
		-0.005128, 0.852081, 0.523384,
		0.846500, -0.274939, 0.455901,
		40.883568, 33.723267, 34.691883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996639, 34.357975, 34.142628>,  <40.291019, 33.915722, 34.372749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996639, 34.357975, 34.142628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091450, 34.006088, 34.307510>,  <41.148335, 33.794956, 34.406441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091450, 34.006088, 34.307510>,  <40.996639, 34.357975, 34.142628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091450, 34.006088, 34.307510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846533, -0.021156, -0.531916,
		0.476657, 0.475023, 0.739697,
		0.237023, -0.879719, 0.412207,
		41.162556, 33.742172, 34.431171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639385, 34.337299, 34.474644>,  <40.996639, 34.357975, 34.142628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639385, 34.337299, 34.474644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534286, 34.007862, 34.273579>,  <41.471226, 33.810200, 34.152939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534286, 34.007862, 34.273579>,  <41.639385, 34.337299, 34.474644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534286, 34.007862, 34.273579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695463, 0.199453, -0.690325,
		0.668801, -0.530961, 0.520370,
		-0.262746, -0.823589, -0.502659,
		41.455463, 33.760784, 34.122780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173962, 34.566261, 35.070686>,  <41.639385, 34.337299, 34.474644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173962, 34.566261, 35.070686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828545, 34.577869, 35.272060>,  <41.621292, 34.584835, 35.392883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828545, 34.577869, 35.272060>,  <42.173962, 34.566261, 35.070686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828545, 34.577869, 35.272060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102637, -0.987560, -0.119124,
		0.493715, -0.154540, 0.855782,
		-0.863546, 0.029021, 0.503435,
		41.569481, 34.586575, 35.423092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462410, 35.328819, 35.001194>,  <42.173962, 34.566261, 35.070686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462410, 35.328819, 35.001194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257309, 35.562737, 34.749767>,  <42.134251, 35.703087, 34.598911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.257309, 35.562737, 34.749767>,  <42.462410, 35.328819, 35.001194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.257309, 35.562737, 34.749767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781710, 0.620733, -0.060168,
		0.354988, -0.522210, -0.775422,
		-0.512751, 0.584797, -0.628570,
		42.103485, 35.738174, 34.561195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.633633, 35.749695, 34.453377>,  <42.462410, 35.328819, 35.001194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.633633, 35.749695, 34.453377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012737, 35.811298, 34.341644>,  <43.240200, 35.848263, 34.274605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012737, 35.811298, 34.341644>,  <42.633633, 35.749695, 34.453377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012737, 35.811298, 34.341644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317999, 0.387905, -0.865104,
		-0.024883, 0.908741, 0.416618,
		0.947764, 0.154011, -0.279326,
		43.297066, 35.857502, 34.257847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818504, 36.525368, 34.224136>,  <42.633633, 35.749695, 34.453377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.818504, 36.525368, 34.224136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923325, 36.163357, 34.090122>,  <42.986217, 35.946148, 34.009712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.923325, 36.163357, 34.090122>,  <42.818504, 36.525368, 34.224136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.923325, 36.163357, 34.090122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730947, 0.040544, -0.681229,
		0.630118, 0.423407, -0.650905,
		0.262047, -0.905031, -0.335036,
		43.001938, 35.891846, 33.989613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823498, 36.546021, 35.008137>,  <42.818504, 36.525368, 34.224136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823498, 36.546021, 35.008137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086185, 36.489986, 35.304539>,  <43.243797, 36.456367, 35.482380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.086185, 36.489986, 35.304539>,  <42.823498, 36.546021, 35.008137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.086185, 36.489986, 35.304539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563699, 0.561536, 0.605740,
		-0.500957, -0.815508, 0.289808,
		0.656723, -0.140085, 0.741007,
		43.283203, 36.447960, 35.526840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613190, 36.281368, 35.657066>,  <42.823498, 36.546021, 35.008137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613190, 36.281368, 35.657066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945091, 36.464165, 35.785233>,  <43.144234, 36.573841, 35.862133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.945091, 36.464165, 35.785233>,  <42.613190, 36.281368, 35.657066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.945091, 36.464165, 35.785233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532341, 0.475519, 0.700354,
		0.167689, -0.751694, 0.637838,
		0.829756, 0.456989, 0.320418,
		43.194019, 36.601261, 35.881359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607109, 36.170395, 36.385357>,  <42.613190, 36.281368, 35.657066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607109, 36.170395, 36.385357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857765, 36.480862, 36.357380>,  <43.008160, 36.667141, 36.340595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857765, 36.480862, 36.357380>,  <42.607109, 36.170395, 36.385357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857765, 36.480862, 36.357380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475364, 0.451818, 0.754910,
		0.617535, -0.439809, 0.652088,
		0.626642, 0.776162, -0.069944,
		43.045757, 36.713711, 36.336395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887428, 36.283379, 37.054619>,  <42.607109, 36.170395, 36.385357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.887428, 36.283379, 37.054619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942612, 36.631020, 36.864616>,  <42.975723, 36.839603, 36.750614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.942612, 36.631020, 36.864616>,  <42.887428, 36.283379, 37.054619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.942612, 36.631020, 36.864616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395582, 0.488030, 0.778037,
		0.908010, 0.080566, 0.411130,
		0.137961, 0.869100, -0.475006,
		42.984001, 36.891750, 36.722115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.170635, 36.746750, 37.530140>,  <42.887428, 36.283379, 37.054619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.170635, 36.746750, 37.530140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041626, 37.000664, 37.249275>,  <42.964218, 37.153011, 37.080757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.041626, 37.000664, 37.249275>,  <43.170635, 36.746750, 37.530140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041626, 37.000664, 37.249275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345224, 0.611822, 0.711684,
		0.881361, 0.471939, 0.021814,
		-0.322525, 0.634781, -0.702161,
		42.944870, 37.191097, 37.038628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462746, 37.414299, 37.680122>,  <43.170635, 36.746750, 37.530140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462746, 37.414299, 37.680122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163910, 37.493660, 37.426353>,  <42.984608, 37.541275, 37.274094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163910, 37.493660, 37.426353>,  <43.462746, 37.414299, 37.680122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163910, 37.493660, 37.426353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313876, 0.736024, 0.599792,
		0.585950, 0.647229, -0.487603,
		-0.747090, 0.198401, -0.634423,
		42.939781, 37.553181, 37.236027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591766, 38.077084, 37.366684>,  <43.462746, 37.414299, 37.680122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591766, 38.077084, 37.366684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194405, 38.033710, 37.351753>,  <42.955986, 38.007687, 37.342793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194405, 38.033710, 37.351753>,  <43.591766, 38.077084, 37.366684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194405, 38.033710, 37.351753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111529, 0.837765, 0.534520,
		-0.026686, 0.535157, -0.844331,
		-0.993403, -0.108431, -0.037329,
		42.896385, 38.001183, 37.340553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.352474, 38.752895, 37.440643>,  <43.591766, 38.077084, 37.366684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.352474, 38.752895, 37.440643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017651, 38.535446, 37.465313>,  <42.816757, 38.404976, 37.480114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017651, 38.535446, 37.465313>,  <43.352474, 38.752895, 37.440643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017651, 38.535446, 37.465313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382639, 0.662263, 0.644201,
		-0.391051, 0.515634, -0.762365,
		-0.837058, -0.543626, 0.061677,
		42.766533, 38.372356, 37.483814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.693886, 39.173054, 37.220230>,  <43.352474, 38.752895, 37.440643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.693886, 39.173054, 37.220230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612762, 38.879036, 37.479019>,  <42.564091, 38.702625, 37.634293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.612762, 38.879036, 37.479019>,  <42.693886, 39.173054, 37.220230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.612762, 38.879036, 37.479019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307222, 0.675106, 0.670706,
		-0.929776, -0.062741, -0.362739,
		-0.202807, -0.735048, 0.646973,
		42.551922, 38.658520, 37.673111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054775, 39.413559, 37.448612>,  <42.693886, 39.173054, 37.220230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054775, 39.413559, 37.448612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206848, 39.176640, 37.732761>,  <42.298092, 39.034489, 37.903252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206848, 39.176640, 37.732761>,  <42.054775, 39.413559, 37.448612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206848, 39.176640, 37.732761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258593, 0.669350, 0.696491,
		-0.888025, -0.448495, 0.101312,
		0.380186, -0.592303, 0.710378,
		42.320904, 38.998947, 37.945873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569649, 39.409630, 38.000576>,  <42.054775, 39.413559, 37.448612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569649, 39.409630, 38.000576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921349, 39.308186, 38.161869>,  <42.132370, 39.247318, 38.258644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.921349, 39.308186, 38.161869>,  <41.569649, 39.409630, 38.000576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921349, 39.308186, 38.161869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116851, 0.705804, 0.698704,
		-0.461800, -0.661456, 0.590946,
		0.879254, -0.253609, 0.403232,
		42.185123, 39.232101, 38.282837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527428, 39.745861, 38.547909>,  <41.569649, 39.409630, 38.000576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527428, 39.745861, 38.547909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908745, 39.626759, 38.568203>,  <42.137535, 39.555298, 38.580379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908745, 39.626759, 38.568203>,  <41.527428, 39.745861, 38.547909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908745, 39.626759, 38.568203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164767, 0.653405, 0.738860,
		-0.253152, -0.695990, 0.671946,
		0.953292, -0.297758, 0.050734,
		42.194733, 39.537430, 38.583424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.627239, 39.620075, 39.276611>,  <41.527428, 39.745861, 38.547909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.627239, 39.620075, 39.276611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963566, 39.733627, 39.092243>,  <42.165359, 39.801758, 38.981625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.963566, 39.733627, 39.092243>,  <41.627239, 39.620075, 39.276611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.963566, 39.733627, 39.092243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119453, 0.733166, 0.669476,
		0.527983, -0.617962, 0.582544,
		0.840812, 0.283885, -0.460916,
		42.215809, 39.818794, 38.953968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.155590, 39.625706, 39.756783>,  <41.627239, 39.620075, 39.276611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.155590, 39.625706, 39.756783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309219, 39.881126, 39.490028>,  <42.401398, 40.034378, 39.329975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309219, 39.881126, 39.490028>,  <42.155590, 39.625706, 39.756783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309219, 39.881126, 39.490028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298958, 0.597368, 0.744161,
		0.873563, -0.485184, 0.038534,
		0.384074, 0.638551, -0.666888,
		42.424442, 40.072693, 39.289963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831482, 40.045673, 40.040298>,  <42.155590, 39.625706, 39.756783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831482, 40.045673, 40.040298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688828, 40.267921, 39.739872>,  <42.603233, 40.401272, 39.559616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688828, 40.267921, 39.739872>,  <42.831482, 40.045673, 40.040298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688828, 40.267921, 39.739872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230173, 0.831401, 0.505760,
		0.905446, 0.007497, -0.424396,
		-0.356635, 0.555623, -0.751063,
		42.581837, 40.434608, 39.514553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247627, 40.579796, 40.045254>,  <42.831482, 40.045673, 40.040298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247627, 40.579796, 40.045254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979588, 40.724987, 39.786266>,  <42.818764, 40.812099, 39.630875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979588, 40.724987, 39.786266>,  <43.247627, 40.579796, 40.045254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979588, 40.724987, 39.786266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283223, 0.931318, 0.228979,
		0.686113, -0.029939, -0.726879,
		-0.670100, 0.362974, -0.647469,
		42.778557, 40.833878, 39.592026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641426, 41.053783, 39.665985>,  <43.247627, 40.579796, 40.045254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641426, 41.053783, 39.665985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249493, 41.129288, 39.639793>,  <43.014332, 41.174591, 39.624077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.249493, 41.129288, 39.639793>,  <43.641426, 41.053783, 39.665985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.249493, 41.129288, 39.639793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153541, 0.921105, 0.357758,
		0.127848, 0.340490, -0.931516,
		-0.979837, 0.188764, -0.065482,
		42.955544, 41.185917, 39.620148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.534943, 41.724571, 39.414196>,  <43.641426, 41.053783, 39.665985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.534943, 41.724571, 39.414196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209404, 41.611893, 39.617493>,  <43.014080, 41.544285, 39.739471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209404, 41.611893, 39.617493>,  <43.534943, 41.724571, 39.414196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209404, 41.611893, 39.617493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084047, 0.808379, 0.582632,
		-0.574971, 0.516888, -0.634219,
		-0.813845, -0.281692, 0.508238,
		42.965252, 41.527386, 39.769962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280075, 42.339825, 39.558849>,  <43.534943, 41.724571, 39.414196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280075, 42.339825, 39.558849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102711, 42.082165, 39.808159>,  <42.996292, 41.927570, 39.957745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.102711, 42.082165, 39.808159>,  <43.280075, 42.339825, 39.558849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.102711, 42.082165, 39.808159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204841, 0.604138, 0.770102,
		-0.872598, 0.469142, -0.135933,
		-0.443410, -0.644145, 0.623269,
		42.969688, 41.888920, 39.995140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904121, 42.714813, 40.157246>,  <43.280075, 42.339825, 39.558849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904121, 42.714813, 40.157246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936626, 42.357502, 40.334087>,  <42.956127, 42.143116, 40.440193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.936626, 42.357502, 40.334087>,  <42.904121, 42.714813, 40.157246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936626, 42.357502, 40.334087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082591, 0.448078, 0.890171,
		-0.993265, -0.035820, 0.110187,
		0.081258, -0.893276, 0.442102,
		42.961002, 42.089520, 40.466717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508354, 42.811340, 40.770802>,  <42.904121, 42.714813, 40.157246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508354, 42.811340, 40.770802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778690, 42.521145, 40.822803>,  <42.940891, 42.347027, 40.854004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.778690, 42.521145, 40.822803>,  <42.508354, 42.811340, 40.770802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778690, 42.521145, 40.822803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130139, 0.291072, 0.947808,
		-0.725464, -0.623653, 0.291134,
		0.675845, -0.725488, 0.130001,
		42.981445, 42.303497, 40.861805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392872, 42.647331, 41.494659>,  <42.508354, 42.811340, 40.770802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392872, 42.647331, 41.494659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759102, 42.541092, 41.373878>,  <42.978840, 42.477348, 41.301411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759102, 42.541092, 41.373878>,  <42.392872, 42.647331, 41.494659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759102, 42.541092, 41.373878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358128, 0.196985, 0.912656,
		-0.182923, -0.943744, 0.275474,
		0.915578, -0.265601, -0.301948,
		43.033775, 42.461411, 41.283295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728661, 42.593727, 42.086540>,  <42.392872, 42.647331, 41.494659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.728661, 42.593727, 42.086540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035557, 42.541748, 41.835320>,  <43.219696, 42.510559, 41.684586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.035557, 42.541748, 41.835320>,  <42.728661, 42.593727, 42.086540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.035557, 42.541748, 41.835320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638317, 0.059538, 0.767467,
		-0.062341, -0.989731, 0.128630,
		0.767245, -0.129952, -0.628051,
		43.265732, 42.502762, 41.646904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100792, 41.971542, 42.242035>,  <42.728661, 42.593727, 42.086540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100792, 41.971542, 42.242035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331333, 42.233841, 42.046970>,  <43.469658, 42.391220, 41.929932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.331333, 42.233841, 42.046970>,  <43.100792, 41.971542, 42.242035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331333, 42.233841, 42.046970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673551, -0.043272, 0.737873,
		0.462755, -0.753741, -0.466618,
		0.576357, 0.655746, -0.487659,
		43.504242, 42.430565, 41.900673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787491, 41.829117, 42.358318>,  <43.100792, 41.971542, 42.242035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787491, 41.829117, 42.358318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811348, 42.210770, 42.240971>,  <43.825661, 42.439762, 42.170563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.811348, 42.210770, 42.240971>,  <43.787491, 41.829117, 42.358318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811348, 42.210770, 42.240971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820446, 0.120551, 0.558871,
		0.568605, -0.274027, -0.775627,
		0.059643, 0.954137, -0.293370,
		43.829243, 42.497009, 42.152958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993042, 42.341454, 42.898781>,  <43.787491, 41.829117, 42.358318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993042, 42.341454, 42.898781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135818, 42.104576, 43.187752>,  <44.221485, 41.962448, 43.361134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135818, 42.104576, 43.187752>,  <43.993042, 42.341454, 42.898781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135818, 42.104576, 43.187752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047558, -0.760845, -0.647189,
		0.932915, 0.265365, -0.243414,
		0.356941, -0.592196, 0.722424,
		44.242901, 41.926918, 43.404480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.543255, 42.059002, 42.589077>,  <43.993042, 42.341454, 42.898781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.543255, 42.059002, 42.589077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438126, 41.825352, 42.896248>,  <44.375046, 41.685162, 43.080551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.438126, 41.825352, 42.896248>,  <44.543255, 42.059002, 42.589077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.438126, 41.825352, 42.896248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091059, -0.777343, -0.622452,
		0.960537, -0.233523, 0.151115,
		-0.262825, -0.584128, 0.767931,
		44.359280, 41.650112, 43.126629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986118, 41.534100, 42.800056>,  <44.543255, 42.059002, 42.589077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986118, 41.534100, 42.800056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606300, 41.424652, 42.861370>,  <44.378410, 41.358982, 42.898159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.606300, 41.424652, 42.861370>,  <44.986118, 41.534100, 42.800056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606300, 41.424652, 42.861370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131767, -0.791566, -0.596708,
		0.284606, -0.546403, 0.787682,
		-0.949545, -0.273618, 0.153286,
		44.321438, 41.342567, 42.907356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016342, 40.872150, 43.058556>,  <44.986118, 41.534100, 42.800056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016342, 40.872150, 43.058556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676743, 40.949974, 42.862049>,  <44.472980, 40.996670, 42.744144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.676743, 40.949974, 42.862049>,  <45.016342, 40.872150, 43.058556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676743, 40.949974, 42.862049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197527, -0.745470, -0.636598,
		-0.490081, -0.637511, 0.594474,
		-0.849002, 0.194560, -0.491267,
		44.422043, 41.008343, 42.714668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985630, 40.178749, 42.743816>,  <45.016342, 40.872150, 43.058556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.985630, 40.178749, 42.743816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601364, 40.284531, 42.777714>,  <44.370804, 40.348000, 42.798050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.601364, 40.284531, 42.777714>,  <44.985630, 40.178749, 42.743816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601364, 40.284531, 42.777714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265320, -0.783957, -0.561263,
		-0.081995, -0.561671, 0.823288,
		-0.960668, 0.264455, 0.084742,
		44.313164, 40.363869, 42.803135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.632130, 39.558823, 42.935188>,  <44.985630, 40.178749, 42.743816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.632130, 39.558823, 42.935188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365692, 39.802189, 42.762608>,  <44.205830, 39.948208, 42.659061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365692, 39.802189, 42.762608>,  <44.632130, 39.558823, 42.935188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365692, 39.802189, 42.762608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306604, -0.750674, -0.585220,
		-0.679935, -0.257529, 0.686562,
		-0.666095, 0.608414, -0.431450,
		44.165863, 39.984715, 42.633171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974949, 39.282200, 43.003826>,  <44.632130, 39.558823, 42.935188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974949, 39.282200, 43.003826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972179, 39.525707, 42.686497>,  <43.970520, 39.671810, 42.496101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972179, 39.525707, 42.686497>,  <43.974949, 39.282200, 43.003826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972179, 39.525707, 42.686497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246115, -0.769972, -0.588702,
		-0.969216, 0.191175, 0.155153,
		-0.006919, 0.608765, -0.793320,
		43.970104, 39.708336, 42.448502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.348816, 39.103401, 42.584209>,  <43.974949, 39.282200, 43.003826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.348816, 39.103401, 42.584209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.573929, 39.336369, 42.349579>,  <43.708996, 39.476147, 42.208801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.573929, 39.336369, 42.349579>,  <43.348816, 39.103401, 42.584209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573929, 39.336369, 42.349579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390174, -0.438420, -0.809662,
		-0.728725, 0.684529, -0.019492,
		0.562783, 0.582416, -0.586573,
		43.742764, 39.511093, 42.173607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164833, 38.872993, 41.875889>,  <43.348816, 39.103401, 42.584209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164833, 38.872993, 41.875889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494625, 39.080994, 41.786594>,  <43.692501, 39.205795, 41.733017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494625, 39.080994, 41.786594>,  <43.164833, 38.872993, 41.875889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494625, 39.080994, 41.786594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032088, -0.436807, -0.898983,
		-0.564980, 0.734030, -0.376825,
		0.824480, 0.519999, -0.223233,
		43.741970, 39.236992, 41.719624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078262, 39.243183, 41.249527>,  <43.164833, 38.872993, 41.875889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078262, 39.243183, 41.249527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472935, 39.193947, 41.292080>,  <43.709736, 39.164406, 41.317612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.472935, 39.193947, 41.292080>,  <43.078262, 39.243183, 41.249527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.472935, 39.193947, 41.292080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055015, -0.362915, -0.930197,
		0.153106, 0.923656, -0.351308,
		0.986677, -0.123092, 0.106379,
		43.768936, 39.157021, 41.323994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.354019, 39.301456, 40.583988>,  <43.078262, 39.243183, 41.249527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.354019, 39.301456, 40.583988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673180, 39.166210, 40.783600>,  <43.864677, 39.085064, 40.903366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.673180, 39.166210, 40.783600>,  <43.354019, 39.301456, 40.583988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.673180, 39.166210, 40.783600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252810, -0.563834, -0.786243,
		0.547208, 0.753506, -0.364407,
		0.797903, -0.338113, 0.499029,
		43.912552, 39.064777, 40.933308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.867920, 39.357563, 40.165009>,  <43.354019, 39.301456, 40.583988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.867920, 39.357563, 40.165009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962082, 39.069302, 40.425850>,  <44.018581, 38.896343, 40.582355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.962082, 39.069302, 40.425850>,  <43.867920, 39.357563, 40.165009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.962082, 39.069302, 40.425850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376372, -0.551010, -0.744804,
		0.896063, 0.420765, 0.141522,
		0.235407, -0.720656, 0.652104,
		44.032703, 38.853104, 40.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450199, 39.133526, 39.969418>,  <43.867920, 39.357563, 40.165009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450199, 39.133526, 39.969418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310966, 38.825268, 40.182938>,  <44.227425, 38.640312, 40.311050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310966, 38.825268, 40.182938>,  <44.450199, 39.133526, 39.969418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310966, 38.825268, 40.182938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323474, -0.633169, -0.703180,
		0.879887, -0.072097, 0.469682,
		-0.348085, -0.770649, 0.533796,
		44.206539, 38.594074, 40.343075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926540, 38.577244, 39.836586>,  <44.450199, 39.133526, 39.969418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926540, 38.577244, 39.836586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610336, 38.380749, 39.982887>,  <44.420612, 38.262852, 40.070667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610336, 38.380749, 39.982887>,  <44.926540, 38.577244, 39.836586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610336, 38.380749, 39.982887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226246, -0.789193, -0.570952,
		0.569122, -0.368596, 0.735008,
		-0.790514, -0.491234, 0.365754,
		44.373180, 38.233379, 40.092613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.215115, 37.900677, 39.943539>,  <44.926540, 38.577244, 39.836586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.215115, 37.900677, 39.943539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816299, 37.870972, 39.951626>,  <44.577011, 37.853149, 39.956478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816299, 37.870972, 39.951626>,  <45.215115, 37.900677, 39.943539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816299, 37.870972, 39.951626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050685, -0.831216, -0.553634,
		0.057924, -0.550967, 0.832514,
		-0.997033, -0.074264, 0.020222,
		44.517189, 37.848694, 39.957691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.137650, 37.144062, 39.871265>,  <45.215115, 37.900677, 39.943539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.137650, 37.144062, 39.871265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770107, 37.288742, 39.808174>,  <44.549583, 37.375549, 39.770317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.770107, 37.288742, 39.808174>,  <45.137650, 37.144062, 39.871265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770107, 37.288742, 39.808174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237486, -0.826129, -0.510990,
		-0.315133, -0.432066, 0.844991,
		-0.918853, 0.361704, -0.157732,
		44.494450, 37.397255, 39.760853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713413, 36.626488, 39.841770>,  <45.137650, 37.144062, 39.871265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713413, 36.626488, 39.841770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529156, 36.909569, 39.627495>,  <44.418602, 37.079418, 39.498928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529156, 36.909569, 39.627495>,  <44.713413, 36.626488, 39.841770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529156, 36.909569, 39.627495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247745, -0.682065, -0.688048,
		-0.852309, -0.184231, 0.489519,
		-0.460643, 0.707705, -0.535688,
		44.390965, 37.121880, 39.466789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.116417, 36.232681, 39.657791>,  <44.713413, 36.626488, 39.841770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.116417, 36.232681, 39.657791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151340, 36.542229, 39.406876>,  <44.172295, 36.727959, 39.256325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.151340, 36.542229, 39.406876>,  <44.116417, 36.232681, 39.657791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151340, 36.542229, 39.406876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042313, -0.626249, -0.778474,
		-0.995282, 0.094513, -0.021934,
		0.087312, 0.773873, -0.627293,
		44.177536, 36.774391, 39.218689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.681747, 36.115467, 39.198612>,  <44.116417, 36.232681, 39.657791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.681747, 36.115467, 39.198612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946983, 36.354465, 39.018250>,  <44.106125, 36.497864, 38.910030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946983, 36.354465, 39.018250>,  <43.681747, 36.115467, 39.198612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946983, 36.354465, 39.018250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117437, -0.677961, -0.725657,
		-0.739273, 0.428220, -0.519715,
		0.663087, 0.597492, -0.450909,
		44.145908, 36.533714, 38.882977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531040, 36.059986, 38.498936>,  <43.681747, 36.115467, 39.198612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531040, 36.059986, 38.498936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911263, 36.183151, 38.515068>,  <44.139397, 36.257050, 38.524746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.911263, 36.183151, 38.515068>,  <43.531040, 36.059986, 38.498936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.911263, 36.183151, 38.515068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240286, -0.647021, -0.723620,
		-0.196718, 0.697535, -0.689019,
		0.950560, 0.307911, 0.040327,
		44.196430, 36.275524, 38.527164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718433, 36.348122, 37.789070>,  <43.531040, 36.059986, 38.498936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718433, 36.348122, 37.789070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070526, 36.292599, 37.970589>,  <44.281780, 36.259285, 38.079498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070526, 36.292599, 37.970589>,  <43.718433, 36.348122, 37.789070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070526, 36.292599, 37.970589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321090, -0.529911, -0.784917,
		0.349422, 0.836616, -0.421874,
		0.880230, -0.138808, 0.453792,
		44.334595, 36.250957, 38.106728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.154091, 36.508698, 37.308369>,  <43.718433, 36.348122, 37.789070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.154091, 36.508698, 37.308369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395035, 36.306580, 37.555546>,  <44.539600, 36.185310, 37.703850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.395035, 36.306580, 37.555546>,  <44.154091, 36.508698, 37.308369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395035, 36.306580, 37.555546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460472, -0.412384, -0.786069,
		0.652022, 0.758037, -0.015731,
		0.602357, -0.505291, 0.617938,
		44.575741, 36.154991, 37.740929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.810886, 36.615322, 37.052044>,  <44.154091, 36.508698, 37.308369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.810886, 36.615322, 37.052044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831974, 36.276272, 37.263229>,  <44.844627, 36.072842, 37.389938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831974, 36.276272, 37.263229>,  <44.810886, 36.615322, 37.052044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831974, 36.276272, 37.263229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457889, -0.449324, -0.767102,
		0.887445, 0.282189, 0.364433,
		0.052719, -0.847630, 0.527962,
		44.847790, 36.021984, 37.421619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472282, 36.363998, 36.944866>,  <44.810886, 36.615322, 37.052044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472282, 36.363998, 36.944866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275452, 36.054962, 37.105347>,  <45.157352, 35.869541, 37.201637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.275452, 36.054962, 37.105347>,  <45.472282, 36.363998, 36.944866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.275452, 36.054962, 37.105347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379438, -0.605123, -0.699895,
		0.783511, -0.192169, 0.590916,
		-0.492075, -0.772591, 0.401205,
		45.127831, 35.823185, 37.225708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.944527, 35.961876, 37.161713>,  <45.472282, 36.363998, 36.944866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.944527, 35.961876, 37.161713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632618, 35.720810, 37.093884>,  <45.445473, 35.576172, 37.053185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.632618, 35.720810, 37.093884>,  <45.944527, 35.961876, 37.161713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.632618, 35.720810, 37.093884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459263, -0.366557, -0.809144,
		0.425481, -0.708827, 0.562611,
		-0.779772, -0.602661, -0.169575,
		45.398685, 35.540012, 37.043011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.251446, 35.428730, 36.872379>,  <45.944527, 35.961876, 37.161713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.251446, 35.428730, 36.872379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869061, 35.407112, 36.756992>,  <45.639629, 35.394142, 36.687759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869061, 35.407112, 36.756992>,  <46.251446, 35.428730, 36.872379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869061, 35.407112, 36.756992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273698, -0.519010, -0.809764,
		-0.105952, -0.853057, 0.510947,
		-0.955962, -0.054049, -0.288470,
		45.582272, 35.390896, 36.670452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963852, 35.468239, 36.528465>,  <46.251446, 35.428730, 36.872379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963852, 35.468239, 36.528465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887447, 35.367966, 36.148849>,  <46.841606, 35.307800, 35.921082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.887447, 35.367966, 36.148849>,  <46.963852, 35.468239, 36.528465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.887447, 35.367966, 36.148849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954907, 0.176437, -0.238794,
		0.227307, -0.951855, 0.205678,
		-0.191008, -0.250683, -0.949038,
		46.830143, 35.292759, 35.864140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.589718, 35.070786, 36.342892>,  <46.963852, 35.468239, 36.528465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.589718, 35.070786, 36.342892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.397655, 35.172886, 36.007202>,  <47.282417, 35.234146, 35.805790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.397655, 35.172886, 36.007202>,  <47.589718, 35.070786, 36.342892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.397655, 35.172886, 36.007202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874657, 0.066748, -0.480125,
		-0.066535, -0.964569, -0.255305,
		-0.480155, 0.255249, -0.839226,
		47.253609, 35.249462, 35.755436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.977764, 34.943604, 35.714687>,  <47.589718, 35.070786, 36.342892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.977764, 34.943604, 35.714687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710728, 35.207703, 35.577053>,  <47.550507, 35.366161, 35.494473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710728, 35.207703, 35.577053>,  <47.977764, 34.943604, 35.714687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.710728, 35.207703, 35.577053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673648, 0.338844, -0.656797,
		-0.317058, -0.670264, -0.670984,
		-0.667587, 0.660251, -0.344089,
		47.510452, 35.405777, 35.473827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.921501, 34.790241, 34.985878>,  <47.977764, 34.943604, 35.714687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.921501, 34.790241, 34.985878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.806606, 35.169136, 35.042782>,  <47.737671, 35.396473, 35.076923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.806606, 35.169136, 35.042782>,  <47.921501, 34.790241, 34.985878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.806606, 35.169136, 35.042782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612617, 0.295842, -0.732924,
		-0.736340, -0.123369, -0.665270,
		-0.287235, 0.947237, 0.142262,
		47.720436, 35.453308, 35.085461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.842682, 33.221661, 42.008266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.484974, 33.190369, 41.832008>,  <32.270351, 33.171593, 41.726254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.484974, 33.190369, 41.832008>,  <32.842682, 33.221661, 42.008266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484974, 33.190369, 41.832008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318591, 0.580203, -0.749576,
		0.314303, -0.810706, -0.493933,
		-0.894267, -0.078231, -0.440643,
		32.216694, 33.166901, 41.699814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984013, 32.983974, 41.375557>,  <32.842682, 33.221661, 42.008266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984013, 32.983974, 41.375557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.629189, 33.166656, 41.348587>,  <32.416294, 33.276264, 41.332405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.629189, 33.166656, 41.348587>,  <32.984013, 32.983974, 41.375557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629189, 33.166656, 41.348587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289095, 0.435666, -0.852420,
		-0.359928, -0.775640, -0.518493,
		-0.887060, 0.456703, -0.067426,
		32.363071, 33.303669, 41.328358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794842, 32.863422, 40.747135>,  <32.984013, 32.983974, 41.375557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794842, 32.863422, 40.747135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.592590, 33.188236, 40.863708>,  <32.471237, 33.383125, 40.933651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.592590, 33.188236, 40.863708>,  <32.794842, 32.863422, 40.747135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592590, 33.188236, 40.863708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172787, 0.426260, -0.887945,
		-0.845271, -0.398617, -0.355840,
		-0.505630, 0.812038, 0.291430,
		32.440903, 33.431847, 40.951138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574284, 33.107143, 40.140316>,  <32.794842, 32.863422, 40.747135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574284, 33.107143, 40.140316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.498684, 33.420727, 40.376854>,  <32.453323, 33.608875, 40.518776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.498684, 33.420727, 40.376854>,  <32.574284, 33.107143, 40.140316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498684, 33.420727, 40.376854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095242, 0.613992, -0.783545,
		-0.977348, -0.091769, -0.190710,
		-0.189000, 0.783960, 0.591343,
		32.441982, 33.655914, 40.554256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078167, 33.463512, 39.821609>,  <32.574284, 33.107143, 40.140316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078167, 33.463512, 39.821609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.269783, 33.721783, 40.059475>,  <32.384754, 33.876743, 40.202194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.269783, 33.721783, 40.059475>,  <32.078167, 33.463512, 39.821609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.269783, 33.721783, 40.059475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124111, 0.720468, -0.682292,
		-0.868975, 0.253040, 0.425268,
		0.479039, 0.645675, 0.594664,
		32.413494, 33.915485, 40.237873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828121, 34.182598, 39.703190>,  <32.078167, 33.463512, 39.821609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828121, 34.182598, 39.703190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.173172, 34.228352, 39.900284>,  <32.380203, 34.255802, 40.018539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.173172, 34.228352, 39.900284>,  <31.828121, 34.182598, 39.703190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173172, 34.228352, 39.900284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250107, 0.750256, -0.612015,
		-0.439681, 0.651178, 0.618585,
		0.862628, 0.114380, 0.492737,
		32.431961, 34.262665, 40.048103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007309, 34.889755, 39.443062>,  <31.828121, 34.182598, 39.703190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007309, 34.889755, 39.443062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334362, 34.731575, 39.610435>,  <32.530594, 34.636665, 39.710861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334362, 34.731575, 39.610435>,  <32.007309, 34.889755, 39.443062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334362, 34.731575, 39.610435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575608, 0.576784, -0.579651,
		-0.012125, 0.714800, 0.699224,
		0.817636, -0.395450, 0.418438,
		32.579655, 34.612942, 39.735966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484585, 35.325500, 39.392990>,  <32.007309, 34.889755, 39.443062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484585, 35.325500, 39.392990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.716908, 35.001404, 39.424400>,  <32.856300, 34.806946, 39.443245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.716908, 35.001404, 39.424400>,  <32.484585, 35.325500, 39.392990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716908, 35.001404, 39.424400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645510, 0.399646, -0.650845,
		0.495960, 0.428707, 0.755138,
		0.580810, -0.810243, 0.078526,
		32.891151, 34.758331, 39.447960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204613, 35.618065, 39.443481>,  <32.484585, 35.325500, 39.392990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204613, 35.618065, 39.443481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.228252, 35.228771, 39.354645>,  <33.242435, 34.995193, 39.301342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.228252, 35.228771, 39.354645>,  <33.204613, 35.618065, 39.443481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228252, 35.228771, 39.354645> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741824, 0.191693, -0.642612,
		0.667985, -0.126775, 0.733297,
		0.059100, -0.973233, -0.222093,
		33.245983, 34.936802, 39.288017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868839, 35.376469, 39.579773>,  <33.204613, 35.618065, 39.443481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868839, 35.376469, 39.579773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.688148, 35.167591, 39.290428>,  <33.579735, 35.042263, 39.116821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.688148, 35.167591, 39.290428>,  <33.868839, 35.376469, 39.579773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688148, 35.167591, 39.290428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778517, 0.165270, -0.605473,
		0.435727, -0.836657, 0.331884,
		-0.451723, -0.522198, -0.723364,
		33.552631, 35.010933, 39.073418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470825, 35.051525, 39.264599>,  <33.868839, 35.376469, 39.579773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470825, 35.051525, 39.264599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.184994, 34.974865, 38.995483>,  <34.013493, 34.928867, 38.834015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.184994, 34.974865, 38.995483>,  <34.470825, 35.051525, 39.264599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184994, 34.974865, 38.995483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643422, 0.197393, -0.739625,
		0.274553, -0.961408, -0.017742,
		-0.714583, -0.191651, -0.672786,
		33.970619, 34.917370, 38.793648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724758, 34.581352, 38.829212>,  <34.470825, 35.051525, 39.264599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724758, 34.581352, 38.829212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.432541, 34.767605, 38.629414>,  <34.257210, 34.879356, 38.509537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.432541, 34.767605, 38.629414>,  <34.724758, 34.581352, 38.829212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432541, 34.767605, 38.629414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628379, 0.172066, -0.758639,
		-0.267303, -0.868088, -0.418296,
		-0.730540, 0.465635, -0.499494,
		34.213379, 34.907295, 38.479565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806248, 34.378693, 38.198029>,  <34.724758, 34.581352, 38.829212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806248, 34.378693, 38.198029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590733, 34.710445, 38.138927>,  <34.461422, 34.909496, 38.103466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.590733, 34.710445, 38.138927>,  <34.806248, 34.378693, 38.198029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590733, 34.710445, 38.138927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529652, 0.197111, -0.824995,
		-0.655112, -0.522757, -0.545485,
		-0.538792, 0.829381, -0.147749,
		34.429096, 34.959259, 38.094604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495010, 34.369164, 37.522675>,  <34.806248, 34.378693, 38.198029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495010, 34.369164, 37.522675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471313, 34.759289, 37.607758>,  <34.457096, 34.993366, 37.658810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.471313, 34.759289, 37.607758>,  <34.495010, 34.369164, 37.522675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471313, 34.759289, 37.607758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493553, 0.213836, -0.843018,
		-0.867696, 0.055041, -0.494039,
		-0.059243, 0.975318, 0.212710,
		34.453541, 35.051884, 37.671570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507301, 34.630142, 36.842644>,  <34.495010, 34.369164, 37.522675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507301, 34.630142, 36.842644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.581272, 34.935310, 37.090435>,  <34.625656, 35.118412, 37.239109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.581272, 34.935310, 37.090435>,  <34.507301, 34.630142, 36.842644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581272, 34.935310, 37.090435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478280, 0.480791, -0.734907,
		-0.858516, 0.432188, -0.275979,
		0.184930, 0.762924, 0.619474,
		34.636749, 35.164188, 37.276276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295670, 35.204792, 36.459274>,  <34.507301, 34.630142, 36.842644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295670, 35.204792, 36.459274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536636, 35.341877, 36.747620>,  <34.681217, 35.424129, 36.920628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536636, 35.341877, 36.747620>,  <34.295670, 35.204792, 36.459274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536636, 35.341877, 36.747620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453440, 0.596301, -0.662433,
		-0.656876, 0.725927, 0.203821,
		0.602417, 0.342716, 0.720861,
		34.717361, 35.444691, 36.963879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279762, 35.926857, 36.325867>,  <34.295670, 35.204792, 36.459274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279762, 35.926857, 36.325867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.605640, 35.825459, 36.534489>,  <34.801167, 35.764622, 36.659660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.605640, 35.825459, 36.534489>,  <34.279762, 35.926857, 36.325867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605640, 35.825459, 36.534489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571662, 0.502091, -0.648928,
		-0.097368, 0.826828, 0.553963,
		0.814692, -0.253494, 0.521554,
		34.850048, 35.749409, 36.690956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729542, 36.457718, 36.315025>,  <34.279762, 35.926857, 36.325867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729542, 36.457718, 36.315025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.998871, 36.170811, 36.386765>,  <35.160469, 35.998665, 36.429810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.998871, 36.170811, 36.386765>,  <34.729542, 36.457718, 36.315025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998871, 36.170811, 36.386765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525505, 0.293640, -0.798511,
		0.520080, 0.631905, 0.574641,
		0.673321, -0.717266, 0.179353,
		35.200867, 35.955631, 36.440571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352077, 36.822277, 36.332062>,  <34.729542, 36.457718, 36.315025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352077, 36.822277, 36.332062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.435005, 36.438530, 36.255508>,  <35.484760, 36.208282, 36.209579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.435005, 36.438530, 36.255508>,  <35.352077, 36.822277, 36.332062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435005, 36.438530, 36.255508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738725, 0.281778, -0.612280,
		0.641330, -0.014438, 0.767129,
		0.207320, -0.959371, -0.191379,
		35.497200, 36.150719, 36.198093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030060, 36.631531, 36.593018>,  <35.352077, 36.822277, 36.332062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030060, 36.631531, 36.593018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917976, 36.397545, 36.288570>,  <35.850727, 36.257153, 36.105904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917976, 36.397545, 36.288570>,  <36.030060, 36.631531, 36.593018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917976, 36.397545, 36.288570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757707, 0.352028, -0.549506,
		0.589378, -0.730677, 0.344595,
		-0.280204, -0.584968, -0.761116,
		35.833916, 36.222054, 36.060234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588028, 36.651093, 36.186859>,  <36.030060, 36.631531, 36.593018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588028, 36.651093, 36.186859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.369892, 36.451881, 35.917171>,  <36.239010, 36.332355, 35.755360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.369892, 36.451881, 35.917171>,  <36.588028, 36.651093, 36.186859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369892, 36.451881, 35.917171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697735, 0.176028, -0.694391,
		0.464506, -0.849108, 0.251494,
		-0.545343, -0.498026, -0.674219,
		36.206287, 36.302475, 35.714905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097092, 36.188839, 36.044384>,  <36.588028, 36.651093, 36.186859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097092, 36.188839, 36.044384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827206, 36.226418, 35.751553>,  <36.665276, 36.248966, 35.575855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.827206, 36.226418, 35.751553>,  <37.097092, 36.188839, 36.044384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827206, 36.226418, 35.751553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732202, -0.039702, -0.679929,
		-0.092942, -0.994785, -0.042001,
		-0.674716, 0.093948, -0.732074,
		36.624790, 36.254601, 35.531929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857288, 36.263573, 36.131317>,  <37.097092, 36.188839, 36.044384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857288, 36.263573, 36.131317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.184139, 36.041668, 36.193993>,  <38.380249, 35.908527, 36.231598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.184139, 36.041668, 36.193993>,  <37.857288, 36.263573, 36.131317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184139, 36.041668, 36.193993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529869, -0.615745, 0.583178,
		-0.227041, -0.559555, -0.797089,
		0.817124, -0.554759, 0.156691,
		38.429276, 35.875240, 36.241001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676350, 35.574284, 35.955914>,  <37.857288, 36.263573, 36.131317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676350, 35.574284, 35.955914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.977562, 35.574974, 36.219105>,  <38.158291, 35.575390, 36.377022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.977562, 35.574974, 36.219105>,  <37.676350, 35.574284, 35.955914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977562, 35.574974, 36.219105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528740, -0.593610, 0.606681,
		0.391634, -0.804751, -0.446092,
		0.753032, 0.001730, 0.657982,
		38.203472, 35.575493, 36.416500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763264, 34.853577, 35.988541>,  <37.676350, 35.574284, 35.955914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763264, 34.853577, 35.988541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.939304, 35.040676, 36.295139>,  <38.044930, 35.152935, 36.479099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.939304, 35.040676, 36.295139>,  <37.763264, 34.853577, 35.988541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939304, 35.040676, 36.295139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480498, -0.598438, 0.641087,
		0.758571, -0.650445, -0.038620,
		0.440104, 0.467753, 0.766496,
		38.071335, 35.181004, 36.525089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916634, 34.302715, 36.433010>,  <37.763264, 34.853577, 35.988541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916634, 34.302715, 36.433010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910248, 34.628716, 36.664707>,  <37.906418, 34.824318, 36.803726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.910248, 34.628716, 36.664707>,  <37.916634, 34.302715, 36.433010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910248, 34.628716, 36.664707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253797, -0.563642, 0.786063,
		0.967126, -0.134460, 0.215843,
		-0.015964, 0.815002, 0.579238,
		37.905460, 34.873215, 36.838478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235374, 34.133366, 37.083447>,  <37.916634, 34.302715, 36.433010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.235374, 34.133366, 37.083447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031158, 34.465988, 37.170963>,  <37.908627, 34.665562, 37.223473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031158, 34.465988, 37.170963>,  <38.235374, 34.133366, 37.083447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031158, 34.465988, 37.170963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273035, -0.398059, 0.875786,
		0.815352, 0.387389, 0.430269,
		-0.510542, 0.831552, 0.218787,
		37.877995, 34.715454, 37.236599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322304, 34.234962, 37.843410>,  <38.235374, 34.133366, 37.083447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322304, 34.234962, 37.843410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.990685, 34.446465, 37.770634>,  <37.791714, 34.573364, 37.726967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.990685, 34.446465, 37.770634>,  <38.322304, 34.234962, 37.843410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990685, 34.446465, 37.770634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459286, -0.458295, 0.760935,
		0.318968, 0.714411, 0.622797,
		-0.829045, 0.528756, -0.181937,
		37.741970, 34.605091, 37.716053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310238, 34.474964, 38.441071>,  <38.322304, 34.234962, 37.843410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310238, 34.474964, 38.441071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.950764, 34.498749, 38.267250>,  <37.735081, 34.513020, 38.162956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.950764, 34.498749, 38.267250>,  <38.310238, 34.474964, 38.441071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950764, 34.498749, 38.267250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412129, -0.453479, 0.790257,
		-0.150072, 0.889282, 0.432038,
		-0.898681, 0.059460, -0.434554,
		37.681160, 34.516586, 38.136883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872250, 34.793690, 38.868835>,  <38.310238, 34.474964, 38.441071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872250, 34.793690, 38.868835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611889, 34.587669, 38.645748>,  <37.455673, 34.464058, 38.511894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.611889, 34.587669, 38.645748>,  <37.872250, 34.793690, 38.868835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611889, 34.587669, 38.645748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406644, -0.383823, 0.829048,
		-0.641068, 0.766420, 0.040387,
		-0.650901, -0.515053, -0.557718,
		37.416618, 34.433155, 38.478432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284203, 34.954918, 39.150436>,  <37.872250, 34.793690, 38.868835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284203, 34.954918, 39.150436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179199, 34.632328, 38.938519>,  <37.116196, 34.438774, 38.811367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.179199, 34.632328, 38.938519>,  <37.284203, 34.954918, 39.150436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179199, 34.632328, 38.938519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321626, -0.444523, 0.836036,
		-0.909751, 0.389862, -0.142694,
		-0.262507, -0.806478, -0.529795,
		37.100449, 34.390385, 38.779579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576424, 34.806366, 39.258518>,  <37.284203, 34.954918, 39.150436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576424, 34.806366, 39.258518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723995, 34.454517, 39.138412>,  <36.812538, 34.243408, 39.066349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.723995, 34.454517, 39.138412>,  <36.576424, 34.806366, 39.258518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723995, 34.454517, 39.138412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426763, -0.447299, 0.786001,
		-0.825690, -0.161838, -0.540411,
		0.368930, -0.879620, -0.300264,
		36.834675, 34.190632, 39.048332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974873, 34.350502, 39.126793>,  <36.576424, 34.806366, 39.258518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974873, 34.350502, 39.126793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285545, 34.106693, 39.190353>,  <36.471951, 33.960407, 39.228489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285545, 34.106693, 39.190353>,  <35.974873, 34.350502, 39.126793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285545, 34.106693, 39.190353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520457, -0.478890, 0.706957,
		-0.354811, -0.631781, -0.689175,
		0.776681, -0.609522, 0.158900,
		36.518551, 33.923836, 39.238022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651783, 33.668602, 39.063549>,  <35.974873, 34.350502, 39.126793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651783, 33.668602, 39.063549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997414, 33.615829, 39.257851>,  <36.204792, 33.584164, 39.374432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.997414, 33.615829, 39.257851>,  <35.651783, 33.668602, 39.063549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997414, 33.615829, 39.257851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499715, -0.340661, 0.796389,
		0.060407, -0.930883, -0.360288,
		0.864081, -0.131934, 0.485755,
		36.256638, 33.576248, 39.403576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863659, 32.927055, 39.004784>,  <35.651783, 33.668602, 39.063549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863659, 32.927055, 39.004784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.080154, 33.064224, 39.311890>,  <36.210052, 33.146526, 39.496151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.080154, 33.064224, 39.311890>,  <35.863659, 32.927055, 39.004784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080154, 33.064224, 39.311890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632788, -0.435181, 0.640466,
		0.553748, -0.832478, -0.018539,
		0.541241, 0.342926, 0.767763,
		36.242527, 33.167103, 39.542217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043388, 32.344097, 39.425571>,  <35.863659, 32.927055, 39.004784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043388, 32.344097, 39.425571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.070522, 32.663204, 39.665226>,  <36.086803, 32.854668, 39.809017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.070522, 32.663204, 39.665226>,  <36.043388, 32.344097, 39.425571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070522, 32.663204, 39.665226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501596, -0.491835, 0.711688,
		0.862439, -0.348797, 0.366797,
		0.067831, 0.797771, 0.599133,
		36.090870, 32.902534, 39.844967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312462, 32.077843, 40.030197>,  <36.043388, 32.344097, 39.425571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312462, 32.077843, 40.030197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165302, 32.440788, 40.111515>,  <36.077007, 32.658558, 40.160305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.165302, 32.440788, 40.111515>,  <36.312462, 32.077843, 40.030197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165302, 32.440788, 40.111515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585404, -0.395880, 0.707517,
		0.722461, 0.141285, 0.676823,
		-0.367902, 0.907368, 0.203299,
		36.054932, 32.712997, 40.172504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486095, 32.193474, 40.760174>,  <36.312462, 32.077843, 40.030197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486095, 32.193474, 40.760174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177647, 32.433125, 40.673996>,  <35.992577, 32.576916, 40.622288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177647, 32.433125, 40.673996>,  <36.486095, 32.193474, 40.760174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177647, 32.433125, 40.673996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511798, -0.382000, 0.769506,
		0.378733, 0.703647, 0.601201,
		-0.771119, 0.599130, -0.215449,
		35.946312, 32.612865, 40.609360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174465, 32.370903, 41.395290>,  <36.486095, 32.193474, 40.760174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174465, 32.370903, 41.395290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.871284, 32.494045, 41.165253>,  <35.689377, 32.567932, 41.027229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.871284, 32.494045, 41.165253>,  <36.174465, 32.370903, 41.395290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871284, 32.494045, 41.165253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649178, -0.442263, 0.618846,
		-0.063827, 0.842394, 0.535069,
		-0.757954, 0.307856, -0.575092,
		35.643898, 32.586403, 40.992725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712025, 32.749760, 41.841152>,  <36.174465, 32.370903, 41.395290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712025, 32.749760, 41.841152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.508934, 32.596588, 41.532459>,  <35.387077, 32.504684, 41.347244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.508934, 32.596588, 41.532459>,  <35.712025, 32.749760, 41.841152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508934, 32.596588, 41.532459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617922, -0.462331, 0.635942,
		-0.600319, 0.799758, -0.001884,
		-0.507729, -0.382932, -0.771735,
		35.356617, 32.481709, 41.300938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.981697, 33.057472, 41.944286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.973820, 32.726730, 41.719460>,  <34.969093, 32.528286, 41.584564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.973820, 32.726730, 41.719460>,  <34.981697, 33.057472, 41.944286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973820, 32.726730, 41.719460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729442, -0.372590, 0.573664,
		-0.683759, 0.421294, -0.595806,
		-0.019690, -0.826854, -0.562071,
		34.967915, 32.478676, 41.550838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358467, 32.843830, 42.010513>,  <34.981697, 33.057472, 41.944286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358467, 32.843830, 42.010513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.538715, 32.521481, 41.856884>,  <34.646866, 32.328072, 41.764706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.538715, 32.521481, 41.856884>,  <34.358467, 32.843830, 42.010513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538715, 32.521481, 41.856884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666398, -0.589931, 0.455955,
		-0.594023, 0.050493, -0.802862,
		0.450611, -0.805873, -0.384081,
		34.673904, 32.279720, 41.741661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821922, 32.479256, 41.928139>,  <34.358467, 32.843830, 42.010513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821922, 32.479256, 41.928139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107864, 32.199646, 41.920719>,  <34.279430, 32.031879, 41.916267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.107864, 32.199646, 41.920719>,  <33.821922, 32.479256, 41.928139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107864, 32.199646, 41.920719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624093, -0.649748, 0.433977,
		-0.315412, -0.298655, -0.900733,
		0.714859, -0.699023, -0.018550,
		34.322323, 31.989939, 41.915154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462112, 31.781992, 41.691330>,  <33.821922, 32.479256, 41.928139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462112, 31.781992, 41.691330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810291, 31.718662, 41.877773>,  <34.019199, 31.680664, 41.989639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.810291, 31.718662, 41.877773>,  <33.462112, 31.781992, 41.691330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810291, 31.718662, 41.877773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440213, -0.674108, 0.593120,
		0.220302, -0.721466, -0.656471,
		0.870448, -0.158322, 0.466106,
		34.071426, 31.671165, 42.017605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446529, 31.006542, 41.789402>,  <33.462112, 31.781992, 41.691330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446529, 31.006542, 41.789402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727264, 31.164825, 42.026329>,  <33.895706, 31.259796, 42.168484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727264, 31.164825, 42.026329>,  <33.446529, 31.006542, 41.789402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727264, 31.164825, 42.026329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247479, -0.644267, 0.723653,
		0.667966, -0.654473, -0.354241,
		0.701837, 0.395708, 0.592317,
		33.937817, 31.283539, 42.204025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620720, 30.475576, 42.194450>,  <33.446529, 31.006542, 41.789402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620720, 30.475576, 42.194450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782043, 30.771736, 42.409542>,  <33.878838, 30.949432, 42.538597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.782043, 30.771736, 42.409542>,  <33.620720, 30.475576, 42.194450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782043, 30.771736, 42.409542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258709, -0.471403, 0.843119,
		0.877732, -0.479151, 0.001428,
		0.403308, 0.740401, 0.537726,
		33.903034, 30.993856, 42.570858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.108910, 30.134714, 42.855026>,  <33.620720, 30.475576, 42.194450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.108910, 30.134714, 42.855026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.998634, 30.510277, 42.937435>,  <33.932468, 30.735615, 42.986881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.998634, 30.510277, 42.937435>,  <34.108910, 30.134714, 42.855026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998634, 30.510277, 42.937435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253951, -0.277858, 0.926447,
		0.927093, 0.203095, 0.315040,
		-0.275693, 0.938908, 0.206024,
		33.915928, 30.791948, 42.999241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344296, 30.224453, 43.468861>,  <34.108910, 30.134714, 42.855026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344296, 30.224453, 43.468861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065235, 30.509371, 43.438065>,  <33.897800, 30.680321, 43.419586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.065235, 30.509371, 43.438065>,  <34.344296, 30.224453, 43.468861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065235, 30.509371, 43.438065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365873, -0.261824, 0.893077,
		0.615975, 0.651220, 0.443269,
		-0.697647, 0.712293, -0.076987,
		33.855942, 30.723059, 43.414970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249401, 30.612511, 44.140850>,  <34.344296, 30.224453, 43.468861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249401, 30.612511, 44.140850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.903873, 30.678736, 43.950523>,  <33.696556, 30.718472, 43.836327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.903873, 30.678736, 43.950523>,  <34.249401, 30.612511, 44.140850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903873, 30.678736, 43.950523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478538, 0.025642, 0.877693,
		0.157514, 0.985866, 0.057078,
		-0.863823, 0.165563, -0.475813,
		33.644726, 30.728405, 43.807781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866161, 31.199238, 44.410553>,  <34.249401, 30.612511, 44.140850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866161, 31.199238, 44.410553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.580261, 30.971209, 44.248493>,  <33.408722, 30.834391, 44.151257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.580261, 30.971209, 44.248493>,  <33.866161, 31.199238, 44.410553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580261, 30.971209, 44.248493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526036, 0.056457, 0.848586,
		-0.460883, 0.819652, -0.340232,
		-0.714754, -0.570073, -0.405146,
		33.365833, 30.800186, 44.126949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273384, 31.392649, 44.806435>,  <33.866161, 31.199238, 44.410553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273384, 31.392649, 44.806435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158939, 31.055471, 44.624187>,  <33.090275, 30.853165, 44.514839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.158939, 31.055471, 44.624187>,  <33.273384, 31.392649, 44.806435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158939, 31.055471, 44.624187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680193, -0.156240, 0.716189,
		-0.674892, 0.514819, -0.528661,
		-0.286110, -0.842942, -0.455621,
		33.073105, 30.802589, 44.487503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611160, 31.306189, 44.972324>,  <33.273384, 31.392649, 44.806435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611160, 31.306189, 44.972324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689888, 30.936905, 44.840298>,  <32.737125, 30.715334, 44.761082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689888, 30.936905, 44.840298>,  <32.611160, 31.306189, 44.972324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689888, 30.936905, 44.840298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564885, -0.381937, 0.731457,
		-0.801353, 0.042484, -0.596681,
		0.196819, -0.923211, -0.330065,
		32.748936, 30.659941, 44.741280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020462, 31.039831, 44.967857>,  <32.611160, 31.306189, 44.972324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020462, 31.039831, 44.967857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.297665, 30.753305, 45.000443>,  <32.463985, 30.581390, 45.019993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.297665, 30.753305, 45.000443>,  <32.020462, 31.039831, 44.967857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297665, 30.753305, 45.000443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498448, -0.394430, 0.771994,
		-0.520860, -0.575600, -0.630388,
		0.693004, -0.716317, 0.081464,
		32.505566, 30.538410, 45.024883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670135, 30.429436, 45.198132>,  <32.020462, 31.039831, 44.967857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670135, 30.429436, 45.198132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.057507, 30.360430, 45.270111>,  <32.289928, 30.319025, 45.313301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.057507, 30.360430, 45.270111>,  <31.670135, 30.429436, 45.198132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057507, 30.360430, 45.270111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249025, -0.702651, 0.666534,
		0.011455, -0.690303, -0.723429,
		0.968429, -0.172517, 0.179951,
		32.348034, 30.308674, 45.324097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755962, 29.662844, 45.266541>,  <31.670135, 30.429436, 45.198132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755962, 29.662844, 45.266541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.065788, 29.828350, 45.457893>,  <32.251682, 29.927654, 45.572704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.065788, 29.828350, 45.457893>,  <31.755962, 29.662844, 45.266541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065788, 29.828350, 45.457893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236683, -0.511773, 0.825875,
		0.586540, -0.752918, -0.298470,
		0.774565, 0.413766, 0.478378,
		32.298157, 29.952480, 45.601406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009979, 29.124413, 45.711746>,  <31.755962, 29.662844, 45.266541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009979, 29.124413, 45.711746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.164864, 29.452921, 45.879353>,  <32.257793, 29.650026, 45.979916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.164864, 29.452921, 45.879353>,  <32.009979, 29.124413, 45.711746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164864, 29.452921, 45.879353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023787, -0.445421, 0.895005,
		0.921683, -0.356526, -0.152938,
		0.387214, 0.821273, 0.419018,
		32.281029, 29.699303, 46.005058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593506, 28.929304, 46.244030>,  <32.009979, 29.124413, 45.711746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593506, 28.929304, 46.244030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.483253, 29.296871, 46.356899>,  <32.417103, 29.517412, 46.424622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.483253, 29.296871, 46.356899>,  <32.593506, 28.929304, 46.244030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483253, 29.296871, 46.356899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137098, -0.328119, 0.934635,
		0.951438, 0.218927, 0.216420,
		-0.275628, 0.918917, 0.282170,
		32.400566, 29.572546, 46.441551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994976, 29.189959, 46.824818>,  <32.593506, 28.929304, 46.244030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994976, 29.189959, 46.824818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647835, 29.388561, 46.831802>,  <32.439548, 29.507723, 46.835995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.647835, 29.388561, 46.831802>,  <32.994976, 29.189959, 46.824818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647835, 29.388561, 46.831802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240470, -0.450559, 0.859751,
		0.434741, 0.741941, 0.510416,
		-0.867856, 0.496508, 0.017461,
		32.387478, 29.537514, 46.837040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757229, 29.102180, 47.514046>,  <32.994976, 29.189959, 46.824818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757229, 29.102180, 47.514046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.440655, 29.288904, 47.356197>,  <32.250710, 29.400938, 47.261490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.440655, 29.288904, 47.356197>,  <32.757229, 29.102180, 47.514046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440655, 29.288904, 47.356197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513961, -0.158748, 0.842997,
		0.330873, 0.869994, 0.365559,
		-0.791434, 0.466808, -0.394618,
		32.203224, 29.428947, 47.237812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482483, 29.480560, 48.091541>,  <32.757229, 29.102180, 47.514046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482483, 29.480560, 48.091541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183903, 29.409838, 47.834930>,  <32.004757, 29.367403, 47.680965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183903, 29.409838, 47.834930>,  <32.482483, 29.480560, 48.091541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183903, 29.409838, 47.834930> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616339, -0.179770, 0.766687,
		-0.250883, 0.967689, 0.025215,
		-0.746447, -0.176808, -0.641526,
		31.959969, 29.356794, 47.642471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914457, 29.820169, 48.266361>,  <32.482483, 29.480560, 48.091541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914457, 29.820169, 48.266361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.763348, 29.527063, 48.039967>,  <31.672682, 29.351200, 47.904129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.763348, 29.527063, 48.039967>,  <31.914457, 29.820169, 48.266361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763348, 29.527063, 48.039967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635934, -0.238947, 0.733820,
		-0.672959, 0.637149, -0.375723,
		-0.377775, -0.732766, -0.565986,
		31.650015, 29.307234, 47.870171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276384, 30.042566, 48.108585>,  <31.914457, 29.820169, 48.266361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276384, 30.042566, 48.108585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280031, 29.645662, 48.059052>,  <31.282219, 29.407520, 48.029331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.280031, 29.645662, 48.059052>,  <31.276384, 30.042566, 48.108585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280031, 29.645662, 48.059052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745237, -0.089312, 0.660792,
		-0.666738, 0.086262, -0.740284,
		0.009116, -0.992261, -0.123833,
		31.282766, 29.347984, 48.021900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679018, 29.725544, 47.771461>,  <31.276384, 30.042566, 48.108585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679018, 29.725544, 47.771461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847298, 29.455387, 48.013737>,  <30.948265, 29.293293, 48.159100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.847298, 29.455387, 48.013737>,  <30.679018, 29.725544, 47.771461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847298, 29.455387, 48.013737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810779, 0.019610, 0.585023,
		-0.406998, -0.737197, -0.539345,
		0.420701, -0.675393, 0.605685,
		30.973509, 29.252769, 48.195442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913755, 29.790098, 48.091225>,  <30.679018, 29.725544, 47.771461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913755, 29.790098, 48.091225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598402, 29.545450, 48.117668>,  <29.409189, 29.398661, 48.133533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.598402, 29.545450, 48.117668>,  <29.913755, 29.790098, 48.091225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598402, 29.545450, 48.117668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117655, 0.044434, -0.992060,
		0.603828, -0.789902, -0.106991,
		-0.788384, -0.611622, 0.066105,
		29.361887, 29.361963, 48.137501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125484, 29.291033, 47.616585>,  <29.913755, 29.790098, 48.091225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125484, 29.291033, 47.616585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.738503, 29.344526, 47.702507>,  <29.506313, 29.376623, 47.754063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.738503, 29.344526, 47.702507>,  <30.125484, 29.291033, 47.616585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738503, 29.344526, 47.702507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207007, 0.069904, -0.975839,
		-0.145520, -0.988549, -0.039945,
		-0.967457, 0.133735, 0.214809,
		29.448265, 29.384647, 47.766949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784685, 28.829916, 47.253330>,  <30.125484, 29.291033, 47.616585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784685, 28.829916, 47.253330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521753, 29.124395, 47.317738>,  <29.363995, 29.301083, 47.356380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521753, 29.124395, 47.317738>,  <29.784685, 28.829916, 47.253330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521753, 29.124395, 47.317738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150266, 0.081327, -0.985295,
		-0.738469, -0.671860, 0.057166,
		-0.657331, 0.736200, 0.161015,
		29.324554, 29.345255, 47.366043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149149, 28.724560, 46.820965>,  <29.784685, 28.829916, 47.253330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149149, 28.724560, 46.820965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.154062, 29.112247, 46.919319>,  <29.157011, 29.344860, 46.978333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.154062, 29.112247, 46.919319>,  <29.149149, 28.724560, 46.820965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154062, 29.112247, 46.919319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183142, 0.243925, -0.952344,
		-0.983010, -0.033332, 0.180501,
		0.012285, 0.969221, 0.245885,
		29.157747, 29.403013, 46.993084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630669, 29.007067, 46.367741>,  <29.149149, 28.724560, 46.820965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630669, 29.007067, 46.367741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.866604, 29.304308, 46.494164>,  <29.008165, 29.482653, 46.570019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.866604, 29.304308, 46.494164>,  <28.630669, 29.007067, 46.367741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.866604, 29.304308, 46.494164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095060, 0.452566, -0.886649,
		-0.801908, 0.492933, 0.337579,
		0.589836, 0.743102, 0.316058,
		29.043554, 29.527239, 46.588982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.385380, 29.502609, 46.067787>,  <28.630669, 29.007067, 46.367741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.385380, 29.502609, 46.067787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.751951, 29.640511, 46.149078>,  <28.971895, 29.723251, 46.197853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.751951, 29.640511, 46.149078>,  <28.385380, 29.502609, 46.067787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751951, 29.640511, 46.149078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004508, 0.498893, -0.866652,
		-0.400169, 0.795142, 0.455646,
		0.916430, 0.344753, 0.203226,
		29.026880, 29.743937, 46.210045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395584, 30.173550, 45.966801>,  <28.385380, 29.502609, 46.067787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395584, 30.173550, 45.966801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.788864, 30.106899, 45.937000>,  <29.024832, 30.066910, 45.919121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.788864, 30.106899, 45.937000>,  <28.395584, 30.173550, 45.966801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788864, 30.106899, 45.937000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001085, 0.413512, -0.910498,
		0.182521, 0.895122, 0.406747,
		0.983202, -0.166626, -0.074504,
		29.083824, 30.056911, 45.914650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.651083, 30.752272, 45.611362>,  <28.395584, 30.173550, 45.966801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.651083, 30.752272, 45.611362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.960880, 30.500177, 45.589600>,  <29.146759, 30.348921, 45.576542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.960880, 30.500177, 45.589600>,  <28.651083, 30.752272, 45.611362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960880, 30.500177, 45.589600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275483, 0.413456, -0.867849,
		0.569444, 0.657157, 0.493839,
		0.774495, -0.630236, -0.054405,
		29.193230, 30.311106, 45.573277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.289246, 31.122286, 45.324207>,  <28.651083, 30.752272, 45.611362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.289246, 31.122286, 45.324207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.368746, 30.732872, 45.279076>,  <29.416447, 30.499224, 45.251995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.368746, 30.732872, 45.279076>,  <29.289246, 31.122286, 45.324207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368746, 30.732872, 45.279076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594890, 0.211329, -0.775529,
		0.778847, 0.087017, 0.621148,
		0.198751, -0.973534, -0.112828,
		29.428371, 30.440811, 45.245228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956676, 31.080786, 45.382782>,  <29.289246, 31.122286, 45.324207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956676, 31.080786, 45.382782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.832302, 30.776100, 45.155411>,  <29.757677, 30.593288, 45.018990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.832302, 30.776100, 45.155411>,  <29.956676, 31.080786, 45.382782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832302, 30.776100, 45.155411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621745, 0.289334, -0.727817,
		0.718855, -0.579720, 0.383629,
		-0.310934, -0.761715, -0.568428,
		29.739021, 30.547586, 44.984882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542068, 30.816393, 45.173115>,  <29.956676, 31.080786, 45.382782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542068, 30.816393, 45.173115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.265362, 30.688169, 44.914288>,  <30.099337, 30.611235, 44.758991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.265362, 30.688169, 44.914288>,  <30.542068, 30.816393, 45.173115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265362, 30.688169, 44.914288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557603, 0.332247, -0.760718,
		0.458843, -0.887047, -0.051092,
		-0.691767, -0.320561, -0.647069,
		30.057831, 30.592001, 44.720165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872534, 30.321156, 44.726151>,  <30.542068, 30.816393, 45.173115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872534, 30.321156, 44.726151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550961, 30.442375, 44.521465>,  <30.358017, 30.515106, 44.398655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.550961, 30.442375, 44.521465>,  <30.872534, 30.321156, 44.726151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550961, 30.442375, 44.521465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584400, 0.242961, -0.774239,
		-0.110307, -0.921483, -0.372427,
		-0.803934, 0.303050, -0.511714,
		30.309780, 30.533291, 44.367950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965963, 30.096563, 44.022041>,  <30.872534, 30.321156, 44.726151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965963, 30.096563, 44.022041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.700518, 30.394627, 43.995644>,  <30.541250, 30.573465, 43.979805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.700518, 30.394627, 43.995644>,  <30.965963, 30.096563, 44.022041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700518, 30.394627, 43.995644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580717, 0.457532, -0.673373,
		-0.471577, -0.485183, -0.736351,
		-0.663613, 0.745159, -0.065992,
		30.501434, 30.618174, 43.975845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715879, 30.112766, 43.283287>,  <30.965963, 30.096563, 44.022041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715879, 30.112766, 43.283287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.667570, 30.468039, 43.460625>,  <30.638584, 30.681202, 43.567028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.667570, 30.468039, 43.460625>,  <30.715879, 30.112766, 43.283287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667570, 30.468039, 43.460625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438353, 0.448425, -0.778949,
		-0.890652, 0.100266, -0.443493,
		-0.120771, 0.888179, 0.443342,
		30.631338, 30.734491, 43.593628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598171, 30.528366, 42.728046>,  <30.715879, 30.112766, 43.283287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598171, 30.528366, 42.728046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.679831, 30.786654, 43.022358>,  <30.728827, 30.941626, 43.198944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.679831, 30.786654, 43.022358>,  <30.598171, 30.528366, 42.728046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679831, 30.786654, 43.022358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573504, 0.530235, -0.624455,
		-0.793358, 0.549455, -0.262074,
		0.204149, 0.645717, 0.735780,
		30.741076, 30.980370, 43.243092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.408089, 31.144901, 42.491756>,  <30.598171, 30.528366, 42.728046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.408089, 31.144901, 42.491756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.686892, 31.227875, 42.766319>,  <30.854174, 31.277658, 42.931057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.686892, 31.227875, 42.766319>,  <30.408089, 31.144901, 42.491756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.686892, 31.227875, 42.766319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372901, 0.712764, -0.594064,
		-0.612473, 0.670029, 0.419450,
		0.697009, 0.207435, 0.686403,
		30.895994, 31.290106, 42.972240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383846, 31.797178, 42.364426>,  <30.408089, 31.144901, 42.491756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383846, 31.797178, 42.364426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.713623, 31.741302, 42.583801>,  <30.911489, 31.707777, 42.715427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.713623, 31.741302, 42.583801>,  <30.383846, 31.797178, 42.364426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713623, 31.741302, 42.583801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424065, 0.794217, -0.435187,
		-0.374786, 0.591359, 0.714024,
		0.824442, -0.139691, 0.548436,
		30.960955, 31.699396, 42.748333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546797, 32.457008, 42.600655>,  <30.383846, 31.797178, 42.364426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546797, 32.457008, 42.600655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.872015, 32.224152, 42.597195>,  <31.067146, 32.084438, 42.595119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.872015, 32.224152, 42.597195>,  <30.546797, 32.457008, 42.600655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872015, 32.224152, 42.597195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443874, 0.629413, -0.637821,
		0.376744, 0.514737, 0.770136,
		0.813044, -0.582139, -0.008649,
		31.115929, 32.049511, 42.594601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992102, 32.985401, 42.734810>,  <30.546797, 32.457008, 42.600655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992102, 32.985401, 42.734810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.195286, 32.681816, 42.571865>,  <31.317196, 32.499664, 42.474098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.195286, 32.681816, 42.571865>,  <30.992102, 32.985401, 42.734810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195286, 32.681816, 42.571865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533561, 0.648504, -0.542914,
		0.676231, 0.058425, 0.734369,
		0.507960, -0.758966, -0.407365,
		31.347673, 32.454124, 42.449654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729216, 33.131786, 42.825691>,  <30.992102, 32.985401, 42.734810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729216, 33.131786, 42.825691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.695467, 32.896191, 42.504204>,  <31.675219, 32.754833, 42.311310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.695467, 32.896191, 42.504204>,  <31.729216, 33.131786, 42.825691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695467, 32.896191, 42.504204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414090, 0.712924, -0.565923,
		0.906318, -0.380559, 0.183747,
		-0.084369, -0.588994, -0.803721,
		31.670156, 32.719494, 42.263088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447208, 33.068584, 42.575340>,  <31.729216, 33.131786, 42.825691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447208, 33.068584, 42.575340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.188213, 32.987801, 42.281406>,  <32.032818, 32.939331, 42.105045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.188213, 32.987801, 42.281406>,  <32.447208, 33.068584, 42.575340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188213, 32.987801, 42.281406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486035, 0.633245, -0.602304,
		0.586968, -0.747137, -0.311858,
		-0.647486, -0.201960, -0.734829,
		31.993969, 32.927212, 42.060959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.086086, 40.948990, 40.913120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.007248, 41.323429, 40.796581>,  <42.959946, 41.548092, 40.726658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.007248, 41.323429, 40.796581>,  <43.086086, 40.948990, 40.913120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007248, 41.323429, 40.796581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454176, -0.350545, -0.819050,
		-0.868837, -0.029108, 0.494242,
		-0.197095, 0.936094, -0.291346,
		42.948120, 41.604256, 40.709179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346809, 40.996082, 40.756805>,  <43.086086, 40.948990, 40.913120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346809, 40.996082, 40.756805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.547028, 41.265171, 40.538853>,  <42.667160, 41.426624, 40.408081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.547028, 41.265171, 40.538853>,  <42.346809, 40.996082, 40.756805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.547028, 41.265171, 40.538853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383381, -0.392073, -0.836240,
		-0.776192, 0.627474, 0.061659,
		0.500544, 0.672722, -0.544886,
		42.697189, 41.466988, 40.375385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871498, 41.149109, 40.321770>,  <42.346809, 40.996082, 40.756805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871498, 41.149109, 40.321770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.216034, 41.272007, 40.159931>,  <42.422756, 41.345745, 40.062828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.216034, 41.272007, 40.159931>,  <41.871498, 41.149109, 40.321770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216034, 41.272007, 40.159931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226050, -0.481435, -0.846831,
		-0.454968, 0.820867, -0.345226,
		0.861339, 0.307243, -0.404595,
		42.474434, 41.364182, 40.038551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673889, 41.354252, 39.660248>,  <41.871498, 41.149109, 40.321770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673889, 41.354252, 39.660248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069378, 41.294376, 39.661999>,  <42.306671, 41.258453, 39.663052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.069378, 41.294376, 39.661999>,  <41.673889, 41.354252, 39.660248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069378, 41.294376, 39.661999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104862, -0.712950, -0.693330,
		0.106905, 0.685053, -0.720607,
		0.988724, -0.149685, 0.004382,
		42.365993, 41.249470, 39.663315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779160, 41.346672, 38.970963>,  <41.673889, 41.354252, 39.660248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.779160, 41.346672, 38.970963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104286, 41.191051, 39.144382>,  <42.299362, 41.097679, 39.248432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.104286, 41.191051, 39.144382>,  <41.779160, 41.346672, 38.970963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.104286, 41.191051, 39.144382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001740, -0.745884, -0.666073,
		0.582511, 0.540644, -0.606947,
		0.812821, -0.389051, 0.433545,
		42.348133, 41.074337, 39.274445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.178440, 41.060253, 38.492237>,  <41.779160, 41.346672, 38.970963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.178440, 41.060253, 38.492237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.334091, 40.873291, 38.809757>,  <42.427483, 40.761112, 39.000267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.334091, 40.873291, 38.809757>,  <42.178440, 41.060253, 38.492237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334091, 40.873291, 38.809757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081475, -0.840873, -0.535065,
		0.917575, 0.272882, -0.289123,
		0.389125, -0.467406, 0.793797,
		42.450829, 40.733070, 39.047897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828083, 40.776802, 38.187618>,  <42.178440, 41.060253, 38.492237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828083, 40.776802, 38.187618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695278, 40.588146, 38.514378>,  <42.615593, 40.474953, 38.710434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.695278, 40.588146, 38.514378>,  <42.828083, 40.776802, 38.187618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695278, 40.588146, 38.514378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048456, -0.856355, -0.514109,
		0.942028, -0.210277, 0.261470,
		-0.332017, -0.471635, 0.816900,
		42.595673, 40.446655, 38.759449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.287247, 40.167599, 38.285267>,  <42.828083, 40.776802, 38.187618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.287247, 40.167599, 38.285267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.956879, 40.079647, 38.492920>,  <42.758656, 40.026875, 38.617512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.956879, 40.079647, 38.492920>,  <43.287247, 40.167599, 38.285267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956879, 40.079647, 38.492920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012501, -0.927726, -0.373053,
		0.563642, -0.301624, 0.768980,
		-0.825925, -0.219882, 0.519134,
		42.709103, 40.013683, 38.648659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455441, 39.430832, 38.610714>,  <43.287247, 40.167599, 38.285267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455441, 39.430832, 38.610714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056728, 39.455624, 38.590393>,  <42.817501, 39.470501, 38.578201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.056728, 39.455624, 38.590393>,  <43.455441, 39.430832, 38.610714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.056728, 39.455624, 38.590393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038389, -0.925738, -0.376213,
		-0.070348, -0.373053, 0.925139,
		-0.996784, 0.061981, -0.050802,
		42.757694, 39.474216, 38.575153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194660, 38.734009, 38.903835>,  <43.455441, 39.430832, 38.610714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194660, 38.734009, 38.903835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870609, 38.864132, 38.708748>,  <42.676178, 38.942207, 38.591694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870609, 38.864132, 38.708748>,  <43.194660, 38.734009, 38.903835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870609, 38.864132, 38.708748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070915, -0.880190, -0.469294,
		-0.581954, -0.345599, 0.736132,
		-0.810124, 0.325311, -0.487722,
		42.627571, 38.961723, 38.562431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747017, 38.157116, 38.854469>,  <43.194660, 38.734009, 38.903835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747017, 38.157116, 38.854469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.608692, 38.400295, 38.568584>,  <42.525700, 38.546204, 38.397053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.608692, 38.400295, 38.568584>,  <42.747017, 38.157116, 38.854469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.608692, 38.400295, 38.568584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126023, -0.784895, -0.606677,
		-0.929804, -0.119723, 0.348039,
		-0.345807, 0.607952, -0.714711,
		42.504951, 38.582680, 38.354172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100410, 37.822395, 38.512264>,  <42.747017, 38.157116, 38.854469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100410, 37.822395, 38.512264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.238087, 38.082169, 38.241043>,  <42.320694, 38.238033, 38.078308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.238087, 38.082169, 38.241043>,  <42.100410, 37.822395, 38.512264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238087, 38.082169, 38.241043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144406, -0.676973, -0.721702,
		-0.927727, 0.346320, -0.139227,
		0.344193, 0.649438, -0.678057,
		42.341343, 38.277000, 38.037624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742767, 37.721630, 37.865616>,  <42.100410, 37.822395, 38.512264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742767, 37.721630, 37.865616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.066067, 37.909012, 37.722916>,  <42.260048, 38.021442, 37.637295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.066067, 37.909012, 37.722916>,  <41.742767, 37.721630, 37.865616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066067, 37.909012, 37.722916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023995, -0.631565, -0.774951,
		-0.588346, 0.617797, -0.521705,
		0.808253, 0.468458, -0.356755,
		42.308544, 38.049549, 37.615891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707745, 37.611755, 37.165203>,  <41.742767, 37.721630, 37.865616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707745, 37.611755, 37.165203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.074120, 37.763660, 37.217094>,  <42.293945, 37.854805, 37.248230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.074120, 37.763660, 37.217094>,  <41.707745, 37.611755, 37.165203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074120, 37.763660, 37.217094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314738, -0.479221, -0.819321,
		-0.248981, 0.791281, -0.558465,
		0.915941, 0.379766, 0.129729,
		42.348904, 37.877590, 37.256012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956512, 37.930168, 36.493328>,  <41.707745, 37.611755, 37.165203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956512, 37.930168, 36.493328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.277523, 37.818142, 36.704048>,  <42.470131, 37.750927, 36.830479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.277523, 37.818142, 36.704048>,  <41.956512, 37.930168, 36.493328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277523, 37.818142, 36.704048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365649, -0.466826, -0.805217,
		0.471436, 0.838830, -0.272234,
		0.802527, -0.280066, 0.526796,
		42.518280, 37.734123, 36.862087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467342, 37.954803, 36.001839>,  <41.956512, 37.930168, 36.493328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467342, 37.954803, 36.001839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.611759, 37.752037, 36.314934>,  <42.698410, 37.630379, 36.502792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.611759, 37.752037, 36.314934>,  <42.467342, 37.954803, 36.001839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611759, 37.752037, 36.314934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659031, -0.455163, -0.598753,
		0.659790, 0.732029, 0.169737,
		0.361046, -0.506913, 0.782742,
		42.720074, 37.599964, 36.549755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185722, 38.040928, 36.102184>,  <42.467342, 37.954803, 36.001839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185722, 38.040928, 36.102184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126270, 37.685188, 36.275146>,  <43.090599, 37.471745, 36.378925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126270, 37.685188, 36.275146>,  <43.185722, 38.040928, 36.102184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126270, 37.685188, 36.275146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747030, -0.387487, -0.540185,
		0.647963, 0.242735, 0.721959,
		-0.148628, -0.889345, 0.432407,
		43.081680, 37.418385, 36.404869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821701, 37.818485, 36.329998>,  <43.185722, 38.040928, 36.102184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821701, 37.818485, 36.329998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594040, 37.489613, 36.326103>,  <43.457443, 37.292290, 36.323765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594040, 37.489613, 36.326103>,  <43.821701, 37.818485, 36.329998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594040, 37.489613, 36.326103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695422, -0.475016, -0.539211,
		0.438701, -0.313663, 0.842115,
		-0.569148, -0.822177, -0.009738,
		43.423294, 37.242958, 36.323181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219967, 37.201054, 36.424534>,  <43.821701, 37.818485, 36.329998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219967, 37.201054, 36.424534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.905029, 37.025143, 36.251709>,  <43.716064, 36.919594, 36.148014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.905029, 37.025143, 36.251709>,  <44.219967, 37.201054, 36.424534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.905029, 37.025143, 36.251709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615444, -0.519530, -0.592720,
		0.036200, -0.732585, 0.679713,
		-0.787349, -0.439782, -0.432058,
		43.668823, 36.893208, 36.122093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362644, 36.384907, 36.191856>,  <44.219967, 37.201054, 36.424534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362644, 36.384907, 36.191856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059601, 36.513565, 35.964672>,  <43.877777, 36.590759, 35.828362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.059601, 36.513565, 35.964672>,  <44.362644, 36.384907, 36.191856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059601, 36.513565, 35.964672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328495, -0.564025, -0.757606,
		-0.564025, -0.760538, 0.321649,
		0.757606, -0.321649, 0.567957,
		43.832317, 36.610058, 35.794285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.000755, 35.858624, 35.899010>,  <44.362644, 36.384907, 36.191856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.000755, 35.858624, 35.899010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973576, 36.164581, 35.642784>,  <43.957268, 36.348156, 35.489048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973576, 36.164581, 35.642784>,  <44.000755, 35.858624, 35.899010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973576, 36.164581, 35.642784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302133, -0.596120, -0.743879,
		-0.950841, -0.244083, -0.190593,
		-0.067952, 0.764895, -0.640561,
		43.953190, 36.394051, 35.450615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368347, 35.255127, 36.231903>,  <44.000755, 35.858624, 35.899010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368347, 35.255127, 36.231903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737461, 35.234917, 36.384693>,  <44.958931, 35.222790, 36.476368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.737461, 35.234917, 36.384693>,  <44.368347, 35.255127, 36.231903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.737461, 35.234917, 36.384693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377492, 0.080089, 0.922543,
		-0.077207, -0.995506, 0.054831,
		0.922789, -0.050528, 0.381980,
		45.014297, 35.219757, 36.499287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266552, 34.942432, 36.828926>,  <44.368347, 35.255127, 36.231903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266552, 34.942432, 36.828926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.621487, 35.115578, 36.892502>,  <44.834446, 35.219463, 36.930649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.621487, 35.115578, 36.892502>,  <44.266552, 34.942432, 36.828926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.621487, 35.115578, 36.892502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305073, 0.292620, 0.906258,
		0.345781, -0.852643, 0.391708,
		0.887337, 0.432866, 0.158936,
		44.887688, 35.245438, 36.940182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498016, 34.750507, 37.518036>,  <44.266552, 34.942432, 36.828926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498016, 34.750507, 37.518036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671814, 35.097763, 37.422081>,  <44.776093, 35.306118, 37.364506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671814, 35.097763, 37.422081>,  <44.498016, 34.750507, 37.518036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671814, 35.097763, 37.422081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205211, 0.354762, 0.912158,
		0.876984, -0.347102, 0.332294,
		0.434497, 0.868138, -0.239891,
		44.802162, 35.358204, 37.350113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925953, 34.893223, 38.073467>,  <44.498016, 34.750507, 37.518036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925953, 34.893223, 38.073467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.876671, 35.244877, 37.889320>,  <44.847103, 35.455872, 37.778831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.876671, 35.244877, 37.889320>,  <44.925953, 34.893223, 38.073467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876671, 35.244877, 37.889320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077674, 0.453933, 0.887644,
		0.989337, 0.145119, 0.012360,
		-0.123203, 0.879139, -0.460365,
		44.839710, 35.508617, 37.751209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.303146, 35.380394, 38.529079>,  <44.925953, 34.893223, 38.073467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.303146, 35.380394, 38.529079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077522, 35.614151, 38.295731>,  <44.942146, 35.754406, 38.155720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.077522, 35.614151, 38.295731>,  <45.303146, 35.380394, 38.529079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077522, 35.614151, 38.295731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215809, 0.577602, 0.787275,
		0.797034, 0.569967, -0.199685,
		-0.564060, 0.584391, -0.583373,
		44.908306, 35.789467, 38.120720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.429504, 36.035866, 38.713375>,  <45.303146, 35.380394, 38.529079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.429504, 36.035866, 38.713375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089157, 36.106415, 38.515419>,  <44.884949, 36.148743, 38.396645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.089157, 36.106415, 38.515419>,  <45.429504, 36.035866, 38.713375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.089157, 36.106415, 38.515419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277526, 0.648940, 0.708418,
		0.446098, 0.740115, -0.503216,
		-0.850868, 0.176369, -0.494892,
		44.833897, 36.159325, 38.366951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397499, 36.791645, 38.600494>,  <45.429504, 36.035866, 38.713375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397499, 36.791645, 38.600494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.026997, 36.643387, 38.573143>,  <44.804695, 36.554432, 38.556732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.026997, 36.643387, 38.573143>,  <45.397499, 36.791645, 38.600494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.026997, 36.643387, 38.573143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356315, 0.802002, 0.479409,
		-0.122850, 0.468419, -0.874923,
		-0.926255, -0.370643, -0.068379,
		44.749119, 36.532192, 38.552628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956863, 37.329216, 38.256901>,  <45.397499, 36.791645, 38.600494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956863, 37.329216, 38.256901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.713123, 37.085876, 38.460312>,  <44.566879, 36.939873, 38.582359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.713123, 37.085876, 38.460312>,  <44.956863, 37.329216, 38.256901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.713123, 37.085876, 38.460312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407204, 0.790416, 0.457633,
		-0.680348, 0.071786, -0.729365,
		-0.609353, -0.608350, 0.508527,
		44.530319, 36.903370, 38.612869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.270725, 37.668346, 38.310192>,  <44.956863, 37.329216, 38.256901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.270725, 37.668346, 38.310192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271206, 37.397373, 38.604424>,  <44.271492, 37.234787, 38.780964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.271206, 37.397373, 38.604424>,  <44.270725, 37.668346, 38.310192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271206, 37.397373, 38.604424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410784, 0.670319, 0.618004,
		-0.911732, -0.302905, -0.277477,
		0.001198, -0.677437, 0.735580,
		44.271564, 37.194141, 38.825096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832317, 38.017918, 38.705387>,  <44.270725, 37.668346, 38.310192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832317, 38.017918, 38.705387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.993587, 37.741074, 38.944862>,  <44.090351, 37.574966, 39.088547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.993587, 37.741074, 38.944862>,  <43.832317, 38.017918, 38.705387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993587, 37.741074, 38.944862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118725, 0.609129, 0.784134,
		-0.907389, -0.387223, 0.163415,
		0.403176, -0.692113, 0.598689,
		44.114540, 37.533440, 39.124470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385128, 37.783588, 39.227501>,  <43.832317, 38.017918, 38.705387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385128, 37.783588, 39.227501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.726151, 37.682186, 39.410313>,  <43.930763, 37.621346, 39.520000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.726151, 37.682186, 39.410313>,  <43.385128, 37.783588, 39.227501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.726151, 37.682186, 39.410313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231948, 0.600109, 0.765552,
		-0.468338, -0.758686, 0.452829,
		0.852561, -0.253505, 0.457030,
		43.981918, 37.606136, 39.547421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226017, 37.788773, 39.952534>,  <43.385128, 37.783588, 39.227501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226017, 37.788773, 39.952534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625507, 37.787174, 39.972630>,  <43.865204, 37.786213, 39.984688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.625507, 37.787174, 39.972630>,  <43.226017, 37.788773, 39.952534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.625507, 37.787174, 39.972630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040958, 0.516571, 0.855264,
		-0.029374, -0.856235, 0.515751,
		0.998729, -0.003999, 0.050243,
		43.925125, 37.785976, 39.987701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375256, 37.694489, 40.668915>,  <43.226017, 37.788773, 39.952534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375256, 37.694489, 40.668915> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.686478, 37.855457, 40.475964>,  <43.873211, 37.952038, 40.360191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.686478, 37.855457, 40.475964>,  <43.375256, 37.694489, 40.668915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686478, 37.855457, 40.475964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106267, 0.672501, 0.732427,
		0.619142, -0.621130, 0.480480,
		0.778055, 0.402418, -0.482379,
		43.919895, 37.976185, 40.331249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842667, 37.634041, 41.142696>,  <43.375256, 37.694489, 40.668915>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842667, 37.634041, 41.142696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932850, 37.930874, 40.890194>,  <43.986961, 38.108974, 40.738693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.932850, 37.930874, 40.890194>,  <43.842667, 37.634041, 41.142696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.932850, 37.930874, 40.890194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071957, 0.633484, 0.770403,
		0.971592, -0.219118, 0.089427,
		0.225459, 0.742082, -0.631254,
		44.000488, 38.153500, 40.700817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.308056, 38.002758, 41.534584>,  <43.842667, 37.634041, 41.142696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.308056, 38.002758, 41.534584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.222477, 38.256516, 41.237457>,  <44.171131, 38.408768, 41.059181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.222477, 38.256516, 41.237457>,  <44.308056, 38.002758, 41.534584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.222477, 38.256516, 41.237457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061739, 0.767685, 0.637846,
		0.974893, 0.090603, -0.203409,
		-0.213945, 0.634390, -0.742817,
		44.158295, 38.446831, 41.014614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818047, 38.489902, 41.602924>,  <44.308056, 38.002758, 41.534584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818047, 38.489902, 41.602924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.523552, 38.654507, 41.388031>,  <44.346855, 38.753269, 41.259094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.523552, 38.654507, 41.388031>,  <44.818047, 38.489902, 41.602924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523552, 38.654507, 41.388031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070248, 0.743101, 0.665482,
		0.673072, 0.527689, -0.518188,
		-0.736234, 0.411515, -0.537229,
		44.302681, 38.777962, 41.226864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055305, 39.153736, 41.502094>,  <44.818047, 38.489902, 41.602924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055305, 39.153736, 41.502094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659389, 39.136761, 41.447659>,  <44.421841, 39.126575, 41.414997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659389, 39.136761, 41.447659>,  <45.055305, 39.153736, 41.502094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659389, 39.136761, 41.447659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121073, 0.754234, 0.645346,
		0.075258, 0.655232, -0.751669,
		-0.989787, -0.042439, -0.136093,
		44.362453, 39.124027, 41.406830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867989, 39.847122, 41.522869>,  <45.055305, 39.153736, 41.502094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867989, 39.847122, 41.522869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.519680, 39.665554, 41.598465>,  <44.310696, 39.556614, 41.643822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.519680, 39.665554, 41.598465>,  <44.867989, 39.847122, 41.522869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.519680, 39.665554, 41.598465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270936, 0.763706, 0.585958,
		-0.410309, 0.459031, -0.787996,
		-0.870770, -0.453920, 0.188988,
		44.258450, 39.529377, 41.655163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470898, 40.355675, 41.502403>,  <44.867989, 39.847122, 41.522869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470898, 40.355675, 41.502403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232746, 40.097069, 41.693211>,  <44.089855, 39.941906, 41.807693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.232746, 40.097069, 41.693211>,  <44.470898, 40.355675, 41.502403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.232746, 40.097069, 41.693211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288411, 0.726117, 0.624157,
		-0.749897, 0.234032, -0.618775,
		-0.595376, -0.646516, 0.477016,
		44.054134, 39.903114, 41.836315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798401, 40.697678, 41.536377>,  <44.470898, 40.355675, 41.502403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798401, 40.697678, 41.536377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856365, 40.407066, 41.805054>,  <43.891144, 40.232700, 41.966259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.856365, 40.407066, 41.805054>,  <43.798401, 40.697678, 41.536377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856365, 40.407066, 41.805054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212678, 0.640114, 0.738257,
		-0.966317, -0.249835, -0.061755,
		0.144912, -0.726524, 0.671687,
		43.899837, 40.189110, 42.006561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230480, 40.701538, 42.046139>,  <43.798401, 40.697678, 41.536377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230480, 40.701538, 42.046139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.514942, 40.495453, 42.237476>,  <43.685619, 40.371799, 42.352280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.514942, 40.495453, 42.237476>,  <43.230480, 40.701538, 42.046139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514942, 40.495453, 42.237476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009805, 0.687600, 0.726023,
		-0.702971, -0.511622, 0.494039,
		0.711151, -0.515217, 0.478346,
		43.728287, 40.340889, 42.380981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.378452, 33.395378, 40.091396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050781, 33.446316, 39.867706>,  <36.854179, 33.476879, 39.733494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050781, 33.446316, 39.867706>,  <37.378452, 33.395378, 40.091396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050781, 33.446316, 39.867706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568524, 0.308976, -0.762439,
		0.075691, -0.942505, -0.325507,
		-0.819177, 0.127349, -0.559224,
		36.805027, 33.484520, 39.699940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510029, 33.133831, 39.456642>,  <37.378452, 33.395378, 40.091396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510029, 33.133831, 39.456642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200199, 33.375229, 39.380920>,  <37.014301, 33.520069, 39.335487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200199, 33.375229, 39.380920>,  <37.510029, 33.133831, 39.456642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.200199, 33.375229, 39.380920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492229, 0.387223, -0.779596,
		-0.397180, -0.697031, -0.596989,
		-0.774570, 0.603495, -0.189301,
		36.967827, 33.556278, 39.324131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270206, 33.058189, 38.671543>,  <37.510029, 33.133831, 39.456642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270206, 33.058189, 38.671543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108208, 33.403309, 38.792572>,  <37.011009, 33.610382, 38.865189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108208, 33.403309, 38.792572>,  <37.270206, 33.058189, 38.671543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108208, 33.403309, 38.792572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260892, 0.426221, -0.866182,
		-0.876307, -0.271861, -0.397716,
		-0.404996, 0.862802, 0.302574,
		36.986710, 33.662151, 38.883343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882832, 33.307629, 38.118992>,  <37.270206, 33.058189, 38.671543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882832, 33.307629, 38.118992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988922, 33.622780, 38.341309>,  <37.052578, 33.811871, 38.474697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988922, 33.622780, 38.341309>,  <36.882832, 33.307629, 38.118992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988922, 33.622780, 38.341309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148939, 0.536038, -0.830952,
		-0.952613, 0.303169, 0.024826,
		0.265226, 0.787878, 0.555790,
		37.068489, 33.859142, 38.508045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638237, 33.818935, 37.708912>,  <36.882832, 33.307629, 38.118992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638237, 33.818935, 37.708912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880722, 34.017254, 37.957653>,  <37.026211, 34.136246, 38.106895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880722, 34.017254, 37.957653>,  <36.638237, 33.818935, 37.708912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880722, 34.017254, 37.957653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162906, 0.687912, -0.707276,
		-0.778443, 0.530060, 0.336250,
		0.606209, 0.495797, 0.621850,
		37.062584, 34.165993, 38.144207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582737, 34.435619, 37.425400>,  <36.638237, 33.818935, 37.708912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582737, 34.435619, 37.425400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884609, 34.517338, 37.674793>,  <37.065731, 34.566368, 37.824429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884609, 34.517338, 37.674793>,  <36.582737, 34.435619, 37.425400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884609, 34.517338, 37.674793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333168, 0.699317, -0.632420,
		-0.565210, 0.684996, 0.459694,
		0.754677, 0.204294, 0.623480,
		37.111012, 34.578625, 37.861835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629025, 35.135170, 37.390598>,  <36.582737, 34.435619, 37.425400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629025, 35.135170, 37.390598> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987537, 35.000401, 37.505947>,  <37.202644, 34.919540, 37.575157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987537, 35.000401, 37.505947>,  <36.629025, 35.135170, 37.390598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987537, 35.000401, 37.505947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443300, 0.662142, -0.604196,
		0.012623, 0.669367, 0.742825,
		0.896284, -0.336921, 0.288372,
		37.256424, 34.899323, 37.592457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084835, 35.770061, 37.481358>,  <36.629025, 35.135170, 37.390598>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084835, 35.770061, 37.481358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324451, 35.457767, 37.410252>,  <37.468220, 35.270390, 37.367588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324451, 35.457767, 37.410252>,  <37.084835, 35.770061, 37.481358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324451, 35.457767, 37.410252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563566, 0.568807, -0.599042,
		0.568807, 0.258670, 0.780736,
		0.599042, -0.780736, -0.177764,
		37.504166, 35.223545, 37.356922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818977, 35.912148, 37.618660>,  <37.084835, 35.770061, 37.481358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818977, 35.912148, 37.618660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863392, 35.597569, 37.375618>,  <37.890041, 35.408821, 37.229794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863392, 35.597569, 37.375618>,  <37.818977, 35.912148, 37.618660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863392, 35.597569, 37.375618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736378, 0.475679, -0.481121,
		0.667397, -0.394001, 0.631937,
		0.111036, -0.786443, -0.607600,
		37.896702, 35.361637, 37.193336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572479, 35.768764, 37.601311>,  <37.818977, 35.912148, 37.618660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572479, 35.768764, 37.601311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394173, 35.608395, 37.281174>,  <38.287189, 35.512173, 37.089092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394173, 35.608395, 37.281174>,  <38.572479, 35.768764, 37.601311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394173, 35.608395, 37.281174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707782, 0.389514, -0.589341,
		0.548027, -0.829178, 0.110135,
		-0.445770, -0.400927, -0.800342,
		38.260441, 35.488117, 37.041073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150547, 35.433346, 37.263298>,  <38.572479, 35.768764, 37.601311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150547, 35.433346, 37.263298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851665, 35.487434, 37.003021>,  <38.672337, 35.519890, 36.846855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851665, 35.487434, 37.003021>,  <39.150547, 35.433346, 37.263298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851665, 35.487434, 37.003021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629482, 0.458038, -0.627657,
		0.213167, -0.878587, -0.427370,
		-0.747203, 0.135226, -0.650693,
		38.627506, 35.528004, 36.807812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387165, 35.181564, 36.599239>,  <39.150547, 35.433346, 37.263298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387165, 35.181564, 36.599239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099049, 35.447815, 36.521149>,  <38.926178, 35.607567, 36.474293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099049, 35.447815, 36.521149>,  <39.387165, 35.181564, 36.599239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099049, 35.447815, 36.521149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645424, 0.539984, -0.540227,
		-0.254170, -0.515129, -0.818560,
		-0.720296, 0.665627, -0.195229,
		38.882961, 35.647503, 36.462582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293880, 35.279945, 35.886871>,  <39.387165, 35.181564, 36.599239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293880, 35.279945, 35.886871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203022, 35.605526, 36.100742>,  <39.148506, 35.800873, 36.229065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203022, 35.605526, 36.100742>,  <39.293880, 35.279945, 35.886871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203022, 35.605526, 36.100742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607612, 0.547516, -0.575355,
		-0.761058, 0.194187, -0.618936,
		-0.227150, 0.813952, 0.534682,
		39.134876, 35.849712, 36.261147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934746, 35.010822, 35.774940>,  <39.293880, 35.279945, 35.886871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934746, 35.010822, 35.774940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863266, 34.929588, 36.160027>,  <39.820377, 34.880848, 36.391079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863266, 34.929588, 36.160027>,  <39.934746, 35.010822, 35.774940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863266, 34.929588, 36.160027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614301, 0.741293, 0.270404,
		-0.768570, 0.639720, -0.007717,
		-0.178704, -0.203084, 0.962716,
		39.809654, 34.868664, 36.448841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030106, 34.238434, 35.788082>,  <39.934746, 35.010822, 35.774940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030106, 34.238434, 35.788082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164200, 33.912098, 35.599606>,  <40.244656, 33.716297, 35.486519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164200, 33.912098, 35.599606>,  <40.030106, 34.238434, 35.788082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164200, 33.912098, 35.599606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544442, -0.575924, 0.609832,
		-0.768894, 0.052095, -0.637251,
		0.335239, -0.815842, -0.471187,
		40.264771, 33.667347, 35.458248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515388, 33.895420, 35.694462>,  <40.030106, 34.238434, 35.788082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515388, 33.895420, 35.694462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794327, 33.610477, 35.662792>,  <39.961689, 33.439514, 35.643791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794327, 33.610477, 35.662792>,  <39.515388, 33.895420, 35.694462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794327, 33.610477, 35.662792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574007, -0.621208, 0.533495,
		-0.429222, -0.326580, -0.842089,
		0.697341, -0.712353, -0.079177,
		40.003529, 33.396770, 35.639038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117962, 33.292343, 35.455349>,  <39.515388, 33.895420, 35.694462>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117962, 33.292343, 35.455349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456310, 33.171703, 35.631325>,  <39.659317, 33.099319, 35.736908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456310, 33.171703, 35.631325>,  <39.117962, 33.292343, 35.455349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456310, 33.171703, 35.631325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486503, -0.774387, 0.404524,
		0.218679, -0.556206, -0.801757,
		0.845869, -0.301596, 0.439938,
		39.710072, 33.081223, 35.763306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056236, 32.560902, 35.379238>,  <39.117962, 33.292343, 35.455349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056236, 32.560902, 35.379238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326168, 32.607811, 35.670677>,  <39.488125, 32.635956, 35.845543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326168, 32.607811, 35.670677>,  <39.056236, 32.560902, 35.379238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326168, 32.607811, 35.670677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354556, -0.814362, 0.459462,
		0.647225, -0.568386, -0.507974,
		0.674826, 0.117270, 0.728599,
		39.528618, 32.642990, 35.889256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243572, 31.902777, 35.459797>,  <39.056236, 32.560902, 35.379238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243572, 31.902777, 35.459797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387505, 32.079514, 35.788502>,  <39.473862, 32.185555, 35.985725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387505, 32.079514, 35.788502>,  <39.243572, 31.902777, 35.459797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387505, 32.079514, 35.788502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374025, -0.738583, 0.560893,
		0.854769, -0.509185, -0.100502,
		0.359828, 0.441844, 0.821765,
		39.495453, 32.212067, 36.035030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385456, 31.348070, 35.820580>,  <39.243572, 31.902777, 35.459797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385456, 31.348070, 35.820580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353230, 31.653988, 36.076267>,  <39.333893, 31.837540, 36.229679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.353230, 31.653988, 36.076267>,  <39.385456, 31.348070, 35.820580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353230, 31.653988, 36.076267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454892, -0.598832, 0.659146,
		0.886895, -0.237669, 0.396145,
		-0.080566, 0.764796, 0.639215,
		39.329060, 31.883427, 36.268032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678120, 31.153908, 36.476452>,  <39.385456, 31.348070, 35.820580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678120, 31.153908, 36.476452> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413780, 31.438770, 36.571205>,  <39.255177, 31.609688, 36.628056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413780, 31.438770, 36.571205>,  <39.678120, 31.153908, 36.476452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413780, 31.438770, 36.571205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459131, -0.633281, 0.623020,
		0.593701, 0.302961, 0.745475,
		-0.660846, 0.712159, 0.236881,
		39.215527, 31.652418, 36.642269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427319, 30.914900, 37.041706>,  <39.678120, 31.153908, 36.476452>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427319, 30.914900, 37.041706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167007, 31.214312, 36.990818>,  <39.010818, 31.393959, 36.960285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167007, 31.214312, 36.990818>,  <39.427319, 30.914900, 37.041706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.167007, 31.214312, 36.990818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594474, -0.398098, 0.698655,
		0.472319, 0.530301, 0.704057,
		-0.650781, 0.748532, -0.127221,
		38.971775, 31.438871, 36.952652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305367, 31.261955, 37.708530>,  <39.427319, 30.914900, 37.041706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305367, 31.261955, 37.708530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976830, 31.350578, 37.498272>,  <38.779709, 31.403753, 37.372116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976830, 31.350578, 37.498272>,  <39.305367, 31.261955, 37.708530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976830, 31.350578, 37.498272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565301, -0.439485, 0.698060,
		-0.076352, 0.870497, 0.486217,
		-0.821344, 0.221560, -0.525648,
		38.730427, 31.417046, 37.340576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721684, 31.566217, 38.160931>,  <39.305367, 31.261955, 37.708530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721684, 31.566217, 38.160931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537720, 31.403574, 37.845169>,  <38.427341, 31.305988, 37.655712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537720, 31.403574, 37.845169>,  <38.721684, 31.566217, 38.160931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537720, 31.403574, 37.845169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587824, -0.526909, 0.613865,
		-0.665545, 0.746350, 0.003315,
		-0.459905, -0.406606, -0.789404,
		38.399750, 31.281591, 37.608349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063435, 31.607462, 38.276180>,  <38.721684, 31.566217, 38.160931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063435, 31.607462, 38.276180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096321, 31.300673, 38.021626>,  <38.116055, 31.116600, 37.868893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096321, 31.300673, 38.021626>,  <38.063435, 31.607462, 38.276180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096321, 31.300673, 38.021626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582238, -0.555213, 0.593917,
		-0.808851, 0.321702, -0.492207,
		0.082215, -0.766972, -0.636392,
		38.120987, 31.070581, 37.830708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340717, 31.384872, 38.135994>,  <38.063435, 31.607462, 38.276180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340717, 31.384872, 38.135994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571411, 31.070002, 38.048611>,  <37.709827, 30.881079, 37.996181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571411, 31.070002, 38.048611>,  <37.340717, 31.384872, 38.135994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571411, 31.070002, 38.048611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496832, -0.550253, 0.671104,
		-0.648485, -0.278514, -0.708447,
		0.576737, -0.787180, -0.218456,
		37.744431, 30.833847, 37.983074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854843, 30.788961, 38.038830>,  <37.340717, 31.384872, 38.135994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854843, 30.788961, 38.038830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224773, 30.657654, 38.115711>,  <37.446732, 30.578869, 38.161842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224773, 30.657654, 38.115711>,  <36.854843, 30.788961, 38.038830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224773, 30.657654, 38.115711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348991, -0.531147, 0.772068,
		-0.151356, -0.781104, -0.605779,
		0.924823, -0.328268, 0.192206,
		37.502220, 30.559174, 38.173374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652905, 30.145220, 38.249485>,  <36.854843, 30.788961, 38.038830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652905, 30.145220, 38.249485> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025158, 30.200642, 38.384972>,  <37.248508, 30.233894, 38.466263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025158, 30.200642, 38.384972>,  <36.652905, 30.145220, 38.249485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025158, 30.200642, 38.384972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213030, -0.547485, 0.809246,
		0.297567, -0.825266, -0.479990,
		0.930630, 0.138553, 0.338720,
		37.304348, 30.242207, 38.486588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638618, 29.620995, 37.630253>,  <36.652905, 30.145220, 38.249485>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638618, 29.620995, 37.630253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270245, 29.600636, 37.475704>,  <36.049221, 29.588419, 37.382973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270245, 29.600636, 37.475704>,  <36.638618, 29.620995, 37.630253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.270245, 29.600636, 37.475704> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317521, 0.476838, -0.819638,
		0.225957, -0.877516, -0.422976,
		-0.920936, -0.050899, -0.386375,
		35.993965, 29.585365, 37.359791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868656, 29.717392, 37.041992>,  <36.638618, 29.620995, 37.630253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868656, 29.717392, 37.041992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472851, 29.772341, 37.024128>,  <36.235367, 29.805309, 37.013409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472851, 29.772341, 37.024128>,  <36.868656, 29.717392, 37.041992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472851, 29.772341, 37.024128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114108, 0.553763, -0.824818,
		-0.088574, -0.821264, -0.563631,
		-0.989512, 0.137373, -0.044664,
		36.175999, 29.813553, 37.010727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578022, 29.377680, 36.386765>,  <36.868656, 29.717392, 37.041992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578022, 29.377680, 36.386765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300400, 29.650614, 36.478600>,  <36.133827, 29.814375, 36.533699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300400, 29.650614, 36.478600>,  <36.578022, 29.377680, 36.386765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.300400, 29.650614, 36.478600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124071, 0.427497, -0.895462,
		-0.709153, -0.593012, -0.381364,
		-0.694052, 0.682336, 0.229585,
		36.092186, 29.855314, 36.547474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266491, 29.459429, 35.790001>,  <36.578022, 29.377680, 36.386765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266491, 29.459429, 35.790001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183777, 29.793022, 35.994633>,  <36.134148, 29.993177, 36.117413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183777, 29.793022, 35.994633>,  <36.266491, 29.459429, 35.790001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183777, 29.793022, 35.994633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137405, 0.542455, -0.828772,
		-0.968690, -0.101081, -0.226763,
		-0.206782, 0.833981, 0.511582,
		36.121742, 30.043217, 36.148106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726101, 29.762938, 35.339417>,  <36.266491, 29.459429, 35.790001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726101, 29.762938, 35.339417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898331, 30.048536, 35.560257>,  <36.001667, 30.219894, 35.692760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898331, 30.048536, 35.560257>,  <35.726101, 29.762938, 35.339417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898331, 30.048536, 35.560257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045535, 0.628117, -0.776785,
		-0.901407, 0.309321, 0.302961,
		0.430571, 0.713995, 0.552104,
		36.027500, 30.262735, 35.725887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311165, 30.351799, 35.125763>,  <35.726101, 29.762938, 35.339417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311165, 30.351799, 35.125763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647873, 30.476292, 35.302197>,  <35.849899, 30.550987, 35.408058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647873, 30.476292, 35.302197>,  <35.311165, 30.351799, 35.125763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647873, 30.476292, 35.302197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053903, 0.764529, -0.642331,
		-0.537136, 0.564472, 0.626783,
		0.841772, 0.311234, 0.441083,
		35.900406, 30.569662, 35.434521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212036, 31.023294, 35.166332>,  <35.311165, 30.351799, 35.125763>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212036, 31.023294, 35.166332> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607182, 30.964256, 35.185669>,  <35.844269, 30.928833, 35.197269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607182, 30.964256, 35.185669>,  <35.212036, 31.023294, 35.166332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607182, 30.964256, 35.185669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134098, 0.653561, -0.744900,
		0.078349, 0.742344, 0.665422,
		0.987866, -0.147594, 0.048341,
		35.903542, 30.919977, 35.200172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450077, 31.657610, 34.937927>,  <35.212036, 31.023294, 35.166332>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450077, 31.657610, 34.937927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772942, 31.422663, 34.914307>,  <35.966660, 31.281694, 34.900135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772942, 31.422663, 34.914307>,  <35.450077, 31.657610, 34.937927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772942, 31.422663, 34.914307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355641, 0.563671, -0.745516,
		0.471177, 0.580752, 0.663866,
		0.807163, -0.587368, -0.059050,
		36.015091, 31.246452, 34.896591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960785, 32.071873, 34.905861>,  <35.450077, 31.657610, 34.937927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960785, 32.071873, 34.905861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088730, 31.731966, 34.738247>,  <36.165497, 31.528023, 34.637680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088730, 31.731966, 34.738247>,  <35.960785, 32.071873, 34.905861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088730, 31.731966, 34.738247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250677, 0.502406, -0.827496,
		0.913702, 0.159640, 0.373716,
		0.319859, -0.849767, -0.419031,
		36.184689, 31.477036, 34.612537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487698, 32.415112, 34.553581>,  <35.960785, 32.071873, 34.905861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487698, 32.415112, 34.553581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420807, 32.051872, 34.400013>,  <36.380672, 31.833929, 34.307873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420807, 32.051872, 34.400013>,  <36.487698, 32.415112, 34.553581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420807, 32.051872, 34.400013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085069, 0.374663, -0.923250,
		0.982241, -0.187055, 0.014595,
		-0.167231, -0.908096, -0.383922,
		36.370636, 31.779444, 34.284836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955997, 32.364998, 34.049732>,  <36.487698, 32.415112, 34.553581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.955997, 32.364998, 34.049732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691765, 32.080124, 33.954716>,  <36.533226, 31.909199, 33.897705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691765, 32.080124, 33.954716>,  <36.955997, 32.364998, 34.049732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691765, 32.080124, 33.954716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050823, 0.273260, -0.960597,
		0.749036, -0.646621, -0.144314,
		-0.660577, -0.712187, -0.237544,
		36.493591, 31.866468, 33.883453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270565, 31.983603, 33.399731>,  <36.955997, 32.364998, 34.049732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270565, 31.983603, 33.399731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872952, 31.950960, 33.428654>,  <36.634384, 31.931376, 33.446007>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872952, 31.950960, 33.428654>,  <37.270565, 31.983603, 33.399731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872952, 31.950960, 33.428654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089322, 0.229250, -0.969261,
		0.062520, -0.969941, -0.235172,
		-0.994039, -0.081604, 0.072304,
		36.574741, 31.926479, 33.450344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.911144, 26.916382, 39.909695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.600651, 27.163456, 39.859207>,  <34.414356, 27.311701, 39.828915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.600651, 27.163456, 39.859207>,  <34.911144, 26.916382, 39.909695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600651, 27.163456, 39.859207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250362, 0.118273, -0.960901,
		-0.578608, -0.777479, -0.246452,
		-0.776229, 0.617687, -0.126217,
		34.367783, 27.348763, 39.821342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584473, 26.672989, 39.231163>,  <34.911144, 26.916382, 39.909695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584473, 26.672989, 39.231163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.479958, 27.052698, 39.301140>,  <34.417248, 27.280523, 39.343124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.479958, 27.052698, 39.301140>,  <34.584473, 26.672989, 39.231163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479958, 27.052698, 39.301140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212082, 0.233268, -0.949003,
		-0.941673, -0.210864, -0.262275,
		-0.261291, 0.949275, 0.174942,
		34.401569, 27.337481, 39.353622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217087, 26.914837, 38.604275>,  <34.584473, 26.672989, 39.231163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217087, 26.914837, 38.604275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.337212, 27.243433, 38.798168>,  <34.409286, 27.440592, 38.914505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.337212, 27.243433, 38.798168>,  <34.217087, 26.914837, 38.604275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337212, 27.243433, 38.798168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293693, 0.403860, -0.866396,
		-0.907500, 0.402552, -0.119981,
		0.300314, 0.821492, 0.484730,
		34.427307, 27.489880, 38.943588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844093, 27.525597, 38.275894>,  <34.217087, 26.914837, 38.604275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844093, 27.525597, 38.275894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.173260, 27.679682, 38.442951>,  <34.370758, 27.772133, 38.543186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.173260, 27.679682, 38.442951>,  <33.844093, 27.525597, 38.275894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173260, 27.679682, 38.442951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273652, 0.375467, -0.885516,
		-0.497923, 0.842992, 0.203562,
		0.822914, 0.385214, 0.417640,
		34.420135, 27.795246, 38.568245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931805, 28.156931, 37.880379>,  <33.844093, 27.525597, 38.275894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931805, 28.156931, 37.880379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.282196, 28.150980, 38.073227>,  <34.492432, 28.147409, 38.188934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.282196, 28.150980, 38.073227>,  <33.931805, 28.156931, 37.880379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282196, 28.150980, 38.073227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367299, 0.668461, -0.646724,
		-0.312656, 0.743599, 0.591022,
		0.875978, -0.014879, 0.482121,
		34.544991, 28.146517, 38.217865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187962, 28.790913, 37.921371>,  <33.931805, 28.156931, 37.880379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187962, 28.790913, 37.921371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.516861, 28.573643, 37.989326>,  <34.714203, 28.443281, 38.030098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.516861, 28.573643, 37.989326>,  <34.187962, 28.790913, 37.921371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516861, 28.573643, 37.989326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486604, 0.516169, -0.704830,
		0.295157, 0.662216, 0.688733,
		0.822252, -0.543176, 0.169886,
		34.763538, 28.410690, 38.040291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706345, 29.301109, 38.214466>,  <34.187962, 28.790913, 37.921371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706345, 29.301109, 38.214466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.936684, 28.999531, 38.087997>,  <35.074886, 28.818583, 38.012115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.936684, 28.999531, 38.087997>,  <34.706345, 29.301109, 38.214466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936684, 28.999531, 38.087997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665965, 0.656896, -0.353522,
		0.474230, -0.006986, 0.880373,
		0.575844, -0.753949, -0.316172,
		35.109436, 28.773346, 37.993145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363876, 29.382780, 38.496872>,  <34.706345, 29.301109, 38.214466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363876, 29.382780, 38.496872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437458, 29.174517, 38.163387>,  <35.481609, 29.049559, 37.963295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437458, 29.174517, 38.163387>,  <35.363876, 29.382780, 38.496872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437458, 29.174517, 38.163387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567074, 0.749016, -0.342639,
		0.802861, -0.409745, 0.433040,
		0.183959, -0.520657, -0.833712,
		35.492645, 29.018320, 37.913273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130035, 29.493185, 38.317345>,  <35.363876, 29.382780, 38.496872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130035, 29.493185, 38.317345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.912834, 29.403740, 37.993580>,  <35.782513, 29.350073, 37.799320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.912834, 29.403740, 37.993580>,  <36.130035, 29.493185, 38.317345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912834, 29.403740, 37.993580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516749, 0.670790, -0.531988,
		0.661899, -0.707135, -0.248696,
		-0.543010, -0.223609, -0.809407,
		35.749931, 29.336657, 37.750759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845547, 29.506582, 38.555386>,  <36.130035, 29.493185, 38.317345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845547, 29.506582, 38.555386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.137169, 29.739849, 38.698715>,  <37.312141, 29.879808, 38.784714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.137169, 29.739849, 38.698715>,  <36.845547, 29.506582, 38.555386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137169, 29.739849, 38.698715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035060, -0.491015, 0.870445,
		0.683558, -0.647164, -0.337531,
		0.729053, 0.583166, 0.358327,
		37.355885, 29.914799, 38.806213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366322, 29.017740, 39.027744>,  <36.845547, 29.506582, 38.555386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366322, 29.017740, 39.027744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388844, 29.404726, 39.126411>,  <37.402359, 29.636917, 39.185612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.388844, 29.404726, 39.126411>,  <37.366322, 29.017740, 39.027744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388844, 29.404726, 39.126411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148725, -0.236172, 0.960262,
		0.987274, -0.090754, 0.130588,
		0.056307, 0.967464, 0.246664,
		37.405735, 29.694965, 39.200409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704685, 28.952375, 39.564430>,  <37.366322, 29.017740, 39.027744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704685, 28.952375, 39.564430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.549324, 29.318142, 39.610016>,  <37.456108, 29.537601, 39.637367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.549324, 29.318142, 39.610016>,  <37.704685, 28.952375, 39.564430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549324, 29.318142, 39.610016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120128, -0.172864, 0.977593,
		0.913627, 0.366007, 0.176988,
		-0.388401, 0.914416, 0.113965,
		37.432804, 29.592466, 39.644207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043697, 29.228638, 40.147682>,  <37.704685, 28.952375, 39.564430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043697, 29.228638, 40.147682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710796, 29.450180, 40.137882>,  <37.511055, 29.583105, 40.132004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.710796, 29.450180, 40.137882>,  <38.043697, 29.228638, 40.147682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710796, 29.450180, 40.137882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135119, -0.159779, 0.977862,
		0.537681, 0.817137, 0.207812,
		-0.832251, 0.553857, -0.024501,
		37.461121, 29.616337, 40.130531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109512, 29.592033, 40.764118>,  <38.043697, 29.228638, 40.147682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109512, 29.592033, 40.764118> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732613, 29.563831, 40.633152>,  <37.506474, 29.546909, 40.554573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.732613, 29.563831, 40.633152>,  <38.109512, 29.592033, 40.764118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732613, 29.563831, 40.633152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298140, -0.268804, 0.915891,
		-0.152586, 0.960611, 0.232259,
		-0.942247, -0.070506, -0.327413,
		37.449940, 29.542679, 40.534927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829330, 30.020601, 41.219261>,  <38.109512, 29.592033, 40.764118>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829330, 30.020601, 41.219261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527550, 29.808914, 41.063965>,  <37.346481, 29.681902, 40.970787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527550, 29.808914, 41.063965>,  <37.829330, 30.020601, 41.219261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527550, 29.808914, 41.063965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371169, -0.143847, 0.917356,
		-0.541327, 0.836205, -0.087903,
		-0.754453, -0.529217, -0.388241,
		37.301212, 29.650148, 40.947491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296009, 30.132277, 41.693562>,  <37.829330, 30.020601, 41.219261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296009, 30.132277, 41.693562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.163174, 29.817816, 41.485069>,  <37.083473, 29.629139, 41.359974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.163174, 29.817816, 41.485069>,  <37.296009, 30.132277, 41.693562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163174, 29.817816, 41.485069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456380, -0.349685, 0.818192,
		-0.825489, 0.509593, -0.242657,
		-0.332092, -0.786152, -0.521229,
		37.063545, 29.581970, 41.328701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520256, 30.083895, 41.828110>,  <37.296009, 30.132277, 41.693562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520256, 30.083895, 41.828110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670727, 29.736235, 41.699692>,  <36.761009, 29.527639, 41.622639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.670727, 29.736235, 41.699692>,  <36.520256, 30.083895, 41.828110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670727, 29.736235, 41.699692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558324, -0.489160, 0.670072,
		-0.739436, -0.072817, -0.669277,
		0.376176, -0.869149, -0.321047,
		36.783581, 29.475491, 41.603378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994087, 29.796894, 41.643787>,  <36.520256, 30.083895, 41.828110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994087, 29.796894, 41.643787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.237671, 29.496193, 41.745010>,  <36.383820, 29.315771, 41.805744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.237671, 29.496193, 41.745010>,  <35.994087, 29.796894, 41.643787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237671, 29.496193, 41.745010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707162, -0.370018, 0.602502,
		-0.359286, -0.545864, -0.756932,
		0.608963, -0.751744, 0.253072,
		36.420357, 29.270666, 41.820927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505878, 29.286932, 41.823002>,  <35.994087, 29.796894, 41.643787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505878, 29.286932, 41.823002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.856518, 29.174940, 41.979557>,  <36.066902, 29.107744, 42.073490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.856518, 29.174940, 41.979557>,  <35.505878, 29.286932, 41.823002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856518, 29.174940, 41.979557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479946, -0.449481, 0.753405,
		-0.035015, -0.848280, -0.528390,
		0.876599, -0.279979, 0.391389,
		36.119499, 29.090946, 42.096973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437561, 28.600000, 42.050617>,  <35.505878, 29.286932, 41.823002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437561, 28.600000, 42.050617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.751686, 28.742943, 42.252838>,  <35.940159, 28.828709, 42.374172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.751686, 28.742943, 42.252838>,  <35.437561, 28.600000, 42.050617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751686, 28.742943, 42.252838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343070, -0.428566, 0.835843,
		0.515357, -0.829837, -0.213958,
		0.785309, 0.357355, 0.505557,
		35.987278, 28.850149, 42.404507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649063, 28.055502, 42.484993>,  <35.437561, 28.600000, 42.050617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649063, 28.055502, 42.484993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.830498, 28.365824, 42.660442>,  <35.939358, 28.552017, 42.765713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.830498, 28.365824, 42.660442>,  <35.649063, 28.055502, 42.484993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830498, 28.365824, 42.660442> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177707, -0.403552, 0.897533,
		0.873317, -0.485053, -0.045178,
		0.453583, 0.775803, 0.438626,
		35.966572, 28.598564, 42.792030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033508, 27.733480, 42.980129>,  <35.649063, 28.055502, 42.484993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033508, 27.733480, 42.980129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975967, 28.118412, 43.072418>,  <35.941444, 28.349371, 43.127792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975967, 28.118412, 43.072418>,  <36.033508, 27.733480, 42.980129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975967, 28.118412, 43.072418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369359, -0.268513, 0.889649,
		0.918085, 0.042758, 0.394070,
		-0.143853, 0.962327, 0.230724,
		35.932812, 28.407110, 43.141636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303429, 27.777136, 43.660233>,  <36.033508, 27.733480, 42.980129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303429, 27.777136, 43.660233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.052330, 28.080391, 43.589630>,  <35.901669, 28.262344, 43.547268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.052330, 28.080391, 43.589630>,  <36.303429, 27.777136, 43.660233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.052330, 28.080391, 43.589630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468820, -0.187218, 0.863225,
		0.621399, 0.624640, 0.472957,
		-0.627751, 0.758139, -0.176507,
		35.864006, 28.307833, 43.536678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.204849, 31.736546, 41.108208> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.463516, 31.436674, 41.051918>,  <28.618715, 31.256750, 41.018147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.463516, 31.436674, 41.051918>,  <28.204849, 31.736546, 41.108208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463516, 31.436674, 41.051918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619219, 0.623680, -0.477064,
		0.445410, 0.221364, 0.867530,
		0.646666, -0.749680, -0.140721,
		28.657516, 31.211769, 41.009701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767902, 32.134197, 41.310333>,  <28.204849, 31.736546, 41.108208>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767902, 32.134197, 41.310333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.884716, 31.813574, 41.101631>,  <28.954803, 31.621201, 40.976410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.884716, 31.813574, 41.101631>,  <28.767902, 32.134197, 41.310333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884716, 31.813574, 41.101631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591305, 0.580095, -0.560221,
		0.751714, -0.144910, 0.643371,
		0.292035, -0.801555, -0.521752,
		28.972326, 31.573107, 40.945107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.517813, 32.132195, 41.278896>,  <28.767902, 32.134197, 41.310333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.517813, 32.132195, 41.278896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.387625, 31.927465, 40.960876>,  <29.309511, 31.804628, 40.770065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.387625, 31.927465, 40.960876>,  <29.517813, 32.132195, 41.278896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.387625, 31.927465, 40.960876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620135, 0.519200, -0.588101,
		0.713794, -0.684450, 0.148413,
		-0.325470, -0.511819, -0.795054,
		29.289984, 31.773920, 40.722359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042477, 31.776794, 40.941994>,  <29.517813, 32.132195, 41.278896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042477, 31.776794, 40.941994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.785004, 31.782120, 40.635921>,  <29.630520, 31.785315, 40.452278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.785004, 31.782120, 40.635921>,  <30.042477, 31.776794, 40.941994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785004, 31.782120, 40.635921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701545, 0.409776, -0.583025,
		0.305791, -0.912089, -0.273103,
		-0.643682, 0.013311, -0.765178,
		29.591900, 31.786114, 40.406368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.355083, 31.487833, 40.363834>,  <30.042477, 31.776794, 40.941994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.355083, 31.487833, 40.363834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.072409, 31.706062, 40.183636>,  <29.902803, 31.837000, 40.075516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.072409, 31.706062, 40.183636>,  <30.355083, 31.487833, 40.363834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072409, 31.706062, 40.183636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611450, 0.150579, -0.776823,
		-0.355979, -0.824425, -0.440002,
		-0.706688, 0.545573, -0.450492,
		29.860403, 31.869734, 40.048489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424313, 31.358658, 39.691189>,  <30.355083, 31.487833, 40.363834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424313, 31.358658, 39.691189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.202459, 31.691469, 39.686962>,  <30.069347, 31.891155, 39.684425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.202459, 31.691469, 39.686962>,  <30.424313, 31.358658, 39.691189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.202459, 31.691469, 39.686962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415871, 0.266183, -0.869597,
		-0.720716, -0.486701, -0.493650,
		-0.554635, 0.832026, -0.010562,
		30.036068, 31.941076, 39.683792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598789, 31.486425, 39.002499>,  <30.424313, 31.358658, 39.691189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598789, 31.486425, 39.002499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.411646, 31.819702, 39.120411>,  <30.299360, 32.019669, 39.191158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.411646, 31.819702, 39.120411>,  <30.598789, 31.486425, 39.002499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411646, 31.819702, 39.120411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486833, 0.521332, -0.700861,
		-0.737631, -0.184396, -0.649537,
		-0.467860, 0.833193, 0.294780,
		30.271288, 32.069660, 39.208843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219278, 31.873840, 38.380081>,  <30.598789, 31.486425, 39.002499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219278, 31.873840, 38.380081> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.313368, 32.123013, 38.678513>,  <30.369822, 32.272514, 38.857571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.313368, 32.123013, 38.678513>,  <30.219278, 31.873840, 38.380081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313368, 32.123013, 38.678513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348740, 0.662405, -0.663024,
		-0.907221, 0.416145, -0.061427,
		0.235225, 0.622931, 0.746074,
		30.383936, 32.309891, 38.902336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951759, 32.588402, 38.203400>,  <30.219278, 31.873840, 38.380081>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951759, 32.588402, 38.203400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.236647, 32.677246, 38.469757>,  <30.407579, 32.730553, 38.629570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.236647, 32.677246, 38.469757>,  <29.951759, 32.588402, 38.203400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236647, 32.677246, 38.469757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363881, 0.694392, -0.620815,
		-0.600278, 0.684461, 0.413738,
		0.712220, 0.222110, 0.665890,
		30.450314, 32.743877, 38.669525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036743, 33.310055, 38.217964>,  <29.951759, 32.588402, 38.203400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036743, 33.310055, 38.217964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.392166, 33.217560, 38.376453>,  <30.605419, 33.162064, 38.471546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.392166, 33.217560, 38.376453>,  <30.036743, 33.310055, 38.217964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392166, 33.217560, 38.376453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432456, 0.710474, -0.555166,
		-0.153133, 0.664647, 0.731297,
		0.888556, -0.231239, 0.396227,
		30.658733, 33.148190, 38.495323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390842, 33.927681, 38.242126>,  <30.036743, 33.310055, 38.217964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390842, 33.927681, 38.242126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.688845, 33.661510, 38.260799>,  <30.867645, 33.501808, 38.272003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.688845, 33.661510, 38.260799>,  <30.390842, 33.927681, 38.242126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688845, 33.661510, 38.260799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600858, 0.639022, -0.480230,
		0.289723, 0.385825, 0.875899,
		0.745004, -0.665424, 0.046687,
		30.912346, 33.461884, 38.274807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943939, 34.259098, 38.146214>,  <30.390842, 33.927681, 38.242126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943939, 34.259098, 38.146214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.129204, 33.907993, 38.097202>,  <31.240362, 33.697330, 38.067795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.129204, 33.907993, 38.097202>,  <30.943939, 34.259098, 38.146214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129204, 33.907993, 38.097202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620063, 0.419709, -0.662847,
		0.633247, 0.231033, 0.738662,
		0.463163, -0.877763, -0.122524,
		31.268152, 33.644665, 38.060444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729887, 34.328510, 38.303661>,  <30.943939, 34.259098, 38.146214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729887, 34.328510, 38.303661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.665380, 34.021336, 38.055706>,  <31.626677, 33.837032, 37.906933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.665380, 34.021336, 38.055706>,  <31.729887, 34.328510, 38.303661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665380, 34.021336, 38.055706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624629, 0.406878, -0.666550,
		0.764089, -0.494695, 0.414059,
		-0.161267, -0.767937, -0.619892,
		31.617001, 33.790955, 37.869740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372555, 34.187752, 38.085178>,  <31.729887, 34.328510, 38.303661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372555, 34.187752, 38.085178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.125050, 34.037888, 37.808987>,  <31.976545, 33.947968, 37.643272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.125050, 34.037888, 37.808987>,  <32.372555, 34.187752, 38.085178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125050, 34.037888, 37.808987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472279, 0.524952, -0.708080,
		0.627759, -0.764232, -0.147876,
		-0.618765, -0.374665, -0.690475,
		31.939421, 33.925488, 37.601845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107777, 34.031208, 38.336781>,  <32.372555, 34.187752, 38.085178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107777, 34.031208, 38.336781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.280315, 34.311726, 38.563805>,  <33.383839, 34.480034, 38.700020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.280315, 34.311726, 38.563805>,  <33.107777, 34.031208, 38.336781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280315, 34.311726, 38.563805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313249, -0.473542, 0.823184,
		0.846058, -0.532868, 0.015417,
		0.431348, 0.701291, 0.567565,
		33.409721, 34.522114, 38.734074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341881, 33.675335, 38.907482>,  <33.107777, 34.031208, 38.336781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341881, 33.675335, 38.907482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291534, 34.054970, 39.022991>,  <33.261326, 34.282749, 39.092297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.291534, 34.054970, 39.022991>,  <33.341881, 33.675335, 38.907482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291534, 34.054970, 39.022991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368541, -0.314991, 0.874619,
		0.921051, 0.003661, 0.389425,
		-0.125868, 0.949088, 0.288773,
		33.253773, 34.339695, 39.109623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555290, 33.725723, 39.657566>,  <33.341881, 33.675335, 38.907482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555290, 33.725723, 39.657566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.363110, 34.071053, 39.595818>,  <33.247803, 34.278252, 39.558769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.363110, 34.071053, 39.595818>,  <33.555290, 33.725723, 39.657566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363110, 34.071053, 39.595818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258289, 0.028924, 0.965634,
		0.838124, 0.503814, 0.209092,
		-0.480452, 0.863328, -0.154371,
		33.218975, 34.330051, 39.549507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678925, 34.136887, 40.250477>,  <33.555290, 33.725723, 39.657566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678925, 34.136887, 40.250477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340683, 34.287212, 40.098843>,  <33.137737, 34.377407, 40.007862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340683, 34.287212, 40.098843>,  <33.678925, 34.136887, 40.250477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340683, 34.287212, 40.098843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457256, -0.143532, 0.877676,
		0.275434, 0.915511, 0.293217,
		-0.845608, 0.375817, -0.379089,
		33.087002, 34.399956, 39.985115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551037, 34.583908, 40.681725>,  <33.678925, 34.136887, 40.250477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551037, 34.583908, 40.681725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202061, 34.490765, 40.509850>,  <32.992676, 34.434879, 40.406727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202061, 34.490765, 40.509850>,  <33.551037, 34.583908, 40.681725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202061, 34.490765, 40.509850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332923, -0.360486, 0.871328,
		-0.357794, 0.903231, 0.236977,
		-0.872437, -0.232860, -0.429686,
		32.940331, 34.420906, 40.380943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945862, 34.782532, 41.112297>,  <33.551037, 34.583908, 40.681725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945862, 34.782532, 41.112297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.794941, 34.528316, 40.842857>,  <32.704388, 34.375790, 40.681194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.794941, 34.528316, 40.842857>,  <32.945862, 34.782532, 41.112297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794941, 34.528316, 40.842857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514472, -0.460959, 0.723074,
		-0.770041, 0.619366, -0.153044,
		-0.377301, -0.635533, -0.673603,
		32.681751, 34.337658, 40.640778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337101, 34.739689, 41.326660>,  <32.945862, 34.782532, 41.112297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337101, 34.739689, 41.326660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.357830, 34.404652, 41.109127>,  <32.370270, 34.203629, 40.978607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.357830, 34.404652, 41.109127>,  <32.337101, 34.739689, 41.326660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357830, 34.404652, 41.109127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656142, -0.439092, 0.613739,
		-0.752856, 0.325026, -0.572334,
		0.051827, -0.837590, -0.543836,
		32.373379, 34.153374, 40.945976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613251, 34.365108, 41.310577>,  <32.337101, 34.739689, 41.326660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613251, 34.365108, 41.310577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875242, 34.082813, 41.202549>,  <32.032436, 33.913437, 41.137733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875242, 34.082813, 41.202549>,  <31.613251, 34.365108, 41.310577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875242, 34.082813, 41.202549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466247, -0.658695, 0.590537,
		-0.594656, -0.260873, -0.760480,
		0.654980, -0.705738, -0.270066,
		32.071735, 33.871090, 41.121529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140678, 33.788963, 41.241814>,  <31.613251, 34.365108, 41.310577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140678, 33.788963, 41.241814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.509075, 33.637840, 41.279835>,  <31.730114, 33.547169, 41.302647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.509075, 33.637840, 41.279835>,  <31.140678, 33.788963, 41.241814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509075, 33.637840, 41.279835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371200, -0.776977, 0.508446,
		-0.118243, -0.503557, -0.855832,
		0.920994, -0.377805, 0.095049,
		31.785374, 33.524498, 41.308350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075861, 33.111336, 41.078648>,  <31.140678, 33.788963, 41.241814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075861, 33.111336, 41.078648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405113, 33.147987, 41.302811>,  <31.602665, 33.169979, 41.437309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405113, 33.147987, 41.302811>,  <31.075861, 33.111336, 41.078648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405113, 33.147987, 41.302811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226376, -0.852132, 0.471832,
		0.520780, -0.515242, -0.680671,
		0.823130, 0.091633, 0.560412,
		31.652052, 33.175476, 41.470936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192036, 32.427891, 41.123814>,  <31.075861, 33.111336, 41.078648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192036, 32.427891, 41.123814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.443321, 32.583885, 41.393112>,  <31.594093, 32.677483, 41.554691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.443321, 32.583885, 41.393112>,  <31.192036, 32.427891, 41.123814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443321, 32.583885, 41.393112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183113, -0.766892, 0.615099,
		0.756184, -0.509695, -0.410362,
		0.628216, 0.389985, 0.673243,
		31.631786, 32.700882, 41.595085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584887, 31.800926, 41.373096>,  <31.192036, 32.427891, 41.123814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584887, 31.800926, 41.373096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.623407, 32.090820, 41.646004>,  <31.646519, 32.264755, 41.809746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.623407, 32.090820, 41.646004>,  <31.584887, 31.800926, 41.373096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623407, 32.090820, 41.646004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185770, -0.660318, 0.727646,
		0.977863, -0.196817, 0.071045,
		0.096301, 0.724736, 0.682263,
		31.652298, 32.308243, 41.850681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113529, 31.588255, 41.909031>,  <31.584887, 31.800926, 41.373096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113529, 31.588255, 41.909031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.855915, 31.838457, 42.085194>,  <31.701347, 31.988579, 42.190891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.855915, 31.838457, 42.085194>,  <32.113529, 31.588255, 41.909031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855915, 31.838457, 42.085194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144401, -0.664756, 0.732972,
		0.751244, 0.408464, 0.518449,
		-0.644035, 0.625505, 0.440411,
		31.662704, 32.026108, 42.217316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265659, 31.409645, 42.598045>,  <32.113529, 31.588255, 41.909031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265659, 31.409645, 42.598045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921719, 31.613220, 42.614246>,  <31.715355, 31.735365, 42.623966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.921719, 31.613220, 42.614246>,  <32.265659, 31.409645, 42.598045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921719, 31.613220, 42.614246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290170, -0.552428, 0.781425,
		0.420072, 0.660155, 0.622684,
		-0.859849, 0.508939, 0.040502,
		31.663763, 31.765902, 42.626396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894592, 31.632927, 43.212566>,  <32.265659, 31.409645, 42.598045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894592, 31.632927, 43.212566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.174641, 31.357214, 43.287109>,  <33.342670, 31.191786, 43.331833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.174641, 31.357214, 43.287109>,  <32.894592, 31.632927, 43.212566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174641, 31.357214, 43.287109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548963, 0.352720, -0.757779,
		0.456591, 0.632836, 0.625334,
		0.700118, -0.689280, 0.186355,
		33.384674, 31.150431, 43.343018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540508, 31.978226, 43.348755>,  <32.894592, 31.632927, 43.212566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540508, 31.978226, 43.348755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.633801, 31.604509, 43.240898>,  <33.689777, 31.380280, 43.176186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.633801, 31.604509, 43.240898>,  <33.540508, 31.978226, 43.348755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633801, 31.604509, 43.240898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593276, 0.356418, -0.721796,
		0.770472, 0.008375, 0.637419,
		0.233232, -0.934289, -0.269642,
		33.703770, 31.324223, 43.160007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242031, 32.042141, 43.225307>,  <33.540508, 31.978226, 43.348755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242031, 32.042141, 43.225307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.134312, 31.718958, 43.015667>,  <34.069679, 31.525047, 42.889885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.134312, 31.718958, 43.015667>,  <34.242031, 32.042141, 43.225307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134312, 31.718958, 43.015667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546314, 0.320005, -0.774040,
		0.793106, -0.494773, 0.355221,
		-0.269301, -0.807959, -0.524099,
		34.053520, 31.476570, 42.858437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834717, 31.775230, 43.118244>,  <34.242031, 32.042141, 43.225307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834717, 31.775230, 43.118244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574059, 31.637878, 42.847706>,  <34.417664, 31.555468, 42.685383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574059, 31.637878, 42.847706>,  <34.834717, 31.775230, 43.118244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574059, 31.637878, 42.847706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583976, 0.341919, -0.736249,
		0.484070, -0.874745, -0.022284,
		-0.651650, -0.343383, -0.676344,
		34.378563, 31.534864, 42.644802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197536, 31.334843, 42.666122>,  <34.834717, 31.775230, 43.118244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197536, 31.334843, 42.666122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862801, 31.438450, 42.473202>,  <34.661961, 31.500614, 42.357449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862801, 31.438450, 42.473202>,  <35.197536, 31.334843, 42.666122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862801, 31.438450, 42.473202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546538, 0.446155, -0.708691,
		0.031615, -0.856653, -0.514923,
		-0.836838, 0.259019, -0.482299,
		34.611748, 31.516155, 42.328510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361332, 31.245335, 41.876545>,  <35.197536, 31.334843, 42.666122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361332, 31.245335, 41.876545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.025040, 31.460129, 41.904320>,  <34.823265, 31.589005, 41.920986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.025040, 31.460129, 41.904320>,  <35.361332, 31.245335, 41.876545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025040, 31.460129, 41.904320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342826, 0.627180, -0.699369,
		-0.419099, -0.564175, -0.711381,
		-0.840729, 0.536985, 0.069437,
		34.772820, 31.621223, 41.925152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211353, 31.190205, 41.181786>,  <35.361332, 31.245335, 41.876545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211353, 31.190205, 41.181786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.052284, 31.515266, 41.352173>,  <34.956841, 31.710304, 41.454403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.052284, 31.515266, 41.352173>,  <35.211353, 31.190205, 41.181786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052284, 31.515266, 41.352173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173649, 0.522526, -0.834753,
		-0.900944, -0.257992, -0.348912,
		-0.397676, 0.812654, 0.425966,
		34.932983, 31.759062, 41.479961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859928, 31.475315, 40.674980>,  <35.211353, 31.190205, 41.181786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859928, 31.475315, 40.674980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898857, 31.779972, 40.931240>,  <34.922215, 31.962767, 41.084995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.898857, 31.779972, 40.931240>,  <34.859928, 31.475315, 40.674980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898857, 31.779972, 40.931240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399763, 0.559576, -0.725992,
		-0.911437, 0.326761, -0.250019,
		0.097321, 0.761644, 0.640645,
		34.928055, 32.008465, 41.123432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615139, 32.105461, 40.333443>,  <34.859928, 31.475315, 40.674980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615139, 32.105461, 40.333443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.846855, 32.222775, 40.637653>,  <34.985886, 32.293163, 40.820179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.846855, 32.222775, 40.637653>,  <34.615139, 32.105461, 40.333443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846855, 32.222775, 40.637653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511680, 0.595455, -0.619368,
		-0.634512, 0.747943, 0.194874,
		0.579291, 0.293283, 0.760531,
		35.020641, 32.310760, 40.865814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629631, 32.870098, 40.243702>,  <34.615139, 32.105461, 40.333443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629631, 32.870098, 40.243702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.949280, 32.780537, 40.466866>,  <35.141071, 32.726799, 40.600765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.949280, 32.780537, 40.466866>,  <34.629631, 32.870098, 40.243702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949280, 32.780537, 40.466866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510682, 0.742480, -0.433507,
		-0.317176, 0.631342, 0.707677,
		0.799127, -0.223900, 0.557912,
		35.189018, 32.713367, 40.634239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951965, 33.436497, 40.525738>,  <34.629631, 32.870098, 40.243702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951965, 33.436497, 40.525738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.249828, 33.170311, 40.505165>,  <35.428547, 33.010601, 40.492821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.249828, 33.170311, 40.505165>,  <34.951965, 33.436497, 40.525738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249828, 33.170311, 40.505165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544384, 0.650137, -0.530063,
		0.386173, 0.366718, 0.846397,
		0.744658, -0.665461, -0.051430,
		35.473225, 32.970673, 40.489735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515167, 33.880104, 40.464901>,  <34.951965, 33.436497, 40.525738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515167, 33.880104, 40.464901> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.685398, 33.526524, 40.387424>,  <35.787537, 33.314377, 40.340939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.685398, 33.526524, 40.387424>,  <35.515167, 33.880104, 40.464901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685398, 33.526524, 40.387424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699854, 0.457192, -0.548799,
		0.573665, 0.098001, 0.813206,
		0.425574, -0.883952, -0.193689,
		35.813072, 33.261337, 40.329319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238712, 33.997776, 40.614613>,  <35.515167, 33.880104, 40.464901>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238712, 33.997776, 40.614613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193329, 33.673149, 40.385357>,  <36.166100, 33.478374, 40.247803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.193329, 33.673149, 40.385357>,  <36.238712, 33.997776, 40.614613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193329, 33.673149, 40.385357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724837, 0.326919, -0.606412,
		0.679513, -0.484237, 0.551160,
		-0.113462, -0.811566, -0.573138,
		36.159290, 33.429680, 40.213417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859009, 33.843460, 40.495781>,  <36.238712, 33.997776, 40.614613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859009, 33.843460, 40.495781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688129, 33.627934, 40.205353>,  <36.585602, 33.498619, 40.031094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688129, 33.627934, 40.205353>,  <36.859009, 33.843460, 40.495781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688129, 33.627934, 40.205353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837021, 0.067996, -0.542930,
		0.341908, -0.839676, 0.421951,
		-0.427194, -0.538814, -0.726075,
		36.559971, 33.466290, 39.987530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.670486, 26.409204, 33.453289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.729229, 26.040243, 33.310402>,  <26.764475, 25.818867, 33.224670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.729229, 26.040243, 33.310402>,  <26.670486, 26.409204, 33.453289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729229, 26.040243, 33.310402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978502, -0.188336, 0.084042,
		-0.144797, 0.337193, -0.930234,
		0.146858, -0.922404, -0.357215,
		26.773287, 25.763521, 33.203236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090771, 27.016178, 33.424271>,  <26.670486, 26.409204, 33.453289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090771, 27.016178, 33.424271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934563, 27.041115, 33.791664>,  <26.840837, 27.056078, 34.012100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.934563, 27.041115, 33.791664>,  <27.090771, 27.016178, 33.424271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934563, 27.041115, 33.791664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373154, 0.901348, -0.219839,
		-0.841576, -0.428586, -0.328732,
		-0.390521, 0.062343, 0.918480,
		26.817406, 27.059818, 34.067207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367914, 27.223307, 33.481491>,  <27.090771, 27.016178, 33.424271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367914, 27.223307, 33.481491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.513380, 27.309525, 33.843990>,  <26.600658, 27.361256, 34.061489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.513380, 27.309525, 33.843990>,  <26.367914, 27.223307, 33.481491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.513380, 27.309525, 33.843990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378396, 0.923163, -0.067723,
		-0.851214, -0.318293, 0.417282,
		0.363663, 0.215545, 0.906250,
		26.622478, 27.374187, 34.115864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815893, 27.512535, 33.880249>,  <26.367914, 27.223307, 33.481491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815893, 27.512535, 33.880249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.146126, 27.648323, 34.060547>,  <26.344265, 27.729795, 34.168728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.146126, 27.648323, 34.060547>,  <25.815893, 27.512535, 33.880249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146126, 27.648323, 34.060547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417122, 0.905114, 0.082328,
		-0.380032, -0.255986, 0.888846,
		0.825582, 0.339469, 0.450749,
		26.393801, 27.750164, 34.195770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575153, 28.006250, 34.471371>,  <25.815893, 27.512535, 33.880249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575153, 28.006250, 34.471371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.957773, 28.085684, 34.385979>,  <26.187346, 28.133345, 34.334743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.957773, 28.085684, 34.385979>,  <25.575153, 28.006250, 34.471371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957773, 28.085684, 34.385979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146678, 0.960545, 0.236300,
		0.251979, -0.194721, 0.947940,
		0.956552, 0.198585, -0.213476,
		26.244740, 28.145260, 34.321938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.644623, 28.567148, 34.883484>,  <25.575153, 28.006250, 34.471371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.644623, 28.567148, 34.883484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.957468, 28.578579, 34.634491>,  <26.145176, 28.585438, 34.485096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.957468, 28.578579, 34.634491>,  <25.644623, 28.567148, 34.883484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.957468, 28.578579, 34.634491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060792, 0.990683, 0.121865,
		0.620163, -0.133154, 0.773090,
		0.782114, 0.028578, -0.622480,
		26.192102, 28.587152, 34.447746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227026, 28.995594, 35.217461>,  <25.644623, 28.567148, 34.883484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.227026, 28.995594, 35.217461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.254667, 28.986265, 34.818527>,  <26.271252, 28.980669, 34.579166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.254667, 28.986265, 34.818527>,  <26.227026, 28.995594, 35.217461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.254667, 28.986265, 34.818527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030941, 0.999196, -0.025507,
		0.997129, 0.032621, 0.068325,
		0.069102, -0.023320, -0.997337,
		26.275398, 28.979269, 34.519325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705173, 29.533686, 35.082966>,  <26.227026, 28.995594, 35.217461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705173, 29.533686, 35.082966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.519272, 29.483673, 34.732338>,  <26.407730, 29.453667, 34.521961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.519272, 29.483673, 34.732338>,  <26.705173, 29.533686, 35.082966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.519272, 29.483673, 34.732338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026672, 0.987554, -0.155002,
		0.885037, -0.095418, -0.455637,
		-0.464756, -0.125030, -0.876567,
		26.379845, 29.446163, 34.469368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127426, 29.919552, 34.595379>,  <26.705173, 29.533686, 35.082966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127426, 29.919552, 34.595379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.786428, 29.853815, 34.396885>,  <26.581831, 29.814373, 34.277790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.786428, 29.853815, 34.396885>,  <27.127426, 29.919552, 34.595379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786428, 29.853815, 34.396885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054819, 0.972168, -0.227783,
		0.519858, -0.166980, -0.837774,
		-0.852492, -0.164341, -0.496235,
		26.530682, 29.804512, 34.248013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.270548, 30.063303, 33.845966>,  <27.127426, 29.919552, 34.595379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.270548, 30.063303, 33.845966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.888350, 30.119213, 33.949883>,  <26.659031, 30.152760, 34.012230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.888350, 30.119213, 33.949883>,  <27.270548, 30.063303, 33.845966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888350, 30.119213, 33.949883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046956, 0.941462, -0.333834,
		-0.291240, -0.306779, -0.906127,
		-0.955497, 0.139774, 0.259786,
		26.601700, 30.161146, 34.027817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989964, 30.462929, 33.235191>,  <27.270548, 30.063303, 33.845966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989964, 30.462929, 33.235191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.716574, 30.514248, 33.522636>,  <26.552540, 30.545038, 33.695103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.716574, 30.514248, 33.522636>,  <26.989964, 30.462929, 33.235191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.716574, 30.514248, 33.522636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232336, 0.895008, -0.380763,
		-0.692015, -0.427200, -0.581906,
		-0.683473, 0.128296, 0.718613,
		26.511532, 30.552736, 33.738220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369354, 30.656624, 32.946712>,  <26.989964, 30.462929, 33.235191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369354, 30.656624, 32.946712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.334156, 30.783617, 33.324383>,  <26.313036, 30.859812, 33.550983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.334156, 30.783617, 33.324383>,  <26.369354, 30.656624, 32.946712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334156, 30.783617, 33.324383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182305, 0.926708, -0.328600,
		-0.979296, -0.201044, -0.023670,
		-0.087998, 0.317481, 0.944173,
		26.307756, 30.878860, 33.607635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731321, 31.052492, 32.907120>,  <26.369354, 30.656624, 32.946712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731321, 31.052492, 32.907120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.909174, 31.148842, 33.252205>,  <26.015886, 31.206652, 33.459255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.909174, 31.148842, 33.252205>,  <25.731321, 31.052492, 32.907120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909174, 31.148842, 33.252205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222604, 0.962660, -0.154053,
		-0.867611, -0.123547, 0.481650,
		0.444633, 0.240875, 0.862717,
		26.042564, 31.221104, 33.511021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.294874, 31.574217, 33.258110>,  <25.731321, 31.052492, 32.907120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.294874, 31.574217, 33.258110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.633497, 31.627945, 33.464142>,  <25.836670, 31.660181, 33.587761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.633497, 31.627945, 33.464142>,  <25.294874, 31.574217, 33.258110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633497, 31.627945, 33.464142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234691, 0.962695, 0.134681,
		-0.477770, -0.234898, 0.846498,
		0.846555, 0.134319, 0.515075,
		25.887465, 31.668242, 33.618664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124163, 32.016785, 33.780151>,  <25.294874, 31.574217, 33.258110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124163, 32.016785, 33.780151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.522161, 32.044037, 33.809387>,  <25.760960, 32.060387, 33.826931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.522161, 32.044037, 33.809387>,  <25.124163, 32.016785, 33.780151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522161, 32.044037, 33.809387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069979, 0.997282, 0.023048,
		-0.071324, -0.028048, 0.997059,
		0.994995, 0.068129, 0.073093,
		25.820660, 32.064476, 33.831314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.238899, 32.343159, 34.400703>,  <25.124163, 32.016785, 33.780151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.238899, 32.343159, 34.400703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.554695, 32.414417, 34.165768>,  <25.744173, 32.457172, 34.024807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.554695, 32.414417, 34.165768>,  <25.238899, 32.343159, 34.400703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.554695, 32.414417, 34.165768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032082, 0.967619, 0.250367,
		0.612923, -0.178819, 0.769643,
		0.789492, 0.178147, -0.587339,
		25.791542, 32.467861, 33.989567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.662678, 32.666199, 34.765755>,  <25.238899, 32.343159, 34.400703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.662678, 32.666199, 34.765755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770374, 32.790203, 34.401028>,  <25.834991, 32.864605, 34.182194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.770374, 32.790203, 34.401028>,  <25.662678, 32.666199, 34.765755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770374, 32.790203, 34.401028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045735, 0.941592, 0.333636,
		0.961986, -0.131530, 0.239337,
		0.269241, 0.310007, -0.911814,
		25.851147, 32.883205, 34.127483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137861, 33.249928, 34.845505>,  <25.662678, 32.666199, 34.765755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137861, 33.249928, 34.845505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.045658, 33.270000, 34.456795>,  <25.990337, 33.282043, 34.223568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.045658, 33.270000, 34.456795>,  <26.137861, 33.249928, 34.845505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045658, 33.270000, 34.456795> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029288, 0.997859, 0.058473,
		0.972630, 0.041940, -0.228543,
		-0.230506, 0.050179, -0.971776,
		25.976505, 33.285053, 34.165260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.565094, 33.746422, 34.638420>,  <26.137861, 33.249928, 34.845505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.565094, 33.746422, 34.638420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.247669, 33.718407, 34.396641>,  <26.057215, 33.701599, 34.251575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.247669, 33.718407, 34.396641>,  <26.565094, 33.746422, 34.638420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.247669, 33.718407, 34.396641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288609, 0.917831, 0.272563,
		0.535690, 0.390744, -0.748569,
		-0.793563, -0.070034, -0.604445,
		26.009600, 33.697395, 34.215309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.586327, 34.298439, 34.140266>,  <26.565094, 33.746422, 34.638420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.586327, 34.298439, 34.140266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199579, 34.197525, 34.124683>,  <25.967531, 34.136978, 34.115334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.199579, 34.197525, 34.124683>,  <26.586327, 34.298439, 34.140266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199579, 34.197525, 34.124683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254607, 0.942040, 0.218486,
		-0.018422, 0.221165, -0.975062,
		-0.966869, -0.252283, -0.038956,
		25.909519, 34.121841, 34.112995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927225, 33.803986, 33.657860>,  <26.586327, 34.298439, 34.140266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927225, 33.803986, 33.657860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127504, 34.025665, 33.923840>,  <27.247673, 34.158672, 34.083427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.127504, 34.025665, 33.923840>,  <26.927225, 33.803986, 33.657860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.127504, 34.025665, 33.923840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457715, -0.821509, 0.340030,
		0.734709, 0.134106, -0.664995,
		0.500699, 0.554201, 0.664952,
		27.277714, 34.191925, 34.123325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518019, 33.755825, 33.458313>,  <26.927225, 33.803986, 33.657860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518019, 33.755825, 33.458313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569479, 33.861359, 33.840694>,  <27.600355, 33.924679, 34.070122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.569479, 33.861359, 33.840694>,  <27.518019, 33.755825, 33.458313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569479, 33.861359, 33.840694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597617, -0.789890, 0.137575,
		0.791393, 0.553593, -0.259291,
		0.128651, 0.263833, 0.955950,
		27.608074, 33.940510, 34.127480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298143, 33.723507, 33.544376>,  <27.518019, 33.755825, 33.458313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298143, 33.723507, 33.544376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.118258, 33.718086, 33.901604>,  <28.010326, 33.714836, 34.115940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.118258, 33.718086, 33.901604>,  <28.298143, 33.723507, 33.544376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.118258, 33.718086, 33.901604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516834, -0.819430, 0.247826,
		0.728450, 0.573020, 0.375511,
		-0.449714, -0.013548, 0.893070,
		27.983343, 33.714024, 34.169525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861099, 33.558731, 34.003666>,  <28.298143, 33.723507, 33.544376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861099, 33.558731, 34.003666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.527885, 33.517982, 34.221172>,  <28.327957, 33.493534, 34.351677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.527885, 33.517982, 34.221172>,  <28.861099, 33.558731, 34.003666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527885, 33.517982, 34.221172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341166, -0.868341, 0.359986,
		0.435501, 0.485393, 0.758111,
		-0.833033, -0.101867, 0.543763,
		28.277975, 33.487423, 34.384300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.199381, 33.353909, 34.650143>,  <28.861099, 33.558731, 34.003666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.199381, 33.353909, 34.650143> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813030, 33.250988, 34.662037>,  <28.581221, 33.189236, 34.669174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.813030, 33.250988, 34.662037>,  <29.199381, 33.353909, 34.650143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813030, 33.250988, 34.662037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252208, -0.908160, 0.334120,
		-0.058965, 0.330217, 0.942062,
		-0.965875, -0.257297, 0.029734,
		28.523268, 33.173798, 34.670956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.131729, 32.966164, 35.362194>,  <29.199381, 33.353909, 34.650143>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.131729, 32.966164, 35.362194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.837860, 32.850445, 35.116734>,  <28.661539, 32.781013, 34.969460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.837860, 32.850445, 35.116734>,  <29.131729, 32.966164, 35.362194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837860, 32.850445, 35.116734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195948, -0.956457, 0.216320,
		-0.649510, 0.038680, 0.759368,
		-0.734670, -0.289299, -0.613649,
		28.617458, 32.763657, 34.932640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587292, 32.558109, 35.780209>,  <29.131729, 32.966164, 35.362194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587292, 32.558109, 35.780209> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565754, 32.454784, 35.394386>,  <28.552832, 32.392788, 35.162891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.565754, 32.454784, 35.394386>,  <28.587292, 32.558109, 35.780209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565754, 32.454784, 35.394386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083507, -0.963741, 0.253434,
		-0.995052, -0.066901, 0.073463,
		-0.053844, -0.258315, -0.964559,
		28.549601, 32.377289, 35.105019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250034, 32.017361, 35.801849>,  <28.587292, 32.558109, 35.780209>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250034, 32.017361, 35.801849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.401358, 31.970333, 35.434578>,  <28.492151, 31.942118, 35.214214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.401358, 31.970333, 35.434578>,  <28.250034, 32.017361, 35.801849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401358, 31.970333, 35.434578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297455, -0.923857, 0.240850,
		-0.876585, -0.364234, -0.314535,
		0.378311, -0.117565, -0.918183,
		28.514851, 31.935064, 35.159122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034565, 31.350021, 35.623398>,  <28.250034, 32.017361, 35.801849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034565, 31.350021, 35.623398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.357176, 31.435057, 35.402737>,  <28.550743, 31.486078, 35.270340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.357176, 31.435057, 35.402737>,  <28.034565, 31.350021, 35.623398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357176, 31.435057, 35.402737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310405, -0.946420, 0.089100,
		-0.503150, -0.243096, -0.829304,
		0.806529, 0.212589, -0.551649,
		28.599134, 31.498833, 35.237244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177565, 30.813076, 35.236023>,  <28.034565, 31.350021, 35.623398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177565, 30.813076, 35.236023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.527260, 31.007095, 35.227676>,  <28.737078, 31.123507, 35.222668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.527260, 31.007095, 35.227676>,  <28.177565, 30.813076, 35.236023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527260, 31.007095, 35.227676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485359, -0.874204, 0.013929,
		-0.011483, -0.022305, -0.999685,
		0.874239, 0.485047, -0.020865,
		28.789532, 31.152609, 35.221416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655773, 30.453457, 34.808437>,  <28.177565, 30.813076, 35.236023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655773, 30.453457, 34.808437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.890039, 30.659479, 35.058784>,  <29.030600, 30.783092, 35.208992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.890039, 30.659479, 35.058784>,  <28.655773, 30.453457, 34.808437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890039, 30.659479, 35.058784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538734, -0.824269, 0.174201,
		0.605607, 0.235153, -0.760226,
		0.585667, 0.515057, 0.625868,
		29.065739, 30.813995, 35.246544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159609, 30.100782, 34.764488>,  <28.655773, 30.453457, 34.808437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159609, 30.100782, 34.764488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.222988, 30.319704, 35.093208>,  <29.261015, 30.451057, 35.290440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.222988, 30.319704, 35.093208>,  <29.159609, 30.100782, 34.764488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222988, 30.319704, 35.093208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496326, -0.763663, 0.412890,
		0.853554, 0.342459, -0.392641,
		0.158448, 0.547302, 0.821800,
		29.270523, 30.483894, 35.339748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888584, 29.986292, 34.818119>,  <29.159609, 30.100782, 34.764488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888584, 29.986292, 34.818119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.753721, 30.132004, 35.165367>,  <29.672804, 30.219431, 35.373714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.753721, 30.132004, 35.165367>,  <29.888584, 29.986292, 34.818119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753721, 30.132004, 35.165367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617249, -0.610727, 0.496000,
		0.710865, 0.703074, -0.018940,
		-0.337157, 0.364280, 0.868116,
		29.652575, 30.241287, 35.425800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467625, 30.038246, 35.208839>,  <29.888584, 29.986292, 34.818119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467625, 30.038246, 35.208839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.162165, 30.017593, 35.466263>,  <29.978888, 30.005201, 35.620716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.162165, 30.017593, 35.466263>,  <30.467625, 30.038246, 35.208839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162165, 30.017593, 35.466263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529567, -0.620288, 0.578621,
		0.369317, 0.782673, 0.501027,
		-0.763652, -0.051633, 0.643561,
		29.933069, 30.002104, 35.659332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735836, 29.901787, 35.875515>,  <30.467625, 30.038246, 35.208839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735836, 29.901787, 35.875515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.361389, 29.781624, 35.948658>,  <30.136721, 29.709526, 35.992542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.361389, 29.781624, 35.948658>,  <30.735836, 29.901787, 35.875515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.361389, 29.781624, 35.948658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351309, -0.774848, 0.525541,
		-0.016192, 0.556207, 0.830886,
		-0.936119, -0.300407, 0.182855,
		30.080553, 29.691502, 36.003513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684347, 29.542900, 36.518818>,  <30.735836, 29.901787, 35.875515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684347, 29.542900, 36.518818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.337435, 29.407774, 36.372555>,  <30.129288, 29.326698, 36.284798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.337435, 29.407774, 36.372555>,  <30.684347, 29.542900, 36.518818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337435, 29.407774, 36.372555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196098, -0.906958, 0.372790,
		-0.457571, 0.251609, 0.852832,
		-0.867280, -0.337816, -0.365658,
		30.077251, 29.306429, 36.262856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545620, 29.070024, 36.992298>,  <30.684347, 29.542900, 36.518818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545620, 29.070024, 36.992298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.320192, 28.962460, 36.679867>,  <30.184937, 28.897921, 36.492409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.320192, 28.962460, 36.679867>,  <30.545620, 29.070024, 36.992298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320192, 28.962460, 36.679867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213312, -0.960837, 0.176891,
		-0.798053, -0.066922, 0.598860,
		-0.563569, -0.268912, -0.781074,
		30.151121, 28.881786, 36.445545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133078, 28.578596, 37.244816>,  <30.545620, 29.070024, 36.992298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133078, 28.578596, 37.244816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.117346, 28.504461, 36.852062>,  <30.107906, 28.459980, 36.616409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.117346, 28.504461, 36.852062>,  <30.133078, 28.578596, 37.244816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117346, 28.504461, 36.852062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062627, -0.980259, 0.187537,
		-0.997262, 0.068868, 0.026944,
		-0.039327, -0.185336, -0.981888,
		30.105547, 28.448860, 36.557495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446053, 28.039330, 37.094833>,  <30.133078, 28.578596, 37.244816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446053, 28.039330, 37.094833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.702456, 28.044096, 36.787857>,  <29.856297, 28.046955, 36.603672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.702456, 28.044096, 36.787857>,  <29.446053, 28.039330, 37.094833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702456, 28.044096, 36.787857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042965, -0.997755, -0.051380,
		-0.766333, 0.065908, -0.639054,
		0.641006, 0.011917, -0.767444,
		29.894756, 28.047670, 36.557625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.181013, 27.574921, 36.606750>,  <29.446053, 28.039330, 37.094833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.181013, 27.574921, 36.606750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565338, 27.581450, 36.496067>,  <29.795933, 27.585367, 36.429657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.565338, 27.581450, 36.496067>,  <29.181013, 27.574921, 36.606750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565338, 27.581450, 36.496067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027863, -0.998896, 0.037831,
		-0.275790, -0.044058, -0.960208,
		0.960814, 0.016321, -0.276713,
		29.853582, 27.586346, 36.413052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.299763, 26.984533, 35.975636>,  <29.181013, 27.574921, 36.606750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.299763, 26.984533, 35.975636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.636251, 27.070263, 36.174194>,  <29.838144, 27.121700, 36.293331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.636251, 27.070263, 36.174194>,  <29.299763, 26.984533, 35.975636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.636251, 27.070263, 36.174194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073034, -0.954710, 0.288435,
		0.535733, -0.206385, -0.818777,
		0.841223, 0.214323, 0.496396,
		29.888618, 27.134560, 36.323112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591774, 26.359402, 36.020081>,  <29.299763, 26.984533, 35.975636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591774, 26.359402, 36.020081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.817915, 26.534969, 36.299431>,  <29.953600, 26.640310, 36.467041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.817915, 26.534969, 36.299431>,  <29.591774, 26.359402, 36.020081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817915, 26.534969, 36.299431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043954, -0.861496, 0.505858,
		0.823677, -0.255293, -0.506342,
		0.565354, 0.438919, 0.698373,
		29.987520, 26.666645, 36.508942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.132015, 27.966955, 44.372192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.857544, 28.167517, 44.161385>,  <35.692860, 28.287853, 44.034901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.857544, 28.167517, 44.161385>,  <36.132015, 27.966955, 44.372192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857544, 28.167517, 44.161385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669580, -0.152210, 0.726976,
		0.284290, 0.851720, 0.440173,
		-0.686179, 0.501403, -0.527023,
		35.651691, 28.317938, 44.003277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788574, 28.296606, 44.919949>,  <36.132015, 27.966955, 44.372192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788574, 28.296606, 44.919949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.557533, 28.315777, 44.593983>,  <35.418911, 28.327280, 44.398403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.557533, 28.315777, 44.593983>,  <35.788574, 28.296606, 44.919949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557533, 28.315777, 44.593983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814509, -0.100298, 0.571416,
		-0.054347, 0.993803, 0.096970,
		-0.577600, 0.047928, -0.814911,
		35.384254, 28.330154, 44.349510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291187, 28.840343, 45.101948>,  <35.788574, 28.296606, 44.919949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291187, 28.840343, 45.101948> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135895, 28.607893, 44.815853>,  <35.042717, 28.468422, 44.644196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.135895, 28.607893, 44.815853>,  <35.291187, 28.840343, 45.101948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135895, 28.607893, 44.815853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702233, -0.316039, 0.637957,
		-0.596777, 0.749941, -0.285388,
		-0.388236, -0.581127, -0.715238,
		35.019424, 28.433556, 44.601280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562283, 28.954845, 45.133499>,  <35.291187, 28.840343, 45.101948>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562283, 28.954845, 45.133499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622520, 28.595585, 44.968262>,  <34.658665, 28.380028, 44.869122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.622520, 28.595585, 44.968262>,  <34.562283, 28.954845, 45.133499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622520, 28.595585, 44.968262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731126, -0.382439, 0.564973,
		-0.665414, 0.216940, -0.714255,
		0.150594, -0.898152, -0.413091,
		34.667698, 28.326139, 44.844334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918510, 28.723499, 45.006901>,  <34.562283, 28.954845, 45.133499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918510, 28.723499, 45.006901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136311, 28.388367, 44.991119>,  <34.266991, 28.187286, 44.981651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.136311, 28.388367, 44.991119>,  <33.918510, 28.723499, 45.006901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136311, 28.388367, 44.991119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688218, -0.473159, 0.549979,
		-0.479459, -0.272309, -0.834246,
		0.544495, -0.837836, -0.039452,
		34.299660, 28.137016, 44.979286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446148, 28.255041, 44.867519>,  <33.918510, 28.723499, 45.006901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446148, 28.255041, 44.867519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751633, 28.040705, 45.011528>,  <33.934925, 27.912102, 45.097935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.751633, 28.040705, 45.011528>,  <33.446148, 28.255041, 44.867519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751633, 28.040705, 45.011528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613667, -0.429490, 0.662534,
		-0.200388, -0.726919, -0.656836,
		0.763713, -0.535843, 0.360022,
		33.980747, 27.879951, 45.119534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201584, 27.503361, 44.847767>,  <33.446148, 28.255041, 44.867519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201584, 27.503361, 44.847767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507248, 27.536654, 45.103619>,  <33.690647, 27.556629, 45.257130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507248, 27.536654, 45.103619>,  <33.201584, 27.503361, 44.847767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507248, 27.536654, 45.103619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545591, -0.445564, 0.709791,
		0.344075, -0.891373, -0.295072,
		0.764162, 0.083232, 0.639632,
		33.736496, 27.561623, 45.295509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177250, 26.787500, 45.002052>,  <33.201584, 27.503361, 44.847767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177250, 26.787500, 45.002052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.402817, 26.987101, 45.265263>,  <33.538155, 27.106861, 45.423191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.402817, 26.987101, 45.265263>,  <33.177250, 26.787500, 45.002052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402817, 26.987101, 45.265263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518792, -0.405902, 0.752395,
		0.642539, -0.765666, 0.029983,
		0.563913, 0.498998, 0.658029,
		33.571991, 27.136801, 45.462673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491180, 26.306391, 45.442787>,  <33.177250, 26.787500, 45.002052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491180, 26.306391, 45.442787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466515, 26.655628, 45.636242>,  <33.451714, 26.865170, 45.752316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466515, 26.655628, 45.636242>,  <33.491180, 26.306391, 45.442787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466515, 26.655628, 45.636242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709759, -0.379043, 0.593776,
		0.701741, -0.306653, 0.643058,
		-0.061663, 0.873092, 0.483640,
		33.448017, 26.917557, 45.781334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413437, 26.207182, 46.176472>,  <33.491180, 26.306391, 45.442787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413437, 26.207182, 46.176472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.326664, 26.597504, 46.187389>,  <33.274601, 26.831697, 46.193939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.326664, 26.597504, 46.187389>,  <33.413437, 26.207182, 46.176472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326664, 26.597504, 46.187389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711554, -0.177203, 0.679919,
		0.668306, 0.128070, 0.732779,
		-0.216928, 0.975806, 0.027297,
		33.261585, 26.890245, 46.195580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422852, 26.450487, 46.933708>,  <33.413437, 26.207182, 46.176472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422852, 26.450487, 46.933708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203625, 26.681690, 46.691872>,  <33.072090, 26.820412, 46.546768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.203625, 26.681690, 46.691872>,  <33.422852, 26.450487, 46.933708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203625, 26.681690, 46.691872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764330, -0.052498, 0.642684,
		0.339736, 0.814341, 0.470561,
		-0.548068, 0.578007, -0.604590,
		33.039204, 26.855093, 46.510494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148056, 26.854982, 47.492424>,  <33.422852, 26.450487, 46.933708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148056, 26.854982, 47.492424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926281, 26.872656, 47.160004>,  <32.793217, 26.883261, 46.960552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.926281, 26.872656, 47.160004>,  <33.148056, 26.854982, 47.492424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926281, 26.872656, 47.160004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831824, -0.060408, 0.551743,
		-0.025823, 0.997195, 0.070247,
		-0.554439, 0.044185, -0.831051,
		32.759949, 26.885912, 46.910686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640770, 27.478210, 47.450493>,  <33.148056, 26.854982, 47.492424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640770, 27.478210, 47.450493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502594, 27.165522, 47.242809>,  <32.419689, 26.977909, 47.118198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.502594, 27.165522, 47.242809>,  <32.640770, 27.478210, 47.450493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502594, 27.165522, 47.242809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805094, -0.037409, 0.591967,
		-0.482177, 0.622505, -0.616436,
		-0.345442, -0.781722, -0.519212,
		32.398960, 26.931005, 47.087044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013268, 27.688847, 47.336662>,  <32.640770, 27.478210, 47.450493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013268, 27.688847, 47.336662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073303, 27.294420, 47.365353>,  <32.109325, 27.057764, 47.382565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073303, 27.294420, 47.365353>,  <32.013268, 27.688847, 47.336662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073303, 27.294420, 47.365353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707297, -0.056407, 0.704663,
		-0.690799, -0.156493, -0.705908,
		0.150093, -0.986067, 0.071721,
		32.118332, 26.998600, 47.386868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366644, 28.055347, 47.674339>,  <32.013268, 27.688847, 47.336662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366644, 28.055347, 47.674339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.318043, 28.436150, 47.786709>,  <31.288881, 28.664631, 47.854130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.318043, 28.436150, 47.786709>,  <31.366644, 28.055347, 47.674339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318043, 28.436150, 47.786709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531131, 0.301452, -0.791850,
		-0.838532, 0.052994, -0.542269,
		-0.121505, 0.952007, 0.280924,
		31.281591, 28.721752, 47.870987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213335, 28.371765, 47.075089>,  <31.366644, 28.055347, 47.674339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213335, 28.371765, 47.075089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.333483, 28.656942, 47.328545>,  <31.405571, 28.828049, 47.480618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.333483, 28.656942, 47.328545>,  <31.213335, 28.371765, 47.075089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333483, 28.656942, 47.328545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528345, 0.428722, -0.732836,
		-0.794122, 0.554899, -0.247905,
		0.300368, 0.712941, 0.633636,
		31.423594, 28.870825, 47.518635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066860, 29.020607, 46.838318>,  <31.213335, 28.371765, 47.075089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066860, 29.020607, 46.838318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.355419, 29.123337, 47.095573>,  <31.528555, 29.184975, 47.249928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.355419, 29.123337, 47.095573>,  <31.066860, 29.020607, 46.838318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355419, 29.123337, 47.095573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417520, 0.579633, -0.699787,
		-0.552508, 0.773348, 0.310916,
		0.721396, 0.256824, 0.643140,
		31.571838, 29.200384, 47.288517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978025, 29.693165, 46.776810>,  <31.066860, 29.020607, 46.838318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978025, 29.693165, 46.776810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343754, 29.604380, 46.912308>,  <31.563190, 29.551109, 46.993607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.343754, 29.604380, 46.912308>,  <30.978025, 29.693165, 46.776810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343754, 29.604380, 46.912308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402096, 0.597285, -0.693952,
		-0.048297, 0.770703, 0.635361,
		0.914323, -0.221961, 0.338744,
		31.618052, 29.537792, 47.013931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393738, 30.390619, 46.800735>,  <30.978025, 29.693165, 46.776810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393738, 30.390619, 46.800735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.686754, 30.119083, 46.820976>,  <31.862564, 29.956161, 46.833122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.686754, 30.119083, 46.820976>,  <31.393738, 30.390619, 46.800735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686754, 30.119083, 46.820976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445184, 0.421509, -0.790027,
		0.514973, 0.601254, 0.610981,
		0.732540, -0.678841, 0.050603,
		31.906517, 29.915432, 46.836159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969334, 30.817818, 46.616623>,  <31.393738, 30.390619, 46.800735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969334, 30.817818, 46.616623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.096848, 30.442999, 46.559608>,  <32.173355, 30.218107, 46.525398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.096848, 30.442999, 46.559608>,  <31.969334, 30.817818, 46.616623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096848, 30.442999, 46.559608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452431, 0.282583, -0.845845,
		0.832876, 0.205153, 0.514032,
		0.318785, -0.937048, -0.142539,
		32.192482, 30.161884, 46.516846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760365, 30.792032, 46.404610>,  <31.969334, 30.817818, 46.616623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760365, 30.792032, 46.404610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649208, 30.426394, 46.286488>,  <32.582516, 30.207010, 46.215614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.649208, 30.426394, 46.286488>,  <32.760365, 30.792032, 46.404610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649208, 30.426394, 46.286488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464659, 0.141144, -0.874169,
		0.840755, -0.380139, 0.385520,
		-0.277892, -0.914096, -0.295302,
		32.565842, 30.152164, 46.197895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390434, 30.405077, 46.183079>,  <32.760365, 30.792032, 46.404610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390434, 30.405077, 46.183079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059437, 30.271231, 46.002728>,  <32.860840, 30.190924, 45.894516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.059437, 30.271231, 46.002728>,  <33.390434, 30.405077, 46.183079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059437, 30.271231, 46.002728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427867, 0.144180, -0.892268,
		0.363574, -0.931260, 0.023864,
		-0.827492, -0.334616, -0.450875,
		32.811188, 30.170845, 45.867466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552132, 30.033026, 45.600052>,  <33.390434, 30.405077, 46.183079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552132, 30.033026, 45.600052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167110, 30.106754, 45.520538>,  <32.936096, 30.150991, 45.472832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.167110, 30.106754, 45.520538>,  <33.552132, 30.033026, 45.600052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167110, 30.106754, 45.520538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208974, 0.037417, -0.977205,
		-0.172682, -0.982153, -0.074534,
		-0.962554, 0.184321, -0.198784,
		32.878345, 30.162050, 45.460903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368370, 29.587059, 45.072330>,  <33.552132, 30.033026, 45.600052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368370, 29.587059, 45.072330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139935, 29.915415, 45.072514>,  <33.002872, 30.112429, 45.072624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139935, 29.915415, 45.072514>,  <33.368370, 29.587059, 45.072330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139935, 29.915415, 45.072514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141684, 0.099113, -0.984938,
		-0.808572, -0.562418, -0.172910,
		-0.571084, 0.820891, 0.000454,
		32.968609, 30.161682, 45.072651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983368, 29.419865, 44.456280>,  <33.368370, 29.587059, 45.072330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983368, 29.419865, 44.456280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.923603, 29.808477, 44.529823>,  <32.887745, 30.041645, 44.573948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.923603, 29.808477, 44.529823>,  <32.983368, 29.419865, 44.456280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923603, 29.808477, 44.529823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034472, 0.190952, -0.980994,
		-0.988173, -0.140239, -0.062022,
		-0.149416, 0.971530, 0.183860,
		32.878777, 30.099936, 44.584980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477295, 29.756689, 43.897778>,  <32.983368, 29.419865, 44.456280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477295, 29.756689, 43.897778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707069, 30.044018, 44.054771>,  <32.844933, 30.216415, 44.148968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707069, 30.044018, 44.054771>,  <32.477295, 29.756689, 43.897778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707069, 30.044018, 44.054771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192041, 0.347834, -0.917678,
		-0.795706, 0.602516, 0.061860,
		0.574433, 0.718322, 0.392481,
		32.879398, 30.259514, 44.172516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521946, 30.162165, 43.394928>,  <32.477295, 29.756689, 43.897778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521946, 30.162165, 43.394928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.772614, 30.370176, 43.627083>,  <32.923016, 30.494984, 43.766376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.772614, 30.370176, 43.627083>,  <32.521946, 30.162165, 43.394928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772614, 30.370176, 43.627083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353694, 0.473838, -0.806461,
		-0.694394, 0.710666, 0.113009,
		0.626672, 0.520031, 0.580388,
		32.960613, 30.526186, 43.801201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488003, 30.926691, 43.257725>,  <32.521946, 30.162165, 43.394928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488003, 30.926691, 43.257725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848534, 30.857681, 43.416641>,  <33.064854, 30.816275, 43.511990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.848534, 30.857681, 43.416641>,  <32.488003, 30.926691, 43.257725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848534, 30.857681, 43.416641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432947, 0.385651, -0.814758,
		-0.012648, 0.906371, 0.422293,
		0.901330, -0.172526, 0.397289,
		33.118935, 30.805923, 43.535828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098732, 31.608644, 43.334431>,  <32.488003, 30.926691, 43.257725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098732, 31.608644, 43.334431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.730553, 31.638401, 43.180939>,  <31.509645, 31.656254, 43.088844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.730553, 31.638401, 43.180939>,  <32.098732, 31.608644, 43.334431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730553, 31.638401, 43.180939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345588, -0.613562, 0.710007,
		-0.182626, 0.786135, 0.590458,
		-0.920444, 0.074389, -0.383731,
		31.454420, 31.660717, 43.065819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648409, 31.587851, 43.967121>,  <32.098732, 31.608644, 43.334431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648409, 31.587851, 43.967121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.410454, 31.518688, 43.653126>,  <31.267681, 31.477192, 43.464729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.410454, 31.518688, 43.653126>,  <31.648409, 31.587851, 43.967121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410454, 31.518688, 43.653126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600243, -0.553980, 0.576900,
		-0.534619, 0.814377, 0.225771,
		-0.594887, -0.172905, -0.784993,
		31.231987, 31.466816, 43.417629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957701, 31.827919, 44.197788>,  <31.648409, 31.587851, 43.967121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957701, 31.827919, 44.197788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.888844, 31.574957, 43.895679>,  <30.847530, 31.423180, 43.714417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.888844, 31.574957, 43.895679>,  <30.957701, 31.827919, 44.197788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888844, 31.574957, 43.895679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799292, -0.358462, 0.482325,
		-0.575761, 0.686707, -0.443771,
		-0.172141, -0.632407, -0.755268,
		30.837202, 31.385235, 43.669098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266932, 31.862347, 44.097561>,  <30.957701, 31.827919, 44.197788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266932, 31.862347, 44.097561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.391874, 31.513580, 43.946724>,  <30.466841, 31.304321, 43.856224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.391874, 31.513580, 43.946724>,  <30.266932, 31.862347, 44.097561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.391874, 31.513580, 43.946724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768555, -0.465258, 0.439157,
		-0.558351, 0.152639, -0.815442,
		0.312358, -0.871915, -0.377089,
		30.485582, 31.252007, 43.833599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569777, 31.522072, 43.857189>,  <30.266932, 31.862347, 44.097561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569777, 31.522072, 43.857189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.845644, 31.238144, 43.914478>,  <30.011164, 31.067787, 43.948853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.845644, 31.238144, 43.914478>,  <29.569777, 31.522072, 43.857189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845644, 31.238144, 43.914478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645924, -0.513632, 0.564769,
		-0.327321, -0.482015, -0.812726,
		0.689670, -0.709820, 0.143222,
		30.052546, 31.025198, 43.957443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220781, 30.832453, 43.731651>,  <29.569777, 31.522072, 43.857189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220781, 30.832453, 43.731651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.557005, 30.752054, 43.932873>,  <29.758739, 30.703815, 44.053604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.557005, 30.752054, 43.932873>,  <29.220781, 30.832453, 43.731651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557005, 30.752054, 43.932873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521647, -0.550762, 0.651571,
		0.146098, -0.810100, -0.567798,
		0.840559, -0.200997, 0.503052,
		29.809174, 30.691755, 44.083790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087645, 30.156355, 43.959496>,  <29.220781, 30.832453, 43.731651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087645, 30.156355, 43.959496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.396414, 30.291433, 44.174938>,  <29.581676, 30.372480, 44.304203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.396414, 30.291433, 44.174938>,  <29.087645, 30.156355, 43.959496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.396414, 30.291433, 44.174938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397144, -0.405400, 0.823363,
		0.496396, -0.849478, -0.178825,
		0.771924, 0.337695, 0.538604,
		29.627991, 30.392742, 44.336521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104609, 29.587202, 43.433601>,  <29.087645, 30.156355, 43.959496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104609, 29.587202, 43.433601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.761713, 29.449766, 43.280193>,  <28.555975, 29.367306, 43.188148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.761713, 29.449766, 43.280193>,  <29.104609, 29.587202, 43.433601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.761713, 29.449766, 43.280193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242999, 0.386726, -0.889603,
		0.453977, -0.855797, -0.248024,
		-0.857238, -0.343590, -0.383523,
		28.504541, 29.346689, 43.165138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271538, 29.339151, 42.757229>,  <29.104609, 29.587202, 43.433601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271538, 29.339151, 42.757229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.875704, 29.396015, 42.748142>,  <28.638205, 29.430134, 42.742691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.875704, 29.396015, 42.748142>,  <29.271538, 29.339151, 42.757229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875704, 29.396015, 42.748142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092518, 0.507109, -0.856902,
		-0.110301, -0.850077, -0.514979,
		-0.989583, 0.142162, -0.022713,
		28.578829, 29.438663, 42.741329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126284, 29.189213, 41.989155>,  <29.271538, 29.339151, 42.757229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126284, 29.189213, 41.989155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.813751, 29.399847, 42.123154>,  <28.626232, 29.526228, 42.203552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.813751, 29.399847, 42.123154>,  <29.126284, 29.189213, 41.989155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813751, 29.399847, 42.123154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082229, 0.618938, -0.781123,
		-0.618674, -0.582770, -0.526897,
		-0.781332, 0.526587, 0.335001,
		28.579351, 29.557823, 42.223656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667112, 29.276663, 41.381317>,  <29.126284, 29.189213, 41.989155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667112, 29.276663, 41.381317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.539709, 29.558144, 41.635361>,  <28.463268, 29.727032, 41.787785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.539709, 29.558144, 41.635361>,  <28.667112, 29.276663, 41.381317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539709, 29.558144, 41.635361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045379, 0.657912, -0.751727,
		-0.946834, -0.268250, -0.177615,
		-0.318506, 0.703700, 0.635106,
		28.444157, 29.769253, 41.825893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083651, 29.630203, 41.101696>,  <28.667112, 29.276663, 41.381317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083651, 29.630203, 41.101696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.244555, 29.887100, 41.362682>,  <28.341097, 30.041239, 41.519276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.244555, 29.887100, 41.362682>,  <28.083651, 29.630203, 41.101696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244555, 29.887100, 41.362682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025391, 0.720222, -0.693279,
		-0.915173, 0.262312, 0.306025,
		0.402261, 0.642240, 0.652467,
		28.365232, 30.079773, 41.558422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699446, 30.324526, 41.085789>,  <28.083651, 29.630203, 41.101696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699446, 30.324526, 41.085789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.072514, 30.387360, 41.215683>,  <28.296354, 30.425060, 41.293617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.072514, 30.387360, 41.215683>,  <27.699446, 30.324526, 41.085789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072514, 30.387360, 41.215683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114375, 0.724989, -0.679198,
		-0.342118, 0.670609, 0.658209,
		0.932670, 0.157083, 0.324733,
		28.352314, 30.434484, 41.313103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848118, 31.044083, 40.829758>,  <27.699446, 30.324526, 41.085789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848118, 31.044083, 40.829758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.183558, 30.925285, 41.012424>,  <28.384821, 30.854006, 41.122025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.183558, 30.925285, 41.012424>,  <27.848118, 31.044083, 40.829758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183558, 30.925285, 41.012424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527587, 0.651552, -0.545098,
		-0.135650, 0.698050, 0.703083,
		0.838601, -0.296995, 0.456665,
		28.435139, 30.836187, 41.149426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.154680, 26.832285, 45.108959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.245584, 26.666002, 44.756699>,  <30.300127, 26.566233, 44.545341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.245584, 26.666002, 44.756699>,  <30.154680, 26.832285, 45.108959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245584, 26.666002, 44.756699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935130, -0.159258, 0.316495,
		-0.271819, -0.895448, 0.352545,
		0.227259, -0.415705, -0.880649,
		30.313763, 26.541290, 44.492504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669203, 26.310379, 45.438614>,  <30.154680, 26.832285, 45.108959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669203, 26.310379, 45.438614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.064436, 26.333565, 45.495647>,  <31.301577, 26.347477, 45.529865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.064436, 26.333565, 45.495647>,  <30.669203, 26.310379, 45.438614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.064436, 26.333565, 45.495647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149687, -0.146287, -0.977852,
		-0.035822, 0.987543, -0.153221,
		0.988084, 0.057964, 0.142582,
		31.360861, 26.350954, 45.538422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927961, 26.982134, 45.066536>,  <30.669203, 26.310379, 45.438614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927961, 26.982134, 45.066536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.167126, 26.662123, 45.086369>,  <31.310623, 26.470116, 45.098270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.167126, 26.662123, 45.086369>,  <30.927961, 26.982134, 45.066536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167126, 26.662123, 45.086369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052396, -0.022718, -0.998368,
		0.799850, 0.599531, 0.028335,
		0.597909, -0.800029, 0.049584,
		31.346498, 26.422113, 45.101242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509304, 27.251463, 44.866383>,  <30.927961, 26.982134, 45.066536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509304, 27.251463, 44.866383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.528378, 26.859037, 44.791290>,  <31.539822, 26.623583, 44.746235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.528378, 26.859037, 44.791290>,  <31.509304, 27.251463, 44.866383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528378, 26.859037, 44.791290> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322601, 0.192997, -0.926650,
		0.945333, -0.016377, 0.325695,
		0.047682, -0.981063, -0.187730,
		31.542683, 26.564718, 44.734970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196293, 27.088301, 44.716858>,  <31.509304, 27.251463, 44.866383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196293, 27.088301, 44.716858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.990774, 26.799902, 44.530880>,  <31.867462, 26.626863, 44.419292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.990774, 26.799902, 44.530880>,  <32.196293, 27.088301, 44.716858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990774, 26.799902, 44.530880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428081, 0.254198, -0.867254,
		0.743476, -0.644629, 0.178038,
		-0.513800, -0.720997, -0.464944,
		31.836634, 26.583603, 44.391396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703041, 26.782211, 44.291500>,  <32.196293, 27.088301, 44.716858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703041, 26.782211, 44.291500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.391773, 26.613773, 44.105110>,  <32.205013, 26.512711, 43.993279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.391773, 26.613773, 44.105110>,  <32.703041, 26.782211, 44.291500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391773, 26.613773, 44.105110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589994, -0.235783, -0.772213,
		0.215307, -0.875835, 0.431923,
		-0.778171, -0.421095, -0.465972,
		32.158321, 26.487446, 43.965317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039303, 26.202095, 43.876717>,  <32.703041, 26.782211, 44.291500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039303, 26.202095, 43.876717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.677376, 26.326744, 43.760658>,  <32.460220, 26.401533, 43.691021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.677376, 26.326744, 43.760658>,  <33.039303, 26.202095, 43.876717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677376, 26.326744, 43.760658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289273, -0.050135, -0.955933,
		-0.312439, -0.948882, -0.044782,
		-0.904822, 0.311625, -0.290150,
		32.405930, 26.420231, 43.673615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779205, 25.784864, 43.304619>,  <33.039303, 26.202095, 43.876717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779205, 25.784864, 43.304619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.538780, 26.101166, 43.258266>,  <32.394524, 26.290947, 43.230453>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.538780, 26.101166, 43.258266>,  <32.779205, 25.784864, 43.304619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538780, 26.101166, 43.258266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280701, 0.073120, -0.957006,
		-0.748284, -0.607749, -0.265916,
		-0.601064, 0.790755, -0.115881,
		32.358459, 26.338392, 43.223503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438881, 25.730843, 42.696350>,  <32.779205, 25.784864, 43.304619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438881, 25.730843, 42.696350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.433788, 26.125450, 42.761612>,  <32.430733, 26.362215, 42.800770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.433788, 26.125450, 42.761612>,  <32.438881, 25.730843, 42.696350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433788, 26.125450, 42.761612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325467, 0.158369, -0.932196,
		-0.945468, 0.041229, -0.323097,
		-0.012735, 0.986519, 0.163152,
		32.429970, 26.421406, 42.810558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337006, 26.014471, 42.065563>,  <32.438881, 25.730843, 42.696350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337006, 26.014471, 42.065563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.456841, 26.331644, 42.277790>,  <32.528744, 26.521948, 42.405128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.456841, 26.331644, 42.277790>,  <32.337006, 26.014471, 42.065563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456841, 26.331644, 42.277790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420259, 0.389575, -0.819520,
		-0.856520, 0.468498, -0.216523,
		0.299591, 0.792932, 0.530570,
		32.546719, 26.569523, 42.436962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259399, 26.601254, 41.626015>,  <32.337006, 26.014471, 42.065563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259399, 26.601254, 41.626015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.510487, 26.780029, 41.880955>,  <32.661140, 26.887295, 42.033916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.510487, 26.780029, 41.880955>,  <32.259399, 26.601254, 41.626015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510487, 26.780029, 41.880955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489305, 0.410242, -0.769599,
		-0.605432, 0.794949, 0.038827,
		0.627720, 0.446942, 0.637347,
		32.698803, 26.914112, 42.072159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214497, 27.285439, 41.386734>,  <32.259399, 26.601254, 41.626015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214497, 27.285439, 41.386734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.561375, 27.225847, 41.576801>,  <32.769501, 27.190092, 41.690842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.561375, 27.225847, 41.576801>,  <32.214497, 27.285439, 41.386734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.561375, 27.225847, 41.576801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494798, 0.365386, -0.788460,
		-0.056157, 0.918858, 0.390573,
		0.867192, -0.148977, 0.475168,
		32.821533, 27.181154, 41.719353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646212, 27.744829, 41.502365>,  <32.214497, 27.285439, 41.386734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646212, 27.744829, 41.502365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.349663, 27.925585, 41.303905>,  <31.171734, 28.034039, 41.184830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.349663, 27.925585, 41.303905>,  <31.646212, 27.744829, 41.502365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349663, 27.925585, 41.303905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667517, -0.420332, 0.614607,
		0.069190, 0.786839, 0.613267,
		-0.741373, 0.451891, -0.496146,
		31.127251, 28.061152, 41.155060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217285, 28.088448, 41.978931>,  <31.646212, 27.744829, 41.502365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217285, 28.088448, 41.978931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.989895, 28.011812, 41.658897>,  <30.853460, 27.965830, 41.466877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.989895, 28.011812, 41.658897>,  <31.217285, 28.088448, 41.978931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989895, 28.011812, 41.658897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644893, -0.500075, 0.577961,
		-0.510831, 0.844523, 0.160725,
		-0.568476, -0.191589, -0.800080,
		30.819353, 27.954336, 41.418873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594503, 28.129967, 42.226093>,  <31.217285, 28.088448, 41.978931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594503, 28.129967, 42.226093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.548801, 27.935753, 41.879406>,  <30.521381, 27.819223, 41.671394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.548801, 27.935753, 41.879406>,  <30.594503, 28.129967, 42.226093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548801, 27.935753, 41.879406> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739578, -0.540931, 0.400523,
		-0.663303, 0.686767, -0.297288,
		-0.114254, -0.485536, -0.866719,
		30.514524, 27.790092, 41.619389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869667, 28.003395, 42.111225>,  <30.594503, 28.129967, 42.226093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869667, 28.003395, 42.111225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.048189, 27.739042, 41.869881>,  <30.155302, 27.580431, 41.725075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.048189, 27.739042, 41.869881>,  <29.869667, 28.003395, 42.111225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048189, 27.739042, 41.869881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591248, -0.723886, 0.355550,
		-0.671741, 0.198051, -0.713820,
		0.446308, -0.660882, -0.603361,
		30.182081, 27.540777, 41.688873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.225990, 27.591978, 41.863918>,  <29.869667, 28.003395, 42.111225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.225990, 27.591978, 41.863918> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.565706, 27.384096, 41.826809>,  <29.769537, 27.259367, 41.804543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.565706, 27.384096, 41.826809>,  <29.225990, 27.591978, 41.863918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565706, 27.384096, 41.826809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443287, -0.797476, 0.409303,
		-0.286705, -0.306491, -0.907669,
		0.849292, -0.519707, -0.092777,
		29.820494, 27.228184, 41.798977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941765, 27.030621, 41.620274>,  <29.225990, 27.591978, 41.863918>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941765, 27.030621, 41.620274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.305460, 26.945801, 41.763561>,  <29.523678, 26.894909, 41.849533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.305460, 26.945801, 41.763561>,  <28.941765, 27.030621, 41.620274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305460, 26.945801, 41.763561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374108, -0.793637, 0.479773,
		0.182557, -0.570240, -0.800936,
		0.909239, -0.212051, 0.358216,
		29.578232, 26.882185, 41.871025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.883829, 26.351576, 41.609356>,  <28.941765, 27.030621, 41.620274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.883829, 26.351576, 41.609356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.241041, 26.379377, 41.787193>,  <29.455368, 26.396059, 41.893898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.241041, 26.379377, 41.787193>,  <28.883829, 26.351576, 41.609356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241041, 26.379377, 41.787193> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156820, -0.877995, 0.452253,
		0.421786, -0.473597, -0.773177,
		0.893031, 0.069504, 0.444595,
		29.508951, 26.400229, 41.920570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421556, 25.794886, 41.330769>,  <28.883829, 26.351576, 41.609356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421556, 25.794886, 41.330769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.451826, 25.922293, 41.708725>,  <29.469988, 25.998737, 41.935497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.451826, 25.922293, 41.708725>,  <29.421556, 25.794886, 41.330769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451826, 25.922293, 41.708725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461550, -0.828792, 0.316347,
		0.883881, -0.460054, 0.084294,
		0.075674, 0.318519, 0.944891,
		29.474529, 26.017849, 41.992191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487934, 25.227413, 41.761189>,  <29.421556, 25.794886, 41.330769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487934, 25.227413, 41.761189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.444410, 25.481510, 42.067032>,  <29.418295, 25.633968, 42.250538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.444410, 25.481510, 42.067032>,  <29.487934, 25.227413, 41.761189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444410, 25.481510, 42.067032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450489, -0.717171, 0.531719,
		0.886126, -0.286592, 0.364205,
		-0.108811, 0.635241, 0.764611,
		29.411768, 25.672083, 42.296413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.493744, 24.850014, 42.375172>,  <29.487934, 25.227413, 41.761189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.493744, 24.850014, 42.375172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.277845, 25.165268, 42.493504>,  <29.148306, 25.354422, 42.564503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.277845, 25.165268, 42.493504>,  <29.493744, 24.850014, 42.375172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277845, 25.165268, 42.493504> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578477, -0.602541, 0.549827,
		0.611587, 0.125637, 0.781138,
		-0.539746, 0.788137, 0.295828,
		29.115921, 25.401709, 42.582253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262781, 24.777964, 43.183788>,  <29.493744, 24.850014, 42.375172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262781, 24.777964, 43.183788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.018097, 25.065268, 43.051178>,  <28.871286, 25.237650, 42.971611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.018097, 25.065268, 43.051178>,  <29.262781, 24.777964, 43.183788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018097, 25.065268, 43.051178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758514, -0.413524, 0.503641,
		0.224651, 0.559552, 0.797768,
		-0.611710, 0.718261, -0.331529,
		28.834583, 25.280746, 42.951717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983356, 25.020723, 43.810883>,  <29.262781, 24.777964, 43.183788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983356, 25.020723, 43.810883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.751530, 25.116257, 43.499226>,  <28.612432, 25.173576, 43.312233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.751530, 25.116257, 43.499226>,  <28.983356, 25.020723, 43.810883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751530, 25.116257, 43.499226> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799951, -0.349166, 0.488018,
		-0.155493, 0.906113, 0.393422,
		-0.579569, 0.238835, -0.779139,
		28.577660, 25.187908, 43.265484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450392, 25.513130, 44.145359>,  <28.983356, 25.020723, 43.810883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450392, 25.513130, 44.145359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.337585, 25.350576, 43.797722>,  <28.269901, 25.253044, 43.589138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.337585, 25.350576, 43.797722>,  <28.450392, 25.513130, 44.145359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337585, 25.350576, 43.797722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915688, -0.156334, 0.370237,
		-0.286327, 0.900229, -0.328031,
		-0.282015, -0.406383, -0.869092,
		28.252981, 25.228661, 43.536995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901606, 25.786520, 44.036095>,  <28.450392, 25.513130, 44.145359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901606, 25.786520, 44.036095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.876541, 25.473209, 43.788692>,  <27.861502, 25.285223, 43.640251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.876541, 25.473209, 43.788692>,  <27.901606, 25.786520, 44.036095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876541, 25.473209, 43.788692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930101, -0.178902, 0.320790,
		-0.361920, 0.595376, -0.717315,
		-0.062662, -0.783276, -0.618508,
		27.857742, 25.238226, 43.603142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644581, 26.510426, 43.745037>,  <27.901606, 25.786520, 44.036095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644581, 26.510426, 43.745037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.512396, 26.723480, 44.056702>,  <27.433084, 26.851313, 44.243702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.512396, 26.723480, 44.056702>,  <27.644581, 26.510426, 43.745037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512396, 26.723480, 44.056702> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453840, 0.813512, -0.363631,
		-0.827541, 0.233448, -0.510567,
		-0.330463, 0.532635, 0.779162,
		27.413258, 26.883270, 44.290451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390726, 27.065014, 43.450497>,  <27.644581, 26.510426, 43.745037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390726, 27.065014, 43.450497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.486208, 27.173094, 43.823593>,  <27.543497, 27.237942, 44.047451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.486208, 27.173094, 43.823593>,  <27.390726, 27.065014, 43.450497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486208, 27.173094, 43.823593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351861, 0.871176, -0.342413,
		-0.905104, 0.409933, 0.112883,
		0.238707, 0.270200, 0.932744,
		27.557819, 27.254154, 44.103416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079994, 27.692671, 43.539097>,  <27.390726, 27.065014, 43.450497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079994, 27.692671, 43.539097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.366547, 27.675089, 43.817627>,  <27.538479, 27.664539, 43.984745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.366547, 27.675089, 43.817627>,  <27.079994, 27.692671, 43.539097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366547, 27.675089, 43.817627> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369854, 0.870176, -0.325579,
		-0.591612, 0.490777, 0.639635,
		0.716382, -0.043955, 0.696323,
		27.581461, 27.661901, 44.026524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012434, 28.311195, 43.983158>,  <27.079994, 27.692671, 43.539097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012434, 28.311195, 43.983158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.396235, 28.203146, 44.015144>,  <27.626514, 28.138317, 44.034336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.396235, 28.203146, 44.015144>,  <27.012434, 28.311195, 43.983158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.396235, 28.203146, 44.015144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280898, 0.895835, -0.344350,
		0.021377, 0.352867, 0.935429,
		0.959500, -0.270121, 0.079969,
		27.684084, 28.122110, 44.039135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.303980, 28.893593, 44.243759>,  <27.012434, 28.311195, 43.983158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.303980, 28.893593, 44.243759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.600773, 28.676249, 44.086678>,  <27.778849, 28.545841, 43.992428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.600773, 28.676249, 44.086678>,  <27.303980, 28.893593, 44.243759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600773, 28.676249, 44.086678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334549, 0.807708, -0.485474,
		0.580979, 0.228835, 0.781087,
		0.741984, -0.543363, -0.392705,
		27.823368, 28.513239, 43.968864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891552, 29.395952, 44.319561>,  <27.303980, 28.893593, 44.243759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891552, 29.395952, 44.319561> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.025124, 29.117155, 44.065727>,  <28.105267, 28.949877, 43.913429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.025124, 29.117155, 44.065727>,  <27.891552, 29.395952, 44.319561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025124, 29.117155, 44.065727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270496, 0.715769, -0.643823,
		0.902952, 0.043340, 0.427550,
		0.333930, -0.696992, -0.634581,
		28.125303, 28.908058, 43.875351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577097, 29.568718, 44.019367>,  <27.891552, 29.395952, 44.319561>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577097, 29.568718, 44.019367> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.419710, 29.325344, 43.743687>,  <28.325277, 29.179319, 43.578278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.419710, 29.325344, 43.743687>,  <28.577097, 29.568718, 44.019367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419710, 29.325344, 43.743687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177375, 0.685340, -0.706291,
		0.902066, -0.400148, -0.161738,
		-0.393466, -0.608433, -0.689198,
		28.301670, 29.142815, 43.536926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088470, 29.503712, 44.371971>,  <28.577097, 29.568718, 44.019367>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088470, 29.503712, 44.371971> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.310234, 29.784107, 44.551411>,  <29.443293, 29.952345, 44.659073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.310234, 29.784107, 44.551411>,  <29.088470, 29.503712, 44.371971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310234, 29.784107, 44.551411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066958, -0.499706, 0.863603,
		0.829545, -0.508829, -0.230105,
		0.554411, 0.700990, 0.448599,
		29.476557, 29.994404, 44.685989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511288, 29.186356, 44.939987>,  <29.088470, 29.503712, 44.371971>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511288, 29.186356, 44.939987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.497805, 29.578770, 45.016335>,  <29.489714, 29.814219, 45.062141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.497805, 29.578770, 45.016335>,  <29.511288, 29.186356, 44.939987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497805, 29.578770, 45.016335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063609, -0.192692, 0.979195,
		0.997405, 0.020867, 0.068898,
		-0.033709, 0.981037, 0.190865,
		29.487692, 29.873081, 45.073593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032623, 29.338820, 45.388966>,  <29.511288, 29.186356, 44.939987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032623, 29.338820, 45.388966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.767731, 29.634287, 45.439281>,  <29.608795, 29.811567, 45.469471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.767731, 29.634287, 45.439281>,  <30.032623, 29.338820, 45.388966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767731, 29.634287, 45.439281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088938, -0.089198, 0.992035,
		0.744003, 0.668143, -0.006626,
		-0.662231, 0.738666, 0.125787,
		29.569061, 29.855886, 45.477016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345718, 29.886993, 45.772495>,  <30.032623, 29.338820, 45.388966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345718, 29.886993, 45.772495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.951668, 29.935154, 45.821537>,  <29.715239, 29.964050, 45.850964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.951668, 29.935154, 45.821537>,  <30.345718, 29.886993, 45.772495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951668, 29.935154, 45.821537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111981, -0.091397, 0.989498,
		0.130343, 0.988509, 0.076555,
		-0.985125, 0.120402, 0.122607,
		29.656130, 29.971275, 45.858318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219501, 30.280958, 46.414146>,  <30.345718, 29.886993, 45.772495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219501, 30.280958, 46.414146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.855684, 30.123547, 46.360683>,  <29.637394, 30.029100, 46.328606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.855684, 30.123547, 46.360683>,  <30.219501, 30.280958, 46.414146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855684, 30.123547, 46.360683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099469, -0.106125, 0.989365,
		-0.403528, 0.913166, 0.057382,
		-0.909544, -0.393529, -0.133656,
		29.582821, 30.005487, 46.320587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760960, 30.542965, 46.911270>,  <30.219501, 30.280958, 46.414146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760960, 30.542965, 46.911270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.538940, 30.228006, 46.803997>,  <29.405729, 30.039030, 46.739632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.538940, 30.228006, 46.803997>,  <29.760960, 30.542965, 46.911270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538940, 30.228006, 46.803997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277146, -0.128933, 0.952138,
		-0.784290, 0.602810, -0.146660,
		-0.555049, -0.787398, -0.268187,
		29.372425, 29.991787, 46.723541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024590, 30.645029, 47.100834>,  <29.760960, 30.542965, 46.911270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024590, 30.645029, 47.100834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.106634, 30.254116, 47.079498>,  <29.155861, 30.019567, 47.066696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.106634, 30.254116, 47.079498>,  <29.024590, 30.645029, 47.100834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106634, 30.254116, 47.079498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323734, -0.119173, 0.938613,
		-0.923648, -0.175255, -0.340824,
		0.205113, -0.977284, -0.053338,
		29.168169, 29.960932, 47.063496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634333, 30.409727, 47.658749>,  <29.024590, 30.645029, 47.100834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634333, 30.409727, 47.658749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.827269, 30.074867, 47.555573>,  <28.943029, 29.873951, 47.493668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.827269, 30.074867, 47.555573>,  <28.634333, 30.409727, 47.658749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827269, 30.074867, 47.555573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071038, -0.330869, 0.940999,
		-0.873100, -0.435557, -0.219060,
		0.482339, -0.837148, -0.257940,
		28.971970, 29.823723, 47.478191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173992, 29.811085, 47.800762>,  <28.634333, 30.409727, 47.658749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173992, 29.811085, 47.800762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.552950, 29.683525, 47.811684>,  <28.780325, 29.606989, 47.818237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.552950, 29.683525, 47.811684>,  <28.173992, 29.811085, 47.800762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552950, 29.683525, 47.811684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158113, -0.392134, 0.906218,
		-0.278286, -0.862864, -0.421928,
		0.947395, -0.318900, 0.027305,
		28.837168, 29.587854, 47.819874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.490761, 36.356091, 34.759132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836433, 36.241653, 34.924709>,  <36.043839, 36.172993, 35.024055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.836433, 36.241653, 34.924709>,  <35.490761, 36.356091, 34.759132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836433, 36.241653, 34.924709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501184, -0.416161, 0.758699,
		-0.044790, -0.863113, -0.503021,
		0.864181, -0.286088, 0.413939,
		36.095688, 36.155827, 35.048889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438313, 35.612526, 34.766243>,  <35.490761, 36.356091, 34.759132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438313, 35.612526, 34.766243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656471, 35.804241, 35.041294>,  <35.787365, 35.919270, 35.206326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.656471, 35.804241, 35.041294>,  <35.438313, 35.612526, 34.766243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656471, 35.804241, 35.041294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579832, -0.376669, 0.722437,
		0.605262, -0.792721, 0.072473,
		0.545393, 0.479286, 0.687628,
		35.820087, 35.948029, 35.247581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562302, 35.153927, 35.408688>,  <35.438313, 35.612526, 34.766243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562302, 35.153927, 35.408688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645046, 35.510284, 35.570435>,  <35.694691, 35.724098, 35.667484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645046, 35.510284, 35.570435>,  <35.562302, 35.153927, 35.408688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645046, 35.510284, 35.570435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118355, -0.387485, 0.914247,
		0.971186, -0.236977, 0.025288,
		0.206857, 0.890897, 0.404368,
		35.707104, 35.777554, 35.691746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817818, 34.923420, 36.023926>,  <35.562302, 35.153927, 35.408688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817818, 34.923420, 36.023926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732826, 35.308716, 36.089684>,  <35.681831, 35.539894, 36.129139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732826, 35.308716, 36.089684>,  <35.817818, 34.923420, 36.023926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732826, 35.308716, 36.089684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477707, -0.249153, 0.842448,
		0.852437, 0.100470, 0.513085,
		-0.212478, 0.963238, 0.164393,
		35.669083, 35.597687, 36.139000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842785, 34.895580, 36.731197>,  <35.817818, 34.923420, 36.023926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842785, 34.895580, 36.731197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646351, 35.225777, 36.619907>,  <35.528492, 35.423893, 36.553135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646351, 35.225777, 36.619907>,  <35.842785, 34.895580, 36.731197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646351, 35.225777, 36.619907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653186, -0.137624, 0.744585,
		0.576357, 0.547382, 0.606783,
		-0.491081, 0.825489, -0.278222,
		35.499027, 35.473423, 36.536442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880638, 35.335590, 37.316139>,  <35.842785, 34.895580, 36.731197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880638, 35.335590, 37.316139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559551, 35.474594, 37.122276>,  <35.366901, 35.557995, 37.005959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559551, 35.474594, 37.122276>,  <35.880638, 35.335590, 37.316139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559551, 35.474594, 37.122276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552681, -0.128179, 0.823477,
		0.224044, 0.928874, 0.294953,
		-0.802713, 0.347510, -0.484653,
		35.318737, 35.578846, 36.976879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657478, 35.749989, 37.801075>,  <35.880638, 35.335590, 37.316139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657478, 35.749989, 37.801075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360924, 35.670132, 37.544800>,  <35.182991, 35.622215, 37.391033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.360924, 35.670132, 37.544800>,  <35.657478, 35.749989, 37.801075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360924, 35.670132, 37.544800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651032, -0.017611, 0.758846,
		-0.162783, 0.979710, -0.116919,
		-0.741390, -0.199645, -0.640689,
		35.138508, 35.610237, 37.352592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105045, 36.171993, 37.905094>,  <35.657478, 35.749989, 37.801075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105045, 36.171993, 37.905094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928528, 35.857861, 37.731419>,  <34.822617, 35.669380, 37.627213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928528, 35.857861, 37.731419>,  <35.105045, 36.171993, 37.905094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928528, 35.857861, 37.731419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665833, -0.037826, 0.745142,
		-0.601607, 0.617918, -0.506208,
		-0.441289, -0.785332, -0.434186,
		34.796143, 35.622261, 37.601162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490173, 36.239609, 38.084995>,  <35.105045, 36.171993, 37.905094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490173, 36.239609, 38.084995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465988, 35.872707, 37.927517>,  <34.451477, 35.652569, 37.833031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.465988, 35.872707, 37.927517>,  <34.490173, 36.239609, 38.084995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465988, 35.872707, 37.927517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654623, -0.261311, 0.709356,
		-0.753534, 0.300614, -0.584652,
		-0.060466, -0.917250, -0.393695,
		34.447849, 35.597534, 37.809410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729774, 36.071503, 38.036285>,  <34.490173, 36.239609, 38.084995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729774, 36.071503, 38.036285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930893, 35.725742, 38.037666>,  <34.051563, 35.518288, 38.038494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930893, 35.725742, 38.037666>,  <33.729774, 36.071503, 38.036285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930893, 35.725742, 38.037666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704610, -0.407531, 0.580899,
		-0.500723, -0.294504, -0.813968,
		0.502795, -0.864399, 0.003450,
		34.081730, 35.466423, 38.038704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269405, 35.518204, 37.843708>,  <33.729774, 36.071503, 38.036285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269405, 35.518204, 37.843708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561661, 35.339428, 38.050167>,  <33.737015, 35.232162, 38.174042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561661, 35.339428, 38.050167>,  <33.269405, 35.518204, 37.843708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561661, 35.339428, 38.050167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682233, -0.448143, 0.577690,
		-0.026885, -0.774217, -0.632349,
		0.730640, -0.446941, 0.516148,
		33.780853, 35.205345, 38.205013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087349, 34.749695, 37.875919>,  <33.269405, 35.518204, 37.843708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087349, 34.749695, 37.875919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337826, 34.810898, 38.181721>,  <33.488113, 34.847618, 38.365204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337826, 34.810898, 38.181721>,  <33.087349, 34.749695, 37.875919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337826, 34.810898, 38.181721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500576, -0.672866, 0.544678,
		0.597747, -0.723769, -0.344756,
		0.626196, 0.153003, 0.764506,
		33.525684, 34.856800, 38.411072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776482, 34.242107, 37.382736>,  <33.087349, 34.749695, 37.875919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776482, 34.242107, 37.382736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407131, 34.161312, 37.252155>,  <32.185520, 34.112835, 37.173805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407131, 34.161312, 37.252155>,  <32.776482, 34.242107, 37.382736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407131, 34.161312, 37.252155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149940, 0.593068, -0.791068,
		0.353398, -0.779403, -0.517340,
		-0.923378, -0.201992, -0.326453,
		32.130119, 34.100716, 37.154221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864826, 33.986370, 36.675014>,  <32.776482, 34.242107, 37.382736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864826, 33.986370, 36.675014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483246, 34.103462, 36.701176>,  <32.254295, 34.173717, 36.716873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483246, 34.103462, 36.701176>,  <32.864826, 33.986370, 36.675014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483246, 34.103462, 36.701176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053102, 0.379434, -0.923694,
		-0.295210, -0.877690, -0.377508,
		-0.953956, 0.292730, 0.065405,
		32.197060, 34.191280, 36.720798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664520, 33.653034, 36.063931>,  <32.864826, 33.986370, 36.675014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664520, 33.653034, 36.063931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377926, 33.907818, 36.177723>,  <32.205971, 34.060688, 36.245998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377926, 33.907818, 36.177723>,  <32.664520, 33.653034, 36.063931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377926, 33.907818, 36.177723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130969, 0.277731, -0.951689,
		-0.685198, -0.719130, -0.115568,
		-0.716486, 0.636960, 0.284484,
		32.162979, 34.098907, 36.263069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133717, 33.604538, 35.601021>,  <32.664520, 33.653034, 36.063931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133717, 33.604538, 35.601021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080719, 33.978100, 35.733845>,  <32.048920, 34.202236, 35.813541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080719, 33.978100, 35.733845>,  <32.133717, 33.604538, 35.601021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080719, 33.978100, 35.733845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033182, 0.339008, -0.940198,
		-0.990628, -0.113550, -0.075905,
		-0.132492, 0.933906, 0.332063,
		32.040970, 34.258270, 35.833466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601809, 33.952698, 35.140739>,  <32.133717, 33.604538, 35.601021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601809, 33.952698, 35.140739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784698, 34.255367, 35.327671>,  <31.894432, 34.436970, 35.439831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784698, 34.255367, 35.327671>,  <31.601809, 33.952698, 35.140739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784698, 34.255367, 35.327671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195383, 0.598094, -0.777245,
		-0.867622, 0.264070, 0.421306,
		0.457227, 0.756671, 0.467325,
		31.921867, 34.482368, 35.467869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205334, 34.593822, 35.059700>,  <31.601809, 33.952698, 35.140739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205334, 34.593822, 35.059700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576103, 34.699184, 35.166607>,  <31.798565, 34.762402, 35.230751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576103, 34.699184, 35.166607>,  <31.205334, 34.593822, 35.059700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576103, 34.699184, 35.166607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091286, 0.532555, -0.841458,
		-0.363973, 0.804366, 0.469594,
		0.926925, 0.263400, 0.267263,
		31.854181, 34.778206, 35.246784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233204, 35.257534, 34.791000>,  <31.205334, 34.593822, 35.059700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233204, 35.257534, 34.791000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601358, 35.116547, 34.858715>,  <31.822250, 35.031956, 34.899345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.601358, 35.116547, 34.858715>,  <31.233204, 35.257534, 34.791000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601358, 35.116547, 34.858715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275534, 0.277440, -0.920385,
		0.277440, 0.893752, 0.352468,
		0.920385, -0.352468, 0.169287,
		31.877474, 35.010807, 34.909500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850256, 35.765762, 34.491230>,  <31.233204, 35.257534, 34.791000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850256, 35.765762, 34.491230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074207, 35.435787, 34.522240>,  <32.208576, 35.237801, 34.540844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074207, 35.435787, 34.522240>,  <31.850256, 35.765762, 34.491230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074207, 35.435787, 34.522240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179835, 0.029652, -0.983250,
		0.808824, 0.564440, 0.164955,
		0.559877, -0.824941, 0.077523,
		32.242172, 35.188305, 34.545498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473614, 35.904202, 34.109512>,  <31.850256, 35.765762, 34.491230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473614, 35.904202, 34.109512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439320, 35.506962, 34.141514>,  <32.418743, 35.268620, 34.160717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439320, 35.506962, 34.141514>,  <32.473614, 35.904202, 34.109512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439320, 35.506962, 34.141514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119866, -0.090001, -0.988702,
		0.989081, -0.075179, 0.126756,
		-0.085737, -0.993100, 0.080007,
		32.413597, 35.209030, 34.165516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129116, 35.617218, 33.835670>,  <32.473614, 35.904202, 34.109512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129116, 35.617218, 33.835670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846279, 35.334377, 33.833534>,  <32.676579, 35.164673, 33.832253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846279, 35.334377, 33.833534>,  <33.129116, 35.617218, 33.835670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846279, 35.334377, 33.833534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004519, 0.003027, -0.999985,
		0.707112, -0.707101, 0.001055,
		-0.707088, -0.707106, -0.005336,
		32.634151, 35.122246, 33.831932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395252, 35.160629, 33.345882>,  <33.129116, 35.617218, 33.835670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395252, 35.160629, 33.345882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006306, 35.067833, 33.356361>,  <32.772938, 35.012154, 33.362648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.006306, 35.067833, 33.356361>,  <33.395252, 35.160629, 33.345882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006306, 35.067833, 33.356361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006722, -0.084352, -0.996413,
		0.233374, -0.969052, 0.080461,
		-0.972364, -0.231996, 0.026200,
		32.714596, 34.998234, 33.364220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.356262, 34.640442, 32.895039>,  <33.395252, 35.160629, 33.345882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.356262, 34.640442, 32.895039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973083, 34.745197, 32.941929>,  <32.743176, 34.808052, 32.970062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973083, 34.745197, 32.941929>,  <33.356262, 34.640442, 32.895039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973083, 34.745197, 32.941929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189431, -0.270380, -0.943934,
		-0.215511, -0.926449, 0.308621,
		-0.957951, 0.261891, 0.117228,
		32.685699, 34.823765, 32.977097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879910, 34.161339, 32.749638>,  <33.356262, 34.640442, 32.895039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879910, 34.161339, 32.749638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681755, 34.502991, 32.686314>,  <32.562862, 34.707981, 32.648319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.681755, 34.502991, 32.686314>,  <32.879910, 34.161339, 32.749638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681755, 34.502991, 32.686314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154643, -0.266041, -0.951477,
		-0.854799, -0.446865, 0.263877,
		-0.495383, 0.854128, -0.158307,
		32.533138, 34.759228, 32.638821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146866, 34.089783, 32.580021>,  <32.879910, 34.161339, 32.749638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146866, 34.089783, 32.580021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282227, 34.433811, 32.427307>,  <32.363441, 34.640228, 32.335678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282227, 34.433811, 32.427307>,  <32.146866, 34.089783, 32.580021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282227, 34.433811, 32.427307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297848, -0.286966, -0.910460,
		-0.892620, 0.421816, 0.159060,
		0.338402, 0.860071, -0.381788,
		32.383747, 34.691833, 32.312771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520527, 33.455738, 32.397343>,  <32.146866, 34.089783, 32.580021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520527, 33.455738, 32.397343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834229, 33.366058, 32.165936>,  <33.022449, 33.312252, 32.027092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834229, 33.366058, 32.165936>,  <32.520527, 33.455738, 32.397343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834229, 33.366058, 32.165936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586041, 0.038502, -0.809366,
		0.203730, 0.973783, -0.101192,
		0.784251, -0.224195, -0.578521,
		33.069504, 33.298801, 31.992380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452049, 32.784538, 32.354908>,  <32.520527, 33.455738, 32.397343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452049, 32.784538, 32.354908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610489, 32.514961, 32.105457>,  <32.705555, 32.353214, 31.955788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610489, 32.514961, 32.105457>,  <32.452049, 32.784538, 32.354908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610489, 32.514961, 32.105457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809737, -0.063847, 0.583309,
		-0.432931, -0.736023, 0.520423,
		0.396101, -0.673938, -0.623627,
		32.729321, 32.312778, 31.918369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666512, 32.245831, 32.743359>,  <32.452049, 32.784538, 32.354908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666512, 32.245831, 32.743359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886280, 32.256546, 32.409313>,  <33.018143, 32.262978, 32.208885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886280, 32.256546, 32.409313>,  <32.666512, 32.245831, 32.743359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886280, 32.256546, 32.409313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829528, 0.102250, 0.549025,
		0.100101, -0.994398, 0.033952,
		0.549421, 0.026794, -0.835116,
		33.051105, 32.264584, 32.158779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830788, 32.596188, 33.418453>,  <32.666512, 32.245831, 32.743359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830788, 32.596188, 33.418453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225986, 32.543808, 33.385670>,  <33.463104, 32.512379, 33.366001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.225986, 32.543808, 33.385670>,  <32.830788, 32.596188, 33.418453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225986, 32.543808, 33.385670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094518, 0.092768, 0.991191,
		-0.122191, -0.987039, 0.104032,
		0.987996, -0.130948, -0.081958,
		33.522385, 32.504524, 33.361084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019600, 32.027271, 33.911396>,  <32.830788, 32.596188, 33.418453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019600, 32.027271, 33.911396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348808, 32.248264, 33.858643>,  <33.546333, 32.380859, 33.826988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348808, 32.248264, 33.858643>,  <33.019600, 32.027271, 33.911396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348808, 32.248264, 33.858643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187633, -0.045288, 0.981194,
		0.536122, -0.832292, -0.140937,
		0.823023, 0.552485, -0.131886,
		33.595715, 32.414009, 33.819077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544750, 31.670162, 34.187290>,  <33.019600, 32.027271, 33.911396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544750, 31.670162, 34.187290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651634, 32.055553, 34.180237>,  <33.715767, 32.286789, 34.176003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651634, 32.055553, 34.180237>,  <33.544750, 31.670162, 34.187290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651634, 32.055553, 34.180237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341787, -0.077648, 0.936564,
		0.900987, -0.256291, -0.350052,
		0.267214, 0.963476, -0.017638,
		33.731800, 32.344597, 34.174946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126488, 31.615288, 34.338181>,  <33.544750, 31.670162, 34.187290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126488, 31.615288, 34.338181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059738, 32.001156, 34.419731>,  <34.019688, 32.232677, 34.468662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059738, 32.001156, 34.419731>,  <34.126488, 31.615288, 34.338181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059738, 32.001156, 34.419731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327514, -0.140804, 0.934296,
		0.929993, 0.222685, -0.292446,
		-0.166877, 0.964669, 0.203879,
		34.009674, 32.290558, 34.480896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723091, 31.858212, 34.603107>,  <34.126488, 31.615288, 34.338181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723091, 31.858212, 34.603107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423752, 32.086655, 34.738052>,  <34.244148, 32.223721, 34.819019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423752, 32.086655, 34.738052>,  <34.723091, 31.858212, 34.603107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423752, 32.086655, 34.738052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305038, -0.155317, 0.939589,
		0.589006, 0.806046, -0.057979,
		-0.748347, 0.571110, 0.337358,
		34.199249, 32.257988, 34.839260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052536, 32.215096, 35.131908>,  <34.723091, 31.858212, 34.603107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052536, 32.215096, 35.131908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660698, 32.266373, 35.193821>,  <34.425594, 32.297138, 35.230968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660698, 32.266373, 35.193821>,  <35.052536, 32.215096, 35.131908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660698, 32.266373, 35.193821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119856, -0.245550, 0.961946,
		0.161319, 0.960870, 0.225176,
		-0.979597, 0.128191, 0.154778,
		34.366817, 32.304829, 35.240253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987957, 32.525761, 35.736256>,  <35.052536, 32.215096, 35.131908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987957, 32.525761, 35.736256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627357, 32.359074, 35.689518>,  <34.410999, 32.259064, 35.661476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627357, 32.359074, 35.689518>,  <34.987957, 32.525761, 35.736256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627357, 32.359074, 35.689518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006289, -0.257330, 0.966303,
		-0.432740, 0.871854, 0.229362,
		-0.901497, -0.416715, -0.116840,
		34.356907, 32.234058, 35.654465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563721, 32.726738, 36.355179>,  <34.987957, 32.525761, 35.736256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563721, 32.726738, 36.355179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402088, 32.395081, 36.200649>,  <34.305107, 32.196087, 36.107933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402088, 32.395081, 36.200649>,  <34.563721, 32.726738, 36.355179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402088, 32.395081, 36.200649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166942, -0.348399, 0.922361,
		-0.899361, 0.437201, 0.002363,
		-0.404080, -0.829140, -0.386323,
		34.280865, 32.146339, 36.084751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904354, 32.721825, 36.571285>,  <34.563721, 32.726738, 36.355179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904354, 32.721825, 36.571285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923359, 32.336903, 36.464165>,  <33.934761, 32.105949, 36.399891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923359, 32.336903, 36.464165>,  <33.904354, 32.721825, 36.571285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923359, 32.336903, 36.464165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401019, -0.263924, 0.877227,
		-0.914837, 0.065714, -0.398442,
		0.047513, -0.962302, -0.267800,
		33.937614, 32.048210, 36.383823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219521, 32.381966, 36.617214>,  <33.904354, 32.721825, 36.571285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219521, 32.381966, 36.617214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474522, 32.073856, 36.623924>,  <33.627522, 31.888992, 36.627949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.474522, 32.073856, 36.623924>,  <33.219521, 32.381966, 36.617214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474522, 32.073856, 36.623924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604218, -0.486327, 0.631195,
		-0.478018, -0.412538, -0.775443,
		0.637510, -0.770259, 0.016790,
		33.665771, 31.842775, 36.628956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802357, 31.709242, 36.412777>,  <33.219521, 32.381966, 36.617214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802357, 31.709242, 36.412777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143978, 31.591160, 36.584103>,  <33.348949, 31.520311, 36.686897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143978, 31.591160, 36.584103>,  <32.802357, 31.709242, 36.412777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143978, 31.591160, 36.584103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519956, -0.509034, 0.685952,
		0.015529, -0.808541, -0.588235,
		0.854052, -0.295204, 0.428311,
		33.400192, 31.502598, 36.712597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818550, 30.973034, 36.508560>,  <32.802357, 31.709242, 36.412777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818550, 30.973034, 36.508560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092163, 31.085688, 36.777718>,  <33.256329, 31.153280, 36.939213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.092163, 31.085688, 36.777718>,  <32.818550, 30.973034, 36.508560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092163, 31.085688, 36.777718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492091, -0.502789, 0.710668,
		0.538472, -0.817243, -0.205333,
		0.684028, 0.281632, 0.672896,
		33.297371, 31.170177, 36.979588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146465, 30.324568, 36.752861>,  <32.818550, 30.973034, 36.508560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146465, 30.324568, 36.752861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199272, 30.606436, 37.031719>,  <33.230957, 30.775557, 37.199036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199272, 30.606436, 37.031719>,  <33.146465, 30.324568, 36.752861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199272, 30.606436, 37.031719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355543, -0.622839, 0.696894,
		0.925289, -0.339869, 0.168314,
		0.132020, 0.704671, 0.697144,
		33.238876, 30.817837, 37.240864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330757, 29.972687, 37.324596>,  <33.146465, 30.324568, 36.752861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330757, 29.972687, 37.324596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245834, 30.329130, 37.485020>,  <33.194881, 30.542997, 37.581272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245834, 30.329130, 37.485020>,  <33.330757, 29.972687, 37.324596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245834, 30.329130, 37.485020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543111, -0.448790, 0.709660,
		0.812376, -0.067150, 0.579255,
		-0.212310, 0.891111, 0.401056,
		33.182140, 30.596464, 37.605335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682350, 29.970314, 38.036297>,  <33.330757, 29.972687, 37.324596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682350, 29.970314, 38.036297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389091, 30.242233, 38.043983>,  <33.213135, 30.405386, 38.048595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389091, 30.242233, 38.043983>,  <33.682350, 29.970314, 38.036297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389091, 30.242233, 38.043983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264513, -0.311079, 0.912832,
		0.626521, 0.664156, 0.407882,
		-0.733146, 0.679799, 0.019219,
		33.169147, 30.446173, 38.049747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665947, 30.299885, 38.722553>,  <33.682350, 29.970314, 38.036297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665947, 30.299885, 38.722553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303654, 30.312853, 38.553509>,  <33.086277, 30.320633, 38.452084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303654, 30.312853, 38.553509>,  <33.665947, 30.299885, 38.722553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303654, 30.312853, 38.553509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420504, -0.193731, 0.886366,
		-0.053137, 0.980519, 0.189101,
		-0.905733, 0.032418, -0.422607,
		33.031933, 30.322578, 38.426727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253082, 30.659517, 39.312916>,  <33.665947, 30.299885, 38.722553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253082, 30.659517, 39.312916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985737, 30.516878, 39.051800>,  <32.825329, 30.431295, 38.895130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985737, 30.516878, 39.051800>,  <33.253082, 30.659517, 39.312916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985737, 30.516878, 39.051800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604596, -0.250795, 0.756020,
		-0.433309, 0.899968, -0.047975,
		-0.668361, -0.356596, -0.652789,
		32.785229, 30.409899, 38.855965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583759, 30.766081, 39.703777>,  <33.253082, 30.659517, 39.312916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583759, 30.766081, 39.703777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508236, 30.485575, 39.428802>,  <32.462921, 30.317270, 39.263817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508236, 30.485575, 39.428802>,  <32.583759, 30.766081, 39.703777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508236, 30.485575, 39.428802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514333, -0.525718, 0.677556,
		-0.836548, 0.481502, -0.261425,
		-0.188809, -0.701267, -0.687441,
		32.451591, 30.275194, 39.222569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893848, 30.732836, 39.692593>,  <32.583759, 30.766081, 39.703777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893848, 30.732836, 39.692593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020466, 30.382608, 39.546619>,  <32.096436, 30.172472, 39.459034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020466, 30.382608, 39.546619>,  <31.893848, 30.732836, 39.692593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020466, 30.382608, 39.546619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540431, -0.482636, 0.689199,
		-0.779573, -0.020940, -0.625961,
		0.316543, -0.875570, -0.364934,
		32.115429, 30.119938, 39.437138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340012, 30.248512, 39.744625>,  <31.893848, 30.732836, 39.692593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340012, 30.248512, 39.744625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642321, 29.997635, 39.669323>,  <31.823706, 29.847109, 39.624142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642321, 29.997635, 39.669323>,  <31.340012, 30.248512, 39.744625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642321, 29.997635, 39.669323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417890, -0.683273, 0.598753,
		-0.504161, -0.373853, -0.778496,
		0.755771, -0.627193, -0.188250,
		31.869051, 29.809477, 39.612846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960447, 29.675194, 39.542160>,  <31.340012, 30.248512, 39.744625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960447, 29.675194, 39.542160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338264, 29.576036, 39.628315>,  <31.564955, 29.516542, 39.680008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338264, 29.576036, 39.628315>,  <30.960447, 29.675194, 39.542160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338264, 29.576036, 39.628315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321420, -0.832303, 0.451621,
		0.067314, -0.495804, -0.865822,
		0.944541, -0.247892, 0.215387,
		31.621626, 29.501669, 39.692932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.991898, 28.982365, 39.423027>,  <30.960447, 29.675194, 39.542160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.991898, 28.982365, 39.423027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306429, 29.047266, 39.661476>,  <31.495148, 29.086206, 39.804546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306429, 29.047266, 39.661476>,  <30.991898, 28.982365, 39.423027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306429, 29.047266, 39.661476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287968, -0.757413, 0.586004,
		0.546594, -0.632455, -0.548850,
		0.786327, 0.162255, 0.596124,
		31.542328, 29.095942, 39.840313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251051, 28.281036, 39.584785>,  <30.991898, 28.982365, 39.423027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251051, 28.281036, 39.584785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398779, 28.525991, 39.864380>,  <31.487415, 28.672964, 40.032139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.398779, 28.525991, 39.864380>,  <31.251051, 28.281036, 39.584785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.398779, 28.525991, 39.864380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288519, -0.639437, 0.712655,
		0.883380, -0.464869, -0.059471,
		0.369319, 0.612387, 0.698989,
		31.509575, 28.709707, 40.074078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800430, 27.911180, 40.035942>,  <31.251051, 28.281036, 39.584785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800430, 27.911180, 40.035942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619703, 28.203789, 40.240189>,  <31.511267, 28.379354, 40.362740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.619703, 28.203789, 40.240189>,  <31.800430, 27.911180, 40.035942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.619703, 28.203789, 40.240189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236775, -0.650178, 0.721946,
		0.860114, 0.205287, 0.466969,
		-0.451819, 0.731522, 0.510621,
		31.484158, 28.423246, 40.393375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026451, 27.854895, 40.725986>,  <31.800430, 27.911180, 40.035942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026451, 27.854895, 40.725986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695564, 28.078411, 40.749527>,  <31.497032, 28.212521, 40.763653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695564, 28.078411, 40.749527>,  <32.026451, 27.854895, 40.725986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695564, 28.078411, 40.749527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312837, -0.545037, 0.777861,
		0.466739, 0.625049, 0.625674,
		-0.827217, 0.558792, 0.058852,
		31.447399, 28.246048, 40.767181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633926, 27.850655, 41.291389>,  <32.026451, 27.854895, 40.725986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633926, 27.850655, 41.291389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931377, 27.632248, 41.445728>,  <33.109848, 27.501204, 41.538334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.931377, 27.632248, 41.445728>,  <32.633926, 27.850655, 41.291389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931377, 27.632248, 41.445728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602984, 0.298385, -0.739849,
		0.288840, 0.782834, 0.551128,
		0.743628, -0.546019, 0.385851,
		33.154465, 27.468443, 41.561485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269539, 28.237106, 41.301495>,  <32.633926, 27.850655, 41.291389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269539, 28.237106, 41.301495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361588, 27.849689, 41.263611>,  <33.416817, 27.617239, 41.240883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361588, 27.849689, 41.263611>,  <33.269539, 28.237106, 41.301495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361588, 27.849689, 41.263611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445613, 0.191389, -0.874528,
		0.865143, 0.159048, 0.475638,
		0.230124, -0.968542, -0.094705,
		33.430626, 27.559126, 41.235199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986374, 28.169153, 41.247196>,  <33.269539, 28.237106, 41.301495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986374, 28.169153, 41.247196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858223, 27.823263, 41.092480>,  <33.781330, 27.615728, 40.999649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858223, 27.823263, 41.092480>,  <33.986374, 28.169153, 41.247196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858223, 27.823263, 41.092480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511189, 0.185936, -0.839115,
		0.797523, -0.466556, 0.382469,
		-0.320379, -0.864727, -0.386787,
		33.762108, 27.563845, 40.976444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567944, 27.923996, 40.921688>,  <33.986374, 28.169153, 41.247196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567944, 27.923996, 40.921688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285576, 27.698837, 40.749722>,  <34.116154, 27.563742, 40.646542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285576, 27.698837, 40.749722>,  <34.567944, 27.923996, 40.921688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285576, 27.698837, 40.749722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450525, 0.111511, -0.885772,
		0.546538, -0.818971, 0.174880,
		-0.705921, -0.562896, -0.429912,
		34.073799, 27.529968, 40.620747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956097, 27.426481, 40.449444>,  <34.567944, 27.923996, 40.921688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956097, 27.426481, 40.449444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575909, 27.436790, 40.325550>,  <34.347794, 27.442976, 40.251213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575909, 27.436790, 40.325550>,  <34.956097, 27.426481, 40.449444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575909, 27.436790, 40.325550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304188, -0.127362, -0.944060,
		-0.063777, -0.991521, 0.113216,
		-0.950475, 0.025771, -0.309732,
		34.290768, 27.444523, 40.232632>
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
