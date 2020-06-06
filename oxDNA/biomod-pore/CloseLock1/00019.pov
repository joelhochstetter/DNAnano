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
	<24.109320, 35.034161, 34.911736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447021, 35.125732, 35.105572>,  <24.649643, 35.180676, 35.221874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.447021, 35.125732, 35.105572>,  <24.109320, 35.034161, 34.911736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.447021, 35.125732, 35.105572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502832, -0.025477, -0.864009,
		-0.185452, 0.973109, -0.136623,
		0.844256, 0.228930, 0.484586,
		24.700298, 35.194412, 35.250946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.402416, 35.528950, 34.614208>,  <24.109320, 35.034161, 34.911736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.402416, 35.528950, 34.614208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718622, 35.353455, 34.785133>,  <24.908346, 35.248158, 34.887688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.718622, 35.353455, 34.785133>,  <24.402416, 35.528950, 34.614208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.718622, 35.353455, 34.785133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485771, 0.024268, -0.873749,
		0.372974, 0.898289, 0.232309,
		0.790517, -0.438735, 0.427311,
		24.955778, 35.221832, 34.913326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947966, 35.855278, 34.472389>,  <24.402416, 35.528950, 34.614208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947966, 35.855278, 34.472389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080866, 35.482422, 34.529972>,  <25.160606, 35.258709, 34.564522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080866, 35.482422, 34.529972>,  <24.947966, 35.855278, 34.472389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080866, 35.482422, 34.529972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488250, 0.039390, -0.871815,
		0.806983, 0.359948, 0.468205,
		0.332251, -0.932140, 0.143957,
		25.180542, 35.202782, 34.573158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.716825, 35.696911, 34.619644>,  <24.947966, 35.855278, 34.472389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.716825, 35.696911, 34.619644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539764, 35.396042, 34.424381>,  <25.433529, 35.215523, 34.307224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539764, 35.396042, 34.424381>,  <25.716825, 35.696911, 34.619644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539764, 35.396042, 34.424381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616410, 0.140126, -0.774857,
		0.651229, -0.643898, 0.401618,
		-0.442652, -0.752170, -0.488159,
		25.406969, 35.170391, 34.277935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231085, 35.364254, 34.286266>,  <25.716825, 35.696911, 34.619644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231085, 35.364254, 34.286266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914364, 35.233051, 34.080177>,  <25.724331, 35.154327, 33.956524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914364, 35.233051, 34.080177>,  <26.231085, 35.364254, 34.286266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914364, 35.233051, 34.080177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533152, 0.040364, -0.845056,
		0.297985, -0.943811, 0.142919,
		-0.791804, -0.328012, -0.515223,
		25.676823, 35.134647, 33.925610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697723, 35.568588, 33.633347>,  <26.231085, 35.364254, 34.286266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697723, 35.568588, 33.633347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060492, 35.721569, 33.562660>,  <27.278152, 35.813358, 33.520248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060492, 35.721569, 33.562660>,  <26.697723, 35.568588, 33.633347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060492, 35.721569, 33.562660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115896, -0.176788, -0.977402,
		-0.405049, 0.906905, -0.116008,
		0.906920, 0.382451, -0.176714,
		27.332567, 35.836304, 33.509647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640846, 36.104656, 33.121120>,  <26.697723, 35.568588, 33.633347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640846, 36.104656, 33.121120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011269, 35.954250, 33.108223>,  <27.233522, 35.864006, 33.100483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.011269, 35.954250, 33.108223>,  <26.640846, 36.104656, 33.121120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011269, 35.954250, 33.108223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046744, -0.029502, -0.998471,
		0.374484, 0.926146, -0.044897,
		0.926054, -0.376010, -0.032244,
		27.289085, 35.841446, 33.098549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.999031, 36.581841, 32.729401>,  <26.640846, 36.104656, 33.121120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.999031, 36.581841, 32.729401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200294, 36.238705, 32.687538>,  <27.321053, 36.032825, 32.662422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.200294, 36.238705, 32.687538>,  <26.999031, 36.581841, 32.729401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.200294, 36.238705, 32.687538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021318, 0.108745, -0.993841,
		0.863932, 0.502289, 0.036428,
		0.503156, -0.857835, -0.104656,
		27.351242, 35.981354, 32.656143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573051, 36.709091, 32.205830>,  <26.999031, 36.581841, 32.729401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573051, 36.709091, 32.205830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560896, 36.309341, 32.213139>,  <27.553602, 36.069492, 32.217525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560896, 36.309341, 32.213139>,  <27.573051, 36.709091, 32.205830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560896, 36.309341, 32.213139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042745, -0.016968, -0.998942,
		0.998624, -0.031136, -0.042202,
		-0.030387, -0.999371, 0.018276,
		27.551781, 36.009529, 32.218620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.960995, 36.561874, 31.626343>,  <27.573051, 36.709091, 32.205830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.960995, 36.561874, 31.626343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817760, 36.199142, 31.715282>,  <27.731819, 35.981503, 31.768646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817760, 36.199142, 31.715282>,  <27.960995, 36.561874, 31.626343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817760, 36.199142, 31.715282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094311, -0.272049, -0.957650,
		0.928914, -0.321951, 0.182940,
		-0.358085, -0.906828, 0.222347,
		27.710335, 35.927094, 31.781986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491901, 36.039268, 31.531639>,  <27.960995, 36.561874, 31.626343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491901, 36.039268, 31.531639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123226, 35.890625, 31.487097>,  <27.902021, 35.801441, 31.460371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123226, 35.890625, 31.487097>,  <28.491901, 36.039268, 31.531639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123226, 35.890625, 31.487097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147494, -0.070187, -0.986569,
		0.358801, -0.925733, 0.119500,
		-0.921687, -0.371607, -0.111357,
		27.846720, 35.779144, 31.453690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465466, 35.559811, 30.823334>,  <28.491901, 36.039268, 31.531639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465466, 35.559811, 30.823334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075369, 35.600357, 30.901949>,  <27.841311, 35.624687, 30.949118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075369, 35.600357, 30.901949>,  <28.465466, 35.559811, 30.823334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075369, 35.600357, 30.901949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195012, 0.024829, -0.980487,
		-0.104270, -0.994539, -0.004446,
		-0.975243, 0.101368, 0.196536,
		27.782797, 35.630768, 30.960909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141518, 35.114487, 30.271475>,  <28.465466, 35.559811, 30.823334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141518, 35.114487, 30.271475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844717, 35.348328, 30.402733>,  <27.666637, 35.488632, 30.481487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844717, 35.348328, 30.402733>,  <28.141518, 35.114487, 30.271475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844717, 35.348328, 30.402733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258516, 0.202115, -0.944626,
		-0.618552, -0.785743, 0.001160,
		-0.741999, 0.584600, 0.328146,
		27.622118, 35.523708, 30.501177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445492, 34.959801, 29.852552>,  <28.141518, 35.114487, 30.271475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445492, 34.959801, 29.852552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387432, 35.328499, 29.996393>,  <27.352596, 35.549717, 30.082699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387432, 35.328499, 29.996393>,  <27.445492, 34.959801, 29.852552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387432, 35.328499, 29.996393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297208, 0.306048, -0.904435,
		-0.943716, -0.238156, 0.229527,
		-0.145150, 0.921746, 0.359604,
		27.343887, 35.605022, 30.104275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.729572, 35.179749, 29.673140>,  <27.445492, 34.959801, 29.852552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.729572, 35.179749, 29.673140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926945, 35.515522, 29.764244>,  <27.045368, 35.716988, 29.818907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926945, 35.515522, 29.764244>,  <26.729572, 35.179749, 29.673140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926945, 35.515522, 29.764244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304363, 0.411943, -0.858875,
		-0.814795, 0.354472, 0.458758,
		0.493429, 0.839436, 0.227761,
		27.074974, 35.767353, 29.832573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307743, 35.783791, 29.421946>,  <26.729572, 35.179749, 29.673140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307743, 35.783791, 29.421946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671047, 35.943752, 29.471163>,  <26.889030, 36.039730, 29.500692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.671047, 35.943752, 29.471163>,  <26.307743, 35.783791, 29.421946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.671047, 35.943752, 29.471163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142244, 0.571690, -0.808046,
		-0.393479, 0.716415, 0.576128,
		0.908263, 0.399900, 0.123042,
		26.943525, 36.063721, 29.508076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.237087, 36.584827, 29.364277>,  <26.307743, 35.783791, 29.421946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.237087, 36.584827, 29.364277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617493, 36.489788, 29.285162>,  <26.845736, 36.432762, 29.237694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.617493, 36.489788, 29.285162>,  <26.237087, 36.584827, 29.364277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.617493, 36.489788, 29.285162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020454, 0.686732, -0.726623,
		0.308473, 0.686983, 0.657951,
		0.951013, -0.237601, -0.197786,
		26.902796, 36.418507, 29.225826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480480, 37.225761, 29.116365>,  <26.237087, 36.584827, 29.364277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480480, 37.225761, 29.116365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761383, 36.963623, 29.005112>,  <26.929924, 36.806339, 28.938358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761383, 36.963623, 29.005112>,  <26.480480, 37.225761, 29.116365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761383, 36.963623, 29.005112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219139, 0.570698, -0.791380,
		0.677357, 0.494802, 0.544389,
		0.702257, -0.655343, -0.278136,
		26.972061, 36.767021, 28.921671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123781, 37.589943, 28.964855>,  <26.480480, 37.225761, 29.116365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123781, 37.589943, 28.964855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139908, 37.244720, 28.763458>,  <27.149584, 37.037586, 28.642620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.139908, 37.244720, 28.763458>,  <27.123781, 37.589943, 28.964855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139908, 37.244720, 28.763458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198700, 0.500762, -0.842470,
		0.979231, -0.066080, 0.191678,
		0.040315, -0.863059, -0.503492,
		27.152002, 36.985802, 28.612411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621696, 37.736622, 28.503914>,  <27.123781, 37.589943, 28.964855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621696, 37.736622, 28.503914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451832, 37.407143, 28.353615>,  <27.349913, 37.209454, 28.263435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.451832, 37.407143, 28.353615>,  <27.621696, 37.736622, 28.503914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451832, 37.407143, 28.353615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112162, 0.363969, -0.924634,
		0.898379, -0.434799, -0.062175,
		-0.424659, -0.823698, -0.375749,
		27.324434, 37.160034, 28.240891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139595, 37.473972, 28.037563>,  <27.621696, 37.736622, 28.503914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139595, 37.473972, 28.037563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773100, 37.341167, 27.947868>,  <27.553204, 37.261486, 27.894053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773100, 37.341167, 27.947868>,  <28.139595, 37.473972, 28.037563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773100, 37.341167, 27.947868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116630, 0.314420, -0.942092,
		0.383289, -0.889331, -0.249360,
		-0.916235, -0.332011, -0.224236,
		27.498230, 37.241566, 27.880598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137543, 37.166668, 27.355566>,  <28.139595, 37.473972, 28.037563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137543, 37.166668, 27.355566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748396, 37.248474, 27.398842>,  <27.514908, 37.297558, 27.424807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748396, 37.248474, 27.398842>,  <28.137543, 37.166668, 27.355566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748396, 37.248474, 27.398842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032069, 0.343884, -0.938464,
		-0.229139, -0.916469, -0.327994,
		-0.972865, 0.204520, 0.108188,
		27.456535, 37.309830, 27.431297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907627, 37.061054, 26.687414>,  <28.137543, 37.166668, 27.355566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907627, 37.061054, 26.687414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610487, 37.265682, 26.860144>,  <27.432203, 37.388458, 26.963781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610487, 37.265682, 26.860144>,  <27.907627, 37.061054, 26.687414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610487, 37.265682, 26.860144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199623, 0.446424, -0.872271,
		-0.639004, -0.734167, -0.229504,
		-0.742849, 0.511571, 0.431823,
		27.387632, 37.419155, 26.989691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189188, 36.857948, 26.336987>,  <27.907627, 37.061054, 26.687414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189188, 36.857948, 26.336987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156786, 37.229691, 26.481066>,  <27.137344, 37.452736, 26.567513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156786, 37.229691, 26.481066>,  <27.189188, 36.857948, 26.336987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156786, 37.229691, 26.481066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073201, 0.354861, -0.932049,
		-0.994022, -0.101867, 0.039284,
		-0.081005, 0.929353, 0.360196,
		27.132484, 37.508495, 26.589125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905140, 36.438694, 26.341743>,  <27.189188, 36.857948, 26.336987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905140, 36.438694, 26.341743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227280, 36.659264, 26.428776>,  <28.420563, 36.791607, 26.480995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.227280, 36.659264, 26.428776>,  <27.905140, 36.438694, 26.341743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227280, 36.659264, 26.428776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344501, -0.136662, -0.928786,
		-0.482422, 0.822953, -0.300028,
		0.805349, 0.551427, 0.217579,
		28.468885, 36.824692, 26.494049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935680, 36.938477, 25.774618>,  <27.905140, 36.438694, 26.341743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935680, 36.938477, 25.774618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263258, 36.806946, 25.962748>,  <28.459805, 36.728027, 26.075626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263258, 36.806946, 25.962748>,  <27.935680, 36.938477, 25.774618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263258, 36.806946, 25.962748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330672, -0.399446, -0.855043,
		0.469027, 0.855756, -0.218391,
		0.818944, -0.328823, 0.470326,
		28.508942, 36.708298, 26.103846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595337, 37.183506, 25.423548>,  <27.935680, 36.938477, 25.774618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595337, 37.183506, 25.423548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635555, 36.836555, 25.618504>,  <28.659687, 36.628384, 25.735477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.635555, 36.836555, 25.618504>,  <28.595337, 37.183506, 25.423548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.635555, 36.836555, 25.618504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388350, -0.416797, -0.821866,
		0.916010, 0.271914, 0.294938,
		0.100547, -0.867377, 0.487388,
		28.665720, 36.576344, 25.764721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370266, 36.967766, 25.678553>,  <28.595337, 37.183506, 25.423548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370266, 36.967766, 25.678553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146664, 36.647934, 25.590748>,  <29.012501, 36.456036, 25.538065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.146664, 36.647934, 25.590748>,  <29.370266, 36.967766, 25.678553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146664, 36.647934, 25.590748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613653, -0.220915, -0.758041,
		0.557620, -0.558455, 0.614157,
		-0.559008, -0.799578, -0.219511,
		28.978962, 36.408062, 25.524895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825769, 36.322273, 25.610010>,  <29.370266, 36.967766, 25.678553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825769, 36.322273, 25.610010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490772, 36.259911, 25.400517>,  <29.289774, 36.222492, 25.274820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490772, 36.259911, 25.400517>,  <29.825769, 36.322273, 25.610010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490772, 36.259911, 25.400517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545788, -0.285705, -0.787711,
		-0.026828, -0.945551, 0.324366,
		-0.837494, -0.155903, -0.523735,
		29.239525, 36.213139, 25.243397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125002, 36.467354, 24.968542>,  <29.825769, 36.322273, 25.610010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125002, 36.467354, 24.968542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207621, 36.845505, 24.867668>,  <30.257193, 37.072395, 24.807144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.207621, 36.845505, 24.867668>,  <30.125002, 36.467354, 24.968542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207621, 36.845505, 24.867668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910169, -0.091057, 0.404104,
		0.359068, -0.312999, -0.879262,
		0.206547, 0.945378, -0.252187,
		30.269585, 37.129120, 24.792011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824474, 36.513783, 24.845469>,  <30.125002, 36.467354, 24.968542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824474, 36.513783, 24.845469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740093, 36.900928, 24.900209>,  <30.689465, 37.133217, 24.933054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740093, 36.900928, 24.900209>,  <30.824474, 36.513783, 24.845469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740093, 36.900928, 24.900209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916010, 0.146868, 0.373304,
		0.341210, 0.204109, -0.917560,
		-0.210955, 0.967869, 0.136853,
		30.676807, 37.191288, 24.941265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421835, 36.814476, 24.494087>,  <30.824474, 36.513783, 24.845469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421835, 36.814476, 24.494087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248938, 36.979359, 24.814899>,  <31.145199, 37.078289, 25.007387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.248938, 36.979359, 24.814899>,  <31.421835, 36.814476, 24.494087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248938, 36.979359, 24.814899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825846, -0.176225, 0.535652,
		0.362136, 0.893886, -0.264244,
		-0.432245, 0.412204, 0.802030,
		31.119265, 37.103020, 25.055508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805548, 37.347637, 24.755808>,  <31.421835, 36.814476, 24.494087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805548, 37.347637, 24.755808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609671, 37.167774, 25.054609>,  <31.492146, 37.059856, 25.233891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609671, 37.167774, 25.054609>,  <31.805548, 37.347637, 24.755808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609671, 37.167774, 25.054609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825709, 0.035985, 0.562947,
		-0.280013, 0.892477, 0.353664,
		-0.489690, -0.449656, 0.747002,
		31.462763, 37.032879, 25.278709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113056, 37.702374, 25.366413>,  <31.805548, 37.347637, 24.755808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113056, 37.702374, 25.366413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926954, 37.358910, 25.452429>,  <31.815294, 37.152832, 25.504038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926954, 37.358910, 25.452429>,  <32.113056, 37.702374, 25.366413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926954, 37.358910, 25.452429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741418, -0.245300, 0.624602,
		-0.483572, 0.450031, 0.750753,
		-0.465250, -0.858661, 0.215041,
		31.787378, 37.101311, 25.516941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827019, 37.804543, 25.545156>,  <32.113056, 37.702374, 25.366413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827019, 37.804543, 25.545156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042072, 38.140640, 25.517073>,  <33.171104, 38.342300, 25.500223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.042072, 38.140640, 25.517073>,  <32.827019, 37.804543, 25.545156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042072, 38.140640, 25.517073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393556, 0.323714, 0.860420,
		0.745695, -0.434961, 0.504725,
		0.537635, 0.840249, -0.070210,
		33.203362, 38.392715, 25.496010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257702, 37.837452, 26.157446>,  <32.827019, 37.804543, 25.545156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257702, 37.837452, 26.157446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065670, 38.147339, 25.992847>,  <32.950451, 38.333271, 25.894089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065670, 38.147339, 25.992847>,  <33.257702, 37.837452, 26.157446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065670, 38.147339, 25.992847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592766, 0.059290, 0.803190,
		0.646644, 0.629520, 0.430763,
		-0.480084, 0.774719, -0.411498,
		32.921646, 38.379753, 25.869398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389519, 38.400963, 26.614553>,  <33.257702, 37.837452, 26.157446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389519, 38.400963, 26.614553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060120, 38.476902, 26.400705>,  <32.862480, 38.522465, 26.272396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060120, 38.476902, 26.400705>,  <33.389519, 38.400963, 26.614553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060120, 38.476902, 26.400705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509441, 0.167236, 0.844098,
		0.249656, 0.967466, -0.041003,
		-0.823493, 0.189846, -0.534619,
		32.813072, 38.533855, 26.240320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014267, 38.971481, 26.998739>,  <33.389519, 38.400963, 26.614553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014267, 38.971481, 26.998739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749077, 38.785358, 26.764151>,  <32.589962, 38.673683, 26.623398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749077, 38.785358, 26.764151>,  <33.014267, 38.971481, 26.998739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749077, 38.785358, 26.764151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632173, -0.071674, 0.771505,
		-0.401024, 0.882241, -0.246639,
		-0.662976, -0.465310, -0.586472,
		32.550182, 38.645767, 26.588209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340908, 39.264332, 27.240204>,  <33.014267, 38.971481, 26.998739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340908, 39.264332, 27.240204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258369, 38.946537, 27.011745>,  <32.208847, 38.755859, 26.874670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258369, 38.946537, 27.011745>,  <32.340908, 39.264332, 27.240204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258369, 38.946537, 27.011745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771734, -0.226705, 0.594165,
		-0.601539, 0.563376, -0.566355,
		-0.206343, -0.794489, -0.571149,
		32.196468, 38.708191, 26.840401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629704, 39.379547, 26.986801>,  <32.340908, 39.264332, 27.240204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629704, 39.379547, 26.986801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720566, 38.990013, 26.983908>,  <31.775084, 38.756294, 26.982172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720566, 38.990013, 26.983908>,  <31.629704, 39.379547, 26.986801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720566, 38.990013, 26.983908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689726, -0.166120, 0.704757,
		-0.687516, -0.155102, -0.709412,
		0.227157, -0.973832, -0.007232,
		31.788713, 38.697865, 26.981739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948473, 39.058468, 26.939472>,  <31.629704, 39.379547, 26.986801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948473, 39.058468, 26.939472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177988, 38.753101, 27.058104>,  <31.315697, 38.569881, 27.129282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177988, 38.753101, 27.058104>,  <30.948473, 39.058468, 26.939472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177988, 38.753101, 27.058104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711276, -0.284972, 0.642555,
		-0.406021, -0.579641, -0.706515,
		0.573788, -0.763418, 0.296580,
		31.350124, 38.524075, 27.147078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660074, 38.294544, 26.789986>,  <30.948473, 39.058468, 26.939472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660074, 38.294544, 26.789986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903372, 38.276295, 27.106960>,  <31.049351, 38.265347, 27.297146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.903372, 38.276295, 27.106960>,  <30.660074, 38.294544, 26.789986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903372, 38.276295, 27.106960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739295, -0.395968, 0.544658,
		0.288929, -0.917130, -0.274576,
		0.608245, -0.045625, 0.792437,
		31.085846, 38.262608, 27.344692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565321, 37.608410, 27.031837>,  <30.660074, 38.294544, 26.789986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565321, 37.608410, 27.031837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761499, 37.787659, 27.330809>,  <30.879208, 37.895210, 27.510191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761499, 37.787659, 27.330809>,  <30.565321, 37.608410, 27.031837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761499, 37.787659, 27.330809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668994, -0.356036, 0.652445,
		0.558488, -0.820014, 0.125176,
		0.490447, 0.448125, 0.747426,
		30.908634, 37.922096, 27.555037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.703474, 37.063141, 27.509327>,  <30.565321, 37.608410, 27.031837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.703474, 37.063141, 27.509327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751308, 37.397221, 27.724041>,  <30.780008, 37.597668, 27.852869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751308, 37.397221, 27.724041>,  <30.703474, 37.063141, 27.509327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751308, 37.397221, 27.724041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634360, -0.351631, 0.688435,
		0.763732, -0.422843, 0.487768,
		0.119585, 0.835200, 0.536786,
		30.787184, 37.647781, 27.885077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929411, 36.871277, 28.205715>,  <30.703474, 37.063141, 27.509327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929411, 36.871277, 28.205715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799566, 37.246502, 28.254143>,  <30.721659, 37.471638, 28.283199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799566, 37.246502, 28.254143>,  <30.929411, 36.871277, 28.205715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799566, 37.246502, 28.254143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371424, -0.244141, 0.895790,
		0.869868, 0.245817, 0.427672,
		-0.324612, 0.938067, 0.121068,
		30.702183, 37.527924, 28.290462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218285, 37.109573, 28.828190>,  <30.929411, 36.871277, 28.205715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218285, 37.109573, 28.828190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906496, 37.353962, 28.772856>,  <30.719423, 37.500595, 28.739655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906496, 37.353962, 28.772856>,  <31.218285, 37.109573, 28.828190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906496, 37.353962, 28.772856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290475, -0.156857, 0.943939,
		0.555020, 0.775958, 0.299737,
		-0.779472, 0.610971, -0.138338,
		30.672655, 37.537254, 28.731354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205101, 37.531368, 29.409504>,  <31.218285, 37.109573, 28.828190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205101, 37.531368, 29.409504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834427, 37.545689, 29.259853>,  <30.612022, 37.554279, 29.170063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834427, 37.545689, 29.259853>,  <31.205101, 37.531368, 29.409504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834427, 37.545689, 29.259853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375444, -0.133475, 0.917184,
		-0.017101, 0.990405, 0.137131,
		-0.926687, 0.035800, -0.374124,
		30.556421, 37.556427, 29.147615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889349, 37.806248, 29.906374>,  <31.205101, 37.531368, 29.409504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889349, 37.806248, 29.906374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586330, 37.645844, 29.700340>,  <30.404520, 37.549599, 29.576721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.586330, 37.645844, 29.700340>,  <30.889349, 37.806248, 29.906374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586330, 37.645844, 29.700340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458892, -0.234039, 0.857114,
		-0.464264, 0.885671, -0.006726,
		-0.757547, -0.401014, -0.515083,
		30.359066, 37.525539, 29.545815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203691, 38.141781, 30.023317>,  <30.889349, 37.806248, 29.906374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203691, 38.141781, 30.023317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136003, 37.767822, 29.898521>,  <30.095390, 37.543449, 29.823645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.136003, 37.767822, 29.898521>,  <30.203691, 38.141781, 30.023317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.136003, 37.767822, 29.898521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397283, -0.224991, 0.889688,
		-0.901959, 0.274502, -0.333344,
		-0.169222, -0.934894, -0.311988,
		30.085238, 37.487354, 29.804926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604235, 37.959812, 30.382925>,  <30.203691, 38.141781, 30.023317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604235, 37.959812, 30.382925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746283, 37.602539, 30.272566>,  <29.831511, 37.388176, 30.206350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.746283, 37.602539, 30.272566>,  <29.604235, 37.959812, 30.382925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.746283, 37.602539, 30.272566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353521, -0.401529, 0.844865,
		-0.865397, -0.202493, -0.458349,
		0.355120, -0.893180, -0.275897,
		29.852819, 37.334583, 30.189796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085001, 37.541935, 30.625423>,  <29.604235, 37.959812, 30.382925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085001, 37.541935, 30.625423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392620, 37.298656, 30.546768>,  <29.577190, 37.152691, 30.499575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.392620, 37.298656, 30.546768>,  <29.085001, 37.541935, 30.625423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392620, 37.298656, 30.546768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183803, -0.505061, 0.843285,
		-0.612198, -0.612381, -0.500203,
		0.769045, -0.608196, -0.196640,
		29.623335, 37.116199, 30.487776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844389, 36.869579, 30.773138>,  <29.085001, 37.541935, 30.625423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844389, 36.869579, 30.773138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243679, 36.881725, 30.793613>,  <29.483253, 36.889011, 30.805899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.243679, 36.881725, 30.793613>,  <28.844389, 36.869579, 30.773138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.243679, 36.881725, 30.793613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026984, -0.535669, 0.843997,
		0.053049, -0.843882, -0.533900,
		0.998227, 0.030367, 0.051188,
		29.543148, 36.890835, 30.808969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977930, 36.197762, 31.000528>,  <28.844389, 36.869579, 30.773138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977930, 36.197762, 31.000528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298159, 36.423195, 31.081972>,  <29.490295, 36.558456, 31.130838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298159, 36.423195, 31.081972>,  <28.977930, 36.197762, 31.000528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298159, 36.423195, 31.081972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155114, -0.523105, 0.838034,
		0.578811, -0.639325, -0.506203,
		0.800573, 0.563583, 0.203610,
		29.538330, 36.592270, 31.143055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486763, 35.731533, 31.240057>,  <28.977930, 36.197762, 31.000528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486763, 35.731533, 31.240057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616932, 36.089539, 31.362080>,  <29.695032, 36.304340, 31.435293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.616932, 36.089539, 31.362080>,  <29.486763, 35.731533, 31.240057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616932, 36.089539, 31.362080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267010, -0.396463, 0.878364,
		0.907088, -0.204384, -0.367994,
		0.325420, 0.895011, 0.305054,
		29.714558, 36.358040, 31.453596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028450, 35.533115, 31.555349>,  <29.486763, 35.731533, 31.240057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028450, 35.533115, 31.555349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975006, 35.903255, 31.697264>,  <29.942940, 36.125340, 31.782412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.975006, 35.903255, 31.697264>,  <30.028450, 35.533115, 31.555349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975006, 35.903255, 31.697264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231683, -0.318909, 0.919032,
		0.963572, 0.204991, -0.171778,
		-0.133612, 0.925352, 0.354785,
		29.934923, 36.180862, 31.803699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540014, 35.690491, 32.013222>,  <30.028450, 35.533115, 31.555349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540014, 35.690491, 32.013222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264290, 35.968636, 32.094540>,  <30.098856, 36.135521, 32.143330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.264290, 35.968636, 32.094540>,  <30.540014, 35.690491, 32.013222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.264290, 35.968636, 32.094540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190422, -0.096848, 0.976913,
		0.698993, 0.712109, -0.065653,
		-0.689310, 0.695357, 0.203298,
		30.057497, 36.177242, 32.155529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884010, 36.080521, 32.458103>,  <30.540014, 35.690491, 32.013222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884010, 36.080521, 32.458103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493202, 36.154774, 32.499996>,  <30.258717, 36.199326, 32.525131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.493202, 36.154774, 32.499996>,  <30.884010, 36.080521, 32.458103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493202, 36.154774, 32.499996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080182, -0.135142, 0.987577,
		0.197484, 0.973281, 0.117152,
		-0.977022, 0.185637, 0.104728,
		30.200096, 36.210464, 32.531414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908875, 36.544838, 33.025417>,  <30.884010, 36.080521, 32.458103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908875, 36.544838, 33.025417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595161, 36.306896, 32.954937>,  <30.406933, 36.164131, 32.912647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.595161, 36.306896, 32.954937>,  <30.908875, 36.544838, 33.025417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595161, 36.306896, 32.954937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208445, -0.520163, 0.828240,
		-0.584337, 0.612846, 0.531949,
		-0.784284, -0.594853, -0.176205,
		30.359877, 36.128441, 32.902077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378120, 36.476765, 33.642307>,  <30.908875, 36.544838, 33.025417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378120, 36.476765, 33.642307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392233, 36.152779, 33.408138>,  <30.400700, 35.958389, 33.267639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.392233, 36.152779, 33.408138>,  <30.378120, 36.476765, 33.642307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392233, 36.152779, 33.408138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161309, -0.573488, 0.803176,
		-0.986273, -0.122770, 0.110421,
		0.035281, -0.809962, -0.585420,
		30.402817, 35.909790, 33.232513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969746, 35.977341, 33.879883>,  <30.378120, 36.476765, 33.642307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969746, 35.977341, 33.879883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284101, 35.828423, 33.682388>,  <30.472715, 35.739071, 33.563892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284101, 35.828423, 33.682388>,  <29.969746, 35.977341, 33.879883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284101, 35.828423, 33.682388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200017, -0.602483, 0.772663,
		-0.585119, -0.705986, -0.399023,
		0.785894, -0.372288, -0.493733,
		30.519869, 35.716736, 33.534267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920872, 35.219494, 33.834290>,  <29.969746, 35.977341, 33.879883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920872, 35.219494, 33.834290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300859, 35.341827, 33.808918>,  <30.528852, 35.415230, 33.793697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300859, 35.341827, 33.808918>,  <29.920872, 35.219494, 33.834290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300859, 35.341827, 33.808918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238785, -0.580216, 0.778672,
		0.201346, -0.754860, -0.624217,
		0.949970, 0.305836, -0.063425,
		30.585850, 35.433578, 33.789890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184015, 34.801018, 34.266361>,  <29.920872, 35.219494, 33.834290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184015, 34.801018, 34.266361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430283, 35.115196, 34.240982>,  <30.578043, 35.303703, 34.225754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.430283, 35.115196, 34.240982>,  <30.184015, 34.801018, 34.266361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430283, 35.115196, 34.240982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401022, -0.242994, 0.883253,
		0.678331, -0.569235, -0.464585,
		0.615670, 0.785446, -0.063445,
		30.614985, 35.350830, 34.221947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886644, 34.720097, 34.378143>,  <30.184015, 34.801018, 34.266361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886644, 34.720097, 34.378143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847992, 35.101841, 34.491180>,  <30.824800, 35.330887, 34.559002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847992, 35.101841, 34.491180>,  <30.886644, 34.720097, 34.378143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847992, 35.101841, 34.491180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415849, -0.219239, 0.882612,
		0.904285, 0.202802, -0.375685,
		-0.096631, 0.954361, 0.282589,
		30.819002, 35.388149, 34.575958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544682, 35.108715, 34.266190>,  <30.886644, 34.720097, 34.378143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544682, 35.108715, 34.266190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313646, 35.191120, 34.582153>,  <31.175026, 35.240562, 34.771732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313646, 35.191120, 34.582153>,  <31.544682, 35.108715, 34.266190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313646, 35.191120, 34.582153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682561, -0.408891, 0.605738,
		0.447777, 0.889025, 0.095552,
		-0.577587, 0.206015, 0.789906,
		31.140369, 35.252926, 34.819126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142242, 34.827843, 34.521599>,  <31.544682, 35.108715, 34.266190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142242, 34.827843, 34.521599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259754, 34.446404, 34.495216>,  <32.330261, 34.217541, 34.479385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259754, 34.446404, 34.495216>,  <32.142242, 34.827843, 34.521599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259754, 34.446404, 34.495216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454958, -0.200178, 0.867723,
		-0.840658, -0.224913, -0.492653,
		0.293781, -0.953595, -0.065955,
		32.347889, 34.160324, 34.475430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598013, 34.341373, 34.481491>,  <32.142242, 34.827843, 34.521599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598013, 34.341373, 34.481491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899984, 34.155983, 34.667084>,  <32.081165, 34.044750, 34.778439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899984, 34.155983, 34.667084>,  <31.598013, 34.341373, 34.481491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899984, 34.155983, 34.667084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554559, -0.073497, 0.828892,
		-0.350069, -0.883057, -0.312509,
		0.754928, -0.463475, 0.463978,
		32.126461, 34.016941, 34.806278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469610, 33.525154, 34.620491>,  <31.598013, 34.341373, 34.481491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469610, 33.525154, 34.620491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732536, 33.655785, 34.892162>,  <31.890291, 33.734161, 35.055164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732536, 33.655785, 34.892162>,  <31.469610, 33.525154, 34.620491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732536, 33.655785, 34.892162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567436, -0.378609, 0.731212,
		0.495940, -0.866028, -0.063555,
		0.657313, 0.326574, 0.679183,
		31.929729, 33.753757, 35.095917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315771, 33.183388, 35.183285>,  <31.469610, 33.525154, 34.620491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315771, 33.183388, 35.183285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586239, 33.426865, 35.349319>,  <31.748520, 33.572948, 35.448940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586239, 33.426865, 35.349319>,  <31.315771, 33.183388, 35.183285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586239, 33.426865, 35.349319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276197, -0.312889, 0.908744,
		0.683018, -0.729109, -0.043447,
		0.676167, 0.608688, 0.415086,
		31.789089, 33.609470, 35.473846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760023, 32.778889, 35.854805>,  <31.315771, 33.183388, 35.183285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760023, 32.778889, 35.854805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763237, 33.176464, 35.898659>,  <31.765165, 33.415009, 35.924973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763237, 33.176464, 35.898659>,  <31.760023, 32.778889, 35.854805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763237, 33.176464, 35.898659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171921, -0.106637, 0.979322,
		0.985078, -0.026717, 0.170023,
		0.008033, 0.993939, 0.109638,
		31.765648, 33.474648, 35.931549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085144, 32.878551, 36.507133>,  <31.760023, 32.778889, 35.854805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085144, 32.878551, 36.507133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870562, 33.207844, 36.432827>,  <31.741812, 33.405418, 36.388245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.870562, 33.207844, 36.432827>,  <32.085144, 32.878551, 36.507133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870562, 33.207844, 36.432827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293471, 0.024406, 0.955656,
		0.791258, 0.567184, 0.228501,
		-0.536456, 0.823230, -0.185763,
		31.709625, 33.454811, 36.377098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226181, 33.412727, 37.058186>,  <32.085144, 32.878551, 36.507133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226181, 33.412727, 37.058186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868479, 33.510746, 36.908379>,  <31.653858, 33.569557, 36.818497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868479, 33.510746, 36.908379>,  <32.226181, 33.412727, 37.058186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868479, 33.510746, 36.908379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335678, 0.186241, 0.923382,
		0.296024, 0.951454, -0.084289,
		-0.894254, 0.245049, -0.374514,
		31.600203, 33.584259, 36.796024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046963, 33.906765, 37.505318>,  <32.226181, 33.412727, 37.058186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046963, 33.906765, 37.505318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702620, 33.837257, 37.314018>,  <31.496014, 33.795551, 37.199238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702620, 33.837257, 37.314018>,  <32.046963, 33.906765, 37.505318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702620, 33.837257, 37.314018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496766, 0.083446, 0.863863,
		-0.110204, 0.981245, -0.158158,
		-0.860859, -0.173769, -0.478253,
		31.444363, 33.785126, 37.170544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584724, 34.513447, 37.633652>,  <32.046963, 33.906765, 37.505318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584724, 34.513447, 37.633652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369747, 34.184776, 37.557758>,  <31.240761, 33.987572, 37.512222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.369747, 34.184776, 37.557758>,  <31.584724, 34.513447, 37.633652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369747, 34.184776, 37.557758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539596, 0.162175, 0.826157,
		-0.648067, 0.546389, -0.530535,
		-0.537443, -0.821680, -0.189729,
		31.208515, 33.938271, 37.500839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.104519, 34.569164, 38.124458>,  <31.584724, 34.513447, 37.633652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.104519, 34.569164, 38.124458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041597, 34.202286, 37.978035>,  <31.003843, 33.982159, 37.890179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041597, 34.202286, 37.978035>,  <31.104519, 34.569164, 38.124458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041597, 34.202286, 37.978035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564896, -0.220474, 0.795163,
		-0.810029, 0.331870, -0.483440,
		-0.157305, -0.917199, -0.366062,
		30.994406, 33.927128, 37.868217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385881, 34.476822, 38.273758>,  <31.104519, 34.569164, 38.124458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385881, 34.476822, 38.273758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566698, 34.123611, 38.223293>,  <30.675188, 33.911686, 38.193012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566698, 34.123611, 38.223293>,  <30.385881, 34.476822, 38.273758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566698, 34.123611, 38.223293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430008, -0.339648, 0.836500,
		-0.781505, -0.323882, -0.533245,
		0.452043, -0.883029, -0.126165,
		30.702311, 33.858704, 38.185444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887537, 33.887478, 38.427898>,  <30.385881, 34.476822, 38.273758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887537, 33.887478, 38.427898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251215, 33.727196, 38.473152>,  <30.469421, 33.631027, 38.500305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.251215, 33.727196, 38.473152>,  <29.887537, 33.887478, 38.427898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251215, 33.727196, 38.473152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294271, -0.426169, 0.855444,
		-0.294565, -0.811059, -0.505387,
		0.909195, -0.400704, 0.113136,
		30.523973, 33.606983, 38.507092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761604, 33.190697, 38.402847>,  <29.887537, 33.887478, 38.427898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761604, 33.190697, 38.402847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124374, 33.231449, 38.566364>,  <30.342035, 33.255901, 38.664474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124374, 33.231449, 38.566364>,  <29.761604, 33.190697, 38.402847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124374, 33.231449, 38.566364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261467, -0.624717, 0.735774,
		0.330339, -0.774176, -0.539932,
		0.906924, 0.101881, 0.408790,
		30.396452, 33.262012, 38.689003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950691, 32.518024, 38.787018>,  <29.761604, 33.190697, 38.402847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950691, 32.518024, 38.787018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246801, 32.730217, 38.952221>,  <30.424467, 32.857533, 39.051342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246801, 32.730217, 38.952221>,  <29.950691, 32.518024, 38.787018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246801, 32.730217, 38.952221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124361, -0.495672, 0.859560,
		0.660702, -0.687674, -0.300962,
		0.740276, 0.530485, 0.413011,
		30.468884, 32.889362, 39.076126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406172, 32.030563, 39.079857>,  <29.950691, 32.518024, 38.787018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406172, 32.030563, 39.079857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476126, 32.368279, 39.282475>,  <30.518099, 32.570908, 39.404045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476126, 32.368279, 39.282475>,  <30.406172, 32.030563, 39.079857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476126, 32.368279, 39.282475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210863, -0.470418, 0.856880,
		0.961744, -0.256667, 0.095761,
		0.174885, 0.844292, 0.506543,
		30.528591, 32.621567, 39.434437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772945, 31.830088, 39.600056>,  <30.406172, 32.030563, 39.079857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772945, 31.830088, 39.600056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635782, 32.185055, 39.723278>,  <30.553484, 32.398037, 39.797211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.635782, 32.185055, 39.723278>,  <30.772945, 31.830088, 39.600056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635782, 32.185055, 39.723278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305120, -0.415381, 0.856948,
		0.888435, 0.199859, 0.413207,
		-0.342908, 0.887420, 0.308058,
		30.532909, 32.451283, 39.815697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034578, 31.892786, 40.216400>,  <30.772945, 31.830088, 39.600056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034578, 31.892786, 40.216400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694338, 32.103111, 40.216599>,  <30.490194, 32.229305, 40.216717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694338, 32.103111, 40.216599>,  <31.034578, 31.892786, 40.216400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694338, 32.103111, 40.216599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233049, -0.377840, 0.896061,
		0.471349, 0.762073, 0.443931,
		-0.850599, 0.525815, 0.000494,
		30.439157, 32.260857, 40.216747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922960, 32.077534, 40.938950>,  <31.034578, 31.892786, 40.216400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922960, 32.077534, 40.938950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569864, 32.137737, 40.760910>,  <30.358007, 32.173859, 40.654087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569864, 32.137737, 40.760910>,  <30.922960, 32.077534, 40.938950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569864, 32.137737, 40.760910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468993, -0.339812, 0.815214,
		-0.028552, 0.928372, 0.370554,
		-0.882740, 0.150511, -0.445102,
		30.305042, 32.182892, 40.627380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445887, 32.384483, 41.446495>,  <30.922960, 32.077534, 40.938950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445887, 32.384483, 41.446495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205484, 32.207813, 41.180046>,  <30.061243, 32.101810, 41.020176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205484, 32.207813, 41.180046>,  <30.445887, 32.384483, 41.446495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205484, 32.207813, 41.180046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497877, -0.445086, 0.744323,
		-0.625229, 0.778988, 0.047599,
		-0.601005, -0.441674, -0.666121,
		30.025183, 32.075310, 40.980209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959433, 32.274147, 41.820965>,  <30.445887, 32.384483, 41.446495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959433, 32.274147, 41.820965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841183, 32.045040, 41.515144>,  <29.770233, 31.907576, 41.331650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.841183, 32.045040, 41.515144>,  <29.959433, 32.274147, 41.820965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.841183, 32.045040, 41.515144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507284, -0.584044, 0.633684,
		-0.809487, 0.575179, -0.117897,
		-0.295625, -0.572766, -0.764555,
		29.752495, 31.873211, 41.285778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337673, 32.027130, 41.943295>,  <29.959433, 32.274147, 41.820965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337673, 32.027130, 41.943295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395470, 31.759535, 41.651657>,  <29.430147, 31.598978, 41.476677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.395470, 31.759535, 41.651657>,  <29.337673, 32.027130, 41.943295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395470, 31.759535, 41.651657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514335, -0.680242, 0.522236,
		-0.845329, 0.299538, -0.442375,
		0.144493, -0.668990, -0.729091,
		29.438818, 31.558838, 41.432930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746992, 31.735296, 41.860165>,  <29.337673, 32.027130, 41.943295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746992, 31.735296, 41.860165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996807, 31.461311, 41.710083>,  <29.146696, 31.296921, 41.620033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996807, 31.461311, 41.710083>,  <28.746992, 31.735296, 41.860165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996807, 31.461311, 41.710083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474950, -0.714474, 0.513760,
		-0.619979, -0.142662, -0.771540,
		0.624539, -0.684963, -0.375202,
		29.184170, 31.255823, 41.597523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407120, 31.104059, 41.704140>,  <28.746992, 31.735296, 41.860165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407120, 31.104059, 41.704140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775854, 30.951849, 41.733582>,  <28.997095, 30.860523, 41.751247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775854, 30.951849, 41.733582>,  <28.407120, 31.104059, 41.704140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775854, 30.951849, 41.733582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350786, -0.738382, 0.575970,
		-0.164821, -0.556771, -0.814150,
		0.921837, -0.380524, 0.073606,
		29.052404, 30.837692, 41.755665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249411, 30.436543, 41.556503>,  <28.407120, 31.104059, 41.704140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249411, 30.436543, 41.556503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591722, 30.469910, 41.760731>,  <28.797110, 30.489929, 41.883266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.591722, 30.469910, 41.760731>,  <28.249411, 30.436543, 41.556503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591722, 30.469910, 41.760731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305822, -0.714446, 0.629317,
		0.417272, -0.694700, -0.585898,
		0.855779, 0.083416, 0.510572,
		28.848455, 30.494934, 41.913902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471464, 29.713938, 41.648594>,  <28.249411, 30.436543, 41.556503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471464, 29.713938, 41.648594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677917, 29.948046, 41.898735>,  <28.801790, 30.088511, 42.048820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.677917, 29.948046, 41.898735>,  <28.471464, 29.713938, 41.648594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677917, 29.948046, 41.898735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123746, -0.671500, 0.730599,
		0.847522, -0.454471, -0.274159,
		0.516134, 0.585272, 0.625350,
		28.832758, 30.123627, 42.086342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.046549, 29.304474, 41.944954>,  <28.471464, 29.713938, 41.648594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.046549, 29.304474, 41.944954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991341, 29.612091, 42.194603>,  <28.958216, 29.796661, 42.344391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.991341, 29.612091, 42.194603>,  <29.046549, 29.304474, 41.944954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.991341, 29.612091, 42.194603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087283, -0.618253, 0.781118,
		0.986576, 0.162284, 0.018206,
		-0.138019, 0.769043, 0.624118,
		28.949936, 29.842804, 42.381840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518372, 29.153982, 42.616119>,  <29.046549, 29.304474, 41.944954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518372, 29.153982, 42.616119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230022, 29.403250, 42.737450>,  <29.057013, 29.552811, 42.810246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230022, 29.403250, 42.737450>,  <29.518372, 29.153982, 42.616119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230022, 29.403250, 42.737450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028222, -0.410893, 0.911247,
		0.692494, 0.665452, 0.278614,
		-0.720871, 0.623170, 0.303321,
		29.013762, 29.590200, 42.828445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721329, 29.406670, 43.242260>,  <29.518372, 29.153982, 42.616119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721329, 29.406670, 43.242260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326483, 29.469189, 43.255981>,  <29.089575, 29.506701, 43.264214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.326483, 29.469189, 43.255981>,  <29.721329, 29.406670, 43.242260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.326483, 29.469189, 43.255981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012238, -0.287473, 0.957710,
		0.159549, 0.944950, 0.285682,
		-0.987114, 0.156298, 0.034302,
		29.030348, 29.516079, 43.266273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618166, 29.686384, 43.908173>,  <29.721329, 29.406670, 43.242260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618166, 29.686384, 43.908173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260319, 29.542463, 43.802189>,  <29.045610, 29.456110, 43.738598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.260319, 29.542463, 43.802189>,  <29.618166, 29.686384, 43.908173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.260319, 29.542463, 43.802189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155997, -0.304158, 0.939762,
		-0.418719, 0.882059, 0.215977,
		-0.894617, -0.359804, -0.264956,
		28.991934, 29.434523, 43.722702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.253651, 29.955259, 44.367935>,  <29.618166, 29.686384, 43.908173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.253651, 29.955259, 44.367935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026115, 29.658249, 44.226471>,  <28.889595, 29.480042, 44.141590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026115, 29.658249, 44.226471>,  <29.253651, 29.955259, 44.367935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026115, 29.658249, 44.226471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208812, -0.285535, 0.935343,
		-0.795501, 0.605907, 0.007374,
		-0.568837, -0.742527, -0.353664,
		28.855465, 29.435492, 44.120373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638390, 29.900198, 44.810974>,  <29.253651, 29.955259, 44.367935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638390, 29.900198, 44.810974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673414, 29.540792, 44.638924>,  <28.694429, 29.325150, 44.535694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.673414, 29.540792, 44.638924>,  <28.638390, 29.900198, 44.810974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673414, 29.540792, 44.638924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332307, -0.433400, 0.837698,
		-0.939098, 0.069584, -0.336531,
		0.087562, -0.898511, -0.430128,
		28.699682, 29.271238, 44.509884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962353, 29.439537, 44.976936>,  <28.638390, 29.900198, 44.810974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962353, 29.439537, 44.976936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223583, 29.156876, 44.868027>,  <28.380322, 28.987278, 44.802681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223583, 29.156876, 44.868027>,  <27.962353, 29.439537, 44.976936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223583, 29.156876, 44.868027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264801, -0.549927, 0.792125,
		-0.709488, -0.445219, -0.546266,
		0.653076, -0.706654, -0.272272,
		28.419506, 28.944880, 44.786346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642002, 28.754320, 44.908920>,  <27.962353, 29.439537, 44.976936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642002, 28.754320, 44.908920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027573, 28.668491, 44.971924>,  <28.258915, 28.616993, 45.009724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.027573, 28.668491, 44.971924>,  <27.642002, 28.754320, 44.908920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027573, 28.668491, 44.971924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261909, -0.659053, 0.705020,
		-0.047473, -0.720838, -0.691476,
		0.963925, -0.214573, 0.157507,
		28.316750, 28.604120, 45.019176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701897, 28.010086, 45.142498>,  <27.642002, 28.754320, 44.908920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701897, 28.010086, 45.142498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074783, 28.107313, 45.249748>,  <28.298515, 28.165649, 45.314098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074783, 28.107313, 45.249748>,  <27.701897, 28.010086, 45.142498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074783, 28.107313, 45.249748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039804, -0.667523, 0.743525,
		0.359711, -0.703797, -0.612599,
		0.932215, 0.243070, 0.268129,
		28.354448, 28.180235, 45.330185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040539, 27.436487, 45.204807>,  <27.701897, 28.010086, 45.142498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040539, 27.436487, 45.204807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294823, 27.661781, 45.415951>,  <28.447393, 27.796957, 45.542637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.294823, 27.661781, 45.415951>,  <28.040539, 27.436487, 45.204807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.294823, 27.661781, 45.415951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075275, -0.635332, 0.768561,
		0.768250, -0.528316, -0.361489,
		0.635709, 0.563236, 0.527863,
		28.485535, 27.830751, 45.574310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462791, 26.979389, 45.521973>,  <28.040539, 27.436487, 45.204807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462791, 26.979389, 45.521973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525597, 27.314651, 45.730911>,  <28.563280, 27.515808, 45.856274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.525597, 27.314651, 45.730911>,  <28.462791, 26.979389, 45.521973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.525597, 27.314651, 45.730911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130856, -0.541896, 0.830196,
		0.978889, -0.061998, -0.194761,
		0.157011, 0.838156, 0.522343,
		28.572701, 27.566099, 45.887615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067760, 26.890963, 45.943848>,  <28.462791, 26.979389, 45.521973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067760, 26.890963, 45.943848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895153, 27.208538, 46.115173>,  <28.791588, 27.399082, 46.217968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.895153, 27.208538, 46.115173>,  <29.067760, 26.890963, 45.943848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895153, 27.208538, 46.115173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051183, -0.452485, 0.890302,
		0.900651, 0.406105, 0.154620,
		-0.431519, 0.793937, 0.428317,
		28.765697, 27.446720, 46.243668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524324, 27.145555, 46.483829>,  <29.067760, 26.890963, 45.943848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524324, 27.145555, 46.483829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160656, 27.273985, 46.589901>,  <28.942455, 27.351042, 46.653545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160656, 27.273985, 46.589901>,  <29.524324, 27.145555, 46.483829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160656, 27.273985, 46.589901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116998, -0.414202, 0.902634,
		0.399649, 0.851674, 0.339016,
		-0.909171, 0.321073, 0.265180,
		28.887905, 27.370306, 46.669456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562418, 27.511471, 47.127071>,  <29.524324, 27.145555, 46.483829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562418, 27.511471, 47.127071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203581, 27.341805, 47.077587>,  <28.988277, 27.240004, 47.047897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203581, 27.341805, 47.077587>,  <29.562418, 27.511471, 47.127071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203581, 27.341805, 47.077587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126667, -0.515130, 0.847701,
		-0.423293, 0.744798, 0.515848,
		-0.897095, -0.424167, -0.123709,
		28.934452, 27.214554, 47.040474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312000, 27.550318, 47.754078>,  <29.562418, 27.511471, 47.127071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312000, 27.550318, 47.754078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058477, 27.290604, 47.585926>,  <28.906364, 27.134775, 47.485035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058477, 27.290604, 47.585926>,  <29.312000, 27.550318, 47.754078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058477, 27.290604, 47.585926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084981, -0.481742, 0.872182,
		-0.768810, 0.588518, 0.250154,
		-0.633805, -0.649285, -0.420382,
		28.868336, 27.095818, 47.459812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602476, 27.541719, 48.118149>,  <29.312000, 27.550318, 47.754078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602476, 27.541719, 48.118149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669003, 27.187756, 47.944126>,  <28.708920, 26.975378, 47.839714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.669003, 27.187756, 47.944126>,  <28.602476, 27.541719, 48.118149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669003, 27.187756, 47.944126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149640, -0.458740, 0.875880,
		-0.974652, -0.080572, -0.208714,
		0.166317, -0.884910, -0.435055,
		28.718897, 26.922283, 47.813610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.014189, 27.268509, 48.289238>,  <28.602476, 27.541719, 48.118149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.014189, 27.268509, 48.289238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285011, 26.983406, 48.215946>,  <28.447506, 26.812346, 48.171970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.285011, 26.983406, 48.215946>,  <28.014189, 27.268509, 48.289238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.285011, 26.983406, 48.215946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184596, -0.405496, 0.895264,
		-0.712403, -0.572322, -0.406116,
		0.677058, -0.712756, -0.183228,
		28.488129, 26.769579, 48.160976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.748505, 26.568319, 48.332909>,  <28.014189, 27.268509, 48.289238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.748505, 26.568319, 48.332909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139427, 26.531626, 48.409286>,  <28.373980, 26.509609, 48.455112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.139427, 26.531626, 48.409286>,  <27.748505, 26.568319, 48.332909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139427, 26.531626, 48.409286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211842, -0.422804, 0.881113,
		-0.000095, -0.901566, -0.432642,
		0.977304, -0.091735, 0.190949,
		28.432619, 26.504105, 48.466572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.953457, 25.879290, 48.356140>,  <27.748505, 26.568319, 48.332909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.953457, 25.879290, 48.356140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185959, 26.100380, 48.595016>,  <28.325460, 26.233034, 48.738342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.185959, 26.100380, 48.595016>,  <27.953457, 25.879290, 48.356140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185959, 26.100380, 48.595016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141457, -0.654093, 0.743070,
		0.801333, -0.516389, -0.302007,
		0.581254, 0.552725, 0.597193,
		28.360334, 26.266197, 48.774174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384352, 25.422132, 48.631519>,  <27.953457, 25.879290, 48.356140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384352, 25.422132, 48.631519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314220, 25.734238, 48.871670>,  <28.272142, 25.921501, 49.015759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314220, 25.734238, 48.871670>,  <28.384352, 25.422132, 48.631519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314220, 25.734238, 48.871670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198275, -0.625308, 0.754769,
		0.964338, 0.013292, 0.264340,
		-0.175327, 0.780265, 0.600372,
		28.261623, 25.968317, 49.051781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.516397, 24.764914, 48.929291>,  <28.384352, 25.422132, 48.631519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.516397, 24.764914, 48.929291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854980, 24.579931, 49.034855>,  <29.058130, 24.468943, 49.098194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.854980, 24.579931, 49.034855>,  <28.516397, 24.764914, 48.929291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.854980, 24.579931, 49.034855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417837, 0.269702, -0.867567,
		0.330035, 0.844627, 0.421522,
		0.846456, -0.462456, 0.263906,
		29.108917, 24.441195, 49.114025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191742, 25.188200, 48.912750>,  <28.516397, 24.764914, 48.929291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191742, 25.188200, 48.912750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281218, 24.816410, 48.795418>,  <29.334902, 24.593336, 48.725018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281218, 24.816410, 48.795418>,  <29.191742, 25.188200, 48.912750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281218, 24.816410, 48.795418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576884, 0.368836, -0.728810,
		0.785601, -0.006192, 0.618703,
		0.223687, -0.929474, -0.293330,
		29.348324, 24.537567, 48.707420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996273, 25.120481, 48.880295>,  <29.191742, 25.188200, 48.912750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996273, 25.120481, 48.880295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832495, 24.867577, 48.617207>,  <29.734228, 24.715834, 48.459354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832495, 24.867577, 48.617207>,  <29.996273, 25.120481, 48.880295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832495, 24.867577, 48.617207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544534, 0.409069, -0.732219,
		0.732009, -0.657955, 0.176798,
		-0.409445, -0.632263, -0.657722,
		29.709661, 24.677898, 48.419891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439749, 24.699127, 48.464516>,  <29.996273, 25.120481, 48.880295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439749, 24.699127, 48.464516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118977, 24.750614, 48.231159>,  <29.926514, 24.781506, 48.091145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118977, 24.750614, 48.231159>,  <30.439749, 24.699127, 48.464516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118977, 24.750614, 48.231159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589670, 0.013758, -0.807527,
		-0.095918, -0.991585, -0.086935,
		-0.801928, 0.128719, -0.583389,
		29.878399, 24.789230, 48.056141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582748, 24.330147, 47.956581>,  <30.439749, 24.699127, 48.464516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582748, 24.330147, 47.956581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289293, 24.560568, 47.812393>,  <30.113220, 24.698820, 47.725880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289293, 24.560568, 47.812393>,  <30.582748, 24.330147, 47.956581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289293, 24.560568, 47.812393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470072, 0.047146, -0.881368,
		-0.490719, -0.816052, -0.305374,
		-0.733640, 0.576052, -0.360468,
		30.069201, 24.733383, 47.704254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809776, 24.532066, 47.295563>,  <30.582748, 24.330147, 47.956581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809776, 24.532066, 47.295563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457237, 24.720776, 47.305847>,  <30.245714, 24.834002, 47.312016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457237, 24.720776, 47.305847>,  <30.809776, 24.532066, 47.295563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457237, 24.720776, 47.305847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153237, 0.336896, -0.928988,
		-0.446932, -0.814820, -0.369215,
		-0.881346, 0.471772, 0.025709,
		30.192833, 24.862307, 47.313560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440411, 24.257048, 46.664169>,  <30.809776, 24.532066, 47.295563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440411, 24.257048, 46.664169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282518, 24.602451, 46.789734>,  <30.187782, 24.809694, 46.865070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282518, 24.602451, 46.789734>,  <30.440411, 24.257048, 46.664169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282518, 24.602451, 46.789734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018223, 0.334225, -0.942317,
		-0.918617, -0.377681, -0.116193,
		-0.394730, 0.863511, 0.313907,
		30.164099, 24.861504, 46.883907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079264, 24.527866, 46.105244>,  <30.440411, 24.257048, 46.664169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079264, 24.527866, 46.105244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107525, 24.845760, 46.346375>,  <30.124481, 25.036497, 46.491055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107525, 24.845760, 46.346375>,  <30.079264, 24.527866, 46.105244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107525, 24.845760, 46.346375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151844, 0.588726, -0.793942,
		-0.985876, 0.147630, -0.079082,
		0.070652, 0.794737, 0.602828,
		30.128721, 25.084181, 46.527222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855587, 25.057076, 45.662994>,  <30.079264, 24.527866, 46.105244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855587, 25.057076, 45.662994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014624, 25.245584, 45.977909>,  <30.110046, 25.358690, 46.166859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014624, 25.245584, 45.977909>,  <29.855587, 25.057076, 45.662994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014624, 25.245584, 45.977909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374623, 0.699876, -0.608138,
		-0.837602, 0.536728, 0.101717,
		0.397593, 0.471272, 0.787288,
		30.133902, 25.386967, 46.214096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.538214, 25.666697, 45.536324>,  <29.855587, 25.057076, 45.662994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.538214, 25.666697, 45.536324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876883, 25.681112, 45.748680>,  <30.080084, 25.689762, 45.876095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.876883, 25.681112, 45.748680>,  <29.538214, 25.666697, 45.536324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.876883, 25.681112, 45.748680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328514, 0.749464, -0.574789,
		-0.418602, 0.661064, 0.622710,
		0.846671, 0.036039, 0.530895,
		30.130884, 25.691923, 45.907948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691681, 26.356995, 45.617867>,  <29.538214, 25.666697, 45.536324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691681, 26.356995, 45.617867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040192, 26.173979, 45.688900>,  <30.249298, 26.064169, 45.731518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040192, 26.173979, 45.688900>,  <29.691681, 26.356995, 45.617867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040192, 26.173979, 45.688900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394286, 0.437062, -0.808403,
		0.292264, 0.774359, 0.561204,
		0.871275, -0.457542, 0.177581,
		30.301575, 26.036716, 45.742176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174492, 26.915405, 45.697456>,  <29.691681, 26.356995, 45.617867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174492, 26.915405, 45.697456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380894, 26.592060, 45.584118>,  <30.504734, 26.398052, 45.516113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380894, 26.592060, 45.584118>,  <30.174492, 26.915405, 45.697456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380894, 26.592060, 45.584118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394559, 0.517907, -0.759009,
		0.760304, 0.279855, 0.586190,
		0.516005, -0.808364, -0.283348,
		30.535696, 26.349550, 45.499115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800835, 27.170586, 45.500122>,  <30.174492, 26.915405, 45.697456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800835, 27.170586, 45.500122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798349, 26.806147, 45.335266>,  <30.796858, 26.587482, 45.236351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798349, 26.806147, 45.335266>,  <30.800835, 27.170586, 45.500122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798349, 26.806147, 45.335266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356512, 0.383049, -0.852157,
		0.934270, -0.152229, 0.322438,
		-0.006214, -0.911098, -0.412143,
		30.796486, 26.532818, 45.211624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421049, 27.095829, 45.170341>,  <30.800835, 27.170586, 45.500122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421049, 27.095829, 45.170341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198175, 26.817205, 44.989521>,  <31.064451, 26.650030, 44.881031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198175, 26.817205, 44.989521>,  <31.421049, 27.095829, 45.170341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198175, 26.817205, 44.989521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423598, 0.229799, -0.876217,
		0.714218, -0.679703, 0.167021,
		-0.557187, -0.696560, -0.452047,
		31.031019, 26.608238, 44.853909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848154, 26.704172, 44.753056>,  <31.421049, 27.095829, 45.170341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848154, 26.704172, 44.753056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476570, 26.644651, 44.617470>,  <31.253620, 26.608938, 44.536118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476570, 26.644651, 44.617470>,  <31.848154, 26.704172, 44.753056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476570, 26.644651, 44.617470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310405, 0.185810, -0.932268,
		0.201713, -0.971252, -0.126418,
		-0.928956, -0.148810, -0.338962,
		31.197884, 26.600010, 44.515781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897467, 26.339859, 44.083652>,  <31.848154, 26.704172, 44.753056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897467, 26.339859, 44.083652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540043, 26.519363, 44.078556>,  <31.325588, 26.627066, 44.075497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540043, 26.519363, 44.078556>,  <31.897467, 26.339859, 44.083652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540043, 26.519363, 44.078556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144176, 0.259974, -0.954791,
		-0.425163, -0.855000, -0.297004,
		-0.893560, 0.448763, -0.012739,
		31.271975, 26.653992, 44.074734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670591, 26.175959, 43.448879>,  <31.897467, 26.339859, 44.083652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670591, 26.175959, 43.448879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417631, 26.475338, 43.528774>,  <31.265856, 26.654964, 43.576714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417631, 26.475338, 43.528774>,  <31.670591, 26.175959, 43.448879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417631, 26.475338, 43.528774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037331, 0.286995, -0.957204,
		-0.773742, -0.597880, -0.209436,
		-0.632400, 0.748447, 0.199740,
		31.227911, 26.699873, 43.588696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294231, 26.269838, 42.857361>,  <31.670591, 26.175959, 43.448879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294231, 26.269838, 42.857361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213678, 26.611582, 43.048992>,  <31.165346, 26.816628, 43.163971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213678, 26.611582, 43.048992>,  <31.294231, 26.269838, 42.857361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213678, 26.611582, 43.048992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024355, 0.493317, -0.869508,
		-0.979210, -0.163434, -0.120152,
		-0.201381, 0.854358, 0.479081,
		31.153265, 26.867889, 43.192715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.777805, 26.496677, 42.571114>,  <31.294231, 26.269838, 42.857361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.777805, 26.496677, 42.571114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940542, 26.827921, 42.725368>,  <31.038183, 27.026667, 42.817921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940542, 26.827921, 42.725368>,  <30.777805, 26.496677, 42.571114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940542, 26.827921, 42.725368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034512, 0.435785, -0.899389,
		-0.912847, 0.352599, 0.205874,
		0.406841, 0.828109, 0.385636,
		31.062595, 27.076353, 42.841061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485348, 26.921839, 42.156212>,  <30.777805, 26.496677, 42.571114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485348, 26.921839, 42.156212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779324, 27.147026, 42.307438>,  <30.955709, 27.282139, 42.398174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779324, 27.147026, 42.307438>,  <30.485348, 26.921839, 42.156212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779324, 27.147026, 42.307438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154697, 0.403627, -0.901751,
		-0.660253, 0.721217, 0.209552,
		0.734939, 0.562967, 0.378066,
		30.999805, 27.315916, 42.420856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277210, 27.554382, 41.968998>,  <30.485348, 26.921839, 42.156212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277210, 27.554382, 41.968998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667801, 27.588400, 42.048252>,  <30.902155, 27.608810, 42.095806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.667801, 27.588400, 42.048252>,  <30.277210, 27.554382, 41.968998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667801, 27.588400, 42.048252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083419, 0.698358, -0.710871,
		-0.198824, 0.710679, 0.674837,
		0.976479, 0.085044, 0.198134,
		30.960745, 27.613913, 42.107693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433092, 28.193840, 41.990051>,  <30.277210, 27.554382, 41.968998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433092, 28.193840, 41.990051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799829, 28.037031, 41.959808>,  <31.019873, 27.942945, 41.941662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.799829, 28.037031, 41.959808>,  <30.433092, 28.193840, 41.990051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799829, 28.037031, 41.959808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215795, 0.645923, -0.732268,
		0.335901, 0.655060, 0.676806,
		0.916844, -0.392021, -0.075608,
		31.074883, 27.919424, 41.937126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915930, 28.795973, 41.940594>,  <30.433092, 28.193840, 41.990051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915930, 28.795973, 41.940594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099257, 28.484129, 41.769878>,  <31.209253, 28.297022, 41.667450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099257, 28.484129, 41.769878>,  <30.915930, 28.795973, 41.940594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099257, 28.484129, 41.769878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303235, 0.588542, -0.749444,
		0.835460, 0.214065, 0.506145,
		0.458318, -0.779612, -0.426791,
		31.236752, 28.250246, 41.641842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708054, 28.985737, 41.815338>,  <30.915930, 28.795973, 41.940594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708054, 28.985737, 41.815338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609222, 28.701588, 41.551727>,  <31.549923, 28.531097, 41.393559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609222, 28.701588, 41.551727>,  <31.708054, 28.985737, 41.815338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609222, 28.701588, 41.551727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276009, 0.600350, -0.750599,
		0.928855, -0.367356, 0.047735,
		-0.247080, -0.710373, -0.659031,
		31.535099, 28.488476, 41.354019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274944, 28.974180, 41.407673>,  <31.708054, 28.985737, 41.815338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274944, 28.974180, 41.407673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969196, 28.808807, 41.209759>,  <31.785748, 28.709583, 41.091011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969196, 28.808807, 41.209759>,  <32.274944, 28.974180, 41.407673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969196, 28.808807, 41.209759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375794, 0.337910, -0.862900,
		0.523941, -0.845513, -0.102924,
		-0.764372, -0.413430, -0.494783,
		31.739885, 28.684778, 41.061325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588802, 28.672575, 40.858734>,  <32.274944, 28.974180, 41.407673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588802, 28.672575, 40.858734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206577, 28.699598, 40.743950>,  <31.977243, 28.715813, 40.675079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.206577, 28.699598, 40.743950>,  <32.588802, 28.672575, 40.858734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206577, 28.699598, 40.743950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294503, 0.262661, -0.918846,
		0.013295, -0.962520, -0.270885,
		-0.955558, 0.067560, -0.286957,
		31.919910, 28.719866, 40.657864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563923, 28.256300, 40.286396>,  <32.588802, 28.672575, 40.858734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563923, 28.256300, 40.286396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228916, 28.471994, 40.251099>,  <32.027912, 28.601410, 40.229919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228916, 28.471994, 40.251099>,  <32.563923, 28.256300, 40.286396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228916, 28.471994, 40.251099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219334, 0.183856, -0.958170,
		-0.500454, -0.821841, -0.272256,
		-0.837519, 0.539234, -0.088246,
		31.977661, 28.633764, 40.224625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326694, 28.111191, 39.661434>,  <32.563923, 28.256300, 40.286396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326694, 28.111191, 39.661434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111477, 28.442492, 39.724060>,  <31.982346, 28.641272, 39.761635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111477, 28.442492, 39.724060>,  <32.326694, 28.111191, 39.661434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111477, 28.442492, 39.724060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212836, 0.313212, -0.925527,
		-0.815604, -0.464651, -0.344802,
		-0.538043, 0.828250, 0.156562,
		31.950064, 28.690966, 39.771030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975182, 28.242863, 39.044048>,  <32.326694, 28.111191, 39.661434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975182, 28.242863, 39.044048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960239, 28.596186, 39.230972>,  <31.951275, 28.808180, 39.343124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960239, 28.596186, 39.230972>,  <31.975182, 28.242863, 39.044048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960239, 28.596186, 39.230972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177362, 0.466070, -0.866788,
		-0.983437, 0.050505, -0.174074,
		-0.037353, 0.883305, 0.467308,
		31.949034, 28.861177, 39.371166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537815, 28.711454, 38.714478>,  <31.975182, 28.242863, 39.044048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537815, 28.711454, 38.714478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814219, 28.940897, 38.890427>,  <31.980061, 29.078562, 38.995995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814219, 28.940897, 38.890427>,  <31.537815, 28.711454, 38.714478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814219, 28.940897, 38.890427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230139, 0.402278, -0.886120,
		-0.685233, 0.713547, 0.145968,
		0.691008, 0.573605, 0.439869,
		32.021523, 29.112978, 39.022388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469215, 29.372047, 38.403023>,  <31.537815, 28.711454, 38.714478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469215, 29.372047, 38.403023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825205, 29.417570, 38.579655>,  <32.038799, 29.444883, 38.685635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825205, 29.417570, 38.579655>,  <31.469215, 29.372047, 38.403023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825205, 29.417570, 38.579655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321377, 0.530458, -0.784430,
		-0.323513, 0.840037, 0.435520,
		0.889975, 0.113807, 0.441579,
		32.092197, 29.451712, 38.712128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629801, 30.176186, 38.366108>,  <31.469215, 29.372047, 38.403023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629801, 30.176186, 38.366108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974955, 29.984903, 38.431530>,  <32.182045, 29.870134, 38.470783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974955, 29.984903, 38.431530>,  <31.629801, 30.176186, 38.366108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974955, 29.984903, 38.431530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459019, 0.606092, -0.649579,
		0.211501, 0.635588, 0.742493,
		0.862884, -0.478204, 0.163558,
		32.233818, 29.841442, 38.480598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078934, 30.694336, 38.677399>,  <31.629801, 30.176186, 38.366108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078934, 30.694336, 38.677399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285404, 30.403078, 38.497013>,  <32.409286, 30.228323, 38.388783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285404, 30.403078, 38.497013>,  <32.078934, 30.694336, 38.677399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285404, 30.403078, 38.497013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341852, 0.657924, -0.671025,
		0.785303, 0.192204, 0.588521,
		0.516175, -0.728144, -0.450964,
		32.440258, 30.184635, 38.361725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646774, 31.035126, 38.236229>,  <32.078934, 30.694336, 38.677399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646774, 31.035126, 38.236229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660202, 30.659931, 38.098213>,  <32.668259, 30.434814, 38.015404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660202, 30.659931, 38.098213>,  <32.646774, 31.035126, 38.236229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660202, 30.659931, 38.098213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396539, 0.329395, -0.856887,
		0.917404, -0.108058, 0.383005,
		0.033566, -0.937988, -0.345038,
		32.670273, 30.378534, 37.994701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270920, 30.955284, 37.941467>,  <32.646774, 31.035126, 38.236229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270920, 30.955284, 37.941467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043819, 30.668516, 37.779640>,  <32.907558, 30.496454, 37.682545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043819, 30.668516, 37.779640>,  <33.270920, 30.955284, 37.941467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043819, 30.668516, 37.779640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362687, 0.223342, -0.904752,
		0.738994, -0.660410, 0.133215,
		-0.567755, -0.716921, -0.404570,
		32.873493, 30.453440, 37.658268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782673, 30.572285, 37.587204>,  <33.270920, 30.955284, 37.941467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782673, 30.572285, 37.587204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417683, 30.540741, 37.426620>,  <33.198689, 30.521814, 37.330269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417683, 30.540741, 37.426620>,  <33.782673, 30.572285, 37.587204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417683, 30.540741, 37.426620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364939, 0.286700, -0.885789,
		0.184949, -0.954769, -0.232829,
		-0.912477, -0.078857, -0.401458,
		33.143940, 30.517084, 37.306183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908356, 30.167261, 37.030922>,  <33.782673, 30.572285, 37.587204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908356, 30.167261, 37.030922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553268, 30.336073, 36.957325>,  <33.340218, 30.437361, 36.913166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.553268, 30.336073, 36.957325>,  <33.908356, 30.167261, 37.030922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553268, 30.336073, 36.957325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327796, 0.298764, -0.896264,
		-0.323282, -0.855938, -0.403557,
		-0.887715, 0.422030, -0.183988,
		33.286953, 30.462683, 36.902130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822666, 30.056173, 36.375744>,  <33.908356, 30.167261, 37.030922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822666, 30.056173, 36.375744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569641, 30.354673, 36.458668>,  <33.417828, 30.533773, 36.508423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569641, 30.354673, 36.458668>,  <33.822666, 30.056173, 36.375744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569641, 30.354673, 36.458668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361996, 0.521495, -0.772659,
		-0.684711, -0.413706, -0.600016,
		-0.632559, 0.746251, 0.207314,
		33.379875, 30.578548, 36.520863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359573, 30.157513, 35.712368>,  <33.822666, 30.056173, 36.375744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359573, 30.157513, 35.712368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328396, 30.500711, 35.915447>,  <33.309689, 30.706631, 36.037296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328396, 30.500711, 35.915447>,  <33.359573, 30.157513, 35.712368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328396, 30.500711, 35.915447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465222, 0.481710, -0.742647,
		-0.881756, 0.178306, -0.436708,
		-0.077948, 0.857999, 0.507703,
		33.305012, 30.758112, 36.067757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.091385, 30.544540, 35.167683>,  <33.359573, 30.157513, 35.712368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.091385, 30.544540, 35.167683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261124, 30.776804, 35.445606>,  <33.362968, 30.916162, 35.612362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261124, 30.776804, 35.445606>,  <33.091385, 30.544540, 35.167683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261124, 30.776804, 35.445606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324313, 0.618959, -0.715340,
		-0.845429, 0.528889, 0.074338,
		0.424347, 0.580660, 0.694811,
		33.388428, 30.951002, 35.654049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949638, 31.180330, 34.926105>,  <33.091385, 30.544540, 35.167683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949638, 31.180330, 34.926105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256310, 31.229177, 35.178230>,  <33.440311, 31.258486, 35.329506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256310, 31.229177, 35.178230>,  <32.949638, 31.180330, 34.926105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256310, 31.229177, 35.178230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433162, 0.626252, -0.648212,
		-0.473891, 0.769997, 0.427237,
		0.766680, 0.122119, 0.630309,
		33.486313, 31.265814, 35.367325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087826, 31.920456, 34.894581>,  <32.949638, 31.180330, 34.926105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087826, 31.920456, 34.894581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405453, 31.716536, 35.026985>,  <33.596027, 31.594183, 35.106426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405453, 31.716536, 35.026985>,  <33.087826, 31.920456, 34.894581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405453, 31.716536, 35.026985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567513, 0.426775, -0.704125,
		0.217699, 0.746970, 0.628206,
		0.794063, -0.509803, 0.331006,
		33.643673, 31.563595, 35.126286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586037, 32.423203, 34.956196>,  <33.087826, 31.920456, 34.894581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586037, 32.423203, 34.956196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811226, 32.093235, 34.976498>,  <33.946339, 31.895256, 34.988678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811226, 32.093235, 34.976498>,  <33.586037, 32.423203, 34.956196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811226, 32.093235, 34.976498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636782, 0.393793, -0.662900,
		0.526851, 0.405513, 0.746986,
		0.562972, -0.824916, 0.050753,
		33.980118, 31.845760, 34.991722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290905, 32.642899, 35.157543>,  <33.586037, 32.423203, 34.956196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290905, 32.642899, 35.157543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308807, 32.292995, 34.964546>,  <34.319550, 32.083054, 34.848747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308807, 32.292995, 34.964546>,  <34.290905, 32.642899, 35.157543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308807, 32.292995, 34.964546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671114, 0.384088, -0.634099,
		0.740001, -0.295425, 0.604253,
		0.044758, -0.874757, -0.482490,
		34.322235, 32.030567, 34.819798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054863, 32.548397, 34.984501>,  <34.290905, 32.642899, 35.157543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054863, 32.548397, 34.984501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869991, 32.297832, 34.733425>,  <34.759068, 32.147491, 34.582779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.869991, 32.297832, 34.733425>,  <35.054863, 32.548397, 34.984501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.869991, 32.297832, 34.733425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573834, 0.328389, -0.750250,
		0.676094, -0.706940, 0.207684,
		-0.462181, -0.626416, -0.627688,
		34.731339, 32.109909, 34.545120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521599, 32.347672, 34.580971>,  <35.054863, 32.548397, 34.984501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521599, 32.347672, 34.580971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193726, 32.260105, 34.369236>,  <34.997002, 32.207565, 34.242195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193726, 32.260105, 34.369236>,  <35.521599, 32.347672, 34.580971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193726, 32.260105, 34.369236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498108, 0.183912, -0.847387,
		0.282864, -0.958253, -0.041701,
		-0.819680, -0.218923, -0.529336,
		34.947823, 32.194427, 34.210434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671360, 31.616621, 34.538342>,  <35.521599, 32.347672, 34.580971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671360, 31.616621, 34.538342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029545, 31.446178, 34.589859>,  <36.244453, 31.343912, 34.620770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029545, 31.446178, 34.589859>,  <35.671360, 31.616621, 34.538342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029545, 31.446178, 34.589859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395168, -0.627720, 0.670679,
		-0.204933, -0.651461, -0.730480,
		0.895458, -0.426107, 0.128796,
		36.298183, 31.318346, 34.628498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539280, 30.875217, 34.583103>,  <35.671360, 31.616621, 34.538342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539280, 30.875217, 34.583103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912228, 30.938644, 34.713051>,  <36.135998, 30.976700, 34.791019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912228, 30.938644, 34.713051>,  <35.539280, 30.875217, 34.583103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912228, 30.938644, 34.713051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160840, -0.622855, 0.765625,
		0.323747, -0.766099, -0.555229,
		0.932372, 0.158566, 0.324867,
		36.191940, 30.986214, 34.810513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982185, 30.312719, 34.470917>,  <35.539280, 30.875217, 34.583103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982185, 30.312719, 34.470917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071548, 30.531187, 34.793850>,  <36.125164, 30.662268, 34.987610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071548, 30.531187, 34.793850>,  <35.982185, 30.312719, 34.470917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071548, 30.531187, 34.793850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248821, -0.768872, 0.589003,
		0.942432, -0.332467, -0.035870,
		0.223403, 0.546170, 0.807335,
		36.138569, 30.695038, 35.036049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346184, 29.909159, 34.908184>,  <35.982185, 30.312719, 34.470917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346184, 29.909159, 34.908184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238266, 30.206120, 35.153477>,  <36.173515, 30.384296, 35.300652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.238266, 30.206120, 35.153477>,  <36.346184, 29.909159, 34.908184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238266, 30.206120, 35.153477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265169, -0.669504, 0.693866,
		0.925686, 0.024595, 0.377493,
		-0.269799, 0.742401, 0.613229,
		36.157326, 30.428841, 35.337444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514900, 29.567978, 35.513893>,  <36.346184, 29.909159, 34.908184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514900, 29.567978, 35.513893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318123, 29.890629, 35.644947>,  <36.200058, 30.084219, 35.723579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318123, 29.890629, 35.644947>,  <36.514900, 29.567978, 35.513893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318123, 29.890629, 35.644947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213484, -0.476597, 0.852807,
		0.844047, 0.349587, 0.406661,
		-0.491943, 0.806625, 0.327639,
		36.170540, 30.132616, 35.743240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785965, 29.768076, 36.151733>,  <36.514900, 29.567978, 35.513893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785965, 29.768076, 36.151733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403568, 29.884895, 36.140465>,  <36.174129, 29.954987, 36.133705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.403568, 29.884895, 36.140465>,  <36.785965, 29.768076, 36.151733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403568, 29.884895, 36.140465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166348, -0.460403, 0.871985,
		0.241692, 0.838294, 0.488721,
		-0.955988, 0.292050, -0.028172,
		36.116772, 29.972509, 36.132011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598133, 30.006559, 36.873196>,  <36.785965, 29.768076, 36.151733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598133, 30.006559, 36.873196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234619, 29.986471, 36.707504>,  <36.016510, 29.974419, 36.608089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234619, 29.986471, 36.707504>,  <36.598133, 30.006559, 36.873196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234619, 29.986471, 36.707504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405900, -0.123690, 0.905508,
		-0.096710, 0.991049, 0.092024,
		-0.908786, -0.050219, -0.414229,
		35.961983, 29.971405, 36.583237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129303, 30.402077, 37.321545>,  <36.598133, 30.006559, 36.873196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129303, 30.402077, 37.321545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919178, 30.126833, 37.121323>,  <35.793102, 29.961687, 37.001190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.919178, 30.126833, 37.121323>,  <36.129303, 30.402077, 37.321545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919178, 30.126833, 37.121323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498464, -0.227902, 0.836417,
		-0.689625, 0.688886, -0.223280,
		-0.525311, -0.688111, -0.500552,
		35.761585, 29.920399, 36.971157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493969, 30.422710, 37.612396>,  <36.129303, 30.402077, 37.321545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493969, 30.422710, 37.612396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466614, 30.075312, 37.416012>,  <35.450199, 29.866873, 37.298183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466614, 30.075312, 37.416012>,  <35.493969, 30.422710, 37.612396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466614, 30.075312, 37.416012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482158, -0.402049, 0.778383,
		-0.873411, 0.289955, -0.391254,
		-0.068393, -0.868495, -0.490957,
		35.446095, 29.814764, 37.268726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897449, 30.065876, 37.719307>,  <35.493969, 30.422710, 37.612396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897449, 30.065876, 37.719307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129204, 29.756622, 37.616096>,  <35.268257, 29.571070, 37.554173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129204, 29.756622, 37.616096>,  <34.897449, 30.065876, 37.719307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129204, 29.756622, 37.616096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219055, -0.452634, 0.864371,
		-0.785065, -0.444284, -0.431609,
		0.579386, -0.773133, -0.258024,
		35.303020, 29.524683, 37.538689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490776, 29.533836, 37.882679>,  <34.897449, 30.065876, 37.719307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490776, 29.533836, 37.882679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853680, 29.366365, 37.866718>,  <35.071423, 29.265882, 37.857143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853680, 29.366365, 37.866718>,  <34.490776, 29.533836, 37.882679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853680, 29.366365, 37.866718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247934, -0.609058, 0.753377,
		-0.339724, -0.673615, -0.656377,
		0.907257, -0.418678, -0.039899,
		35.125858, 29.240761, 37.854748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441933, 28.818602, 37.849087>,  <34.490776, 29.533836, 37.882679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441933, 28.818602, 37.849087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812820, 28.854649, 37.994495>,  <35.035351, 28.876278, 38.081741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812820, 28.854649, 37.994495>,  <34.441933, 28.818602, 37.849087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812820, 28.854649, 37.994495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225138, -0.641552, 0.733297,
		0.299301, -0.761768, -0.574569,
		0.927217, 0.090120, 0.363520,
		35.090984, 28.881685, 38.103550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668530, 28.122202, 37.891811>,  <34.441933, 28.818602, 37.849087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668530, 28.122202, 37.891811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904655, 28.333517, 38.135921>,  <35.046329, 28.460306, 38.282387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904655, 28.333517, 38.135921>,  <34.668530, 28.122202, 37.891811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904655, 28.333517, 38.135921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123293, -0.688181, 0.714987,
		0.797700, -0.497311, -0.341110,
		0.590316, 0.528289, 0.610277,
		35.081749, 28.492004, 38.319004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934372, 27.645512, 38.370113>,  <34.668530, 28.122202, 37.891811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934372, 27.645512, 38.370113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025990, 27.973373, 38.580143>,  <35.080959, 28.170090, 38.706161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025990, 27.973373, 38.580143>,  <34.934372, 27.645512, 38.370113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025990, 27.973373, 38.580143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062247, -0.550646, 0.832415,
		0.971425, -0.157971, -0.177141,
		0.229039, 0.819655, 0.525078,
		35.094700, 28.219271, 38.737667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346664, 27.422554, 38.793873>,  <34.934372, 27.645512, 38.370113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346664, 27.422554, 38.793873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259220, 27.775824, 38.959866>,  <35.206753, 27.987785, 39.059460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259220, 27.775824, 38.959866>,  <35.346664, 27.422554, 38.793873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259220, 27.775824, 38.959866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040662, -0.433143, 0.900408,
		0.974964, 0.179966, 0.130602,
		-0.218612, 0.883176, 0.414981,
		35.193638, 28.040777, 39.084358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687061, 27.522522, 39.403988>,  <35.346664, 27.422554, 38.793873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687061, 27.522522, 39.403988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372196, 27.765551, 39.446377>,  <35.183277, 27.911367, 39.471809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372196, 27.765551, 39.446377>,  <35.687061, 27.522522, 39.403988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372196, 27.765551, 39.446377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151229, -0.356730, 0.921886,
		0.597919, 0.709646, 0.372687,
		-0.787161, 0.607574, 0.105977,
		35.136047, 27.947823, 39.478168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813377, 27.921692, 39.974014>,  <35.687061, 27.522522, 39.403988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813377, 27.921692, 39.974014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420830, 27.973204, 39.916977>,  <35.185303, 28.004110, 39.882755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420830, 27.973204, 39.916977>,  <35.813377, 27.921692, 39.974014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420830, 27.973204, 39.916977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155362, -0.095242, 0.983256,
		0.113040, 0.987089, 0.113474,
		-0.981369, 0.128777, -0.142590,
		35.126419, 28.011837, 39.874199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483749, 28.373283, 40.543537>,  <35.813377, 27.921692, 39.974014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483749, 28.373283, 40.543537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186226, 28.136171, 40.420017>,  <35.007713, 27.993904, 40.345905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186226, 28.136171, 40.420017>,  <35.483749, 28.373283, 40.543537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186226, 28.136171, 40.420017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271817, -0.153808, 0.949978,
		-0.610626, 0.790540, -0.046724,
		-0.743809, -0.592782, -0.308801,
		34.963081, 27.958336, 40.327377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956043, 28.648956, 40.865131>,  <35.483749, 28.373283, 40.543537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956043, 28.648956, 40.865131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864677, 28.269484, 40.777649>,  <34.809856, 28.041800, 40.725159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864677, 28.269484, 40.777649>,  <34.956043, 28.648956, 40.865131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864677, 28.269484, 40.777649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461374, -0.092336, 0.882388,
		-0.857298, 0.302457, -0.416605,
		-0.228417, -0.948680, -0.218705,
		34.796154, 27.984880, 40.712036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282448, 28.671135, 41.126446>,  <34.956043, 28.648956, 40.865131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282448, 28.671135, 41.126446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388729, 28.288393, 41.079411>,  <34.452499, 28.058748, 41.051189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388729, 28.288393, 41.079411>,  <34.282448, 28.671135, 41.126446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388729, 28.288393, 41.079411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524132, -0.245749, 0.815410,
		-0.809126, -0.155030, -0.566816,
		0.265707, -0.956856, -0.117586,
		34.468441, 28.001337, 41.044136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710575, 28.338394, 41.173347>,  <34.282448, 28.671135, 41.126446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710575, 28.338394, 41.173347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995380, 28.066385, 41.243317>,  <34.166264, 27.903179, 41.285297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995380, 28.066385, 41.243317>,  <33.710575, 28.338394, 41.173347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995380, 28.066385, 41.243317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477617, -0.286439, 0.830563,
		-0.514698, -0.674922, -0.528741,
		0.712017, -0.680025, 0.174925,
		34.208984, 27.862377, 41.295795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386444, 27.758356, 41.350170>,  <33.710575, 28.338394, 41.173347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386444, 27.758356, 41.350170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752144, 27.658794, 41.478039>,  <33.971565, 27.599056, 41.554760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752144, 27.658794, 41.478039>,  <33.386444, 27.758356, 41.350170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752144, 27.658794, 41.478039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401144, -0.445545, 0.800358,
		-0.056788, -0.859963, -0.507188,
		0.914253, -0.248906, 0.319668,
		34.026421, 27.584122, 41.573940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440231, 27.027918, 41.460564>,  <33.386444, 27.758356, 41.350170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440231, 27.027918, 41.460564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711025, 27.199261, 41.699966>,  <33.873501, 27.302067, 41.843609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711025, 27.199261, 41.699966>,  <33.440231, 27.027918, 41.460564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711025, 27.199261, 41.699966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422837, -0.439232, 0.792644,
		0.602415, -0.789675, -0.116228,
		0.676982, 0.428355, 0.598504,
		33.914120, 27.327766, 41.879517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731766, 26.499302, 41.895123>,  <33.440231, 27.027918, 41.460564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731766, 26.499302, 41.895123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777050, 26.848375, 42.085114>,  <33.804222, 27.057819, 42.199108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777050, 26.848375, 42.085114>,  <33.731766, 26.499302, 41.895123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777050, 26.848375, 42.085114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241025, -0.439649, 0.865226,
		0.963893, -0.212435, 0.160566,
		0.113211, 0.872686, 0.474977,
		33.811012, 27.110182, 42.227608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893608, 26.408222, 42.653179>,  <33.731766, 26.499302, 41.895123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893608, 26.408222, 42.653179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796585, 26.795076, 42.683678>,  <33.738369, 27.027189, 42.701977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796585, 26.795076, 42.683678>,  <33.893608, 26.408222, 42.653179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796585, 26.795076, 42.683678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310964, -0.151958, 0.938195,
		0.918948, 0.203860, 0.337604,
		-0.242562, 0.967135, 0.076248,
		33.723816, 27.085217, 42.706551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203316, 26.603378, 43.228119>,  <33.893608, 26.408222, 42.653179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203316, 26.603378, 43.228119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933449, 26.895676, 43.186466>,  <33.771530, 27.071054, 43.161476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.933449, 26.895676, 43.186466>,  <34.203316, 26.603378, 43.228119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933449, 26.895676, 43.186466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088641, 0.059843, 0.994264,
		0.732783, 0.680025, 0.024400,
		-0.674665, 0.730743, -0.104131,
		33.731049, 27.114899, 43.155228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406391, 27.176603, 43.706375>,  <34.203316, 26.603378, 43.228119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406391, 27.176603, 43.706375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023636, 27.231337, 43.603886>,  <33.793983, 27.264175, 43.542393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023636, 27.231337, 43.603886>,  <34.406391, 27.176603, 43.706375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023636, 27.231337, 43.603886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221063, 0.229150, 0.947957,
		0.188423, 0.963726, -0.189022,
		-0.956885, 0.136831, -0.256221,
		33.736572, 27.272387, 43.527020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251022, 27.873398, 43.909279>,  <34.406391, 27.176603, 43.706375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251022, 27.873398, 43.909279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920269, 27.648449, 43.909908>,  <33.721817, 27.513479, 43.910286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.920269, 27.648449, 43.909908>,  <34.251022, 27.873398, 43.909279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920269, 27.648449, 43.909908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239787, 0.355091, 0.903555,
		-0.508693, 0.746757, -0.428468,
		-0.826882, -0.562374, 0.001570,
		33.672203, 27.479736, 43.910378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835888, 28.262283, 44.332237>,  <34.251022, 27.873398, 43.909279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835888, 28.262283, 44.332237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676117, 27.899227, 44.280628>,  <33.580254, 27.681393, 44.249664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.676117, 27.899227, 44.280628>,  <33.835888, 28.262283, 44.332237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.676117, 27.899227, 44.280628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400308, 0.046065, 0.915222,
		-0.824749, 0.417214, -0.381736,
		-0.399428, -0.907640, -0.129022,
		33.556290, 27.626936, 44.241920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229424, 28.374197, 44.564953>,  <33.835888, 28.262283, 44.332237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229424, 28.374197, 44.564953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282845, 27.978079, 44.580318>,  <33.314896, 27.740408, 44.589539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282845, 27.978079, 44.580318>,  <33.229424, 28.374197, 44.564953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282845, 27.978079, 44.580318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274812, 0.000239, 0.961498,
		-0.952178, -0.138966, -0.272114,
		0.133551, -0.990297, 0.038417,
		33.322910, 27.680990, 44.591843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740517, 28.237907, 45.047203>,  <33.229424, 28.374197, 44.564953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740517, 28.237907, 45.047203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918854, 27.882351, 45.005066>,  <33.025856, 27.669018, 44.979786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918854, 27.882351, 45.005066>,  <32.740517, 28.237907, 45.047203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918854, 27.882351, 45.005066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177842, -0.203304, 0.962829,
		-0.877264, -0.410540, -0.248724,
		0.445847, -0.888889, -0.105340,
		33.052608, 27.615685, 44.973465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.287464, 27.535498, 45.228691>,  <32.740517, 28.237907, 45.047203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.287464, 27.535498, 45.228691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677559, 27.471586, 45.289860>,  <32.911617, 27.433239, 45.326561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677559, 27.471586, 45.289860>,  <32.287464, 27.535498, 45.228691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677559, 27.471586, 45.289860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159933, -0.031909, 0.986612,
		-0.152759, -0.986637, -0.056673,
		0.975236, -0.159778, 0.152921,
		32.970131, 27.423653, 45.335735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389595, 27.144337, 45.768364>,  <32.287464, 27.535498, 45.228691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389595, 27.144337, 45.768364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762760, 27.288363, 45.766472>,  <32.986660, 27.374779, 45.765339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762760, 27.288363, 45.766472>,  <32.389595, 27.144337, 45.768364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762760, 27.288363, 45.766472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015093, 0.052216, 0.998522,
		0.359781, -0.931464, 0.054147,
		0.932915, 0.360066, -0.004728,
		33.042633, 27.396381, 45.765053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836536, 26.716330, 46.294472>,  <32.389595, 27.144337, 45.768364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836536, 26.716330, 46.294472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997231, 27.078964, 46.242767>,  <33.093647, 27.296545, 46.211742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997231, 27.078964, 46.242767>,  <32.836536, 26.716330, 46.294472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997231, 27.078964, 46.242767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084362, 0.103918, 0.991001,
		0.911864, -0.409021, -0.034735,
		0.401731, 0.906589, -0.129265,
		33.117748, 27.350941, 46.203987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389896, 26.703922, 46.794460>,  <32.836536, 26.716330, 46.294472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389896, 26.703922, 46.794460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350334, 27.093744, 46.714005>,  <33.326595, 27.327639, 46.665730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350334, 27.093744, 46.714005>,  <33.389896, 26.703922, 46.794460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350334, 27.093744, 46.714005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028288, 0.199297, 0.979531,
		0.994695, 0.102572, 0.007856,
		-0.098907, 0.974556, -0.201141,
		33.320663, 27.386110, 46.653664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886288, 27.143208, 47.311432>,  <33.389896, 26.703922, 46.794460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886288, 27.143208, 47.311432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604774, 27.376024, 47.148499>,  <33.435867, 27.515715, 47.050739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604774, 27.376024, 47.148499>,  <33.886288, 27.143208, 47.311432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604774, 27.376024, 47.148499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126313, 0.461711, 0.877991,
		0.699099, 0.669363, -0.251423,
		-0.703780, 0.582044, -0.407331,
		33.393642, 27.550638, 47.026299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021698, 27.704218, 47.598583>,  <33.886288, 27.143208, 47.311432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021698, 27.704218, 47.598583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643745, 27.748692, 47.475407>,  <33.416973, 27.775375, 47.401501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643745, 27.748692, 47.475407>,  <34.021698, 27.704218, 47.598583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643745, 27.748692, 47.475407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246646, 0.376811, 0.892849,
		0.215309, 0.919593, -0.328619,
		-0.944885, 0.111185, -0.307945,
		33.360279, 27.782047, 47.383022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832542, 28.345228, 47.731625>,  <34.021698, 27.704218, 47.598583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832542, 28.345228, 47.731625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488750, 28.143639, 47.697426>,  <33.282475, 28.022684, 47.676907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488750, 28.143639, 47.697426>,  <33.832542, 28.345228, 47.731625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488750, 28.143639, 47.697426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318513, 0.397173, 0.860699,
		-0.399813, 0.766983, -0.501883,
		-0.859476, -0.503975, -0.085500,
		33.230907, 27.992447, 47.671776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432278, 28.982801, 47.777782>,  <33.832542, 28.345228, 47.731625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432278, 28.982801, 47.777782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551884, 29.272968, 48.025768>,  <33.623646, 29.447069, 48.174561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551884, 29.272968, 48.025768>,  <33.432278, 28.982801, 47.777782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551884, 29.272968, 48.025768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738949, 0.235049, -0.631433,
		-0.603776, 0.646930, -0.465764,
		0.299015, 0.725419, 0.619965,
		33.641590, 29.490595, 48.211758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454567, 29.506536, 47.342468>,  <33.432278, 28.982801, 47.777782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454567, 29.506536, 47.342468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691921, 29.606613, 47.648487>,  <33.834335, 29.666660, 47.832096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691921, 29.606613, 47.648487>,  <33.454567, 29.506536, 47.342468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691921, 29.606613, 47.648487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714710, 0.273421, -0.643763,
		-0.370244, 0.928787, -0.016570,
		0.593388, 0.250193, 0.765045,
		33.869938, 29.681671, 47.878002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775200, 30.139462, 47.138165>,  <33.454567, 29.506536, 47.342468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775200, 30.139462, 47.138165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024242, 30.006325, 47.421455>,  <34.173668, 29.926443, 47.591431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024242, 30.006325, 47.421455>,  <33.775200, 30.139462, 47.138165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024242, 30.006325, 47.421455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773832, 0.127255, -0.620476,
		0.116395, 0.934357, 0.336793,
		0.622605, -0.332841, 0.708223,
		34.211025, 29.906473, 47.633923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430916, 30.598637, 47.004066>,  <33.775200, 30.139462, 47.138165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430916, 30.598637, 47.004066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564537, 30.311068, 47.247887>,  <34.644711, 30.138527, 47.394180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.564537, 30.311068, 47.247887>,  <34.430916, 30.598637, 47.004066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564537, 30.311068, 47.247887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870177, -0.013288, -0.492559,
		0.362212, 0.694963, 0.621151,
		0.334056, -0.718922, 0.609555,
		34.664753, 30.095390, 47.430752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178787, 30.738873, 47.112579>,  <34.430916, 30.598637, 47.004066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178787, 30.738873, 47.112579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097134, 30.352936, 47.178795>,  <35.048141, 30.121374, 47.218525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097134, 30.352936, 47.178795>,  <35.178787, 30.738873, 47.112579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097134, 30.352936, 47.178795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675962, -0.261244, -0.689077,
		0.708098, -0.028767, 0.705527,
		-0.204138, -0.964844, 0.165541,
		35.035892, 30.063482, 47.228458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851036, 30.493670, 47.201172>,  <35.178787, 30.738873, 47.112579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851036, 30.493670, 47.201172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613140, 30.188753, 47.099030>,  <35.470402, 30.005804, 47.037746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613140, 30.188753, 47.099030>,  <35.851036, 30.493670, 47.201172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613140, 30.188753, 47.099030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681963, -0.310190, -0.662351,
		0.425696, -0.568064, 0.704334,
		-0.594735, -0.762290, -0.255352,
		35.434719, 29.960066, 47.022423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337437, 29.837519, 47.126389>,  <35.851036, 30.493670, 47.201172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337437, 29.837519, 47.126389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996132, 29.775747, 46.927151>,  <35.791348, 29.738684, 46.807610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996132, 29.775747, 46.927151>,  <36.337437, 29.837519, 47.126389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996132, 29.775747, 46.927151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520372, -0.314468, -0.793929,
		-0.034028, -0.936622, 0.348684,
		-0.853261, -0.154429, -0.498093,
		35.740154, 29.729418, 46.777721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625340, 29.359451, 46.734108>,  <36.337437, 29.837519, 47.126389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625340, 29.359451, 46.734108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271309, 29.417086, 46.557072>,  <36.058891, 29.451666, 46.450851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271309, 29.417086, 46.557072>,  <36.625340, 29.359451, 46.734108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271309, 29.417086, 46.557072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361725, -0.385482, -0.848857,
		-0.292916, -0.911396, 0.289061,
		-0.885073, 0.144083, -0.442589,
		36.005787, 29.460312, 46.424294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441856, 28.820398, 46.148357>,  <36.625340, 29.359451, 46.734108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441856, 28.820398, 46.148357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222565, 29.145414, 46.069134>,  <36.090992, 29.340424, 46.021599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222565, 29.145414, 46.069134>,  <36.441856, 28.820398, 46.148357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222565, 29.145414, 46.069134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294541, -0.034058, -0.955032,
		-0.782748, -0.581907, -0.220655,
		-0.548225, 0.812542, -0.198055,
		36.058098, 29.389177, 46.009716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161701, 28.615362, 45.484184>,  <36.441856, 28.820398, 46.148357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161701, 28.615362, 45.484184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067554, 29.002647, 45.518047>,  <36.011066, 29.235018, 45.538364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067554, 29.002647, 45.518047>,  <36.161701, 28.615362, 45.484184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067554, 29.002647, 45.518047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093419, 0.109244, -0.989615,
		-0.967406, -0.225017, -0.116162,
		-0.235370, 0.968211, 0.084662,
		35.996944, 29.293110, 45.543446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614082, 28.752762, 44.928303>,  <36.161701, 28.615362, 45.484184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614082, 28.752762, 44.928303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797958, 29.094244, 45.026180>,  <35.908283, 29.299133, 45.084908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.797958, 29.094244, 45.026180>,  <35.614082, 28.752762, 44.928303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797958, 29.094244, 45.026180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249264, 0.140426, -0.958200,
		-0.852380, 0.501469, -0.148245,
		0.459691, 0.853703, 0.244695,
		35.935867, 29.350355, 45.099590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259655, 29.183764, 44.517609>,  <35.614082, 28.752762, 44.928303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259655, 29.183764, 44.517609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616432, 29.335211, 44.616463>,  <35.830498, 29.426079, 44.675777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616432, 29.335211, 44.616463>,  <35.259655, 29.183764, 44.517609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616432, 29.335211, 44.616463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170362, 0.224885, -0.959377,
		-0.418816, 0.897816, 0.136083,
		0.891947, 0.378619, 0.247139,
		35.884018, 29.448797, 44.690605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309322, 29.848164, 44.028061>,  <35.259655, 29.183764, 44.517609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309322, 29.848164, 44.028061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671749, 29.725527, 44.144707>,  <35.889206, 29.651945, 44.214695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671749, 29.725527, 44.144707>,  <35.309322, 29.848164, 44.028061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671749, 29.725527, 44.144707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328481, 0.075229, -0.941510,
		0.266721, 0.948864, 0.168872,
		0.906069, -0.306592, 0.291618,
		35.943569, 29.633549, 44.232193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810646, 30.313349, 43.685394>,  <35.309322, 29.848164, 44.028061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810646, 30.313349, 43.685394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040108, 30.002607, 43.789249>,  <36.177784, 29.816162, 43.851562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040108, 30.002607, 43.789249>,  <35.810646, 30.313349, 43.685394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040108, 30.002607, 43.789249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413171, 0.000742, -0.910653,
		0.707252, 0.629680, 0.321400,
		0.573658, -0.776855, 0.259640,
		36.212204, 29.769550, 43.867142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598640, 30.459133, 43.491215>,  <35.810646, 30.313349, 43.685394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598640, 30.459133, 43.491215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537148, 30.064905, 43.519547>,  <36.500252, 29.828367, 43.536545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537148, 30.064905, 43.519547>,  <36.598640, 30.459133, 43.491215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537148, 30.064905, 43.519547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561143, -0.146081, -0.814726,
		0.813318, -0.085500, 0.575503,
		-0.153729, -0.985571, 0.070833,
		36.491028, 29.769234, 43.540798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185371, 30.198191, 43.418343>,  <36.598640, 30.459133, 43.491215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185371, 30.198191, 43.418343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930748, 29.901363, 43.334312>,  <36.777973, 29.723267, 43.283894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930748, 29.901363, 43.334312>,  <37.185371, 30.198191, 43.418343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930748, 29.901363, 43.334312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445081, -0.131012, -0.885855,
		0.629843, -0.657396, 0.413677,
		-0.636554, -0.742069, -0.210077,
		36.739780, 29.678743, 43.271290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718674, 29.693758, 43.149937>,  <37.185371, 30.198191, 43.418343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718674, 29.693758, 43.149937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346493, 29.622089, 43.022087>,  <37.123184, 29.579088, 42.945377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346493, 29.622089, 43.022087>,  <37.718674, 29.693758, 43.149937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346493, 29.622089, 43.022087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328568, -0.021869, -0.944227,
		0.162190, -0.983574, 0.079219,
		-0.930450, -0.179173, -0.319624,
		37.067356, 29.568338, 42.926201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743015, 29.183828, 42.563087>,  <37.718674, 29.693758, 43.149937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743015, 29.183828, 42.563087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401665, 29.387888, 42.520210>,  <37.196854, 29.510324, 42.494484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401665, 29.387888, 42.520210>,  <37.743015, 29.183828, 42.563087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401665, 29.387888, 42.520210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117954, -0.011333, -0.992954,
		-0.507772, -0.860010, -0.050503,
		-0.853378, 0.510152, -0.107196,
		37.145653, 29.540934, 42.488052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576530, 29.051706, 41.809246>,  <37.743015, 29.183828, 42.563087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576530, 29.051706, 41.809246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291649, 29.315136, 41.906452>,  <37.120720, 29.473194, 41.964775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.291649, 29.315136, 41.906452>,  <37.576530, 29.051706, 41.809246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291649, 29.315136, 41.906452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136281, 0.209880, -0.968183,
		-0.688622, -0.722657, -0.059726,
		-0.712199, 0.658572, 0.243012,
		37.077988, 29.512707, 41.979355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849861, 28.803143, 41.653625>,  <37.576530, 29.051706, 41.809246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849861, 28.803143, 41.653625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862144, 29.202950, 41.651714>,  <36.869514, 29.442833, 41.650566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862144, 29.202950, 41.651714>,  <36.849861, 28.803143, 41.653625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862144, 29.202950, 41.651714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043482, -0.003440, -0.999049,
		-0.998582, 0.030888, 0.043355,
		0.030709, 0.999517, -0.004778,
		36.871357, 29.502804, 41.650280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690445, 28.835747, 40.943134>,  <36.849861, 28.803143, 41.653625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690445, 28.835747, 40.943134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788525, 29.202442, 41.069286>,  <36.847374, 29.422461, 41.144978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788525, 29.202442, 41.069286>,  <36.690445, 28.835747, 40.943134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788525, 29.202442, 41.069286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052633, 0.337417, -0.939883,
		-0.968042, 0.213862, 0.130986,
		0.245202, 0.916740, 0.315378,
		36.862083, 29.477465, 41.163898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219559, 29.338282, 40.765614>,  <36.690445, 28.835747, 40.943134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219559, 29.338282, 40.765614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548512, 29.555820, 40.832439>,  <36.745884, 29.686344, 40.872536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548512, 29.555820, 40.832439>,  <36.219559, 29.338282, 40.765614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548512, 29.555820, 40.832439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037256, 0.344496, -0.938048,
		-0.567710, 0.765213, 0.303570,
		0.822385, 0.543849, 0.167065,
		36.795227, 29.718975, 40.882561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100460, 30.003336, 40.621590>,  <36.219559, 29.338282, 40.765614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100460, 30.003336, 40.621590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497837, 30.006504, 40.575958>,  <36.736263, 30.008406, 40.548580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497837, 30.006504, 40.575958>,  <36.100460, 30.003336, 40.621590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497837, 30.006504, 40.575958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111531, 0.287261, -0.951337,
		0.025235, 0.957820, 0.286260,
		0.993440, 0.007920, -0.114075,
		36.795868, 30.008881, 40.541737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223160, 30.635637, 40.391518>,  <36.100460, 30.003336, 40.621590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223160, 30.635637, 40.391518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552639, 30.422037, 40.315243>,  <36.750328, 30.293877, 40.269478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552639, 30.422037, 40.315243>,  <36.223160, 30.635637, 40.391518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552639, 30.422037, 40.315243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020308, 0.308295, -0.951074,
		0.566662, 0.787272, 0.243098,
		0.823700, -0.534001, -0.190687,
		36.799747, 30.261837, 40.258038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630730, 31.116627, 39.964615>,  <36.223160, 30.635637, 40.391518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630730, 31.116627, 39.964615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792671, 30.760757, 39.880169>,  <36.889835, 30.547235, 39.829502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792671, 30.760757, 39.880169>,  <36.630730, 31.116627, 39.964615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792671, 30.760757, 39.880169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047450, 0.251017, -0.966819,
		0.913148, 0.381405, 0.143841,
		0.404856, -0.889674, -0.211118,
		36.914127, 30.493855, 39.816833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141796, 31.239681, 39.589989>,  <36.630730, 31.116627, 39.964615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141796, 31.239681, 39.589989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061302, 30.857971, 39.501568>,  <37.013004, 30.628946, 39.448517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061302, 30.857971, 39.501568>,  <37.141796, 31.239681, 39.589989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061302, 30.857971, 39.501568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150683, 0.192823, -0.969595,
		0.967883, -0.228429, 0.104989,
		-0.201239, -0.954274, -0.221051,
		37.000931, 30.571690, 39.435253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793659, 30.899343, 39.297684>,  <37.141796, 31.239681, 39.589989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793659, 30.899343, 39.297684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444828, 30.749897, 39.171265>,  <37.235527, 30.660229, 39.095413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.444828, 30.749897, 39.171265>,  <37.793659, 30.899343, 39.297684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444828, 30.749897, 39.171265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286462, 0.133854, -0.948695,
		0.396754, -0.917874, -0.009705,
		-0.872082, -0.373618, -0.316043,
		37.183205, 30.637812, 39.076450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049690, 30.669403, 38.780796>,  <37.793659, 30.899343, 39.297684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049690, 30.669403, 38.780796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656078, 30.636902, 38.717445>,  <37.419910, 30.617401, 38.679436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656078, 30.636902, 38.717445>,  <38.049690, 30.669403, 38.780796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656078, 30.636902, 38.717445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157994, 0.011134, -0.987377,
		0.081992, -0.996631, 0.001881,
		-0.984031, -0.081254, -0.158375,
		37.360870, 30.612526, 38.669933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032574, 30.192818, 38.154263>,  <38.049690, 30.669403, 38.780796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032574, 30.192818, 38.154263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707237, 30.422436, 38.192101>,  <37.512035, 30.560205, 38.214802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.707237, 30.422436, 38.192101>,  <38.032574, 30.192818, 38.154263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707237, 30.422436, 38.192101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136358, 0.346157, -0.928214,
		-0.565579, -0.742058, -0.359820,
		-0.813343, 0.574043, 0.094594,
		37.463234, 30.594648, 38.220478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725452, 30.243439, 37.528076>,  <38.032574, 30.192818, 38.154263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725452, 30.243439, 37.528076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556858, 30.556528, 37.711246>,  <37.455700, 30.744381, 37.821148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556858, 30.556528, 37.711246>,  <37.725452, 30.243439, 37.528076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556858, 30.556528, 37.711246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133042, 0.552879, -0.822572,
		-0.897022, -0.285780, -0.337166,
		-0.421486, 0.782723, 0.457924,
		37.430412, 30.791346, 37.848625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382706, 30.630474, 37.024269>,  <37.725452, 30.243439, 37.528076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382706, 30.630474, 37.024269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405262, 30.902922, 37.316269>,  <37.418797, 31.066391, 37.491467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405262, 30.902922, 37.316269>,  <37.382706, 30.630474, 37.024269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405262, 30.902922, 37.316269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333657, 0.676268, -0.656761,
		-0.941007, 0.280603, -0.189126,
		0.056389, 0.681120, 0.729997,
		37.422180, 31.107258, 37.535267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102390, 31.243563, 36.748974>,  <37.382706, 30.630474, 37.024269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102390, 31.243563, 36.748974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297043, 31.366240, 37.076176>,  <37.413834, 31.439846, 37.272495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297043, 31.366240, 37.076176>,  <37.102390, 31.243563, 36.748974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297043, 31.366240, 37.076176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431998, 0.729374, -0.530463,
		-0.759319, 0.611516, 0.222447,
		0.486634, 0.306694, 0.818001,
		37.443031, 31.458248, 37.321575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996536, 31.952929, 36.658550>,  <37.102390, 31.243563, 36.748974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996536, 31.952929, 36.658550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278065, 31.916018, 36.940292>,  <37.446983, 31.893871, 37.109337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278065, 31.916018, 36.940292>,  <36.996536, 31.952929, 36.658550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278065, 31.916018, 36.940292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393774, 0.875934, -0.278715,
		-0.591252, 0.473524, 0.652837,
		0.703820, -0.092280, 0.704359,
		37.489212, 31.888334, 37.151600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018787, 32.537197, 37.136398>,  <36.996536, 31.952929, 36.658550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018787, 32.537197, 37.136398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387718, 32.383545, 37.153149>,  <37.609077, 32.291351, 37.163200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387718, 32.383545, 37.153149>,  <37.018787, 32.537197, 37.136398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387718, 32.383545, 37.153149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384298, 0.900569, -0.203200,
		0.040343, 0.203510, 0.978241,
		0.922327, -0.384134, 0.041877,
		37.664417, 32.268307, 37.165710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448086, 33.117542, 37.475311>,  <37.018787, 32.537197, 37.136398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448086, 33.117542, 37.475311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704617, 32.865585, 37.300072>,  <37.858536, 32.714409, 37.194927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704617, 32.865585, 37.300072>,  <37.448086, 33.117542, 37.475311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704617, 32.865585, 37.300072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581742, 0.771491, -0.257640,
		0.500274, -0.089628, 0.861216,
		0.641328, -0.629896, -0.438098,
		37.897015, 32.676617, 37.168644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104862, 33.361053, 37.751812>,  <37.448086, 33.117542, 37.475311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104862, 33.361053, 37.751812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151798, 33.139408, 37.422161>,  <38.179958, 33.006420, 37.224369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151798, 33.139408, 37.422161>,  <38.104862, 33.361053, 37.751812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151798, 33.139408, 37.422161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683449, 0.647137, -0.337805,
		0.720506, -0.523610, 0.454646,
		0.117340, -0.554118, -0.824127,
		38.187000, 32.973171, 37.174923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814552, 33.355614, 37.622414>,  <38.104862, 33.361053, 37.751812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814552, 33.355614, 37.622414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684978, 33.271942, 37.253349>,  <38.607235, 33.221741, 37.031910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.684978, 33.271942, 37.253349>,  <38.814552, 33.355614, 37.622414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684978, 33.271942, 37.253349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802505, 0.455746, -0.385072,
		0.501049, -0.865182, 0.020232,
		-0.323937, -0.209177, -0.922665,
		38.587799, 33.209190, 36.976551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.414864, 33.383930, 37.277596>,  <38.814552, 33.355614, 37.622414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.414864, 33.383930, 37.277596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140755, 33.391479, 36.986382>,  <38.976288, 33.396011, 36.811653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140755, 33.391479, 36.986382>,  <39.414864, 33.383930, 37.277596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140755, 33.391479, 36.986382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662390, 0.431669, -0.612292,
		0.302712, -0.901835, -0.308317,
		-0.685277, 0.018878, -0.728038,
		38.935173, 33.397144, 36.767971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750919, 33.144741, 36.690105>,  <39.414864, 33.383930, 37.277596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750919, 33.144741, 36.690105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435043, 33.343784, 36.546562>,  <39.245518, 33.463211, 36.460438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435043, 33.343784, 36.546562>,  <39.750919, 33.144741, 36.690105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435043, 33.343784, 36.546562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610866, 0.583498, -0.535137,
		-0.056899, -0.641804, -0.764755,
		-0.789686, 0.497612, -0.358856,
		39.198139, 33.493069, 36.438904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703739, 33.061119, 35.911297>,  <39.750919, 33.144741, 36.690105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703739, 33.061119, 35.911297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515747, 33.402946, 35.999683>,  <39.402950, 33.608044, 36.052715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515747, 33.402946, 35.999683>,  <39.703739, 33.061119, 35.911297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515747, 33.402946, 35.999683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743855, 0.518218, -0.422054,
		-0.475184, -0.033990, -0.879230,
		-0.469979, 0.854573, 0.220965,
		39.374752, 33.659317, 36.065971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550362, 33.451378, 35.330914>,  <39.703739, 33.061119, 35.911297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550362, 33.451378, 35.330914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623913, 33.702366, 35.633560>,  <39.668041, 33.852959, 35.815147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623913, 33.702366, 35.633560>,  <39.550362, 33.451378, 35.330914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623913, 33.702366, 35.633560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692839, 0.463282, -0.552579,
		-0.697255, 0.625819, -0.349550,
		0.183875, 0.627471, 0.756618,
		39.679073, 33.890606, 35.860546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513245, 34.127060, 34.983265>,  <39.550362, 33.451378, 35.330914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513245, 34.127060, 34.983265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739201, 34.150990, 35.312462>,  <39.874775, 34.165348, 35.509979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739201, 34.150990, 35.312462>,  <39.513245, 34.127060, 34.983265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739201, 34.150990, 35.312462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533556, 0.734336, -0.419605,
		-0.629459, 0.676144, 0.382897,
		0.564889, 0.059827, 0.822996,
		39.908669, 34.168938, 35.559361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348515, 34.788002, 35.261551>,  <39.513245, 34.127060, 34.983265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348515, 34.788002, 35.261551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723484, 34.677364, 35.346161>,  <39.948463, 34.610981, 35.396927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723484, 34.677364, 35.346161>,  <39.348515, 34.788002, 35.261551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723484, 34.677364, 35.346161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345848, 0.810116, -0.473393,
		-0.040423, 0.516923, 0.855077,
		0.937419, -0.276591, 0.211524,
		40.004711, 34.594387, 35.409618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825760, 35.318329, 35.659962>,  <39.348515, 34.788002, 35.261551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825760, 35.318329, 35.659962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027683, 35.075710, 35.414272>,  <40.148838, 34.930138, 35.266861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.027683, 35.075710, 35.414272>,  <39.825760, 35.318329, 35.659962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027683, 35.075710, 35.414272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417492, 0.794333, -0.441287,
		0.755557, -0.033665, 0.654217,
		0.504811, -0.606548, -0.614219,
		40.179127, 34.893745, 35.230007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557781, 35.482433, 35.771267>,  <39.825760, 35.318329, 35.659962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557781, 35.482433, 35.771267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425350, 35.344486, 35.419937>,  <40.345890, 35.261719, 35.209141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425350, 35.344486, 35.419937>,  <40.557781, 35.482433, 35.771267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425350, 35.344486, 35.419937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277533, 0.854058, -0.439954,
		0.901866, -0.389423, -0.187048,
		-0.331078, -0.344868, -0.878324,
		40.326027, 35.241024, 35.156441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242634, 35.150276, 35.707333>,  <40.557781, 35.482433, 35.771267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242634, 35.150276, 35.707333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150768, 35.539062, 35.687176>,  <41.095650, 35.772335, 35.675083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150768, 35.539062, 35.687176>,  <41.242634, 35.150276, 35.707333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150768, 35.539062, 35.687176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902092, 0.193151, -0.385906,
		-0.365354, -0.134087, -0.921161,
		-0.229668, 0.971964, -0.050390,
		41.081867, 35.830650, 35.672058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194904, 34.762486, 35.052498>,  <41.242634, 35.150276, 35.707333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194904, 34.762486, 35.052498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299549, 34.949913, 34.714977>,  <41.362335, 35.062370, 34.512466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299549, 34.949913, 34.714977>,  <41.194904, 34.762486, 35.052498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299549, 34.949913, 34.714977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050163, 0.879668, 0.472937,
		0.963868, -0.081400, 0.253640,
		0.261616, 0.468572, -0.843799,
		41.378033, 35.090485, 34.461838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823074, 35.200546, 35.140217>,  <41.194904, 34.762486, 35.052498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823074, 35.200546, 35.140217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585949, 35.358734, 34.859596>,  <41.443676, 35.453648, 34.691223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585949, 35.358734, 34.859596>,  <41.823074, 35.200546, 35.140217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585949, 35.358734, 34.859596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093027, 0.898920, 0.428123,
		0.799951, 0.188533, -0.569679,
		-0.592811, 0.395472, -0.701553,
		41.408104, 35.477375, 34.649132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200954, 35.156536, 35.753307>,  <41.823074, 35.200546, 35.140217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200954, 35.156536, 35.753307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442104, 35.369736, 35.515839>,  <42.586796, 35.497658, 35.373356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442104, 35.369736, 35.515839>,  <42.200954, 35.156536, 35.753307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442104, 35.369736, 35.515839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284814, 0.551301, 0.784187,
		0.745266, -0.641854, 0.180560,
		0.602876, 0.533002, -0.593674,
		42.622967, 35.529636, 35.337738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800144, 35.210842, 36.203083>,  <42.200954, 35.156536, 35.753307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800144, 35.210842, 36.203083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804928, 35.500282, 35.927036>,  <42.807796, 35.673946, 35.761406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.804928, 35.500282, 35.927036>,  <42.800144, 35.210842, 36.203083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804928, 35.500282, 35.927036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266977, 0.662802, 0.699583,
		0.963629, -0.192613, -0.185257,
		0.011960, 0.723597, -0.690119,
		42.808517, 35.717361, 35.720001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423611, 35.588291, 36.307518>,  <42.800144, 35.210842, 36.203083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423611, 35.588291, 36.307518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222202, 35.862263, 36.096867>,  <43.101357, 36.026646, 35.970478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.222202, 35.862263, 36.096867>,  <43.423611, 35.588291, 36.307518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222202, 35.862263, 36.096867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283255, 0.706713, 0.648324,
		0.816230, 0.177276, -0.549856,
		-0.503522, 0.684930, -0.526627,
		43.071144, 36.067741, 35.938877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831421, 36.204620, 36.283085>,  <43.423611, 35.588291, 36.307518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831421, 36.204620, 36.283085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466251, 36.333218, 36.182522>,  <43.247150, 36.410378, 36.122185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.466251, 36.333218, 36.182522>,  <43.831421, 36.204620, 36.283085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.466251, 36.333218, 36.182522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063295, 0.720088, 0.690990,
		0.403187, 0.614910, -0.677736,
		-0.912926, 0.321495, -0.251409,
		43.192375, 36.429665, 36.107098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.901989, 36.919254, 36.069691>,  <43.831421, 36.204620, 36.283085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.901989, 36.919254, 36.069691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528286, 36.839977, 36.188271>,  <43.304066, 36.792412, 36.259418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528286, 36.839977, 36.188271>,  <43.901989, 36.919254, 36.069691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528286, 36.839977, 36.188271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042980, 0.762685, 0.645341,
		-0.353998, 0.615656, -0.704026,
		-0.934258, -0.198190, 0.296450,
		43.248009, 36.780521, 36.277206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649433, 37.622963, 36.203823>,  <43.901989, 36.919254, 36.069691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649433, 37.622963, 36.203823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385139, 37.374317, 36.372120>,  <43.226562, 37.225132, 36.473099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385139, 37.374317, 36.372120>,  <43.649433, 37.622963, 36.203823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385139, 37.374317, 36.372120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228363, 0.700430, 0.676201,
		-0.715036, 0.350709, -0.604754,
		-0.660738, -0.621612, 0.420743,
		43.186916, 37.187832, 36.498344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182121, 38.101593, 36.581676>,  <43.649433, 37.622963, 36.203823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182121, 38.101593, 36.581676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114670, 37.741154, 36.741467>,  <43.074200, 37.524891, 36.837341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114670, 37.741154, 36.741467>,  <43.182121, 38.101593, 36.581676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114670, 37.741154, 36.741467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077758, 0.416174, 0.905954,
		-0.982607, 0.121709, -0.140248,
		-0.168631, -0.901103, 0.399472,
		43.064079, 37.470821, 36.861309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532757, 38.093647, 36.899662>,  <43.182121, 38.101593, 36.581676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532757, 38.093647, 36.899662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741837, 37.808750, 37.087063>,  <42.867283, 37.637810, 37.199505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.741837, 37.808750, 37.087063>,  <42.532757, 38.093647, 36.899662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.741837, 37.808750, 37.087063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143581, 0.468157, 0.871902,
		-0.840342, -0.523008, 0.142439,
		0.522695, -0.712244, 0.468506,
		42.898643, 37.595078, 37.227615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080009, 37.903450, 37.449997>,  <42.532757, 38.093647, 36.899662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080009, 37.903450, 37.449997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447872, 37.761742, 37.517784>,  <42.668591, 37.676716, 37.558456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.447872, 37.761742, 37.517784>,  <42.080009, 37.903450, 37.449997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.447872, 37.761742, 37.517784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005315, 0.442709, 0.896649,
		-0.392680, -0.823712, 0.409025,
		0.919660, -0.354270, 0.169465,
		42.723770, 37.655460, 37.568623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026329, 37.775040, 38.191288>,  <42.080009, 37.903450, 37.449997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026329, 37.775040, 38.191288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412743, 37.748066, 38.091507>,  <42.644592, 37.731880, 38.031639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412743, 37.748066, 38.091507>,  <42.026329, 37.775040, 38.191288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412743, 37.748066, 38.091507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257841, 0.187585, 0.947802,
		-0.017121, -0.979931, 0.198602,
		0.966035, -0.067435, -0.249455,
		42.702553, 37.727837, 38.016670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260590, 37.204788, 38.665874>,  <42.026329, 37.775040, 38.191288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260590, 37.204788, 38.665874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552494, 37.447102, 38.539082>,  <42.727634, 37.592491, 38.463005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552494, 37.447102, 38.539082>,  <42.260590, 37.204788, 38.665874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552494, 37.447102, 38.539082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385658, 0.018101, 0.922464,
		0.564554, -0.795421, -0.220417,
		0.729758, 0.605787, -0.316980,
		42.771420, 37.628838, 38.443989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792690, 37.033424, 39.084461>,  <42.260590, 37.204788, 38.665874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792690, 37.033424, 39.084461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931076, 37.384975, 38.953079>,  <43.014107, 37.595905, 38.874249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.931076, 37.384975, 38.953079>,  <42.792690, 37.033424, 39.084461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931076, 37.384975, 38.953079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303262, 0.226534, 0.925589,
		0.887885, -0.419830, -0.188157,
		0.345966, 0.878877, -0.328454,
		43.034866, 37.648640, 38.854542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511482, 37.088142, 39.361195>,  <42.792690, 37.033424, 39.084461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511482, 37.088142, 39.361195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356407, 37.452385, 39.303947>,  <43.263363, 37.670933, 39.269600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356407, 37.452385, 39.303947>,  <43.511482, 37.088142, 39.361195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356407, 37.452385, 39.303947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243289, 0.250843, 0.936957,
		0.889105, 0.328429, -0.318790,
		-0.387690, 0.910611, -0.143122,
		43.240101, 37.725567, 39.261009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.844040, 37.466557, 39.803715>,  <43.511482, 37.088142, 39.361195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.844040, 37.466557, 39.803715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540405, 37.714745, 39.724918>,  <43.358223, 37.863659, 39.677643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540405, 37.714745, 39.724918>,  <43.844040, 37.466557, 39.803715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540405, 37.714745, 39.724918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071286, 0.380004, 0.922234,
		0.647074, 0.686014, -0.332686,
		-0.759087, 0.620469, -0.196988,
		43.312679, 37.900887, 39.665821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143463, 38.006523, 40.132565>,  <43.844040, 37.466557, 39.803715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143463, 38.006523, 40.132565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753357, 38.076225, 40.078186>,  <43.519291, 38.118046, 40.045559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.753357, 38.076225, 40.078186>,  <44.143463, 38.006523, 40.132565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.753357, 38.076225, 40.078186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029885, 0.505482, 0.862319,
		0.218987, 0.845057, -0.487774,
		-0.975270, 0.174260, -0.135948,
		43.460777, 38.128502, 40.037403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997917, 38.728680, 40.302471>,  <44.143463, 38.006523, 40.132565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997917, 38.728680, 40.302471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648201, 38.540459, 40.350143>,  <43.438374, 38.427525, 40.378746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.648201, 38.540459, 40.350143>,  <43.997917, 38.728680, 40.302471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.648201, 38.540459, 40.350143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114289, 0.438170, 0.891597,
		-0.471763, 0.765891, -0.436865,
		-0.874287, -0.470551, 0.119179,
		43.385914, 38.399292, 40.385899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430080, 39.236828, 40.569237>,  <43.997917, 38.728680, 40.302471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430080, 39.236828, 40.569237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313877, 38.868332, 40.672714>,  <43.244156, 38.647236, 40.734802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313877, 38.868332, 40.672714>,  <43.430080, 39.236828, 40.569237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313877, 38.868332, 40.672714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237752, 0.331373, 0.913053,
		-0.926864, 0.203748, -0.315294,
		-0.290513, -0.921238, 0.258696,
		43.226723, 38.591961, 40.750324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991528, 39.329620, 41.031502>,  <43.430080, 39.236828, 40.569237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991528, 39.329620, 41.031502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042782, 38.940228, 41.107307>,  <43.073532, 38.706593, 41.152790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.042782, 38.940228, 41.107307>,  <42.991528, 39.329620, 41.031502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.042782, 38.940228, 41.107307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039375, 0.185943, 0.981771,
		-0.990975, -0.133257, -0.014506,
		0.128131, -0.973482, 0.189512,
		43.081223, 38.648182, 41.164162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659908, 39.222065, 41.680267>,  <42.991528, 39.329620, 41.031502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659908, 39.222065, 41.680267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892876, 38.896915, 41.678043>,  <43.032658, 38.701828, 41.676708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892876, 38.896915, 41.678043>,  <42.659908, 39.222065, 41.680267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892876, 38.896915, 41.678043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007778, -0.001267, 0.999969,
		-0.812851, -0.582445, 0.005584,
		0.582420, -0.812869, -0.005560,
		43.067600, 38.653053, 41.676376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.329723, 38.652252, 42.113274>,  <42.659908, 39.222065, 41.680267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.329723, 38.652252, 42.113274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724308, 38.590332, 42.091602>,  <42.961060, 38.553181, 42.078598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.724308, 38.590332, 42.091602>,  <42.329723, 38.652252, 42.113274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724308, 38.590332, 42.091602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070517, 0.102080, 0.992274,
		-0.148077, -0.982658, 0.111614,
		0.986459, -0.154803, -0.054178,
		43.020245, 38.543892, 42.075348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509285, 38.254890, 42.626076>,  <42.329723, 38.652252, 42.113274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509285, 38.254890, 42.626076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856136, 38.439236, 42.550514>,  <43.064247, 38.549843, 42.505177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856136, 38.439236, 42.550514>,  <42.509285, 38.254890, 42.626076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856136, 38.439236, 42.550514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138137, 0.141865, 0.980200,
		0.478542, -0.876057, 0.059353,
		0.867131, 0.460868, -0.188905,
		43.116276, 38.577496, 42.493843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964973, 38.059319, 43.257095>,  <42.509285, 38.254890, 42.626076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964973, 38.059319, 43.257095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047031, 38.397121, 43.059219>,  <43.096264, 38.599804, 42.940495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.047031, 38.397121, 43.059219>,  <42.964973, 38.059319, 43.257095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.047031, 38.397121, 43.059219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041923, 0.497395, 0.866511,
		0.977834, -0.198496, 0.066631,
		0.205140, 0.844511, -0.494691,
		43.108574, 38.650475, 42.910812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510895, 37.557964, 43.532417>,  <42.964973, 38.059319, 43.257095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510895, 37.557964, 43.532417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810307, 37.320301, 43.650185>,  <42.989956, 37.177704, 43.720844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810307, 37.320301, 43.650185>,  <42.510895, 37.557964, 43.532417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810307, 37.320301, 43.650185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662061, -0.694483, 0.281723,
		0.037079, -0.405799, -0.913210,
		0.748532, -0.594155, 0.294414,
		43.034866, 37.142056, 43.738510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.417103, 36.886814, 43.256874>,  <42.510895, 37.557964, 43.532417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.417103, 36.886814, 43.256874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636555, 36.830814, 43.586578>,  <42.768227, 36.797215, 43.784401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636555, 36.830814, 43.586578>,  <42.417103, 36.886814, 43.256874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636555, 36.830814, 43.586578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537452, -0.814246, 0.219427,
		0.640433, -0.563385, -0.521961,
		0.548626, -0.140001, 0.824262,
		42.801144, 36.788815, 43.833858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.030907, 36.199375, 43.366913>,  <42.417103, 36.886814, 43.256874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.030907, 36.199375, 43.366913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826332, 36.327736, 43.685776>,  <42.703587, 36.404755, 43.877094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826332, 36.327736, 43.685776>,  <43.030907, 36.199375, 43.366913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826332, 36.327736, 43.685776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428644, -0.899274, 0.087007,
		0.744781, -0.297197, 0.597473,
		-0.511434, 0.320905, 0.797155,
		42.672901, 36.424007, 43.924923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953976, 35.671009, 43.865891>,  <43.030907, 36.199375, 43.366913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953976, 35.671009, 43.865891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655357, 35.934116, 43.905930>,  <42.476189, 36.091980, 43.929955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.655357, 35.934116, 43.905930>,  <42.953976, 35.671009, 43.865891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.655357, 35.934116, 43.905930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647324, -0.752834, 0.119214,
		0.153772, 0.024203, 0.987810,
		-0.746542, 0.657765, 0.100098,
		42.431396, 36.131447, 43.935959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510139, 36.115101, 43.967808>,  <42.953976, 35.671009, 43.865891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510139, 36.115101, 43.967808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807617, 35.847759, 43.961792>,  <43.986103, 35.687355, 43.958183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807617, 35.847759, 43.961792>,  <43.510139, 36.115101, 43.967808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807617, 35.847759, 43.961792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047934, -0.030871, -0.998373,
		0.666798, 0.743206, -0.054996,
		0.743695, -0.668350, -0.015041,
		44.030727, 35.647255, 43.957279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.153419, 36.345882, 43.672695>,  <43.510139, 36.115101, 43.967808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.153419, 36.345882, 43.672695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101662, 35.951988, 43.626122>,  <44.070606, 35.715652, 43.598175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101662, 35.951988, 43.626122>,  <44.153419, 36.345882, 43.672695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101662, 35.951988, 43.626122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085482, 0.128065, -0.988075,
		0.987902, -0.117894, -0.100748,
		-0.129391, -0.984734, -0.116438,
		44.062843, 35.656567, 43.591190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.695114, 36.135559, 43.276276>,  <44.153419, 36.345882, 43.672695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.695114, 36.135559, 43.276276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381439, 35.888466, 43.252735>,  <44.193233, 35.740211, 43.238609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381439, 35.888466, 43.252735>,  <44.695114, 36.135559, 43.276276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381439, 35.888466, 43.252735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126140, -0.065831, -0.989826,
		0.607572, -0.783629, 0.129545,
		-0.784184, -0.617731, -0.058850,
		44.146183, 35.703148, 43.235081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.919571, 35.486534, 42.936077>,  <44.695114, 36.135559, 43.276276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.919571, 35.486534, 42.936077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538960, 35.594357, 42.876831>,  <44.310593, 35.659050, 42.841282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538960, 35.594357, 42.876831>,  <44.919571, 35.486534, 42.936077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538960, 35.594357, 42.876831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164355, 0.038565, -0.985647,
		-0.259978, -0.962211, -0.080999,
		-0.951524, 0.269560, -0.148119,
		44.253502, 35.675224, 42.832394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.647800, 35.061764, 42.401894>,  <44.919571, 35.486534, 42.936077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.647800, 35.061764, 42.401894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459888, 35.414875, 42.402084>,  <44.347141, 35.626743, 42.402199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.459888, 35.414875, 42.402084>,  <44.647800, 35.061764, 42.401894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.459888, 35.414875, 42.402084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304931, 0.162779, -0.938360,
		-0.828445, -0.440680, -0.345659,
		-0.469782, 0.882782, 0.000477,
		44.318954, 35.679710, 42.402225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.298866, 35.014347, 41.774311>,  <44.647800, 35.061764, 42.401894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.298866, 35.014347, 41.774311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274014, 35.399960, 41.877674>,  <44.259102, 35.631329, 41.939693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274014, 35.399960, 41.877674>,  <44.298866, 35.014347, 41.774311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274014, 35.399960, 41.877674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062816, 0.254622, -0.964998,
		-0.996089, -0.076188, 0.044737,
		-0.062130, 0.964035, 0.258412,
		44.255375, 35.689171, 41.955196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.803638, 35.223690, 41.322807>,  <44.298866, 35.014347, 41.774311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.803638, 35.223690, 41.322807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005562, 35.544117, 41.451466>,  <44.126717, 35.736374, 41.528660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005562, 35.544117, 41.451466>,  <43.803638, 35.223690, 41.322807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005562, 35.544117, 41.451466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099014, 0.316419, -0.943438,
		-0.857533, 0.508105, 0.080414,
		0.504810, 0.801067, 0.321649,
		44.157005, 35.784439, 41.547962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.446568, 35.791893, 41.039989>,  <43.803638, 35.223690, 41.322807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.446568, 35.791893, 41.039989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824165, 35.910618, 41.097649>,  <44.050724, 35.981853, 41.132244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.824165, 35.910618, 41.097649>,  <43.446568, 35.791893, 41.039989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.824165, 35.910618, 41.097649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070842, 0.244349, -0.967096,
		-0.322270, 0.923144, 0.209637,
		0.943993, 0.296815, 0.144144,
		44.107365, 35.999660, 41.140892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527592, 36.520065, 40.715458>,  <43.446568, 35.791893, 41.039989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527592, 36.520065, 40.715458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898922, 36.374710, 40.746861>,  <44.121719, 36.287498, 40.765701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898922, 36.374710, 40.746861>,  <43.527592, 36.520065, 40.715458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898922, 36.374710, 40.746861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123283, 0.101679, -0.987149,
		0.350734, 0.926073, 0.139190,
		0.928325, -0.363387, 0.078507,
		44.177418, 36.265694, 40.770412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.955116, 36.956478, 40.326630>,  <43.527592, 36.520065, 40.715458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.955116, 36.956478, 40.326630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215767, 36.653416, 40.341259>,  <44.372158, 36.471577, 40.350037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.215767, 36.653416, 40.341259>,  <43.955116, 36.956478, 40.326630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.215767, 36.653416, 40.341259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367697, 0.273339, -0.888867,
		0.663460, 0.592658, 0.456703,
		0.651629, -0.757656, 0.036569,
		44.411255, 36.426121, 40.352230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544853, 37.276257, 40.067589>,  <43.955116, 36.956478, 40.326630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544853, 37.276257, 40.067589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632221, 36.887756, 40.029716>,  <44.684643, 36.654655, 40.006992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632221, 36.887756, 40.029716>,  <44.544853, 37.276257, 40.067589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632221, 36.887756, 40.029716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400239, 0.177648, -0.899027,
		0.890001, 0.158470, 0.427534,
		0.218419, -0.971251, -0.094681,
		44.697746, 36.596382, 40.001312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189663, 37.241497, 39.715618>,  <44.544853, 37.276257, 40.067589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189663, 37.241497, 39.715618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035931, 36.875729, 39.664822>,  <44.943691, 36.656269, 39.634346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035931, 36.875729, 39.664822>,  <45.189663, 37.241497, 39.715618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035931, 36.875729, 39.664822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271829, 0.019368, -0.962151,
		0.882270, -0.404302, 0.241123,
		-0.384330, -0.914420, -0.126989,
		44.920631, 36.601402, 39.626724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659721, 36.793163, 39.326962>,  <45.189663, 37.241497, 39.715618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659721, 36.793163, 39.326962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312027, 36.599930, 39.284885>,  <45.103413, 36.483990, 39.259640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312027, 36.599930, 39.284885>,  <45.659721, 36.793163, 39.326962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312027, 36.599930, 39.284885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252265, -0.250378, -0.934705,
		0.425200, -0.839014, 0.339501,
		-0.869234, -0.483080, -0.105193,
		45.051258, 36.455006, 39.253326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.837601, 36.104034, 39.061977>,  <45.659721, 36.793163, 39.326962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.837601, 36.104034, 39.061977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470787, 36.221210, 38.953724>,  <45.250698, 36.291515, 38.888771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.470787, 36.221210, 38.953724>,  <45.837601, 36.104034, 39.061977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470787, 36.221210, 38.953724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176506, -0.310396, -0.934077,
		-0.357635, -0.904344, 0.232936,
		-0.917029, 0.292945, -0.270631,
		45.195679, 36.309093, 38.872536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569172, 35.572803, 38.569698>,  <45.837601, 36.104034, 39.061977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569172, 35.572803, 38.569698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292843, 35.855343, 38.507935>,  <45.127045, 36.024868, 38.470875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.292843, 35.855343, 38.507935>,  <45.569172, 35.572803, 38.569698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292843, 35.855343, 38.507935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155148, -0.063767, -0.985831,
		-0.706186, -0.704987, -0.065537,
		-0.690819, 0.706348, -0.154409,
		45.085598, 36.067245, 38.461613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.140308, 35.371731, 37.913708>,  <45.569172, 35.572803, 38.569698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.140308, 35.371731, 37.913708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079048, 35.764282, 37.960087>,  <45.042290, 35.999813, 37.987915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079048, 35.764282, 37.960087>,  <45.140308, 35.371731, 37.913708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079048, 35.764282, 37.960087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048734, 0.124693, -0.990998,
		-0.987000, -0.146124, -0.066924,
		-0.153154, 0.981376, 0.115951,
		45.033104, 36.058697, 37.994873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567383, 35.518345, 37.486355>,  <45.140308, 35.371731, 37.913708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567383, 35.518345, 37.486355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816029, 35.825214, 37.549641>,  <44.965218, 36.009338, 37.587612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.816029, 35.825214, 37.549641>,  <44.567383, 35.518345, 37.486355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.816029, 35.825214, 37.549641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195250, 0.043860, -0.979772,
		-0.758599, 0.639933, -0.122527,
		0.621615, 0.767178, 0.158219,
		45.002514, 36.055367, 37.597107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.382591, 35.894558, 36.868900>,  <44.567383, 35.518345, 37.486355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.382591, 35.894558, 36.868900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715336, 36.060734, 37.016094>,  <44.914982, 36.160439, 37.104412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.715336, 36.060734, 37.016094>,  <44.382591, 35.894558, 36.868900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.715336, 36.060734, 37.016094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248270, 0.314449, -0.916233,
		-0.496355, 0.853540, 0.158437,
		0.831862, 0.415442, 0.367987,
		44.964893, 36.185368, 37.126492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.274387, 36.591938, 36.770733>,  <44.382591, 35.894558, 36.868900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.274387, 36.591938, 36.770733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662865, 36.506302, 36.812572>,  <44.895950, 36.454918, 36.837677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662865, 36.506302, 36.812572>,  <44.274387, 36.591938, 36.770733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662865, 36.506302, 36.812572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135711, 0.136161, -0.981347,
		0.195859, 0.967276, 0.161294,
		0.971196, -0.214095, 0.104601,
		44.954224, 36.442074, 36.843952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.645618, 37.108753, 36.461296>,  <44.274387, 36.591938, 36.770733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.645618, 37.108753, 36.461296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907993, 36.808132, 36.489315>,  <45.065418, 36.627758, 36.506126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.907993, 36.808132, 36.489315>,  <44.645618, 37.108753, 36.461296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907993, 36.808132, 36.489315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342030, 0.213215, -0.915181,
		0.672873, 0.624263, 0.396910,
		0.655940, -0.751556, 0.070050,
		45.104774, 36.582664, 36.510330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344482, 37.501778, 36.404694>,  <44.645618, 37.108753, 36.461296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344482, 37.501778, 36.404694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408207, 37.114918, 36.325455>,  <45.446442, 36.882801, 36.277912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.408207, 37.114918, 36.325455>,  <45.344482, 37.501778, 36.404694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.408207, 37.114918, 36.325455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276485, 0.236340, -0.931504,
		0.947721, 0.093629, 0.305054,
		0.159312, -0.967149, -0.198097,
		45.456001, 36.824772, 36.266026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.000816, 37.373108, 36.034092>,  <45.344482, 37.501778, 36.404694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.000816, 37.373108, 36.034092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734539, 37.087566, 35.947132>,  <45.574772, 36.916241, 35.894958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.734539, 37.087566, 35.947132>,  <46.000816, 37.373108, 36.034092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734539, 37.087566, 35.947132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110148, 0.194138, -0.974771,
		0.738051, -0.672845, -0.050607,
		-0.665694, -0.713856, -0.217396,
		45.534832, 36.873409, 35.881912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174366, 37.274330, 35.340443>,  <46.000816, 37.373108, 36.034092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174366, 37.274330, 35.340443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850506, 37.043877, 35.385212>,  <45.656189, 36.905605, 35.412075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850506, 37.043877, 35.385212>,  <46.174366, 37.274330, 35.340443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850506, 37.043877, 35.385212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125906, -0.015756, -0.991917,
		0.573242, -0.817202, -0.059782,
		-0.809655, -0.576136, 0.111922,
		45.607609, 36.871037, 35.418789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279537, 36.785625, 34.859093>,  <46.174366, 37.274330, 35.340443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279537, 36.785625, 34.859093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889500, 36.742260, 34.936489>,  <45.655476, 36.716240, 34.982929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.889500, 36.742260, 34.936489>,  <46.279537, 36.785625, 34.859093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.889500, 36.742260, 34.936489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148605, -0.328290, -0.932814,
		0.164652, -0.938335, 0.304003,
		-0.975093, -0.108414, 0.193495,
		45.596973, 36.709736, 34.994537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.087315, 36.025612, 34.744698>,  <46.279537, 36.785625, 34.859093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.087315, 36.025612, 34.744698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775227, 36.271355, 34.697670>,  <45.587975, 36.418800, 34.669453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775227, 36.271355, 34.697670>,  <46.087315, 36.025612, 34.744698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775227, 36.271355, 34.697670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121172, -0.332848, -0.935163,
		-0.613658, -0.715385, 0.334138,
		-0.780218, 0.614358, -0.117570,
		45.541161, 36.455662, 34.662399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.003101, 35.599506, 35.373756>,  <46.087315, 36.025612, 34.744698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.003101, 35.599506, 35.373756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153282, 35.272503, 35.548447>,  <46.243389, 35.076302, 35.653259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153282, 35.272503, 35.548447>,  <46.003101, 35.599506, 35.373756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153282, 35.272503, 35.548447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616068, -0.131917, -0.776568,
		0.692459, 0.560611, 0.454110,
		0.375448, -0.817504, 0.436722,
		46.265915, 35.027252, 35.679462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.696796, 35.727512, 35.367275>,  <46.003101, 35.599506, 35.373756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.696796, 35.727512, 35.367275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.615097, 35.336056, 35.376560>,  <46.566078, 35.101181, 35.382133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.615097, 35.336056, 35.376560>,  <46.696796, 35.727512, 35.367275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.615097, 35.336056, 35.376560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546686, -0.133706, -0.826594,
		0.812045, -0.156138, 0.562320,
		-0.204248, -0.978644, 0.023217,
		46.553822, 35.042461, 35.383526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.187912, 35.544731, 34.979401>,  <46.696796, 35.727512, 35.367275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.187912, 35.544731, 34.979401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.968369, 35.210491, 34.970306>,  <46.836643, 35.009945, 34.964851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.968369, 35.210491, 34.970306>,  <47.187912, 35.544731, 34.979401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.968369, 35.210491, 34.970306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452442, -0.274094, -0.848628,
		0.702886, -0.476064, 0.528502,
		-0.548861, -0.835605, -0.022734,
		46.803711, 34.959808, 34.963486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.598652, 34.968540, 34.573067>,  <47.187912, 35.544731, 34.979401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.598652, 34.968540, 34.573067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.811214, 34.924419, 34.909031>,  <47.938751, 34.897945, 35.110607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.811214, 34.924419, 34.909031>,  <47.598652, 34.968540, 34.573067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.811214, 34.924419, 34.909031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137202, 0.989602, 0.043155,
		-0.835935, 0.092305, 0.541010,
		0.531402, -0.110303, 0.839908,
		47.970634, 34.891327, 35.161003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.274250, 32.632977, 43.614307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.901234, 32.579037, 43.480328>,  <31.677425, 32.546673, 43.399940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.901234, 32.579037, 43.480328>,  <32.274250, 32.632977, 43.614307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901234, 32.579037, 43.480328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327625, 0.073907, -0.941913,
		0.151774, -0.988105, -0.024740,
		-0.932538, -0.134853, -0.334945,
		31.621471, 32.538582, 43.379845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241783, 32.139797, 43.007656>,  <32.274250, 32.632977, 43.614307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241783, 32.139797, 43.007656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.952200, 32.414234, 42.978901>,  <31.778450, 32.578896, 42.961647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.952200, 32.414234, 42.978901>,  <32.241783, 32.139797, 43.007656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952200, 32.414234, 42.978901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321582, 0.243449, -0.915051,
		-0.610306, -0.685574, -0.396881,
		-0.723955, 0.686091, -0.071890,
		31.735014, 32.620060, 42.957333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092545, 32.011837, 42.376228>,  <32.241783, 32.139797, 43.007656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092545, 32.011837, 42.376228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.938574, 32.368839, 42.470261>,  <31.846191, 32.583042, 42.526680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.938574, 32.368839, 42.470261>,  <32.092545, 32.011837, 42.376228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938574, 32.368839, 42.470261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164768, 0.317072, -0.933979,
		-0.908120, -0.320781, -0.269107,
		-0.384929, 0.892505, 0.235085,
		31.823095, 32.636589, 42.540787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900393, 32.239906, 41.682095>,  <32.092545, 32.011837, 42.376228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900393, 32.239906, 41.682095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842493, 32.558678, 41.916687>,  <31.807753, 32.749939, 42.057442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.842493, 32.558678, 41.916687>,  <31.900393, 32.239906, 41.682095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842493, 32.558678, 41.916687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376612, 0.592480, -0.712131,
		-0.914992, 0.117794, -0.385893,
		-0.144749, 0.796926, 0.586478,
		31.799068, 32.797756, 42.092628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503021, 32.643539, 41.354885>,  <31.900393, 32.239906, 41.682095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503021, 32.643539, 41.354885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.611332, 32.930397, 41.611755>,  <31.676319, 33.102512, 41.765877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.611332, 32.930397, 41.611755>,  <31.503021, 32.643539, 41.354885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611332, 32.930397, 41.611755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373395, 0.536624, -0.756711,
		-0.887275, 0.444685, -0.122471,
		0.270777, 0.717140, 0.642175,
		31.692566, 33.145538, 41.804409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283895, 33.340267, 41.084526>,  <31.503021, 32.643539, 41.354885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283895, 33.340267, 41.084526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.596821, 33.375591, 41.331161>,  <31.784576, 33.396786, 41.479145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.596821, 33.375591, 41.331161>,  <31.283895, 33.340267, 41.084526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596821, 33.375591, 41.331161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484721, 0.535370, -0.691683,
		-0.391190, 0.839988, 0.376019,
		0.782314, 0.088315, 0.616591,
		31.831514, 33.402084, 41.516140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425806, 34.065178, 41.071712>,  <31.283895, 33.340267, 41.084526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425806, 34.065178, 41.071712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.767473, 33.887505, 41.179855>,  <31.972473, 33.780899, 41.244740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.767473, 33.887505, 41.179855>,  <31.425806, 34.065178, 41.071712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767473, 33.887505, 41.179855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475682, 0.457451, -0.751309,
		0.210048, 0.770348, 0.602033,
		0.854170, -0.444187, 0.270354,
		32.023724, 33.754250, 41.260960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931904, 34.600376, 40.945637>,  <31.425806, 34.065178, 41.071712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931904, 34.600376, 40.945637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.129925, 34.253616, 40.968960>,  <32.248737, 34.045559, 40.982956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.129925, 34.253616, 40.968960>,  <31.931904, 34.600376, 40.945637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129925, 34.253616, 40.968960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522454, 0.243385, -0.817194,
		0.694236, 0.435020, 0.573405,
		0.495054, -0.866903, 0.058312,
		32.278442, 33.993546, 40.986454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620762, 34.764763, 40.946510>,  <31.931904, 34.600376, 40.945637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620762, 34.764763, 40.946510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.587658, 34.388058, 40.816135>,  <32.567795, 34.162033, 40.737911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.587658, 34.388058, 40.816135>,  <32.620762, 34.764763, 40.946510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587658, 34.388058, 40.816135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535407, 0.233835, -0.811579,
		0.840530, -0.241672, 0.484874,
		-0.082755, -0.941762, -0.325939,
		32.562832, 34.105530, 40.718353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279385, 34.585854, 40.696819>,  <32.620762, 34.764763, 40.946510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279385, 34.585854, 40.696819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053516, 34.300915, 40.530102>,  <32.917995, 34.129951, 40.430073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.053516, 34.300915, 40.530102>,  <33.279385, 34.585854, 40.696819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053516, 34.300915, 40.530102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511792, 0.093954, -0.853956,
		0.647471, -0.695512, 0.311520,
		-0.564668, -0.712345, -0.416790,
		32.884117, 34.087212, 40.405064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821053, 34.183826, 40.371487>,  <33.279385, 34.585854, 40.696819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821053, 34.183826, 40.371487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.477623, 34.078075, 40.195782>,  <33.271564, 34.014626, 40.090359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.477623, 34.078075, 40.195782>,  <33.821053, 34.183826, 40.371487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477623, 34.078075, 40.195782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439114, 0.063028, -0.896218,
		0.264623, -0.962359, 0.061976,
		-0.858576, -0.264374, -0.439264,
		33.220051, 33.998764, 40.064003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921467, 33.601662, 40.084419>,  <33.821053, 34.183826, 40.371487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921467, 33.601662, 40.084419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.607655, 33.755219, 39.889633>,  <33.419365, 33.847351, 39.772762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.607655, 33.755219, 39.889633>,  <33.921467, 33.601662, 40.084419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607655, 33.755219, 39.889633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533835, 0.018603, -0.845384,
		-0.315476, -0.923192, -0.219529,
		-0.784535, 0.383890, -0.486963,
		33.372295, 33.870384, 39.743546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638821, 33.157211, 39.564053>,  <33.921467, 33.601662, 40.084419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638821, 33.157211, 39.564053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.513504, 33.504330, 39.409767>,  <33.438313, 33.712601, 39.317196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.513504, 33.504330, 39.409767>,  <33.638821, 33.157211, 39.564053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513504, 33.504330, 39.409767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438203, -0.228228, -0.869419,
		-0.842511, -0.441402, -0.308770,
		-0.313294, 0.867799, -0.385709,
		33.419518, 33.764671, 39.294056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613258, 33.043583, 38.890034>,  <33.638821, 33.157211, 39.564053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613258, 33.043583, 38.890034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.592407, 33.442890, 38.879135>,  <33.579895, 33.682476, 38.872597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.592407, 33.442890, 38.879135>,  <33.613258, 33.043583, 38.890034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592407, 33.442890, 38.879135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410649, -0.003441, -0.911788,
		-0.910302, -0.058720, -0.409758,
		-0.052130, 0.998269, -0.027246,
		33.576767, 33.742371, 38.870960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298328, 33.276848, 38.227131>,  <33.613258, 33.043583, 38.890034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298328, 33.276848, 38.227131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.475933, 33.611866, 38.354488>,  <33.582497, 33.812878, 38.430901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.475933, 33.611866, 38.354488>,  <33.298328, 33.276848, 38.227131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475933, 33.611866, 38.354488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471500, 0.083766, -0.877879,
		-0.761933, 0.539909, -0.357709,
		0.444011, 0.837545, 0.318391,
		33.609135, 33.863129, 38.450005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218998, 33.710972, 37.681477>,  <33.298328, 33.276848, 38.227131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218998, 33.710972, 37.681477> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.518620, 33.864334, 37.897594>,  <33.698391, 33.956352, 38.027267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.518620, 33.864334, 37.897594>,  <33.218998, 33.710972, 37.681477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518620, 33.864334, 37.897594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503002, 0.201640, -0.840435,
		-0.431173, 0.901300, -0.041815,
		0.749052, 0.383406, 0.540297,
		33.743336, 33.979355, 38.059685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404602, 34.248108, 37.267570>,  <33.218998, 33.710972, 37.681477>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404602, 34.248108, 37.267570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.719570, 34.189342, 37.507034>,  <33.908550, 34.154083, 37.650711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.719570, 34.189342, 37.507034>,  <33.404602, 34.248108, 37.267570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719570, 34.189342, 37.507034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602798, -0.019506, -0.797655,
		0.128861, 0.988957, 0.073198,
		0.787419, -0.146911, 0.598655,
		33.955795, 34.145267, 37.686630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882973, 34.774029, 37.059189>,  <33.404602, 34.248108, 37.267570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882973, 34.774029, 37.059189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.104130, 34.497005, 37.244522>,  <34.236824, 34.330791, 37.355721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.104130, 34.497005, 37.244522>,  <33.882973, 34.774029, 37.059189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104130, 34.497005, 37.244522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615965, -0.034774, -0.787006,
		0.561161, 0.720521, 0.407367,
		0.552888, -0.692561, 0.463329,
		34.269997, 34.289238, 37.383522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558167, 34.993195, 36.946426>,  <33.882973, 34.774029, 37.059189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558167, 34.993195, 36.946426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.584679, 34.606895, 37.046776>,  <34.600586, 34.375114, 37.106983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.584679, 34.606895, 37.046776>,  <34.558167, 34.993195, 36.946426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584679, 34.606895, 37.046776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649049, -0.149233, -0.745966,
		0.757854, 0.212271, 0.616927,
		0.066281, -0.965749, 0.250871,
		34.604565, 34.317169, 37.122036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318977, 34.885036, 36.893730>,  <34.558167, 34.993195, 36.946426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318977, 34.885036, 36.893730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161163, 34.517990, 36.912979>,  <35.066475, 34.297760, 36.924530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.161163, 34.517990, 36.912979>,  <35.318977, 34.885036, 36.893730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161163, 34.517990, 36.912979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655436, -0.317742, -0.685160,
		0.644007, -0.238778, 0.726801,
		-0.394536, -0.917619, 0.048125,
		35.042801, 34.242702, 36.927418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878075, 34.379696, 36.849327>,  <35.318977, 34.885036, 36.893730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878075, 34.379696, 36.849327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.544979, 34.174076, 36.767063>,  <35.345123, 34.050705, 36.717705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.544979, 34.174076, 36.767063>,  <35.878075, 34.379696, 36.849327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544979, 34.174076, 36.767063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471049, -0.462595, -0.751078,
		0.290957, -0.722327, 0.627365,
		-0.832740, -0.514051, -0.205656,
		35.295158, 34.019859, 36.705368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060467, 33.558933, 36.823162>,  <35.878075, 34.379696, 36.849327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060467, 33.558933, 36.823162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731670, 33.667965, 36.623150>,  <35.534393, 33.733383, 36.503143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.731670, 33.667965, 36.623150>,  <36.060467, 33.558933, 36.823162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731670, 33.667965, 36.623150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378638, -0.394276, -0.837365,
		-0.425402, -0.877636, 0.220880,
		-0.821989, 0.272583, -0.500032,
		35.485073, 33.749741, 36.473141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671585, 33.831589, 37.134064>,  <36.060467, 33.558933, 36.823162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671585, 33.831589, 37.134064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.828163, 34.189114, 37.221581>,  <36.922108, 34.403629, 37.274090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.828163, 34.189114, 37.221581>,  <36.671585, 33.831589, 37.134064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828163, 34.189114, 37.221581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255472, -0.122861, 0.958978,
		0.884029, -0.431280, 0.180251,
		0.391443, 0.893814, 0.218792,
		36.945595, 34.457256, 37.287220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997391, 33.751587, 37.782013>,  <36.671585, 33.831589, 37.134064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997391, 33.751587, 37.782013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.934242, 34.145004, 37.746872>,  <36.896351, 34.381054, 37.725788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.934242, 34.145004, 37.746872>,  <36.997391, 33.751587, 37.782013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934242, 34.145004, 37.746872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317303, 0.033716, 0.947725,
		0.935091, 0.177497, 0.306758,
		-0.157875, 0.983544, -0.087848,
		36.886879, 34.440067, 37.720516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382866, 34.149796, 38.268215>,  <36.997391, 33.751587, 37.782013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382866, 34.149796, 38.268215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.087814, 34.407852, 38.188515>,  <36.910786, 34.562687, 38.140694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.087814, 34.407852, 38.188515>,  <37.382866, 34.149796, 38.268215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087814, 34.407852, 38.188515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236526, 0.029514, 0.971177,
		0.632426, 0.763494, 0.130822,
		-0.737627, 0.645140, -0.199251,
		36.866528, 34.601395, 38.128738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270897, 34.635902, 38.791771>,  <37.382866, 34.149796, 38.268215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270897, 34.635902, 38.791771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930161, 34.733295, 38.606266>,  <36.725719, 34.791733, 38.494961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930161, 34.733295, 38.606266>,  <37.270897, 34.635902, 38.791771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930161, 34.733295, 38.606266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422240, 0.204739, 0.883060,
		0.309964, 0.948049, -0.071596,
		-0.851842, 0.243487, -0.463766,
		36.674606, 34.806343, 38.467136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941135, 35.231731, 39.060452>,  <37.270897, 34.635902, 38.791771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941135, 35.231731, 39.060452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.633312, 35.031590, 38.901745>,  <36.448620, 34.911503, 38.806519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.633312, 35.031590, 38.901745>,  <36.941135, 35.231731, 39.060452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633312, 35.031590, 38.901745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536184, 0.168834, 0.827044,
		-0.346828, 0.849199, -0.398210,
		-0.769557, -0.500356, -0.396770,
		36.402447, 34.881481, 38.782715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365067, 35.647640, 39.084759>,  <36.941135, 35.231731, 39.060452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365067, 35.647640, 39.084759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257469, 35.262463, 39.092651>,  <36.192909, 35.031357, 39.097385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257469, 35.262463, 39.092651>,  <36.365067, 35.647640, 39.084759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257469, 35.262463, 39.092651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525693, 0.163955, 0.834725,
		-0.807026, 0.214162, -0.550313,
		-0.268992, -0.962940, 0.019732,
		36.176773, 34.973579, 39.098572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765156, 35.667130, 39.533356>,  <36.365067, 35.647640, 39.084759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765156, 35.667130, 39.533356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800957, 35.273819, 39.469917>,  <35.822437, 35.037830, 39.431854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.800957, 35.273819, 39.469917>,  <35.765156, 35.667130, 39.533356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800957, 35.273819, 39.469917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533444, -0.181795, 0.826068,
		-0.841087, 0.010667, -0.540795,
		0.089502, -0.983279, -0.158596,
		35.827808, 34.978836, 39.422340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030468, 35.216698, 39.583103>,  <35.765156, 35.667130, 39.533356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030468, 35.216698, 39.583103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346237, 34.981632, 39.654057>,  <35.535698, 34.840591, 39.696629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346237, 34.981632, 39.654057>,  <35.030468, 35.216698, 39.583103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346237, 34.981632, 39.654057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438982, -0.338459, 0.832310,
		-0.429083, -0.734911, -0.525161,
		0.789419, -0.587667, 0.177386,
		35.583065, 34.805332, 39.707272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730595, 34.513626, 39.608204>,  <35.030468, 35.216698, 39.583103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730595, 34.513626, 39.608204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.067398, 34.505081, 39.823822>,  <35.269478, 34.499954, 39.953194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.067398, 34.505081, 39.823822>,  <34.730595, 34.513626, 39.608204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067398, 34.505081, 39.823822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528587, -0.232358, 0.816459,
		0.107813, -0.972396, -0.206937,
		0.842005, -0.021359, 0.539046,
		35.320000, 34.498672, 39.985535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615330, 33.961151, 39.960892>,  <34.730595, 34.513626, 39.608204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615330, 33.961151, 39.960892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907047, 34.149811, 40.159153>,  <35.082077, 34.263004, 40.278111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.907047, 34.149811, 40.159153>,  <34.615330, 33.961151, 39.960892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907047, 34.149811, 40.159153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455154, -0.206449, 0.866149,
		0.510844, -0.857279, 0.064110,
		0.729296, 0.471647, 0.495658,
		35.125835, 34.291306, 40.307850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711628, 33.621609, 40.507645>,  <34.615330, 33.961151, 39.960892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711628, 33.621609, 40.507645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892311, 33.956913, 40.629814>,  <35.000721, 34.158096, 40.703117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.892311, 33.956913, 40.629814>,  <34.711628, 33.621609, 40.507645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892311, 33.956913, 40.629814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203612, -0.236448, 0.950071,
		0.868623, -0.491339, 0.063875,
		0.451703, 0.838259, 0.305427,
		35.027821, 34.208389, 40.721443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952927, 33.423004, 41.058475>,  <34.711628, 33.621609, 40.507645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952927, 33.423004, 41.058475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026421, 33.810951, 41.122467>,  <35.070518, 34.043720, 41.160862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026421, 33.810951, 41.122467>,  <34.952927, 33.423004, 41.058475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026421, 33.810951, 41.122467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161718, -0.130709, 0.978142,
		0.969581, -0.205594, 0.132829,
		0.183738, 0.969869, 0.159981,
		35.081543, 34.101913, 41.170460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367363, 33.446339, 41.684196>,  <34.952927, 33.423004, 41.058475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367363, 33.446339, 41.684196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219814, 33.814594, 41.633038>,  <35.131287, 34.035549, 41.602341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.219814, 33.814594, 41.633038>,  <35.367363, 33.446339, 41.684196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219814, 33.814594, 41.633038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245903, 0.036037, 0.968624,
		0.896364, 0.388745, 0.213095,
		-0.368868, 0.920640, -0.127896,
		35.109154, 34.090786, 41.594669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575085, 33.829578, 42.320801>,  <35.367363, 33.446339, 41.684196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575085, 33.829578, 42.320801> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.254795, 34.007004, 42.159756>,  <35.062622, 34.113461, 42.063129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.254795, 34.007004, 42.159756>,  <35.575085, 33.829578, 42.320801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254795, 34.007004, 42.159756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467667, -0.042877, 0.882864,
		0.374347, 0.895215, 0.241774,
		-0.800720, 0.443568, -0.402611,
		35.014580, 34.140076, 42.038971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355377, 34.444157, 42.753761>,  <35.575085, 33.829578, 42.320801>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355377, 34.444157, 42.753761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.028591, 34.357716, 42.539894>,  <34.832520, 34.305851, 42.411572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.028591, 34.357716, 42.539894>,  <35.355377, 34.444157, 42.753761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028591, 34.357716, 42.539894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548299, 0.003738, 0.836274,
		-0.178721, 0.976364, -0.121541,
		-0.816962, -0.216100, -0.534671,
		34.783501, 34.292885, 42.379494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859177, 34.763924, 43.119141>,  <35.355377, 34.444157, 42.753761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859177, 34.763924, 43.119141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.658779, 34.495548, 42.900471>,  <34.538540, 34.334522, 42.769268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.658779, 34.495548, 42.900471>,  <34.859177, 34.763924, 43.119141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658779, 34.495548, 42.900471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566720, -0.223064, 0.793140,
		-0.654087, 0.707170, -0.268478,
		-0.500997, -0.670934, -0.546671,
		34.508480, 34.294270, 42.736469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.147331, 34.990097, 43.092155>,  <34.859177, 34.763924, 43.119141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.147331, 34.990097, 43.092155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156784, 34.597378, 43.016766>,  <34.162457, 34.361748, 42.971531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156784, 34.597378, 43.016766>,  <34.147331, 34.990097, 43.092155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156784, 34.597378, 43.016766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688441, -0.152684, 0.709039,
		-0.724907, 0.112996, -0.679515,
		0.023632, -0.981794, -0.188473,
		34.163876, 34.302841, 42.960224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460995, 34.812397, 43.034161>,  <34.147331, 34.990097, 43.092155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460995, 34.812397, 43.034161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.666546, 34.477909, 43.110752>,  <33.789879, 34.277218, 43.156708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.666546, 34.477909, 43.110752>,  <33.460995, 34.812397, 43.034161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666546, 34.477909, 43.110752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681988, -0.262822, 0.682507,
		-0.520403, -0.481310, -0.705352,
		0.513880, -0.836221, 0.191475,
		33.820709, 34.227043, 43.168194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.951328, 34.328014, 43.327621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287186, 34.125107, 43.405262>,  <33.488701, 34.003365, 43.451847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.287186, 34.125107, 43.405262>,  <32.951328, 34.328014, 43.327621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287186, 34.125107, 43.405262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476114, -0.515461, 0.712472,
		-0.261361, -0.690638, -0.674321,
		0.839646, -0.507266, 0.194101,
		33.539078, 33.972927, 43.463493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766994, 33.584320, 43.459347>,  <32.951328, 34.328014, 43.327621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766994, 33.584320, 43.459347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.129314, 33.634346, 43.621277>,  <33.346706, 33.664364, 43.718433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.129314, 33.634346, 43.621277>,  <32.766994, 33.584320, 43.459347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129314, 33.634346, 43.621277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140417, -0.812839, 0.565311,
		0.399759, -0.568903, -0.718709,
		0.905801, 0.125069, 0.404823,
		33.401054, 33.671867, 43.742725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078182, 32.900429, 43.510811>,  <32.766994, 33.584320, 43.459347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078182, 32.900429, 43.510811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.276657, 33.135071, 43.766838>,  <33.395741, 33.275856, 43.920456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.276657, 33.135071, 43.766838>,  <33.078182, 32.900429, 43.510811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276657, 33.135071, 43.766838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090541, -0.768167, 0.633815,
		0.863481, -0.256539, -0.434267,
		0.496188, 0.586607, 0.640070,
		33.425514, 33.311054, 43.958858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528812, 32.400066, 43.918850>,  <33.078182, 32.900429, 43.510811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528812, 32.400066, 43.918850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.538673, 32.728020, 44.147652>,  <33.544590, 32.924793, 44.284931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.538673, 32.728020, 44.147652>,  <33.528812, 32.400066, 43.918850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538673, 32.728020, 44.147652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006268, -0.572290, 0.820027,
		0.999676, -0.016631, -0.019248,
		0.024653, 0.819883, 0.572000,
		33.546070, 32.973984, 44.319252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908787, 32.150890, 44.530296>,  <33.528812, 32.400066, 43.918850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908787, 32.150890, 44.530296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.693897, 32.476788, 44.617554>,  <33.564964, 32.672325, 44.669907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.693897, 32.476788, 44.617554>,  <33.908787, 32.150890, 44.530296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693897, 32.476788, 44.617554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422460, -0.483781, 0.766475,
		0.730013, 0.319612, 0.604094,
		-0.537224, 0.814742, 0.218143,
		33.532730, 32.721210, 44.682999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117691, 32.137665, 45.105286>,  <33.908787, 32.150890, 44.530296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117691, 32.137665, 45.105286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.767380, 32.324497, 45.056538>,  <33.557194, 32.436596, 45.027287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.767380, 32.324497, 45.056538>,  <34.117691, 32.137665, 45.105286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767380, 32.324497, 45.056538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342214, -0.422686, 0.839182,
		0.340450, 0.776643, 0.530019,
		-0.875776, 0.467079, -0.121875,
		33.504646, 32.464622, 45.019974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.888885, 32.289845, 45.771610>,  <34.117691, 32.137665, 45.105286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.888885, 32.289845, 45.771610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548515, 32.348286, 45.569790>,  <33.344292, 32.383350, 45.448696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548515, 32.348286, 45.569790>,  <33.888885, 32.289845, 45.771610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548515, 32.348286, 45.569790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511831, -0.446608, 0.733874,
		-0.118112, 0.882720, 0.454813,
		-0.850928, 0.146108, -0.504553,
		33.293236, 32.392117, 45.418423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476665, 32.645332, 46.260735>,  <33.888885, 32.289845, 45.771610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476665, 32.645332, 46.260735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.227985, 32.508354, 45.978962>,  <33.078777, 32.426167, 45.809898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.227985, 32.508354, 45.978962>,  <33.476665, 32.645332, 46.260735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227985, 32.508354, 45.978962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695139, -0.173197, 0.697700,
		-0.360929, 0.923436, -0.130371,
		-0.621701, -0.342446, -0.704428,
		33.041473, 32.405621, 45.767635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842014, 33.078480, 46.346142>,  <33.476665, 32.645332, 46.260735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842014, 33.078480, 46.346142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754654, 32.727482, 46.175354>,  <32.702236, 32.516884, 46.072884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.754654, 32.727482, 46.175354>,  <32.842014, 33.078480, 46.346142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754654, 32.727482, 46.175354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682217, -0.175552, 0.709762,
		-0.697769, 0.446297, -0.560302,
		-0.218402, -0.877497, -0.426966,
		32.689133, 32.464233, 46.047264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165840, 33.034531, 46.376858>,  <32.842014, 33.078480, 46.346142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165840, 33.034531, 46.376858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267178, 32.649536, 46.337990>,  <32.327980, 32.418541, 46.314667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.267178, 32.649536, 46.337990>,  <32.165840, 33.034531, 46.376858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267178, 32.649536, 46.337990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441465, -0.204412, 0.873684,
		-0.860770, -0.178445, -0.476689,
		0.253346, -0.962483, -0.097174,
		32.343182, 32.360790, 46.308838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545012, 32.572937, 46.536369>,  <32.165840, 33.034531, 46.376858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545012, 32.572937, 46.536369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.860598, 32.327164, 46.536530>,  <32.049950, 32.179699, 46.536625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.860598, 32.327164, 46.536530>,  <31.545012, 32.572937, 46.536369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860598, 32.327164, 46.536530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421566, -0.540841, 0.727856,
		-0.447007, -0.574421, -0.685730,
		0.788966, -0.614437, 0.000397,
		32.097286, 32.142834, 46.536648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330492, 31.837051, 46.535664>,  <31.545012, 32.572937, 46.536369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330492, 31.837051, 46.535664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.691359, 31.845385, 46.708019>,  <31.907879, 31.850384, 46.811432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.691359, 31.845385, 46.708019>,  <31.330492, 31.837051, 46.535664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691359, 31.845385, 46.708019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350008, -0.548526, 0.759351,
		0.252170, -0.835874, -0.487570,
		0.902166, 0.020832, 0.430885,
		31.962009, 31.851635, 46.837284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303732, 31.215036, 46.863155>,  <31.330492, 31.837051, 46.535664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303732, 31.215036, 46.863155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.620039, 31.383801, 47.040550>,  <31.809822, 31.485058, 47.146988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.620039, 31.383801, 47.040550>,  <31.303732, 31.215036, 46.863155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620039, 31.383801, 47.040550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224684, -0.473877, 0.851445,
		0.569391, -0.772938, -0.279929,
		0.790766, 0.421910, 0.443488,
		31.857269, 31.510374, 47.173595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716751, 30.610617, 47.133789>,  <31.303732, 31.215036, 46.863155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716751, 30.610617, 47.133789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753841, 30.956680, 47.330929>,  <31.776096, 31.164318, 47.449211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753841, 30.956680, 47.330929>,  <31.716751, 30.610617, 47.133789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753841, 30.956680, 47.330929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124843, -0.480971, 0.867802,
		0.987834, -0.141996, 0.063411,
		0.092726, 0.865161, 0.492847,
		31.781660, 31.216228, 47.478783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204647, 30.510805, 47.660965>,  <31.716751, 30.610617, 47.133789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204647, 30.510805, 47.660965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.013264, 30.833696, 47.799213>,  <31.898434, 31.027431, 47.882164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.013264, 30.833696, 47.799213>,  <32.204647, 30.510805, 47.660965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013264, 30.833696, 47.799213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107435, -0.444456, 0.889335,
		0.871511, 0.388381, 0.299380,
		-0.478462, 0.807229, 0.345623,
		31.869724, 31.075865, 47.902901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557655, 30.508724, 48.255398>,  <32.204647, 30.510805, 47.660965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557655, 30.508724, 48.255398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.226631, 30.732256, 48.276779>,  <32.028015, 30.866375, 48.289608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.226631, 30.732256, 48.276779>,  <32.557655, 30.508724, 48.255398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226631, 30.732256, 48.276779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105489, -0.248330, 0.962915,
		0.551378, 0.791230, 0.264458,
		-0.827560, 0.558827, 0.053457,
		31.978363, 30.899904, 48.292816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657101, 30.978563, 48.766342>,  <32.557655, 30.508724, 48.255398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657101, 30.978563, 48.766342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.261581, 30.951159, 48.713287>,  <32.024269, 30.934715, 48.681454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.261581, 30.951159, 48.713287>,  <32.657101, 30.978563, 48.766342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261581, 30.951159, 48.713287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114882, -0.218222, 0.969114,
		-0.095340, 0.973491, 0.207906,
		-0.988793, -0.068511, -0.132642,
		31.964943, 30.930605, 48.673496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.469620, 31.090513, 49.396446>,  <32.657101, 30.978563, 48.766342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.469620, 31.090513, 49.396446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.139400, 30.936190, 49.231705>,  <31.941269, 30.843596, 49.132862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.139400, 30.936190, 49.231705>,  <32.469620, 31.090513, 49.396446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139400, 30.936190, 49.231705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232371, -0.432665, 0.871094,
		-0.514268, 0.814833, 0.267536,
		-0.825549, -0.385808, -0.411850,
		31.891735, 30.820448, 49.108150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853209, 31.410786, 49.691227>,  <32.469620, 31.090513, 49.396446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853209, 31.410786, 49.691227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780996, 31.042147, 49.553783>,  <31.737669, 30.820963, 49.471317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.780996, 31.042147, 49.553783>,  <31.853209, 31.410786, 49.691227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780996, 31.042147, 49.553783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081947, -0.334038, 0.938991,
		-0.980150, 0.197673, -0.015219,
		-0.180529, -0.921599, -0.343606,
		31.726837, 30.765667, 49.450703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651693, 31.069218, 50.279099>,  <31.853209, 31.410786, 49.691227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651693, 31.069218, 50.279099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.668919, 30.740887, 50.051277>,  <31.679255, 30.543888, 49.914585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.668919, 30.740887, 50.051277>,  <31.651693, 31.069218, 50.279099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668919, 30.740887, 50.051277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172953, -0.567595, 0.804936,
		-0.983988, 0.063841, -0.166408,
		0.043064, -0.820829, -0.569549,
		31.681837, 30.494638, 49.880413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012196, 30.597065, 50.411648>,  <31.651693, 31.069218, 50.279099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012196, 30.597065, 50.411648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.315617, 30.375473, 50.274414>,  <31.497669, 30.242517, 50.192074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.315617, 30.375473, 50.274414>,  <31.012196, 30.597065, 50.411648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315617, 30.375473, 50.274414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086065, -0.607079, 0.789967,
		-0.645910, -0.569699, -0.508176,
		0.758546, -0.553984, -0.343088,
		31.543182, 30.209278, 50.171490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793297, 30.021492, 50.669926>,  <31.012196, 30.597065, 50.411648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793297, 30.021492, 50.669926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.174969, 29.960764, 50.566784>,  <31.403973, 29.924328, 50.504898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.174969, 29.960764, 50.566784>,  <30.793297, 30.021492, 50.669926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174969, 29.960764, 50.566784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123752, -0.584360, 0.802003,
		-0.272437, -0.797167, -0.538798,
		0.954182, -0.151818, -0.257853,
		31.461224, 29.915218, 50.489429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894077, 29.266508, 50.650780>,  <30.793297, 30.021492, 50.669926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894077, 29.266508, 50.650780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.233068, 29.466106, 50.723202>,  <31.436464, 29.585865, 50.766655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.233068, 29.466106, 50.723202>,  <30.894077, 29.266508, 50.650780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233068, 29.466106, 50.723202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104602, -0.491379, 0.864641,
		0.520421, -0.713826, -0.468630,
		0.847479, 0.498997, 0.181057,
		31.487312, 29.615805, 50.777519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276503, 28.847294, 50.567295>,  <30.894077, 29.266508, 50.650780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276503, 28.847294, 50.567295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082418, 28.535906, 50.408020>,  <29.965967, 28.349073, 50.312454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.082418, 28.535906, 50.408020>,  <30.276503, 28.847294, 50.567295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082418, 28.535906, 50.408020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007967, 0.451431, -0.892271,
		0.874360, -0.436113, -0.212838,
		-0.485212, -0.778470, -0.398187,
		29.936855, 28.302364, 50.288563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626963, 28.639044, 49.921597>,  <30.276503, 28.847294, 50.567295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626963, 28.639044, 49.921597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.239771, 28.539017, 49.930382>,  <30.007456, 28.479000, 49.935654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.239771, 28.539017, 49.930382>,  <30.626963, 28.639044, 49.921597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.239771, 28.539017, 49.930382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068390, 0.178510, -0.981558,
		0.241538, -0.951629, -0.189896,
		-0.967978, -0.250071, 0.021964,
		29.949377, 28.463995, 49.936970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511436, 28.145216, 49.416649>,  <30.626963, 28.639044, 49.921597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511436, 28.145216, 49.416649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.150455, 28.299280, 49.493835>,  <29.933867, 28.391718, 49.540146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.150455, 28.299280, 49.493835>,  <30.511436, 28.145216, 49.416649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150455, 28.299280, 49.493835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044716, 0.361760, -0.931198,
		-0.428467, -0.848989, -0.309248,
		-0.902451, 0.385159, 0.192965,
		29.879721, 28.414827, 49.551723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084768, 27.937958, 48.792095>,  <30.511436, 28.145216, 49.416649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084768, 27.937958, 48.792095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.883842, 28.241947, 48.957077>,  <29.763287, 28.424341, 49.056065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.883842, 28.241947, 48.957077>,  <30.084768, 27.937958, 48.792095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883842, 28.241947, 48.957077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101608, 0.421815, -0.900971,
		-0.858695, -0.494479, -0.134664,
		-0.502314, 0.759976, 0.412453,
		29.733149, 28.469940, 49.080814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405325, 27.990656, 48.528946>,  <30.084768, 27.937958, 48.792095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405325, 27.990656, 48.528946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484982, 28.360920, 48.657631>,  <29.532776, 28.583078, 48.734840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.484982, 28.360920, 48.657631>,  <29.405325, 27.990656, 48.528946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484982, 28.360920, 48.657631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123268, 0.349339, -0.928852,
		-0.972187, 0.145317, 0.183673,
		0.199142, 0.925659, 0.321710,
		29.544724, 28.638618, 48.754143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892565, 28.437389, 48.213741>,  <29.405325, 27.990656, 48.528946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892565, 28.437389, 48.213741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.188604, 28.690258, 48.305492>,  <29.366228, 28.841980, 48.360542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.188604, 28.690258, 48.305492>,  <28.892565, 28.437389, 48.213741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188604, 28.690258, 48.305492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002194, 0.338807, -0.940853,
		-0.672496, 0.696827, 0.249363,
		0.740098, 0.632172, 0.229375,
		29.410633, 28.879910, 48.374306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698576, 29.055696, 47.868427>,  <28.892565, 28.437389, 48.213741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698576, 29.055696, 47.868427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.094753, 29.062641, 47.923161>,  <29.332458, 29.066809, 47.956001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.094753, 29.062641, 47.923161>,  <28.698576, 29.055696, 47.868427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094753, 29.062641, 47.923161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112397, 0.473425, -0.873633,
		-0.079950, 0.880663, 0.466948,
		0.990442, 0.017363, 0.136834,
		29.391886, 29.067850, 47.964211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906347, 29.748764, 47.760025>,  <28.698576, 29.055696, 47.868427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906347, 29.748764, 47.760025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.222507, 29.511301, 47.699574>,  <29.412203, 29.368824, 47.663303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.222507, 29.511301, 47.699574>,  <28.906347, 29.748764, 47.760025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222507, 29.511301, 47.699574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229135, 0.515296, -0.825813,
		0.568123, 0.618095, 0.543317,
		0.790400, -0.593657, -0.151124,
		29.459627, 29.333204, 47.654236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302963, 30.224270, 47.487953>,  <28.906347, 29.748764, 47.760025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302963, 30.224270, 47.487953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.530266, 29.902111, 47.420517>,  <29.666647, 29.708817, 47.380054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.530266, 29.902111, 47.420517>,  <29.302963, 30.224270, 47.487953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530266, 29.902111, 47.420517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335811, 0.414038, -0.846052,
		0.751211, 0.424157, 0.505740,
		0.568254, -0.805396, -0.168593,
		29.700743, 29.660492, 47.369938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977839, 30.458054, 47.424412>,  <29.302963, 30.224270, 47.487953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977839, 30.458054, 47.424412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971430, 30.104729, 47.237007>,  <29.967585, 29.892735, 47.124565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.971430, 30.104729, 47.237007>,  <29.977839, 30.458054, 47.424412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971430, 30.104729, 47.237007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462433, 0.408901, -0.786738,
		0.886510, -0.229260, 0.401921,
		-0.016021, -0.883312, -0.468512,
		29.966623, 29.839735, 47.096455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686241, 30.384531, 47.129078>,  <29.977839, 30.458054, 47.424412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686241, 30.384531, 47.129078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.449072, 30.150442, 46.907825>,  <30.306770, 30.009989, 46.775074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.449072, 30.150442, 46.907825>,  <30.686241, 30.384531, 47.129078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449072, 30.150442, 46.907825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394355, 0.387865, -0.833093,
		0.702086, -0.712092, 0.000811,
		-0.592925, -0.585223, -0.553132,
		30.271194, 29.974874, 46.741886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073267, 30.200651, 46.566494>,  <30.686241, 30.384531, 47.129078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073267, 30.200651, 46.566494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.708429, 30.101805, 46.435638>,  <30.489527, 30.042498, 46.357124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.708429, 30.101805, 46.435638>,  <31.073267, 30.200651, 46.566494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708429, 30.101805, 46.435638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238019, 0.330531, -0.913289,
		0.333853, -0.910860, -0.242644,
		-0.912080, -0.247151, -0.327151,
		30.434801, 30.027670, 46.337494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036415, 29.653412, 45.937916>,  <31.073267, 30.200651, 46.566494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036415, 29.653412, 45.937916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.727333, 29.907036, 45.949890>,  <30.541883, 30.059210, 45.957073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.727333, 29.907036, 45.949890>,  <31.036415, 29.653412, 45.937916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727333, 29.907036, 45.949890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214394, 0.305082, -0.927880,
		-0.597464, -0.710559, -0.371676,
		-0.772705, 0.634059, 0.029936,
		30.495522, 30.097254, 45.958870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710135, 29.596949, 45.278442>,  <31.036415, 29.653412, 45.937916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710135, 29.596949, 45.278442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.594418, 29.951370, 45.423340>,  <30.524988, 30.164022, 45.510277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.594418, 29.951370, 45.423340>,  <30.710135, 29.596949, 45.278442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594418, 29.951370, 45.423340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360249, 0.451378, -0.816381,
		-0.886867, -0.105673, -0.449779,
		-0.289290, 0.886054, 0.362244,
		30.507631, 30.217186, 45.532013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552578, 30.024370, 44.657078>,  <30.710135, 29.596949, 45.278442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552578, 30.024370, 44.657078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.586674, 30.290768, 44.953506>,  <30.607132, 30.450607, 45.131363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.586674, 30.290768, 44.953506>,  <30.552578, 30.024370, 44.657078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586674, 30.290768, 44.953506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030556, 0.741679, -0.670059,
		-0.995892, 0.079760, 0.042872,
		0.085241, 0.665996, 0.741069,
		30.612246, 30.490566, 45.175827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.099070, 30.513487, 44.367840>,  <30.552578, 30.024370, 44.657078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.099070, 30.513487, 44.367840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.332479, 30.702032, 44.632359>,  <30.472527, 30.815159, 44.791069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.332479, 30.702032, 44.632359>,  <30.099070, 30.513487, 44.367840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332479, 30.702032, 44.632359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112068, 0.759778, -0.640451,
		-0.804324, 0.447830, 0.390526,
		0.583527, 0.471365, 0.661295,
		30.507538, 30.843441, 44.830746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.782276, 31.193144, 44.505188>,  <30.099070, 30.513487, 44.367840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.782276, 31.193144, 44.505188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.156101, 31.245703, 44.637447>,  <30.380396, 31.277237, 44.716805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.156101, 31.245703, 44.637447>,  <29.782276, 31.193144, 44.505188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156101, 31.245703, 44.637447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054269, 0.865797, -0.497444,
		-0.351638, 0.482836, 0.802010,
		0.934562, 0.131395, 0.330650,
		30.436470, 31.285122, 44.736641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837372, 31.917828, 44.728771>,  <29.782276, 31.193144, 44.505188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837372, 31.917828, 44.728771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201876, 31.783348, 44.633625>,  <30.420578, 31.702662, 44.576538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201876, 31.783348, 44.633625>,  <29.837372, 31.917828, 44.728771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201876, 31.783348, 44.633625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153376, 0.813067, -0.561603,
		0.382208, 0.475283, 0.792479,
		0.911259, -0.336197, -0.237864,
		30.475254, 31.682489, 44.562267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.295771, 32.592541, 44.710682>,  <29.837372, 31.917828, 44.728771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.295771, 32.592541, 44.710682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.513508, 32.322495, 44.511517>,  <30.644150, 32.160469, 44.392017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.513508, 32.322495, 44.511517>,  <30.295771, 32.592541, 44.710682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513508, 32.322495, 44.511517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390150, 0.729199, -0.562184,
		0.742613, 0.111762, 0.660330,
		0.544343, -0.675113, -0.497909,
		30.676811, 32.119961, 44.362144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017445, 32.935440, 44.626163>,  <30.295771, 32.592541, 44.710682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017445, 32.935440, 44.626163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.979696, 32.644032, 44.354767>,  <30.957048, 32.469185, 44.191929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.979696, 32.644032, 44.354767>,  <31.017445, 32.935440, 44.626163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979696, 32.644032, 44.354767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283875, 0.633543, -0.719748,
		0.954206, -0.260528, 0.147023,
		-0.094370, -0.728524, -0.678488,
		30.951385, 32.425476, 44.151222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674303, 33.073692, 44.182293>,  <31.017445, 32.935440, 44.626163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674303, 33.073692, 44.182293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449860, 32.830704, 43.957390>,  <31.315193, 32.684910, 43.822449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.449860, 32.830704, 43.957390>,  <31.674303, 33.073692, 44.182293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449860, 32.830704, 43.957390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207175, 0.554577, -0.805930,
		0.801398, -0.568698, -0.185322,
		-0.561106, -0.607476, -0.562256,
		31.281528, 32.648460, 43.788712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.255272, 38.332787, 41.782063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.879318, 38.383289, 41.908978>,  <43.653744, 38.413589, 41.985126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.879318, 38.383289, 41.908978>,  <44.255272, 38.332787, 41.782063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879318, 38.383289, 41.908978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336810, -0.189561, -0.922294,
		-0.056298, -0.973718, 0.220690,
		-0.939888, 0.126254, 0.317286,
		43.597351, 38.421165, 42.004162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896515, 37.711582, 41.623898>,  <44.255272, 38.332787, 41.782063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896515, 37.711582, 41.623898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.616356, 37.996742, 41.637848>,  <43.448261, 38.167839, 41.646217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.616356, 37.996742, 41.637848>,  <43.896515, 37.711582, 41.623898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616356, 37.996742, 41.637848> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370590, -0.321459, -0.871393,
		-0.610003, -0.623250, 0.489343,
		-0.700399, 0.712898, 0.034879,
		43.406235, 38.210613, 41.648312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292564, 37.400993, 41.441364>,  <43.896515, 37.711582, 41.623898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292564, 37.400993, 41.441364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.229309, 37.785240, 41.349960>,  <43.191357, 38.015789, 41.295116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.229309, 37.785240, 41.349960>,  <43.292564, 37.400993, 41.441364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229309, 37.785240, 41.349960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197241, -0.257489, -0.945936,
		-0.967517, -0.104514, 0.230190,
		-0.158135, 0.960612, -0.228510,
		43.181870, 38.073425, 41.281406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.743271, 37.435753, 41.001514>,  <43.292564, 37.400993, 41.441364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.743271, 37.435753, 41.001514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.904682, 37.792767, 40.920979>,  <43.001530, 38.006977, 40.872658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.904682, 37.792767, 40.920979>,  <42.743271, 37.435753, 41.001514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904682, 37.792767, 40.920979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292512, -0.082662, -0.952682,
		-0.866948, 0.443334, 0.227721,
		0.403533, 0.892537, -0.201344,
		43.025742, 38.060528, 40.860577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350876, 37.603489, 40.430958>,  <42.743271, 37.435753, 41.001514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350876, 37.603489, 40.430958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.656288, 37.861427, 40.417137>,  <42.839535, 38.016190, 40.408844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.656288, 37.861427, 40.417137>,  <42.350876, 37.603489, 40.430958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656288, 37.861427, 40.417137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149717, 0.124726, -0.980830,
		-0.628177, 0.754066, 0.191777,
		0.763530, 0.644847, -0.034547,
		42.885345, 38.054882, 40.406773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112499, 38.176960, 40.002102>,  <42.350876, 37.603489, 40.430958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112499, 38.176960, 40.002102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.511261, 38.145725, 39.998363>,  <42.750519, 38.126984, 39.996120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.511261, 38.145725, 39.998363>,  <42.112499, 38.176960, 40.002102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.511261, 38.145725, 39.998363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014927, -0.071179, -0.997352,
		0.077212, 0.994403, -0.072124,
		0.996903, -0.078084, -0.009348,
		42.810333, 38.122299, 39.995560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.299450, 38.695084, 39.430626>,  <42.112499, 38.176960, 40.002102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.299450, 38.695084, 39.430626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.601105, 38.444248, 39.508629>,  <42.782097, 38.293747, 39.555431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.601105, 38.444248, 39.508629>,  <42.299450, 38.695084, 39.430626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.601105, 38.444248, 39.508629> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041144, -0.251241, -0.967050,
		0.655423, 0.737315, -0.163670,
		0.754141, -0.627092, 0.195005,
		42.827347, 38.256119, 39.567131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684612, 38.846218, 38.851810>,  <42.299450, 38.695084, 39.430626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684612, 38.846218, 38.851810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.861019, 38.513805, 38.987389>,  <42.966862, 38.314358, 39.068737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.861019, 38.513805, 38.987389>,  <42.684612, 38.846218, 38.851810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861019, 38.513805, 38.987389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056653, -0.351129, -0.934611,
		0.895708, 0.431383, -0.107774,
		0.441018, -0.831034, 0.338949,
		42.993324, 38.264496, 39.089073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.315361, 38.834473, 38.477203>,  <42.684612, 38.846218, 38.851810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.315361, 38.834473, 38.477203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222633, 38.459469, 38.580994>,  <43.166996, 38.234467, 38.643269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222633, 38.459469, 38.580994>,  <43.315361, 38.834473, 38.477203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222633, 38.459469, 38.580994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183691, -0.304133, -0.934752,
		0.955258, -0.169029, 0.242716,
		-0.231819, -0.937514, 0.259476,
		43.153088, 38.178215, 38.658836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765491, 38.436424, 38.016048>,  <43.315361, 38.834473, 38.477203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765491, 38.436424, 38.016048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.479385, 38.196461, 38.159439>,  <43.307720, 38.052483, 38.245476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.479385, 38.196461, 38.159439>,  <43.765491, 38.436424, 38.016048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479385, 38.196461, 38.159439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124727, -0.395137, -0.910116,
		0.687634, -0.695686, 0.207803,
		-0.715265, -0.599907, 0.358480,
		43.264805, 38.016487, 38.266983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.989162, 37.851444, 37.812096>,  <43.765491, 38.436424, 38.016048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.989162, 37.851444, 37.812096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.602047, 37.776573, 37.879440>,  <43.369778, 37.731651, 37.919846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.602047, 37.776573, 37.879440>,  <43.989162, 37.851444, 37.812096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602047, 37.776573, 37.879440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021497, -0.604870, -0.796034,
		0.250832, -0.774014, 0.581365,
		-0.967792, -0.187173, 0.168359,
		43.311710, 37.720421, 37.929947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916241, 37.195946, 37.683022>,  <43.989162, 37.851444, 37.812096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916241, 37.195946, 37.683022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547493, 37.347225, 37.649261>,  <43.326244, 37.437992, 37.629005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.547493, 37.347225, 37.649261>,  <43.916241, 37.195946, 37.683022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.547493, 37.347225, 37.649261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114928, -0.474865, -0.872522,
		-0.370066, -0.794651, 0.481228,
		-0.921869, 0.378198, -0.084404,
		43.270931, 37.460686, 37.623940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497467, 36.549381, 37.719856>,  <43.916241, 37.195946, 37.683022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497467, 36.549381, 37.719856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308044, 36.864674, 37.562664>,  <43.194389, 37.053848, 37.468349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.308044, 36.864674, 37.562664>,  <43.497467, 36.549381, 37.719856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308044, 36.864674, 37.562664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139251, -0.507577, -0.850279,
		-0.869686, -0.347932, 0.350129,
		-0.473557, 0.788231, -0.392982,
		43.165977, 37.101143, 37.444771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.800495, 36.352196, 37.428173>,  <43.497467, 36.549381, 37.719856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.800495, 36.352196, 37.428173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.896511, 36.694256, 37.244392>,  <42.954121, 36.899494, 37.134125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.896511, 36.694256, 37.244392>,  <42.800495, 36.352196, 37.428173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896511, 36.694256, 37.244392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204758, -0.418038, -0.885053,
		-0.948923, 0.306523, 0.074755,
		0.240038, 0.855154, -0.459449,
		42.968521, 36.950802, 37.106556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.327061, 36.406773, 36.979263>,  <42.800495, 36.352196, 37.428173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.327061, 36.406773, 36.979263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.587654, 36.669964, 36.828194>,  <42.744011, 36.827877, 36.737553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.587654, 36.669964, 36.828194>,  <42.327061, 36.406773, 36.979263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587654, 36.669964, 36.828194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205888, -0.325794, -0.922750,
		-0.730189, 0.678917, -0.076781,
		0.651486, 0.657974, -0.377672,
		42.783100, 36.867355, 36.714893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938126, 36.807785, 36.413971>,  <42.327061, 36.406773, 36.979263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938126, 36.807785, 36.413971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336483, 36.792843, 36.380978>,  <42.575497, 36.783878, 36.361183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336483, 36.792843, 36.380978>,  <41.938126, 36.807785, 36.413971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336483, 36.792843, 36.380978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090115, -0.497832, -0.862579,
		-0.008840, 0.866468, -0.499154,
		0.995892, -0.037356, -0.082483,
		42.635250, 36.781635, 36.356232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110237, 37.034744, 35.690445>,  <41.938126, 36.807785, 36.413971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110237, 37.034744, 35.690445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.449257, 36.861233, 35.812752>,  <42.652668, 36.757126, 35.886135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.449257, 36.861233, 35.812752>,  <42.110237, 37.034744, 35.690445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.449257, 36.861233, 35.812752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008302, -0.565232, -0.824890,
		0.530645, 0.701677, -0.475464,
		0.847554, -0.433777, 0.305763,
		42.703522, 36.731098, 35.904480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537540, 36.992886, 35.099018>,  <42.110237, 37.034744, 35.690445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537540, 36.992886, 35.099018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.678623, 36.703732, 35.336685>,  <42.763271, 36.530239, 35.479286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.678623, 36.703732, 35.336685>,  <42.537540, 36.992886, 35.099018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678623, 36.703732, 35.336685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099332, -0.602459, -0.791945,
		0.930447, 0.338343, -0.140685,
		0.352705, -0.722888, 0.594165,
		42.784435, 36.486866, 35.514935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954056, 36.633083, 34.762192>,  <42.537540, 36.992886, 35.099018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954056, 36.633083, 34.762192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.957733, 36.351170, 35.045937>,  <42.959938, 36.182022, 35.216183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.957733, 36.351170, 35.045937>,  <42.954056, 36.633083, 34.762192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957733, 36.351170, 35.045937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088215, -0.706056, -0.702640,
		0.996059, 0.069034, 0.055683,
		0.009191, -0.704783, 0.709363,
		42.960491, 36.139736, 35.258747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415722, 36.129250, 34.510933>,  <42.954056, 36.633083, 34.762192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415722, 36.129250, 34.510933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166817, 35.960342, 34.774593>,  <43.017471, 35.858997, 34.932789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166817, 35.960342, 34.774593>,  <43.415722, 36.129250, 34.510933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166817, 35.960342, 34.774593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131667, -0.773576, -0.619874,
		0.771653, -0.472515, 0.425771,
		-0.622266, -0.422268, 0.659147,
		42.980137, 35.833664, 34.972336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967323, 36.655884, 34.551228>,  <43.415722, 36.129250, 34.510933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967323, 36.655884, 34.551228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.794544, 37.002655, 34.650707>,  <43.690876, 37.210720, 34.710396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.794544, 37.002655, 34.650707>,  <43.967323, 36.655884, 34.551228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794544, 37.002655, 34.650707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633132, -0.487856, 0.600950,
		0.642313, 0.102117, 0.759609,
		-0.431947, 0.866931, 0.248703,
		43.664959, 37.262733, 34.725319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447285, 37.214844, 34.682491>,  <43.967323, 36.655884, 34.551228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447285, 37.214844, 34.682491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.753437, 36.957680, 34.694244>,  <44.937130, 36.803383, 34.701298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.753437, 36.957680, 34.694244>,  <44.447285, 37.214844, 34.682491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753437, 36.957680, 34.694244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091287, 0.153649, 0.983900,
		-0.637072, -0.750374, 0.176289,
		0.765380, -0.642908, 0.029386,
		44.983051, 36.764809, 34.703060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327652, 36.759190, 35.230087>,  <44.447285, 37.214844, 34.682491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327652, 36.759190, 35.230087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718048, 36.715134, 35.154915>,  <44.952286, 36.688702, 35.109810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.718048, 36.715134, 35.154915>,  <44.327652, 36.759190, 35.230087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718048, 36.715134, 35.154915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202239, 0.137653, 0.969614,
		-0.080922, -0.984338, 0.156621,
		0.975987, -0.110139, -0.187932,
		45.010845, 36.682091, 35.098534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.522564, 36.149696, 35.599415>,  <44.327652, 36.759190, 35.230087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.522564, 36.149696, 35.599415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.849255, 36.374283, 35.546173>,  <45.045269, 36.509033, 35.514229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.849255, 36.374283, 35.546173>,  <44.522564, 36.149696, 35.599415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849255, 36.374283, 35.546173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238308, -0.118132, 0.963978,
		0.525516, -0.819025, -0.230283,
		0.816726, 0.561464, -0.133100,
		45.094273, 36.542721, 35.506245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062054, 35.707935, 35.747871>,  <44.522564, 36.149696, 35.599415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062054, 35.707935, 35.747871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.251148, 36.059387, 35.774796>,  <45.364605, 36.270260, 35.790951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.251148, 36.059387, 35.774796>,  <45.062054, 35.707935, 35.747871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251148, 36.059387, 35.774796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304527, -0.234564, 0.923170,
		0.826914, -0.415917, -0.378453,
		0.472734, 0.878632, 0.067306,
		45.392967, 36.322975, 35.794987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665005, 35.482712, 36.102226>,  <45.062054, 35.707935, 35.747871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665005, 35.482712, 36.102226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.611439, 35.877926, 36.132812>,  <45.579300, 36.115055, 36.151165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.611439, 35.877926, 36.132812>,  <45.665005, 35.482712, 36.102226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611439, 35.877926, 36.132812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046116, -0.083290, 0.995458,
		0.989919, 0.129779, 0.056718,
		-0.133913, 0.988039, 0.076465,
		45.571266, 36.174339, 36.155750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.049919, 35.654419, 36.606285>,  <45.665005, 35.482712, 36.102226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.049919, 35.654419, 36.606285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.764698, 35.932636, 36.571033>,  <45.593563, 36.099567, 36.549881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.764698, 35.932636, 36.571033>,  <46.049919, 35.654419, 36.606285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764698, 35.932636, 36.571033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128925, -0.006519, 0.991633,
		0.689150, 0.718454, 0.094321,
		-0.713057, 0.695544, -0.088133,
		45.550781, 36.141300, 36.544594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.236320, 36.211033, 37.051590>,  <46.049919, 35.654419, 36.606285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.236320, 36.211033, 37.051590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.843853, 36.248203, 36.983856>,  <45.608372, 36.270508, 36.943214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.843853, 36.248203, 36.983856>,  <46.236320, 36.211033, 37.051590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.843853, 36.248203, 36.983856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171300, -0.013541, 0.985126,
		0.089253, 0.995580, 0.029205,
		-0.981168, 0.092929, -0.169334,
		45.549503, 36.276081, 36.933056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.106945, 36.842712, 37.431873>,  <46.236320, 36.211033, 37.051590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.106945, 36.842712, 37.431873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.764812, 36.639866, 37.389462>,  <45.559532, 36.518158, 37.364014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.764812, 36.639866, 37.389462>,  <46.106945, 36.842712, 37.431873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764812, 36.639866, 37.389462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216375, 0.163714, 0.962486,
		-0.470737, 0.846185, -0.249757,
		-0.855330, -0.507119, -0.106027,
		45.508213, 36.487732, 37.357655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.596912, 37.179497, 37.828922>,  <46.106945, 36.842712, 37.431873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.596912, 37.179497, 37.828922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.411030, 36.833622, 37.752647>,  <45.299500, 36.626099, 37.706882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.411030, 36.833622, 37.752647>,  <45.596912, 37.179497, 37.828922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411030, 36.833622, 37.752647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270147, -0.066629, 0.960511,
		-0.843247, 0.497871, -0.202629,
		-0.464710, -0.864688, -0.190683,
		45.271618, 36.574215, 37.695442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946995, 37.333496, 38.122395>,  <45.596912, 37.179497, 37.828922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946995, 37.333496, 38.122395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.959885, 36.936382, 38.076187>,  <44.967617, 36.698112, 38.048462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.959885, 36.936382, 38.076187>,  <44.946995, 37.333496, 38.122395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.959885, 36.936382, 38.076187> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401307, -0.118701, 0.908220,
		-0.915377, 0.017090, -0.402236,
		0.032225, -0.992783, -0.115514,
		44.969551, 36.638546, 38.041534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294212, 37.067108, 38.300972>,  <44.946995, 37.333496, 38.122395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294212, 37.067108, 38.300972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.548244, 36.758865, 38.322266>,  <44.700665, 36.573921, 38.335041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.548244, 36.758865, 38.322266>,  <44.294212, 37.067108, 38.300972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548244, 36.758865, 38.322266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316847, -0.197034, 0.927785,
		-0.704469, -0.606088, -0.369297,
		0.635084, -0.770607, 0.053233,
		44.738770, 36.527683, 38.338234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932087, 36.458244, 38.599297>,  <44.294212, 37.067108, 38.300972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932087, 36.458244, 38.599297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.319401, 36.382164, 38.664112>,  <44.551788, 36.336517, 38.703003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.319401, 36.382164, 38.664112>,  <43.932087, 36.458244, 38.599297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.319401, 36.382164, 38.664112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209126, -0.261961, 0.942148,
		-0.136749, -0.946150, -0.293427,
		0.968280, -0.190201, 0.162042,
		44.609886, 36.325104, 38.712727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977345, 35.792664, 39.001495>,  <43.932087, 36.458244, 38.599297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977345, 35.792664, 39.001495> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310818, 35.992298, 39.096062>,  <44.510902, 36.112080, 39.152802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.310818, 35.992298, 39.096062>,  <43.977345, 35.792664, 39.001495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310818, 35.992298, 39.096062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072371, -0.325665, 0.942711,
		0.547481, -0.803032, -0.235382,
		0.833683, 0.499081, 0.236412,
		44.560921, 36.142021, 39.166985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324638, 35.430027, 39.535034>,  <43.977345, 35.792664, 39.001495>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324638, 35.430027, 39.535034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.488953, 35.793861, 39.560047>,  <44.587540, 36.012161, 39.575054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.488953, 35.793861, 39.560047>,  <44.324638, 35.430027, 39.535034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488953, 35.793861, 39.560047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115452, -0.119934, 0.986046,
		0.904393, -0.397832, -0.154281,
		0.410784, 0.909585, 0.062537,
		44.612186, 36.066738, 39.578808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.823971, 35.334682, 39.950207>,  <44.324638, 35.430027, 39.535034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.823971, 35.334682, 39.950207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798904, 35.733116, 39.975151>,  <44.783867, 35.972176, 39.990116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798904, 35.733116, 39.975151>,  <44.823971, 35.334682, 39.950207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798904, 35.733116, 39.975151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029129, -0.060629, 0.997735,
		0.997610, 0.064337, -0.025216,
		-0.062663, 0.996085, 0.062358,
		44.780106, 36.031940, 39.993858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334148, 35.543129, 40.352356>,  <44.823971, 35.334682, 39.950207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334148, 35.543129, 40.352356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049423, 35.822922, 40.377842>,  <44.878590, 35.990795, 40.393135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049423, 35.822922, 40.377842>,  <45.334148, 35.543129, 40.352356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049423, 35.822922, 40.377842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015842, -0.106680, 0.994167,
		0.702194, 0.706648, 0.087017,
		-0.711809, 0.699477, 0.063715,
		44.835880, 36.032764, 40.396957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432480, 35.924042, 40.946941>,  <45.334148, 35.543129, 40.352356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432480, 35.924042, 40.946941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049843, 36.032154, 40.903336>,  <44.820263, 36.097019, 40.877171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049843, 36.032154, 40.903336>,  <45.432480, 35.924042, 40.946941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049843, 36.032154, 40.903336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125961, -0.046109, 0.990963,
		0.262809, 0.961678, 0.078152,
		-0.956591, 0.270278, -0.109016,
		44.762867, 36.113239, 40.870632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321556, 36.426193, 41.452797>,  <45.432480, 35.924042, 40.946941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321556, 36.426193, 41.452797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954010, 36.301056, 41.356613>,  <44.733482, 36.225975, 41.298904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.954010, 36.301056, 41.356613>,  <45.321556, 36.426193, 41.452797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954010, 36.301056, 41.356613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214131, -0.116503, 0.969832,
		-0.331415, 0.942634, 0.040062,
		-0.918864, -0.312839, -0.240458,
		44.678352, 36.207203, 41.284477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.967686, 36.787067, 41.946724>,  <45.321556, 36.426193, 41.452797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.967686, 36.787067, 41.946724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.746620, 36.481346, 41.813816>,  <44.613979, 36.297913, 41.734070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.746620, 36.481346, 41.813816>,  <44.967686, 36.787067, 41.946724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746620, 36.481346, 41.813816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290940, -0.196674, 0.936308,
		-0.780969, 0.614139, -0.113670,
		-0.552667, -0.764299, -0.332274,
		44.580818, 36.252056, 41.714134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456768, 36.935215, 42.259518>,  <44.967686, 36.787067, 41.946724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456768, 36.935215, 42.259518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368568, 36.558720, 42.157181>,  <44.315651, 36.332825, 42.095779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.368568, 36.558720, 42.157181>,  <44.456768, 36.935215, 42.259518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368568, 36.558720, 42.157181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530438, -0.104410, 0.841269,
		-0.818545, 0.321207, -0.476245,
		-0.220496, -0.941236, -0.255845,
		44.302418, 36.276348, 42.080429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.770248, 36.855877, 42.532372>,  <44.456768, 36.935215, 42.259518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.770248, 36.855877, 42.532372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.954185, 36.502037, 42.501324>,  <44.064548, 36.289734, 42.482697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.954185, 36.502037, 42.501324>,  <43.770248, 36.855877, 42.532372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954185, 36.502037, 42.501324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397225, -0.283086, 0.872969,
		-0.794204, -0.370593, -0.481560,
		0.459839, -0.884604, -0.077619,
		44.092136, 36.236656, 42.478039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.061962, 35.402466, 41.261673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052624, 35.003365, 41.236538>,  <35.047020, 34.763905, 41.221455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052624, 35.003365, 41.236538>,  <35.061962, 35.402466, 41.261673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052624, 35.003365, 41.236538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597399, 0.036475, -0.801114,
		0.801604, -0.056245, 0.595204,
		-0.023348, -0.997751, -0.062839,
		35.045620, 34.704041, 41.217686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710293, 35.237217, 41.249260>,  <35.061962, 35.402466, 41.261673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710293, 35.237217, 41.249260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499115, 34.939060, 41.086449>,  <35.372410, 34.760166, 40.988762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499115, 34.939060, 41.086449>,  <35.710293, 35.237217, 41.249260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499115, 34.939060, 41.086449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593730, 0.018747, -0.804446,
		0.607259, -0.666363, 0.432664,
		-0.527942, -0.745392, -0.407024,
		35.340733, 34.715443, 40.964340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101780, 34.944393, 40.859928>,  <35.710293, 35.237217, 41.249260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101780, 34.944393, 40.859928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817165, 34.704735, 40.713097>,  <35.646397, 34.560940, 40.624996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817165, 34.704735, 40.713097>,  <36.101780, 34.944393, 40.859928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817165, 34.704735, 40.713097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460694, -0.003327, -0.887553,
		0.530549, -0.800636, 0.278388,
		-0.711533, -0.599142, -0.367083,
		35.603706, 34.524994, 40.602970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429756, 34.312233, 40.543140>,  <36.101780, 34.944393, 40.859928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429756, 34.312233, 40.543140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084789, 34.410183, 40.365925>,  <35.877811, 34.468952, 40.259594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084789, 34.410183, 40.365925>,  <36.429756, 34.312233, 40.543140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084789, 34.410183, 40.365925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444091, -0.054072, -0.894349,
		-0.242957, -0.968047, -0.062112,
		-0.862412, 0.244871, -0.443038,
		35.826065, 34.483643, 40.233013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463440, 33.963398, 39.924641>,  <36.429756, 34.312233, 40.543140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463440, 33.963398, 39.924641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164272, 34.214859, 39.839394>,  <35.984772, 34.365734, 39.788246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164272, 34.214859, 39.839394>,  <36.463440, 33.963398, 39.924641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164272, 34.214859, 39.839394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342355, 0.090255, -0.935226,
		-0.568695, -0.772433, -0.282725,
		-0.747916, 0.628651, -0.213119,
		35.939896, 34.403454, 39.775459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072357, 33.706066, 39.364399>,  <36.463440, 33.963398, 39.924641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072357, 33.706066, 39.364399> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007740, 34.100075, 39.388523>,  <35.968967, 34.336479, 39.402996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007740, 34.100075, 39.388523>,  <36.072357, 33.706066, 39.364399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007740, 34.100075, 39.388523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149681, 0.084863, -0.985086,
		-0.975448, -0.150109, -0.161149,
		-0.161546, 0.985021, 0.060311,
		35.959274, 34.395580, 39.406616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601078, 33.909641, 38.827724>,  <36.072357, 33.706066, 39.364399>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601078, 33.909641, 38.827724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803799, 34.237698, 38.933949>,  <35.925430, 34.434532, 38.997681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803799, 34.237698, 38.933949>,  <35.601078, 33.909641, 38.827724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803799, 34.237698, 38.933949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442535, 0.016849, -0.896593,
		-0.739805, 0.571917, -0.354401,
		0.506806, 0.820138, 0.265558,
		35.955841, 34.483738, 39.013615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544022, 34.126415, 38.213734>,  <35.601078, 33.909641, 38.827724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544022, 34.126415, 38.213734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799591, 34.364948, 38.408119>,  <35.952934, 34.508068, 38.524750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799591, 34.364948, 38.408119>,  <35.544022, 34.126415, 38.213734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799591, 34.364948, 38.408119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365080, 0.320994, -0.873887,
		-0.677119, 0.735766, -0.012618,
		0.638926, 0.596332, 0.485964,
		35.991268, 34.543846, 38.553909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530350, 34.836033, 37.872356>,  <35.544022, 34.126415, 38.213734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530350, 34.836033, 37.872356> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887081, 34.815105, 38.052094>,  <36.101120, 34.802551, 38.159935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887081, 34.815105, 38.052094>,  <35.530350, 34.836033, 37.872356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887081, 34.815105, 38.052094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436157, 0.363063, -0.823379,
		-0.120066, 0.930295, 0.346606,
		0.891825, -0.052315, 0.449346,
		36.154629, 34.799412, 38.186897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944176, 35.315399, 37.581673>,  <35.530350, 34.836033, 37.872356>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944176, 35.315399, 37.581673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218269, 35.090374, 37.766705>,  <36.382725, 34.955360, 37.877724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218269, 35.090374, 37.766705>,  <35.944176, 35.315399, 37.581673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218269, 35.090374, 37.766705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642144, 0.166967, -0.748180,
		0.343662, 0.809720, 0.475657,
		0.685236, -0.562561, 0.462577,
		36.423840, 34.921604, 37.905479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577919, 35.709976, 37.730209>,  <35.944176, 35.315399, 37.581673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577919, 35.709976, 37.730209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683502, 35.324352, 37.718105>,  <36.746853, 35.092979, 37.710842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683502, 35.324352, 37.718105>,  <36.577919, 35.709976, 37.730209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683502, 35.324352, 37.718105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753293, 0.225643, -0.617767,
		0.602390, 0.140275, 0.785779,
		0.263963, -0.964058, -0.030257,
		36.762691, 35.035133, 37.709026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376999, 35.638523, 37.652817>,  <36.577919, 35.709976, 37.730209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376999, 35.638523, 37.652817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238907, 35.285549, 37.524986>,  <37.156052, 35.073765, 37.448288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238907, 35.285549, 37.524986>,  <37.376999, 35.638523, 37.652817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238907, 35.285549, 37.524986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493531, 0.118939, -0.861557,
		0.798277, -0.455154, 0.394447,
		-0.345226, -0.882433, -0.319579,
		37.135338, 35.020821, 37.429111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947308, 35.285618, 37.317879>,  <37.376999, 35.638523, 37.652817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947308, 35.285618, 37.317879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614037, 35.110306, 37.182987>,  <37.414074, 35.005119, 37.102055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614037, 35.110306, 37.182987>,  <37.947308, 35.285618, 37.317879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614037, 35.110306, 37.182987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419420, -0.103388, -0.901886,
		0.360416, -0.892871, 0.269966,
		-0.833179, -0.438284, -0.337225,
		37.364082, 34.978821, 37.081821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.102242, 34.733147, 36.899284>,  <37.947308, 35.285618, 37.317879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.102242, 34.733147, 36.899284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738640, 34.838928, 36.770428>,  <37.520477, 34.902397, 36.693115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738640, 34.838928, 36.770428>,  <38.102242, 34.733147, 36.899284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738640, 34.838928, 36.770428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374429, 0.178685, -0.909876,
		-0.183056, -0.947701, -0.261444,
		-0.909007, 0.264450, -0.322138,
		37.465939, 34.918262, 36.673786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802647, 34.689072, 36.528469>,  <38.102242, 34.733147, 36.899284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802647, 34.689072, 36.528469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975342, 34.370571, 36.358959>,  <39.078960, 34.179470, 36.257252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975342, 34.370571, 36.358959>,  <38.802647, 34.689072, 36.528469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975342, 34.370571, 36.358959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679244, -0.596123, 0.428095,
		-0.593471, 0.102981, -0.798240,
		0.431763, -0.796261, -0.423731,
		39.104866, 34.131695, 36.231827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241917, 34.343250, 36.116993>,  <38.802647, 34.689072, 36.528469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241917, 34.343250, 36.116993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524757, 34.071114, 36.194084>,  <38.694462, 33.907833, 36.240337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524757, 34.071114, 36.194084>,  <38.241917, 34.343250, 36.116993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524757, 34.071114, 36.194084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686312, -0.594699, 0.418700,
		-0.170243, -0.428336, -0.887438,
		0.707102, -0.680340, 0.192728,
		38.736889, 33.867012, 36.251904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172649, 33.679836, 35.771809>,  <38.241917, 34.343250, 36.116993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172649, 33.679836, 35.771809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380936, 33.597191, 36.103149>,  <38.505909, 33.547604, 36.301952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380936, 33.597191, 36.103149>,  <38.172649, 33.679836, 35.771809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380936, 33.597191, 36.103149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727308, -0.615464, 0.303689,
		0.447074, -0.760603, -0.470753,
		0.520718, -0.206611, 0.828351,
		38.537151, 33.535206, 36.351654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101482, 32.908997, 35.780342>,  <38.172649, 33.679836, 35.771809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101482, 32.908997, 35.780342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253708, 32.999638, 36.138966>,  <38.345043, 33.054024, 36.354141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253708, 32.999638, 36.138966>,  <38.101482, 32.908997, 35.780342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253708, 32.999638, 36.138966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608383, -0.668807, 0.427279,
		0.696452, -0.708058, -0.116657,
		0.380559, 0.226607, 0.896562,
		38.367874, 33.067619, 36.407936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333504, 32.284466, 36.027203>,  <38.101482, 32.908997, 35.780342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.333504, 32.284466, 36.027203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292088, 32.496910, 36.363583>,  <38.267239, 32.624374, 36.565411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292088, 32.496910, 36.363583>,  <38.333504, 32.284466, 36.027203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292088, 32.496910, 36.363583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389829, -0.799521, 0.456946,
		0.915048, -0.280516, 0.289823,
		-0.103539, 0.531109, 0.840954,
		38.261024, 32.656242, 36.615868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755299, 31.978682, 36.464348>,  <38.333504, 32.284466, 36.027203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755299, 31.978682, 36.464348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486732, 32.172577, 36.688572>,  <38.325592, 32.288914, 36.823109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486732, 32.172577, 36.688572>,  <38.755299, 31.978682, 36.464348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486732, 32.172577, 36.688572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319117, -0.871801, 0.371656,
		0.668856, 0.070649, 0.740028,
		-0.671414, 0.484740, 0.560563,
		38.285309, 32.317997, 36.856739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823051, 31.674757, 37.134735>,  <38.755299, 31.978682, 36.464348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823051, 31.674757, 37.134735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476524, 31.873322, 37.156876>,  <38.268608, 31.992460, 37.170158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476524, 31.873322, 37.156876>,  <38.823051, 31.674757, 37.134735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476524, 31.873322, 37.156876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399886, -0.755700, 0.518661,
		0.299296, 0.427194, 0.853187,
		-0.866322, 0.496410, 0.055349,
		38.216629, 32.022243, 37.173481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598576, 31.674765, 37.833286>,  <38.823051, 31.674757, 37.134735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598576, 31.674765, 37.833286> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263237, 31.757706, 37.631622>,  <38.062035, 31.807470, 37.510624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263237, 31.757706, 37.631622>,  <38.598576, 31.674765, 37.833286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263237, 31.757706, 37.631622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515239, -0.603458, 0.608579,
		-0.178050, 0.769964, 0.612743,
		-0.838348, 0.207351, -0.504161,
		38.011734, 31.819912, 37.480373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114109, 31.887686, 38.320610>,  <38.598576, 31.674765, 37.833286>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114109, 31.887686, 38.320610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904167, 31.746611, 38.010735>,  <37.778202, 31.661964, 37.824810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904167, 31.746611, 38.010735>,  <38.114109, 31.887686, 38.320610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904167, 31.746611, 38.010735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522177, -0.585326, 0.620261,
		-0.672202, 0.730071, 0.123047,
		-0.524857, -0.352689, -0.774684,
		37.746712, 31.640804, 37.778328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414143, 31.915989, 38.551167>,  <38.114109, 31.887686, 38.320610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414143, 31.915989, 38.551167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408264, 31.665848, 38.239086>,  <37.404736, 31.515762, 38.051838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408264, 31.665848, 38.239086>,  <37.414143, 31.915989, 38.551167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408264, 31.665848, 38.239086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590204, -0.624429, 0.511612,
		-0.807120, 0.467998, -0.359910,
		-0.014695, -0.625353, -0.780204,
		37.403854, 31.478243, 38.005024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763863, 31.645290, 38.530727>,  <37.414143, 31.915989, 38.551167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763863, 31.645290, 38.530727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975689, 31.409872, 38.286373>,  <37.102783, 31.268621, 38.139763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975689, 31.409872, 38.286373>,  <36.763863, 31.645290, 38.530727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975689, 31.409872, 38.286373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351654, -0.807672, 0.473292,
		-0.771945, -0.035820, -0.634679,
		0.529565, -0.588543, -0.610882,
		37.134560, 31.233309, 38.103107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269947, 31.220123, 38.245270>,  <36.763863, 31.645290, 38.530727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269947, 31.220123, 38.245270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628532, 31.044243, 38.267242>,  <36.843685, 30.938715, 38.280426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628532, 31.044243, 38.267242>,  <36.269947, 31.220123, 38.245270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628532, 31.044243, 38.267242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390790, -0.726064, 0.565787,
		-0.208892, -0.528674, -0.822720,
		0.896464, -0.439699, 0.054931,
		36.897472, 30.912333, 38.283722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130253, 30.513939, 38.357124>,  <36.269947, 31.220123, 38.245270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130253, 30.513939, 38.357124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515949, 30.534077, 38.461208>,  <36.747368, 30.546160, 38.523659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515949, 30.534077, 38.461208>,  <36.130253, 30.513939, 38.357124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515949, 30.534077, 38.461208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200888, -0.501588, 0.841459,
		0.172883, -0.863641, -0.473536,
		0.964238, 0.050346, 0.260211,
		36.805222, 30.549181, 38.539272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177330, 29.871756, 38.679417>,  <36.130253, 30.513939, 38.357124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177330, 29.871756, 38.679417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475658, 30.109415, 38.799911>,  <36.654655, 30.252010, 38.872208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.475658, 30.109415, 38.799911>,  <36.177330, 29.871756, 38.679417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475658, 30.109415, 38.799911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104442, -0.342323, 0.933760,
		0.657912, -0.727876, -0.193256,
		0.745818, 0.594147, 0.301239,
		36.699402, 30.287659, 38.890282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335606, 29.166807, 38.442375>,  <36.177330, 29.871756, 38.679417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335606, 29.166807, 38.442375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965664, 29.054947, 38.339279>,  <35.743698, 28.987831, 38.277420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965664, 29.054947, 38.339279>,  <36.335606, 29.166807, 38.442375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965664, 29.054947, 38.339279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131102, 0.401742, -0.906320,
		0.356996, -0.872010, -0.334893,
		-0.924860, -0.279647, -0.257743,
		35.688206, 28.971052, 38.261955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319523, 28.772804, 37.809269>,  <36.335606, 29.166807, 38.442375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319523, 28.772804, 37.809269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952366, 28.929739, 37.833073>,  <35.732071, 29.023901, 37.847355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952366, 28.929739, 37.833073>,  <36.319523, 28.772804, 37.809269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952366, 28.929739, 37.833073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027856, 0.213296, -0.976591,
		-0.395847, -0.894749, -0.206712,
		-0.917894, 0.392339, 0.059508,
		35.676998, 29.047441, 37.850925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038567, 28.558861, 37.207920>,  <36.319523, 28.772804, 37.809269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038567, 28.558861, 37.207920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787487, 28.854527, 37.305599>,  <35.636841, 29.031925, 37.364208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787487, 28.854527, 37.305599>,  <36.038567, 28.558861, 37.207920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787487, 28.854527, 37.305599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017750, 0.327202, -0.944788,
		-0.778255, -0.588706, -0.218504,
		-0.627697, 0.739164, 0.244197,
		35.599178, 29.076275, 37.378857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539169, 28.660273, 36.663101>,  <36.038567, 28.558861, 37.207920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539169, 28.660273, 36.663101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518459, 29.009476, 36.857082>,  <35.506035, 29.218998, 36.973473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518459, 29.009476, 36.857082>,  <35.539169, 28.660273, 36.663101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518459, 29.009476, 36.857082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106179, 0.487663, -0.866551,
		-0.992998, 0.006626, -0.117943,
		-0.051775, 0.873007, 0.484952,
		35.502926, 29.271378, 37.002567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053482, 29.125626, 36.276104>,  <35.539169, 28.660273, 36.663101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053482, 29.125626, 36.276104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309750, 29.353111, 36.482449>,  <35.463509, 29.489603, 36.606255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309750, 29.353111, 36.482449>,  <35.053482, 29.125626, 36.276104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309750, 29.353111, 36.482449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111540, 0.595792, -0.795356,
		-0.759676, 0.567096, 0.318269,
		0.640665, 0.568713, 0.515862,
		35.501949, 29.523726, 36.637207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819672, 29.718666, 36.066292>,  <35.053482, 29.125626, 36.276104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819672, 29.718666, 36.066292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186409, 29.786905, 36.210682>,  <35.406452, 29.827848, 36.297318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186409, 29.786905, 36.210682>,  <34.819672, 29.718666, 36.066292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186409, 29.786905, 36.210682> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174715, 0.641519, -0.746946,
		-0.359000, 0.747897, 0.558363,
		0.916839, 0.170599, 0.360974,
		35.461460, 29.838085, 36.318974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874001, 30.446980, 36.128593>,  <34.819672, 29.718666, 36.066292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874001, 30.446980, 36.128593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252808, 30.319695, 36.111137>,  <35.480091, 30.243322, 36.100662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252808, 30.319695, 36.111137>,  <34.874001, 30.446980, 36.128593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252808, 30.319695, 36.111137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221347, 0.745039, -0.629223,
		0.232744, 0.586222, 0.775998,
		0.947014, -0.318213, -0.043645,
		35.536911, 30.224230, 36.098045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281193, 31.064896, 36.089058>,  <34.874001, 30.446980, 36.128593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281193, 31.064896, 36.089058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562149, 30.793917, 36.001686>,  <35.730724, 30.631330, 35.949265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562149, 30.793917, 36.001686>,  <35.281193, 31.064896, 36.089058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562149, 30.793917, 36.001686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534460, 0.704632, -0.466740,
		0.470101, 0.211095, 0.856997,
		0.702394, -0.677445, -0.218427,
		35.772869, 30.590683, 35.936157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941872, 31.360964, 36.154243>,  <35.281193, 31.064896, 36.089058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941872, 31.360964, 36.154243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017975, 31.058355, 35.903969>,  <36.063637, 30.876791, 35.753803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017975, 31.058355, 35.903969>,  <35.941872, 31.360964, 36.154243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017975, 31.058355, 35.903969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533532, 0.614668, -0.580971,
		0.824104, -0.223289, 0.520571,
		0.190254, -0.756522, -0.625682,
		36.075050, 30.831398, 35.716263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597351, 31.444159, 35.996841>,  <35.941872, 31.360964, 36.154243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597351, 31.444159, 35.996841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453896, 31.210318, 35.705742>,  <36.367821, 31.070013, 35.531082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453896, 31.210318, 35.705742>,  <36.597351, 31.444159, 35.996841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453896, 31.210318, 35.705742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497632, 0.539857, -0.678908,
		0.789772, -0.605633, 0.097304,
		-0.358639, -0.584604, -0.727747,
		36.346302, 31.034937, 35.487419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221050, 31.318705, 35.538994>,  <36.597351, 31.444159, 35.996841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221050, 31.318705, 35.538994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906826, 31.236080, 35.305676>,  <36.718292, 31.186506, 35.165684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906826, 31.236080, 35.305676>,  <37.221050, 31.318705, 35.538994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906826, 31.236080, 35.305676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559543, 0.165379, -0.812134,
		0.264219, -0.964356, -0.014336,
		-0.785558, -0.206559, -0.583295,
		36.671158, 31.174112, 35.130688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475906, 30.807396, 34.953804>,  <37.221050, 31.318705, 35.538994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475906, 30.807396, 34.953804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136887, 30.983391, 34.835098>,  <36.933475, 31.088987, 34.763874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136887, 30.983391, 34.835098>,  <37.475906, 30.807396, 34.953804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136887, 30.983391, 34.835098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381271, 0.115823, -0.917179,
		-0.369173, -0.890504, -0.265920,
		-0.847552, 0.439985, -0.296764,
		36.882622, 31.115387, 34.746067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.180988, 26.961975, 41.531750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897556, 27.238014, 41.472851>,  <34.727497, 27.403639, 41.437511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.897556, 27.238014, 41.472851>,  <35.180988, 26.961975, 41.531750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897556, 27.238014, 41.472851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314212, 0.121733, -0.941516,
		-0.631815, -0.713403, -0.303095,
		-0.708577, 0.690100, -0.147247,
		34.684982, 27.445044, 41.428677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817669, 26.769873, 40.917946>,  <35.180988, 26.961975, 41.531750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817669, 26.769873, 40.917946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.696716, 27.150024, 40.947201>,  <34.624146, 27.378115, 40.964756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.696716, 27.150024, 40.947201>,  <34.817669, 26.769873, 40.917946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696716, 27.150024, 40.947201> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289617, 0.164708, -0.942864,
		-0.908124, -0.263918, -0.325050,
		-0.302377, 0.950378, 0.073140,
		34.606003, 27.435139, 40.969143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298111, 26.847837, 40.400860>,  <34.817669, 26.769873, 40.917946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298111, 26.847837, 40.400860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.476788, 27.196342, 40.482216>,  <34.583992, 27.405445, 40.531029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.476788, 27.196342, 40.482216>,  <34.298111, 26.847837, 40.400860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476788, 27.196342, 40.482216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183648, 0.133205, -0.973925,
		-0.875638, 0.472395, -0.100504,
		0.446690, 0.871263, 0.203394,
		34.610794, 27.457722, 40.543236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852074, 27.354908, 40.011395>,  <34.298111, 26.847837, 40.400860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852074, 27.354908, 40.011395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.186253, 27.551382, 40.110001>,  <34.386761, 27.669268, 40.169163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.186253, 27.551382, 40.110001>,  <33.852074, 27.354908, 40.011395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186253, 27.551382, 40.110001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147538, 0.231635, -0.961550,
		-0.529402, 0.839691, 0.121049,
		0.835444, 0.491186, 0.246515,
		34.436886, 27.698738, 40.183956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814987, 28.009642, 39.619129>,  <33.852074, 27.354908, 40.011395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814987, 28.009642, 39.619129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204208, 28.009775, 39.711361>,  <34.437740, 28.009855, 39.766701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.204208, 28.009775, 39.711361>,  <33.814987, 28.009642, 39.619129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204208, 28.009775, 39.711361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209901, 0.412633, -0.886383,
		-0.095444, 0.910897, 0.401444,
		0.973053, 0.000336, 0.230582,
		34.496124, 28.009876, 39.780537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115505, 28.741125, 39.604008>,  <33.814987, 28.009642, 39.619129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115505, 28.741125, 39.604008> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.426601, 28.492973, 39.563511>,  <34.613258, 28.344082, 39.539211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.426601, 28.492973, 39.563511>,  <34.115505, 28.741125, 39.604008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426601, 28.492973, 39.563511> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313538, 0.522469, -0.792919,
		0.544809, 0.584939, 0.600857,
		0.777738, -0.620381, -0.101245,
		34.659924, 28.306858, 39.533138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761253, 29.155012, 39.579002>,  <34.115505, 28.741125, 39.604008>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761253, 29.155012, 39.579002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.894100, 28.809118, 39.428307>,  <34.973808, 28.601582, 39.337887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.894100, 28.809118, 39.428307>,  <34.761253, 29.155012, 39.579002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894100, 28.809118, 39.428307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453004, 0.496564, -0.740413,
		0.827337, 0.075236, 0.556645,
		0.332116, -0.864733, -0.376743,
		34.993736, 28.549698, 39.315285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453365, 29.274078, 39.415237>,  <34.761253, 29.155012, 39.579002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453365, 29.274078, 39.415237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.351433, 28.944828, 39.212246>,  <35.290276, 28.747278, 39.090450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.351433, 28.944828, 39.212246>,  <35.453365, 29.274078, 39.415237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351433, 28.944828, 39.212246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448231, 0.364467, -0.816244,
		0.856827, -0.435466, 0.276073,
		-0.254827, -0.823124, -0.507474,
		35.274986, 28.697891, 39.060005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013424, 28.981291, 39.082359>,  <35.453365, 29.274078, 39.415237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013424, 28.981291, 39.082359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.708172, 28.857634, 38.855358>,  <35.525021, 28.783440, 38.719158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.708172, 28.857634, 38.855358>,  <36.013424, 28.981291, 39.082359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708172, 28.857634, 38.855358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417801, 0.433943, -0.798208,
		0.493029, -0.846239, -0.201993,
		-0.763128, -0.309147, -0.567506,
		35.479233, 28.764891, 38.685108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784554, 29.370834, 39.083321>,  <36.013424, 28.981291, 39.082359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784554, 29.370834, 39.083321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848053, 29.749819, 39.194397>,  <36.886150, 29.977209, 39.261044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.848053, 29.749819, 39.194397>,  <36.784554, 29.370834, 39.083321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848053, 29.749819, 39.194397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058876, -0.271675, 0.960586,
		0.985563, -0.168838, 0.012656,
		0.158745, 0.947463, 0.277693,
		36.895676, 30.034058, 39.277706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308380, 29.291702, 39.599457>,  <36.784554, 29.370834, 39.083321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308380, 29.291702, 39.599457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186638, 29.668356, 39.656994>,  <37.113594, 29.894348, 39.691517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.186638, 29.668356, 39.656994>,  <37.308380, 29.291702, 39.599457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.186638, 29.668356, 39.656994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244483, -0.068734, 0.967214,
		0.920651, 0.329542, -0.209294,
		-0.304352, 0.941635, 0.143847,
		37.095333, 29.950846, 39.700150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869881, 29.605862, 40.036110>,  <37.308380, 29.291702, 39.599457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869881, 29.605862, 40.036110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.535412, 29.819487, 40.086056>,  <37.334732, 29.947662, 40.116024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.535412, 29.819487, 40.086056>,  <37.869881, 29.605862, 40.036110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535412, 29.819487, 40.086056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164546, 0.027100, 0.985997,
		0.523201, 0.845010, -0.110538,
		-0.836173, 0.534063, 0.124864,
		37.284561, 29.979706, 40.123516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036961, 30.107069, 40.478508>,  <37.869881, 29.605862, 40.036110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036961, 30.107069, 40.478508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.641968, 30.045937, 40.494148>,  <37.404972, 30.009256, 40.503532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.641968, 30.045937, 40.494148>,  <38.036961, 30.107069, 40.478508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641968, 30.045937, 40.494148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044349, -0.031081, 0.998533,
		-0.151391, 0.987763, 0.037469,
		-0.987479, -0.152831, 0.039101,
		37.345726, 30.000088, 40.505878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787979, 30.592676, 41.075821>,  <38.036961, 30.107069, 40.478508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787979, 30.592676, 41.075821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.546268, 30.284328, 40.995216>,  <37.401241, 30.099319, 40.946854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.546268, 30.284328, 40.995216>,  <37.787979, 30.592676, 41.075821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546268, 30.284328, 40.995216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064939, -0.299716, 0.951816,
		-0.794122, 0.562077, 0.231172,
		-0.604279, -0.770870, -0.201510,
		37.364986, 30.053068, 40.934765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565590, 30.654072, 41.606438>,  <37.787979, 30.592676, 41.075821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565590, 30.654072, 41.606438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.422939, 30.298712, 41.490810>,  <37.337349, 30.085495, 41.421432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.422939, 30.298712, 41.490810>,  <37.565590, 30.654072, 41.606438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422939, 30.298712, 41.490810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045099, -0.325421, 0.944493,
		-0.933158, 0.323795, 0.156121,
		-0.356627, -0.888402, -0.289067,
		37.315952, 30.032190, 41.404091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135689, 30.607447, 42.281757>,  <37.565590, 30.654072, 41.606438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135689, 30.607447, 42.281757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.955299, 30.371378, 42.013931>,  <36.847065, 30.229736, 41.853233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.955299, 30.371378, 42.013931>,  <37.135689, 30.607447, 42.281757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955299, 30.371378, 42.013931> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129614, -0.698929, 0.703348,
		-0.883077, 0.403975, 0.238702,
		-0.450971, -0.590172, -0.669569,
		36.820007, 30.194326, 41.813061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383556, 30.491304, 42.403099>,  <37.135689, 30.607447, 42.281757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383556, 30.491304, 42.403099> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.585453, 30.185015, 42.243649>,  <36.706589, 30.001240, 42.147980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.585453, 30.185015, 42.243649>,  <36.383556, 30.491304, 42.403099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585453, 30.185015, 42.243649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141407, -0.528862, 0.836845,
		-0.851612, -0.366019, -0.375216,
		0.504739, -0.765725, -0.398627,
		36.736874, 29.955297, 42.124062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928783, 29.943365, 42.326107>,  <36.383556, 30.491304, 42.403099>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928783, 29.943365, 42.326107> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.297955, 29.794960, 42.367210>,  <36.519455, 29.705917, 42.391872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.297955, 29.794960, 42.367210>,  <35.928783, 29.943365, 42.326107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297955, 29.794960, 42.367210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192999, -0.214940, 0.957367,
		-0.333108, -0.903410, -0.269979,
		0.922925, -0.371013, 0.102759,
		36.574833, 29.683657, 42.398037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831970, 29.281872, 42.594330>,  <35.928783, 29.943365, 42.326107>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831970, 29.281872, 42.594330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.211384, 29.359114, 42.694717>,  <36.439034, 29.405458, 42.754951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.211384, 29.359114, 42.694717>,  <35.831970, 29.281872, 42.594330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211384, 29.359114, 42.694717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206972, -0.221764, 0.952881,
		0.239664, -0.955788, -0.170384,
		0.948538, 0.193106, 0.250971,
		36.495945, 29.417046, 42.770008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970837, 28.686337, 43.062798>,  <35.831970, 29.281872, 42.594330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970837, 28.686337, 43.062798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.214272, 28.997713, 43.124310>,  <36.360332, 29.184538, 43.161217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.214272, 28.997713, 43.124310>,  <35.970837, 28.686337, 43.062798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214272, 28.997713, 43.124310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189126, -0.045911, 0.980879,
		0.770616, -0.626038, 0.119282,
		0.608591, 0.778440, 0.153780,
		36.396851, 29.231245, 43.170444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447205, 28.465511, 43.588440>,  <35.970837, 28.686337, 43.062798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447205, 28.465511, 43.588440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.443596, 28.865313, 43.576370>,  <36.441429, 29.105194, 43.569130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.443596, 28.865313, 43.576370>,  <36.447205, 28.465511, 43.588440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443596, 28.865313, 43.576370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011665, 0.030064, 0.999480,
		0.999891, 0.009371, 0.011388,
		-0.009024, 0.999504, -0.030170,
		36.440887, 29.165163, 43.567318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878445, 28.706186, 44.150360>,  <36.447205, 28.465511, 43.588440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878445, 28.706186, 44.150360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.665066, 29.033865, 44.066128>,  <36.537037, 29.230473, 44.015587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.665066, 29.033865, 44.066128>,  <36.878445, 28.706186, 44.150360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665066, 29.033865, 44.066128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122842, 0.171290, 0.977533,
		0.836864, 0.547332, 0.009257,
		-0.533450, 0.819199, -0.210582,
		36.505032, 29.279625, 44.002953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149025, 29.287676, 44.602852>,  <36.878445, 28.706186, 44.150360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149025, 29.287676, 44.602852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.790867, 29.421873, 44.485744>,  <36.575974, 29.502392, 44.415482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.790867, 29.421873, 44.485744>,  <37.149025, 29.287676, 44.602852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790867, 29.421873, 44.485744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298142, 0.036645, 0.953818,
		0.330728, 0.941330, 0.067213,
		-0.895394, 0.335493, -0.292769,
		36.522247, 29.522522, 44.397915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<28.109005, 30.424858, 43.179890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.376852, 30.155289, 43.055031>,  <28.537560, 29.993547, 42.980114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.376852, 30.155289, 43.055031>,  <28.109005, 30.424858, 43.179890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.376852, 30.155289, 43.055031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344043, 0.653935, -0.673798,
		0.658217, 0.343792, 0.669745,
		0.669616, -0.673926, -0.312152,
		28.577736, 29.953112, 42.961384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725203, 30.781809, 43.231548>,  <28.109005, 30.424858, 43.179890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725203, 30.781809, 43.231548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.780151, 30.485363, 42.968678>,  <28.813120, 30.307495, 42.810955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.780151, 30.485363, 42.968678>,  <28.725203, 30.781809, 43.231548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780151, 30.485363, 42.968678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329748, 0.659837, -0.675189,
		0.934021, -0.123951, 0.335024,
		0.137371, -0.741115, -0.657175,
		28.821363, 30.263029, 42.771526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404589, 30.896133, 42.965626>,  <28.725203, 30.781809, 43.231548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404589, 30.896133, 42.965626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.220982, 30.660954, 42.699207>,  <29.110817, 30.519846, 42.539356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.220982, 30.660954, 42.699207>,  <29.404589, 30.896133, 42.965626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220982, 30.660954, 42.699207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376663, 0.550192, -0.745261,
		0.804630, -0.592962, -0.031087,
		-0.459015, -0.587950, -0.666047,
		29.083277, 30.484568, 42.499393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992535, 30.652569, 42.570210>,  <29.404589, 30.896133, 42.965626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992535, 30.652569, 42.570210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.659071, 30.610046, 42.353432>,  <29.458992, 30.584532, 42.223366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.659071, 30.610046, 42.353432>,  <29.992535, 30.652569, 42.570210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.659071, 30.610046, 42.353432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434504, 0.479478, -0.762435,
		0.340904, -0.871091, -0.353532,
		-0.833661, -0.106306, -0.541948,
		29.408972, 30.578154, 42.190845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.239325, 30.487564, 41.887890>,  <29.992535, 30.652569, 42.570210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.239325, 30.487564, 41.887890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.857098, 30.581394, 41.816490>,  <29.627762, 30.637691, 41.773651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.857098, 30.581394, 41.816490>,  <30.239325, 30.487564, 41.887890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857098, 30.581394, 41.816490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290323, 0.644197, -0.707618,
		-0.050998, -0.728001, -0.683677,
		-0.955569, 0.234574, -0.178503,
		29.570427, 30.651766, 41.762939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172153, 30.447317, 41.189953>,  <30.239325, 30.487564, 41.887890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172153, 30.447317, 41.189953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870893, 30.682096, 41.308784>,  <29.690138, 30.822964, 41.380081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.870893, 30.682096, 41.308784>,  <30.172153, 30.447317, 41.189953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870893, 30.682096, 41.308784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221479, 0.651462, -0.725633,
		-0.619444, -0.480715, -0.620646,
		-0.753151, 0.586950, 0.297077,
		29.644949, 30.858181, 41.397907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.996080, 30.739130, 40.604218>,  <30.172153, 30.447317, 41.189953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.996080, 30.739130, 40.604218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.806526, 30.990829, 40.850624>,  <29.692795, 31.141850, 40.998470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.806526, 30.990829, 40.850624>,  <29.996080, 30.739130, 40.604218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806526, 30.990829, 40.850624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177504, 0.753456, -0.633085,
		-0.862512, -0.190662, -0.468745,
		-0.473884, 0.629248, 0.616021,
		29.664362, 31.179604, 41.035431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447861, 31.064075, 40.224743>,  <29.996080, 30.739130, 40.604218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447861, 31.064075, 40.224743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.542450, 31.299595, 40.533909>,  <29.599203, 31.440907, 40.719406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.542450, 31.299595, 40.533909>,  <29.447861, 31.064075, 40.224743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542450, 31.299595, 40.533909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190759, 0.751860, -0.631125,
		-0.952729, 0.296683, 0.065475,
		0.236472, 0.588801, 0.772913,
		29.613392, 31.476234, 40.765781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.121386, 31.733229, 40.140678>,  <29.447861, 31.064075, 40.224743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.121386, 31.733229, 40.140678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.409367, 31.838120, 40.397709>,  <29.582155, 31.901054, 40.551926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.409367, 31.838120, 40.397709>,  <29.121386, 31.733229, 40.140678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.409367, 31.838120, 40.397709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137860, 0.853387, -0.502718,
		-0.680193, 0.450519, 0.578248,
		0.719953, 0.262227, 0.642576,
		29.625353, 31.916788, 40.590481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092344, 32.457813, 40.154991>,  <29.121386, 31.733229, 40.140678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092344, 32.457813, 40.154991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.460855, 32.379696, 40.289516>,  <29.681963, 32.332825, 40.370232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.460855, 32.379696, 40.289516>,  <29.092344, 32.457813, 40.154991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460855, 32.379696, 40.289516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375807, 0.669550, -0.640681,
		-0.100059, 0.716634, 0.690234,
		0.921280, -0.195289, 0.336311,
		29.737240, 32.321110, 40.390411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468010, 33.117973, 40.206329>,  <29.092344, 32.457813, 40.154991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468010, 33.117973, 40.206329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.768797, 32.854412, 40.214287>,  <29.949270, 32.696278, 40.219063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.768797, 32.854412, 40.214287>,  <29.468010, 33.117973, 40.206329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768797, 32.854412, 40.214287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538829, 0.596995, -0.594358,
		0.379746, 0.457658, 0.803955,
		0.751969, -0.658899, 0.019893,
		29.994387, 32.656742, 40.220253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093550, 33.527233, 40.379898>,  <29.468010, 33.117973, 40.206329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093550, 33.527233, 40.379898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.218870, 33.192295, 40.200699>,  <30.294062, 32.991333, 40.093182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.218870, 33.192295, 40.200699>,  <30.093550, 33.527233, 40.379898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218870, 33.192295, 40.200699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524418, 0.545843, -0.653484,
		0.791725, -0.030199, 0.610131,
		0.313301, -0.837343, -0.447994,
		30.312860, 32.941093, 40.066299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.659744, 33.798679, 39.924679>,  <30.093550, 33.527233, 40.379898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.659744, 33.798679, 39.924679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.643328, 33.415768, 39.810181>,  <30.633478, 33.186020, 39.741482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.643328, 33.415768, 39.810181>,  <30.659744, 33.798679, 39.924679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643328, 33.415768, 39.810181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584591, 0.209328, -0.783859,
		0.810290, -0.199507, 0.551024,
		-0.041041, -0.957277, -0.286246,
		30.631016, 33.128586, 39.724308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374969, 33.598396, 39.719673>,  <30.659744, 33.798679, 39.924679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374969, 33.598396, 39.719673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.112356, 33.386471, 39.504913>,  <30.954788, 33.259315, 39.376057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.112356, 33.386471, 39.504913>,  <31.374969, 33.598396, 39.719673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112356, 33.386471, 39.504913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372828, 0.390829, -0.841577,
		0.655716, -0.752694, -0.059061,
		-0.656533, -0.529816, -0.536898,
		30.915396, 33.227528, 39.343845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039452, 33.239979, 39.937492>,  <31.374969, 33.598396, 39.719673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039452, 33.239979, 39.937492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.305439, 33.505867, 40.073704>,  <32.465031, 33.665398, 40.155430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.305439, 33.505867, 40.073704>,  <32.039452, 33.239979, 39.937492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305439, 33.505867, 40.073704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119016, -0.355812, 0.926948,
		0.737324, -0.656924, -0.157493,
		0.664972, 0.664717, 0.340533,
		32.504932, 33.705280, 40.175865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569431, 32.872826, 40.318996>,  <32.039452, 33.239979, 39.937492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569431, 32.872826, 40.318996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579041, 33.257114, 40.429585>,  <32.584808, 33.487686, 40.495937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579041, 33.257114, 40.429585>,  <32.569431, 32.872826, 40.318996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579041, 33.257114, 40.429585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283075, -0.258694, 0.923551,
		0.958797, -0.100451, 0.265741,
		0.024026, 0.960722, 0.276471,
		32.586250, 33.545330, 40.512527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773716, 32.829922, 41.011227>,  <32.569431, 32.872826, 40.318996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773716, 32.829922, 41.011227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.654110, 33.211559, 41.018051>,  <32.582344, 33.440540, 41.022144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.654110, 33.211559, 41.018051>,  <32.773716, 32.829922, 41.011227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654110, 33.211559, 41.018051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308789, -0.113661, 0.944315,
		0.902905, 0.277098, 0.328601,
		-0.299017, 0.954095, 0.017060,
		32.564404, 33.497787, 41.023170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120960, 33.112953, 41.614094>,  <32.773716, 32.829922, 41.011227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120960, 33.112953, 41.614094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.786591, 33.312027, 41.521538>,  <32.585968, 33.431473, 41.466003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.786591, 33.312027, 41.521538>,  <33.120960, 33.112953, 41.614094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786591, 33.312027, 41.521538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340758, -0.140128, 0.929649,
		0.430247, 0.855965, 0.286726,
		-0.835925, 0.497683, -0.231387,
		32.535812, 33.461330, 41.452122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924648, 33.622658, 42.138977>,  <33.120960, 33.112953, 41.614094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924648, 33.622658, 42.138977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577164, 33.555145, 41.952709>,  <32.368671, 33.514637, 41.840950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.577164, 33.555145, 41.952709>,  <32.924648, 33.622658, 42.138977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577164, 33.555145, 41.952709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433558, -0.195486, 0.879666,
		-0.239502, 0.966074, 0.096646,
		-0.868715, -0.168780, -0.465668,
		32.316547, 33.504513, 41.813007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373749, 33.876701, 42.628510>,  <32.924648, 33.622658, 42.138977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373749, 33.876701, 42.628510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.171764, 33.656410, 42.362663>,  <32.050575, 33.524235, 42.203156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.171764, 33.656410, 42.362663>,  <32.373749, 33.876701, 42.628510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171764, 33.656410, 42.362663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316054, -0.598542, 0.736110,
		-0.803196, 0.581761, 0.128181,
		-0.504962, -0.550728, -0.664614,
		32.020275, 33.491192, 42.163280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722483, 33.809486, 42.929260>,  <32.373749, 33.876701, 42.628510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722483, 33.809486, 42.929260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783461, 33.516048, 42.664352>,  <31.820047, 33.339985, 42.505409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.783461, 33.516048, 42.664352>,  <31.722483, 33.809486, 42.929260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783461, 33.516048, 42.664352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517179, -0.630237, 0.579074,
		-0.842192, 0.254234, -0.475476,
		0.152442, -0.733598, -0.662266,
		31.829193, 33.295971, 42.465672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165655, 33.705025, 42.509716>,  <31.722483, 33.809486, 42.929260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165655, 33.705025, 42.509716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.377155, 33.367847, 42.549458>,  <31.504055, 33.165543, 42.573303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.377155, 33.367847, 42.549458>,  <31.165655, 33.705025, 42.509716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377155, 33.367847, 42.549458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720284, -0.383693, 0.577902,
		-0.449014, -0.377132, -0.810036,
		0.528750, -0.842942, 0.099359,
		31.535780, 33.114964, 42.579266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633471, 33.220463, 42.750984>,  <31.165655, 33.705025, 42.509716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633471, 33.220463, 42.750984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.990191, 33.048233, 42.806557>,  <31.204222, 32.944897, 42.839901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.990191, 33.048233, 42.806557>,  <30.633471, 33.220463, 42.750984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990191, 33.048233, 42.806557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361300, -0.492928, 0.791508,
		-0.272319, -0.756061, -0.595159,
		0.891798, -0.430574, 0.138931,
		31.257730, 32.919060, 42.848236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.360888, 32.655823, 43.025234>,  <30.633471, 33.220463, 42.750984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.360888, 32.655823, 43.025234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749599, 32.645988, 43.119080>,  <30.982826, 32.640087, 43.175385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749599, 32.645988, 43.119080>,  <30.360888, 32.655823, 43.025234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749599, 32.645988, 43.119080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205552, -0.576197, 0.791041,
		0.115736, -0.816941, -0.564988,
		0.971779, -0.024583, 0.234610,
		31.041134, 32.638615, 43.189461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405115, 31.914837, 43.128860>,  <30.360888, 32.655823, 43.025234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405115, 31.914837, 43.128860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.693445, 32.123692, 43.311195>,  <30.866444, 32.249004, 43.420597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.693445, 32.123692, 43.311195>,  <30.405115, 31.914837, 43.128860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693445, 32.123692, 43.311195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116035, -0.557472, 0.822047,
		0.683336, -0.645444, -0.341253,
		0.720824, 0.522137, 0.455835,
		30.909693, 32.280334, 43.447945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882311, 31.385521, 43.354214>,  <30.405115, 31.914837, 43.128860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882311, 31.385521, 43.354214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.874250, 31.716579, 43.578568>,  <30.869413, 31.915215, 43.713181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.874250, 31.716579, 43.578568>,  <30.882311, 31.385521, 43.354214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874250, 31.716579, 43.578568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119373, -0.558981, 0.820543,
		0.992645, -0.050418, 0.110064,
		-0.020153, 0.827646, 0.560888,
		30.868204, 31.964872, 43.746834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413288, 31.287462, 43.772202>,  <30.882311, 31.385521, 43.354214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413288, 31.287462, 43.772202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.172798, 31.550806, 43.953350>,  <31.028503, 31.708813, 44.062038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.172798, 31.550806, 43.953350>,  <31.413288, 31.287462, 43.772202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.172798, 31.550806, 43.953350> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110694, -0.629893, 0.768754,
		0.791374, 0.412066, 0.451585,
		-0.601227, 0.658360, 0.452867,
		30.992430, 31.748314, 44.089211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729204, 31.510141, 44.399200>,  <31.413288, 31.287462, 43.772202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729204, 31.510141, 44.399200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.331734, 31.541138, 44.431698>,  <31.093250, 31.559736, 44.451195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.331734, 31.541138, 44.431698>,  <31.729204, 31.510141, 44.399200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331734, 31.541138, 44.431698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005890, -0.686614, 0.726999,
		0.112117, 0.722881, 0.681816,
		-0.993678, 0.077492, 0.081239,
		31.033630, 31.564386, 44.456070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238377, 31.906246, 44.871815>,  <31.729204, 31.510141, 44.399200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238377, 31.906246, 44.871815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489864, 32.055256, 45.144855>,  <32.640759, 32.144661, 45.308678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489864, 32.055256, 45.144855>,  <32.238377, 31.906246, 44.871815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489864, 32.055256, 45.144855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505616, 0.471081, -0.722797,
		-0.590818, 0.799568, 0.107823,
		0.628718, 0.372524, 0.682597,
		32.678478, 32.167011, 45.349636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306133, 32.473919, 44.547485>,  <32.238377, 31.906246, 44.871815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306133, 32.473919, 44.547485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.594982, 32.449326, 44.823097>,  <32.768291, 32.434570, 44.988464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.594982, 32.449326, 44.823097>,  <32.306133, 32.473919, 44.547485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594982, 32.449326, 44.823097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566555, 0.624084, -0.538084,
		-0.396930, 0.778935, 0.485497,
		0.722123, -0.061479, 0.689027,
		32.811619, 32.430882, 45.029804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430614, 33.173927, 44.891098>,  <32.306133, 32.473919, 44.547485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430614, 33.173927, 44.891098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759377, 32.946903, 44.910454>,  <32.956635, 32.810688, 44.922066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.759377, 32.946903, 44.910454>,  <32.430614, 33.173927, 44.891098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759377, 32.946903, 44.910454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485923, 0.654283, -0.579476,
		0.297226, 0.499791, 0.813551,
		0.821909, -0.567559, 0.048390,
		33.005951, 32.776634, 44.924973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855850, 33.736786, 45.023212>,  <32.430614, 33.173927, 44.891098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855850, 33.736786, 45.023212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.072651, 33.423988, 44.900108>,  <33.202732, 33.236309, 44.826244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.072651, 33.423988, 44.900108>,  <32.855850, 33.736786, 45.023212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072651, 33.423988, 44.900108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582572, 0.613571, -0.533049,
		0.605673, 0.109623, 0.788126,
		0.542006, -0.781993, -0.307760,
		33.235252, 33.189392, 44.807781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540245, 34.005344, 45.053108>,  <32.855850, 33.736786, 45.023212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540245, 34.005344, 45.053108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.542259, 33.682510, 44.816944>,  <33.543468, 33.488808, 44.675247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.542259, 33.682510, 44.816944>,  <33.540245, 34.005344, 45.053108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542259, 33.682510, 44.816944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551513, 0.494748, -0.671608,
		0.834151, -0.322236, 0.447612,
		0.005039, -0.807087, -0.590411,
		33.543770, 33.440384, 44.639820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113491, 34.111298, 44.720192>,  <33.540245, 34.005344, 45.053108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113491, 34.111298, 44.720192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.903450, 33.830517, 44.527718>,  <33.777428, 33.662048, 44.412235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.903450, 33.830517, 44.527718>,  <34.113491, 34.111298, 44.720192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903450, 33.830517, 44.527718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359308, 0.329682, -0.873045,
		0.771471, -0.631328, 0.079101,
		-0.525100, -0.701951, -0.481182,
		33.745918, 33.619930, 44.383362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594646, 33.736534, 44.245701>,  <34.113491, 34.111298, 44.720192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594646, 33.736534, 44.245701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.216633, 33.720360, 44.115917>,  <33.989826, 33.710655, 44.038048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.216633, 33.720360, 44.115917>,  <34.594646, 33.736534, 44.245701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216633, 33.720360, 44.115917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271992, 0.453523, -0.848727,
		0.181467, -0.890327, -0.417597,
		-0.945034, -0.040432, -0.324461,
		33.933121, 33.708229, 44.018578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680916, 33.347885, 43.716427>,  <34.594646, 33.736534, 44.245701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680916, 33.347885, 43.716427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347759, 33.559345, 43.650913>,  <34.147865, 33.686222, 43.611603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.347759, 33.559345, 43.650913>,  <34.680916, 33.347885, 43.716427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347759, 33.559345, 43.650913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317022, 0.213145, -0.924157,
		-0.453644, -0.821645, -0.345119,
		-0.832889, 0.528648, -0.163788,
		34.097893, 33.717941, 43.601776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462837, 33.060539, 43.159481>,  <34.680916, 33.347885, 43.716427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462837, 33.060539, 43.159481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282124, 33.417091, 43.174091>,  <34.173695, 33.631023, 43.182858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.282124, 33.417091, 43.174091>,  <34.462837, 33.060539, 43.159481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282124, 33.417091, 43.174091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237629, 0.159704, -0.958138,
		-0.859896, -0.424194, -0.283969,
		-0.451787, 0.891378, 0.036528,
		34.146587, 33.684505, 43.185051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071926, 33.045948, 42.636234>,  <34.462837, 33.060539, 43.159481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071926, 33.045948, 42.636234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.146221, 33.427265, 42.731506>,  <34.190800, 33.656055, 42.788670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.146221, 33.427265, 42.731506>,  <34.071926, 33.045948, 42.636234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146221, 33.427265, 42.731506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230246, 0.193419, -0.953717,
		-0.955242, 0.231983, -0.183567,
		0.185741, 0.953296, 0.238176,
		34.201942, 33.713253, 42.802959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863434, 33.360485, 42.073181>,  <34.071926, 33.045948, 42.636234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863434, 33.360485, 42.073181> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.070770, 33.646729, 42.260468>,  <34.195171, 33.818474, 42.372837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.070770, 33.646729, 42.260468>,  <33.863434, 33.360485, 42.073181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070770, 33.646729, 42.260468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328164, 0.339142, -0.881641,
		-0.789703, 0.610641, -0.059047,
		0.518341, 0.715612, 0.468212,
		34.226273, 33.861412, 42.400932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763817, 33.885605, 41.688786>,  <33.863434, 33.360485, 42.073181>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763817, 33.885605, 41.688786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.081188, 34.010967, 41.897495>,  <34.271610, 34.086185, 42.022720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.081188, 34.010967, 41.897495>,  <33.763817, 33.885605, 41.688786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081188, 34.010967, 41.897495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395691, 0.385782, -0.833427,
		-0.462488, 0.867728, 0.182082,
		0.793432, 0.313401, 0.521772,
		34.319218, 34.104988, 42.054028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931606, 34.576969, 41.503365>,  <33.763817, 33.885605, 41.688786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931606, 34.576969, 41.503365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.269600, 34.432693, 41.661304>,  <34.472397, 34.346130, 41.756069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.269600, 34.432693, 41.661304>,  <33.931606, 34.576969, 41.503365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269600, 34.432693, 41.661304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494309, 0.244984, -0.834051,
		0.204098, 0.899938, 0.385298,
		0.844987, -0.360685, 0.394847,
		34.523094, 34.324490, 41.779758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312820, 35.135315, 41.336025>,  <33.931606, 34.576969, 41.503365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312820, 35.135315, 41.336025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.526814, 34.806255, 41.413013>,  <34.655209, 34.608818, 41.459206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.526814, 34.806255, 41.413013>,  <34.312820, 35.135315, 41.336025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526814, 34.806255, 41.413013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477359, 0.106359, -0.872248,
		0.697082, 0.558514, 0.449598,
		0.534981, -0.822648, 0.192471,
		34.687309, 34.559460, 41.470757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.414139, 38.757580, 27.927870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.425819, 38.874275, 28.310289>,  <26.432829, 38.944294, 28.539742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.425819, 38.874275, 28.310289>,  <26.414139, 38.757580, 27.927870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425819, 38.874275, 28.310289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990465, 0.120383, -0.066990,
		-0.134636, 0.948891, -0.285445,
		0.029203, 0.291743, 0.956051,
		26.434580, 38.961800, 28.597105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.001221, 38.541603, 27.336678>,  <26.414139, 38.757580, 27.927870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.001221, 38.541603, 27.336678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.014879, 38.227188, 27.089785>,  <27.023073, 38.038540, 26.941648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.014879, 38.227188, 27.089785>,  <27.001221, 38.541603, 27.336678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014879, 38.227188, 27.089785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033643, -0.618144, 0.785344,
		-0.998850, -0.006049, -0.047550,
		0.034144, -0.786041, -0.617230,
		27.025122, 37.991375, 26.904615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.449766, 38.100960, 27.541431>,  <27.001221, 38.541603, 27.336678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.449766, 38.100960, 27.541431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.712133, 37.872791, 27.343687>,  <26.869555, 37.735889, 27.225040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.712133, 37.872791, 27.343687>,  <26.449766, 38.100960, 27.541431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712133, 37.872791, 27.343687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048484, -0.621738, 0.781723,
		-0.753274, -0.536714, -0.380152,
		0.655917, -0.570421, -0.494361,
		26.908909, 37.701664, 27.195379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200954, 37.379208, 27.678400>,  <26.449766, 38.100960, 27.541431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200954, 37.379208, 27.678400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.585363, 37.364567, 27.568783>,  <26.816008, 37.355782, 27.503012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.585363, 37.364567, 27.568783>,  <26.200954, 37.379208, 27.678400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585363, 37.364567, 27.568783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187498, -0.642165, 0.743283,
		-0.203186, -0.765693, -0.610271,
		0.961020, -0.036600, -0.274045,
		26.873669, 37.353588, 27.486568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397579, 36.635914, 27.568001>,  <26.200954, 37.379208, 27.678400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397579, 36.635914, 27.568001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.735025, 36.835087, 27.648380>,  <26.937492, 36.954590, 27.696608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.735025, 36.835087, 27.648380>,  <26.397579, 36.635914, 27.568001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.735025, 36.835087, 27.648380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137630, -0.562260, 0.815427,
		0.519010, -0.660251, -0.542861,
		0.843615, 0.497929, 0.200948,
		26.988110, 36.984467, 27.708664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810442, 36.108150, 27.660393>,  <26.397579, 36.635914, 27.568001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810442, 36.108150, 27.660393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.967560, 36.422947, 27.850698>,  <27.061831, 36.611824, 27.964882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.967560, 36.422947, 27.850698>,  <26.810442, 36.108150, 27.660393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967560, 36.422947, 27.850698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131271, -0.560032, 0.818005,
		0.910209, -0.258853, -0.323286,
		0.392794, 0.786994, 0.475766,
		27.085398, 36.659046, 27.993429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327438, 35.840237, 28.023838>,  <26.810442, 36.108150, 27.660393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327438, 35.840237, 28.023838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.254364, 36.186569, 28.210155>,  <27.210520, 36.394367, 28.321947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.254364, 36.186569, 28.210155>,  <27.327438, 35.840237, 28.023838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254364, 36.186569, 28.210155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122478, -0.450036, 0.884571,
		0.975513, 0.218648, -0.023830,
		-0.182685, 0.865829, 0.465796,
		27.199558, 36.446320, 28.349894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884899, 35.901768, 28.554497>,  <27.327438, 35.840237, 28.023838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884899, 35.901768, 28.554497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.609694, 36.160522, 28.686054>,  <27.444571, 36.315777, 28.764988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.609694, 36.160522, 28.686054>,  <27.884899, 35.901768, 28.554497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609694, 36.160522, 28.686054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240652, -0.224188, 0.944366,
		0.684633, 0.728887, -0.001430,
		-0.688015, 0.646888, 0.328894,
		27.403290, 36.354588, 28.784723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234173, 36.332130, 29.069511>,  <27.884899, 35.901768, 28.554497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.234173, 36.332130, 29.069511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838478, 36.355312, 29.123251>,  <27.601061, 36.369221, 29.155495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.838478, 36.355312, 29.123251>,  <28.234173, 36.332130, 29.069511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.838478, 36.355312, 29.123251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105503, -0.353675, 0.929399,
		0.101376, 0.933571, 0.343755,
		-0.989238, 0.057952, 0.134348,
		27.541706, 36.372700, 29.163555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.170082, 36.349232, 29.749548>,  <28.234173, 36.332130, 29.069511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.170082, 36.349232, 29.749548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.784647, 36.290737, 29.660002>,  <27.553387, 36.255638, 29.606274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.784647, 36.290737, 29.660002>,  <28.170082, 36.349232, 29.749548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784647, 36.290737, 29.660002> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169488, -0.313517, 0.934334,
		-0.206823, 0.938254, 0.277315,
		-0.963586, -0.146240, -0.223865,
		27.495571, 36.246864, 29.592842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688814, 36.806957, 30.142000>,  <28.170082, 36.349232, 29.749548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688814, 36.806957, 30.142000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.471359, 36.488365, 30.036106>,  <27.340887, 36.297211, 29.972570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.471359, 36.488365, 30.036106>,  <27.688814, 36.806957, 30.142000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471359, 36.488365, 30.036106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093392, -0.256052, 0.962141,
		-0.834108, 0.547780, 0.064815,
		-0.543637, -0.796476, -0.264734,
		27.308268, 36.249424, 29.956686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207628, 36.721630, 30.719526>,  <27.688814, 36.806957, 30.142000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207628, 36.721630, 30.719526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.235598, 36.377682, 30.517246>,  <27.252378, 36.171314, 30.395878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.235598, 36.377682, 30.517246>,  <27.207628, 36.721630, 30.719526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.235598, 36.377682, 30.517246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093898, -0.510362, 0.854818,
		-0.993123, -0.012286, -0.116425,
		0.069921, -0.859872, -0.505699,
		27.256575, 36.119720, 30.365536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611752, 36.371815, 30.733164>,  <27.207628, 36.721630, 30.719526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611752, 36.371815, 30.733164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.919992, 36.120495, 30.690434>,  <27.104937, 35.969704, 30.664795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.919992, 36.120495, 30.690434>,  <26.611752, 36.371815, 30.733164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919992, 36.120495, 30.690434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197904, -0.395238, 0.897006,
		-0.605809, -0.670095, -0.428915,
		0.770604, -0.628298, -0.106824,
		27.151173, 35.932007, 30.658386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.493568, 35.771843, 31.122768>,  <26.611752, 36.371815, 30.733164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.493568, 35.771843, 31.122768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.890314, 35.741489, 31.081882>,  <27.128361, 35.723278, 31.057352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.890314, 35.741489, 31.081882>,  <26.493568, 35.771843, 31.122768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890314, 35.741489, 31.081882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071285, -0.334164, 0.939815,
		-0.105469, -0.939456, -0.326036,
		0.991864, -0.075879, -0.102213,
		27.187874, 35.718727, 31.051218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.685894, 35.198208, 31.399019>,  <26.493568, 35.771843, 31.122768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.685894, 35.198208, 31.399019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.030266, 35.400719, 31.418934>,  <27.236889, 35.522224, 31.430883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.030266, 35.400719, 31.418934>,  <26.685894, 35.198208, 31.399019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030266, 35.400719, 31.418934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065659, -0.207633, 0.976001,
		0.504469, -0.836999, -0.211999,
		0.860929, 0.506282, 0.049788,
		27.288546, 35.552605, 31.433870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129112, 34.793983, 31.796734>,  <26.685894, 35.198208, 31.399019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129112, 34.793983, 31.796734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.278231, 35.164730, 31.814369>,  <27.367702, 35.387177, 31.824951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.278231, 35.164730, 31.814369>,  <27.129112, 34.793983, 31.796734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278231, 35.164730, 31.814369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090312, -0.083532, 0.992404,
		0.923507, -0.365984, -0.114848,
		0.372797, 0.926865, 0.044089,
		27.390070, 35.442791, 31.827597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668179, 34.733395, 32.170761>,  <27.129112, 34.793983, 31.796734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668179, 34.733395, 32.170761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.583233, 35.122814, 32.204460>,  <27.532267, 35.356468, 32.224682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.583233, 35.122814, 32.204460>,  <27.668179, 34.733395, 32.170761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.583233, 35.122814, 32.204460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166066, -0.049007, 0.984896,
		0.962977, 0.223146, -0.151267,
		-0.212363, 0.973552, 0.084249,
		27.519524, 35.414879, 32.229736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134911, 34.911797, 32.651962>,  <27.668179, 34.733395, 32.170761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134911, 34.911797, 32.651962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877623, 35.217892, 32.641514>,  <27.723249, 35.401546, 32.635246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877623, 35.217892, 32.641514>,  <28.134911, 34.911797, 32.651962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877623, 35.217892, 32.641514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201144, 0.201791, 0.958552,
		0.738788, 0.611307, -0.283719,
		-0.643221, 0.765235, -0.026120,
		27.684656, 35.447464, 32.633678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525976, 35.424385, 33.011112>,  <28.134911, 34.911797, 32.651962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525976, 35.424385, 33.011112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146889, 35.551498, 33.022770>,  <27.919437, 35.627766, 33.029766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.146889, 35.551498, 33.022770>,  <28.525976, 35.424385, 33.011112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.146889, 35.551498, 33.022770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140610, 0.333851, 0.932080,
		0.286464, 0.887446, -0.361079,
		-0.947717, 0.317779, 0.029148,
		27.862574, 35.646832, 33.031513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675344, 36.025261, 33.308430>,  <28.525976, 35.424385, 33.011112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675344, 36.025261, 33.308430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296526, 35.916500, 33.376751>,  <28.069235, 35.851242, 33.417744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.296526, 35.916500, 33.376751>,  <28.675344, 36.025261, 33.308430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296526, 35.916500, 33.376751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104698, 0.241373, 0.964768,
		-0.303551, 0.931562, -0.200124,
		-0.947045, -0.271904, 0.170801,
		28.012413, 35.834930, 33.427990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.927711, 36.272057, 32.722347>,  <28.675344, 36.025261, 33.308430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.927711, 36.272057, 32.722347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.325283, 36.260147, 32.679985>,  <29.563826, 36.253002, 32.654568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.325283, 36.260147, 32.679985>,  <28.927711, 36.272057, 32.722347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.325283, 36.260147, 32.679985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084967, 0.403715, -0.910931,
		0.069877, 0.914400, 0.398735,
		0.993931, -0.029774, -0.105904,
		29.623463, 36.251213, 32.648212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.109829, 36.993023, 32.551811>,  <28.927711, 36.272057, 32.722347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.109829, 36.993023, 32.551811> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.402636, 36.751526, 32.425545>,  <29.578320, 36.606628, 32.349785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.402636, 36.751526, 32.425545>,  <29.109829, 36.993023, 32.551811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402636, 36.751526, 32.425545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065174, 0.399152, -0.914565,
		0.678161, 0.690051, 0.252838,
		0.732018, -0.603744, -0.315663,
		29.622240, 36.570404, 32.330845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.644541, 37.395992, 32.250927>,  <29.109829, 36.993023, 32.551811>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.644541, 37.395992, 32.250927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.706371, 37.024349, 32.116543>,  <29.743469, 36.801365, 32.035912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.706371, 37.024349, 32.116543>,  <29.644541, 37.395992, 32.250927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706371, 37.024349, 32.116543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361309, 0.369656, -0.856044,
		0.919545, 0.010936, 0.392833,
		0.154575, -0.929105, -0.335964,
		29.752745, 36.745617, 32.015755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249414, 37.442295, 31.873066>,  <29.644541, 37.395992, 32.250927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249414, 37.442295, 31.873066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.092064, 37.100071, 31.738440>,  <29.997654, 36.894737, 31.657663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.092064, 37.100071, 31.738440>,  <30.249414, 37.442295, 31.873066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.092064, 37.100071, 31.738440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412240, 0.163073, -0.896362,
		0.821773, -0.491355, 0.288546,
		-0.393378, -0.855557, -0.336565,
		29.974051, 36.843403, 31.637470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687040, 37.143219, 31.365604>,  <30.249414, 37.442295, 31.873066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687040, 37.143219, 31.365604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.326817, 36.986713, 31.289806>,  <30.110683, 36.892811, 31.244328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.326817, 36.986713, 31.289806>,  <30.687040, 37.143219, 31.365604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326817, 36.986713, 31.289806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131541, 0.170211, -0.976589,
		0.414359, -0.904400, -0.101818,
		-0.900558, -0.391265, -0.189494,
		30.056648, 36.869335, 31.232958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817051, 36.560909, 30.856007>,  <30.687040, 37.143219, 31.365604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817051, 36.560909, 30.856007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.435404, 36.675316, 30.820559>,  <30.206415, 36.743961, 30.799290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.435404, 36.675316, 30.820559>,  <30.817051, 36.560909, 30.856007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435404, 36.675316, 30.820559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121010, 0.097601, -0.987841,
		-0.273890, -0.953241, -0.127734,
		-0.954118, 0.286017, -0.088619,
		30.149168, 36.761120, 30.793972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656137, 36.357624, 30.266212>,  <30.817051, 36.560909, 30.856007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656137, 36.357624, 30.266212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.335646, 36.589813, 30.324291>,  <30.143351, 36.729126, 30.359138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.335646, 36.589813, 30.324291>,  <30.656137, 36.357624, 30.266212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335646, 36.589813, 30.324291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027368, 0.206849, -0.977990,
		-0.597733, -0.787567, -0.149847,
		-0.801228, 0.580476, 0.145195,
		30.095278, 36.763954, 30.367849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229294, 36.248402, 29.710648>,  <30.656137, 36.357624, 30.266212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229294, 36.248402, 29.710648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.075571, 36.585445, 29.861544>,  <29.983337, 36.787674, 29.952082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.075571, 36.585445, 29.861544>,  <30.229294, 36.248402, 29.710648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075571, 36.585445, 29.861544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092464, 0.441698, -0.892386,
		-0.918564, -0.308067, -0.247658,
		-0.384304, 0.842614, 0.377243,
		29.960279, 36.838230, 29.974716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671534, 36.381470, 29.256121>,  <30.229294, 36.248402, 29.710648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671534, 36.381470, 29.256121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806355, 36.710709, 29.438948>,  <29.887247, 36.908253, 29.548643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.806355, 36.710709, 29.438948>,  <29.671534, 36.381470, 29.256121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806355, 36.710709, 29.438948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245027, 0.392054, -0.886710,
		-0.909041, 0.410863, -0.069537,
		0.337054, 0.823095, 0.457066,
		29.907471, 36.957638, 29.576067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380466, 36.940655, 28.860184>,  <29.671534, 36.381470, 29.256121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380466, 36.940655, 28.860184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654295, 37.130028, 29.081894>,  <29.818592, 37.243652, 29.214920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654295, 37.130028, 29.081894>,  <29.380466, 36.940655, 28.860184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654295, 37.130028, 29.081894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256475, 0.555328, -0.791095,
		-0.682336, 0.683720, 0.258738,
		0.684572, 0.473433, 0.554277,
		29.859667, 37.272057, 29.248177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.326593, 37.671070, 28.727331>,  <29.380466, 36.940655, 28.860184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.326593, 37.671070, 28.727331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.705139, 37.609020, 28.840704>,  <29.932266, 37.571793, 28.908728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.705139, 37.609020, 28.840704>,  <29.326593, 37.671070, 28.727331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705139, 37.609020, 28.840704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322429, 0.396661, -0.859476,
		0.020897, 0.904764, 0.425401,
		0.946363, -0.155122, 0.283433,
		29.989048, 37.562485, 28.925734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616449, 38.306240, 28.595984>,  <29.326593, 37.671070, 28.727331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616449, 38.306240, 28.595984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.923723, 38.052193, 28.628262>,  <30.108088, 37.899765, 28.647629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.923723, 38.052193, 28.628262>,  <29.616449, 38.306240, 28.595984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923723, 38.052193, 28.628262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424573, 0.411028, -0.806718,
		0.479198, 0.653969, 0.585401,
		0.768185, -0.635123, 0.080693,
		30.154179, 37.861656, 28.652470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150261, 38.720882, 28.344797>,  <29.616449, 38.306240, 28.595984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150261, 38.720882, 28.344797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.317225, 38.357468, 28.337519>,  <30.417402, 38.139420, 28.333153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.317225, 38.357468, 28.337519>,  <30.150261, 38.720882, 28.344797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317225, 38.357468, 28.337519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709292, 0.338255, -0.618456,
		0.568045, 0.245244, 0.785609,
		0.417409, -0.908537, -0.018195,
		30.442448, 38.084908, 28.332060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862465, 38.708405, 28.578560>,  <30.150261, 38.720882, 28.344797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862465, 38.708405, 28.578560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.823584, 38.381927, 28.350740>,  <30.800255, 38.186043, 28.214048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.823584, 38.381927, 28.350740>,  <30.862465, 38.708405, 28.578560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823584, 38.381927, 28.350740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840474, 0.239185, -0.486203,
		0.533062, -0.525950, 0.662738,
		-0.097202, -0.816190, -0.569548,
		30.794422, 38.137070, 28.179876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479286, 38.418674, 28.572905>,  <30.862465, 38.708405, 28.578560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479286, 38.418674, 28.572905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.299944, 38.287071, 28.240463>,  <31.192339, 38.208111, 28.040998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.299944, 38.287071, 28.240463>,  <31.479286, 38.418674, 28.572905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299944, 38.287071, 28.240463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764814, 0.340039, -0.547205,
		0.462642, -0.880981, 0.099171,
		-0.448355, -0.329007, -0.831103,
		31.165438, 38.188370, 27.991133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975782, 38.249645, 28.252808>,  <31.479286, 38.418674, 28.572905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975782, 38.249645, 28.252808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.697289, 38.257030, 27.965778>,  <31.530191, 38.261463, 27.793560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.697289, 38.257030, 27.965778>,  <31.975782, 38.249645, 28.252808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697289, 38.257030, 27.965778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707696, 0.184896, -0.681894,
		0.120084, -0.982585, -0.141801,
		-0.696237, 0.018467, -0.717574,
		31.488417, 38.262569, 27.750505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225986, 37.762234, 27.707823>,  <31.975782, 38.249645, 28.252808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225986, 37.762234, 27.707823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.959986, 37.999706, 27.526575>,  <31.800386, 38.142189, 27.417826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.959986, 37.999706, 27.526575>,  <32.225986, 37.762234, 27.707823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959986, 37.999706, 27.526575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565341, 0.003696, -0.824849,
		-0.488024, -0.804691, -0.338090,
		-0.664999, 0.593682, -0.453121,
		31.760487, 38.177811, 27.390638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072903, 37.439980, 26.939327>,  <32.225986, 37.762234, 27.707823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072903, 37.439980, 26.939327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.993227, 37.831314, 26.961866>,  <31.945421, 38.066116, 26.975389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.993227, 37.831314, 26.961866>,  <32.072903, 37.439980, 26.939327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993227, 37.831314, 26.961866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469564, 0.145754, -0.870785,
		-0.860136, -0.146991, -0.488425,
		-0.199187, 0.978340, 0.056346,
		31.933472, 38.124817, 26.978771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882689, 37.604698, 26.322237>,  <32.072903, 37.439980, 26.939327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882689, 37.604698, 26.322237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.960938, 37.969120, 26.467409>,  <32.007885, 38.187771, 26.554512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.960938, 37.969120, 26.467409>,  <31.882689, 37.604698, 26.322237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960938, 37.969120, 26.467409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523917, 0.215754, -0.823991,
		-0.829002, 0.351335, -0.435109,
		0.195620, 0.911051, 0.362931,
		32.019623, 38.242435, 26.576288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657927, 38.101791, 25.865452>,  <31.882689, 37.604698, 26.322237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657927, 38.101791, 25.865452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.939613, 38.279224, 26.087196>,  <32.108624, 38.385685, 26.220243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.939613, 38.279224, 26.087196>,  <31.657927, 38.101791, 25.865452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939613, 38.279224, 26.087196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513362, 0.221243, -0.829163,
		-0.490450, 0.868497, -0.071916,
		0.704215, 0.443582, 0.554361,
		32.150879, 38.412300, 26.253506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689331, 38.846924, 25.689135>,  <31.657927, 38.101791, 25.865452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689331, 38.846924, 25.689135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.033813, 38.709499, 25.838955>,  <32.240501, 38.627045, 25.928846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.033813, 38.709499, 25.838955>,  <31.689331, 38.846924, 25.689135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033813, 38.709499, 25.838955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476317, 0.288455, -0.830612,
		0.177326, 0.893733, 0.412064,
		0.861207, -0.343562, 0.374550,
		32.292175, 38.606430, 25.951321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105988, 39.432995, 25.513470>,  <31.689331, 38.846924, 25.689135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105988, 39.432995, 25.513470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.356091, 39.128735, 25.583279>,  <32.506153, 38.946178, 25.625164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.356091, 39.128735, 25.583279>,  <32.105988, 39.432995, 25.513470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356091, 39.128735, 25.583279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611952, 0.339087, -0.714518,
		0.484323, 0.553556, 0.677500,
		0.625257, -0.760655, 0.174522,
		32.543667, 38.900539, 25.635635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.067303, 30.058840, 44.941185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.714436, 29.891813, 44.854088>,  <36.502716, 29.791597, 44.801830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.714436, 29.891813, 44.854088>,  <37.067303, 30.058840, 44.941185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714436, 29.891813, 44.854088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261981, 0.050932, 0.963728,
		-0.391332, 0.907217, -0.154325,
		-0.882171, -0.417568, -0.217743,
		36.449783, 29.766542, 44.788765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501389, 30.520271, 45.255535>,  <37.067303, 30.058840, 44.941185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501389, 30.520271, 45.255535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307549, 30.174614, 45.201248>,  <36.191242, 29.967220, 45.168678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307549, 30.174614, 45.201248>,  <36.501389, 30.520271, 45.255535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307549, 30.174614, 45.201248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258393, -0.006810, 0.966016,
		-0.835699, 0.503201, -0.219988,
		-0.484602, -0.864142, -0.135715,
		36.162167, 29.915371, 45.160534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889194, 30.580490, 45.627914>,  <36.501389, 30.520271, 45.255535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889194, 30.580490, 45.627914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907516, 30.183117, 45.585983>,  <35.918510, 29.944693, 45.560825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.907516, 30.183117, 45.585983>,  <35.889194, 30.580490, 45.627914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907516, 30.183117, 45.585983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515954, -0.113383, 0.849079,
		-0.855391, 0.015197, -0.517760,
		0.045801, -0.993435, -0.104828,
		35.921257, 29.885086, 45.554535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278137, 30.342670, 45.585033>,  <35.889194, 30.580490, 45.627914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278137, 30.342670, 45.585033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520889, 30.065176, 45.740177>,  <35.666538, 29.898680, 45.833263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.520889, 30.065176, 45.740177>,  <35.278137, 30.342670, 45.585033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520889, 30.065176, 45.740177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590985, -0.067569, 0.803847,
		-0.531449, -0.717055, -0.450993,
		0.606876, -0.693734, 0.387860,
		35.702953, 29.857056, 45.856537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862526, 29.899712, 45.780781>,  <35.278137, 30.342670, 45.585033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862526, 29.899712, 45.780781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.181732, 29.822111, 46.009003>,  <35.373257, 29.775551, 46.145935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.181732, 29.822111, 46.009003>,  <34.862526, 29.899712, 45.780781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181732, 29.822111, 46.009003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598955, -0.150836, 0.786449,
		-0.066514, -0.969336, -0.236568,
		0.798016, -0.194003, 0.570556,
		35.421139, 29.763910, 46.180168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679256, 29.293386, 46.195461>,  <34.862526, 29.899712, 45.780781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679256, 29.293386, 46.195461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007454, 29.439999, 46.370934>,  <35.204372, 29.527966, 46.476219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007454, 29.439999, 46.370934>,  <34.679256, 29.293386, 46.195461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007454, 29.439999, 46.370934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402732, -0.173994, 0.898629,
		0.405705, -0.913991, 0.004853,
		0.820494, 0.366532, 0.438684,
		35.253601, 29.549957, 46.502537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821583, 28.849667, 46.696819>,  <34.679256, 29.293386, 46.195461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821583, 28.849667, 46.696819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007397, 29.183519, 46.815205>,  <35.118885, 29.383831, 46.886238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.007397, 29.183519, 46.815205>,  <34.821583, 28.849667, 46.696819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007397, 29.183519, 46.815205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547023, 0.007623, 0.837083,
		0.696400, -0.550754, 0.460105,
		0.464534, 0.834633, 0.295967,
		35.146755, 29.433908, 46.903996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850048, 28.776594, 47.468239>,  <34.821583, 28.849667, 46.696819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850048, 28.776594, 47.468239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901463, 29.165165, 47.388428>,  <34.932312, 29.398308, 47.340542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901463, 29.165165, 47.388428>,  <34.850048, 28.776594, 47.468239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901463, 29.165165, 47.388428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599712, 0.236382, 0.764506,
		0.789825, 0.021392, 0.612959,
		0.128538, 0.971425, -0.199529,
		34.940025, 29.456593, 47.328568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199039, 29.045603, 48.080826>,  <34.850048, 28.776594, 47.468239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199039, 29.045603, 48.080826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008430, 29.340248, 47.888859>,  <34.894066, 29.517035, 47.773678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008430, 29.340248, 47.888859>,  <35.199039, 29.045603, 48.080826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008430, 29.340248, 47.888859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596467, 0.130154, 0.792015,
		0.645872, 0.663674, 0.377343,
		-0.476526, 0.736612, -0.479922,
		34.865471, 29.561232, 47.744881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100613, 29.676449, 48.543514>,  <35.199039, 29.045603, 48.080826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100613, 29.676449, 48.543514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800705, 29.724663, 48.283264>,  <34.620762, 29.753592, 48.127113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.800705, 29.724663, 48.283264>,  <35.100613, 29.676449, 48.543514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800705, 29.724663, 48.283264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609045, 0.258672, 0.749769,
		0.258672, 0.958416, -0.120534,
		-0.749769, 0.120534, -0.650629,
		34.575775, 29.760822, 48.088074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732006, 30.129499, 48.848263>,  <35.100613, 29.676449, 48.543514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732006, 30.129499, 48.848263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474705, 29.998161, 48.571594>,  <34.320324, 29.919359, 48.405594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.474705, 29.998161, 48.571594>,  <34.732006, 30.129499, 48.848263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474705, 29.998161, 48.571594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728277, -0.016413, 0.685086,
		-0.236298, 0.944415, -0.228569,
		-0.643254, -0.328346, -0.691675,
		34.281727, 29.899658, 48.364090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141838, 30.321587, 49.057735>,  <34.732006, 30.129499, 48.848263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141838, 30.321587, 49.057735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981644, 30.051561, 48.809895>,  <33.885529, 29.889545, 48.661190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.981644, 30.051561, 48.809895>,  <34.141838, 30.321587, 49.057735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981644, 30.051561, 48.809895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839065, -0.001552, 0.544029,
		-0.368215, 0.737759, -0.565800,
		-0.400484, -0.675062, -0.619599,
		33.861500, 29.849043, 48.624016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449974, 30.462828, 48.929916>,  <34.141838, 30.321587, 49.057735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449974, 30.462828, 48.929916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470558, 30.069330, 48.861099>,  <33.482910, 29.833231, 48.819809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470558, 30.069330, 48.861099>,  <33.449974, 30.462828, 48.929916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470558, 30.069330, 48.861099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765336, -0.149520, 0.626022,
		-0.641570, 0.099457, -0.760590,
		0.051462, -0.983744, -0.172046,
		33.485996, 29.774206, 48.809486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022804, 30.236078, 49.483799>,  <33.449974, 30.462828, 48.929916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022804, 30.236078, 49.483799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029770, 29.883602, 49.294823>,  <33.033947, 29.672117, 49.181435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.029770, 29.883602, 49.294823>,  <33.022804, 30.236078, 49.483799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029770, 29.883602, 49.294823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426968, -0.433818, 0.793411,
		-0.904099, 0.187905, -0.383792,
		0.017410, -0.881189, -0.472443,
		33.034992, 29.619246, 49.153091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676231, 29.854742, 50.058601>,  <33.022804, 30.236078, 49.483799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676231, 29.854742, 50.058601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.304710, 29.837719, 50.205849>,  <32.081799, 29.827505, 50.294197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.304710, 29.837719, 50.205849>,  <32.676231, 29.854742, 50.058601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304710, 29.837719, 50.205849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363467, 0.298150, -0.882609,
		-0.072191, -0.953570, -0.292392,
		-0.928806, -0.042558, 0.368115,
		32.026070, 29.824951, 50.316284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355740, 29.441612, 49.614674>,  <32.676231, 29.854742, 50.058601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355740, 29.441612, 49.614674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.095078, 29.687222, 49.792805>,  <31.938679, 29.834587, 49.899685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.095078, 29.687222, 49.792805>,  <32.355740, 29.441612, 49.614674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095078, 29.687222, 49.792805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253051, 0.377484, -0.890770,
		-0.715058, -0.693168, -0.090612,
		-0.651658, 0.614023, 0.445330,
		31.899580, 29.871428, 49.926403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790852, 29.372467, 49.227776>,  <32.355740, 29.441612, 49.614674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790852, 29.372467, 49.227776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.752848, 29.724972, 49.412968>,  <31.730045, 29.936474, 49.524082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.752848, 29.724972, 49.412968>,  <31.790852, 29.372467, 49.227776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752848, 29.724972, 49.412968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263130, 0.426310, -0.865461,
		-0.960071, -0.204051, 0.191383,
		-0.095010, 0.881262, 0.462980,
		31.724344, 29.989351, 49.551861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369925, 29.685484, 48.818741>,  <31.790852, 29.372467, 49.227776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369925, 29.685484, 48.818741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.477165, 29.998369, 49.043690>,  <31.541510, 30.186100, 49.178658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.477165, 29.998369, 49.043690>,  <31.369925, 29.685484, 48.818741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477165, 29.998369, 49.043690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101216, 0.603381, -0.791004,
		-0.958059, 0.155149, 0.240940,
		0.268102, 0.782215, 0.562371,
		31.557596, 30.233034, 49.212402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836243, 30.221544, 48.623421>,  <31.369925, 29.685484, 48.818741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836243, 30.221544, 48.623421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.141516, 30.430403, 48.775692>,  <31.324678, 30.555717, 48.867054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.141516, 30.430403, 48.775692>,  <30.836243, 30.221544, 48.623421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141516, 30.430403, 48.775692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038902, 0.625176, -0.779513,
		-0.645013, 0.580100, 0.497435,
		0.763180, 0.522148, 0.380680,
		31.370470, 30.587048, 48.889896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.702579, 30.942719, 48.554451>,  <30.836243, 30.221544, 48.623421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.702579, 30.942719, 48.554451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.101126, 30.932714, 48.587025>,  <31.340254, 30.926712, 48.606567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.101126, 30.932714, 48.587025>,  <30.702579, 30.942719, 48.554451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101126, 30.932714, 48.587025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075531, 0.701446, -0.708709,
		-0.039396, 0.712283, 0.700786,
		0.996365, -0.025011, 0.081434,
		31.400036, 30.925211, 48.611454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.903538, 31.608009, 48.450592>,  <30.702579, 30.942719, 48.554451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.903538, 31.608009, 48.450592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.239130, 31.396355, 48.399799>,  <31.440485, 31.269361, 48.369324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.239130, 31.396355, 48.399799>,  <30.903538, 31.608009, 48.450592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239130, 31.396355, 48.399799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229949, 0.556242, -0.798573,
		0.493190, 0.640786, 0.588351,
		0.838980, -0.529139, -0.126984,
		31.490824, 31.237614, 48.361706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315090, 32.155540, 48.210114>,  <30.903538, 31.608009, 48.450592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315090, 32.155540, 48.210114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537010, 31.827339, 48.155010>,  <31.670162, 31.630419, 48.121948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.537010, 31.827339, 48.155010>,  <31.315090, 32.155540, 48.210114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537010, 31.827339, 48.155010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304015, 0.354059, -0.884430,
		0.774450, 0.448801, 0.445876,
		0.554799, -0.820500, -0.137759,
		31.703449, 31.581190, 48.113682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103695, 32.364147, 48.044872>,  <31.315090, 32.155540, 48.210114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103695, 32.364147, 48.044872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.013988, 32.003231, 47.897587>,  <31.960165, 31.786682, 47.809216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.013988, 32.003231, 47.897587>,  <32.103695, 32.364147, 48.044872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013988, 32.003231, 47.897587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536253, 0.201234, -0.819718,
		0.813718, -0.381292, 0.438724,
		-0.224266, -0.902287, -0.368216,
		31.946709, 31.732546, 47.787121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805855, 31.972925, 47.889488>,  <32.103695, 32.364147, 48.044872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805855, 31.972925, 47.889488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512585, 31.848509, 47.647594>,  <32.336620, 31.773859, 47.502457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.512585, 31.848509, 47.647594>,  <32.805855, 31.972925, 47.889488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512585, 31.848509, 47.647594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557902, 0.233354, -0.796424,
		0.388838, -0.921303, 0.002441,
		-0.733178, -0.311042, -0.604733,
		32.292629, 31.755198, 47.466175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153774, 31.859205, 47.303196>,  <32.805855, 31.972925, 47.889488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153774, 31.859205, 47.303196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782928, 31.883266, 47.155228>,  <32.560421, 31.897703, 47.066448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782928, 31.883266, 47.155228>,  <33.153774, 31.859205, 47.303196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782928, 31.883266, 47.155228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373338, 0.234729, -0.897508,
		0.032841, -0.970198, -0.240079,
		-0.927114, 0.060155, -0.369920,
		32.504795, 31.901314, 47.044250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172890, 31.402939, 46.761330>,  <33.153774, 31.859205, 47.303196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172890, 31.402939, 46.761330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860119, 31.641115, 46.687531>,  <32.672455, 31.784021, 46.643253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860119, 31.641115, 46.687531>,  <33.172890, 31.402939, 46.761330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860119, 31.641115, 46.687531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296007, 0.094199, -0.950530,
		-0.548605, -0.797858, -0.249911,
		-0.781928, 0.595441, -0.184493,
		32.625542, 31.819748, 46.632183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804573, 31.168856, 45.982430>,  <33.172890, 31.402939, 46.761330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804573, 31.168856, 45.982430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677399, 31.529678, 46.099190>,  <32.601093, 31.746172, 46.169247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677399, 31.529678, 46.099190>,  <32.804573, 31.168856, 45.982430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677399, 31.529678, 46.099190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109791, 0.340832, -0.933691,
		-0.941733, -0.264808, -0.207402,
		-0.317938, 0.902059, 0.291899,
		32.582016, 31.800297, 46.186760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293812, 31.410477, 45.439606>,  <32.804573, 31.168856, 45.982430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293812, 31.410477, 45.439606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454807, 31.725368, 45.626480>,  <32.551407, 31.914305, 45.738605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454807, 31.725368, 45.626480>,  <32.293812, 31.410477, 45.439606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454807, 31.725368, 45.626480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333700, 0.349061, -0.875671,
		-0.852434, 0.508353, -0.122205,
		0.402493, 0.787232, 0.467189,
		32.575554, 31.961538, 45.766636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623596, 31.359823, 45.119442>,  <32.293812, 31.410477, 45.439606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623596, 31.359823, 45.119442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.252159, 31.334501, 44.973179>,  <31.029297, 31.319307, 44.885422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.252159, 31.334501, 44.973179>,  <31.623596, 31.359823, 45.119442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252159, 31.334501, 44.973179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228621, -0.678551, 0.698069,
		-0.292309, 0.731820, 0.615626,
		-0.928595, -0.063307, -0.365656,
		30.973581, 31.315510, 44.863483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246153, 31.479406, 45.712906>,  <31.623596, 31.359823, 45.119442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246153, 31.479406, 45.712906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017330, 31.289562, 45.445324>,  <30.880037, 31.175655, 45.284775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.017330, 31.289562, 45.445324>,  <31.246153, 31.479406, 45.712906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.017330, 31.289562, 45.445324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315894, -0.625184, 0.713692,
		-0.756943, 0.619590, 0.207715,
		-0.572056, -0.474608, -0.668954,
		30.845713, 31.147181, 45.244637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.637194, 31.354240, 46.123981>,  <31.246153, 31.479406, 45.712906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.637194, 31.354240, 46.123981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.623028, 31.090330, 45.823730>,  <30.614529, 30.931984, 45.643581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.623028, 31.090330, 45.823730>,  <30.637194, 31.354240, 46.123981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623028, 31.090330, 45.823730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594240, -0.589991, 0.546616,
		-0.803508, 0.465411, -0.371171,
		-0.035414, -0.659774, -0.750629,
		30.612404, 30.892397, 45.598541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.980417, 31.167675, 46.233242>,  <30.637194, 31.354240, 46.123981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.980417, 31.167675, 46.233242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.128954, 30.890860, 45.985634>,  <30.218075, 30.724770, 45.837067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.128954, 30.890860, 45.985634>,  <29.980417, 31.167675, 46.233242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128954, 30.890860, 45.985634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508854, -0.709339, 0.487755,
		-0.776643, 0.133869, -0.615553,
		0.371341, -0.692038, -0.619024,
		30.240356, 30.683249, 45.799927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363678, 30.731340, 46.023949>,  <29.980417, 31.167675, 46.233242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363678, 30.731340, 46.023949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.708290, 30.528679, 46.010864>,  <29.915056, 30.407082, 46.003014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.708290, 30.528679, 46.010864>,  <29.363678, 30.731340, 46.023949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708290, 30.528679, 46.010864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361145, -0.656836, 0.661922,
		-0.356849, -0.558453, -0.748858,
		0.861529, -0.506653, -0.032709,
		29.966749, 30.376682, 46.001053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191931, 30.036722, 46.024368>,  <29.363678, 30.731340, 46.023949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191931, 30.036722, 46.024368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.571960, 30.039944, 46.149136>,  <29.799978, 30.041876, 46.223995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.571960, 30.039944, 46.149136>,  <29.191931, 30.036722, 46.024368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571960, 30.039944, 46.149136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223551, -0.679841, 0.698456,
		0.217682, -0.733315, -0.644099,
		0.950073, 0.008052, 0.311923,
		29.856983, 30.042358, 46.242714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472639, 29.345425, 45.966305>,  <29.191931, 30.036722, 46.024368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472639, 29.345425, 45.966305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.702713, 29.525064, 46.239792>,  <29.840757, 29.632849, 46.403885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.702713, 29.525064, 46.239792>,  <29.472639, 29.345425, 45.966305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702713, 29.525064, 46.239792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187095, -0.741437, 0.644412,
		0.796339, -0.498578, -0.342440,
		0.575187, 0.449101, 0.683716,
		29.875269, 29.659796, 46.444908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518066, 28.635752, 45.694550>,  <29.472639, 29.345425, 45.966305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518066, 28.635752, 45.694550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.166803, 28.475208, 45.590435>,  <28.956045, 28.378883, 45.527966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.166803, 28.475208, 45.590435>,  <29.518066, 28.635752, 45.694550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166803, 28.475208, 45.590435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071802, 0.427362, -0.901225,
		0.472952, -0.810106, -0.346473,
		-0.878158, -0.401359, -0.260289,
		28.903357, 28.354801, 45.512348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424675, 28.056530, 45.059563>,  <29.518066, 28.635752, 45.694550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424675, 28.056530, 45.059563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.086811, 28.268759, 45.087971>,  <28.884092, 28.396095, 45.105015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.086811, 28.268759, 45.087971>,  <29.424675, 28.056530, 45.059563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086811, 28.268759, 45.087971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106391, 0.296411, -0.949116,
		-0.524623, -0.794126, -0.306814,
		-0.844661, 0.530571, 0.071016,
		28.833412, 28.427931, 45.109276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222918, 28.053249, 44.396778>,  <29.424675, 28.056530, 45.059563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222918, 28.053249, 44.396778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.998556, 28.355299, 44.532528>,  <28.863939, 28.536530, 44.613976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.998556, 28.355299, 44.532528>,  <29.222918, 28.053249, 44.396778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998556, 28.355299, 44.532528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015783, 0.419606, -0.907569,
		-0.827730, -0.503704, -0.247277,
		-0.560905, 0.755125, 0.339370,
		28.830284, 28.581837, 44.634338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741152, 28.156929, 43.906239>,  <29.222918, 28.053249, 44.396778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741152, 28.156929, 43.906239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.728485, 28.497822, 44.115120>,  <28.720884, 28.702358, 44.240448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.728485, 28.497822, 44.115120>,  <28.741152, 28.156929, 43.906239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728485, 28.497822, 44.115120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277451, 0.494438, -0.823743,
		-0.960218, -0.170973, 0.220794,
		-0.031669, 0.852232, 0.522205,
		28.718985, 28.753492, 44.271782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.056627, 28.481888, 43.772854>,  <28.741152, 28.156929, 43.906239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.056627, 28.481888, 43.772854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.318298, 28.764883, 43.879822>,  <28.475302, 28.934679, 43.944004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.318298, 28.764883, 43.879822>,  <28.056627, 28.481888, 43.772854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318298, 28.764883, 43.879822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194280, 0.498891, -0.844608,
		-0.730962, 0.500571, 0.463814,
		0.654179, 0.707486, 0.267420,
		28.514553, 28.977129, 43.960049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.830448, 29.075281, 43.377651>,  <28.056627, 28.481888, 43.772854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.830448, 29.075281, 43.377651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.198360, 29.169498, 43.503204>,  <28.419107, 29.226028, 43.578537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.198360, 29.169498, 43.503204>,  <27.830448, 29.075281, 43.377651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198360, 29.169498, 43.503204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105459, 0.622065, -0.775831,
		-0.378000, 0.746696, 0.547322,
		0.919780, 0.235544, 0.313886,
		28.474295, 29.240162, 43.597370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769400, 29.793058, 43.204365>,  <27.830448, 29.075281, 43.377651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.769400, 29.793058, 43.204365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.152649, 29.679390, 43.218483>,  <28.382599, 29.611189, 43.226955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.152649, 29.679390, 43.218483>,  <27.769400, 29.793058, 43.204365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152649, 29.679390, 43.218483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188514, 0.533167, -0.824740,
		0.215549, 0.796856, 0.564410,
		0.958124, -0.284171, 0.035295,
		28.440086, 29.594139, 43.229073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.138729, 27.314835, 47.426922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.447933, 27.551121, 47.519444>,  <32.633457, 27.692892, 47.574959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.447933, 27.551121, 47.519444>,  <32.138729, 27.314835, 47.426922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447933, 27.551121, 47.519444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322638, -0.052135, -0.945086,
		-0.546219, 0.805193, -0.230889,
		0.773014, 0.590717, 0.231309,
		32.679836, 27.728336, 47.588837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117531, 27.876387, 46.935005>,  <32.138729, 27.314835, 47.426922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117531, 27.876387, 46.935005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492107, 27.847481, 47.072327>,  <32.716854, 27.830137, 47.154720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.492107, 27.847481, 47.072327>,  <32.117531, 27.876387, 46.935005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492107, 27.847481, 47.072327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343901, -0.004390, -0.938996,
		0.069364, 0.997376, 0.020742,
		0.936441, -0.072266, 0.343303,
		32.773041, 27.825802, 47.175316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537010, 28.418941, 46.607811>,  <32.117531, 27.876387, 46.935005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537010, 28.418941, 46.607811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.798698, 28.143456, 46.732819>,  <32.955711, 27.978165, 46.807823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.798698, 28.143456, 46.732819>,  <32.537010, 28.418941, 46.607811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798698, 28.143456, 46.732819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344762, -0.096210, -0.933747,
		0.673151, 0.718622, 0.174500,
		0.654222, -0.688713, 0.312517,
		32.994965, 27.936842, 46.826572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191608, 28.679235, 46.373577>,  <32.537010, 28.418941, 46.607811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191608, 28.679235, 46.373577> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.226959, 28.287432, 46.445972>,  <33.248169, 28.052349, 46.489410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.226959, 28.287432, 46.445972>,  <33.191608, 28.679235, 46.373577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226959, 28.287432, 46.445972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340260, -0.141081, -0.929688,
		0.936170, 0.143743, 0.320819,
		0.088375, -0.979507, 0.180985,
		33.253471, 27.993580, 46.500267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683582, 28.491449, 45.827137>,  <33.191608, 28.679235, 46.373577>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683582, 28.491449, 45.827137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.510128, 28.154535, 45.955208>,  <33.406055, 27.952387, 46.032051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.510128, 28.154535, 45.955208>,  <33.683582, 28.491449, 45.827137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510128, 28.154535, 45.955208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268589, -0.459992, -0.846326,
		0.860126, -0.281004, 0.425699,
		-0.433639, -0.842285, 0.320176,
		33.380035, 27.901850, 46.051262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225327, 27.983475, 45.780960>,  <33.683582, 28.491449, 45.827137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225327, 27.983475, 45.780960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.876625, 27.787527, 45.784218>,  <33.667404, 27.669958, 45.786171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.876625, 27.787527, 45.784218>,  <34.225327, 27.983475, 45.780960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876625, 27.787527, 45.784218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236190, -0.434764, -0.869019,
		0.429248, -0.755650, 0.494711,
		-0.871757, -0.489870, 0.008145,
		33.615097, 27.640566, 45.786663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278297, 27.344049, 45.465137>,  <34.225327, 27.983475, 45.780960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278297, 27.344049, 45.465137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.881012, 27.362503, 45.422417>,  <33.642643, 27.373575, 45.396782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.881012, 27.362503, 45.422417>,  <34.278297, 27.344049, 45.465137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881012, 27.362503, 45.422417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088614, -0.294875, -0.951418,
		-0.075385, -0.954422, 0.288785,
		-0.993209, 0.046133, -0.106804,
		33.583050, 27.376343, 45.390377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100296, 26.710337, 45.062923>,  <34.278297, 27.344049, 45.465137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100296, 26.710337, 45.062923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.801811, 26.975172, 45.035164>,  <33.622723, 27.134073, 45.018509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.801811, 26.975172, 45.035164>,  <34.100296, 26.710337, 45.062923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801811, 26.975172, 45.035164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105403, -0.220436, -0.969690,
		-0.657317, -0.716274, 0.234277,
		-0.746207, 0.662087, -0.069399,
		33.577950, 27.173798, 45.014343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490475, 26.380566, 44.711922>,  <34.100296, 26.710337, 45.062923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490475, 26.380566, 44.711922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.439995, 26.775558, 44.674072>,  <33.409706, 27.012554, 44.651363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.439995, 26.775558, 44.674072>,  <33.490475, 26.380566, 44.711922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439995, 26.775558, 44.674072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097368, -0.107259, -0.989452,
		-0.987215, -0.115651, 0.109685,
		-0.126196, 0.987482, -0.094627,
		33.402138, 27.071802, 44.645683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862507, 26.482279, 44.311966>,  <33.490475, 26.380566, 44.711922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862507, 26.482279, 44.311966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.083843, 26.812120, 44.264904>,  <33.216644, 27.010025, 44.236668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.083843, 26.812120, 44.264904>,  <32.862507, 26.482279, 44.311966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083843, 26.812120, 44.264904> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160957, -0.032734, -0.986418,
		-0.817254, 0.564765, 0.114612,
		0.553342, 0.824602, -0.117655,
		33.249847, 27.059502, 44.229607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510052, 26.906822, 43.829308>,  <32.862507, 26.482279, 44.311966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510052, 26.906822, 43.829308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.880226, 27.058245, 43.835789>,  <33.102329, 27.149099, 43.839676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.880226, 27.058245, 43.835789>,  <32.510052, 26.906822, 43.829308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.880226, 27.058245, 43.835789> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053874, 0.173794, -0.983307,
		-0.375055, 0.909115, 0.181230,
		0.925436, 0.378558, 0.016205,
		33.157856, 27.171812, 43.840649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471943, 27.420164, 43.357315>,  <32.510052, 26.906822, 43.829308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471943, 27.420164, 43.357315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.866306, 27.374920, 43.406624>,  <33.102924, 27.347773, 43.436211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.866306, 27.374920, 43.406624>,  <32.471943, 27.420164, 43.357315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866306, 27.374920, 43.406624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145058, 0.210838, -0.966698,
		0.083353, 0.970955, 0.224274,
		0.985906, -0.113110, 0.123270,
		33.162079, 27.340986, 43.443604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084248, 27.849220, 42.950195>,  <32.471943, 27.420164, 43.357315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084248, 27.849220, 42.950195> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.738894, 27.718290, 42.796616>,  <31.531681, 27.639732, 42.704468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.738894, 27.718290, 42.796616>,  <32.084248, 27.849220, 42.950195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738894, 27.718290, 42.796616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285274, -0.310968, 0.906597,
		-0.416150, 0.892276, 0.175108,
		-0.863388, -0.327326, -0.383952,
		31.479877, 27.620092, 42.681431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.580313, 28.167555, 43.332844>,  <32.084248, 27.849220, 42.950195>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.580313, 28.167555, 43.332844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.414900, 27.831429, 43.192638>,  <31.315653, 27.629753, 43.108513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.414900, 27.831429, 43.192638>,  <31.580313, 28.167555, 43.332844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414900, 27.831429, 43.192638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160184, -0.311824, 0.936540,
		-0.896288, 0.443437, -0.005656,
		-0.413532, -0.840315, -0.350516,
		31.290840, 27.579334, 43.087482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110968, 28.053122, 43.824112>,  <31.580313, 28.167555, 43.332844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110968, 28.053122, 43.824112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.118271, 27.695507, 43.645061>,  <31.122652, 27.480938, 43.537632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.118271, 27.695507, 43.645061>,  <31.110968, 28.053122, 43.824112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118271, 27.695507, 43.645061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205098, -0.441526, 0.873493,
		-0.978571, 0.075859, -0.191426,
		0.018257, -0.894036, -0.447623,
		31.123749, 27.427296, 43.510777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580029, 27.744274, 43.947800>,  <31.110968, 28.053122, 43.824112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580029, 27.744274, 43.947800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.788492, 27.417747, 43.848186>,  <30.913570, 27.221830, 43.788418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.788492, 27.417747, 43.848186>,  <30.580029, 27.744274, 43.947800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788492, 27.417747, 43.848186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263458, -0.431423, 0.862824,
		-0.811779, -0.384056, -0.439905,
		0.521158, -0.816318, -0.249037,
		30.944839, 27.172852, 43.773476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.027132, 27.107651, 43.982914>,  <30.580029, 27.744274, 43.947800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.027132, 27.107651, 43.982914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.404903, 26.982876, 44.024380>,  <30.631567, 26.908010, 44.049259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.404903, 26.982876, 44.024380>,  <30.027132, 27.107651, 43.982914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404903, 26.982876, 44.024380> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258085, -0.508355, 0.821564,
		-0.203579, -0.802664, -0.560612,
		0.944430, -0.311939, 0.103665,
		30.688232, 26.889294, 44.055481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030432, 26.344984, 44.052979>,  <30.027132, 27.107651, 43.982914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030432, 26.344984, 44.052979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.382128, 26.445007, 44.215164>,  <30.593145, 26.505020, 44.312477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.382128, 26.445007, 44.215164>,  <30.030432, 26.344984, 44.052979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382128, 26.445007, 44.215164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241105, -0.500498, 0.831487,
		0.410855, -0.828839, -0.379769,
		0.879242, 0.250057, 0.405469,
		30.645901, 26.520025, 44.336803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261507, 25.728140, 44.331722>,  <30.030432, 26.344984, 44.052979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261507, 25.728140, 44.331722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.480494, 26.024319, 44.487682>,  <30.611885, 26.202026, 44.581257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.480494, 26.024319, 44.487682>,  <30.261507, 25.728140, 44.331722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.480494, 26.024319, 44.487682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016725, -0.456147, 0.889747,
		0.836661, -0.493627, -0.237340,
		0.547465, 0.740447, 0.389896,
		30.644733, 26.246452, 44.604652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698412, 25.382845, 44.661877>,  <30.261507, 25.728140, 44.331722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698412, 25.382845, 44.661877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.761499, 25.742962, 44.824162>,  <30.799353, 25.959032, 44.921532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.761499, 25.742962, 44.824162>,  <30.698412, 25.382845, 44.661877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761499, 25.742962, 44.824162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064982, -0.400500, 0.913990,
		0.985344, -0.170518, -0.004664,
		0.157720, 0.900291, 0.405711,
		30.808815, 26.013048, 44.945873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182224, 25.218813, 45.246498>,  <30.698412, 25.382845, 44.661877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182224, 25.218813, 45.246498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.996727, 25.567333, 45.310726>,  <30.885429, 25.776445, 45.349262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.996727, 25.567333, 45.310726>,  <31.182224, 25.218813, 45.246498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996727, 25.567333, 45.310726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284261, -0.317981, 0.904480,
		0.839130, 0.373801, 0.395137,
		-0.463742, 0.871298, 0.160570,
		30.857605, 25.828722, 45.358898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414499, 25.488750, 45.896549>,  <31.182224, 25.218813, 45.246498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414499, 25.488750, 45.896549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.059582, 25.666935, 45.848755>,  <30.846632, 25.773846, 45.820080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.059582, 25.666935, 45.848755>,  <31.414499, 25.488750, 45.896549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059582, 25.666935, 45.848755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264157, -0.278475, 0.923403,
		0.378066, 0.850891, 0.364760,
		-0.887292, 0.445461, -0.119487,
		30.793394, 25.800573, 45.812908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.287138, 25.865683, 46.578758>,  <31.414499, 25.488750, 45.896549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.287138, 25.865683, 46.578758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.948671, 25.804106, 46.374676>,  <30.745592, 25.767159, 46.252228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.948671, 25.804106, 46.374676>,  <31.287138, 25.865683, 46.578758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948671, 25.804106, 46.374676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444598, -0.323940, 0.835102,
		-0.293833, 0.933469, 0.205664,
		-0.846165, -0.153943, -0.510203,
		30.694822, 25.757923, 46.221615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856625, 25.975267, 47.171185>,  <31.287138, 25.865683, 46.578758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856625, 25.975267, 47.171185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.639832, 25.798969, 46.884968>,  <30.509756, 25.693192, 46.713238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.639832, 25.798969, 46.884968>,  <30.856625, 25.975267, 47.171185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639832, 25.798969, 46.884968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652539, -0.315828, 0.688800,
		-0.529572, 0.840236, -0.116429,
		-0.541984, -0.440744, -0.715541,
		30.477236, 25.666746, 46.670307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220003, 26.152998, 47.306828>,  <30.856625, 25.975267, 47.171185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220003, 26.152998, 47.306828> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.199350, 25.824762, 47.079155>,  <30.186958, 25.627821, 46.942551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.199350, 25.824762, 47.079155>,  <30.220003, 26.152998, 47.306828>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199350, 25.824762, 47.079155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641149, -0.409741, 0.648876,
		-0.765678, 0.398434, -0.504963,
		-0.051630, -0.820587, -0.569185,
		30.183861, 25.578587, 46.908398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530375, 25.953310, 47.391590>,  <30.220003, 26.152998, 47.306828>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530375, 25.953310, 47.391590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.715025, 25.633774, 47.237316>,  <29.825815, 25.442051, 47.144753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.715025, 25.633774, 47.237316>,  <29.530375, 25.953310, 47.391590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715025, 25.633774, 47.237316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340991, -0.561177, 0.754192,
		-0.818918, -0.216640, -0.531452,
		0.461626, -0.798842, -0.385685,
		29.853514, 25.394121, 47.121609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845865, 25.877180, 47.025444>,  <29.530375, 25.953310, 47.391590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845865, 25.877180, 47.025444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.800274, 26.183094, 47.279095>,  <28.772919, 26.366642, 47.431286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.800274, 26.183094, 47.279095>,  <28.845865, 25.877180, 47.025444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800274, 26.183094, 47.279095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283963, 0.586576, -0.758482,
		-0.952037, -0.266519, 0.150312,
		-0.113980, 0.764785, 0.634123,
		28.766079, 26.412529, 47.469330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161970, 26.140873, 46.897255>,  <28.845865, 25.877180, 47.025444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161970, 26.140873, 46.897255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.380457, 26.425528, 47.073990>,  <28.511549, 26.596319, 47.180031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.380457, 26.425528, 47.073990>,  <28.161970, 26.140873, 46.897255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380457, 26.425528, 47.073990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216461, 0.629480, -0.746257,
		-0.809191, 0.311979, 0.497875,
		0.546219, 0.711635, 0.441838,
		28.544323, 26.639017, 47.206543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744455, 26.796759, 46.908085>,  <28.161970, 26.140873, 46.897255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744455, 26.796759, 46.908085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.121393, 26.927162, 46.938309>,  <28.347555, 27.005404, 46.956444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.121393, 26.927162, 46.938309>,  <27.744455, 26.796759, 46.908085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.121393, 26.927162, 46.938309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249518, 0.834934, -0.490536,
		-0.223004, 0.443400, 0.868139,
		0.942343, 0.326007, 0.075557,
		28.404097, 27.024965, 46.960976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685497, 27.599937, 46.947872>,  <27.744455, 26.796759, 46.908085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685497, 27.599937, 46.947872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.070644, 27.562519, 46.846577>,  <28.301733, 27.540068, 46.785797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.070644, 27.562519, 46.846577>,  <27.685497, 27.599937, 46.947872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.070644, 27.562519, 46.846577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111939, 0.715261, -0.689834,
		0.245666, 0.692568, 0.678232,
		0.962870, -0.093548, -0.253240,
		28.359505, 27.534454, 46.770603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923473, 28.262209, 46.719933>,  <27.685497, 27.599937, 46.947872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923473, 28.262209, 46.719933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.227793, 28.036320, 46.592014>,  <28.410385, 27.900787, 46.515263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.227793, 28.036320, 46.592014>,  <27.923473, 28.262209, 46.719933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.227793, 28.036320, 46.592014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164356, 0.644361, -0.746850,
		0.627829, 0.515643, 0.583046,
		0.760800, -0.564722, -0.319800,
		28.456034, 27.866903, 46.496075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518715, 28.669619, 46.634716>,  <27.923473, 28.262209, 46.719933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518715, 28.669619, 46.634716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.581133, 28.340904, 46.415512>,  <28.618584, 28.143675, 46.283989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.581133, 28.340904, 46.415512>,  <28.518715, 28.669619, 46.634716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581133, 28.340904, 46.415512> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110359, 0.565838, -0.817098,
		0.981566, 0.067026, 0.178989,
		0.156046, -0.821788, -0.548010,
		28.627947, 28.094368, 46.251110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092768, 28.727531, 46.318729>,  <28.518715, 28.669619, 46.634716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092768, 28.727531, 46.318729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.894251, 28.464087, 46.092484>,  <28.775141, 28.306019, 45.956734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.894251, 28.464087, 46.092484>,  <29.092768, 28.727531, 46.318729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.894251, 28.464087, 46.092484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259104, 0.509455, -0.820561,
		0.828589, -0.553791, -0.082189,
		-0.496291, -0.658612, -0.565619,
		28.745363, 28.266502, 45.922798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890648, 28.706541, 46.500580>,  <29.092768, 28.727531, 46.318729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890648, 28.706541, 46.500580> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.946554, 29.060921, 46.677467>,  <29.980099, 29.273548, 46.783600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.946554, 29.060921, 46.677467>,  <29.890648, 28.706541, 46.500580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946554, 29.060921, 46.677467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057868, -0.438531, 0.896851,
		0.988492, -0.150939, -0.010023,
		0.139765, 0.885951, 0.442219,
		29.988483, 29.326706, 46.810135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.229252, 28.479805, 47.103966>,  <29.890648, 28.706541, 46.500580>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.229252, 28.479805, 47.103966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.101624, 28.853413, 47.168217>,  <30.025047, 29.077578, 47.206768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.101624, 28.853413, 47.168217>,  <30.229252, 28.479805, 47.103966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101624, 28.853413, 47.168217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205127, -0.233529, 0.950466,
		0.925266, 0.270315, 0.266105,
		-0.319069, 0.934020, 0.160628,
		30.005903, 29.133619, 47.216404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551327, 28.688774, 47.704849>,  <30.229252, 28.479805, 47.103966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551327, 28.688774, 47.704849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.227371, 28.922394, 47.683064>,  <30.032997, 29.062567, 47.669994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.227371, 28.922394, 47.683064>,  <30.551327, 28.688774, 47.704849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227371, 28.922394, 47.683064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166162, -0.139385, 0.976198,
		0.562558, 0.799660, 0.209933,
		-0.809888, 0.584051, -0.054461,
		29.984406, 29.097609, 47.666725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633287, 29.331587, 48.131557>,  <30.551327, 28.688774, 47.704849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633287, 29.331587, 48.131557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.244858, 29.240654, 48.102341>,  <30.011801, 29.186094, 48.084812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.244858, 29.240654, 48.102341>,  <30.633287, 29.331587, 48.131557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244858, 29.240654, 48.102341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039831, -0.147385, 0.988277,
		-0.235433, 0.962599, 0.134067,
		-0.971074, -0.227333, -0.073040,
		29.953535, 29.172455, 48.080429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385637, 29.661018, 48.714993>,  <30.633287, 29.331587, 48.131557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385637, 29.661018, 48.714993> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.079334, 29.426590, 48.609062>,  <29.895552, 29.285933, 48.545502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.079334, 29.426590, 48.609062>,  <30.385637, 29.661018, 48.714993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079334, 29.426590, 48.609062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179486, -0.200673, 0.963076,
		-0.617576, 0.785016, 0.048475,
		-0.765757, -0.586072, -0.264830,
		29.849607, 29.250769, 48.529613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.783022, 29.834417, 49.154423>,  <30.385637, 29.661018, 48.714993>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.783022, 29.834417, 49.154423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.726650, 29.457750, 49.032173>,  <29.692827, 29.231750, 48.958824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.726650, 29.457750, 49.032173>,  <29.783022, 29.834417, 49.154423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726650, 29.457750, 49.032173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166983, -0.281673, 0.944869,
		-0.975836, 0.184193, -0.117546,
		-0.140928, -0.941665, -0.305624,
		29.684372, 29.175251, 48.940487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313128, 29.565861, 49.647926>,  <29.783022, 29.834417, 49.154423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313128, 29.565861, 49.647926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.443695, 29.229574, 49.475117>,  <29.522036, 29.027802, 49.371429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.443695, 29.229574, 49.475117>,  <29.313128, 29.565861, 49.647926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443695, 29.229574, 49.475117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181461, -0.504294, 0.844251,
		-0.927643, -0.197185, -0.317169,
		0.326420, -0.840717, -0.432024,
		29.541620, 28.977360, 49.345509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789873, 29.070444, 49.727352>,  <29.313128, 29.565861, 49.647926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789873, 29.070444, 49.727352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.137320, 28.877197, 49.683342>,  <29.345787, 28.761250, 49.656937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.137320, 28.877197, 49.683342>,  <28.789873, 29.070444, 49.727352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137320, 28.877197, 49.683342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122535, -0.424601, 0.897050,
		-0.480100, -0.765708, -0.428014,
		0.868614, -0.483121, -0.110025,
		29.397903, 28.732262, 49.650333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.636665, 28.428690, 50.004177>,  <28.789873, 29.070444, 49.727352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.636665, 28.428690, 50.004177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.036377, 28.442474, 49.997810>,  <29.276203, 28.450745, 49.993992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.036377, 28.442474, 49.997810>,  <28.636665, 28.428690, 50.004177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.036377, 28.442474, 49.997810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030918, -0.495742, 0.867919,
		0.022018, -0.867786, -0.496450,
		0.999279, 0.034459, -0.015915,
		29.336161, 28.452812, 49.993034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.360790, 33.933605, 35.881874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712597, 33.863384, 36.058796>,  <34.923679, 33.821251, 36.164948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712597, 33.863384, 36.058796>,  <34.360790, 33.933605, 35.881874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712597, 33.863384, 36.058796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463669, -0.107052, 0.879517,
		-0.107052, -0.978632, -0.175553,
		-0.879517, 0.175553, -0.442301,
		34.976452, 33.810719, 36.191486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246933, 33.329124, 36.355270>,  <34.360790, 33.933605, 35.881874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246933, 33.329124, 36.355270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565937, 33.547054, 36.458916>,  <34.757339, 33.677811, 36.521103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565937, 33.547054, 36.458916>,  <34.246933, 33.329124, 36.355270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565937, 33.547054, 36.458916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266815, -0.066689, 0.961438,
		0.541096, -0.835893, 0.092183,
		0.797512, 0.544826, 0.259114,
		34.805191, 33.710503, 36.536652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506512, 33.002949, 36.923714>,  <34.246933, 33.329124, 36.355270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506512, 33.002949, 36.923714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641857, 33.379356, 36.924301>,  <34.723064, 33.605202, 36.924656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641857, 33.379356, 36.924301>,  <34.506512, 33.002949, 36.923714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641857, 33.379356, 36.924301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326348, 0.115877, 0.938120,
		0.882615, -0.317904, 0.346307,
		0.338361, 0.941015, 0.001473,
		34.743366, 33.661659, 36.924744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811337, 33.068230, 37.573864>,  <34.506512, 33.002949, 36.923714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811337, 33.068230, 37.573864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756317, 33.438286, 37.432327>,  <34.723305, 33.660320, 37.347404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756317, 33.438286, 37.432327>,  <34.811337, 33.068230, 37.573864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756317, 33.438286, 37.432327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418940, 0.269370, 0.867138,
		0.897535, 0.267513, 0.350525,
		-0.137550, 0.925136, -0.353841,
		34.715054, 33.715828, 37.326176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041008, 33.423084, 38.054474>,  <34.811337, 33.068230, 37.573864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041008, 33.423084, 38.054474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826721, 33.708443, 37.873775>,  <34.698151, 33.879658, 37.765358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826721, 33.708443, 37.873775>,  <35.041008, 33.423084, 38.054474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826721, 33.708443, 37.873775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586684, 0.070305, 0.806758,
		0.607301, 0.697222, 0.380877,
		-0.535713, 0.713399, -0.451745,
		34.666008, 33.922462, 37.738251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930397, 33.831470, 38.565544>,  <35.041008, 33.423084, 38.054474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930397, 33.831470, 38.565544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638016, 33.916721, 38.306225>,  <34.462585, 33.967873, 38.150635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638016, 33.916721, 38.306225>,  <34.930397, 33.831470, 38.565544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638016, 33.916721, 38.306225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625823, 0.169472, 0.761331,
		0.272131, 0.962213, 0.009507,
		-0.730952, 0.213132, -0.648293,
		34.418732, 33.980659, 38.111736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731976, 34.447727, 38.767269>,  <34.930397, 33.831470, 38.565544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731976, 34.447727, 38.767269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446117, 34.301609, 38.528660>,  <34.274601, 34.213940, 38.385494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446117, 34.301609, 38.528660>,  <34.731976, 34.447727, 38.767269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446117, 34.301609, 38.528660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686694, 0.204045, 0.697722,
		-0.133155, 0.908255, -0.396665,
		-0.714647, -0.365293, -0.596524,
		34.231724, 34.192020, 38.349701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191372, 34.947269, 38.755314>,  <34.731976, 34.447727, 38.767269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191372, 34.947269, 38.755314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015385, 34.596962, 38.675850>,  <33.909794, 34.386780, 38.628174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.015385, 34.596962, 38.675850>,  <34.191372, 34.947269, 38.755314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015385, 34.596962, 38.675850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628966, 0.142619, 0.764240,
		-0.640963, 0.461186, -0.613574,
		-0.439964, -0.875767, -0.198657,
		33.883396, 34.334232, 38.616253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505470, 35.062263, 38.957573>,  <34.191372, 34.947269, 38.755314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505470, 35.062263, 38.957573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523098, 34.664196, 38.922497>,  <33.533676, 34.425354, 38.901451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523098, 34.664196, 38.922497>,  <33.505470, 35.062263, 38.957573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523098, 34.664196, 38.922497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757516, -0.090515, 0.646511,
		-0.651327, 0.037934, -0.757848,
		0.044071, -0.995172, -0.087691,
		33.536320, 34.365643, 38.896191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795944, 34.809135, 38.881287>,  <33.505470, 35.062263, 38.957573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795944, 34.809135, 38.881287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987949, 34.483620, 39.012337>,  <33.103153, 34.288311, 39.090965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987949, 34.483620, 39.012337>,  <32.795944, 34.809135, 38.881287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987949, 34.483620, 39.012337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653302, -0.082360, 0.752604,
		-0.585479, -0.575294, -0.571185,
		0.480012, -0.813790, 0.327620,
		33.131954, 34.239483, 39.110622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297546, 34.301773, 38.947357>,  <32.795944, 34.809135, 38.881287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297546, 34.301773, 38.947357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588779, 34.192154, 39.198685>,  <32.763519, 34.126381, 39.349483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588779, 34.192154, 39.198685>,  <32.297546, 34.301773, 38.947357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588779, 34.192154, 39.198685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681624, -0.192270, 0.705990,
		-0.072670, -0.942300, -0.326789,
		0.728085, -0.274051, 0.628321,
		32.807205, 34.109940, 39.387180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072708, 33.800278, 39.466084>,  <32.297546, 34.301773, 38.947357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072708, 33.800278, 39.466084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413372, 33.873596, 39.662483>,  <32.617771, 33.917587, 39.780323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413372, 33.873596, 39.662483>,  <32.072708, 33.800278, 39.466084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413372, 33.873596, 39.662483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397398, -0.384936, 0.833006,
		0.341694, -0.904558, -0.254990,
		0.851657, 0.183301, 0.491000,
		32.668869, 33.928585, 39.809784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669085, 33.249313, 39.139812>,  <32.072708, 33.800278, 39.466084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669085, 33.249313, 39.139812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291016, 33.266460, 39.010315>,  <31.064175, 33.276749, 38.932617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291016, 33.266460, 39.010315>,  <31.669085, 33.249313, 39.139812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291016, 33.266460, 39.010315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318656, 0.337959, -0.885574,
		0.071449, -0.940184, -0.333091,
		-0.945173, 0.042868, -0.323742,
		31.007463, 33.279320, 38.913193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710688, 33.093361, 38.504353>,  <31.669085, 33.249313, 39.139812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710688, 33.093361, 38.504353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344757, 33.254116, 38.520241>,  <31.125198, 33.350571, 38.529774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.344757, 33.254116, 38.520241>,  <31.710688, 33.093361, 38.504353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344757, 33.254116, 38.520241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049557, 0.209320, -0.976591,
		-0.400793, -0.891444, -0.211408,
		-0.914827, 0.401888, 0.039716,
		31.070309, 33.374683, 38.532154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378990, 32.775635, 38.001266>,  <31.710688, 33.093361, 38.504353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378990, 32.775635, 38.001266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155989, 33.098915, 38.077156>,  <31.022188, 33.292885, 38.122688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155989, 33.098915, 38.077156>,  <31.378990, 32.775635, 38.001266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155989, 33.098915, 38.077156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042260, 0.255866, -0.965788,
		-0.829098, -0.530413, -0.176801,
		-0.557504, 0.808204, 0.189723,
		30.988737, 33.341377, 38.134071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849867, 32.662579, 37.574127>,  <31.378990, 32.775635, 38.001266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849867, 32.662579, 37.574127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906858, 33.049789, 37.656715>,  <30.941053, 33.282116, 37.706268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906858, 33.049789, 37.656715>,  <30.849867, 32.662579, 37.574127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906858, 33.049789, 37.656715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074727, 0.197480, -0.977454,
		-0.986973, 0.154695, -0.044201,
		0.142479, 0.968024, 0.206468,
		30.949602, 33.340199, 37.718655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551451, 32.926632, 37.046158>,  <30.849867, 32.662579, 37.574127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551451, 32.926632, 37.046158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754192, 33.236916, 37.196556>,  <30.875837, 33.423088, 37.286793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754192, 33.236916, 37.196556>,  <30.551451, 32.926632, 37.046158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754192, 33.236916, 37.196556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230779, 0.298145, -0.926202,
		-0.830567, 0.556219, -0.027903,
		0.506852, 0.775713, 0.375993,
		30.906248, 33.469631, 37.309353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282633, 33.489922, 36.703930>,  <30.551451, 32.926632, 37.046158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282633, 33.489922, 36.703930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647930, 33.578674, 36.840607>,  <30.867107, 33.631927, 36.922615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647930, 33.578674, 36.840607>,  <30.282633, 33.489922, 36.703930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647930, 33.578674, 36.840607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297037, 0.211411, -0.931168,
		-0.278850, 0.951878, 0.127162,
		0.913242, 0.221885, 0.341695,
		30.921904, 33.645241, 36.943115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.464651, 33.893055, 36.218117>,  <30.282633, 33.489922, 36.703930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.464651, 33.893055, 36.218117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808548, 33.804558, 36.402245>,  <31.014887, 33.751461, 36.512722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.808548, 33.804558, 36.402245>,  <30.464651, 33.893055, 36.218117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.808548, 33.804558, 36.402245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499059, 0.172348, -0.849257,
		0.108558, 0.959868, 0.258588,
		0.859742, -0.221244, 0.460321,
		31.066471, 33.738186, 36.540340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004700, 34.472572, 36.068321>,  <30.464651, 33.893055, 36.218117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004700, 34.472572, 36.068321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219372, 34.148361, 36.162151>,  <31.348175, 33.953835, 36.218449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219372, 34.148361, 36.162151>,  <31.004700, 34.472572, 36.068321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219372, 34.148361, 36.162151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628010, 0.198022, -0.752590,
		0.563541, 0.551215, 0.615291,
		0.536680, -0.810524, 0.234575,
		31.380375, 33.905205, 36.232525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665800, 34.732159, 35.975658>,  <31.004700, 34.472572, 36.068321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665800, 34.732159, 35.975658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715248, 34.335648, 35.993900>,  <31.744917, 34.097740, 36.004845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.715248, 34.335648, 35.993900>,  <31.665800, 34.732159, 35.975658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.715248, 34.335648, 35.993900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800587, 0.072475, -0.594818,
		0.586327, 0.110040, 0.802566,
		0.123620, -0.991281, 0.045602,
		31.752335, 34.038261, 36.007580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431564, 34.570663, 36.141724>,  <31.665800, 34.732159, 35.975658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431564, 34.570663, 36.141724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258083, 34.264778, 35.951096>,  <32.153996, 34.081249, 35.836720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258083, 34.264778, 35.951096>,  <32.431564, 34.570663, 36.141724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258083, 34.264778, 35.951096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730033, 0.011803, -0.683310,
		0.528158, -0.644268, 0.553144,
		-0.433706, -0.764709, -0.476570,
		32.127972, 34.035366, 35.808125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849571, 34.070606, 35.955479>,  <32.431564, 34.570663, 36.141724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849571, 34.070606, 35.955479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582123, 33.956161, 35.680935>,  <32.421654, 33.887493, 35.516209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582123, 33.956161, 35.680935>,  <32.849571, 34.070606, 35.955479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582123, 33.956161, 35.680935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730755, -0.081974, -0.677700,
		0.137637, -0.954682, 0.263890,
		-0.668620, -0.286115, -0.686356,
		32.381538, 33.870327, 35.475029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186550, 33.612194, 35.456829>,  <32.849571, 34.070606, 35.955479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186550, 33.612194, 35.456829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864933, 33.742771, 35.258053>,  <32.671963, 33.821117, 35.138786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864933, 33.742771, 35.258053>,  <33.186550, 33.612194, 35.456829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864933, 33.742771, 35.258053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468271, -0.167360, -0.867590,
		-0.366388, -0.930282, -0.018299,
		-0.804041, 0.326443, -0.496943,
		32.623722, 33.840702, 35.108971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804558, 33.302006, 35.105610>,  <33.186550, 33.612194, 35.456829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804558, 33.302006, 35.105610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952709, 33.445366, 34.762829>,  <34.041599, 33.531380, 34.557159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952709, 33.445366, 34.762829>,  <33.804558, 33.302006, 35.105610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952709, 33.445366, 34.762829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070418, -0.909077, -0.410633,
		-0.926208, 0.212435, -0.311466,
		0.370379, 0.358399, -0.856954,
		34.063824, 33.552887, 34.505741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369526, 33.175892, 34.650448>,  <33.804558, 33.302006, 35.105610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369526, 33.175892, 34.650448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739376, 33.162891, 34.498650>,  <33.961285, 33.155090, 34.407570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739376, 33.162891, 34.498650>,  <33.369526, 33.175892, 34.650448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739376, 33.162891, 34.498650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187840, -0.905675, -0.380090,
		-0.331348, 0.422724, -0.843512,
		0.924622, -0.032503, -0.379498,
		34.016762, 33.153141, 34.384800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228596, 32.850147, 34.091908>,  <33.369526, 33.175892, 34.650448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228596, 32.850147, 34.091908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620998, 32.809467, 34.157982>,  <33.856438, 32.785057, 34.197628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620998, 32.809467, 34.157982>,  <33.228596, 32.850147, 34.091908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620998, 32.809467, 34.157982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049174, -0.954107, -0.295400,
		0.187653, 0.281665, -0.940984,
		0.981004, -0.101704, 0.165190,
		33.915298, 32.778957, 34.207539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645905, 32.706161, 33.444176>,  <33.228596, 32.850147, 34.091908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645905, 32.706161, 33.444176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708401, 32.559357, 33.810978>,  <33.745899, 32.471275, 34.031059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708401, 32.559357, 33.810978>,  <33.645905, 32.706161, 33.444176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708401, 32.559357, 33.810978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277221, -0.907381, -0.315925,
		0.948017, -0.204851, -0.243514,
		0.156243, -0.367010, 0.917002,
		33.755272, 32.449253, 34.086079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860004, 31.945427, 33.516178>,  <33.645905, 32.706161, 33.444176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860004, 31.945427, 33.516178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193695, 31.996807, 33.730682>,  <34.393909, 32.027634, 33.859386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193695, 31.996807, 33.730682>,  <33.860004, 31.945427, 33.516178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193695, 31.996807, 33.730682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264982, -0.759469, 0.594130,
		0.483589, -0.637735, -0.599529,
		0.834222, 0.128451, 0.536260,
		34.443962, 32.035343, 33.891560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035515, 31.328035, 33.794968>,  <33.860004, 31.945427, 33.516178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035515, 31.328035, 33.794968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271130, 31.552031, 34.028019>,  <34.412498, 31.686428, 34.167850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271130, 31.552031, 34.028019>,  <34.035515, 31.328035, 33.794968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271130, 31.552031, 34.028019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181201, -0.611089, 0.770543,
		0.787532, -0.559447, -0.258481,
		0.589033, 0.559990, 0.582625,
		34.447838, 31.720028, 34.202805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497219, 30.908953, 34.213913>,  <34.035515, 31.328035, 33.794968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497219, 30.908953, 34.213913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431801, 31.249416, 34.413425>,  <34.392551, 31.453695, 34.533131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431801, 31.249416, 34.413425>,  <34.497219, 30.908953, 34.213913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431801, 31.249416, 34.413425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238628, -0.524703, 0.817155,
		0.957241, 0.014620, 0.288924,
		-0.163546, 0.851159, 0.498779,
		34.382736, 31.504765, 34.563061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680740, 30.767778, 34.889912>,  <34.497219, 30.908953, 34.213913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680740, 30.767778, 34.889912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458439, 31.098627, 34.923397>,  <34.325058, 31.297136, 34.943489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458439, 31.098627, 34.923397>,  <34.680740, 30.767778, 34.889912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458439, 31.098627, 34.923397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398245, -0.353266, 0.846525,
		0.729754, 0.437118, 0.525726,
		-0.555752, 0.827122, 0.083717,
		34.291714, 31.346764, 34.948513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728359, 30.986055, 35.533741>,  <34.680740, 30.767778, 34.889912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728359, 30.986055, 35.533741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393719, 31.174959, 35.422703>,  <34.192932, 31.288301, 35.356079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.393719, 31.174959, 35.422703>,  <34.728359, 30.986055, 35.533741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.393719, 31.174959, 35.422703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437325, -0.270600, 0.857626,
		0.329906, 0.838895, 0.432917,
		-0.836605, 0.472262, -0.277598,
		34.142738, 31.316637, 35.339424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452896, 31.389891, 36.162457>,  <34.728359, 30.986055, 35.533741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452896, 31.389891, 36.162457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132355, 31.374853, 35.923653>,  <33.940029, 31.365829, 35.780373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132355, 31.374853, 35.923653>,  <34.452896, 31.389891, 36.162457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132355, 31.374853, 35.923653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542644, -0.374294, 0.751958,
		-0.251725, 0.926547, 0.279542,
		-0.801356, -0.037595, -0.597005,
		33.891949, 31.363575, 35.744553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913891, 31.747993, 36.546070>,  <34.452896, 31.389891, 36.162457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913891, 31.747993, 36.546070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757618, 31.496708, 36.276936>,  <33.663853, 31.345938, 36.115456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757618, 31.496708, 36.276936>,  <33.913891, 31.747993, 36.546070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757618, 31.496708, 36.276936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607236, -0.373458, 0.701281,
		-0.691830, 0.682553, -0.235568,
		-0.390686, -0.628213, -0.672840,
		33.640411, 31.308245, 36.075085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193195, 31.862659, 36.681755>,  <33.913891, 31.747993, 36.546070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193195, 31.862659, 36.681755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236347, 31.504124, 36.509739>,  <33.262238, 31.289001, 36.406528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236347, 31.504124, 36.509739>,  <33.193195, 31.862659, 36.681755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236347, 31.504124, 36.509739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630219, -0.396202, 0.667719,
		-0.768887, 0.198989, -0.607632,
		0.107876, -0.896341, -0.430041,
		33.268711, 31.235222, 36.380726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602970, 31.614254, 36.726173>,  <33.193195, 31.862659, 36.681755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602970, 31.614254, 36.726173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812740, 31.281239, 36.654781>,  <32.938602, 31.081430, 36.611946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812740, 31.281239, 36.654781>,  <32.602970, 31.614254, 36.726173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812740, 31.281239, 36.654781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544226, -0.488967, 0.681710,
		-0.654823, -0.260372, -0.709517,
		0.524428, -0.832537, -0.178485,
		32.970070, 31.031477, 36.601234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114475, 30.979116, 36.699394>,  <32.602970, 31.614254, 36.726173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114475, 30.979116, 36.699394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479088, 30.822887, 36.750858>,  <32.697857, 30.729149, 36.781738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479088, 30.822887, 36.750858>,  <32.114475, 30.979116, 36.699394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479088, 30.822887, 36.750858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370783, -0.645338, 0.667876,
		-0.177825, -0.656499, -0.733067,
		0.911536, -0.390574, 0.128661,
		32.752548, 30.705715, 36.789455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967916, 30.286289, 36.752251>,  <32.114475, 30.979116, 36.699394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967916, 30.286289, 36.752251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318523, 30.362595, 36.929035>,  <32.528889, 30.408379, 37.035107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318523, 30.362595, 36.929035>,  <31.967916, 30.286289, 36.752251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318523, 30.362595, 36.929035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244900, -0.613702, 0.750596,
		0.414418, -0.766145, -0.491202,
		0.876517, 0.190765, 0.441958,
		32.581478, 30.419825, 37.061623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223175, 29.598278, 36.964558>,  <31.967916, 30.286289, 36.752251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223175, 29.598278, 36.964558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414677, 29.877893, 37.177025>,  <32.529575, 30.045662, 37.304504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414677, 29.877893, 37.177025>,  <32.223175, 29.598278, 36.964558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414677, 29.877893, 37.177025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138119, -0.537509, 0.831870,
		0.867018, -0.471624, -0.160783,
		0.478752, 0.699039, 0.531170,
		32.558304, 30.087605, 37.336376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608051, 29.274954, 37.393898>,  <32.223175, 29.598278, 36.964558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608051, 29.274954, 37.393898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629421, 29.632845, 37.571262>,  <32.642242, 29.847580, 37.677681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629421, 29.632845, 37.571262>,  <32.608051, 29.274954, 37.393898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629421, 29.632845, 37.571262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152150, -0.431563, 0.889159,
		0.986913, -0.114964, 0.113078,
		0.053421, 0.894727, 0.443407,
		32.645447, 29.901262, 37.704285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111526, 29.169220, 37.910858>,  <32.608051, 29.274954, 37.393898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111526, 29.169220, 37.910858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926304, 29.493032, 38.055218>,  <32.815170, 29.687319, 38.141834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.926304, 29.493032, 38.055218>,  <33.111526, 29.169220, 37.910858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926304, 29.493032, 38.055218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263053, -0.514352, 0.816238,
		0.846395, 0.283027, 0.451121,
		-0.463053, 0.809529, 0.360894,
		32.787388, 29.735891, 38.163486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311192, 29.155159, 38.671932>,  <33.111526, 29.169220, 37.910858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311192, 29.155159, 38.671932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985340, 29.377481, 38.605652>,  <32.789829, 29.510874, 38.565884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985340, 29.377481, 38.605652>,  <33.311192, 29.155159, 38.671932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985340, 29.377481, 38.605652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360034, -0.260635, 0.895793,
		0.454698, 0.789399, 0.412430,
		-0.814632, 0.555805, -0.165700,
		32.740952, 29.544224, 38.555943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181267, 29.495558, 39.337708>,  <33.311192, 29.155159, 38.671932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181267, 29.495558, 39.337708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841282, 29.500454, 39.127026>,  <32.637291, 29.503391, 39.000614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.841282, 29.500454, 39.127026>,  <33.181267, 29.495558, 39.337708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841282, 29.500454, 39.127026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475547, -0.448138, 0.756986,
		-0.226771, 0.893880, 0.386720,
		-0.849959, 0.012241, -0.526707,
		32.586296, 29.504126, 38.969013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812115, 29.840511, 39.760136>,  <33.181267, 29.495558, 39.337708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812115, 29.840511, 39.760136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578346, 29.611212, 39.530411>,  <32.438084, 29.473633, 39.392574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578346, 29.611212, 39.530411>,  <32.812115, 29.840511, 39.760136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578346, 29.611212, 39.530411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484222, -0.321567, 0.813710,
		-0.651138, 0.753646, -0.089648,
		-0.584422, -0.573247, -0.574316,
		32.403019, 29.439238, 39.358116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.132835, 29.950506, 40.075539>,  <32.812115, 29.840511, 39.760136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.132835, 29.950506, 40.075539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062622, 29.622894, 39.857040>,  <32.020493, 29.426327, 39.725941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062622, 29.622894, 39.857040>,  <32.132835, 29.950506, 40.075539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062622, 29.622894, 39.857040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540789, -0.383426, 0.748687,
		-0.822639, 0.426820, -0.375618,
		-0.175533, -0.819029, -0.546241,
		32.009964, 29.377186, 39.693169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369829, 29.810234, 40.037987>,  <32.132835, 29.950506, 40.075539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369829, 29.810234, 40.037987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546249, 29.461584, 39.952435>,  <31.652102, 29.252394, 39.901104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546249, 29.461584, 39.952435>,  <31.369829, 29.810234, 40.037987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546249, 29.461584, 39.952435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402627, -0.405147, 0.820821,
		-0.802101, -0.275910, -0.529630,
		0.441051, -0.871625, -0.213880,
		31.678564, 29.200096, 39.888271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824867, 29.356035, 40.098171>,  <31.369829, 29.810234, 40.037987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824867, 29.356035, 40.098171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164890, 29.148460, 40.134186>,  <31.368904, 29.023916, 40.155792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.164890, 29.148460, 40.134186>,  <30.824867, 29.356035, 40.098171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164890, 29.148460, 40.134186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361749, -0.451017, 0.815918,
		-0.382801, -0.726148, -0.571115,
		0.850060, -0.518935, 0.090034,
		31.419909, 28.992779, 40.161194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565672, 28.766876, 40.497696>,  <30.824867, 29.356035, 40.098171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565672, 28.766876, 40.497696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961029, 28.707310, 40.485680>,  <31.198244, 28.671570, 40.478470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961029, 28.707310, 40.485680>,  <30.565672, 28.766876, 40.497696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961029, 28.707310, 40.485680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072953, -0.638719, 0.765974,
		-0.133250, -0.754892, -0.642170,
		0.988394, -0.148915, -0.030038,
		31.257547, 28.662636, 40.476669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710712, 28.023026, 40.529591>,  <30.565672, 28.766876, 40.497696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710712, 28.023026, 40.529591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027142, 28.228174, 40.662956>,  <31.216999, 28.351263, 40.742977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027142, 28.228174, 40.662956>,  <30.710712, 28.023026, 40.529591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027142, 28.228174, 40.662956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088194, -0.634973, 0.767484,
		0.605333, -0.577729, -0.547541,
		0.791071, 0.512873, 0.333418,
		31.264463, 28.382036, 40.762981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156603, 27.511570, 40.600330>,  <30.710712, 28.023026, 40.529591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156603, 27.511570, 40.600330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287621, 27.804630, 40.838974>,  <31.366230, 27.980467, 40.982159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.287621, 27.804630, 40.838974>,  <31.156603, 27.511570, 40.600330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287621, 27.804630, 40.838974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062610, -0.613221, 0.787426,
		0.942760, -0.295269, -0.154985,
		0.327542, 0.732650, 0.596606,
		31.385883, 28.024426, 41.017956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766813, 27.241705, 41.028442>,  <31.156603, 27.511570, 40.600330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766813, 27.241705, 41.028442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602217, 27.557409, 41.210758>,  <31.503458, 27.746832, 41.320148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602217, 27.557409, 41.210758>,  <31.766813, 27.241705, 41.028442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602217, 27.557409, 41.210758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063559, -0.523725, 0.849513,
		0.909195, 0.320598, 0.265672,
		-0.411491, 0.789259, 0.455791,
		31.478769, 27.794188, 41.347496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222458, 27.363661, 41.671051>,  <31.766813, 27.241705, 41.028442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222458, 27.363661, 41.671051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873562, 27.542921, 41.749390>,  <31.664223, 27.650476, 41.796394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.873562, 27.542921, 41.749390>,  <32.222458, 27.363661, 41.671051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873562, 27.542921, 41.749390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030306, -0.350146, 0.936204,
		0.488133, 0.822533, 0.291831,
		-0.872243, 0.448149, 0.195846,
		31.611889, 27.677366, 41.808144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.250107, 27.590258, 42.260757>,  <32.222458, 27.363661, 41.671051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.250107, 27.590258, 42.260757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851744, 27.613789, 42.233288>,  <31.612726, 27.627907, 42.216805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.851744, 27.613789, 42.233288>,  <32.250107, 27.590258, 42.260757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.851744, 27.613789, 42.233288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085450, -0.363821, 0.927541,
		0.029580, 0.929610, 0.367357,
		-0.995903, 0.058827, -0.068673,
		31.552973, 27.631437, 42.212685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794395, 27.904053, 42.818352>,  <32.250107, 27.590258, 42.260757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794395, 27.904053, 42.818352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106441, 27.682856, 42.935398>,  <33.293667, 27.550138, 43.005627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106441, 27.682856, 42.935398>,  <32.794395, 27.904053, 42.818352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106441, 27.682856, 42.935398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444715, 0.161153, -0.881055,
		0.440060, 0.817453, 0.371641,
		0.780113, -0.552991, 0.292617,
		33.340477, 27.516958, 43.023182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419582, 28.291893, 42.647110>,  <32.794395, 27.904053, 42.818352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419582, 28.291893, 42.647110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543797, 27.912840, 42.676929>,  <33.618324, 27.685408, 42.694820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543797, 27.912840, 42.676929>,  <33.419582, 28.291893, 42.647110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543797, 27.912840, 42.676929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552906, 0.116275, -0.825091,
		0.773217, 0.297435, 0.560060,
		0.310532, -0.947635, 0.074548,
		33.636955, 27.628550, 42.699295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179874, 28.324242, 42.671753>,  <33.419582, 28.291893, 42.647110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179874, 28.324242, 42.671753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057373, 27.963642, 42.549435>,  <33.983871, 27.747282, 42.476044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057373, 27.963642, 42.549435>,  <34.179874, 28.324242, 42.671753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057373, 27.963642, 42.549435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589622, 0.072564, -0.804413,
		0.747366, -0.426659, 0.509320,
		-0.306252, -0.901497, -0.305799,
		33.965496, 27.693193, 42.457695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826935, 27.968941, 42.580334>,  <34.179874, 28.324242, 42.671753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826935, 27.968941, 42.580334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545872, 27.763512, 42.383350>,  <34.377235, 27.640255, 42.265160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545872, 27.763512, 42.383350>,  <34.826935, 27.968941, 42.580334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545872, 27.763512, 42.383350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504170, 0.129012, -0.853913,
		0.502078, -0.848293, 0.168275,
		-0.702659, -0.513571, -0.492459,
		34.335075, 27.609440, 42.235611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147476, 27.460697, 42.229996>,  <34.826935, 27.968941, 42.580334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147476, 27.460697, 42.229996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796852, 27.506226, 42.042942>,  <34.586479, 27.533543, 41.930710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796852, 27.506226, 42.042942>,  <35.147476, 27.460697, 42.229996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796852, 27.506226, 42.042942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480919, 0.169040, -0.860315,
		-0.018874, -0.979015, -0.202914,
		-0.876562, 0.113823, -0.467637,
		34.533882, 27.540373, 41.902653>
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
