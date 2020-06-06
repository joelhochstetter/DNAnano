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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.227284, 14.796459, 14.817067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.985497, 15.100009, 14.914002>,  <3.840425, 15.282139, 14.972163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.985497, 15.100009, 14.914002>,  <4.227284, 14.796459, 14.817067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.985497, 15.100009, 14.914002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792315, 0.604321, 0.083871,
		-0.082802, 0.242706, -0.966560,
		-0.604468, 0.758875, 0.242338,
		3.804156, 15.327671, 14.986704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.306043, 14.120063, 14.595380>,  <4.227284, 14.796459, 14.817067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.306043, 14.120063, 14.595380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.634085, 13.983937, 14.779387>,  <4.830910, 13.902262, 14.889791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.634085, 13.983937, 14.779387>,  <4.306043, 14.120063, 14.595380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.634085, 13.983937, 14.779387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216144, -0.560129, -0.799711,
		0.529821, 0.755276, -0.385808,
		0.820105, -0.340313, 0.460016,
		4.880116, 13.881844, 14.917392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.732722, 14.184413, 14.115638>,  <4.306043, 14.120063, 14.595380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.732722, 14.184413, 14.115638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.837956, 13.885047, 14.359166>,  <4.901096, 13.705427, 14.505283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.837956, 13.885047, 14.359166>,  <4.732722, 14.184413, 14.115638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.837956, 13.885047, 14.359166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343247, -0.517151, -0.784051,
		0.901648, 0.415247, 0.120837,
		0.263084, -0.748415, 0.608820,
		4.916881, 13.660522, 14.541812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.360131, 14.061658, 13.893763>,  <4.732722, 14.184413, 14.115638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.360131, 14.061658, 13.893763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.691813, 14.156102, 14.096414>,  <5.890822, 14.212769, 14.218004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.691813, 14.156102, 14.096414>,  <5.360131, 14.061658, 13.893763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.691813, 14.156102, 14.096414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555980, -0.441660, -0.704147,
		0.057502, 0.865557, -0.497499,
		0.829204, 0.236110, 0.506629,
		5.940574, 14.226935, 14.248403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.889181, 14.317185, 13.456758>,  <5.360131, 14.061658, 13.893763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.889181, 14.317185, 13.456758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.063113, 14.140448, 13.770623>,  <6.167473, 14.034405, 13.958942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.063113, 14.140448, 13.770623>,  <5.889181, 14.317185, 13.456758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.063113, 14.140448, 13.770623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473864, -0.628685, -0.616610,
		0.765751, 0.639945, -0.063998,
		0.434831, -0.441844, 0.784663,
		6.193563, 14.007895, 14.006022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.590607, 14.228538, 13.234637>,  <5.889181, 14.317185, 13.456758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.590607, 14.228538, 13.234637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.507121, 13.972845, 13.530697>,  <6.457029, 13.819429, 13.708333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.507121, 13.972845, 13.530697>,  <6.590607, 14.228538, 13.234637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.507121, 13.972845, 13.530697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363475, -0.753308, -0.548099,
		0.907923, 0.154630, 0.389571,
		-0.208715, -0.639231, 0.740150,
		6.444506, 13.781075, 13.752742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.100594, 13.688109, 13.100846>,  <6.590607, 14.228538, 13.234637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.100594, 13.688109, 13.100846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.818958, 13.537515, 13.341684>,  <6.649977, 13.447158, 13.486187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.818958, 13.537515, 13.341684>,  <7.100594, 13.688109, 13.100846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.818958, 13.537515, 13.341684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162420, -0.910791, -0.379578,
		0.691288, -0.169464, 0.702426,
		-0.704088, -0.376486, 0.602095,
		6.607732, 13.424569, 13.522313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.395775, 13.026236, 13.143143>,  <7.100594, 13.688109, 13.100846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.395775, 13.026236, 13.143143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.029639, 12.974673, 13.295740>,  <6.809958, 12.943736, 13.387299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.029639, 12.974673, 13.295740>,  <7.395775, 13.026236, 13.143143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.029639, 12.974673, 13.295740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030573, -0.922396, -0.385032,
		0.401522, -0.364099, 0.840364,
		-0.915339, -0.128906, 0.381494,
		6.755037, 12.936002, 13.410189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.382045, 12.358509, 13.579647>,  <7.395775, 13.026236, 13.143143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.382045, 12.358509, 13.579647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.011052, 12.435060, 13.451178>,  <6.788456, 12.480989, 13.374096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.011052, 12.435060, 13.451178>,  <7.382045, 12.358509, 13.579647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.011052, 12.435060, 13.451178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111363, -0.961477, -0.251317,
		-0.356896, -0.197326, 0.913065,
		-0.927483, 0.191375, -0.321172,
		6.732807, 12.492472, 13.354826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.048259, 11.871781, 13.963964>,  <7.382045, 12.358509, 13.579647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.048259, 11.871781, 13.963964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.840802, 11.968345, 13.635883>,  <6.716327, 12.026283, 13.439034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.840802, 11.968345, 13.635883>,  <7.048259, 11.871781, 13.963964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.840802, 11.968345, 13.635883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070732, -0.968137, -0.240225,
		-0.852060, -0.066576, 0.519193,
		-0.518643, 0.241409, -0.820201,
		6.685209, 12.040768, 13.389823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.508670, 11.427442, 13.906881>,  <7.048259, 11.871781, 13.963964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.508670, 11.427442, 13.906881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.518016, 11.563650, 13.530903>,  <6.523623, 11.645375, 13.305316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.518016, 11.563650, 13.530903>,  <6.508670, 11.427442, 13.906881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.518016, 11.563650, 13.530903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074222, -0.938199, -0.338043,
		-0.996968, -0.061867, -0.047195,
		0.023365, 0.340521, -0.939947,
		6.525025, 11.665807, 13.248919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.047882, 10.940165, 13.569145>,  <6.508670, 11.427442, 13.906881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.047882, 10.940165, 13.569145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.253266, 11.124600, 13.279661>,  <6.376496, 11.235262, 13.105971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.253266, 11.124600, 13.279661>,  <6.047882, 10.940165, 13.569145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.253266, 11.124600, 13.279661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006444, -0.841277, -0.540567,
		-0.858090, 0.282223, -0.428990,
		0.513459, 0.461090, -0.723710,
		6.407303, 11.262928, 13.062549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.747457, 10.844688, 12.912584>,  <6.047882, 10.940165, 13.569145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.747457, 10.844688, 12.912584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.133532, 10.930257, 12.852387>,  <6.365178, 10.981598, 12.816270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.133532, 10.930257, 12.852387>,  <5.747457, 10.844688, 12.912584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.133532, 10.930257, 12.852387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127131, -0.886541, -0.444840,
		-0.228578, 0.410222, -0.882876,
		0.965189, 0.213921, -0.150492,
		6.423089, 10.994433, 12.807240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.889167, 10.757367, 12.199059>,  <5.747457, 10.844688, 12.912584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.889167, 10.757367, 12.199059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.236938, 10.721981, 12.393491>,  <6.445601, 10.700749, 12.510149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.236938, 10.721981, 12.393491>,  <5.889167, 10.757367, 12.199059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.236938, 10.721981, 12.393491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205831, -0.829536, -0.519137,
		0.449145, 0.551401, -0.703012,
		0.869427, -0.088465, 0.486077,
		6.497766, 10.695441, 12.539314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.334194, 10.611308, 11.733189>,  <5.889167, 10.757367, 12.199059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.334194, 10.611308, 11.733189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.513574, 10.481548, 12.066333>,  <6.621202, 10.403692, 12.266219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.513574, 10.481548, 12.066333>,  <6.334194, 10.611308, 11.733189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.513574, 10.481548, 12.066333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104664, -0.906342, -0.409377,
		0.887658, 0.270757, -0.372497,
		0.448451, -0.324400, 0.832860,
		6.648109, 10.384229, 12.316191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.856498, 10.161325, 11.508272>,  <6.334194, 10.611308, 11.733189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.856498, 10.161325, 11.508272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.884219, 10.066110, 11.895784>,  <6.900852, 10.008980, 12.128291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.884219, 10.066110, 11.895784>,  <6.856498, 10.161325, 11.508272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.884219, 10.066110, 11.895784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461708, -0.853193, -0.242668,
		0.884321, 0.464111, 0.050777,
		0.069303, -0.238040, 0.968780,
		6.905010, 9.994698, 12.186419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.560024, 9.859121, 11.600274>,  <6.856498, 10.161325, 11.508272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.560024, 9.859121, 11.600274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.358329, 9.742779, 11.925518>,  <7.237312, 9.672974, 12.120665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.358329, 9.742779, 11.925518>,  <7.560024, 9.859121, 11.600274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.358329, 9.742779, 11.925518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371999, -0.922892, -0.099437,
		0.779334, 0.252337, 0.573554,
		-0.504237, -0.290856, 0.813110,
		7.207058, 9.655522, 12.169451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.000655, 9.455227, 11.966933>,  <7.560024, 9.859121, 11.600274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.000655, 9.455227, 11.966933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.632842, 9.357583, 12.090135>,  <7.412153, 9.298997, 12.164056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.632842, 9.357583, 12.090135>,  <8.000655, 9.455227, 11.966933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.632842, 9.357583, 12.090135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278141, -0.957898, 0.071192,
		0.277658, 0.151132, 0.948717,
		-0.919534, -0.244110, 0.308004,
		7.356981, 9.284350, 12.182536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.169058, 9.058465, 12.560410>,  <8.000655, 9.455227, 11.966933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.169058, 9.058465, 12.560410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.793887, 8.984977, 12.442743>,  <7.568784, 8.940884, 12.372143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.793887, 8.984977, 12.442743>,  <8.169058, 9.058465, 12.560410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.793887, 8.984977, 12.442743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172153, -0.982924, 0.064988,
		-0.301086, 0.010312, 0.953541,
		-0.937929, -0.183722, -0.294169,
		7.512508, 8.929860, 12.354492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.929371, 8.457170, 12.879015>,  <8.169058, 9.058465, 12.560410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.929371, 8.457170, 12.879015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.692160, 8.490071, 12.558627>,  <7.549833, 8.509812, 12.366395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.692160, 8.490071, 12.558627>,  <7.929371, 8.457170, 12.879015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.692160, 8.490071, 12.558627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096966, -0.980233, -0.172457,
		-0.799321, -0.179938, 0.573330,
		-0.593029, 0.082255, -0.800969,
		7.514251, 8.514748, 12.318336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.594158, 7.804141, 12.826645>,  <7.929371, 8.457170, 12.879015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.594158, 7.804141, 12.826645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.509999, 7.947710, 12.462907>,  <7.459504, 8.033852, 12.244664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.509999, 7.947710, 12.462907>,  <7.594158, 7.804141, 12.826645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.509999, 7.947710, 12.462907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202095, -0.894105, -0.399667,
		-0.956499, -0.267862, 0.115580,
		-0.210397, 0.358923, -0.909345,
		7.446880, 8.055387, 12.190104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.034737, 7.308970, 12.516683>,  <7.594158, 7.804141, 12.826645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.034737, 7.308970, 12.516683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.211996, 7.518320, 12.225560>,  <7.318351, 7.643929, 12.050887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.211996, 7.518320, 12.225560>,  <7.034737, 7.308970, 12.516683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.211996, 7.518320, 12.225560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026244, -0.803955, -0.594111,
		-0.896065, 0.282379, -0.342535,
		0.443147, 0.523372, -0.727806,
		7.344940, 7.675331, 12.007218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.519974, 7.316727, 11.926424>,  <7.034737, 7.308970, 12.516683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.519974, 7.316727, 11.926424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.872683, 7.410394, 11.762646>,  <7.084308, 7.466594, 11.664379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.872683, 7.410394, 11.762646>,  <6.519974, 7.316727, 11.926424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.872683, 7.410394, 11.762646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115715, -0.734141, -0.669064,
		-0.457263, 0.637340, -0.620248,
		0.881771, 0.234167, -0.409445,
		7.137214, 7.480644, 11.639812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.418900, 7.333723, 11.209711>,  <6.519974, 7.316727, 11.926424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.418900, 7.333723, 11.209711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.812634, 7.276317, 11.250675>,  <7.048874, 7.241874, 11.275253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.812634, 7.276317, 11.250675>,  <6.418900, 7.333723, 11.209711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.812634, 7.276317, 11.250675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045557, -0.768173, -0.638619,
		0.170319, 0.623950, -0.762678,
		0.984335, -0.143514, 0.102409,
		7.107934, 7.233263, 11.281398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.912539, 7.367357, 10.560674>,  <6.418900, 7.333723, 11.209711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.912539, 7.367357, 10.560674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.071094, 7.114702, 10.827180>,  <7.166227, 6.963109, 10.987083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.071094, 7.114702, 10.827180>,  <6.912539, 7.367357, 10.560674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.071094, 7.114702, 10.827180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079812, -0.699260, -0.710399,
		0.914607, 0.334770, -0.226767,
		0.396389, -0.631637, 0.666266,
		7.190011, 6.925211, 11.027060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.664405, 7.217079, 10.475989>,  <6.912539, 7.367357, 10.560674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.664405, 7.217079, 10.475989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.479847, 6.897293, 10.629857>,  <7.369112, 6.705421, 10.722178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.479847, 6.897293, 10.629857>,  <7.664405, 7.217079, 10.475989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.479847, 6.897293, 10.629857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368038, -0.566989, -0.736934,
		0.807257, -0.198444, 0.555839,
		-0.461394, -0.799465, 0.384670,
		7.341429, 6.657453, 10.745258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.176586, 6.758344, 10.460283>,  <7.664405, 7.217079, 10.475989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.176586, 6.758344, 10.460283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.807774, 6.603703, 10.452321>,  <7.586486, 6.510919, 10.447543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.807774, 6.603703, 10.452321>,  <8.176586, 6.758344, 10.460283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.807774, 6.603703, 10.452321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285273, -0.643807, -0.710023,
		0.261680, -0.660342, 0.703897,
		-0.922032, -0.386602, -0.019907,
		7.531164, 6.487723, 10.446349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.840337, 6.611825, 10.015261>,  <8.176586, 6.758344, 10.460283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.840337, 6.611825, 10.015261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.007795, 6.695812, 9.661843>,  <9.108271, 6.746204, 9.449793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.007795, 6.695812, 9.661843>,  <8.840337, 6.611825, 10.015261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.007795, 6.695812, 9.661843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898358, 0.238230, -0.369053,
		0.132997, 0.948240, 0.288361,
		0.418647, 0.209968, -0.883543,
		9.133389, 6.758803, 9.396780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.589828, 7.334819, 9.732891>,  <8.840337, 6.611825, 10.015261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.589828, 7.334819, 9.732891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.692193, 7.093564, 9.430704>,  <8.753613, 6.948810, 9.249392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.692193, 7.093564, 9.430704>,  <8.589828, 7.334819, 9.732891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.692193, 7.093564, 9.430704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865345, 0.205429, -0.457142,
		0.430914, 0.770729, -0.469351,
		0.255914, -0.603139, -0.755468,
		8.768968, 6.912622, 9.204063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.515392, 7.626783, 9.013510>,  <8.589828, 7.334819, 9.732891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.515392, 7.626783, 9.013510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.473285, 7.229030, 9.009134>,  <8.448020, 6.990377, 9.006509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.473285, 7.229030, 9.009134>,  <8.515392, 7.626783, 9.013510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.473285, 7.229030, 9.009134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893761, 0.099427, -0.437386,
		0.436017, -0.036267, -0.899208,
		-0.105269, -0.994384, -0.010938,
		8.441704, 6.930715, 9.005853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.122269, 7.803473, 9.134863>,  <8.515392, 7.626783, 9.013510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.122269, 7.803473, 9.134863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.167511, 8.195652, 9.070448>,  <9.194656, 8.430959, 9.031799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.167511, 8.195652, 9.070448>,  <9.122269, 7.803473, 9.134863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.167511, 8.195652, 9.070448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718223, -0.031316, -0.695108,
		-0.686559, 0.194281, 0.700636,
		0.113106, 0.980446, -0.161037,
		9.201443, 8.489786, 9.022137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.555826, 8.042380, 9.693410>,  <9.122269, 7.803473, 9.134863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.555826, 8.042380, 9.693410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.942005, 8.006101, 9.791133>,  <10.173713, 7.984333, 9.849767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.942005, 8.006101, 9.791133>,  <9.555826, 8.042380, 9.693410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.942005, 8.006101, 9.791133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199716, 0.344727, 0.917212,
		-0.167411, -0.934311, 0.314701,
		0.965447, -0.090700, 0.244307,
		10.231639, 7.978890, 9.864425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.738845, 7.547343, 10.365454>,  <9.555826, 8.042380, 9.693410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.738845, 7.547343, 10.365454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.943395, 7.883438, 10.293346>,  <10.066125, 8.085094, 10.250082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.943395, 7.883438, 10.293346>,  <9.738845, 7.547343, 10.365454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.943395, 7.883438, 10.293346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101394, 0.267300, 0.958264,
		0.853355, -0.471753, 0.221886,
		0.511374, 0.840238, -0.180269,
		10.096807, 8.135509, 10.239265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.088079, 7.632168, 10.986256>,  <9.738845, 7.547343, 10.365454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.088079, 7.632168, 10.986256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.103391, 7.971012, 10.774240>,  <10.112577, 8.174317, 10.647030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.103391, 7.971012, 10.774240>,  <10.088079, 7.632168, 10.986256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.103391, 7.971012, 10.774240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042983, 0.531333, 0.846072,
		0.998342, -0.009604, 0.056750,
		0.038278, 0.847109, -0.530039,
		10.114874, 8.225144, 10.615228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.810711, 8.118030, 11.153362>,  <10.088079, 7.632168, 10.986256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.810711, 8.118030, 11.153362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.450208, 8.276167, 11.082438>,  <10.233906, 8.371049, 11.039884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.450208, 8.276167, 11.082438>,  <10.810711, 8.118030, 11.153362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.450208, 8.276167, 11.082438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005803, 0.398174, 0.917292,
		0.433245, 0.827745, -0.356563,
		-0.901257, 0.395343, -0.177310,
		10.179831, 8.394770, 11.029245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.827636, 8.821398, 11.432868>,  <10.810711, 8.118030, 11.153362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.827636, 8.821398, 11.432868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441963, 8.738761, 11.366326>,  <10.210560, 8.689178, 11.326402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.441963, 8.738761, 11.366326>,  <10.827636, 8.821398, 11.432868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.441963, 8.738761, 11.366326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247918, 0.478978, 0.842091,
		-0.094290, 0.853171, -0.513039,
		-0.964182, -0.206592, -0.166353,
		10.152709, 8.676784, 11.316421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.415797, 9.507174, 11.406116>,  <10.827636, 8.821398, 11.432868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.415797, 9.507174, 11.406116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.149795, 9.219685, 11.487313>,  <9.990193, 9.047192, 11.536032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.149795, 9.219685, 11.487313>,  <10.415797, 9.507174, 11.406116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.149795, 9.219685, 11.487313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325918, 0.523837, 0.787002,
		-0.671970, 0.457203, -0.582599,
		-0.665006, -0.718721, 0.202992,
		9.950293, 9.004068, 11.548211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.797912, 9.876329, 11.379776>,  <10.415797, 9.507174, 11.406116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.797912, 9.876329, 11.379776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.771765, 9.553191, 11.614079>,  <9.756077, 9.359308, 11.754660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.771765, 9.553191, 11.614079>,  <9.797912, 9.876329, 11.379776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.771765, 9.553191, 11.614079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354538, 0.567514, 0.743122,
		-0.932754, -0.159096, -0.323510,
		-0.065368, -0.807847, 0.585756,
		9.752154, 9.310837, 11.789805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.060027, 9.886154, 11.645018>,  <9.797912, 9.876329, 11.379776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.060027, 9.886154, 11.645018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.293948, 9.668206, 11.885391>,  <9.434301, 9.537437, 12.029615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.293948, 9.668206, 11.885391>,  <9.060027, 9.886154, 11.645018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.293948, 9.668206, 11.885391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380249, 0.470246, 0.796417,
		-0.716531, -0.694252, 0.067815,
		0.584803, -0.544871, 0.600934,
		9.469389, 9.504745, 12.065671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.689789, 9.898703, 12.257407>,  <9.060027, 9.886154, 11.645018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.689789, 9.898703, 12.257407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.042681, 9.762934, 12.387921>,  <9.254416, 9.681472, 12.466229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.042681, 9.762934, 12.387921>,  <8.689789, 9.898703, 12.257407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.042681, 9.762934, 12.387921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156385, 0.442412, 0.883071,
		-0.444087, -0.830099, 0.337229,
		0.882230, -0.339423, 0.326285,
		9.307350, 9.661107, 12.485806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.609150, 9.757645, 12.951865>,  <8.689789, 9.898703, 12.257407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.609150, 9.757645, 12.951865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.004800, 9.794292, 12.905841>,  <9.242189, 9.816281, 12.878226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.004800, 9.794292, 12.905841>,  <8.609150, 9.757645, 12.951865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.004800, 9.794292, 12.905841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022237, 0.680140, 0.732744,
		0.145391, -0.727334, 0.670706,
		0.989124, 0.091620, -0.115060,
		9.301538, 9.821778, 12.871323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.764410, 9.959026, 13.580301>,  <8.609150, 9.757645, 12.951865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.764410, 9.959026, 13.580301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.084122, 10.069923, 13.367026>,  <9.275949, 10.136461, 13.239061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.084122, 10.069923, 13.367026>,  <8.764410, 9.959026, 13.580301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.084122, 10.069923, 13.367026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087115, 0.824405, 0.559256,
		0.594611, -0.493451, 0.634779,
		0.799280, 0.277241, -0.533187,
		9.323906, 10.153096, 13.207070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.356978, 9.980194, 14.040974>,  <8.764410, 9.959026, 13.580301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.356978, 9.980194, 14.040974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.452253, 10.210940, 13.728437>,  <9.509418, 10.349388, 13.540915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.452253, 10.210940, 13.728437>,  <9.356978, 9.980194, 14.040974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.452253, 10.210940, 13.728437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160696, 0.769997, 0.617479,
		0.957833, -0.272634, 0.090703,
		0.238187, 0.576866, -0.781340,
		9.523709, 10.384001, 13.494036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.940949, 10.224621, 14.314455>,  <9.356978, 9.980194, 14.040974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.940949, 10.224621, 14.314455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.794785, 10.464106, 14.029353>,  <9.707086, 10.607797, 13.858292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.794785, 10.464106, 14.029353>,  <9.940949, 10.224621, 14.314455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.794785, 10.464106, 14.029353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026007, 0.771974, 0.635122,
		0.930483, 0.213544, -0.297659,
		-0.365411, 0.598712, -0.712754,
		9.685162, 10.643719, 13.815527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.278543, 10.847463, 14.477212>,  <9.940949, 10.224621, 14.314455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.278543, 10.847463, 14.477212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.011510, 10.970016, 14.205782>,  <9.851291, 11.043547, 14.042924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.011510, 10.970016, 14.205782>,  <10.278543, 10.847463, 14.477212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.011510, 10.970016, 14.205782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003690, 0.910035, 0.414516,
		0.744528, 0.279227, -0.606392,
		-0.667581, 0.306381, -0.678576,
		9.811235, 11.061930, 14.002209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.453037, 11.506318, 14.331631>,  <10.278543, 10.847463, 14.477212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.453037, 11.506318, 14.331631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.072872, 11.453504, 14.219003>,  <9.844773, 11.421815, 14.151425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.072872, 11.453504, 14.219003>,  <10.453037, 11.506318, 14.331631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.072872, 11.453504, 14.219003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232959, 0.902069, 0.363321,
		0.206024, 0.410900, -0.888096,
		-0.950413, -0.132037, -0.281571,
		9.787748, 11.413893, 14.134531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.301130, 12.118916, 14.067947>,  <10.453037, 11.506318, 14.331631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.301130, 12.118916, 14.067947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.939652, 11.959745, 14.131181>,  <9.722766, 11.864244, 14.169121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.939652, 11.959745, 14.131181>,  <10.301130, 12.118916, 14.067947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.939652, 11.959745, 14.131181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270065, 0.816218, 0.510737,
		-0.332266, 0.418858, -0.845078,
		-0.903695, -0.397926, 0.158083,
		9.668544, 11.840367, 14.178606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.820991, 12.686303, 13.795177>,  <10.301130, 12.118916, 14.067947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.820991, 12.686303, 13.795177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.634424, 12.455172, 14.063079>,  <9.522484, 12.316492, 14.223820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.634424, 12.455172, 14.063079>,  <9.820991, 12.686303, 13.795177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.634424, 12.455172, 14.063079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462499, 0.804718, 0.372187,
		-0.754023, -0.136166, -0.642580,
		-0.466417, -0.577830, 0.669753,
		9.494499, 12.281822, 14.264005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.084819, 12.842814, 13.782460>,  <9.820991, 12.686303, 13.795177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.084819, 12.842814, 13.782460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.137542, 12.660192, 14.134411>,  <9.169175, 12.550617, 14.345581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.137542, 12.660192, 14.134411>,  <9.084819, 12.842814, 13.782460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.137542, 12.660192, 14.134411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506078, 0.732235, 0.455760,
		-0.852357, -0.505358, -0.134541,
		0.131807, -0.456558, 0.879876,
		9.177084, 12.523224, 14.398374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.470219, 13.066092, 14.159331>,  <9.084819, 12.842814, 13.782460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.470219, 13.066092, 14.159331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.713733, 12.912675, 14.437116>,  <8.859841, 12.820624, 14.603786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.713733, 12.912675, 14.437116>,  <8.470219, 13.066092, 14.159331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.713733, 12.912675, 14.437116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502877, 0.490477, 0.711721,
		-0.613594, -0.782513, 0.105719,
		0.608784, -0.383544, 0.694461,
		8.896368, 12.797612, 14.645454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.032959, 12.743818, 14.649696>,  <8.470219, 13.066092, 14.159331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.032959, 12.743818, 14.649696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.379238, 12.827953, 14.831388>,  <8.587006, 12.878434, 14.940404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.379238, 12.827953, 14.831388>,  <8.032959, 12.743818, 14.649696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.379238, 12.827953, 14.831388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475675, 0.628267, 0.615641,
		-0.155886, -0.749025, 0.643941,
		0.865698, 0.210337, 0.454230,
		8.638947, 12.891054, 14.967657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.900856, 12.615339, 15.351484>,  <8.032959, 12.743818, 14.649696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.900856, 12.615339, 15.351484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.201147, 12.876612, 15.311959>,  <8.381321, 13.033375, 15.288244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.201147, 12.876612, 15.311959>,  <7.900856, 12.615339, 15.351484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.201147, 12.876612, 15.311959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441420, 0.607273, 0.660581,
		0.491485, -0.452298, 0.744224,
		0.750727, 0.653181, -0.098812,
		8.426365, 13.072566, 15.282315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.953972, 12.978078, 15.993116>,  <7.900856, 12.615339, 15.351484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.953972, 12.978078, 15.993116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.160812, 13.203062, 15.735048>,  <8.284917, 13.338053, 15.580208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.160812, 13.203062, 15.735048>,  <7.953972, 12.978078, 15.993116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.160812, 13.203062, 15.735048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311446, 0.825745, 0.470263,
		0.797248, -0.042241, 0.602172,
		0.517105, 0.562460, -0.645167,
		8.315943, 13.371800, 15.541497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.525672, 13.330737, 16.362822>,  <7.953972, 12.978078, 15.993116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.525672, 13.330737, 16.362822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.420509, 13.527703, 16.030941>,  <8.357411, 13.645884, 15.831813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.420509, 13.527703, 16.030941>,  <8.525672, 13.330737, 16.362822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.420509, 13.527703, 16.030941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365122, 0.745219, 0.557973,
		0.893065, 0.449638, -0.016132,
		-0.262908, 0.492416, -0.829702,
		8.341637, 13.675428, 15.782030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.437833, 14.020232, 16.591568>,  <8.525672, 13.330737, 16.362822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.437833, 14.020232, 16.591568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.289764, 14.078041, 16.224506>,  <8.200923, 14.112726, 16.004271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.289764, 14.078041, 16.224506>,  <8.437833, 14.020232, 16.591568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.289764, 14.078041, 16.224506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443094, 0.840746, 0.311150,
		0.816481, 0.521785, -0.247183,
		-0.370171, 0.144523, -0.917653,
		8.178713, 14.121398, 15.949210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.553883, 14.692192, 16.450945>,  <8.437833, 14.020232, 16.591568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.553883, 14.692192, 16.450945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.245972, 14.591842, 16.216167>,  <8.061225, 14.531631, 16.075300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.245972, 14.591842, 16.216167>,  <8.553883, 14.692192, 16.450945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.245972, 14.591842, 16.216167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479098, 0.834695, 0.271567,
		0.421790, 0.490250, -0.762724,
		-0.769778, -0.250875, -0.586944,
		8.015038, 14.516579, 16.040085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.012072, 14.615370, 15.881674>,  <8.553883, 14.692192, 16.450945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.012072, 14.615370, 15.881674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.410304, 14.615531, 15.919239>,  <9.649243, 14.615628, 15.941778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.410304, 14.615531, 15.919239>,  <9.012072, 14.615370, 15.881674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.410304, 14.615531, 15.919239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079477, -0.529126, 0.844813,
		0.050033, -0.848544, -0.526755,
		0.995580, 0.000404, 0.093913,
		9.708979, 14.615652, 15.947413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.150903, 13.984063, 16.264294>,  <9.012072, 14.615370, 15.881674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.150903, 13.984063, 16.264294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.464805, 14.229756, 16.297462>,  <9.653146, 14.377172, 16.317364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.464805, 14.229756, 16.297462>,  <9.150903, 13.984063, 16.264294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.464805, 14.229756, 16.297462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186925, -0.362104, 0.913203,
		0.590947, -0.701140, -0.398979,
		0.784755, 0.614233, 0.082923,
		9.700232, 14.414026, 16.322340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.710396, 13.566995, 16.573311>,  <9.150903, 13.984063, 16.264294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.710396, 13.566995, 16.573311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.769790, 13.959747, 16.620403>,  <9.805426, 14.195399, 16.648659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.769790, 13.959747, 16.620403>,  <9.710396, 13.566995, 16.573311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.769790, 13.959747, 16.620403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233211, -0.150459, 0.960716,
		0.961023, -0.115195, -0.251327,
		0.148484, 0.981882, 0.117730,
		9.814335, 14.254312, 16.655722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.449039, 13.775854, 16.739172>,  <9.710396, 13.566995, 16.573311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.449039, 13.775854, 16.739172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.160168, 14.018176, 16.872715>,  <9.986845, 14.163568, 16.952841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.160168, 14.018176, 16.872715>,  <10.449039, 13.775854, 16.739172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.160168, 14.018176, 16.872715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245298, -0.226992, 0.942499,
		0.646752, 0.762546, 0.015326,
		-0.722178, 0.605804, 0.333859,
		9.943515, 14.199917, 16.972872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.803092, 14.289125, 17.180052>,  <10.449039, 13.775854, 16.739172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.803092, 14.289125, 17.180052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.431764, 14.165834, 17.263206>,  <10.208967, 14.091860, 17.313099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.431764, 14.165834, 17.263206>,  <10.803092, 14.289125, 17.180052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.431764, 14.165834, 17.263206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299552, -0.288913, 0.909284,
		-0.220204, 0.906381, 0.360533,
		-0.928320, -0.308227, 0.207889,
		10.153268, 14.073366, 17.325573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.672080, 14.600242, 17.788143>,  <10.803092, 14.289125, 17.180052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.672080, 14.600242, 17.788143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.447835, 14.269289, 17.774567>,  <10.313288, 14.070717, 17.766420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.447835, 14.269289, 17.774567>,  <10.672080, 14.600242, 17.788143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.447835, 14.269289, 17.774567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206012, -0.179051, 0.962029,
		-0.802042, 0.532334, 0.270829,
		-0.560613, -0.827382, -0.033940,
		10.279651, 14.021074, 17.764385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.202524, 14.680986, 18.267803>,  <10.672080, 14.600242, 17.788143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.202524, 14.680986, 18.267803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.298946, 14.297898, 18.204983>,  <10.356800, 14.068046, 18.167290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.298946, 14.297898, 18.204983>,  <10.202524, 14.680986, 18.267803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.298946, 14.297898, 18.204983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194392, -0.110897, 0.974635,
		-0.950844, -0.265471, 0.159441,
		0.241056, -0.957720, -0.157051,
		10.371264, 14.010582, 18.157867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.725491, 14.263193, 18.641596>,  <10.202524, 14.680986, 18.267803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.725491, 14.263193, 18.641596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.088637, 14.103131, 18.591549>,  <10.306525, 14.007094, 18.561520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.088637, 14.103131, 18.591549>,  <9.725491, 14.263193, 18.641596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.088637, 14.103131, 18.591549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144883, 0.019391, 0.989259,
		-0.393430, -0.916243, 0.075580,
		0.907867, -0.400154, -0.125119,
		10.360997, 13.983086, 18.554012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.798556, 13.567570, 19.103428>,  <9.725491, 14.263193, 18.641596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.798556, 13.567570, 19.103428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.147895, 13.740576, 19.013809>,  <10.357498, 13.844379, 18.960039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.147895, 13.740576, 19.013809>,  <9.798556, 13.567570, 19.103428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.147895, 13.740576, 19.013809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214880, 0.070686, 0.974079,
		0.437141, -0.898851, -0.031206,
		0.873346, 0.432516, -0.224045,
		10.409899, 13.870331, 18.946596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.178090, 13.034951, 19.393398>,  <9.798556, 13.567570, 19.103428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.178090, 13.034951, 19.393398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.419546, 13.351182, 19.352203>,  <10.564420, 13.540920, 19.327486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.419546, 13.351182, 19.352203>,  <10.178090, 13.034951, 19.393398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.419546, 13.351182, 19.352203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186659, -0.014558, 0.982317,
		0.775098, -0.612190, -0.156356,
		0.603640, 0.790577, -0.102987,
		10.600638, 13.588355, 19.321308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.773508, 12.915325, 19.868452>,  <10.178090, 13.034951, 19.393398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.773508, 12.915325, 19.868452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.756678, 13.304875, 19.779190>,  <10.746579, 13.538606, 19.725634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.756678, 13.304875, 19.779190>,  <10.773508, 12.915325, 19.868452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.756678, 13.304875, 19.779190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003285, 0.223485, 0.974702,
		0.999109, 0.040279, -0.012603,
		-0.042077, 0.973875, -0.223153,
		10.744055, 13.597038, 19.712244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.062031, 13.156468, 20.529900>,  <10.773508, 12.915325, 19.868452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.062031, 13.156468, 20.529900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.914778, 13.460441, 20.315617>,  <10.826426, 13.642824, 20.187046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.914778, 13.460441, 20.315617>,  <11.062031, 13.156468, 20.529900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.914778, 13.460441, 20.315617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124294, 0.611221, 0.781639,
		0.921428, 0.221162, -0.319466,
		-0.368133, 0.759932, -0.535707,
		10.804338, 13.688420, 20.154905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.626744, 13.591825, 20.179237>,  <11.062031, 13.156468, 20.529900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.626744, 13.591825, 20.179237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.303099, 13.823266, 20.220329>,  <11.108912, 13.962131, 20.244986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.303099, 13.823266, 20.220329>,  <11.626744, 13.591825, 20.179237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.303099, 13.823266, 20.220329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533893, 0.650731, 0.539914,
		0.245544, 0.491700, -0.835427,
		-0.809114, 0.578602, 0.102732,
		11.060365, 13.996846, 20.251148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.815835, 14.332509, 19.942169>,  <11.626744, 13.591825, 20.179237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.815835, 14.332509, 19.942169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.517514, 14.318435, 20.208263>,  <11.338522, 14.309990, 20.367920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.517514, 14.318435, 20.208263>,  <11.815835, 14.332509, 19.942169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.517514, 14.318435, 20.208263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490706, 0.646356, 0.584321,
		-0.450539, 0.762224, -0.464789,
		-0.745803, -0.035185, 0.665237,
		11.293774, 14.307879, 20.407835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.698029, 14.999610, 20.129267>,  <11.815835, 14.332509, 19.942169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.698029, 14.999610, 20.129267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.542652, 14.787830, 20.430941>,  <11.449427, 14.660763, 20.611946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.542652, 14.787830, 20.430941>,  <11.698029, 14.999610, 20.129267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.542652, 14.787830, 20.430941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491069, 0.573612, 0.655607,
		-0.779721, 0.625022, 0.037182,
		-0.388441, -0.529449, 0.754186,
		11.426120, 14.628996, 20.657196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.554470, 15.543784, 20.670797>,  <11.698029, 14.999610, 20.129267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.554470, 15.543784, 20.670797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.554385, 15.193619, 20.864147>,  <11.554334, 14.983520, 20.980158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.554385, 15.193619, 20.864147>,  <11.554470, 15.543784, 20.670797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.554385, 15.193619, 20.864147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392121, 0.444590, 0.805345,
		-0.919914, 0.189713, 0.343173,
		-0.000213, -0.875413, 0.483375,
		11.554321, 14.930995, 21.009159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.035383, 15.613579, 21.221785>,  <11.554470, 15.543784, 20.670797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.035383, 15.613579, 21.221785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.285646, 15.320051, 21.327660>,  <11.435804, 15.143934, 21.391184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.285646, 15.320051, 21.327660>,  <11.035383, 15.613579, 21.221785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.285646, 15.320051, 21.327660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235927, 0.501408, 0.832423,
		-0.743565, -0.458366, 0.486839,
		0.625659, -0.733819, 0.264688,
		11.473344, 15.099905, 21.407066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.931977, 15.420051, 21.972448>,  <11.035383, 15.613579, 21.221785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.931977, 15.420051, 21.972448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.304708, 15.306518, 21.881994>,  <11.528346, 15.238398, 21.827721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.304708, 15.306518, 21.881994>,  <10.931977, 15.420051, 21.972448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.304708, 15.306518, 21.881994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321470, 0.356447, 0.877270,
		-0.168393, -0.890160, 0.423390,
		0.931827, -0.283833, -0.226137,
		11.584255, 15.221368, 21.814154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.197958, 15.126608, 22.687695>,  <10.931977, 15.420051, 21.972448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.197958, 15.126608, 22.687695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.511347, 15.182507, 22.445492>,  <11.699380, 15.216045, 22.300169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.511347, 15.182507, 22.445492>,  <11.197958, 15.126608, 22.687695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.511347, 15.182507, 22.445492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520900, 0.383658, 0.762542,
		0.338867, -0.912841, 0.227794,
		0.783475, 0.139742, -0.605508,
		11.746388, 15.224431, 22.263840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.869484, 14.841318, 22.991173>,  <11.197958, 15.126608, 22.687695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.869484, 14.841318, 22.991173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.996193, 15.086953, 22.702023>,  <12.072218, 15.234334, 22.528532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.996193, 15.086953, 22.702023>,  <11.869484, 14.841318, 22.991173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.996193, 15.086953, 22.702023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698549, 0.364508, 0.615762,
		0.641627, -0.700021, -0.313505,
		0.316772, 0.614088, -0.722878,
		12.091225, 15.271179, 22.485159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.614159, 14.722723, 22.719040>,  <11.869484, 14.841318, 22.991173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.614159, 14.722723, 22.719040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.502481, 15.106761, 22.712486>,  <12.435475, 15.337184, 22.708553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.502481, 15.106761, 22.712486>,  <12.614159, 14.722723, 22.719040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.502481, 15.106761, 22.712486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689675, 0.212371, 0.692276,
		0.668131, 0.181979, -0.721446,
		-0.279194, 0.960095, -0.016385,
		12.418723, 15.394790, 22.707571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.099030, 15.283594, 22.554163>,  <12.614159, 14.722723, 22.719040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.099030, 15.283594, 22.554163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.844014, 15.486568, 22.786043>,  <12.691005, 15.608353, 22.925171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.844014, 15.486568, 22.786043>,  <13.099030, 15.283594, 22.554163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.844014, 15.486568, 22.786043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725377, 0.141853, 0.673577,
		0.259565, 0.849933, -0.458519,
		-0.637538, 0.507436, 0.579702,
		12.652753, 15.638800, 22.959953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.540963, 15.767207, 22.760403>,  <13.099030, 15.283594, 22.554163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.540963, 15.767207, 22.760403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.219789, 15.832458, 22.989727>,  <13.027084, 15.871610, 23.127321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.219789, 15.832458, 22.989727>,  <13.540963, 15.767207, 22.760403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.219789, 15.832458, 22.989727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592757, 0.319733, 0.739196,
		-0.062722, 0.933360, -0.353420,
		-0.802936, 0.163128, 0.573309,
		12.978908, 15.881397, 23.161720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.634371, 16.395109, 23.138426>,  <13.540963, 15.767207, 22.760403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.634371, 16.395109, 23.138426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.346977, 16.205208, 23.341755>,  <13.174541, 16.091267, 23.463753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.346977, 16.205208, 23.341755>,  <13.634371, 16.395109, 23.138426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.346977, 16.205208, 23.341755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412788, 0.297160, 0.860989,
		-0.559809, 0.828436, -0.017533,
		-0.718485, -0.474752, 0.508321,
		13.131432, 16.062782, 23.494251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.479629, 16.886618, 23.697182>,  <13.634371, 16.395109, 23.138426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.479629, 16.886618, 23.697182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326427, 16.542294, 23.831236>,  <13.234506, 16.335699, 23.911669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.326427, 16.542294, 23.831236>,  <13.479629, 16.886618, 23.697182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.326427, 16.542294, 23.831236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456651, 0.138932, 0.878731,
		-0.802980, 0.489598, 0.339878,
		-0.383005, -0.860809, 0.335135,
		13.211525, 16.284050, 23.931776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.137432, 17.077496, 24.323360>,  <13.479629, 16.886618, 23.697182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.137432, 17.077496, 24.323360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.215503, 16.686255, 24.352270>,  <13.262345, 16.451509, 24.369616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.215503, 16.686255, 24.352270>,  <13.137432, 17.077496, 24.323360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.215503, 16.686255, 24.352270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358233, 0.139696, 0.923122,
		-0.913004, -0.154280, 0.377653,
		0.195176, -0.978102, 0.072275,
		13.274055, 16.392824, 24.373953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.018373, 16.850817, 25.023621>,  <13.137432, 17.077496, 24.323360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.018373, 16.850817, 25.023621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.235033, 16.535873, 24.905849>,  <13.365028, 16.346909, 24.835188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.235033, 16.535873, 24.905849>,  <13.018373, 16.850817, 25.023621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.235033, 16.535873, 24.905849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525798, 0.044062, 0.849468,
		-0.655861, -0.614922, 0.437857,
		0.541649, -0.787357, -0.294426,
		13.397528, 16.299667, 24.817522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.995271, 16.270018, 25.565634>,  <13.018373, 16.850817, 25.023621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.995271, 16.270018, 25.565634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.334632, 16.256863, 25.354301>,  <13.538249, 16.248970, 25.227503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.334632, 16.256863, 25.354301>,  <12.995271, 16.270018, 25.565634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.334632, 16.256863, 25.354301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529233, 0.073820, 0.845259,
		0.011200, -0.996729, 0.080036,
		0.848403, -0.032891, -0.528328,
		13.589152, 16.246996, 25.195803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.443250, 15.967232, 26.064093>,  <12.995271, 16.270018, 25.565634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.443250, 15.967232, 26.064093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706923, 16.092302, 25.790535>,  <13.865127, 16.167345, 25.626400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.706923, 16.092302, 25.790535>,  <13.443250, 15.967232, 26.064093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.706923, 16.092302, 25.790535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661674, 0.190953, 0.725069,
		0.357303, -0.930468, -0.081016,
		0.659183, 0.312675, -0.683895,
		13.904677, 16.186106, 25.585367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.004561, 15.739992, 26.299006>,  <13.443250, 15.967232, 26.064093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.004561, 15.739992, 26.299006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.152874, 15.998385, 26.032104>,  <14.241861, 16.153421, 25.871964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.152874, 15.998385, 26.032104>,  <14.004561, 15.739992, 26.299006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.152874, 15.998385, 26.032104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690993, 0.288159, 0.662944,
		0.620525, -0.706875, -0.339525,
		0.370781, 0.645982, -0.667255,
		14.264108, 16.192181, 25.831928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.763742, 15.612581, 26.285540>,  <14.004561, 15.739992, 26.299006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.763742, 15.612581, 26.285540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.665706, 15.986288, 26.181944>,  <14.606884, 16.210512, 26.119785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.665706, 15.986288, 26.181944>,  <14.763742, 15.612581, 26.285540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.665706, 15.986288, 26.181944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703382, 0.355202, 0.615698,
		0.667221, -0.031268, -0.744203,
		-0.245091, 0.934266, -0.258992,
		14.592178, 16.266567, 26.104246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301308, 15.888508, 26.041412>,  <14.763742, 15.612581, 26.285540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.301308, 15.888508, 26.041412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.094527, 16.215473, 26.143076>,  <14.970459, 16.411652, 26.204075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.094527, 16.215473, 26.143076>,  <15.301308, 15.888508, 26.041412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.094527, 16.215473, 26.143076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649981, 0.181615, 0.737930,
		0.557035, 0.546673, -0.625189,
		-0.516950, 0.817413, 0.254161,
		14.939443, 16.460697, 26.219324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.854914, 16.286058, 26.248777>,  <15.301308, 15.888508, 26.041412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.854914, 16.286058, 26.248777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.523533, 16.483683, 26.354284>,  <15.324704, 16.602257, 26.417587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.523533, 16.483683, 26.354284>,  <15.854914, 16.286058, 26.248777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.523533, 16.483683, 26.354284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522216, 0.511252, 0.682577,
		0.202384, 0.703225, -0.681554,
		-0.828451, 0.494061, 0.263766,
		15.274998, 16.631901, 26.433414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128017, 16.903574, 26.228510>,  <15.854914, 16.286058, 26.248777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.128017, 16.903574, 26.228510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.821593, 16.915907, 26.485321>,  <15.637738, 16.923306, 26.639408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.821593, 16.915907, 26.485321>,  <16.128017, 16.903574, 26.228510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.821593, 16.915907, 26.485321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596319, 0.406895, 0.691983,
		-0.239903, 0.912955, -0.330091,
		-0.766061, 0.030831, 0.642028,
		15.591775, 16.925156, 26.677929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.970898, 17.573975, 26.441017>,  <16.128017, 16.903574, 26.228510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.970898, 17.573975, 26.441017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.840214, 17.336302, 26.735012>,  <15.761804, 17.193697, 26.911409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.840214, 17.336302, 26.735012>,  <15.970898, 17.573975, 26.441017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.840214, 17.336302, 26.735012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362600, 0.639352, 0.678049,
		-0.872801, 0.488032, 0.006569,
		-0.326710, -0.594184, 0.734987,
		15.742201, 17.158047, 26.955507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.553962, 18.025263, 26.900784>,  <15.970898, 17.573975, 26.441017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.553962, 18.025263, 26.900784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.621568, 17.712515, 27.140820>,  <15.662131, 17.524866, 27.284842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.621568, 17.712515, 27.140820>,  <15.553962, 18.025263, 26.900784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.621568, 17.712515, 27.140820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165180, 0.622710, 0.764818,
		-0.971673, -0.030143, 0.234397,
		0.169015, -0.781872, 0.600092,
		15.672273, 17.477953, 27.320847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.286603, 18.139366, 27.671196>,  <15.553962, 18.025263, 26.900784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.286603, 18.139366, 27.671196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.571126, 17.860741, 27.708807>,  <15.741839, 17.693565, 27.731375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.571126, 17.860741, 27.708807>,  <15.286603, 18.139366, 27.671196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.571126, 17.860741, 27.708807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364094, 0.479577, 0.798399,
		-0.601231, -0.533671, 0.594741,
		0.711306, -0.696564, 0.094030,
		15.784518, 17.651772, 27.737017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.183693, 17.975679, 28.453777>,  <15.286603, 18.139366, 27.671196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.183693, 17.975679, 28.453777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.538548, 17.851778, 28.316935>,  <15.751462, 17.777437, 28.234829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.538548, 17.851778, 28.316935>,  <15.183693, 17.975679, 28.453777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.538548, 17.851778, 28.316935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442847, 0.362743, 0.819941,
		-0.129882, -0.878903, 0.458977,
		0.887140, -0.309752, -0.342106,
		15.804690, 17.758852, 28.214302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.632964, 17.732254, 29.019587>,  <15.183693, 17.975679, 28.453777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.632964, 17.732254, 29.019587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924581, 17.755901, 28.746822>,  <16.099550, 17.770090, 28.583164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.924581, 17.755901, 28.746822>,  <15.632964, 17.732254, 29.019587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924581, 17.755901, 28.746822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636168, 0.309093, 0.706931,
		0.252566, -0.949193, 0.187733,
		0.729041, 0.059117, -0.681913,
		16.143293, 17.773636, 28.542248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.251862, 17.379726, 29.337111>,  <15.632964, 17.732254, 29.019587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.251862, 17.379726, 29.337111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.376675, 17.624016, 29.046001>,  <16.451563, 17.770590, 28.871336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.376675, 17.624016, 29.046001>,  <16.251862, 17.379726, 29.337111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376675, 17.624016, 29.046001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740248, 0.323886, 0.589178,
		0.595539, -0.722576, -0.351023,
		0.312035, 0.610722, -0.727772,
		16.470285, 17.807232, 28.827669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.065105, 17.341530, 29.306662>,  <16.251862, 17.379726, 29.337111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.065105, 17.341530, 29.306662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.957893, 17.676369, 29.115904>,  <16.893566, 17.877272, 29.001450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.957893, 17.676369, 29.115904>,  <17.065105, 17.341530, 29.306662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.957893, 17.676369, 29.115904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723941, 0.501609, 0.473601,
		0.635665, -0.218306, -0.740454,
		-0.268029, 0.837097, -0.476896,
		16.877485, 17.927498, 28.972836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.731993, 17.688477, 29.200825>,  <17.065105, 17.341530, 29.306662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.731993, 17.688477, 29.200825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.454866, 17.972832, 29.152414>,  <17.288591, 18.143444, 29.123367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.454866, 17.972832, 29.152414>,  <17.731993, 17.688477, 29.200825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.454866, 17.972832, 29.152414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598910, 0.660721, 0.452497,
		0.401638, 0.241014, -0.883515,
		-0.692816, 0.710887, -0.121025,
		17.247023, 18.186098, 29.116106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.135677, 18.223972, 28.968273>,  <17.731993, 17.688477, 29.200825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.135677, 18.223972, 28.968273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.798471, 18.373064, 29.123396>,  <17.596148, 18.462519, 29.216471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.798471, 18.373064, 29.123396>,  <18.135677, 18.223972, 28.968273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.798471, 18.373064, 29.123396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530536, 0.694986, 0.485311,
		-0.088631, 0.614871, -0.783631,
		-0.843016, 0.372731, 0.387808,
		17.545567, 18.484884, 29.239738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.267849, 18.944384, 28.999113>,  <18.135677, 18.223972, 28.968273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.267849, 18.944384, 28.999113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.956661, 18.920601, 29.249308>,  <17.769949, 18.906330, 29.399424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.956661, 18.920601, 29.249308>,  <18.267849, 18.944384, 28.999113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.956661, 18.920601, 29.249308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373346, 0.756952, 0.536318,
		-0.505350, 0.650760, -0.566685,
		-0.777968, -0.059459, 0.625485,
		17.723270, 18.902763, 29.436953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.122627, 19.710913, 29.267984>,  <18.267849, 18.944384, 28.999113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.122627, 19.710913, 29.267984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.938511, 19.461798, 29.521051>,  <17.828041, 19.312328, 29.672892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.938511, 19.461798, 29.521051>,  <18.122627, 19.710913, 29.267984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.938511, 19.461798, 29.521051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280400, 0.574179, 0.769217,
		-0.842323, 0.531463, -0.089659,
		-0.460291, -0.622789, 0.632667,
		17.800425, 19.274961, 29.710852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.739235, 20.116526, 29.735624>,  <18.122627, 19.710913, 29.267984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.739235, 20.116526, 29.735624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.826283, 19.769136, 29.913790>,  <17.878511, 19.560703, 30.020689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.826283, 19.769136, 29.913790>,  <17.739235, 20.116526, 29.735624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.826283, 19.769136, 29.913790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435755, 0.494798, 0.751859,
		-0.873361, 0.030472, 0.486120,
		0.217621, -0.868473, 0.445416,
		17.891569, 19.508595, 30.047415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.802164, 20.274769, 30.486986>,  <17.739235, 20.116526, 29.735624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.802164, 20.274769, 30.486986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.972574, 19.914471, 30.453133>,  <18.074820, 19.698292, 30.432821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.972574, 19.914471, 30.453133>,  <17.802164, 20.274769, 30.486986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972574, 19.914471, 30.453133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564053, 0.191305, 0.803273,
		-0.707353, -0.389950, 0.589568,
		0.426023, -0.900745, -0.084632,
		18.100382, 19.644247, 30.427744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.730169, 19.960154, 31.109209>,  <17.802164, 20.274769, 30.486986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.730169, 19.960154, 31.109209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028431, 19.737951, 30.962017>,  <18.207388, 19.604630, 30.873701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.028431, 19.737951, 30.962017>,  <17.730169, 19.960154, 31.109209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.028431, 19.737951, 30.962017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527202, 0.154106, 0.835649,
		-0.407501, -0.817107, 0.407774,
		0.745655, -0.555507, -0.367982,
		18.252127, 19.571299, 30.851622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.893599, 19.524767, 31.605042>,  <17.730169, 19.960154, 31.109209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.893599, 19.524767, 31.605042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.213896, 19.555960, 31.367477>,  <18.406075, 19.574675, 31.224939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.213896, 19.555960, 31.367477>,  <17.893599, 19.524767, 31.605042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.213896, 19.555960, 31.367477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598825, -0.128723, 0.790467,
		-0.014808, -0.988610, -0.149772,
		0.800743, 0.077982, -0.593911,
		18.454119, 19.579353, 31.189304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.397867, 18.950909, 31.774746>,  <17.893599, 19.524767, 31.605042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.397867, 18.950909, 31.774746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.596653, 19.262056, 31.620892>,  <18.715925, 19.448746, 31.528580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.596653, 19.262056, 31.620892>,  <18.397867, 18.950909, 31.774746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.596653, 19.262056, 31.620892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742686, -0.152012, 0.652157,
		0.448824, -0.609764, -0.653258,
		0.496965, 0.777869, -0.384636,
		18.745743, 19.495417, 31.505501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.964783, 19.374504, 32.041603>,  <18.397867, 18.950909, 31.774746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.964783, 19.374504, 32.041603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.163807, 19.272034, 31.710110>,  <19.283222, 19.210552, 31.511213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.163807, 19.272034, 31.710110>,  <18.964783, 19.374504, 32.041603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.163807, 19.272034, 31.710110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646201, -0.527885, 0.551146,
		-0.578670, -0.809760, -0.097112,
		0.497560, -0.256177, -0.828738,
		19.313076, 19.195181, 31.461489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.540352, 19.810564, 31.909142>,  <18.964783, 19.374504, 32.041603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.540352, 19.810564, 31.909142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.452950, 19.488443, 32.129593>,  <19.400507, 19.295170, 32.261864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.452950, 19.488443, 32.129593>,  <19.540352, 19.810564, 31.909142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.452950, 19.488443, 32.129593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962946, -0.269432, -0.011911,
		0.158083, 0.528103, 0.834336,
		-0.218507, -0.805304, 0.551127,
		19.387398, 19.246853, 32.294930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.007208, 19.774029, 32.425598>,  <19.540352, 19.810564, 31.909142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.007208, 19.774029, 32.425598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.888182, 19.401781, 32.340370>,  <19.816767, 19.178432, 32.289234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.888182, 19.401781, 32.340370>,  <20.007208, 19.774029, 32.425598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.888182, 19.401781, 32.340370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916144, -0.215558, -0.337957,
		0.268579, -0.295771, 0.916725,
		-0.297566, -0.930620, -0.213075,
		19.798912, 19.122595, 32.276447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.449165, 19.252892, 32.736725>,  <20.007208, 19.774029, 32.425598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.449165, 19.252892, 32.736725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.310551, 19.098892, 32.394569>,  <20.227383, 19.006493, 32.189278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.310551, 19.098892, 32.394569>,  <20.449165, 19.252892, 32.736725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.310551, 19.098892, 32.394569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932695, -0.238597, -0.270466,
		-0.099963, -0.891542, 0.441770,
		-0.346537, -0.385000, -0.855387,
		20.206589, 18.983393, 32.137955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.204372, 19.548882, 32.937927>,  <20.449165, 19.252892, 32.736725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.204372, 19.548882, 32.937927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.587975, 19.609636, 32.842224>,  <21.818136, 19.646090, 32.784801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.587975, 19.609636, 32.842224>,  <21.204372, 19.548882, 32.937927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.587975, 19.609636, 32.842224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254330, 0.088849, -0.963028,
		-0.125016, 0.984396, 0.123837,
		0.959003, 0.151889, -0.239254,
		21.875675, 19.655203, 32.770447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.235559, 20.296633, 32.606895>,  <21.204372, 19.548882, 32.937927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.235559, 20.296633, 32.606895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.475677, 19.996174, 32.497040>,  <21.619747, 19.815899, 32.431126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.475677, 19.996174, 32.497040>,  <21.235559, 20.296633, 32.606895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.475677, 19.996174, 32.497040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437449, -0.020904, -0.899000,
		0.669541, 0.659803, -0.341137,
		0.600294, -0.751148, -0.274634,
		21.655766, 19.770830, 32.414650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.283001, 20.466507, 31.945889>,  <21.235559, 20.296633, 32.606895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.283001, 20.466507, 31.945889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.356390, 20.076324, 31.994581>,  <21.400423, 19.842215, 32.023796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.356390, 20.076324, 31.994581>,  <21.283001, 20.466507, 31.945889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.356390, 20.076324, 31.994581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278662, -0.170365, -0.945158,
		0.942702, 0.139486, -0.303080,
		0.183470, -0.975459, 0.121734,
		21.411430, 19.783688, 32.031101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.516390, 20.217361, 31.329271>,  <21.283001, 20.466507, 31.945889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.516390, 20.217361, 31.329271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.353624, 19.892279, 31.496090>,  <21.255964, 19.697229, 31.596180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.353624, 19.892279, 31.496090>,  <21.516390, 20.217361, 31.329271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.353624, 19.892279, 31.496090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180118, -0.376203, -0.908861,
		0.895533, -0.444945, 0.006698,
		-0.406913, -0.812708, 0.417045,
		21.231550, 19.648466, 31.621204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.735460, 19.580299, 30.915537>,  <21.516390, 20.217361, 31.329271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.735460, 19.580299, 30.915537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.383436, 19.497446, 31.086460>,  <21.172222, 19.447735, 31.189014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.383436, 19.497446, 31.086460>,  <21.735460, 19.580299, 30.915537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.383436, 19.497446, 31.086460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260759, -0.541247, -0.799410,
		0.396863, -0.814952, 0.422318,
		-0.880060, -0.207133, 0.427307,
		21.119419, 19.435307, 31.214653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.695515, 18.811687, 31.041225>,  <21.735460, 19.580299, 30.915537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.695515, 18.811687, 31.041225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.336374, 18.978010, 30.983307>,  <21.120890, 19.077805, 30.948555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.336374, 18.978010, 30.983307>,  <21.695515, 18.811687, 31.041225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.336374, 18.978010, 30.983307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215212, -0.701348, -0.679555,
		-0.384117, -0.578978, 0.719193,
		-0.897852, 0.415808, -0.144796,
		21.067019, 19.102753, 30.939867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.176764, 18.288750, 30.966045>,  <21.695515, 18.811687, 31.041225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.176764, 18.288750, 30.966045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.983383, 18.591379, 30.789921>,  <20.867355, 18.772957, 30.684246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.983383, 18.591379, 30.789921>,  <21.176764, 18.288750, 30.966045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.983383, 18.591379, 30.789921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346217, -0.627243, -0.697639,
		-0.803997, -0.184829, 0.565178,
		-0.483448, 0.756574, -0.440311,
		20.838348, 18.818352, 30.657827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.478453, 18.071152, 30.790064>,  <21.176764, 18.288750, 30.966045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.478453, 18.071152, 30.790064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554691, 18.374357, 30.540556>,  <20.600435, 18.556280, 30.390852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.554691, 18.374357, 30.540556>,  <20.478453, 18.071152, 30.790064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.554691, 18.374357, 30.540556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431414, -0.506090, -0.746830,
		-0.881791, 0.411446, 0.230558,
		0.190597, 0.758014, -0.623769,
		20.611870, 18.601761, 30.353426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.959513, 18.014839, 30.297871>,  <20.478453, 18.071152, 30.790064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.959513, 18.014839, 30.297871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.217455, 18.257683, 30.112146>,  <20.372221, 18.403389, 30.000711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.217455, 18.257683, 30.112146>,  <19.959513, 18.014839, 30.297871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.217455, 18.257683, 30.112146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358787, -0.295943, -0.885262,
		-0.674858, 0.737454, 0.026982,
		0.644855, 0.607108, -0.464309,
		20.410912, 18.439816, 29.972855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.556553, 18.433290, 29.884497>,  <19.959513, 18.014839, 30.297871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.556553, 18.433290, 29.884497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.921648, 18.470490, 29.725367>,  <20.140705, 18.492809, 29.629889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.921648, 18.470490, 29.725367>,  <19.556553, 18.433290, 29.884497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.921648, 18.470490, 29.725367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384916, -0.130645, -0.913658,
		-0.136941, 0.987058, -0.083449,
		0.912736, 0.092997, -0.397826,
		20.195469, 18.498388, 29.606018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.456776, 18.827112, 29.303463>,  <19.556553, 18.433290, 29.884497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.456776, 18.827112, 29.303463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.813335, 18.659565, 29.234236>,  <20.027271, 18.559036, 29.192699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.813335, 18.659565, 29.234236>,  <19.456776, 18.827112, 29.303463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.813335, 18.659565, 29.234236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295260, -0.247007, -0.922935,
		0.343838, 0.873806, -0.343858,
		0.891402, -0.418868, -0.173069,
		20.080755, 18.533905, 29.182316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.705070, 19.087345, 28.584538>,  <19.456776, 18.827112, 29.303463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.705070, 19.087345, 28.584538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.911053, 18.753704, 28.663626>,  <20.034643, 18.553520, 28.711079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.911053, 18.753704, 28.663626>,  <19.705070, 19.087345, 28.584538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.911053, 18.753704, 28.663626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178409, -0.329891, -0.927007,
		0.838444, 0.442094, -0.318691,
		0.514958, -0.834101, 0.197721,
		20.065540, 18.503473, 28.722942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.108362, 18.912842, 27.971376>,  <19.705070, 19.087345, 28.584538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.108362, 18.912842, 27.971376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.146017, 18.553207, 28.142389>,  <20.168610, 18.337427, 28.244997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.146017, 18.553207, 28.142389>,  <20.108362, 18.912842, 27.971376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.146017, 18.553207, 28.142389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121165, -0.436596, -0.891461,
		0.988158, 0.032119, -0.150038,
		0.094139, -0.899084, 0.427534,
		20.174259, 18.283482, 28.270649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.577785, 18.495535, 27.455833>,  <20.108362, 18.912842, 27.971376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.577785, 18.495535, 27.455833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.399199, 18.227070, 27.692545>,  <20.292046, 18.065990, 27.834572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.399199, 18.227070, 27.692545>,  <20.577785, 18.495535, 27.455833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.399199, 18.227070, 27.692545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137042, -0.602264, -0.786446,
		0.884243, -0.432222, 0.176915,
		-0.446469, -0.671165, 0.591780,
		20.265259, 18.025721, 27.870079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.939426, 17.809515, 27.383720>,  <20.577785, 18.495535, 27.455833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.939426, 17.809515, 27.383720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.564838, 17.719975, 27.491732>,  <20.340086, 17.666250, 27.556538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.564838, 17.719975, 27.491732>,  <20.939426, 17.809515, 27.383720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.564838, 17.719975, 27.491732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133319, -0.484908, -0.864344,
		0.324422, -0.845432, 0.424258,
		-0.936470, -0.223851, 0.270027,
		20.283897, 17.652819, 27.572741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.754469, 17.340200, 26.868454>,  <20.939426, 17.809515, 27.383720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.754469, 17.340200, 26.868454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.404121, 17.425825, 27.041443>,  <20.193913, 17.477200, 27.145235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.404121, 17.425825, 27.041443>,  <20.754469, 17.340200, 26.868454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.404121, 17.425825, 27.041443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482548, -0.390637, -0.783932,
		0.001127, -0.895310, 0.445443,
		-0.875869, 0.214064, 0.432471,
		20.141361, 17.490044, 27.171185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.397499, 16.683887, 26.754118>,  <20.754469, 17.340200, 26.868454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.397499, 16.683887, 26.754118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.166588, 17.008001, 26.794495>,  <20.028040, 17.202469, 26.818722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.166588, 17.008001, 26.794495>,  <20.397499, 16.683887, 26.754118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.166588, 17.008001, 26.794495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518045, -0.267879, -0.812324,
		-0.631171, -0.521232, 0.574404,
		-0.577280, 0.810283, 0.100944,
		19.993404, 17.251085, 26.824778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.621241, 16.476328, 26.724997>,  <20.397499, 16.683887, 26.754118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.621241, 16.476328, 26.724997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.633724, 16.869596, 26.652996>,  <19.641214, 17.105558, 26.609797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.633724, 16.869596, 26.652996>,  <19.621241, 16.476328, 26.724997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.633724, 16.869596, 26.652996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704861, -0.106033, -0.701376,
		-0.708659, 0.148765, 0.689690,
		0.031211, 0.983171, -0.180000,
		19.643087, 17.164547, 26.598997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.955833, 16.650692, 26.653744>,  <19.621241, 16.476328, 26.724997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.955833, 16.650692, 26.653744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.151152, 16.952438, 26.478245>,  <19.268343, 17.133486, 26.372946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.151152, 16.952438, 26.478245>,  <18.955833, 16.650692, 26.653744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.151152, 16.952438, 26.478245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688678, 0.024309, -0.724660,
		-0.535994, 0.656003, 0.531385,
		0.488296, 0.754367, -0.438745,
		19.297640, 17.178749, 26.346621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.527239, 17.203737, 26.552588>,  <18.955833, 16.650692, 26.653744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.527239, 17.203737, 26.552588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.808466, 17.274874, 26.277176>,  <18.977201, 17.317556, 26.111929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.808466, 17.274874, 26.277176>,  <18.527239, 17.203737, 26.552588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.808466, 17.274874, 26.277176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683648, -0.097501, -0.723269,
		-0.195759, 0.979217, 0.053031,
		0.703067, 0.177841, -0.688527,
		19.019386, 17.328226, 26.070618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.349047, 17.673162, 26.068438>,  <18.527239, 17.203737, 26.552588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.349047, 17.673162, 26.068438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.603502, 17.430874, 25.877260>,  <18.756176, 17.285501, 25.762554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.603502, 17.430874, 25.877260>,  <18.349047, 17.673162, 26.068438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.603502, 17.430874, 25.877260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690559, -0.170647, -0.702857,
		0.344175, 0.777164, -0.526840,
		0.636139, -0.605720, -0.477945,
		18.794344, 17.249159, 25.733877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.058325, 17.652620, 25.453758>,  <18.349047, 17.673162, 26.068438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.058325, 17.652620, 25.453758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.336529, 17.368792, 25.408545>,  <18.503450, 17.198494, 25.381416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.336529, 17.368792, 25.408545>,  <18.058325, 17.652620, 25.453758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.336529, 17.368792, 25.408545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514237, -0.381697, -0.768028,
		0.501826, 0.592296, -0.630362,
		0.695508, -0.709572, -0.113035,
		18.545181, 17.155920, 25.374634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.152994, 17.644060, 24.898924>,  <18.058325, 17.652620, 25.453758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.152994, 17.644060, 24.898924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.254183, 17.269560, 24.996443>,  <18.314896, 17.044859, 25.054955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.254183, 17.269560, 24.996443>,  <18.152994, 17.644060, 24.898924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.254183, 17.269560, 24.996443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580400, -0.348475, -0.736003,
		0.774042, 0.044686, -0.631555,
		0.252970, -0.936252, 0.243798,
		18.330074, 16.988684, 25.069582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.108398, 17.338694, 24.246658>,  <18.152994, 17.644060, 24.898924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.108398, 17.338694, 24.246658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.092009, 17.018776, 24.486208>,  <18.082174, 16.826826, 24.629938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.092009, 17.018776, 24.486208>,  <18.108398, 17.338694, 24.246658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.092009, 17.018776, 24.486208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458712, -0.517422, -0.722397,
		0.887640, -0.304309, -0.345675,
		-0.040972, -0.799794, 0.598875,
		18.079718, 16.778837, 24.665871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390018, 16.711481, 23.804152>,  <18.108398, 17.338694, 24.246658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390018, 16.711481, 23.804152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.191385, 16.566032, 24.119411>,  <18.072205, 16.478764, 24.308567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.191385, 16.566032, 24.119411>,  <18.390018, 16.711481, 23.804152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.191385, 16.566032, 24.119411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343766, -0.751380, -0.563252,
		0.797013, -0.550641, 0.248121,
		-0.496584, -0.363624, 0.788151,
		18.042410, 16.456945, 24.355856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.636448, 16.011683, 23.959356>,  <18.390018, 16.711481, 23.804152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.636448, 16.011683, 23.959356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258701, 16.033978, 24.089012>,  <18.032053, 16.047354, 24.166805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258701, 16.033978, 24.089012>,  <18.636448, 16.011683, 23.959356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258701, 16.033978, 24.089012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278341, -0.660458, -0.697367,
		0.175213, -0.748791, 0.639228,
		-0.944366, 0.055736, 0.324140,
		17.975391, 16.050697, 24.186255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.367249, 15.440272, 23.603527>,  <18.636448, 16.011683, 23.959356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.367249, 15.440272, 23.603527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.052559, 15.618793, 23.774117>,  <17.863745, 15.725904, 23.876471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.052559, 15.618793, 23.774117>,  <18.367249, 15.440272, 23.603527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.052559, 15.618793, 23.774117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611121, -0.660634, -0.435998,
		0.087159, -0.603638, 0.792480,
		-0.786724, 0.446300, 0.426476,
		17.816542, 15.752683, 23.902060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.940903, 14.881390, 23.944983>,  <18.367249, 15.440272, 23.603527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.940903, 14.881390, 23.944983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.706850, 15.194236, 23.859270>,  <17.566418, 15.381944, 23.807842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.706850, 15.194236, 23.859270>,  <17.940903, 14.881390, 23.944983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.706850, 15.194236, 23.859270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663432, -0.613641, -0.428138,
		-0.466344, -0.108358, 0.877942,
		-0.585133, 0.782114, -0.214280,
		17.531311, 15.428870, 23.794985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.152203, 14.674230, 24.132240>,  <17.940903, 14.881390, 23.944983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.152203, 14.674230, 24.132240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.150843, 14.951743, 23.844170>,  <17.150026, 15.118251, 23.671328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.150843, 14.951743, 23.844170>,  <17.152203, 14.674230, 24.132240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.150843, 14.951743, 23.844170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627361, -0.562302, -0.538734,
		-0.778721, 0.449980, 0.437163,
		-0.003398, 0.693783, -0.720176,
		17.149824, 15.159878, 23.628117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.554834, 14.665590, 24.004215>,  <17.152203, 14.674230, 24.132240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.554834, 14.665590, 24.004215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.675325, 14.864126, 23.678539>,  <16.747620, 14.983248, 23.483133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.675325, 14.864126, 23.678539>,  <16.554834, 14.665590, 24.004215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.675325, 14.864126, 23.678539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680900, -0.485801, -0.548063,
		-0.667560, 0.719475, 0.191621,
		0.301228, 0.496339, -0.814192,
		16.765694, 15.013028, 23.434282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.943749, 14.830603, 23.736366>,  <16.554834, 14.665590, 24.004215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.943749, 14.830603, 23.736366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183884, 14.897367, 23.423512>,  <16.327965, 14.937427, 23.235798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.183884, 14.897367, 23.423512>,  <15.943749, 14.830603, 23.736366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.183884, 14.897367, 23.423512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701362, -0.360067, -0.615177,
		-0.384302, 0.917874, -0.099096,
		0.600336, 0.166912, -0.782136,
		16.363985, 14.947441, 23.188871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.509867, 15.132328, 23.225912>,  <15.943749, 14.830603, 23.736366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.509867, 15.132328, 23.225912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.834170, 14.992454, 23.038128>,  <16.028753, 14.908529, 22.925457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.834170, 14.992454, 23.038128>,  <15.509867, 15.132328, 23.225912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.834170, 14.992454, 23.038128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574557, -0.321857, -0.752524,
		0.112048, 0.879846, -0.461862,
		0.810759, -0.349685, -0.469458,
		16.077398, 14.887548, 22.897291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.432190, 15.239956, 22.529369>,  <15.509867, 15.132328, 23.225912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.432190, 15.239956, 22.529369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.725838, 14.968554, 22.518808>,  <15.902026, 14.805712, 22.512472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.725838, 14.968554, 22.518808>,  <15.432190, 15.239956, 22.529369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.725838, 14.968554, 22.518808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362369, -0.358596, -0.860290,
		0.574245, 0.641122, -0.509122,
		0.734120, -0.678507, -0.026401,
		15.946074, 14.765001, 22.510887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.841084, 15.245347, 21.796217>,  <15.432190, 15.239956, 22.529369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.841084, 15.245347, 21.796217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.880214, 14.882750, 21.960508>,  <15.903691, 14.665191, 22.059084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.880214, 14.882750, 21.960508>,  <15.841084, 15.245347, 21.796217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.880214, 14.882750, 21.960508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266353, -0.421500, -0.866830,
		0.958899, -0.024603, -0.282680,
		0.097823, -0.906494, 0.410729,
		15.909561, 14.610801, 22.083727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188509, 14.964894, 21.382582>,  <15.841084, 15.245347, 21.796217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.188509, 14.964894, 21.382582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.033897, 14.652309, 21.578505>,  <15.941131, 14.464759, 21.696058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.033897, 14.652309, 21.578505>,  <16.188509, 14.964894, 21.382582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.033897, 14.652309, 21.578505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345829, -0.369526, -0.862469,
		0.854984, -0.502759, -0.127420,
		-0.386529, -0.781463, 0.489808,
		15.917939, 14.417871, 21.725447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.423435, 14.392917, 20.932573>,  <16.188509, 14.964894, 21.382582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.423435, 14.392917, 20.932573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.127415, 14.257812, 21.165207>,  <15.949802, 14.176750, 21.304787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.127415, 14.257812, 21.165207>,  <16.423435, 14.392917, 20.932573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.127415, 14.257812, 21.165207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506292, -0.289436, -0.812339,
		0.442708, -0.895625, 0.043192,
		-0.740052, -0.337762, 0.581584,
		15.905399, 14.156484, 21.339682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.300867, 13.701134, 20.674034>,  <16.423435, 14.392917, 20.932573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.300867, 13.701134, 20.674034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.970285, 13.826764, 20.860937>,  <15.771936, 13.902143, 20.973078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.970285, 13.826764, 20.860937>,  <16.300867, 13.701134, 20.674034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.970285, 13.826764, 20.860937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504430, -0.044483, -0.862306,
		-0.250046, -0.948355, 0.195193,
		-0.826455, 0.314077, 0.467256,
		15.722349, 13.920987, 21.001114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.818801, 13.431911, 20.258471>,  <16.300867, 13.701134, 20.674034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.818801, 13.431911, 20.258471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.586143, 13.624931, 20.520411>,  <15.446548, 13.740744, 20.677574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.586143, 13.624931, 20.520411>,  <15.818801, 13.431911, 20.258471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.586143, 13.624931, 20.520411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809022, -0.259362, -0.527461,
		-0.084684, -0.836585, 0.541252,
		-0.581647, 0.482553, 0.654851,
		15.411649, 13.769697, 20.716866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.315426, 12.936584, 20.406857>,  <15.818801, 13.431911, 20.258471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.315426, 12.936584, 20.406857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.197371, 13.316471, 20.448679>,  <15.126539, 13.544403, 20.473772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.197371, 13.316471, 20.448679>,  <15.315426, 12.936584, 20.406857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.197371, 13.316471, 20.448679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556453, -0.081897, -0.826833,
		-0.776695, -0.302208, 0.552644,
		-0.295135, 0.949717, 0.104556,
		15.108830, 13.601386, 20.480045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.574739, 12.965567, 20.466270>,  <15.315426, 12.936584, 20.406857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.574739, 12.965567, 20.466270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.675128, 13.336035, 20.353683>,  <14.735362, 13.558315, 20.286131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.675128, 13.336035, 20.353683>,  <14.574739, 12.965567, 20.466270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.675128, 13.336035, 20.353683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756523, 0.006270, -0.653937,
		-0.603892, 0.377056, 0.702242,
		0.250974, 0.926169, -0.281466,
		14.750421, 13.613886, 20.269243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.942799, 13.383472, 20.441912>,  <14.574739, 12.965567, 20.466270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.942799, 13.383472, 20.441912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.213332, 13.554748, 20.202169>,  <14.375652, 13.657513, 20.058325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.213332, 13.554748, 20.202169>,  <13.942799, 13.383472, 20.441912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.213332, 13.554748, 20.202169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680504, 0.051782, -0.730913,
		-0.281933, 0.902205, 0.326406,
		0.676335, 0.428189, -0.599355,
		14.416232, 13.683205, 20.022364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.652584, 13.985096, 20.167194>,  <13.942799, 13.383472, 20.441912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.652584, 13.985096, 20.167194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.930833, 13.876451, 19.901161>,  <14.097782, 13.811265, 19.741541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.930833, 13.876451, 19.901161>,  <13.652584, 13.985096, 20.167194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.930833, 13.876451, 19.901161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660621, 0.121933, -0.740751,
		0.282293, 0.954651, -0.094613,
		0.695623, -0.271612, -0.665083,
		14.139520, 13.794968, 19.701635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.451395, 14.337100, 19.546898>,  <13.652584, 13.985096, 20.167194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.451395, 14.337100, 19.546898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.722467, 14.074781, 19.413824>,  <13.885111, 13.917390, 19.333981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.722467, 14.074781, 19.413824>,  <13.451395, 14.337100, 19.546898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.722467, 14.074781, 19.413824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508719, -0.091416, -0.856065,
		0.530992, 0.749382, -0.395568,
		0.677681, -0.655797, -0.332684,
		13.925772, 13.878042, 19.314018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.556979, 14.516102, 18.854834>,  <13.451395, 14.337100, 19.546898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.556979, 14.516102, 18.854834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.654200, 14.131786, 18.908218>,  <13.712532, 13.901197, 18.940250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.654200, 14.131786, 18.908218>,  <13.556979, 14.516102, 18.854834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.654200, 14.131786, 18.908218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516477, -0.244645, -0.820610,
		0.821083, 0.130520, -0.555686,
		0.243052, -0.960788, 0.133463,
		13.727116, 13.843550, 18.948257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.899694, 14.335478, 18.165840>,  <13.556979, 14.516102, 18.854834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.899694, 14.335478, 18.165840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.749107, 14.022060, 18.363560>,  <13.658755, 13.834010, 18.482191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.749107, 14.022060, 18.363560>,  <13.899694, 14.335478, 18.165840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.749107, 14.022060, 18.363560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309538, -0.396507, -0.864274,
		0.873189, -0.478375, -0.093265,
		-0.376467, -0.783543, 0.494300,
		13.636168, 13.786998, 18.511850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.556946, 14.504615, 17.930717>,  <13.899694, 14.335478, 18.165840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.556946, 14.504615, 17.930717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.871243, 14.575277, 17.693604>,  <15.059822, 14.617675, 17.551334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.871243, 14.575277, 17.693604>,  <14.556946, 14.504615, 17.930717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.871243, 14.575277, 17.693604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480012, 0.430284, 0.764490,
		0.390116, -0.885240, 0.253298,
		0.785747, 0.176654, -0.592787,
		15.106967, 14.628274, 17.515768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.241360, 14.335996, 18.359529>,  <14.556946, 14.504615, 17.930717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.241360, 14.335996, 18.359529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.276165, 14.597672, 18.059006>,  <15.297049, 14.754677, 17.878693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.276165, 14.597672, 18.059006>,  <15.241360, 14.335996, 18.359529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.276165, 14.597672, 18.059006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559125, 0.592113, 0.580329,
		0.824505, -0.470571, -0.314252,
		0.087013, 0.654190, -0.751308,
		15.302269, 14.793928, 17.833612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.978890, 14.345996, 18.231476>,  <15.241360, 14.335996, 18.359529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.978890, 14.345996, 18.231476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.770615, 14.671201, 18.127251>,  <15.645649, 14.866323, 18.064714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.770615, 14.671201, 18.127251>,  <15.978890, 14.345996, 18.231476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.770615, 14.671201, 18.127251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620422, 0.569991, 0.538689,
		0.586481, 0.118829, -0.801199,
		-0.520688, 0.813012, -0.260565,
		15.614408, 14.915105, 18.049082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.437437, 14.918316, 17.876976>,  <15.978890, 14.345996, 18.231476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.437437, 14.918316, 17.876976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.107515, 15.101789, 18.009224>,  <15.909563, 15.211873, 18.088573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.107515, 15.101789, 18.009224>,  <16.437437, 14.918316, 17.876976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.107515, 15.101789, 18.009224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562698, 0.608567, 0.559479,
		0.055418, 0.647500, -0.760048,
		-0.824803, 0.458683, 0.330621,
		15.860074, 15.239394, 18.108410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.636868, 15.597012, 17.834949>,  <16.437437, 14.918316, 17.876976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.636868, 15.597012, 17.834949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.318047, 15.609008, 18.076214>,  <16.126753, 15.616205, 18.220972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.318047, 15.609008, 18.076214>,  <16.636868, 15.597012, 17.834949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.318047, 15.609008, 18.076214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460189, 0.676919, 0.574463,
		-0.391063, 0.735447, -0.553342,
		-0.797055, 0.029990, 0.603162,
		16.078930, 15.618005, 18.257162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628820, 16.249413, 18.053583>,  <16.636868, 15.597012, 17.834949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628820, 16.249413, 18.053583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.412388, 16.058884, 18.330812>,  <16.282528, 15.944567, 18.497150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.412388, 16.058884, 18.330812>,  <16.628820, 16.249413, 18.053583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.412388, 16.058884, 18.330812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436704, 0.545162, 0.715603,
		-0.718693, 0.689867, -0.086966,
		-0.541082, -0.476321, 0.693072,
		16.250063, 15.915987, 18.538734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.509232, 16.763035, 18.495966>,  <16.628820, 16.249413, 18.053583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.509232, 16.763035, 18.495966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.443682, 16.420694, 18.692194>,  <16.404352, 16.215290, 18.809931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.443682, 16.420694, 18.692194>,  <16.509232, 16.763035, 18.495966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.443682, 16.420694, 18.692194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512425, 0.351088, 0.783682,
		-0.842951, 0.379806, 0.381027,
		-0.163873, -0.855853, 0.490572,
		16.394520, 16.163939, 18.839365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.481333, 17.088623, 19.151627>,  <16.509232, 16.763035, 18.495966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.481333, 17.088623, 19.151627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.531258, 16.693748, 19.191387>,  <16.561213, 16.456823, 19.215242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.531258, 16.693748, 19.191387>,  <16.481333, 17.088623, 19.151627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.531258, 16.693748, 19.191387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600149, 0.154895, 0.784747,
		-0.790090, -0.038292, 0.611793,
		0.124813, -0.987189, 0.099400,
		16.568701, 16.397593, 19.221207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.319828, 16.908075, 19.884239>,  <16.481333, 17.088623, 19.151627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.319828, 16.908075, 19.884239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.540133, 16.611437, 19.731033>,  <16.672316, 16.433455, 19.639111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.540133, 16.611437, 19.731033>,  <16.319828, 16.908075, 19.884239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.540133, 16.611437, 19.731033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611410, 0.046076, 0.789971,
		-0.568192, -0.669262, 0.478796,
		0.550759, -0.741596, -0.383014,
		16.705360, 16.388958, 19.616129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.455727, 16.512596, 20.381590>,  <16.319828, 16.908075, 19.884239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.455727, 16.512596, 20.381590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.761545, 16.423933, 20.139488>,  <16.945036, 16.370735, 19.994226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.761545, 16.423933, 20.139488>,  <16.455727, 16.512596, 20.381590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.761545, 16.423933, 20.139488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642060, 0.179145, 0.745430,
		-0.056802, -0.958527, 0.279283,
		0.764547, -0.221659, -0.605256,
		16.990910, 16.357435, 19.957911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.769987, 16.064474, 20.767658>,  <16.455727, 16.512596, 20.381590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.769987, 16.064474, 20.767658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.065041, 16.162249, 20.515898>,  <17.242073, 16.220913, 20.364841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.065041, 16.162249, 20.515898>,  <16.769987, 16.064474, 20.767658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.065041, 16.162249, 20.515898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607988, 0.164988, 0.776614,
		0.293678, -0.955525, -0.026915,
		0.737634, 0.244439, -0.629401,
		17.286331, 16.235580, 20.327078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.330616, 15.850605, 21.071423>,  <16.769987, 16.064474, 20.767658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.330616, 15.850605, 21.071423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497070, 16.107971, 20.814409>,  <17.596943, 16.262390, 20.660202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.497070, 16.107971, 20.814409>,  <17.330616, 15.850605, 21.071423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.497070, 16.107971, 20.814409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720287, 0.198041, 0.664805,
		0.554993, -0.739457, -0.381032,
		0.416135, 0.643415, -0.642533,
		17.621910, 16.300995, 20.621649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.962128, 15.632422, 20.975323>,  <17.330616, 15.850605, 21.071423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.962128, 15.632422, 20.975323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.961540, 16.027628, 20.913580>,  <17.961187, 16.264751, 20.876535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.961540, 16.027628, 20.913580>,  <17.962128, 15.632422, 20.975323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.961540, 16.027628, 20.913580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843791, 0.084064, 0.530046,
		0.536669, -0.129464, -0.833802,
		-0.001471, 0.988014, -0.154355,
		17.961100, 16.324032, 20.867273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694593, 15.838473, 20.974138>,  <17.962128, 15.632422, 20.975323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694593, 15.838473, 20.974138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.515934, 16.190172, 21.040384>,  <18.408737, 16.401192, 21.080132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.515934, 16.190172, 21.040384>,  <18.694593, 15.838473, 20.974138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.515934, 16.190172, 21.040384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768948, 0.282603, 0.573458,
		0.457409, 0.383483, -0.802320,
		-0.446649, 0.879248, 0.165614,
		18.381939, 16.453947, 21.090069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.268723, 16.267019, 21.016722>,  <18.694593, 15.838473, 20.974138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.268723, 16.267019, 21.016722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.985483, 16.502636, 21.172480>,  <18.815540, 16.644005, 21.265934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.985483, 16.502636, 21.172480>,  <19.268723, 16.267019, 21.016722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.985483, 16.502636, 21.172480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665618, 0.372747, 0.646539,
		0.235692, 0.717001, -0.656018,
		-0.708098, 0.589041, 0.389395,
		18.773054, 16.679348, 21.289299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.540129, 16.990805, 20.989840>,  <19.268723, 16.267019, 21.016722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.540129, 16.990805, 20.989840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.262691, 16.954967, 21.275749>,  <19.096230, 16.933466, 21.447294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.262691, 16.954967, 21.275749>,  <19.540129, 16.990805, 20.989840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.262691, 16.954967, 21.275749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550559, 0.573951, 0.606189,
		-0.464554, 0.813974, -0.348763,
		-0.693595, -0.089593, 0.714772,
		19.054613, 16.928089, 21.490181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.603170, 17.592613, 21.279701>,  <19.540129, 16.990805, 20.989840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.603170, 17.592613, 21.279701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.392302, 17.411163, 21.567122>,  <19.265779, 17.302294, 21.739574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.392302, 17.411163, 21.567122>,  <19.603170, 17.592613, 21.279701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.392302, 17.411163, 21.567122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564569, 0.445017, 0.695142,
		-0.635099, 0.772132, 0.021501,
		-0.527173, -0.453623, 0.718551,
		19.234150, 17.275076, 21.782686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.535280, 17.997332, 21.791372>,  <19.603170, 17.592613, 21.279701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.535280, 17.997332, 21.791372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.405762, 17.687254, 22.008345>,  <19.328051, 17.501207, 22.138527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.405762, 17.687254, 22.008345>,  <19.535280, 17.997332, 21.791372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.405762, 17.687254, 22.008345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399702, 0.407564, 0.821054,
		-0.857552, 0.482664, 0.177879,
		-0.323797, -0.775195, 0.542429,
		19.308622, 17.454695, 22.171074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.924923, 18.189600, 22.394800>,  <19.535280, 17.997332, 21.791372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.924923, 18.189600, 22.394800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.144997, 17.873158, 22.501719>,  <19.277040, 17.683292, 22.565870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.144997, 17.873158, 22.501719>,  <18.924923, 18.189600, 22.394800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.144997, 17.873158, 22.501719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315121, 0.493131, 0.810876,
		-0.773302, -0.361900, 0.520607,
		0.550184, -0.791107, 0.267297,
		19.310051, 17.635826, 22.581907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.896635, 18.168188, 23.135605>,  <18.924923, 18.189600, 22.394800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.896635, 18.168188, 23.135605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.204573, 17.930616, 23.042147>,  <19.389336, 17.788074, 22.986073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.204573, 17.930616, 23.042147>,  <18.896635, 18.168188, 23.135605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.204573, 17.930616, 23.042147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480691, 0.298746, 0.824431,
		-0.419852, -0.746995, 0.515483,
		0.769844, -0.593928, -0.233645,
		19.435526, 17.752438, 22.972054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.069300, 17.927158, 23.728212>,  <18.896635, 18.168188, 23.135605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.069300, 17.927158, 23.728212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.399794, 17.882786, 23.507294>,  <19.598089, 17.856161, 23.374743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.399794, 17.882786, 23.507294>,  <19.069300, 17.927158, 23.728212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.399794, 17.882786, 23.507294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542402, 0.421405, 0.726786,
		0.152116, -0.900062, 0.408350,
		0.826233, -0.110934, -0.552297,
		19.647663, 17.849506, 23.341604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.522102, 17.604500, 24.181887>,  <19.069300, 17.927158, 23.728212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.522102, 17.604500, 24.181887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.731131, 17.784447, 23.892185>,  <19.856548, 17.892414, 23.718365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.731131, 17.784447, 23.892185>,  <19.522102, 17.604500, 24.181887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.731131, 17.784447, 23.892185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630174, 0.368375, 0.683506,
		0.574283, -0.813584, -0.090993,
		0.522570, 0.449867, -0.724252,
		19.887901, 17.919407, 23.674910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.236116, 17.513161, 24.315386>,  <19.522102, 17.604500, 24.181887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.236116, 17.513161, 24.315386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.239109, 17.832941, 24.075111>,  <20.240904, 18.024809, 23.930946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.239109, 17.832941, 24.075111>,  <20.236116, 17.513161, 24.315386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.239109, 17.832941, 24.075111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626550, 0.464423, 0.625896,
		0.779345, -0.381042, -0.497421,
		0.007479, 0.799449, -0.600688,
		20.241352, 18.072775, 23.894905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.934158, 17.627789, 24.255730>,  <20.236116, 17.513161, 24.315386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.934158, 17.627789, 24.255730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.764311, 17.970844, 24.139696>,  <20.662401, 18.176678, 24.070076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.764311, 17.970844, 24.139696>,  <20.934158, 17.627789, 24.255730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.764311, 17.970844, 24.139696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608415, 0.507580, 0.610077,
		0.670468, 0.082559, -0.737331,
		-0.424621, 0.857641, -0.290086,
		20.636925, 18.228136, 24.052670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.425682, 18.079262, 24.121010>,  <20.934158, 17.627789, 24.255730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.425682, 18.079262, 24.121010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.098391, 18.293764, 24.203892>,  <20.902016, 18.422464, 24.253620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.098391, 18.293764, 24.203892>,  <21.425682, 18.079262, 24.121010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.098391, 18.293764, 24.203892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527045, 0.555756, 0.642929,
		0.229620, 0.635268, -0.737366,
		-0.818228, 0.536255, 0.207203,
		20.852922, 18.454641, 24.266052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.694023, 18.857372, 23.986109>,  <21.425682, 18.079262, 24.121010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.694023, 18.857372, 23.986109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.351591, 18.883123, 24.191235>,  <21.146132, 18.898573, 24.314310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.351591, 18.883123, 24.191235>,  <21.694023, 18.857372, 23.986109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.351591, 18.883123, 24.191235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385871, 0.739709, 0.551302,
		-0.343844, 0.669840, -0.658092,
		-0.856081, 0.064377, 0.512816,
		21.094767, 18.902437, 24.345079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.485592, 19.591715, 24.021605>,  <21.694023, 18.857372, 23.986109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.485592, 19.591715, 24.021605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.287317, 19.416256, 24.321440>,  <21.168352, 19.310980, 24.501341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.287317, 19.416256, 24.321440>,  <21.485592, 19.591715, 24.021605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.287317, 19.416256, 24.321440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363490, 0.679079, 0.637752,
		-0.788779, 0.588592, -0.177165,
		-0.495684, -0.438648, 0.749590,
		21.138613, 19.284662, 24.546316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.038961, 20.083431, 24.277523>,  <21.485592, 19.591715, 24.021605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.038961, 20.083431, 24.277523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108137, 19.806278, 24.557526>,  <21.149643, 19.639986, 24.725527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.108137, 19.806278, 24.557526>,  <21.038961, 20.083431, 24.277523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108137, 19.806278, 24.557526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218479, 0.719995, 0.658691,
		-0.960395, 0.039024, 0.275895,
		0.172938, -0.692881, 0.700006,
		21.160019, 19.598413, 24.767527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.083572, 20.454920, 24.882301>,  <21.038961, 20.083431, 24.277523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.083572, 20.454920, 24.882301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.219177, 20.103722, 25.017473>,  <21.300539, 19.893003, 25.098576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.219177, 20.103722, 25.017473>,  <21.083572, 20.454920, 24.882301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.219177, 20.103722, 25.017473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512702, 0.473593, 0.716133,
		-0.788802, -0.069520, 0.610703,
		0.339010, -0.877996, 0.337928,
		21.320881, 19.840322, 25.118851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004955, 20.449190, 25.614161>,  <21.083572, 20.454920, 24.882301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004955, 20.449190, 25.614161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.300945, 20.188829, 25.546318>,  <21.478539, 20.032614, 25.505613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.300945, 20.188829, 25.546318>,  <21.004955, 20.449190, 25.614161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.300945, 20.188829, 25.546318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574629, 0.480664, 0.662392,
		-0.349628, -0.587613, 0.729706,
		0.739974, -0.650902, -0.169606,
		21.522938, 19.993559, 25.495436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.271206, 20.205912, 26.307074>,  <21.004955, 20.449190, 25.614161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.271206, 20.205912, 26.307074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.574219, 20.093502, 26.071388>,  <21.756025, 20.026056, 25.929977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.574219, 20.093502, 26.071388>,  <21.271206, 20.205912, 26.307074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.574219, 20.093502, 26.071388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650858, 0.394705, 0.648531,
		0.050311, -0.874776, 0.481909,
		0.757531, -0.281026, -0.589212,
		21.801477, 20.009193, 25.894625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.768169, 20.778700, 26.418913>,  <21.271206, 20.205912, 26.307074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.768169, 20.778700, 26.418913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.101404, 20.977139, 26.321053>,  <21.301346, 21.096201, 26.262337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.101404, 20.977139, 26.321053>,  <20.768169, 20.778700, 26.418913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.101404, 20.977139, 26.321053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322593, 0.795037, 0.513663,
		0.449333, -0.349004, 0.822372,
		0.833087, 0.496097, -0.244650,
		21.351330, 21.125967, 26.247658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.116272, 21.038376, 27.072880>,  <20.768169, 20.778700, 26.418913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.116272, 21.038376, 27.072880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.155704, 21.279421, 26.756111>,  <21.179363, 21.424047, 26.566050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.155704, 21.279421, 26.756111>,  <21.116272, 21.038376, 27.072880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.155704, 21.279421, 26.756111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497991, 0.718859, 0.485022,
		0.861561, 0.346558, 0.370959,
		0.098579, 0.602610, -0.791923,
		21.185278, 21.460203, 26.518534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.846169, 21.029121, 26.664494>,  <21.116272, 21.038376, 27.072880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.846169, 21.029121, 26.664494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.789738, 21.425066, 26.657881>,  <21.755880, 21.662632, 26.653913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.789738, 21.425066, 26.657881>,  <21.846169, 21.029121, 26.664494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.789738, 21.425066, 26.657881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607046, -0.073301, 0.791279,
		0.782044, 0.121666, 0.611232,
		-0.141076, 0.989861, -0.016532,
		21.747416, 21.722025, 26.652922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.932552, 21.201284, 27.393377>,  <21.846169, 21.029121, 26.664494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.932552, 21.201284, 27.393377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.699368, 21.466562, 27.205620>,  <21.559458, 21.625729, 27.092964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.699368, 21.466562, 27.205620>,  <21.932552, 21.201284, 27.393377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.699368, 21.466562, 27.205620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682441, -0.086139, 0.725847,
		0.440944, 0.743475, 0.502806,
		-0.582960, 0.663194, -0.469396,
		21.524479, 21.665520, 27.064800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.564674, 21.555435, 27.975277>,  <21.932552, 21.201284, 27.393377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.564674, 21.555435, 27.975277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.359648, 21.561739, 27.631876>,  <21.236631, 21.565521, 27.425835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.359648, 21.561739, 27.631876>,  <21.564674, 21.555435, 27.975277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.359648, 21.561739, 27.631876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858167, 0.024068, 0.512807,
		0.028743, 0.999586, 0.001186,
		-0.512566, 0.015758, -0.858503,
		21.205877, 21.566465, 27.374325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.892780, 21.971685, 28.090784>,  <21.564674, 21.555435, 27.975277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.892780, 21.971685, 28.090784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831497, 21.718641, 27.787117>,  <20.794727, 21.566814, 27.604918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831497, 21.718641, 27.787117>,  <20.892780, 21.971685, 28.090784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.831497, 21.718641, 27.787117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951104, -0.114101, 0.287022,
		-0.268194, 0.766021, -0.584195,
		-0.153208, -0.632608, -0.759167,
		20.785534, 21.528858, 27.559366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.987907, 22.501596, 28.719358>,  <20.892780, 21.971685, 28.090784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.987907, 22.501596, 28.719358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.632298, 22.661942, 28.807854>,  <20.418932, 22.758148, 28.860950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.632298, 22.661942, 28.807854>,  <20.987907, 22.501596, 28.719358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.632298, 22.661942, 28.807854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448877, -0.667831, -0.593726,
		-0.090253, -0.627145, 0.773656,
		-0.889024, 0.400862, 0.221237,
		20.365591, 22.782200, 28.874226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.476414, 21.944563, 28.929510>,  <20.987907, 22.501596, 28.719358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.476414, 21.944563, 28.929510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311806, 22.256067, 28.740118>,  <20.213041, 22.442970, 28.626482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.311806, 22.256067, 28.740118>,  <20.476414, 21.944563, 28.929510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.311806, 22.256067, 28.740118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465623, -0.626239, -0.625316,
		-0.783483, -0.036866, 0.620319,
		-0.411521, 0.778759, -0.473482,
		20.188349, 22.489695, 28.598074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.692499, 21.786993, 28.856956>,  <20.476414, 21.944563, 28.929510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.692499, 21.786993, 28.856956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.771036, 22.057751, 28.573193>,  <19.818159, 22.220205, 28.402935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.771036, 22.057751, 28.573193>,  <19.692499, 21.786993, 28.856956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.771036, 22.057751, 28.573193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594208, -0.493371, -0.635219,
		-0.779979, 0.546257, 0.305347,
		0.196343, 0.676896, -0.709409,
		19.829939, 22.260820, 28.360371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.993248, 22.015251, 28.554338>,  <19.692499, 21.786993, 28.856956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.993248, 22.015251, 28.554338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.297213, 22.069902, 28.300135>,  <19.479591, 22.102694, 28.147614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.297213, 22.069902, 28.300135>,  <18.993248, 22.015251, 28.554338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.297213, 22.069902, 28.300135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522250, -0.453778, -0.722039,
		-0.387031, 0.880578, -0.273475,
		0.759909, 0.136629, -0.635508,
		19.525185, 22.110891, 28.109482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.677187, 22.163244, 28.060627>,  <18.993248, 22.015251, 28.554338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.677187, 22.163244, 28.060627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.022636, 22.081141, 27.876444>,  <19.229906, 22.031878, 27.765934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.022636, 22.081141, 27.876444>,  <18.677187, 22.163244, 28.060627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.022636, 22.081141, 27.876444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504090, -0.339084, -0.794302,
		0.006904, 0.918091, -0.396310,
		0.863624, -0.205260, -0.460459,
		19.281723, 22.019562, 27.738306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454607, 22.240208, 27.368639>,  <18.677187, 22.163244, 28.060627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454607, 22.240208, 27.368639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.813784, 22.064211, 27.364511>,  <19.029289, 21.958612, 27.362036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.813784, 22.064211, 27.364511>,  <18.454607, 22.240208, 27.368639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.813784, 22.064211, 27.364511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235492, -0.460529, -0.855837,
		0.371811, 0.770922, -0.517143,
		0.897942, -0.439992, -0.010317,
		19.083166, 21.932213, 27.361416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.834383, 22.381962, 26.643389>,  <18.454607, 22.240208, 27.368639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.834383, 22.381962, 26.643389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.998707, 22.043869, 26.780106>,  <19.097301, 21.841013, 26.862135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.998707, 22.043869, 26.780106>,  <18.834383, 22.381962, 26.643389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.998707, 22.043869, 26.780106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167583, -0.438501, -0.882968,
		0.896187, 0.305454, -0.321787,
		0.410810, -0.845231, 0.341790,
		19.121950, 21.790300, 26.882643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194880, 22.088718, 26.030672>,  <18.834383, 22.381962, 26.643389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.194880, 22.088718, 26.030672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.160721, 21.775518, 26.277124>,  <19.140224, 21.587599, 26.424995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.160721, 21.775518, 26.277124>,  <19.194880, 22.088718, 26.030672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.160721, 21.775518, 26.277124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007930, -0.617837, -0.786266,
		0.996315, -0.072032, 0.046553,
		-0.085399, -0.783000, 0.616132,
		19.135101, 21.540619, 26.461964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.791542, 21.557421, 25.985029>,  <19.194880, 22.088718, 26.030672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.791542, 21.557421, 25.985029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.442585, 21.404255, 26.106560>,  <19.233212, 21.312355, 26.179478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.442585, 21.404255, 26.106560>,  <19.791542, 21.557421, 25.985029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.442585, 21.404255, 26.106560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066330, -0.523075, -0.849702,
		0.484287, -0.761425, 0.430927,
		-0.872391, -0.382916, 0.303824,
		19.180868, 21.289381, 26.197706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.761190, 20.984644, 25.654451>,  <19.791542, 21.557421, 25.985029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.761190, 20.984644, 25.654451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.407719, 20.938967, 25.836031>,  <19.195635, 20.911560, 25.944979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.407719, 20.938967, 25.836031>,  <19.761190, 20.984644, 25.654451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.407719, 20.938967, 25.836031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324538, -0.549391, -0.769964,
		0.337322, -0.827725, 0.448425,
		-0.883679, -0.114195, 0.453949,
		19.142614, 20.904709, 25.972216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.557812, 20.270185, 25.444353>,  <19.761190, 20.984644, 25.654451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.557812, 20.270185, 25.444353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.230408, 20.479536, 25.539108>,  <19.033966, 20.605146, 25.595961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.230408, 20.479536, 25.539108>,  <19.557812, 20.270185, 25.444353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.230408, 20.479536, 25.539108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458350, -0.346346, -0.818511,
		-0.346346, -0.778537, 0.523378,
		0.818511, -0.523378, -0.236887,
		18.984854, 20.636549, 25.610174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.995512, 19.700487, 25.360687>,  <19.557812, 20.270185, 25.444353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.995512, 19.700487, 25.360687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.814312, 20.055426, 25.395109>,  <18.705591, 20.268389, 25.415762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.814312, 20.055426, 25.395109>,  <18.995512, 19.700487, 25.360687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.814312, 20.055426, 25.395109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730368, -0.314035, -0.606584,
		-0.511226, -0.337635, 0.790348,
		-0.453001, 0.887347, 0.086055,
		18.678411, 20.321630, 25.420925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.170746, 19.649921, 25.347069>,  <18.995512, 19.700487, 25.360687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.170746, 19.649921, 25.347069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235201, 20.028904, 25.236538>,  <18.273874, 20.256294, 25.170219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.235201, 20.028904, 25.236538>,  <18.170746, 19.649921, 25.347069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.235201, 20.028904, 25.236538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617150, -0.121762, -0.777368,
		-0.770170, 0.295798, 0.565104,
		0.161136, 0.947458, -0.276329,
		18.283543, 20.313141, 25.153639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.537968, 20.009535, 25.214228>,  <18.170746, 19.649921, 25.347069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.537968, 20.009535, 25.214228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.820734, 20.189669, 24.996065>,  <17.990395, 20.297749, 24.865168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.820734, 20.189669, 24.996065>,  <17.537968, 20.009535, 25.214228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.820734, 20.189669, 24.996065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566652, -0.100891, -0.817757,
		-0.423290, 0.887142, 0.183861,
		0.706917, 0.450333, -0.545407,
		18.032808, 20.324768, 24.832443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133947, 20.277403, 24.708466>,  <17.537968, 20.009535, 25.214228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.133947, 20.277403, 24.708466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.505594, 20.320238, 24.566891>,  <17.728582, 20.345940, 24.481945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.505594, 20.320238, 24.566891>,  <17.133947, 20.277403, 24.708466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.505594, 20.320238, 24.566891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336188, -0.154008, -0.929118,
		-0.154008, 0.982249, -0.107089,
		0.929118, 0.107089, -0.353938,
		17.784330, 20.352365, 24.460709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.036600, 20.642843, 23.980833>,  <17.133947, 20.277403, 24.708466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.036600, 20.642843, 23.980833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.403152, 20.482725, 23.981945>,  <17.623085, 20.386654, 23.982613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.403152, 20.482725, 23.981945>,  <17.036600, 20.642843, 23.980833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.403152, 20.482725, 23.981945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097120, -0.229062, -0.968555,
		0.388346, 0.887296, -0.248785,
		0.916382, -0.400296, 0.002781,
		17.678066, 20.362637, 23.982779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.464128, 20.874460, 23.290638>,  <17.036600, 20.642843, 23.980833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.464128, 20.874460, 23.290638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.626713, 20.535370, 23.426962>,  <17.724262, 20.331915, 23.508757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.626713, 20.535370, 23.426962>,  <17.464128, 20.874460, 23.290638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.626713, 20.535370, 23.426962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004273, -0.374771, -0.927107,
		0.913659, 0.375375, -0.155952,
		0.406459, -0.847727, 0.340809,
		17.748650, 20.281052, 23.529205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.938883, 20.730282, 22.664793>,  <17.464128, 20.874460, 23.290638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.938883, 20.730282, 22.664793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.950665, 20.395565, 22.883484>,  <17.957733, 20.194735, 23.014698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.950665, 20.395565, 22.883484>,  <17.938883, 20.730282, 22.664793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.950665, 20.395565, 22.883484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161886, -0.535749, -0.828713,
		0.986370, 0.112915, 0.119686,
		0.029452, -0.836793, 0.546726,
		17.959499, 20.144527, 23.047503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.585842, 20.399635, 22.503456>,  <17.938883, 20.730282, 22.664793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.585842, 20.399635, 22.503456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.320278, 20.130119, 22.633213>,  <18.160940, 19.968410, 22.711067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.320278, 20.130119, 22.633213>,  <18.585842, 20.399635, 22.503456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.320278, 20.130119, 22.633213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135018, -0.534663, -0.834209,
		0.735521, -0.510043, 0.445943,
		-0.663912, -0.673789, 0.324391,
		18.121105, 19.927982, 22.730530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.853207, 19.746181, 22.327101>,  <18.585842, 20.399635, 22.503456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.853207, 19.746181, 22.327101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.458282, 19.695013, 22.364740>,  <18.221329, 19.664312, 22.387325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.458282, 19.695013, 22.364740>,  <18.853207, 19.746181, 22.327101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.458282, 19.695013, 22.364740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017131, -0.503298, -0.863943,
		0.157878, -0.854591, 0.494720,
		-0.987310, -0.127923, 0.094100,
		18.162090, 19.656637, 22.392971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.663336, 18.963306, 22.242521>,  <18.853207, 19.746181, 22.327101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.663336, 18.963306, 22.242521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.312029, 19.147402, 22.190634>,  <18.101244, 19.257858, 22.159502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.312029, 19.147402, 22.190634>,  <18.663336, 18.963306, 22.242521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.312029, 19.147402, 22.190634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106100, -0.452091, -0.885639,
		-0.466245, -0.764068, 0.445888,
		-0.878270, 0.460233, -0.129718,
		18.048548, 19.285473, 22.151718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.213327, 18.436310, 22.001324>,  <18.663336, 18.963306, 22.242521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.213327, 18.436310, 22.001324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.982090, 18.750847, 21.914167>,  <17.843348, 18.939569, 21.861874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.982090, 18.750847, 21.914167>,  <18.213327, 18.436310, 22.001324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.982090, 18.750847, 21.914167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368001, -0.489586, -0.790495,
		-0.728276, -0.376794, 0.572399,
		-0.578092, 0.786341, -0.217893,
		17.808662, 18.986750, 21.848799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643269, 18.213930, 21.560823>,  <18.213327, 18.436310, 22.001324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.643269, 18.213930, 21.560823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.655872, 18.598192, 21.450445>,  <17.663435, 18.828751, 21.384218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.655872, 18.598192, 21.450445>,  <17.643269, 18.213930, 21.560823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.655872, 18.598192, 21.450445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481696, -0.227308, -0.846345,
		-0.875771, 0.159589, 0.455583,
		0.031510, 0.960657, -0.275944,
		17.665325, 18.886389, 21.367662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.033094, 18.305014, 21.252441>,  <17.643269, 18.213930, 21.560823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.033094, 18.305014, 21.252441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.271297, 18.595581, 21.115219>,  <17.414219, 18.769920, 21.032887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.271297, 18.595581, 21.115219>,  <17.033094, 18.305014, 21.252441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.271297, 18.595581, 21.115219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176817, -0.298038, -0.938035,
		-0.783648, 0.619267, -0.049042,
		0.595510, 0.726417, -0.343054,
		17.449951, 18.813507, 21.012302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.693413, 18.729940, 20.743118>,  <17.033094, 18.305014, 21.252441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.693413, 18.729940, 20.743118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.080292, 18.788122, 20.659815>,  <17.312420, 18.823032, 20.609833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.080292, 18.788122, 20.659815>,  <16.693413, 18.729940, 20.743118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.080292, 18.788122, 20.659815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183558, -0.166528, -0.968801,
		-0.175598, 0.975249, -0.134366,
		0.967198, 0.145456, -0.208257,
		17.370451, 18.831758, 20.597338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.633266, 19.011135, 20.119347>,  <16.693413, 18.729940, 20.743118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.633266, 19.011135, 20.119347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.027267, 18.942715, 20.128384>,  <17.263668, 18.901663, 20.133806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.027267, 18.942715, 20.128384>,  <16.633266, 19.011135, 20.119347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.027267, 18.942715, 20.128384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024029, -0.265670, -0.963765,
		0.170855, 0.948768, -0.265796,
		0.985003, -0.171051, 0.022593,
		17.322769, 18.891399, 20.135162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827078, 19.423197, 19.564497>,  <16.633266, 19.011135, 20.119347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.827078, 19.423197, 19.564497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.102489, 19.144703, 19.645674>,  <17.267736, 18.977608, 19.694380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.102489, 19.144703, 19.645674>,  <16.827078, 19.423197, 19.564497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.102489, 19.144703, 19.645674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125067, -0.161649, -0.978891,
		0.714342, 0.699378, -0.024224,
		0.688530, -0.696233, 0.202942,
		17.309048, 18.935833, 19.706556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.443161, 19.583929, 19.290947>,  <16.827078, 19.423197, 19.564497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.443161, 19.583929, 19.290947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.411804, 19.187038, 19.329597>,  <17.392990, 18.948904, 19.352789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.411804, 19.187038, 19.329597>,  <17.443161, 19.583929, 19.290947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.411804, 19.187038, 19.329597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089879, -0.103565, -0.990553,
		0.992863, -0.068968, 0.097300,
		-0.078393, -0.992229, 0.096627,
		17.388287, 18.889370, 19.358585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.910765, 19.403305, 18.778536>,  <17.443161, 19.583929, 19.290947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.910765, 19.403305, 18.778536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.713676, 19.065990, 18.864416>,  <17.595423, 18.863602, 18.915945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.713676, 19.065990, 18.864416>,  <17.910765, 19.403305, 18.778536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.713676, 19.065990, 18.864416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091511, -0.195148, -0.976495,
		0.865363, -0.500786, 0.018983,
		-0.492720, -0.843286, 0.214701,
		17.565861, 18.813005, 18.928827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.188253, 18.950369, 18.447954>,  <17.910765, 19.403305, 18.778536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.188253, 18.950369, 18.447954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822918, 18.797754, 18.504866>,  <17.603718, 18.706184, 18.539013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.822918, 18.797754, 18.504866>,  <18.188253, 18.950369, 18.447954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.822918, 18.797754, 18.504866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119311, -0.083326, -0.989354,
		0.389332, -0.920589, 0.030583,
		-0.913337, -0.381538, 0.142278,
		17.548916, 18.683292, 18.547548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.090340, 18.377293, 17.916710>,  <18.188253, 18.950369, 18.447954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.090340, 18.377293, 17.916710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717415, 18.469290, 18.028347>,  <17.493660, 18.524488, 18.095329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717415, 18.469290, 18.028347>,  <18.090340, 18.377293, 17.916710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717415, 18.469290, 18.028347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308713, -0.104135, -0.945438,
		-0.188384, -0.967604, 0.168090,
		-0.932313, 0.229997, 0.279094,
		17.437721, 18.538288, 18.112076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.661808, 17.957779, 17.403591>,  <18.090340, 18.377293, 17.916710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.661808, 17.957779, 17.403591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.377771, 18.194355, 17.556412>,  <17.207350, 18.336302, 17.648104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.377771, 18.194355, 17.556412>,  <17.661808, 17.957779, 17.403591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.377771, 18.194355, 17.556412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549788, -0.126748, -0.825632,
		-0.439889, -0.796324, 0.415170,
		-0.710092, 0.591442, 0.382054,
		17.164743, 18.371788, 17.671028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910522, 17.642868, 17.405542>,  <17.661808, 17.957779, 17.403591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910522, 17.642868, 17.405542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.910141, 18.042534, 17.389189>,  <16.909912, 18.282333, 17.379375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.910141, 18.042534, 17.389189>,  <16.910522, 17.642868, 17.405542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.910141, 18.042534, 17.389189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620894, -0.032640, -0.783215,
		-0.783894, 0.024641, 0.620406,
		-0.000951, 0.999163, -0.040886,
		16.909855, 18.342283, 17.376923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.402958, 17.698298, 16.946537>,  <16.910522, 17.642868, 17.405542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.402958, 17.698298, 16.946537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.486544, 18.085974, 16.998703>,  <16.536695, 18.318579, 17.030003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.486544, 18.085974, 16.998703>,  <16.402958, 17.698298, 16.946537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.486544, 18.085974, 16.998703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692031, 0.240779, -0.680528,
		-0.690962, 0.051953, 0.721022,
		0.208963, 0.969188, 0.130416,
		16.549232, 18.376730, 17.037828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.834670, 17.992346, 17.135305>,  <16.402958, 17.698298, 16.946537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.834670, 17.992346, 17.135305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.039404, 18.295742, 16.973955>,  <16.162245, 18.477779, 16.877144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.039404, 18.295742, 16.973955>,  <15.834670, 17.992346, 17.135305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.039404, 18.295742, 16.973955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686630, 0.078999, -0.722702,
		-0.516297, 0.646876, 0.561239,
		0.511836, 0.758493, -0.403377,
		16.192955, 18.523291, 16.852942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.342254, 18.594118, 17.049591>,  <15.834670, 17.992346, 17.135305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.342254, 18.594118, 17.049591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.645956, 18.607903, 16.789640>,  <15.828177, 18.616173, 16.633669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.645956, 18.607903, 16.789640>,  <15.342254, 18.594118, 17.049591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.645956, 18.607903, 16.789640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650036, 0.088270, -0.754759,
		0.031354, 0.995500, 0.089422,
		0.759256, 0.034463, -0.649879,
		15.873733, 18.618242, 16.594677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.043026, 19.056961, 16.574818>,  <15.342254, 18.594118, 17.049591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.043026, 19.056961, 16.574818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.343244, 18.884560, 16.374451>,  <15.523375, 18.781118, 16.254230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.343244, 18.884560, 16.374451>,  <15.043026, 19.056961, 16.574818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.343244, 18.884560, 16.374451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557121, -0.005039, -0.830416,
		0.355387, 0.902337, -0.243902,
		0.750544, -0.431002, -0.500920,
		15.568407, 18.755259, 16.224174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.116523, 19.515245, 15.980077>,  <15.043026, 19.056961, 16.574818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.116523, 19.515245, 15.980077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255328, 19.144558, 15.922428>,  <15.338612, 18.922146, 15.887839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.255328, 19.144558, 15.922428>,  <15.116523, 19.515245, 15.980077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.255328, 19.144558, 15.922428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581779, -0.092176, -0.808106,
		0.735604, 0.364271, -0.571133,
		0.347015, -0.926720, -0.144121,
		15.359432, 18.866543, 15.879192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.977757, 19.453072, 15.297952>,  <15.116523, 19.515245, 15.980077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.977757, 19.453072, 15.297952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.135100, 19.092262, 15.369080>,  <15.229506, 18.875776, 15.411757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.135100, 19.092262, 15.369080>,  <14.977757, 19.453072, 15.297952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.135100, 19.092262, 15.369080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412469, -0.345997, -0.842707,
		0.821669, 0.258139, -0.508158,
		0.393357, -0.902026, 0.177820,
		15.253107, 18.821655, 15.422425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.384723, 19.201822, 14.805508>,  <14.977757, 19.453072, 15.297952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.384723, 19.201822, 14.805508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.260843, 18.860527, 14.973351>,  <15.186516, 18.655750, 15.074057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.260843, 18.860527, 14.973351>,  <15.384723, 19.201822, 14.805508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.260843, 18.860527, 14.973351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360397, -0.303038, -0.882203,
		0.879887, -0.424442, -0.213654,
		-0.309699, -0.853239, 0.419607,
		15.167933, 18.604555, 15.099233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.491288, 18.606319, 14.253056>,  <15.384723, 19.201822, 14.805508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.491288, 18.606319, 14.253056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.203700, 18.505785, 14.512258>,  <15.031147, 18.445465, 14.667779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.203700, 18.505785, 14.512258>,  <15.491288, 18.606319, 14.253056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.203700, 18.505785, 14.512258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585560, -0.283229, -0.759540,
		0.374434, -0.925533, 0.056462,
		-0.718971, -0.251335, 0.648006,
		14.988008, 18.430384, 14.706659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.325787, 17.826347, 14.176641>,  <15.491288, 18.606319, 14.253056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.325787, 17.826347, 14.176641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.027771, 18.053026, 14.317366>,  <14.848962, 18.189034, 14.401801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.027771, 18.053026, 14.317366>,  <15.325787, 17.826347, 14.176641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.027771, 18.053026, 14.317366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636786, -0.447290, -0.628041,
		-0.198545, -0.691945, 0.694112,
		-0.745039, 0.566695, 0.351814,
		14.804259, 18.223034, 14.422910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.755439, 17.475458, 14.600932>,  <15.325787, 17.826347, 14.176641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.755439, 17.475458, 14.600932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588976, 17.752811, 14.365634>,  <14.489098, 17.919224, 14.224455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.588976, 17.752811, 14.365634>,  <14.755439, 17.475458, 14.600932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588976, 17.752811, 14.365634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474401, -0.717467, -0.510083,
		-0.775730, 0.066791, 0.627520,
		-0.416156, 0.693383, -0.588247,
		14.464128, 17.960827, 14.189160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.077014, 16.671278, 14.727549>,  <14.755439, 17.475458, 14.600932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.077014, 16.671278, 14.727549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.333132, 16.978456, 14.734274>,  <15.486802, 17.162764, 14.738309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.333132, 16.978456, 14.734274>,  <15.077014, 16.671278, 14.727549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.333132, 16.978456, 14.734274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560668, -0.452285, -0.693606,
		-0.525047, 0.453539, -0.720158,
		0.640295, 0.767945, 0.016814,
		15.525220, 17.208839, 14.739318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.244871, 16.737352, 14.020192>,  <15.077014, 16.671278, 14.727549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.244871, 16.737352, 14.020192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.545224, 16.874182, 14.246169>,  <15.725436, 16.956280, 14.381755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.545224, 16.874182, 14.246169>,  <15.244871, 16.737352, 14.020192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.545224, 16.874182, 14.246169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659636, -0.430505, -0.616073,
		0.032469, 0.835256, -0.548903,
		0.750884, 0.342072, 0.564942,
		15.770490, 16.976803, 14.415652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.632609, 17.209276, 13.752611>,  <15.244871, 16.737352, 14.020192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.632609, 17.209276, 13.752611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.865081, 17.017620, 14.015717>,  <16.004564, 16.902626, 14.173580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.865081, 17.017620, 14.015717>,  <15.632609, 17.209276, 13.752611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.865081, 17.017620, 14.015717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715451, -0.084301, -0.693559,
		0.387764, 0.873680, 0.293809,
		0.581180, -0.479142, 0.657763,
		16.039434, 16.873877, 14.213046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.255354, 17.449574, 14.115491>,  <15.632609, 17.209276, 13.752611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.255354, 17.449574, 14.115491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.309586, 17.062723, 14.029434>,  <16.342125, 16.830612, 13.977800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.309586, 17.062723, 14.029434>,  <16.255354, 17.449574, 14.115491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.309586, 17.062723, 14.029434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888451, 0.214782, -0.405614,
		0.438488, -0.136149, 0.888364,
		0.135581, -0.967126, -0.215142,
		16.350260, 16.772585, 13.964891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898813, 17.235582, 14.403874>,  <16.255354, 17.449574, 14.115491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.898813, 17.235582, 14.403874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.794479, 17.057196, 14.061395>,  <16.731878, 16.950163, 13.855907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.794479, 17.057196, 14.061395>,  <16.898813, 17.235582, 14.403874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794479, 17.057196, 14.061395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888887, 0.235055, -0.393228,
		0.376621, -0.863632, 0.335105,
		-0.260837, -0.445969, -0.856199,
		16.716228, 16.923405, 13.804535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.341751, 16.651714, 14.228354>,  <16.898813, 17.235582, 14.403874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.341751, 16.651714, 14.228354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.197689, 16.863625, 13.921205>,  <17.111252, 16.990770, 13.736915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.197689, 16.863625, 13.921205>,  <17.341751, 16.651714, 14.228354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.197689, 16.863625, 13.921205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923405, 0.319537, -0.212648,
		0.132708, -0.785644, -0.604278,
		-0.360155, 0.529773, -0.767873,
		17.089643, 17.022556, 13.690843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.744133, 16.126320, 14.583921>,  <17.341751, 16.651714, 14.228354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.744133, 16.126320, 14.583921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.601404, 15.940978, 14.908386>,  <17.515768, 15.829773, 15.103065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.601404, 15.940978, 14.908386>,  <17.744133, 16.126320, 14.583921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.601404, 15.940978, 14.908386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527029, -0.617091, -0.584328,
		0.771311, -0.636005, -0.024010,
		-0.356820, -0.463353, 0.811162,
		17.494358, 15.801972, 15.151735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.845362, 15.495067, 14.481907>,  <17.744133, 16.126320, 14.583921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.845362, 15.495067, 14.481907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.594372, 15.439009, 14.788275>,  <17.443777, 15.405374, 14.972095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.594372, 15.439009, 14.788275>,  <17.845362, 15.495067, 14.481907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.594372, 15.439009, 14.788275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364267, -0.816551, -0.447832,
		0.688175, -0.560003, 0.461316,
		-0.627475, -0.140145, 0.765921,
		17.406130, 15.396965, 15.018051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.925024, 14.774113, 14.698787>,  <17.845362, 15.495067, 14.481907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.925024, 14.774113, 14.698787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561800, 14.916626, 14.786865>,  <17.343864, 15.002133, 14.839712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561800, 14.916626, 14.786865>,  <17.925024, 14.774113, 14.698787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.561800, 14.916626, 14.786865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418668, -0.757278, -0.501246,
		-0.011836, -0.547351, 0.836819,
		-0.908062, 0.356282, 0.220195,
		17.289381, 15.023511, 14.852923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.489925, 14.206053, 14.866341>,  <17.925024, 14.774113, 14.698787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.489925, 14.206053, 14.866341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.223711, 14.499160, 14.809613>,  <17.063982, 14.675024, 14.775577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.223711, 14.499160, 14.809613>,  <17.489925, 14.206053, 14.866341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.223711, 14.499160, 14.809613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519831, -0.591440, -0.616421,
		-0.535568, -0.336532, 0.774541,
		-0.665540, 0.732766, -0.141816,
		17.024050, 14.718989, 14.767068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.788511, 13.927194, 15.003215>,  <17.489925, 14.206053, 14.866341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.788511, 13.927194, 15.003215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.735991, 14.242534, 14.762794>,  <16.704479, 14.431738, 14.618542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.735991, 14.242534, 14.762794>,  <16.788511, 13.927194, 15.003215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735991, 14.242534, 14.762794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483213, -0.580293, -0.655565,
		-0.865601, 0.204360, 0.457134,
		-0.131300, 0.788351, -0.601051,
		16.696600, 14.479039, 14.582479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.139389, 13.685357, 14.576917>,  <16.788511, 13.927194, 15.003215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.139389, 13.685357, 14.576917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.269913, 14.006951, 14.378069>,  <16.348227, 14.199908, 14.258760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.269913, 14.006951, 14.378069>,  <16.139389, 13.685357, 14.576917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.269913, 14.006951, 14.378069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303661, -0.408874, -0.860589,
		-0.895161, 0.431774, 0.110720,
		0.326309, 0.803986, -0.497120,
		16.367805, 14.248147, 14.228933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.570167, 13.932176, 14.208465>,  <16.139389, 13.685357, 14.576917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.570167, 13.932176, 14.208465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.900072, 14.053170, 14.017356>,  <16.098015, 14.125767, 13.902691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.900072, 14.053170, 14.017356>,  <15.570167, 13.932176, 14.208465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.900072, 14.053170, 14.017356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366692, -0.357083, -0.859086,
		-0.430465, 0.883739, -0.183591,
		0.824765, 0.302486, -0.477772,
		16.147501, 14.143916, 13.874024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.329022, 14.076390, 13.378175>,  <15.570167, 13.932176, 14.208465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.329022, 14.076390, 13.378175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.728114, 14.057562, 13.397434>,  <15.967569, 14.046265, 13.408990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.728114, 14.057562, 13.397434>,  <15.329022, 14.076390, 13.378175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.728114, 14.057562, 13.397434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034641, -0.254377, -0.966485,
		0.057741, 0.965959, -0.252169,
		0.997730, -0.047071, 0.048149,
		16.027433, 14.043441, 13.411879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.629282, 14.357407, 12.757122>,  <15.329022, 14.076390, 13.378175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.629282, 14.357407, 12.757122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.932200, 14.136731, 12.896917>,  <16.113953, 14.004326, 12.980795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.932200, 14.136731, 12.896917>,  <15.629282, 14.357407, 12.757122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.932200, 14.136731, 12.896917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238692, -0.264304, -0.934435,
		0.607888, 0.791065, -0.068473,
		0.757297, -0.551688, 0.349488,
		16.159389, 13.971225, 13.001763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.205269, 14.564858, 12.374743>,  <15.629282, 14.357407, 12.757122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.205269, 14.564858, 12.374743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.252123, 14.197069, 12.524862>,  <16.280235, 13.976396, 12.614934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.252123, 14.197069, 12.524862>,  <16.205269, 14.564858, 12.374743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.252123, 14.197069, 12.524862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200208, -0.348281, -0.915761,
		0.972726, 0.182404, 0.143291,
		0.117133, -0.919472, 0.375301,
		16.287262, 13.921227, 12.637452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.727003, 14.307676, 11.874298>,  <16.205269, 14.564858, 12.374743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.727003, 14.307676, 11.874298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.570383, 13.992469, 12.064336>,  <16.476410, 13.803345, 12.178358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.570383, 13.992469, 12.064336>,  <16.727003, 14.307676, 11.874298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.570383, 13.992469, 12.064336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157625, -0.566128, -0.809106,
		0.906555, -0.241920, 0.345880,
		-0.391551, -0.788019, 0.475094,
		16.452917, 13.756063, 12.206864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.196487, 13.820343, 11.993525>,  <16.727003, 14.307676, 11.874298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.196487, 13.820343, 11.993525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.841240, 13.639297, 11.961572>,  <16.628092, 13.530668, 11.942400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.841240, 13.639297, 11.961572>,  <17.196487, 13.820343, 11.993525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.841240, 13.639297, 11.961572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304344, -0.448904, -0.840155,
		0.344409, -0.770469, 0.536432,
		-0.888120, -0.452617, -0.079881,
		16.574804, 13.503511, 11.937608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.401339, 13.184818, 11.913665>,  <17.196487, 13.820343, 11.993525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.401339, 13.184818, 11.913665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.029667, 13.187872, 11.765842>,  <16.806664, 13.189704, 11.677149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.029667, 13.187872, 11.765842>,  <17.401339, 13.184818, 11.913665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029667, 13.187872, 11.765842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310445, -0.526555, -0.791431,
		-0.200634, -0.850107, 0.486893,
		-0.929177, 0.007635, -0.369556,
		16.750914, 13.190163, 11.654976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.299677, 12.474623, 11.665669>,  <17.401339, 13.184818, 11.913665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.299677, 12.474623, 11.665669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.994150, 12.681720, 11.511512>,  <16.810835, 12.805978, 11.419017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.994150, 12.681720, 11.511512>,  <17.299677, 12.474623, 11.665669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.994150, 12.681720, 11.511512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061431, -0.536082, -0.841928,
		-0.642505, -0.666752, 0.377662,
		-0.763815, 0.517743, -0.385395,
		16.765005, 12.837043, 11.395893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.800224, 11.950067, 11.385403>,  <17.299677, 12.474623, 11.665669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.800224, 11.950067, 11.385403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742344, 12.296385, 11.193795>,  <16.707615, 12.504176, 11.078831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.742344, 12.296385, 11.193795>,  <16.800224, 11.950067, 11.385403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742344, 12.296385, 11.193795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067043, -0.474423, -0.877741,
		-0.987201, -0.159125, 0.010603,
		-0.144701, 0.865796, -0.479019,
		16.698935, 12.556124, 11.050090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.186352, 11.726371, 11.036973>,  <16.800224, 11.950067, 11.385403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.186352, 11.726371, 11.036973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.349314, 12.050238, 10.867994>,  <16.447090, 12.244557, 10.766607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.349314, 12.050238, 10.867994>,  <16.186352, 11.726371, 11.036973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.349314, 12.050238, 10.867994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038017, -0.447140, -0.893656,
		-0.912456, 0.380140, -0.151386,
		0.407405, 0.809666, -0.422447,
		16.471535, 12.293138, 10.741261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769177, 11.881421, 10.440285>,  <16.186352, 11.726371, 11.036973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769177, 11.881421, 10.440285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.128569, 12.045142, 10.376777>,  <16.344204, 12.143374, 10.338672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.128569, 12.045142, 10.376777>,  <15.769177, 11.881421, 10.440285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.128569, 12.045142, 10.376777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065367, -0.232894, -0.970303,
		-0.434123, 0.882175, -0.182496,
		0.898479, 0.409302, -0.158770,
		16.398113, 12.167933, 10.329145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.780148, 12.114724, 9.753152>,  <15.769177, 11.881421, 10.440285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.780148, 12.114724, 9.753152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.174025, 12.120125, 9.822660>,  <16.410351, 12.123365, 9.864366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.174025, 12.120125, 9.822660>,  <15.780148, 12.114724, 9.753152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.174025, 12.120125, 9.822660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149873, -0.574550, -0.804630,
		0.088978, 0.818358, -0.567779,
		0.984693, 0.013501, 0.173772,
		16.469433, 12.124175, 9.874792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.139633, 12.362536, 9.086682>,  <15.780148, 12.114724, 9.753152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.139633, 12.362536, 9.086682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.424942, 12.189384, 9.307175>,  <16.596128, 12.085493, 9.439470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.424942, 12.189384, 9.307175>,  <16.139633, 12.362536, 9.086682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.424942, 12.189384, 9.307175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265412, -0.561086, -0.784053,
		0.648688, 0.705548, -0.285317,
		0.713274, -0.432879, 0.551231,
		16.638924, 12.059521, 9.472544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725893, 12.488619, 8.633051>,  <16.139633, 12.362536, 9.086682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725893, 12.488619, 8.633051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.821215, 12.190820, 8.882509>,  <16.878408, 12.012140, 9.032185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.821215, 12.190820, 8.882509>,  <16.725893, 12.488619, 8.633051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.821215, 12.190820, 8.882509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273749, -0.564617, -0.778633,
		0.931811, 0.356275, 0.069254,
		0.238305, -0.744497, 0.623646,
		16.892706, 11.967470, 9.069603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.360994, 12.108095, 8.500933>,  <16.725893, 12.488619, 8.633051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.360994, 12.108095, 8.500933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.154320, 11.840239, 8.714331>,  <17.030315, 11.679524, 8.842369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.154320, 11.840239, 8.714331>,  <17.360994, 12.108095, 8.500933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.154320, 11.840239, 8.714331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235556, -0.710250, -0.663369,
		0.823133, -0.217087, 0.524715,
		-0.516688, -0.669640, 0.533494,
		16.999313, 11.639346, 8.874379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909180, 11.689593, 8.762396>,  <17.360994, 12.108095, 8.500933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909180, 11.689593, 8.762396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.562275, 11.491765, 8.739575>,  <17.354132, 11.373068, 8.725883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.562275, 11.491765, 8.739575>,  <17.909180, 11.689593, 8.762396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.562275, 11.491765, 8.739575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464662, -0.762976, -0.449397,
		0.178729, -0.416255, 0.891509,
		-0.867263, -0.494570, -0.057051,
		17.302095, 11.343394, 8.722460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.158415, 11.011116, 8.894573>,  <17.909180, 11.689593, 8.762396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.158415, 11.011116, 8.894573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.817146, 10.983441, 8.687765>,  <17.612385, 10.966837, 8.563681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.817146, 10.983441, 8.687765>,  <18.158415, 11.011116, 8.894573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.817146, 10.983441, 8.687765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415304, -0.689824, -0.593014,
		-0.315623, -0.720664, 0.617273,
		-0.853173, -0.069187, -0.517019,
		17.561193, 10.962686, 8.532660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.377897, 11.421510, 8.278255>,  <18.158415, 11.011116, 8.894573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.377897, 11.421510, 8.278255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.642073, 11.216647, 8.497897>,  <18.800577, 11.093730, 8.629683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.642073, 11.216647, 8.497897>,  <18.377897, 11.421510, 8.278255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.642073, 11.216647, 8.497897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737305, 0.303889, -0.603352,
		0.142143, 0.803336, 0.578315,
		0.660437, -0.512156, 0.549108,
		18.840204, 11.063001, 8.662629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.871300, 11.921959, 8.709941>,  <18.377897, 11.421510, 8.278255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.871300, 11.921959, 8.709941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040125, 11.574944, 8.604684>,  <19.141420, 11.366736, 8.541530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.040125, 11.574944, 8.604684>,  <18.871300, 11.921959, 8.709941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.040125, 11.574944, 8.604684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733162, 0.497368, -0.463788,
		0.533231, 0.002822, 0.845965,
		0.422064, -0.867535, -0.263143,
		19.166744, 11.314684, 8.525741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.539352, 12.090922, 8.726151>,  <18.871300, 11.921959, 8.709941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.539352, 12.090922, 8.726151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.490597, 11.780207, 8.479011>,  <19.461344, 11.593777, 8.330727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.490597, 11.780207, 8.479011>,  <19.539352, 12.090922, 8.726151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.490597, 11.780207, 8.479011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594532, 0.441321, -0.672136,
		0.794780, -0.449258, 0.408035,
		-0.121888, -0.776790, -0.617852,
		19.454031, 11.547170, 8.293655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.490101, 12.392837, 9.395372>,  <19.539352, 12.090922, 8.726151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.490101, 12.392837, 9.395372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.167618, 12.530871, 9.587600>,  <18.974129, 12.613692, 9.702936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.167618, 12.530871, 9.587600>,  <19.490101, 12.392837, 9.395372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.167618, 12.530871, 9.587600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460769, -0.143284, 0.875878,
		0.371113, 0.927569, -0.043489,
		-0.806205, 0.345088, 0.480570,
		18.925756, 12.634398, 9.731771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.719440, 13.016262, 9.716599>,  <19.490101, 12.392837, 9.395372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.719440, 13.016262, 9.716599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.445415, 12.756050, 9.847749>,  <19.281000, 12.599923, 9.926438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.445415, 12.756050, 9.847749>,  <19.719440, 13.016262, 9.716599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.445415, 12.756050, 9.847749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557373, -0.178261, 0.810900,
		-0.469067, 0.738265, 0.484707,
		-0.685063, -0.650529, 0.327873,
		19.239897, 12.560891, 9.946111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.450037, 13.332808, 10.346913>,  <19.719440, 13.016262, 9.716599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.450037, 13.332808, 10.346913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.412548, 12.935180, 10.368965>,  <19.390055, 12.696603, 10.382196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.412548, 12.935180, 10.368965>,  <19.450037, 13.332808, 10.346913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.412548, 12.935180, 10.368965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330849, 0.021129, 0.943447,
		-0.939018, 0.106660, 0.326907,
		-0.093721, -0.994071, 0.055129,
		19.384432, 12.636958, 10.385504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.068516, 13.158156, 11.007493>,  <19.450037, 13.332808, 10.346913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.068516, 13.158156, 11.007493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.284004, 12.846812, 10.878538>,  <19.413298, 12.660006, 10.801166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.284004, 12.846812, 10.878538>,  <19.068516, 13.158156, 11.007493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.284004, 12.846812, 10.878538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484851, -0.026503, 0.874195,
		-0.688983, -0.627258, 0.363111,
		0.538723, -0.778360, -0.322386,
		19.445621, 12.613304, 10.781822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186476, 12.747384, 11.590139>,  <19.068516, 13.158156, 11.007493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186476, 12.747384, 11.590139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.475046, 12.605103, 11.352477>,  <19.648188, 12.519733, 11.209880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.475046, 12.605103, 11.352477>,  <19.186476, 12.747384, 11.590139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.475046, 12.605103, 11.352477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645020, 0.032957, 0.763455,
		-0.251982, -0.934017, 0.253213,
		0.721425, -0.355704, -0.594155,
		19.691473, 12.498391, 11.174231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545877, 12.327498, 12.107533>,  <19.186476, 12.747384, 11.590139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545877, 12.327498, 12.107533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.785740, 12.391275, 11.793847>,  <19.929657, 12.429542, 11.605636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.785740, 12.391275, 11.793847>,  <19.545877, 12.327498, 12.107533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.785740, 12.391275, 11.793847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719351, 0.321976, 0.615521,
		0.350640, -0.933225, 0.078377,
		0.599655, 0.159446, -0.784213,
		19.965637, 12.439108, 11.558583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.164528, 12.070569, 12.215913>,  <19.545877, 12.327498, 12.107533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.164528, 12.070569, 12.215913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.239582, 12.351704, 11.941449>,  <20.284615, 12.520385, 11.776772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.239582, 12.351704, 11.941449>,  <20.164528, 12.070569, 12.215913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.239582, 12.351704, 11.941449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479202, 0.544289, 0.688560,
		0.857414, -0.458006, -0.234674,
		0.187635, 0.702837, -0.686158,
		20.295872, 12.562554, 11.735601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.748127, 12.244373, 12.462273>,  <20.164528, 12.070569, 12.215913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.748127, 12.244373, 12.462273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.648474, 12.539958, 12.211875>,  <20.588682, 12.717309, 12.061636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.648474, 12.539958, 12.211875>,  <20.748127, 12.244373, 12.462273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.648474, 12.539958, 12.211875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474513, 0.656612, 0.586257,
		0.844257, -0.150987, -0.514230,
		-0.249133, 0.738961, -0.625995,
		20.573734, 12.761646, 12.024076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.385052, 12.637287, 12.271049>,  <20.748127, 12.244373, 12.462273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.385052, 12.637287, 12.271049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.094168, 12.897882, 12.184582>,  <20.919638, 13.054238, 12.132702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.094168, 12.897882, 12.184582>,  <21.385052, 12.637287, 12.271049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.094168, 12.897882, 12.184582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553532, 0.742825, 0.376582,
		0.405912, 0.154199, -0.900810,
		-0.727212, 0.651486, -0.216168,
		20.876003, 13.093328, 12.119731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.776962, 13.263974, 12.204616>,  <21.385052, 12.637287, 12.271049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.776962, 13.263974, 12.204616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.399822, 13.393283, 12.236940>,  <21.173538, 13.470868, 12.256335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.399822, 13.393283, 12.236940>,  <21.776962, 13.263974, 12.204616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.399822, 13.393283, 12.236940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307443, 0.750414, 0.585113,
		0.128509, 0.576519, -0.806915,
		-0.942849, 0.323272, 0.080811,
		21.116968, 13.490265, 12.261184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830791, 14.011002, 12.111336>,  <21.776962, 13.263974, 12.204616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830791, 14.011002, 12.111336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490168, 13.956827, 12.313921>,  <21.285793, 13.924322, 12.435472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.490168, 13.956827, 12.313921>,  <21.830791, 14.011002, 12.111336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.490168, 13.956827, 12.313921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272673, 0.710687, 0.648516,
		-0.447770, 0.690348, -0.568262,
		-0.851558, -0.135436, 0.506464,
		21.234699, 13.916197, 12.465860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.550367, 14.708362, 12.296257>,  <21.830791, 14.011002, 12.111336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.550367, 14.708362, 12.296257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.369640, 14.466940, 12.559037>,  <21.261204, 14.322086, 12.716705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.369640, 14.466940, 12.559037>,  <21.550367, 14.708362, 12.296257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.369640, 14.466940, 12.559037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130794, 0.683627, 0.718016,
		-0.882471, 0.410336, -0.229931,
		-0.451815, -0.603555, 0.656951,
		21.234097, 14.285873, 12.756123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.075190, 15.111532, 12.621843>,  <21.550367, 14.708362, 12.296257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.075190, 15.111532, 12.621843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.133377, 14.799569, 12.865345>,  <21.168289, 14.612391, 13.011446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.133377, 14.799569, 12.865345>,  <21.075190, 15.111532, 12.621843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.133377, 14.799569, 12.865345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108196, 0.624150, 0.773776,
		-0.983429, -0.046696, 0.175177,
		0.145469, -0.779907, 0.608755,
		21.177017, 14.565597, 13.047972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.682871, 15.260285, 13.238884>,  <21.075190, 15.111532, 12.621843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.682871, 15.260285, 13.238884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.910894, 14.968725, 13.390533>,  <21.047709, 14.793789, 13.481524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.910894, 14.968725, 13.390533>,  <20.682871, 15.260285, 13.238884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.910894, 14.968725, 13.390533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147625, 0.544805, 0.825466,
		-0.808231, -0.414597, 0.418176,
		0.570060, -0.728900, 0.379124,
		21.081913, 14.750055, 13.504271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.492109, 15.223204, 13.987544>,  <20.682871, 15.260285, 13.238884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.492109, 15.223204, 13.987544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.846849, 15.046169, 13.934452>,  <21.059692, 14.939949, 13.902597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.846849, 15.046169, 13.934452>,  <20.492109, 15.223204, 13.987544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.846849, 15.046169, 13.934452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311805, 0.361246, 0.878794,
		-0.340994, -0.820743, 0.458371,
		0.886848, -0.442586, -0.132729,
		21.112904, 14.913393, 13.894633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.667938, 14.819535, 14.623644>,  <20.492109, 15.223204, 13.987544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.667938, 14.819535, 14.623644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.996315, 14.921619, 14.419321>,  <21.193340, 14.982870, 14.296727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.996315, 14.921619, 14.419321>,  <20.667938, 14.819535, 14.623644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.996315, 14.921619, 14.419321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388481, 0.406000, 0.827192,
		0.418505, -0.877512, 0.234151,
		0.820936, 0.255221, -0.510810,
		21.242598, 14.998183, 14.266079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.108887, 14.753946, 15.095696>,  <20.667938, 14.819535, 14.623644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.108887, 14.753946, 15.095696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.301794, 14.976851, 14.825327>,  <21.417538, 15.110595, 14.663105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.301794, 14.976851, 14.825327>,  <21.108887, 14.753946, 15.095696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.301794, 14.976851, 14.825327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460120, 0.495448, 0.736764,
		0.745458, -0.666324, -0.017470,
		0.482268, 0.557264, -0.675925,
		21.446474, 15.144031, 14.622549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.666319, 14.782784, 15.311179>,  <21.108887, 14.753946, 15.095696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.666319, 14.782784, 15.311179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.684687, 15.095626, 15.062599>,  <21.695707, 15.283332, 14.913451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.684687, 15.095626, 15.062599>,  <21.666319, 14.782784, 15.311179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.684687, 15.095626, 15.062599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461122, 0.535264, 0.707714,
		0.886148, -0.319063, -0.336066,
		0.045921, 0.782107, -0.621450,
		21.698463, 15.330257, 14.876164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.396620, 14.985683, 15.325197>,  <21.666319, 14.782784, 15.311179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.396620, 14.985683, 15.325197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.178080, 15.293685, 15.193382>,  <22.046955, 15.478486, 15.114293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.178080, 15.293685, 15.193382>,  <22.396620, 14.985683, 15.325197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.178080, 15.293685, 15.193382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645772, 0.637825, 0.419711,
		0.533367, 0.016502, -0.845723,
		-0.546349, 0.770005, -0.329538,
		22.014175, 15.524687, 15.094521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.872293, 15.506535, 15.124209>,  <22.396620, 14.985683, 15.325197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.872293, 15.506535, 15.124209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.507059, 15.638448, 15.220143>,  <22.287918, 15.717596, 15.277703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.507059, 15.638448, 15.220143>,  <22.872293, 15.506535, 15.124209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.507059, 15.638448, 15.220143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405557, 0.673222, 0.618300,
		0.042444, 0.661826, -0.748455,
		-0.913084, 0.329784, 0.239834,
		22.233133, 15.737383, 15.292093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.544445, 15.249230, 14.909083>,  <22.872293, 15.506535, 15.124209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.544445, 15.249230, 14.909083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.895893, 15.439595, 14.893430>,  <24.106762, 15.553814, 14.884038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.895893, 15.439595, 14.893430>,  <23.544445, 15.249230, 14.909083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.895893, 15.439595, 14.893430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120211, 0.141128, -0.982666,
		-0.462140, 0.868095, 0.181208,
		0.878621, 0.475913, -0.039134,
		24.159479, 15.582369, 14.881690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.443331, 15.559089, 14.262379>,  <23.544445, 15.249230, 14.909083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.443331, 15.559089, 14.262379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.825861, 15.593701, 14.374057>,  <24.055380, 15.614470, 14.441064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.825861, 15.593701, 14.374057>,  <23.443331, 15.559089, 14.262379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.825861, 15.593701, 14.374057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243571, 0.292132, -0.924842,
		-0.161591, 0.952455, 0.258297,
		0.956327, 0.086532, 0.279196,
		24.112759, 15.619661, 14.457815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.472359, 14.794591, 14.207382>,  <23.443331, 15.559089, 14.262379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.472359, 14.794591, 14.207382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.715895, 14.491655, 14.301828>,  <23.862017, 14.309894, 14.358496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.715895, 14.491655, 14.301828>,  <23.472359, 14.794591, 14.207382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.715895, 14.491655, 14.301828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715694, -0.652779, -0.248318,
		0.342192, -0.017801, -0.939461,
		0.608840, -0.757339, 0.236116,
		23.898546, 14.264454, 14.372663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.163038, 15.079406, 14.417561>,  <23.472359, 14.794591, 14.207382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.163038, 15.079406, 14.417561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.477310, 15.325613, 14.392775>,  <24.665874, 15.473337, 14.377903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.477310, 15.325613, 14.392775>,  <24.163038, 15.079406, 14.417561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.477310, 15.325613, 14.392775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576450, -0.692075, 0.434439,
		0.224521, -0.377051, -0.898567,
		0.785682, 0.615519, -0.061966,
		24.713015, 15.510269, 14.374185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.614616, 14.631853, 14.151843>,  <24.163038, 15.079406, 14.417561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.614616, 14.631853, 14.151843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807573, 14.952045, 14.294127>,  <24.923347, 15.144160, 14.379497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.807573, 14.952045, 14.294127>,  <24.614616, 14.631853, 14.151843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.807573, 14.952045, 14.294127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796790, -0.569687, 0.201451,
		0.363900, 0.186247, -0.912627,
		0.482392, 0.800480, 0.355709,
		24.952291, 15.192189, 14.400839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.261442, 14.553717, 14.033620>,  <24.614616, 14.631853, 14.151843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.261442, 14.553717, 14.033620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308565, 14.829555, 14.319439>,  <25.336838, 14.995057, 14.490931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308565, 14.829555, 14.319439>,  <25.261442, 14.553717, 14.033620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308565, 14.829555, 14.319439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826939, -0.466522, 0.313894,
		0.549813, 0.553909, -0.625213,
		0.117806, 0.689596, 0.714548,
		25.343906, 15.036433, 14.533804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.044119, 14.715231, 14.069475>,  <25.261442, 14.553717, 14.033620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.044119, 14.715231, 14.069475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859306, 14.811809, 14.410822>,  <25.748419, 14.869755, 14.615630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859306, 14.811809, 14.410822>,  <26.044119, 14.715231, 14.069475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859306, 14.811809, 14.410822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801988, -0.297034, 0.518253,
		0.378607, 0.923837, -0.056397,
		-0.462030, 0.241444, 0.853366,
		25.720697, 14.884242, 14.666832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397591, 15.223040, 14.313971>,  <26.044119, 14.715231, 14.069475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397591, 15.223040, 14.313971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212994, 15.030190, 14.611852>,  <26.102236, 14.914481, 14.790581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212994, 15.030190, 14.611852>,  <26.397591, 15.223040, 14.313971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212994, 15.030190, 14.611852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885998, -0.207818, 0.414511,
		-0.045082, 0.851099, 0.523066,
		-0.461492, -0.482123, 0.744703,
		26.074547, 14.885553, 14.835262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588749, 15.494946, 15.003837>,  <26.397591, 15.223040, 14.313971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588749, 15.494946, 15.003837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522570, 15.101565, 15.033373>,  <26.482862, 14.865538, 15.051095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.522570, 15.101565, 15.033373>,  <26.588749, 15.494946, 15.003837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522570, 15.101565, 15.033373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844014, -0.102462, 0.526443,
		-0.510164, 0.149421, 0.846998,
		-0.165447, -0.983451, 0.073841,
		26.472935, 14.806530, 15.055525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<13.337875, 20.255283, 25.336777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.198355, 19.919083, 25.502615>,  <13.114642, 19.717361, 25.602118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.198355, 19.919083, 25.502615>,  <13.337875, 20.255283, 25.336777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.198355, 19.919083, 25.502615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266744, -0.335051, -0.903653,
		0.898435, -0.425787, -0.107332,
		-0.348802, -0.840504, 0.414598,
		13.093714, 19.666931, 25.626995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.491495, 19.722157, 24.849951>,  <13.337875, 20.255283, 25.336777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.491495, 19.722157, 24.849951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.223154, 19.537086, 25.081774>,  <13.062149, 19.426044, 25.220867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.223154, 19.537086, 25.081774>,  <13.491495, 19.722157, 24.849951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.223154, 19.537086, 25.081774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360878, -0.479059, -0.800168,
		0.647861, -0.745945, 0.154409,
		-0.670853, -0.462675, 0.579559,
		13.021898, 19.398285, 25.255642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513338, 19.069523, 24.655657>,  <13.491495, 19.722157, 24.849951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513338, 19.069523, 24.655657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.163489, 19.090679, 24.848421>,  <12.953580, 19.103373, 24.964079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.163489, 19.090679, 24.848421>,  <13.513338, 19.069523, 24.655657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.163489, 19.090679, 24.848421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437252, -0.515397, -0.737005,
		0.209395, -0.855318, 0.473904,
		-0.874623, 0.052890, 0.481911,
		12.901102, 19.106546, 24.992994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.289289, 18.373962, 24.680450>,  <13.513338, 19.069523, 24.655657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.289289, 18.373962, 24.680450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.971281, 18.611814, 24.728374>,  <12.780476, 18.754526, 24.757130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.971281, 18.611814, 24.728374>,  <13.289289, 18.373962, 24.680450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.971281, 18.611814, 24.728374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432742, -0.417583, -0.798973,
		-0.425087, -0.687031, 0.589313,
		-0.795007, 0.594654, 0.119798,
		12.732775, 18.790203, 24.764318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.712614, 17.963453, 24.769978>,  <13.289289, 18.373962, 24.680450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.712614, 17.963453, 24.769978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.534340, 18.304199, 24.659929>,  <12.427375, 18.508646, 24.593901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.534340, 18.304199, 24.659929>,  <12.712614, 17.963453, 24.769978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.534340, 18.304199, 24.659929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342200, -0.446119, -0.826969,
		-0.827202, -0.274421, 0.490337,
		-0.445686, 0.851864, -0.275123,
		12.400634, 18.559759, 24.577393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.976898, 17.796165, 24.583279>,  <12.712614, 17.963453, 24.769978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.976898, 17.796165, 24.583279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.070069, 18.143587, 24.408300>,  <12.125972, 18.352039, 24.303312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.070069, 18.143587, 24.408300>,  <11.976898, 17.796165, 24.583279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.070069, 18.143587, 24.408300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294454, -0.365716, -0.882920,
		-0.926845, 0.334465, 0.170563,
		0.232929, 0.868553, -0.437447,
		12.139948, 18.404154, 24.277067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.380991, 18.037054, 24.234465>,  <11.976898, 17.796165, 24.583279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.380991, 18.037054, 24.234465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.694788, 18.201582, 24.048826>,  <11.883066, 18.300299, 23.937443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.694788, 18.201582, 24.048826>,  <11.380991, 18.037054, 24.234465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.694788, 18.201582, 24.048826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394642, -0.246152, -0.885250,
		-0.478359, 0.877625, -0.030781,
		0.784494, 0.411320, -0.464097,
		11.930136, 18.324978, 23.909597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.002481, 18.335730, 23.617626>,  <11.380991, 18.037054, 24.234465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.002481, 18.335730, 23.617626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.394082, 18.333139, 23.536123>,  <11.629043, 18.331585, 23.487223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.394082, 18.333139, 23.536123>,  <11.002481, 18.335730, 23.617626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.394082, 18.333139, 23.536123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202429, -0.149001, -0.967895,
		-0.024093, 0.988816, -0.147182,
		0.979000, -0.006474, -0.203755,
		11.687782, 18.331198, 23.474997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.054747, 18.776756, 23.028759>,  <11.002481, 18.335730, 23.617626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.054747, 18.776756, 23.028759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.343798, 18.502939, 23.067148>,  <11.517228, 18.338650, 23.090181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.343798, 18.502939, 23.067148>,  <11.054747, 18.776756, 23.028759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.343798, 18.502939, 23.067148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259738, -0.397569, -0.880043,
		0.640581, 0.611017, -0.465096,
		0.722628, -0.684542, 0.095971,
		11.560586, 18.297577, 23.095940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.278503, 18.832159, 22.279020>,  <11.054747, 18.776756, 23.028759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.278503, 18.832159, 22.279020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.482268, 18.518364, 22.420488>,  <11.604527, 18.330088, 22.505369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.482268, 18.518364, 22.420488>,  <11.278503, 18.832159, 22.279020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.482268, 18.518364, 22.420488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196617, -0.294013, -0.935360,
		0.837760, 0.546021, 0.004470,
		0.509412, -0.784485, 0.353669,
		11.635092, 18.283018, 22.526588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.944003, 18.905594, 22.144745>,  <11.278503, 18.832159, 22.279020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.944003, 18.905594, 22.144745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.843268, 18.519672, 22.175022>,  <11.782827, 18.288118, 22.193188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.843268, 18.519672, 22.175022>,  <11.944003, 18.905594, 22.144745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.843268, 18.519672, 22.175022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237349, -0.137401, -0.961658,
		0.938213, -0.224215, 0.263598,
		-0.251837, -0.964805, 0.075694,
		11.767717, 18.230230, 22.197731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.492172, 18.546257, 21.739540>,  <11.944003, 18.905594, 22.144745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.492172, 18.546257, 21.739540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.177297, 18.301237, 21.768143>,  <11.988371, 18.154224, 21.785303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.177297, 18.301237, 21.768143>,  <12.492172, 18.546257, 21.739540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.177297, 18.301237, 21.768143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231433, -0.400887, -0.886413,
		0.571639, -0.681227, 0.457339,
		-0.787190, -0.612552, 0.071504,
		11.941139, 18.117472, 21.789595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.700993, 17.952503, 21.336433>,  <12.492172, 18.546257, 21.739540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.700993, 17.952503, 21.336433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.311825, 17.869318, 21.376791>,  <12.078324, 17.819407, 21.401005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.311825, 17.869318, 21.376791>,  <12.700993, 17.952503, 21.336433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.311825, 17.869318, 21.376791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036892, -0.291183, -0.955956,
		0.228181, -0.933790, 0.275626,
		-0.972919, -0.207962, 0.100892,
		12.019949, 17.806929, 21.407059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.515726, 17.232479, 20.916737>,  <12.700993, 17.952503, 21.336433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.515726, 17.232479, 20.916737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.193097, 17.466307, 20.951883>,  <11.999519, 17.606604, 20.972971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.193097, 17.466307, 20.951883>,  <12.515726, 17.232479, 20.916737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.193097, 17.466307, 20.951883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294712, -0.268803, -0.917001,
		-0.512433, -0.765521, 0.389088,
		-0.806572, 0.584570, 0.087865,
		11.951125, 17.641678, 20.978243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.949600, 16.792002, 20.815845>,  <12.515726, 17.232479, 20.916737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.949600, 16.792002, 20.815845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.846940, 17.169783, 20.733732>,  <11.785344, 17.396452, 20.684464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.846940, 17.169783, 20.733732>,  <11.949600, 16.792002, 20.815845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.846940, 17.169783, 20.733732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485156, -0.309591, -0.817788,
		-0.835916, -0.110290, 0.537663,
		-0.256649, 0.944452, -0.205284,
		11.769945, 17.453117, 20.672148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.366535, 16.709959, 20.503067>,  <11.949600, 16.792002, 20.815845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.366535, 16.709959, 20.503067> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.493503, 17.077473, 20.409193>,  <11.569683, 17.297981, 20.352869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.493503, 17.077473, 20.409193>,  <11.366535, 16.709959, 20.503067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.493503, 17.077473, 20.409193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348427, -0.117171, -0.929984,
		-0.881954, 0.376965, 0.282937,
		0.317420, 0.918786, -0.234684,
		11.588729, 17.353109, 20.338787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.789656, 17.012173, 20.148325>,  <11.366535, 16.709959, 20.503067>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.789656, 17.012173, 20.148325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.119694, 17.206921, 20.033657>,  <11.317717, 17.323769, 19.964857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.119694, 17.206921, 20.033657>,  <10.789656, 17.012173, 20.148325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.119694, 17.206921, 20.033657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246098, -0.147027, -0.958029,
		-0.508581, 0.861013, -0.001494,
		0.825094, 0.486868, -0.286668,
		11.367222, 17.352982, 19.947657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.675980, 17.419561, 19.565805>,  <10.789656, 17.012173, 20.148325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.675980, 17.419561, 19.565805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.072510, 17.398947, 19.517447>,  <11.310428, 17.386578, 19.488432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.072510, 17.398947, 19.517447>,  <10.675980, 17.419561, 19.565805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.072510, 17.398947, 19.517447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129007, -0.205974, -0.970016,
		0.025091, 0.977199, -0.210836,
		0.991326, -0.051538, -0.120898,
		11.369907, 17.383486, 19.481176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.795293, 17.753283, 18.925552>,  <10.675980, 17.419561, 19.565805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.795293, 17.753283, 18.925552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.123451, 17.532871, 18.986635>,  <11.320347, 17.400625, 19.023285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.123451, 17.532871, 18.986635>,  <10.795293, 17.753283, 18.925552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.123451, 17.532871, 18.986635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000398, -0.267614, -0.963526,
		0.571794, 0.790413, -0.219769,
		0.820397, -0.551026, 0.152706,
		11.369571, 17.367563, 19.032448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.309016, 17.867998, 18.372456>,  <10.795293, 17.753283, 18.925552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.309016, 17.867998, 18.372456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.460062, 17.523079, 18.507423>,  <11.550690, 17.316128, 18.588404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.460062, 17.523079, 18.507423>,  <11.309016, 17.867998, 18.372456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.460062, 17.523079, 18.507423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100640, -0.324022, -0.940681,
		0.920478, 0.389173, -0.035574,
		0.377615, -0.862296, 0.337421,
		11.573346, 17.264391, 18.608650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.834612, 17.592342, 17.862568>,  <11.309016, 17.867998, 18.372456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.834612, 17.592342, 17.862568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.764972, 17.261299, 18.076017>,  <11.723187, 17.062674, 18.204086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.764972, 17.261299, 18.076017>,  <11.834612, 17.592342, 17.862568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.764972, 17.261299, 18.076017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140067, -0.557201, -0.818479,
		0.974715, -0.067754, 0.212930,
		-0.174100, -0.827609, 0.533622,
		11.712742, 17.013016, 18.236103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.296263, 17.046164, 17.507742>,  <11.834612, 17.592342, 17.862568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.296263, 17.046164, 17.507742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.024195, 16.865858, 17.738976>,  <11.860954, 16.757675, 17.877716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.024195, 16.865858, 17.738976>,  <12.296263, 17.046164, 17.507742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.024195, 16.865858, 17.738976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114583, -0.713525, -0.691196,
		0.724044, -0.536369, 0.433669,
		-0.680170, -0.450765, 0.578082,
		11.820144, 16.730629, 17.912399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.651284, 17.646000, 17.038910>,  <12.296263, 17.046164, 17.507742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.651284, 17.646000, 17.038910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.744834, 17.974096, 16.830101>,  <12.800964, 18.170954, 16.704817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.744834, 17.974096, 16.830101>,  <12.651284, 17.646000, 17.038910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.744834, 17.974096, 16.830101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859635, 0.076392, 0.505165,
		0.454235, -0.566893, -0.687243,
		0.233875, 0.820242, -0.522021,
		12.814997, 18.220169, 16.673494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.334412, 17.567585, 16.807314>,  <12.651284, 17.646000, 17.038910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.334412, 17.567585, 16.807314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.258101, 17.959904, 16.791130>,  <13.212314, 18.195295, 16.781420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.258101, 17.959904, 16.791130>,  <13.334412, 17.567585, 16.807314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.258101, 17.959904, 16.791130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856058, 0.186403, 0.482098,
		0.480383, 0.057337, -0.875182,
		-0.190779, 0.980799, -0.040461,
		13.200867, 18.254143, 16.778992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.991760, 17.744995, 16.815453>,  <13.334412, 17.567585, 16.807314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.991760, 17.744995, 16.815453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.757951, 18.049803, 16.926922>,  <13.617665, 18.232687, 16.993803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.757951, 18.049803, 16.926922>,  <13.991760, 17.744995, 16.815453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.757951, 18.049803, 16.926922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682083, 0.275479, 0.677403,
		0.439426, 0.586035, -0.680785,
		-0.584524, 0.762020, 0.278672,
		13.582594, 18.278408, 17.010523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.508918, 18.156942, 17.076506>,  <13.991760, 17.744995, 16.815453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.508918, 18.156942, 17.076506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.161940, 18.329197, 17.176176>,  <13.953753, 18.432550, 17.235979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.161940, 18.329197, 17.176176>,  <14.508918, 18.156942, 17.076506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.161940, 18.329197, 17.176176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400553, 0.307393, 0.863173,
		0.295118, 0.848565, -0.439139,
		-0.867446, 0.430636, 0.249178,
		13.901706, 18.458387, 17.250929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.613496, 18.831320, 17.423531>,  <14.508918, 18.156942, 17.076506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.613496, 18.831320, 17.423531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.242632, 18.767591, 17.559172>,  <14.020113, 18.729355, 17.640556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.242632, 18.767591, 17.559172>,  <14.613496, 18.831320, 17.423531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.242632, 18.767591, 17.559172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246254, 0.422990, 0.872032,
		-0.282369, 0.892018, -0.352946,
		-0.927161, -0.159321, 0.339102,
		13.964483, 18.719795, 17.660902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.301214, 19.471338, 17.772627>,  <14.613496, 18.831320, 17.423531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.301214, 19.471338, 17.772627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.073935, 19.167032, 17.898092>,  <13.937567, 18.984449, 17.973372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.073935, 19.167032, 17.898092>,  <14.301214, 19.471338, 17.772627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.073935, 19.167032, 17.898092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137091, 0.288334, 0.947665,
		-0.811392, 0.581463, -0.059537,
		-0.568198, -0.760766, 0.313666,
		13.903475, 18.938803, 17.992191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.826253, 19.732321, 18.339823>,  <14.301214, 19.471338, 17.772627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.826253, 19.732321, 18.339823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.847976, 19.337706, 18.401518>,  <13.861010, 19.100937, 18.438536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.847976, 19.337706, 18.401518>,  <13.826253, 19.732321, 18.339823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.847976, 19.337706, 18.401518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137939, 0.160399, 0.977366,
		-0.988951, -0.031803, 0.144793,
		0.054308, -0.986540, 0.154240,
		13.864268, 19.041744, 18.447790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.324435, 19.627050, 18.860874>,  <13.826253, 19.732321, 18.339823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.324435, 19.627050, 18.860874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.558165, 19.302876, 18.877638>,  <13.698402, 19.108370, 18.887695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.558165, 19.302876, 18.877638>,  <13.324435, 19.627050, 18.860874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.558165, 19.302876, 18.877638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007162, 0.056790, 0.998360,
		-0.811490, -0.583065, 0.038988,
		0.584323, -0.810438, 0.041909,
		13.733461, 19.059744, 18.890211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.999032, 19.274305, 19.458630>,  <13.324435, 19.627050, 18.860874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.999032, 19.274305, 19.458630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.377295, 19.159328, 19.397821>,  <13.604252, 19.090342, 19.361338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.377295, 19.159328, 19.397821>,  <12.999032, 19.274305, 19.458630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377295, 19.159328, 19.397821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119473, -0.127664, 0.984595,
		-0.302423, -0.949251, -0.086384,
		0.945656, -0.287444, -0.152019,
		13.660992, 19.073095, 19.352217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.194064, 18.831642, 20.043755>,  <12.999032, 19.274305, 19.458630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.194064, 18.831642, 20.043755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.553718, 18.905327, 19.884947>,  <13.769509, 18.949537, 19.789661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.553718, 18.905327, 19.884947>,  <13.194064, 18.831642, 20.043755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.553718, 18.905327, 19.884947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383817, 0.104079, 0.917525,
		0.210342, -0.977360, 0.022877,
		0.899133, 0.184213, -0.397019,
		13.823458, 18.960590, 19.765841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.618635, 18.345375, 20.404840>,  <13.194064, 18.831642, 20.043755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.618635, 18.345375, 20.404840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.849278, 18.642994, 20.269835>,  <13.987664, 18.821566, 20.188831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.849278, 18.642994, 20.269835>,  <13.618635, 18.345375, 20.404840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.849278, 18.642994, 20.269835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230631, 0.248078, 0.940886,
		0.783794, -0.620364, -0.028557,
		0.576607, 0.744047, -0.337517,
		14.022261, 18.866207, 20.168579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.368941, 18.203405, 20.686588>,  <13.618635, 18.345375, 20.404840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.368941, 18.203405, 20.686588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.331047, 18.582640, 20.565155>,  <14.308311, 18.810181, 20.492296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.331047, 18.582640, 20.565155>,  <14.368941, 18.203405, 20.686588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.331047, 18.582640, 20.565155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529029, 0.306275, 0.791406,
		0.843299, -0.085629, -0.530579,
		-0.094736, 0.948084, -0.303582,
		14.302627, 18.867065, 20.474081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.984765, 18.619888, 20.735704>,  <14.368941, 18.203405, 20.686588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.984765, 18.619888, 20.735704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.684245, 18.882866, 20.758749>,  <14.503933, 19.040651, 20.772575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.684245, 18.882866, 20.758749>,  <14.984765, 18.619888, 20.735704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.684245, 18.882866, 20.758749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456739, 0.454953, 0.764465,
		0.476381, 0.600656, -0.642085,
		-0.751299, 0.657442, 0.057612,
		14.458856, 19.080099, 20.776031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.277649, 19.135302, 21.152201>,  <14.984765, 18.619888, 20.735704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.277649, 19.135302, 21.152201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.890476, 19.233633, 21.131514>,  <14.658173, 19.292631, 21.119101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.890476, 19.233633, 21.131514>,  <15.277649, 19.135302, 21.152201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.890476, 19.233633, 21.131514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112909, 0.609641, 0.784595,
		0.224405, 0.753595, -0.617848,
		-0.967933, 0.245828, -0.051719,
		14.600097, 19.307381, 21.115997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.218416, 19.878670, 21.181952>,  <15.277649, 19.135302, 21.152201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.218416, 19.878670, 21.181952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.873963, 19.730520, 21.321249>,  <14.667292, 19.641630, 21.404827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.873963, 19.730520, 21.321249>,  <15.218416, 19.878670, 21.181952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.873963, 19.730520, 21.321249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070429, 0.591491, 0.803230,
		-0.503478, 0.716214, -0.483267,
		-0.861133, -0.370373, 0.348245,
		14.615623, 19.619408, 21.425722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.826619, 20.388884, 21.282257>,  <15.218416, 19.878670, 21.181952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.826619, 20.388884, 21.282257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.674723, 20.100145, 21.513681>,  <14.583585, 19.926903, 21.652536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.674723, 20.100145, 21.513681>,  <14.826619, 20.388884, 21.282257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.674723, 20.100145, 21.513681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009279, 0.622405, 0.782641,
		-0.925046, 0.302569, -0.229655,
		-0.379741, -0.721848, 0.578561,
		14.560801, 19.883591, 21.687250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.572948, 20.776157, 21.854170>,  <14.826619, 20.388884, 21.282257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.572948, 20.776157, 21.854170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.570194, 20.395876, 21.978178>,  <14.568542, 20.167707, 22.052584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.570194, 20.395876, 21.978178>,  <14.572948, 20.776157, 21.854170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.570194, 20.395876, 21.978178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076843, 0.309615, 0.947752,
		-0.997019, -0.017296, -0.075187,
		-0.006887, -0.950705, 0.310021,
		14.568129, 20.110664, 22.071184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.069239, 20.740768, 22.385939>,  <14.572948, 20.776157, 21.854170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.069239, 20.740768, 22.385939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.296015, 20.417219, 22.448299>,  <14.432080, 20.223089, 22.485716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.296015, 20.417219, 22.448299>,  <14.069239, 20.740768, 22.385939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.296015, 20.417219, 22.448299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174563, 0.066990, 0.982365,
		-0.805051, -0.584157, -0.103220,
		0.566940, -0.808872, 0.155902,
		14.466097, 20.174559, 22.495070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<13.685632, 20.531199, 22.947073> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.039321, 20.344959, 22.961882>,  <14.251534, 20.233215, 22.970766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.039321, 20.344959, 22.961882>,  <13.685632, 20.531199, 22.947073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.039321, 20.344959, 22.961882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022145, 0.037380, 0.999056,
		-0.466541, -0.884207, 0.022742,
		0.884223, -0.465597, 0.037020,
		14.304587, 20.205280, 22.972988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558476, 19.961327, 23.488478>,  <13.685632, 20.531199, 22.947073>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.558476, 19.961327, 23.488478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.946649, 20.049332, 23.448761>,  <14.179552, 20.102135, 23.424931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.946649, 20.049332, 23.448761>,  <13.558476, 19.961327, 23.488478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.946649, 20.049332, 23.448761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063397, 0.164596, 0.984322,
		0.232908, -0.961510, 0.145780,
		0.970430, 0.220014, -0.099293,
		14.237778, 20.115335, 23.418974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.872952, 19.708946, 24.152796>,  <13.558476, 19.961327, 23.488478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.872952, 19.708946, 24.152796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.169538, 19.928774, 23.998806>,  <14.347489, 20.060671, 23.906412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.169538, 19.928774, 23.998806>,  <13.872952, 19.708946, 24.152796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.169538, 19.928774, 23.998806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162689, 0.409376, 0.897744,
		0.650971, -0.728276, 0.214129,
		0.741464, 0.549568, -0.384974,
		14.391977, 20.093645, 23.883314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.509854, 19.617765, 24.601355>,  <13.872952, 19.708946, 24.152796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.509854, 19.617765, 24.601355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.508574, 19.962320, 24.398178>,  <14.507807, 20.169052, 24.276272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.508574, 19.962320, 24.398178>,  <14.509854, 19.617765, 24.601355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.508574, 19.962320, 24.398178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214553, 0.496707, 0.840981,
		0.976707, -0.106290, -0.186402,
		-0.003199, 0.861386, -0.507941,
		14.507615, 20.220736, 24.245796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.111346, 19.872303, 24.790354>,  <14.509854, 19.617765, 24.601355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.111346, 19.872303, 24.790354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.894382, 20.183420, 24.663340>,  <14.764203, 20.370090, 24.587132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.894382, 20.183420, 24.663340>,  <15.111346, 19.872303, 24.790354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.894382, 20.183420, 24.663340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286750, 0.526674, 0.800243,
		0.789660, 0.343008, -0.508707,
		-0.542412, 0.777792, -0.317536,
		14.731658, 20.416758, 24.568079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.575007, 20.363274, 24.700193>,  <15.111346, 19.872303, 24.790354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.575007, 20.363274, 24.700193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.222051, 20.546370, 24.743753>,  <15.010277, 20.656227, 24.769890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.222051, 20.546370, 24.743753>,  <15.575007, 20.363274, 24.700193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.222051, 20.546370, 24.743753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397097, 0.600334, 0.694200,
		0.252386, 0.655800, -0.711496,
		-0.882392, 0.457739, 0.108900,
		14.957334, 20.683691, 24.776424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.716499, 21.072889, 24.723768>,  <15.575007, 20.363274, 24.700193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.716499, 21.072889, 24.723768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.361863, 21.025270, 24.902557>,  <15.149081, 20.996698, 25.009830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.361863, 21.025270, 24.902557>,  <15.716499, 21.072889, 24.723768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.361863, 21.025270, 24.902557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281687, 0.627509, 0.725868,
		-0.366894, 0.769454, -0.522809,
		-0.886590, -0.119048, 0.446975,
		15.095886, 20.989555, 25.036650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.288730, 21.753933, 24.728025>,  <15.716499, 21.072889, 24.723768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.288730, 21.753933, 24.728025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.131626, 21.530853, 25.020521>,  <15.037364, 21.397005, 25.196018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.131626, 21.530853, 25.020521>,  <15.288730, 21.753933, 24.728025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.131626, 21.530853, 25.020521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356097, 0.640881, 0.680049,
		-0.847901, 0.527487, -0.053116,
		-0.392758, -0.557699, 0.731240,
		15.013799, 21.363543, 25.239893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.098735, 22.282181, 25.262827>,  <15.288730, 21.753933, 24.728025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.098735, 22.282181, 25.262827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.062715, 21.936054, 25.460056>,  <15.041102, 21.728378, 25.578394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.062715, 21.936054, 25.460056>,  <15.098735, 22.282181, 25.262827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.062715, 21.936054, 25.460056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301511, 0.448166, 0.841569,
		-0.949201, 0.224451, 0.220544,
		-0.090050, -0.865314, 0.493074,
		15.035700, 21.676460, 25.607979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.743659, 22.460072, 25.867203>,  <15.098735, 22.282181, 25.262827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.743659, 22.460072, 25.867203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.952777, 22.128124, 25.945183>,  <15.078248, 21.928955, 25.991970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.952777, 22.128124, 25.945183>,  <14.743659, 22.460072, 25.867203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.952777, 22.128124, 25.945183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330711, 0.408221, 0.850874,
		-0.785695, -0.380361, 0.487862,
		0.522794, -0.829868, 0.194948,
		15.109615, 21.879164, 26.003668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.476218, 22.265194, 26.446714>,  <14.743659, 22.460072, 25.867203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.476218, 22.265194, 26.446714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.848100, 22.120935, 26.416822>,  <15.071229, 22.034380, 26.398888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.848100, 22.120935, 26.416822>,  <14.476218, 22.265194, 26.446714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.848100, 22.120935, 26.416822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274166, 0.542183, 0.794274,
		-0.245933, -0.758929, 0.602946,
		0.929704, -0.360645, -0.074731,
		15.127011, 22.012741, 26.394403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654558, 22.045204, 27.113773>,  <14.476218, 22.265194, 26.446714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.654558, 22.045204, 27.113773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.018128, 22.069105, 26.948711>,  <15.236270, 22.083447, 26.849674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.018128, 22.069105, 26.948711>,  <14.654558, 22.045204, 27.113773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.018128, 22.069105, 26.948711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345464, 0.446245, 0.825543,
		0.233475, -0.892914, 0.384960,
		0.908925, 0.059754, -0.412656,
		15.290806, 22.087032, 26.824915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.031391, 22.010414, 27.630999>,  <14.654558, 22.045204, 27.113773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.031391, 22.010414, 27.630999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.332399, 22.120150, 27.391516>,  <15.513004, 22.185991, 27.247826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.332399, 22.120150, 27.391516>,  <15.031391, 22.010414, 27.630999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.332399, 22.120150, 27.391516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461237, 0.429363, 0.776471,
		0.470081, -0.860456, 0.196569,
		0.752519, 0.274339, -0.598710,
		15.558156, 22.202450, 27.211903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.710044, 21.918823, 27.945089>,  <15.031391, 22.010414, 27.630999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.710044, 21.918823, 27.945089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.786119, 22.180866, 27.652607>,  <15.831764, 22.338093, 27.477118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.786119, 22.180866, 27.652607>,  <15.710044, 21.918823, 27.945089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.786119, 22.180866, 27.652607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665114, 0.461854, 0.586784,
		0.722117, -0.597934, -0.347882,
		0.190188, 0.655107, -0.731206,
		15.843176, 22.377398, 27.433245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.342365, 21.854982, 27.801310>,  <15.710044, 21.918823, 27.945089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.342365, 21.854982, 27.801310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.231777, 22.227341, 27.705814>,  <16.165424, 22.450756, 27.648518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.231777, 22.227341, 27.705814>,  <16.342365, 21.854982, 27.801310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.231777, 22.227341, 27.705814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677351, 0.364980, 0.638738,
		0.681733, 0.014884, -0.731450,
		-0.276471, 0.930897, -0.238737,
		16.148836, 22.506609, 27.634193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.963144, 22.166718, 27.721500>,  <16.342365, 21.854982, 27.801310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.963144, 22.166718, 27.721500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.709333, 22.472092, 27.769733>,  <16.557047, 22.655317, 27.798674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.709333, 22.472092, 27.769733>,  <16.963144, 22.166718, 27.721500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.709333, 22.472092, 27.769733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668849, 0.464197, 0.580656,
		0.387321, 0.449093, -0.805170,
		-0.634526, 0.763437, 0.120582,
		16.518976, 22.701122, 27.805908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.391409, 22.701611, 27.646460>,  <16.963144, 22.166718, 27.721500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.391409, 22.701611, 27.646460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.073862, 22.866760, 27.825037>,  <16.883335, 22.965851, 27.932184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.073862, 22.866760, 27.825037>,  <17.391409, 22.701611, 27.646460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073862, 22.866760, 27.825037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605391, 0.605749, 0.516304,
		-0.057264, 0.680149, -0.730834,
		-0.793866, 0.412875, 0.446443,
		16.835703, 22.990623, 27.958969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662460, 23.359467, 27.793575>,  <17.391409, 22.701611, 27.646460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662460, 23.359467, 27.793575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.343777, 23.338860, 28.034441>,  <17.152567, 23.326496, 28.178961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.343777, 23.338860, 28.034441>,  <17.662460, 23.359467, 27.793575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.343777, 23.338860, 28.034441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483408, 0.543679, 0.686098,
		-0.362729, 0.837711, -0.408250,
		-0.796708, -0.051516, 0.602164,
		17.104765, 23.323404, 28.215090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410713, 24.097500, 28.056641>,  <17.662460, 23.359467, 27.793575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.410713, 24.097500, 28.056641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.258415, 23.831806, 28.313959>,  <17.167036, 23.672390, 28.468349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.258415, 23.831806, 28.313959>,  <17.410713, 24.097500, 28.056641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.258415, 23.831806, 28.313959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437365, 0.483590, 0.758191,
		-0.814707, 0.570030, 0.106389,
		-0.380743, -0.664234, 0.643295,
		17.144192, 23.632536, 28.506947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161102, 24.516533, 28.562395>,  <17.410713, 24.097500, 28.056641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.161102, 24.516533, 28.562395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.206852, 24.165857, 28.749302>,  <17.234303, 23.955452, 28.861446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.206852, 24.165857, 28.749302>,  <17.161102, 24.516533, 28.562395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.206852, 24.165857, 28.749302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354190, 0.475428, 0.805306,
		-0.928153, 0.073395, 0.364891,
		0.114374, -0.876688, 0.467265,
		17.241163, 23.902851, 28.889481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.738920, 24.464306, 29.205898>,  <17.161102, 24.516533, 28.562395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.738920, 24.464306, 29.205898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.029839, 24.195057, 29.259491>,  <17.204390, 24.033508, 29.291647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.029839, 24.195057, 29.259491>,  <16.738920, 24.464306, 29.205898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.029839, 24.195057, 29.259491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259573, 0.450488, 0.854215,
		-0.635347, -0.586488, 0.502361,
		0.727294, -0.673122, 0.133980,
		17.248026, 23.993120, 29.299685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.708000, 24.350742, 29.911819>,  <16.738920, 24.464306, 29.205898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.708000, 24.350742, 29.911819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.063780, 24.232069, 29.772760>,  <17.277248, 24.160866, 29.689325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.063780, 24.232069, 29.772760>,  <16.708000, 24.350742, 29.911819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.063780, 24.232069, 29.772760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450641, 0.442545, 0.775291,
		-0.076166, -0.846247, 0.527319,
		0.889450, -0.296683, -0.347646,
		17.330614, 24.143064, 29.668467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.080967, 23.958380, 30.446854>,  <16.708000, 24.350742, 29.911819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.080967, 23.958380, 30.446854> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.371248, 24.104843, 30.213861>,  <17.545418, 24.192720, 30.074066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.371248, 24.104843, 30.213861>,  <17.080967, 23.958380, 30.446854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.371248, 24.104843, 30.213861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387670, 0.481802, 0.785862,
		0.568389, -0.796113, 0.207697,
		0.725704, 0.366158, -0.582480,
		17.588959, 24.214691, 30.039118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.105749, 23.528910, 31.034639>,  <17.080967, 23.958380, 30.446854>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.105749, 23.528910, 31.034639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.264883, 23.317282, 31.334455>,  <17.360363, 23.190304, 31.514345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.264883, 23.317282, 31.334455>,  <17.105749, 23.528910, 31.034639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264883, 23.317282, 31.334455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110531, -0.783387, -0.611627,
		0.910775, 0.326173, -0.253179,
		0.397834, -0.529071, 0.749541,
		17.384233, 23.158560, 31.559319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.648901, 23.093164, 30.712908>,  <17.105749, 23.528910, 31.034639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.648901, 23.093164, 30.712908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.504988, 22.949770, 31.057476>,  <17.418640, 22.863733, 31.264217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.504988, 22.949770, 31.057476>,  <17.648901, 23.093164, 30.712908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.504988, 22.949770, 31.057476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079072, -0.908208, -0.410982,
		0.929679, -0.215979, 0.298413,
		-0.359784, -0.358485, 0.861420,
		17.397053, 22.842224, 31.315903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.013845, 22.402910, 31.018974>,  <17.648901, 23.093164, 30.712908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.013845, 22.402910, 31.018974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.645256, 22.418299, 31.173584>,  <17.424103, 22.427532, 31.266350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.645256, 22.418299, 31.173584>,  <18.013845, 22.402910, 31.018974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.645256, 22.418299, 31.173584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194976, -0.906455, -0.374598,
		0.335957, -0.420546, 0.842777,
		-0.921476, 0.038473, 0.386526,
		17.368813, 22.429840, 31.289541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.027901, 21.754894, 31.317076>,  <18.013845, 22.402910, 31.018974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.027901, 21.754894, 31.317076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.653950, 21.886297, 31.263277>,  <17.429579, 21.965139, 31.230997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.653950, 21.886297, 31.263277>,  <18.027901, 21.754894, 31.317076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.653950, 21.886297, 31.263277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259846, -0.891453, -0.371204,
		-0.241843, -0.312081, 0.918759,
		-0.934875, 0.328508, -0.134498,
		17.373487, 21.984850, 31.222927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567133, 21.119030, 31.343039>,  <18.027901, 21.754894, 31.317076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567133, 21.119030, 31.343039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.349922, 21.405010, 31.166872>,  <17.219597, 21.576599, 31.061172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.349922, 21.405010, 31.166872>,  <17.567133, 21.119030, 31.343039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.349922, 21.405010, 31.166872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384924, -0.678070, -0.626143,
		-0.746296, -0.170483, 0.643411,
		-0.543024, 0.714952, -0.440418,
		17.187014, 21.619495, 31.034748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009239, 20.749264, 31.220312>,  <17.567133, 21.119030, 31.343039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.009239, 20.749264, 31.220312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.997463, 21.068405, 30.979460>,  <16.990398, 21.259890, 30.834948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.997463, 21.068405, 30.979460>,  <17.009239, 20.749264, 31.220312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.997463, 21.068405, 30.979460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402662, -0.560819, -0.723427,
		-0.914875, 0.221160, 0.337775,
		-0.029437, 0.797854, -0.602132,
		16.988632, 21.307762, 30.798820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318869, 20.765594, 31.022400>,  <17.009239, 20.749264, 31.220312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318869, 20.765594, 31.022400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.523529, 20.944534, 30.728981>,  <16.646326, 21.051899, 30.552931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.523529, 20.944534, 30.728981>,  <16.318869, 20.765594, 31.022400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.523529, 20.944534, 30.728981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459088, -0.579323, -0.673516,
		-0.726258, 0.681367, -0.091038,
		0.511652, 0.447352, -0.733545,
		16.677025, 21.078739, 30.508917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.782107, 20.940002, 30.499018>,  <16.318869, 20.765594, 31.022400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.782107, 20.940002, 30.499018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.138237, 20.957222, 30.317703>,  <16.351915, 20.967554, 30.208914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.138237, 20.957222, 30.317703>,  <15.782107, 20.940002, 30.499018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.138237, 20.957222, 30.317703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432618, -0.230483, -0.871619,
		-0.141998, 0.972124, -0.186581,
		0.890325, 0.043050, -0.453286,
		16.405334, 20.970137, 30.181717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662483, 21.341139, 29.967695>,  <15.782107, 20.940002, 30.499018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.662483, 21.341139, 29.967695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.976560, 21.110765, 29.876678>,  <16.165005, 20.972542, 29.822069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.976560, 21.110765, 29.876678>,  <15.662483, 21.341139, 29.967695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976560, 21.110765, 29.876678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462039, -0.300214, -0.834501,
		0.412306, 0.760375, -0.501829,
		0.785190, -0.575935, -0.227543,
		16.212116, 20.937984, 29.808416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.695513, 21.454344, 29.270517>,  <15.662483, 21.341139, 29.967695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.695513, 21.454344, 29.270517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.917644, 21.125925, 29.323427>,  <16.050922, 20.928873, 29.355173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.917644, 21.125925, 29.323427>,  <15.695513, 21.454344, 29.270517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.917644, 21.125925, 29.323427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586616, -0.499470, -0.637504,
		0.589487, 0.276429, -0.759007,
		0.555326, -0.821046, 0.132273,
		16.084242, 20.879612, 29.363110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.954902, 21.405783, 28.571735>,  <15.695513, 21.454344, 29.270517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.954902, 21.405783, 28.571735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.958463, 21.052494, 28.759285>,  <15.960599, 20.840521, 28.871815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.958463, 21.052494, 28.759285>,  <15.954902, 21.405783, 28.571735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.958463, 21.052494, 28.759285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584416, -0.385071, -0.714268,
		0.811406, -0.267658, -0.519596,
		0.008902, -0.883222, 0.468872,
		15.961133, 20.787527, 28.899946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.122622, 20.934723, 28.041039>,  <15.954902, 21.405783, 28.571735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.122622, 20.934723, 28.041039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.956284, 20.696568, 28.316019>,  <15.856482, 20.553675, 28.481007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.956284, 20.696568, 28.316019>,  <16.122622, 20.934723, 28.041039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.956284, 20.696568, 28.316019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669047, -0.311724, -0.674689,
		0.615996, -0.740501, -0.268714,
		-0.415842, -0.595388, 0.687450,
		15.831531, 20.517952, 28.522255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.008625, 20.317997, 27.689173>,  <16.122622, 20.934723, 28.041039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.008625, 20.317997, 27.689173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.749379, 20.312984, 27.993748>,  <15.593831, 20.309977, 28.176493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.749379, 20.312984, 27.993748>,  <16.008625, 20.317997, 27.689173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.749379, 20.312984, 27.993748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635890, -0.541265, -0.550160,
		0.419035, -0.840759, 0.342833,
		-0.648115, -0.012532, 0.761439,
		15.554944, 20.309225, 28.222179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.687862, 19.628092, 27.767269>,  <16.008625, 20.317997, 27.689173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.687862, 19.628092, 27.767269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.447003, 19.886593, 27.954788>,  <15.302487, 20.041695, 28.067301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.447003, 19.886593, 27.954788>,  <15.687862, 19.628092, 27.767269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.447003, 19.886593, 27.954788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791417, -0.560564, -0.243778,
		0.105250, -0.517806, 0.848999,
		-0.602148, 0.646254, 0.468800,
		15.266359, 20.080469, 28.095428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215981, 19.270599, 28.134220>,  <15.687862, 19.628092, 27.767269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215981, 19.270599, 28.134220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.051962, 19.625437, 28.049437>,  <14.953550, 19.838339, 27.998566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.051962, 19.625437, 28.049437>,  <15.215981, 19.270599, 28.134220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.051962, 19.625437, 28.049437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669774, -0.450616, -0.590210,
		-0.619084, -0.100049, 0.778926,
		-0.410047, 0.887094, -0.211959,
		14.928948, 19.891565, 27.985849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.606037, 19.082249, 27.843065>,  <15.215981, 19.270599, 28.134220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.606037, 19.082249, 27.843065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.592598, 19.476252, 27.775381>,  <14.584535, 19.712654, 27.734770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.592598, 19.476252, 27.775381>,  <14.606037, 19.082249, 27.843065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.592598, 19.476252, 27.775381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704246, -0.143465, -0.695309,
		-0.709160, 0.095805, 0.698508,
		-0.033598, 0.985007, -0.169210,
		14.582519, 19.771753, 27.724619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920586, 19.100100, 27.785648>,  <14.606037, 19.082249, 27.843065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920586, 19.100100, 27.785648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.049753, 19.432327, 27.604153>,  <14.127254, 19.631664, 27.495256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.049753, 19.432327, 27.604153>,  <13.920586, 19.100100, 27.785648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.049753, 19.432327, 27.604153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738831, -0.078393, -0.669315,
		-0.591483, 0.551371, 0.588336,
		0.322919, 0.830569, -0.453738,
		14.146629, 19.681498, 27.468031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.313363, 19.511366, 27.724081>,  <13.920586, 19.100100, 27.785648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.313363, 19.511366, 27.724081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.572085, 19.578726, 27.426548>,  <13.727319, 19.619141, 27.248028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.572085, 19.578726, 27.426548>,  <13.313363, 19.511366, 27.724081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.572085, 19.578726, 27.426548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713549, -0.210694, -0.668174,
		-0.269239, 0.962939, -0.016118,
		0.646806, 0.168398, -0.743831,
		13.766128, 19.629246, 27.203400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.991794, 19.966524, 27.280603>,  <13.313363, 19.511366, 27.724081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.991794, 19.966524, 27.280603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.282409, 19.814501, 27.051624>,  <13.456778, 19.723286, 26.914236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.282409, 19.814501, 27.051624>,  <12.991794, 19.966524, 27.280603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.282409, 19.814501, 27.051624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660038, -0.154398, -0.735194,
		0.191033, 0.911985, -0.363029,
		0.726537, -0.380059, -0.572450,
		13.500370, 19.700483, 26.879889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.846940, 20.309900, 26.718946>,  <12.991794, 19.966524, 27.280603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.846940, 20.309900, 26.718946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.091127, 20.020580, 26.589848>,  <13.237640, 19.846989, 26.512388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.091127, 20.020580, 26.589848>,  <12.846940, 20.309900, 26.718946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.091127, 20.020580, 26.589848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454570, 0.013743, -0.890605,
		0.648609, 0.690399, -0.320400,
		0.610469, -0.723299, -0.322749,
		13.274268, 19.803591, 26.493023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.926720, 20.434788, 26.013714>,  <12.846940, 20.309900, 26.718946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.926720, 20.434788, 26.013714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.014585, 20.046951, 26.056873>,  <13.067304, 19.814249, 26.082769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.014585, 20.046951, 26.056873>,  <12.926720, 20.434788, 26.013714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.014585, 20.046951, 26.056873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369168, -0.184986, -0.910766,
		0.903030, 0.160229, -0.398577,
		0.219663, -0.969591, 0.107897,
		13.080483, 19.756075, 26.089243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<18.183037, 8.372936, 6.971042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.335737, 8.249454, 6.622567>,  <18.427357, 8.175365, 6.413482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.335737, 8.249454, 6.622567>,  <18.183037, 8.372936, 6.971042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.335737, 8.249454, 6.622567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785599, -0.388198, 0.481805,
		-0.486929, -0.868333, 0.094324,
		0.381751, -0.308706, -0.871187,
		18.450262, 8.156843, 6.361211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.674206, 8.915009, 6.941984>,  <18.183037, 8.372936, 6.971042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.674206, 8.915009, 6.941984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.042681, 8.842245, 6.804389>,  <18.263765, 8.798587, 6.721832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.042681, 8.842245, 6.804389>,  <17.674206, 8.915009, 6.941984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.042681, 8.842245, 6.804389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292212, 0.907149, 0.302808,
		0.256963, -0.379460, 0.888808,
		0.921185, -0.181910, -0.343987,
		18.319036, 8.787672, 6.701193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185614, 9.061002, 7.531754>,  <17.674206, 8.915009, 6.941984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.185614, 9.061002, 7.531754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.331030, 9.108607, 7.162176>,  <18.418280, 9.137171, 6.940429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.331030, 9.108607, 7.162176>,  <18.185614, 9.061002, 7.531754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.331030, 9.108607, 7.162176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382165, 0.885454, 0.264425,
		0.849581, -0.449229, 0.276417,
		0.363542, 0.119014, -0.923944,
		18.440092, 9.144312, 6.884993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.760891, 9.162358, 8.156762>,  <18.185614, 9.061002, 7.531754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.760891, 9.162358, 8.156762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.602680, 8.820563, 8.022056>,  <17.507753, 8.615486, 7.941232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.602680, 8.820563, 8.022056>,  <17.760891, 9.162358, 8.156762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.602680, 8.820563, 8.022056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840253, -0.484701, 0.242982,
		-0.370856, -0.186863, 0.909697,
		-0.395526, -0.854487, -0.336767,
		17.484022, 8.564218, 7.921026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.417637, 9.739702, 7.879528>,  <17.760891, 9.162358, 8.156762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.417637, 9.739702, 7.879528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.056133, 9.860391, 7.758081>,  <16.839231, 9.932803, 7.685213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.056133, 9.860391, 7.758081>,  <17.417637, 9.739702, 7.879528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.056133, 9.860391, 7.758081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020686, 0.739277, 0.673084,
		0.427540, 0.602026, -0.674370,
		-0.903760, 0.301720, -0.303617,
		16.785006, 9.950907, 7.666996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445377, 10.466063, 7.747545>,  <17.417637, 9.739702, 7.879528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445377, 10.466063, 7.747545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.078260, 10.334233, 7.836121>,  <16.857990, 10.255136, 7.889266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.078260, 10.334233, 7.836121>,  <17.445377, 10.466063, 7.747545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.078260, 10.334233, 7.836121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115545, 0.755251, 0.645171,
		-0.379875, 0.566547, -0.731245,
		-0.917793, -0.329576, 0.221440,
		16.802923, 10.235360, 7.902553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.807873, 10.948887, 7.689261>,  <17.445377, 10.466063, 7.747545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.807873, 10.948887, 7.689261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.789383, 10.666900, 7.972353>,  <16.778290, 10.497707, 8.142209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.789383, 10.666900, 7.972353>,  <16.807873, 10.948887, 7.689261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.789383, 10.666900, 7.972353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076344, 0.708909, 0.701156,
		-0.996010, -0.021621, -0.086588,
		-0.046224, -0.704968, 0.707731,
		16.775517, 10.455409, 8.184672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.262247, 11.075990, 8.185711>,  <16.807873, 10.948887, 7.689261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.262247, 11.075990, 8.185711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.555265, 10.884376, 8.379164>,  <16.731077, 10.769407, 8.495235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.555265, 10.884376, 8.379164>,  <16.262247, 11.075990, 8.185711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.555265, 10.884376, 8.379164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061703, 0.754278, 0.653650,
		-0.677913, -0.448988, 0.582102,
		0.732548, -0.479035, 0.483631,
		16.775030, 10.740665, 8.524253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.044140, 10.956280, 8.956647>,  <16.262247, 11.075990, 8.185711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.044140, 10.956280, 8.956647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.442591, 10.967557, 8.923339>,  <16.681662, 10.974323, 8.903354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.442591, 10.967557, 8.923339>,  <16.044140, 10.956280, 8.956647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.442591, 10.967557, 8.923339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040522, 0.693324, 0.719486,
		0.078018, -0.720075, 0.689497,
		0.996128, 0.028193, -0.083270,
		16.741428, 10.976015, 8.898357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.284916, 10.920030, 9.624498>,  <16.044140, 10.956280, 8.956647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.284916, 10.920030, 9.624498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.556585, 11.108432, 9.399332>,  <16.719587, 11.221473, 9.264232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.556585, 11.108432, 9.399332>,  <16.284916, 10.920030, 9.624498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.556585, 11.108432, 9.399332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111580, 0.691771, 0.713444,
		0.725448, -0.547361, 0.417277,
		0.679172, 0.471007, -0.562919,
		16.760338, 11.249733, 9.230457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.041136, 10.963845, 9.986945>,  <16.284916, 10.920030, 9.624498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.041136, 10.963845, 9.986945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.003046, 11.255630, 9.716001>,  <16.980192, 11.430701, 9.553434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.003046, 11.255630, 9.716001>,  <17.041136, 10.963845, 9.986945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003046, 11.255630, 9.716001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129333, 0.683751, 0.718163,
		0.987019, -0.019220, -0.159452,
		-0.095223, 0.729462, -0.677361,
		16.974480, 11.474469, 9.512793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617485, 11.506062, 10.127351>,  <17.041136, 10.963845, 9.986945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617485, 11.506062, 10.127351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.313702, 11.670157, 9.925390>,  <17.131432, 11.768615, 9.804214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.313702, 11.670157, 9.925390>,  <17.617485, 11.506062, 10.127351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.313702, 11.670157, 9.925390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084638, 0.707205, 0.701924,
		0.645027, 0.575816, -0.502370,
		-0.759458, 0.410241, -0.504902,
		17.085865, 11.793230, 9.773919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.740166, 12.283119, 10.092864>,  <17.617485, 11.506062, 10.127351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.740166, 12.283119, 10.092864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.351698, 12.209950, 10.031713>,  <17.118618, 12.166049, 9.995022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.351698, 12.209950, 10.031713>,  <17.740166, 12.283119, 10.092864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.351698, 12.209950, 10.031713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235495, 0.636416, 0.734518,
		-0.037065, 0.749342, -0.661145,
		-0.971168, -0.182922, -0.152878,
		17.060347, 12.155074, 9.985849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413517, 12.917563, 10.030687>,  <17.740166, 12.283119, 10.092864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413517, 12.917563, 10.030687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.110306, 12.679843, 10.138165>,  <16.928379, 12.537210, 10.202653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.110306, 12.679843, 10.138165>,  <17.413517, 12.917563, 10.030687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.110306, 12.679843, 10.138165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269071, 0.660232, 0.701209,
		-0.594131, 0.459239, -0.660385,
		-0.758030, -0.594301, 0.268696,
		16.882896, 12.501553, 10.218775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.886906, 13.371299, 10.073109>,  <17.413517, 12.917563, 10.030687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.886906, 13.371299, 10.073109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.790583, 13.054373, 10.297340>,  <16.732788, 12.864218, 10.431880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.790583, 13.054373, 10.297340>,  <16.886906, 13.371299, 10.073109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.790583, 13.054373, 10.297340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227389, 0.607557, 0.761031,
		-0.943560, 0.055792, -0.326468,
		-0.240808, -0.792314, 0.560580,
		16.718340, 12.816679, 10.465514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.112047, 13.434434, 10.287114>,  <16.886906, 13.371299, 10.073109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.112047, 13.434434, 10.287114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.311176, 13.192805, 10.536038>,  <16.430653, 13.047828, 10.685393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.311176, 13.192805, 10.536038>,  <16.112047, 13.434434, 10.287114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.311176, 13.192805, 10.536038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457461, 0.426715, 0.780156,
		-0.736820, -0.673061, -0.063911,
		0.497821, -0.604072, 0.622311,
		16.460524, 13.011584, 10.722732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.814342, 13.540150, 10.855477>,  <16.112047, 13.434434, 10.287114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.814342, 13.540150, 10.855477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.104530, 13.312651, 11.010510>,  <16.278643, 13.176151, 11.103530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.104530, 13.312651, 11.010510>,  <15.814342, 13.540150, 10.855477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104530, 13.312651, 11.010510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193730, 0.371620, 0.907946,
		-0.660427, -0.733773, 0.159415,
		0.725469, -0.568749, 0.387582,
		16.322170, 13.142026, 11.126785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518359, 13.090524, 11.320977>,  <15.814342, 13.540150, 10.855477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.518359, 13.090524, 11.320977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.898356, 13.104491, 11.445103>,  <16.126354, 13.112871, 11.519578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.898356, 13.104491, 11.445103>,  <15.518359, 13.090524, 11.320977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.898356, 13.104491, 11.445103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299762, 0.380426, 0.874882,
		-0.087502, -0.924152, 0.371869,
		0.949993, 0.034918, 0.310313,
		16.183353, 13.114966, 11.538197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.585838, 12.706095, 12.047055>,  <15.518359, 13.090524, 11.320977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.585838, 12.706095, 12.047055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.904003, 12.942742, 11.994434>,  <16.094902, 13.084731, 11.962862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.904003, 12.942742, 11.994434>,  <15.585838, 12.706095, 12.047055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.904003, 12.942742, 11.994434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080583, 0.318367, 0.944536,
		0.600689, -0.740694, 0.300907,
		0.795412, 0.591620, -0.131553,
		16.142626, 13.120229, 11.954968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.925630, 12.606723, 12.701077>,  <15.585838, 12.706095, 12.047055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.925630, 12.606723, 12.701077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.092348, 12.944074, 12.565433>,  <16.192379, 13.146484, 12.484045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.092348, 12.944074, 12.565433>,  <15.925630, 12.606723, 12.701077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.092348, 12.944074, 12.565433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030616, 0.359825, 0.932517,
		0.908484, -0.399052, 0.124153,
		0.416796, 0.843376, -0.339113,
		16.217386, 13.197086, 12.463698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.656609, 12.676411, 12.955068>,  <15.925630, 12.606723, 12.701077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.656609, 12.676411, 12.955068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.525925, 13.044309, 12.868046>,  <16.447514, 13.265047, 12.815833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.525925, 13.044309, 12.868046>,  <16.656609, 12.676411, 12.955068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.525925, 13.044309, 12.868046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237409, 0.302669, 0.923054,
		0.914820, 0.249923, -0.317241,
		-0.326712, 0.919744, -0.217554,
		16.427912, 13.320232, 12.802779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.026903, 13.196915, 13.451385>,  <16.656609, 12.676411, 12.955068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.026903, 13.196915, 13.451385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.747641, 13.442600, 13.304243>,  <16.580082, 13.590012, 13.215959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.747641, 13.442600, 13.304243>,  <17.026903, 13.196915, 13.451385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.747641, 13.442600, 13.304243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214413, 0.669597, 0.711103,
		0.683082, 0.417590, -0.599181,
		-0.698159, 0.614214, -0.367853,
		16.538193, 13.626864, 13.193887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.332960, 13.844278, 13.437949>,  <17.026903, 13.196915, 13.451385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.332960, 13.844278, 13.437949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.942022, 13.924725, 13.411573>,  <16.707458, 13.972992, 13.395748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.942022, 13.924725, 13.411573>,  <17.332960, 13.844278, 13.437949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.942022, 13.924725, 13.411573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115971, 0.769493, 0.628038,
		0.177048, 0.606163, -0.775384,
		-0.977346, 0.201115, -0.065940,
		16.648819, 13.985059, 13.391791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.243048, 14.546584, 13.303158>,  <17.332960, 13.844278, 13.437949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.243048, 14.546584, 13.303158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.916151, 14.415993, 13.493116>,  <16.720013, 14.337638, 13.607092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.916151, 14.415993, 13.493116>,  <17.243048, 14.546584, 13.303158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.916151, 14.415993, 13.493116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075857, 0.755942, 0.650229,
		-0.571279, 0.567419, -0.593022,
		-0.817243, -0.326477, 0.474897,
		16.670979, 14.318049, 13.635586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.906364, 15.145901, 13.442327>,  <17.243048, 14.546584, 13.303158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.906364, 15.145901, 13.442327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.742525, 14.878659, 13.690800>,  <16.644222, 14.718314, 13.839883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.742525, 14.878659, 13.690800>,  <16.906364, 15.145901, 13.442327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.742525, 14.878659, 13.690800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177167, 0.609701, 0.772578,
		-0.894898, 0.426499, -0.131366,
		-0.409598, -0.668105, 0.621181,
		16.619646, 14.678227, 13.877154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.630411, 15.557389, 13.866169>,  <16.906364, 15.145901, 13.442327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.630411, 15.557389, 13.866169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.659485, 15.219146, 14.077702>,  <16.676929, 15.016200, 14.204621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.659485, 15.219146, 14.077702>,  <16.630411, 15.557389, 13.866169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659485, 15.219146, 14.077702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298540, 0.524369, 0.797440,
		-0.951625, 0.099918, 0.290561,
		0.072683, -0.845608, 0.528833,
		16.681290, 14.965464, 14.236351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217302, 15.678996, 14.505561>,  <16.630411, 15.557389, 13.866169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217302, 15.678996, 14.505561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.464886, 15.374929, 14.584594>,  <16.613436, 15.192490, 14.632013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.464886, 15.374929, 14.584594>,  <16.217302, 15.678996, 14.505561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.464886, 15.374929, 14.584594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280664, 0.449018, 0.848298,
		-0.733566, -0.469606, 0.491274,
		0.618957, -0.760166, 0.197583,
		16.650574, 15.146879, 14.643868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.114586, 15.618051, 15.219316>,  <16.217302, 15.678996, 14.505561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.114586, 15.618051, 15.219316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.464975, 15.449709, 15.125039>,  <16.675209, 15.348703, 15.068473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.464975, 15.449709, 15.125039>,  <16.114586, 15.618051, 15.219316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.464975, 15.449709, 15.125039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440099, 0.497322, 0.747652,
		-0.197438, -0.758651, 0.620859,
		0.875974, -0.420855, -0.235692,
		16.727768, 15.323453, 15.054332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.464043, 15.226868, 15.906813>,  <16.114586, 15.618051, 15.219316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.464043, 15.226868, 15.906813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.754292, 15.296005, 15.640400>,  <16.928440, 15.337487, 15.480553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.754292, 15.296005, 15.640400>,  <16.464043, 15.226868, 15.906813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.754292, 15.296005, 15.640400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456012, 0.604064, 0.653574,
		0.515291, -0.777966, 0.359504,
		0.725622, 0.172842, -0.666031,
		16.971977, 15.347858, 15.440591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.066723, 15.244275, 16.282984>,  <16.464043, 15.226868, 15.906813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.066723, 15.244275, 16.282984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.186138, 15.427163, 15.947885>,  <17.257788, 15.536896, 15.746825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.186138, 15.427163, 15.947885>,  <17.066723, 15.244275, 16.282984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.186138, 15.427163, 15.947885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487076, 0.681870, 0.545720,
		0.820751, -0.570966, -0.019137,
		0.298539, 0.457221, -0.837749,
		17.275700, 15.564329, 15.696560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.696987, 15.529861, 16.447828>,  <17.066723, 15.244275, 16.282984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.696987, 15.529861, 16.447828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.562788, 15.720127, 16.122576>,  <17.482269, 15.834287, 15.927423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.562788, 15.720127, 16.122576>,  <17.696987, 15.529861, 16.447828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.562788, 15.720127, 16.122576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317113, 0.869811, 0.377979,
		0.887063, -0.131045, -0.442658,
		-0.335497, 0.475664, -0.813133,
		17.462139, 15.862826, 15.878635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.104387, 16.147480, 16.386683>,  <17.696987, 15.529861, 16.447828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.104387, 16.147480, 16.386683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.786366, 16.215803, 16.153887>,  <17.595552, 16.256798, 16.014210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.786366, 16.215803, 16.153887>,  <18.104387, 16.147480, 16.386683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.786366, 16.215803, 16.153887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098151, 0.983113, 0.154453,
		0.598544, 0.065675, -0.798393,
		-0.795054, 0.170810, -0.581990,
		17.547850, 16.267046, 15.979290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749582, 16.344355, 16.397299>,  <18.104387, 16.147480, 16.386683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.749582, 16.344355, 16.397299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.965603, 16.145546, 16.668980>,  <19.095215, 16.026260, 16.831987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.965603, 16.145546, 16.668980>,  <18.749582, 16.344355, 16.397299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.965603, 16.145546, 16.668980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761574, -0.054934, -0.645746,
		0.358262, 0.865996, 0.348853,
		0.540050, -0.497024, 0.679201,
		19.127617, 15.996439, 16.872740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.297682, 15.807750, 16.080980>,  <18.749582, 16.344355, 16.397299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.297682, 15.807750, 16.080980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.311811, 16.137711, 16.306648>,  <19.320290, 16.335688, 16.442049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.311811, 16.137711, 16.306648>,  <19.297682, 15.807750, 16.080980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.311811, 16.137711, 16.306648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078573, -0.560483, 0.824430,
		0.996282, -0.073450, 0.045017,
		0.035323, 0.824902, 0.564171,
		19.322409, 16.385181, 16.475899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985126, 15.521390, 15.895792>,  <19.297682, 15.807750, 16.080980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.985126, 15.521390, 15.895792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.312246, 15.306768, 15.812542>,  <20.508518, 15.177996, 15.762592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.312246, 15.306768, 15.812542>,  <19.985126, 15.521390, 15.895792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.312246, 15.306768, 15.812542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159652, 0.558956, -0.813682,
		0.552917, 0.632201, 0.542776,
		0.817798, -0.536554, -0.208124,
		20.557587, 15.145802, 15.750105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.673964, 15.896291, 15.791986>,  <19.985126, 15.521390, 15.895792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.673964, 15.896291, 15.791986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.688124, 15.550473, 15.591462>,  <20.696619, 15.342983, 15.471148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.688124, 15.550473, 15.591462>,  <20.673964, 15.896291, 15.791986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.688124, 15.550473, 15.591462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168127, 0.499628, -0.849768,
		0.985129, -0.054202, 0.163040,
		0.035400, -0.864543, -0.501311,
		20.698744, 15.291110, 15.441069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.195345, 15.987588, 15.364849>,  <20.673964, 15.896291, 15.791986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.195345, 15.987588, 15.364849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.973511, 15.694201, 15.207644>,  <20.840410, 15.518169, 15.113320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.973511, 15.694201, 15.207644>,  <21.195345, 15.987588, 15.364849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.973511, 15.694201, 15.207644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146343, 0.378970, -0.913764,
		0.819156, -0.564277, -0.102834,
		-0.554587, -0.733467, -0.393014,
		20.807135, 15.474161, 15.089740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.328009, 16.606272, 14.893947>,  <21.195345, 15.987588, 15.364849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.328009, 16.606272, 14.893947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.542637, 16.271952, 14.940476>,  <21.671413, 16.071360, 14.968394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.542637, 16.271952, 14.940476>,  <21.328009, 16.606272, 14.893947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.542637, 16.271952, 14.940476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455720, -0.403024, -0.793657,
		0.710220, 0.372841, -0.597141,
		0.536570, -0.835800, 0.116325,
		21.703608, 16.021212, 14.975374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.564709, 16.396795, 14.178273>,  <21.328009, 16.606272, 14.893947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.564709, 16.396795, 14.178273> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.621674, 16.066547, 14.396656>,  <21.655851, 15.868399, 14.527686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.621674, 16.066547, 14.396656>,  <21.564709, 16.396795, 14.178273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.621674, 16.066547, 14.396656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198427, -0.564196, -0.801442,
		0.969714, 0.005801, -0.244173,
		0.142411, -0.825621, 0.545958,
		21.664396, 15.818861, 14.560443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.023972, 15.939722, 13.787595>,  <21.564709, 16.396795, 14.178273>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.023972, 15.939722, 13.787595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.822506, 15.713695, 14.048982>,  <21.701626, 15.578078, 14.205814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.822506, 15.713695, 14.048982>,  <22.023972, 15.939722, 13.787595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.822506, 15.713695, 14.048982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001456, -0.756970, -0.653448,
		0.863899, -0.328166, 0.382081,
		-0.503663, -0.565069, 0.653468,
		21.671408, 15.544174, 14.245022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.298647, 15.364379, 13.663022>,  <22.023972, 15.939722, 13.787595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.298647, 15.364379, 13.663022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.961370, 15.264874, 13.853661>,  <21.759005, 15.205172, 13.968043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.961370, 15.264874, 13.853661>,  <22.298647, 15.364379, 13.663022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.961370, 15.264874, 13.853661> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182113, -0.701932, -0.688568,
		0.505827, -0.667390, 0.546562,
		-0.843193, -0.248760, 0.476597,
		21.708412, 15.190247, 13.996639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.317190, 14.657653, 13.752302>,  <22.298647, 15.364379, 13.663022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.317190, 14.657653, 13.752302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.935642, 14.776917, 13.766338>,  <21.706713, 14.848476, 13.774760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.935642, 14.776917, 13.766338>,  <22.317190, 14.657653, 13.752302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.935642, 14.776917, 13.766338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269736, -0.799821, -0.536217,
		-0.131812, -0.520946, 0.843351,
		-0.953870, 0.298162, 0.035092,
		21.649481, 14.866366, 13.776866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.922991, 13.867526, 13.937457>,  <22.317190, 14.657653, 13.752302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.922991, 13.867526, 13.937457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.652954, 14.130982, 13.804524>,  <21.490932, 14.289056, 13.724765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.652954, 14.130982, 13.804524>,  <21.922991, 13.867526, 13.937457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.652954, 14.130982, 13.804524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346125, -0.680595, -0.645746,
		-0.651498, -0.320910, 0.687436,
		-0.675092, 0.658641, -0.332331,
		21.450426, 14.328574, 13.704824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.337326, 13.488009, 13.806979>,  <21.922991, 13.867526, 13.937457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.337326, 13.488009, 13.806979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.242691, 13.810558, 13.590169>,  <21.185911, 14.004087, 13.460083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.242691, 13.810558, 13.590169>,  <21.337326, 13.488009, 13.806979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.242691, 13.810558, 13.590169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324910, -0.591407, -0.738019,
		-0.915675, 0.001504, 0.401917,
		-0.236587, 0.806372, -0.542025,
		21.171715, 14.052470, 13.427562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.619291, 13.477839, 13.568649>,  <21.337326, 13.488009, 13.806979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.619291, 13.477839, 13.568649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.809792, 13.725889, 13.319289>,  <20.924091, 13.874720, 13.169673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.809792, 13.725889, 13.319289>,  <20.619291, 13.477839, 13.568649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.809792, 13.725889, 13.319289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263779, -0.575558, -0.774050,
		-0.838811, 0.533084, -0.110535,
		0.476253, 0.620125, -0.623401,
		20.952667, 13.911926, 13.132269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.060724, 13.593268, 13.021132>,  <20.619291, 13.477839, 13.568649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.060724, 13.593268, 13.021132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.410561, 13.690701, 12.853436>,  <20.620462, 13.749161, 12.752819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.410561, 13.690701, 12.853436>,  <20.060724, 13.593268, 13.021132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.410561, 13.690701, 12.853436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321851, -0.355033, -0.877704,
		-0.362636, 0.902563, -0.232111,
		0.874590, 0.243582, -0.419238,
		20.672937, 13.763776, 12.727665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.964634, 14.077247, 12.476474>,  <20.060724, 13.593268, 13.021132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.964634, 14.077247, 12.476474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.292114, 13.856734, 12.412201>,  <20.488602, 13.724427, 12.373637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.292114, 13.856734, 12.412201>,  <19.964634, 14.077247, 12.476474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.292114, 13.856734, 12.412201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419251, -0.382663, -0.823285,
		0.392374, 0.741390, -0.544411,
		0.818701, -0.551280, -0.160681,
		20.537725, 13.691350, 12.363997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.820272, 13.800283, 11.903932>,  <19.964634, 14.077247, 12.476474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.820272, 13.800283, 11.903932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.170752, 13.614568, 11.955646>,  <20.381039, 13.503139, 11.986674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.170752, 13.614568, 11.955646>,  <19.820272, 13.800283, 11.903932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.170752, 13.614568, 11.955646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224159, -0.630060, -0.743490,
		0.426652, 0.622463, -0.656131,
		0.876197, -0.464289, 0.129286,
		20.433611, 13.475281, 11.994431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.166645, 13.811993, 11.255863>,  <19.820272, 13.800283, 11.903932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.166645, 13.811993, 11.255863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.301741, 13.492081, 11.454370>,  <20.382799, 13.300134, 11.573475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.301741, 13.492081, 11.454370>,  <20.166645, 13.811993, 11.255863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.301741, 13.492081, 11.454370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238389, -0.582744, -0.776905,
		0.910551, 0.144087, -0.387474,
		0.337740, -0.799781, 0.496269,
		20.403063, 13.252147, 11.603251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.542227, 13.355794, 10.754593>,  <20.166645, 13.811993, 11.255863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.542227, 13.355794, 10.754593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.482424, 13.111678, 11.065769>,  <20.446543, 12.965208, 11.252475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.482424, 13.111678, 11.065769>,  <20.542227, 13.355794, 10.754593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482424, 13.111678, 11.065769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342558, -0.706087, -0.619754,
		0.927525, -0.359147, -0.103496,
		-0.149506, -0.610291, 0.777942,
		20.437572, 12.928591, 11.299151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.830687, 12.628990, 10.627390>,  <20.542227, 13.355794, 10.754593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.830687, 12.628990, 10.627390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.557171, 12.561889, 10.911444>,  <20.393061, 12.521627, 11.081876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.557171, 12.561889, 10.911444>,  <20.830687, 12.628990, 10.627390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.557171, 12.561889, 10.911444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360606, -0.768373, -0.528740,
		0.634346, -0.617626, 0.464913,
		-0.683790, -0.167754, 0.710134,
		20.352034, 12.511562, 11.124484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.633955, 11.946585, 10.583361>,  <20.830687, 12.628990, 10.627390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.633955, 11.946585, 10.583361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.330521, 12.149519, 10.746901>,  <20.148460, 12.271279, 10.845024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.330521, 12.149519, 10.746901>,  <20.633955, 11.946585, 10.583361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.330521, 12.149519, 10.746901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649726, -0.541764, -0.533242,
		-0.049033, -0.670150, 0.740604,
		-0.758585, 0.507336, 0.408850,
		20.102945, 12.301720, 10.869555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.271258, 20.168615, 20.204000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.285474, 19.779009, 20.293467>,  <14.294003, 19.545244, 20.347147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.285474, 19.779009, 20.293467>,  <14.271258, 20.168615, 20.204000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.285474, 19.779009, 20.293467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147046, -0.216275, -0.965196,
		0.988491, 0.067191, 0.135539,
		0.035539, -0.974018, 0.223666,
		14.296136, 19.486803, 20.360567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.744877, 19.862907, 19.754883>,  <14.271258, 20.168615, 20.204000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.744877, 19.862907, 19.754883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.521840, 19.552250, 19.872128>,  <14.388018, 19.365856, 19.942474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.521840, 19.552250, 19.872128>,  <14.744877, 19.862907, 19.754883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.521840, 19.552250, 19.872128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079438, -0.301558, -0.950133,
		0.826306, -0.553070, 0.106451,
		-0.557591, -0.776644, 0.293114,
		14.354563, 19.319256, 19.960062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.997510, 19.338203, 19.375633>,  <14.744877, 19.862907, 19.754883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.997510, 19.338203, 19.375633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627704, 19.226957, 19.479879>,  <14.405820, 19.160210, 19.542427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.627704, 19.226957, 19.479879>,  <14.997510, 19.338203, 19.375633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.627704, 19.226957, 19.479879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135444, -0.399417, -0.906709,
		0.356265, -0.873566, 0.331598,
		-0.924516, -0.278116, 0.260617,
		14.350348, 19.143522, 19.558065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.909132, 18.682283, 19.195576>,  <14.997510, 19.338203, 19.375633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.909132, 18.682283, 19.195576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.533004, 18.811447, 19.238518>,  <14.307326, 18.888947, 19.264282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.533004, 18.811447, 19.238518>,  <14.909132, 18.682283, 19.195576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.533004, 18.811447, 19.238518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216992, -0.325979, -0.920137,
		-0.262128, -0.888519, 0.376594,
		-0.940321, 0.322912, 0.107354,
		14.250908, 18.908319, 19.270723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.626272, 18.114090, 18.886404>,  <14.909132, 18.682283, 19.195576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.626272, 18.114090, 18.886404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.331395, 18.384026, 18.899925>,  <14.154469, 18.545986, 18.908039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.331395, 18.384026, 18.899925>,  <14.626272, 18.114090, 18.886404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.331395, 18.384026, 18.899925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360727, -0.350768, -0.864198,
		-0.571336, -0.649273, 0.502015,
		-0.737191, 0.674838, 0.033804,
		14.110238, 18.586477, 18.910067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.954150, 17.782393, 18.729609>,  <14.626272, 18.114090, 18.886404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.954150, 17.782393, 18.729609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.929267, 18.170393, 18.635605>,  <13.914337, 18.403193, 18.579203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.929267, 18.170393, 18.635605>,  <13.954150, 17.782393, 18.729609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.929267, 18.170393, 18.635605> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296795, -0.242792, -0.923561,
		-0.952913, 0.012297, 0.302995,
		-0.062207, 0.970001, -0.235009,
		13.910604, 18.461393, 18.565102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.353088, 17.728016, 18.358450>,  <13.954150, 17.782393, 18.729609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.353088, 17.728016, 18.358450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558030, 18.056404, 18.257650>,  <13.680995, 18.253437, 18.197170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.558030, 18.056404, 18.257650>,  <13.353088, 17.728016, 18.358450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.558030, 18.056404, 18.257650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333299, -0.080344, -0.939391,
		-0.791457, 0.565293, 0.232463,
		0.512354, 0.820968, -0.252000,
		13.711737, 18.302694, 18.182051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.905643, 18.156778, 18.006380>,  <13.353088, 17.728016, 18.358450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.905643, 18.156778, 18.006380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.241661, 18.338934, 17.888432>,  <13.443272, 18.448227, 17.817663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.241661, 18.338934, 17.888432>,  <12.905643, 18.156778, 18.006380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.241661, 18.338934, 17.888432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344253, 0.027355, -0.938479,
		-0.419306, 0.889873, 0.179747,
		0.840043, 0.455388, -0.294871,
		13.493674, 18.475550, 17.799971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.770462, 18.803417, 17.705181>,  <12.905643, 18.156778, 18.006380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.770462, 18.803417, 17.705181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.139740, 18.731180, 17.569477>,  <13.361306, 18.687838, 17.488054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.139740, 18.731180, 17.569477>,  <12.770462, 18.803417, 17.705181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.139740, 18.731180, 17.569477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343018, 0.010990, -0.939265,
		0.173355, 0.983496, -0.051801,
		0.923194, -0.180595, -0.339262,
		13.416698, 18.677002, 17.467699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.898683, 19.416853, 17.296865>,  <12.770462, 18.803417, 17.705181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.898683, 19.416853, 17.296865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.112744, 19.093925, 17.197388>,  <13.241181, 18.900169, 17.137701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.112744, 19.093925, 17.197388>,  <12.898683, 19.416853, 17.296865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.112744, 19.093925, 17.197388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342799, 0.061530, -0.937392,
		0.772075, 0.586901, -0.243819,
		0.535154, -0.807317, -0.248695,
		13.273291, 18.851730, 17.122780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.122645, 19.532415, 16.612469>,  <12.898683, 19.416853, 17.296865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.122645, 19.532415, 16.612469> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.167729, 19.144129, 16.697329>,  <13.194779, 18.911158, 16.748243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.167729, 19.144129, 16.697329>,  <13.122645, 19.532415, 16.612469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.167729, 19.144129, 16.697329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258257, -0.234789, -0.937111,
		0.959479, 0.050833, -0.277157,
		0.112710, -0.970716, 0.212147,
		13.201542, 18.852915, 16.760973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.536337, 19.251394, 16.077608>,  <13.122645, 19.532415, 16.612469>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.536337, 19.251394, 16.077608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.307114, 18.957951, 16.223715>,  <13.169580, 18.781883, 16.311378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.307114, 18.957951, 16.223715>,  <13.536337, 19.251394, 16.077608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.307114, 18.957951, 16.223715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322792, -0.207622, -0.923417,
		0.753266, -0.647076, -0.117824,
		-0.573058, -0.733612, 0.365265,
		13.135197, 18.737867, 16.333294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.778323, 18.624592, 15.779778>,  <13.536337, 19.251394, 16.077608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.778323, 18.624592, 15.779778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.396565, 18.649313, 15.896611>,  <13.167511, 18.664146, 15.966711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.396565, 18.649313, 15.896611>,  <13.778323, 18.624592, 15.779778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.396565, 18.649313, 15.896611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298514, -0.182495, -0.936795,
		-0.004594, -0.981263, 0.192621,
		-0.954394, 0.061803, 0.292082,
		13.110247, 18.667854, 15.984236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.935303, 18.588369, 15.128948>,  <13.778323, 18.624592, 15.779778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.935303, 18.588369, 15.128948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.173842, 18.354061, 14.909407>,  <14.316966, 18.213476, 14.777681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.173842, 18.354061, 14.909407>,  <13.935303, 18.588369, 15.128948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.173842, 18.354061, 14.909407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702844, 0.050718, 0.709534,
		-0.387788, -0.808888, 0.441951,
		0.596348, -0.585772, -0.548854,
		14.352747, 18.178329, 14.744751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.106537, 18.014051, 15.570152>,  <13.935303, 18.588369, 15.128948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.106537, 18.014051, 15.570152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.383848, 18.128498, 15.305576>,  <14.550235, 18.197166, 15.146831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.383848, 18.128498, 15.305576>,  <14.106537, 18.014051, 15.570152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.383848, 18.128498, 15.305576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658327, 0.121982, 0.742782,
		0.293208, -0.950398, -0.103793,
		0.693278, 0.286119, -0.661439,
		14.591831, 18.214334, 15.107144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.656990, 17.600185, 15.741498>,  <14.106537, 18.014051, 15.570152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.656990, 17.600185, 15.741498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.788466, 17.921978, 15.543601>,  <14.867352, 18.115053, 15.424863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.788466, 17.921978, 15.543601>,  <14.656990, 17.600185, 15.741498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.788466, 17.921978, 15.543601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751721, 0.094271, 0.652709,
		0.571732, -0.586448, -0.573760,
		0.328692, 0.804482, -0.494743,
		14.887074, 18.163322, 15.395178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.326801, 17.584473, 15.679472>,  <14.656990, 17.600185, 15.741498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.326801, 17.584473, 15.679472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.265792, 17.974300, 15.613801>,  <15.229186, 18.208197, 15.574398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.265792, 17.974300, 15.613801>,  <15.326801, 17.584473, 15.679472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.265792, 17.974300, 15.613801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775790, 0.220981, 0.591030,
		0.612280, -0.037221, -0.789765,
		-0.152524, 0.974568, -0.164178,
		15.220035, 18.266670, 15.564548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.044436, 17.737347, 15.601468>,  <15.326801, 17.584473, 15.679472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.044436, 17.737347, 15.601468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.829574, 18.069752, 15.659270>,  <15.700657, 18.269196, 15.693952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.829574, 18.069752, 15.659270>,  <16.044436, 17.737347, 15.601468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.829574, 18.069752, 15.659270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727188, 0.369438, 0.578545,
		0.427393, 0.415850, -0.802748,
		-0.537153, 0.831014, 0.144505,
		15.668427, 18.319056, 15.702621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.483738, 18.299417, 15.489614>,  <16.044436, 17.737347, 15.601468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.483738, 18.299417, 15.489614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.194384, 18.406672, 15.744116>,  <16.020771, 18.471024, 15.896816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.194384, 18.406672, 15.744116>,  <16.483738, 18.299417, 15.489614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.194384, 18.406672, 15.744116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689488, 0.329030, 0.645248,
		-0.036334, 0.905452, -0.422890,
		-0.723385, 0.268134, 0.636253,
		15.977368, 18.487112, 15.934992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.866938, 18.820408, 15.744108>,  <16.483738, 18.299417, 15.489614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.866938, 18.820408, 15.744108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575230, 18.718439, 15.998095>,  <16.400206, 18.657257, 16.150486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.575230, 18.718439, 15.998095>,  <16.866938, 18.820408, 15.744108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575230, 18.718439, 15.998095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572396, 0.281135, 0.770276,
		-0.374873, 0.925190, -0.059105,
		-0.729269, -0.254924, 0.634965,
		16.356449, 18.641962, 16.188583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.979383, 19.375172, 16.256283>,  <16.866938, 18.820408, 15.744108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.979383, 19.375172, 16.256283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743673, 19.106329, 16.435627>,  <16.602247, 18.945023, 16.543234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743673, 19.106329, 16.435627>,  <16.979383, 19.375172, 16.256283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.743673, 19.106329, 16.435627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536516, 0.089391, 0.839142,
		-0.604072, 0.735038, 0.307921,
		-0.589276, -0.672107, 0.448358,
		16.566891, 18.904697, 16.570135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.005985, 19.651031, 16.929361>,  <16.979383, 19.375172, 16.256283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.005985, 19.651031, 16.929361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.861633, 19.281118, 16.977602>,  <16.775023, 19.059170, 17.006546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.861633, 19.281118, 16.977602>,  <17.005985, 19.651031, 16.929361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.861633, 19.281118, 16.977602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219886, 0.041297, 0.974651,
		-0.906320, 0.378249, 0.188444,
		-0.360879, -0.924782, 0.120600,
		16.753370, 19.003683, 17.013783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.678806, 19.606522, 17.503578>,  <17.005985, 19.651031, 16.929361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.678806, 19.606522, 17.503578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749233, 19.213373, 17.481812>,  <16.791489, 18.977484, 17.468752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.749233, 19.213373, 17.481812>,  <16.678806, 19.606522, 17.503578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.749233, 19.213373, 17.481812> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326885, 0.006232, 0.945043,
		-0.928519, -0.184179, 0.322384,
		0.176066, -0.982873, -0.054419,
		16.802053, 18.918510, 17.465487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.477039, 19.347454, 18.128756>,  <16.678806, 19.606522, 17.503578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.477039, 19.347454, 18.128756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683739, 19.028381, 18.004385>,  <16.807758, 18.836937, 17.929762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.683739, 19.028381, 18.004385>,  <16.477039, 19.347454, 18.128756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.683739, 19.028381, 18.004385> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372791, -0.117290, 0.920473,
		-0.770713, -0.591562, 0.236760,
		0.516747, -0.797682, -0.310926,
		16.838762, 18.789076, 17.911108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.312170, 18.830185, 18.641352>,  <16.477039, 19.347454, 18.128756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.312170, 18.830185, 18.641352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659678, 18.750092, 18.460180>,  <16.868181, 18.702036, 18.351477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.659678, 18.750092, 18.460180>,  <16.312170, 18.830185, 18.641352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659678, 18.750092, 18.460180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379641, -0.317982, 0.868769,
		-0.317982, -0.926710, -0.200236,
		-0.868769, 0.200236, 0.452930,
		16.920309, 18.690022, 18.324301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.432919, 18.042044, 18.754301>,  <16.312170, 18.830185, 18.641352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.432919, 18.042044, 18.754301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775438, 18.243044, 18.706556>,  <16.980949, 18.363644, 18.677910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.775438, 18.243044, 18.706556>,  <16.432919, 18.042044, 18.754301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.775438, 18.243044, 18.706556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204542, -0.117729, 0.971752,
		0.474252, -0.856525, -0.203593,
		0.856299, 0.502499, -0.119362,
		17.032328, 18.393793, 18.670748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.814713, 17.826035, 19.243046>,  <16.432919, 18.042044, 18.754301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.814713, 17.826035, 19.243046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.054041, 18.129919, 19.141182>,  <17.197638, 18.312250, 19.080065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.054041, 18.129919, 19.141182>,  <16.814713, 17.826035, 19.243046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.054041, 18.129919, 19.141182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270529, 0.107622, 0.956677,
		0.754205, -0.641293, -0.141131,
		0.598322, 0.759711, -0.254658,
		17.233538, 18.357832, 19.064785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.443581, 17.594067, 19.564562>,  <16.814713, 17.826035, 19.243046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.443581, 17.594067, 19.564562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.423981, 17.989100, 19.504860>,  <17.412222, 18.226120, 19.469038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.423981, 17.989100, 19.504860>,  <17.443581, 17.594067, 19.564562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.423981, 17.989100, 19.504860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310066, 0.157093, 0.937646,
		0.949452, -0.000336, -0.313913,
		-0.048999, 0.987584, -0.149257,
		17.409281, 18.285374, 19.460083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.051744, 17.199146, 19.808599>,  <17.443581, 17.594067, 19.564562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.051744, 17.199146, 19.808599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.898417, 16.940794, 20.072693>,  <17.806419, 16.785784, 20.231148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.898417, 16.940794, 20.072693>,  <18.051744, 17.199146, 19.808599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.898417, 16.940794, 20.072693> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510704, -0.447397, -0.734178,
		0.769576, -0.618607, -0.158357,
		-0.383319, -0.645880, 0.660231,
		17.783421, 16.747030, 20.270761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185949, 16.595928, 19.479578>,  <18.051744, 17.199146, 19.808599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.185949, 16.595928, 19.479578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.914806, 16.478174, 19.749050>,  <17.752121, 16.407522, 19.910734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.914806, 16.478174, 19.749050>,  <18.185949, 16.595928, 19.479578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.914806, 16.478174, 19.749050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499162, -0.488466, -0.715708,
		0.539765, -0.821424, 0.184164,
		-0.677858, -0.294386, 0.673680,
		17.711449, 16.389858, 19.951155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.955095, 15.912957, 19.255972>,  <18.185949, 16.595928, 19.479578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.955095, 15.912957, 19.255972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.653999, 16.026875, 19.493383>,  <17.473343, 16.095224, 19.635830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.653999, 16.026875, 19.493383>,  <17.955095, 15.912957, 19.255972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.653999, 16.026875, 19.493383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651895, -0.448113, -0.611741,
		0.091748, -0.847400, 0.522968,
		-0.752739, 0.284794, 0.593529,
		17.428177, 16.112312, 19.671442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512068, 15.388756, 19.232380>,  <17.955095, 15.912957, 19.255972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.512068, 15.388756, 19.232380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.280588, 15.695313, 19.343914>,  <17.141701, 15.879248, 19.410835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.280588, 15.695313, 19.343914>,  <17.512068, 15.388756, 19.232380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.280588, 15.695313, 19.343914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756164, -0.376155, -0.535465,
		-0.305490, -0.520721, 0.797198,
		-0.578698, 0.766392, 0.278839,
		17.106979, 15.925231, 19.427565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.853266, 15.130569, 19.414652>,  <17.512068, 15.388756, 19.232380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.853266, 15.130569, 19.414652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771339, 15.516931, 19.351307>,  <16.722183, 15.748748, 19.313299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771339, 15.516931, 19.351307>,  <16.853266, 15.130569, 19.414652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.771339, 15.516931, 19.351307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847057, -0.255986, -0.465796,
		-0.490453, 0.038741, 0.870606,
		-0.204817, 0.965904, -0.158365,
		16.709894, 15.806702, 19.303797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234772, 15.193995, 19.671160>,  <16.853266, 15.130569, 19.414652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.234772, 15.193995, 19.671160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263382, 15.500324, 19.415535>,  <16.280548, 15.684122, 19.262161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.263382, 15.500324, 19.415535>,  <16.234772, 15.193995, 19.671160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263382, 15.500324, 19.415535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829900, -0.309722, -0.464045,
		-0.553308, 0.563548, 0.613404,
		0.071527, 0.765823, -0.639060,
		16.284840, 15.730071, 19.223818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.635536, 15.404113, 19.557720>,  <16.234772, 15.193995, 19.671160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.635536, 15.404113, 19.557720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.803792, 15.556054, 19.228168>,  <15.904745, 15.647219, 19.030437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.803792, 15.556054, 19.228168>,  <15.635536, 15.404113, 19.557720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803792, 15.556054, 19.228168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775258, -0.321175, -0.543895,
		-0.471210, 0.867501, 0.159386,
		0.420638, 0.379854, -0.823878,
		15.929983, 15.670011, 18.981005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.035908, 15.644431, 19.100914>,  <15.635536, 15.404113, 19.557720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.035908, 15.644431, 19.100914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338806, 15.628748, 18.840134>,  <15.520545, 15.619338, 18.683666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338806, 15.628748, 18.840134>,  <15.035908, 15.644431, 19.100914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338806, 15.628748, 18.840134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629606, -0.309298, -0.712693,
		-0.173704, 0.950157, -0.258901,
		0.757247, -0.039208, -0.651951,
		15.565980, 15.616985, 18.644548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.792181, 15.874712, 18.419641>,  <15.035908, 15.644431, 19.100914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.792181, 15.874712, 18.419641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.133345, 15.701346, 18.303230>,  <15.338043, 15.597327, 18.233383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.133345, 15.701346, 18.303230>,  <14.792181, 15.874712, 18.419641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.133345, 15.701346, 18.303230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449259, -0.325400, -0.832034,
		0.265915, 0.840397, -0.472252,
		0.852910, -0.433414, -0.291027,
		15.389217, 15.571322, 18.215921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.979886, 16.061871, 17.657343>,  <14.792181, 15.874712, 18.419641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.979886, 16.061871, 17.657343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138132, 15.710231, 17.763678>,  <15.233080, 15.499247, 17.827478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.138132, 15.710231, 17.763678>,  <14.979886, 16.061871, 17.657343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.138132, 15.710231, 17.763678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371704, -0.417946, -0.828949,
		0.839835, 0.229133, -0.492112,
		0.395616, -0.879101, 0.265836,
		15.256817, 15.446501, 17.843428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.308311, 15.827791, 17.101915>,  <14.979886, 16.061871, 17.657343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.308311, 15.827791, 17.101915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.226916, 15.519476, 17.343403>,  <15.178080, 15.334487, 17.488297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.226916, 15.519476, 17.343403>,  <15.308311, 15.827791, 17.101915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.226916, 15.519476, 17.343403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385239, -0.503851, -0.773127,
		0.900103, -0.389896, -0.194412,
		-0.203485, -0.770789, 0.603720,
		15.165871, 15.288239, 17.524519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.572506, 15.185767, 16.838659>,  <15.308311, 15.827791, 17.101915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.572506, 15.185767, 16.838659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233339, 15.163612, 17.049551>,  <15.029840, 15.150319, 17.176086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.233339, 15.163612, 17.049551>,  <15.572506, 15.185767, 16.838659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.233339, 15.163612, 17.049551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453105, -0.440558, -0.774986,
		0.275200, -0.896014, 0.348460,
		-0.847915, -0.055387, 0.527230,
		14.978965, 15.146996, 17.207720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<19.956202, 19.051353, 24.935900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.299461, 19.024529, 24.732300>,  <20.505417, 19.008432, 24.610140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.299461, 19.024529, 24.732300>,  <19.956202, 19.051353, 24.935900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.299461, 19.024529, 24.732300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439825, -0.607440, -0.661492,
		-0.264824, 0.791530, -0.550771,
		0.858151, -0.067063, -0.508999,
		20.556906, 19.004410, 24.579599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.882534, 19.304079, 24.234198>,  <19.956202, 19.051353, 24.935900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.882534, 19.304079, 24.234198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.198669, 19.059385, 24.247732>,  <20.388351, 18.912569, 24.255854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.198669, 19.059385, 24.247732>,  <19.882534, 19.304079, 24.234198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.198669, 19.059385, 24.247732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374688, -0.526306, -0.763290,
		0.484739, 0.590580, -0.645169,
		0.790340, -0.611734, 0.033838,
		20.435772, 18.875866, 24.257883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.176067, 19.338984, 23.591965>,  <19.882534, 19.304079, 24.234198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.176067, 19.338984, 23.591965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.295252, 18.987261, 23.740578>,  <20.366762, 18.776226, 23.829746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.295252, 18.987261, 23.740578>,  <20.176067, 19.338984, 23.591965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.295252, 18.987261, 23.740578> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348725, -0.462577, -0.815116,
		0.888600, 0.113311, -0.444467,
		0.297961, -0.879308, 0.371532,
		20.384640, 18.723469, 23.852037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471764, 18.990070, 22.990313>,  <20.176067, 19.338984, 23.591965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471764, 18.990070, 22.990313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.416620, 18.695477, 23.255215>,  <20.383535, 18.518721, 23.414156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.416620, 18.695477, 23.255215>,  <20.471764, 18.990070, 22.990313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.416620, 18.695477, 23.255215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545279, -0.501755, -0.671501,
		0.826841, -0.453686, -0.332420,
		-0.137857, -0.736486, 0.662257,
		20.375263, 18.474531, 23.453892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726322, 18.366243, 22.730852>,  <20.471764, 18.990070, 22.990313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726322, 18.366243, 22.730852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.480373, 18.229700, 23.015221>,  <20.332804, 18.147774, 23.185843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.480373, 18.229700, 23.015221>,  <20.726322, 18.366243, 22.730852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.480373, 18.229700, 23.015221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432143, -0.608236, -0.665809,
		0.659687, -0.716606, 0.226471,
		-0.614870, -0.341358, 0.710922,
		20.295912, 18.127293, 23.228497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.759583, 17.642237, 22.627275>,  <20.726322, 18.366243, 22.730852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.759583, 17.642237, 22.627275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.422699, 17.723467, 22.827053>,  <20.220570, 17.772205, 22.946920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.422699, 17.723467, 22.827053>,  <20.759583, 17.642237, 22.627275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.422699, 17.723467, 22.827053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482271, -0.697903, -0.529477,
		0.241040, -0.686797, 0.685718,
		-0.842208, 0.203077, 0.499445,
		20.170036, 17.784389, 22.976887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.479195, 17.008766, 22.731804>,  <20.759583, 17.642237, 22.627275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.479195, 17.008766, 22.731804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.166721, 17.250044, 22.796186>,  <19.979237, 17.394810, 22.834816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.166721, 17.250044, 22.796186>,  <20.479195, 17.008766, 22.731804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.166721, 17.250044, 22.796186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587343, -0.622705, -0.516979,
		-0.211610, -0.498393, 0.840729,
		-0.781185, 0.603194, 0.160957,
		19.932365, 17.431002, 22.844473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.001146, 16.483728, 22.826553>,  <20.479195, 17.008766, 22.731804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.001146, 16.483728, 22.826553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.801929, 16.824196, 22.760262>,  <19.682400, 17.028477, 22.720486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.801929, 16.824196, 22.760262>,  <20.001146, 16.483728, 22.826553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.801929, 16.824196, 22.760262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568882, -0.464957, -0.678372,
		-0.654466, -0.243577, 0.715782,
		-0.498043, 0.851167, -0.165732,
		19.652517, 17.079546, 22.710543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.325045, 16.354034, 22.829813>,  <20.001146, 16.483728, 22.826553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.325045, 16.354034, 22.829813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.331886, 16.687597, 22.609156>,  <19.335991, 16.887735, 22.476761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.331886, 16.687597, 22.609156>,  <19.325045, 16.354034, 22.829813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.331886, 16.687597, 22.609156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617355, -0.425186, -0.661884,
		-0.786499, 0.351880, 0.507543,
		0.017103, 0.833905, -0.551643,
		19.337017, 16.937769, 22.443663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.647049, 16.460144, 22.629015>,  <19.325045, 16.354034, 22.829813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.647049, 16.460144, 22.629015> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.815645, 16.710251, 22.366295>,  <18.916803, 16.860315, 22.208662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.815645, 16.710251, 22.366295>,  <18.647049, 16.460144, 22.629015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.815645, 16.710251, 22.366295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667721, -0.276080, -0.691323,
		-0.613590, 0.729947, 0.301137,
		0.421492, 0.625265, -0.656801,
		18.942093, 16.897831, 22.169254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.140661, 16.935629, 22.427485>,  <18.647049, 16.460144, 22.629015>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.140661, 16.935629, 22.427485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.411541, 16.937569, 22.133171>,  <18.574070, 16.938732, 21.956583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.411541, 16.937569, 22.133171>,  <18.140661, 16.935629, 22.427485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.411541, 16.937569, 22.133171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709315, -0.261566, -0.654565,
		-0.195630, 0.965173, -0.173692,
		0.677201, 0.004850, -0.735782,
		18.614702, 16.939024, 21.912436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.890482, 17.347479, 21.930918>,  <18.140661, 16.935629, 22.427485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.890482, 17.347479, 21.930918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.171885, 17.140398, 21.736162>,  <18.340727, 17.016150, 21.619308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.171885, 17.140398, 21.736162>,  <17.890482, 17.347479, 21.930918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.171885, 17.140398, 21.736162> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627740, -0.131465, -0.767241,
		0.333194, 0.845400, -0.417470,
		0.703508, -0.517703, -0.486888,
		18.382936, 16.985086, 21.590096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.825996, 17.600975, 21.197838>,  <17.890482, 17.347479, 21.930918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.825996, 17.600975, 21.197838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.001053, 17.243353, 21.159597>,  <18.106087, 17.028780, 21.136654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.001053, 17.243353, 21.159597>,  <17.825996, 17.600975, 21.197838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.001053, 17.243353, 21.159597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611797, -0.218174, -0.760332,
		0.658920, 0.391240, -0.642461,
		0.437641, -0.894053, -0.095600,
		18.132345, 16.975138, 21.130917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.064400, 17.599316, 20.526449>,  <17.825996, 17.600975, 21.197838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.064400, 17.599316, 20.526449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.019180, 17.216459, 20.633104>,  <17.992048, 16.986744, 20.697098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.019180, 17.216459, 20.633104>,  <18.064400, 17.599316, 20.526449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.019180, 17.216459, 20.633104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510904, -0.174167, -0.841809,
		0.852172, -0.231392, -0.469319,
		-0.113048, -0.957143, 0.266640,
		17.985266, 16.929316, 20.713097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.139973, 17.945219, 19.888626>,  <18.064400, 17.599316, 20.526449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.139973, 17.945219, 19.888626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.890781, 18.253269, 19.833771>,  <17.741266, 18.438099, 19.800858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.890781, 18.253269, 19.833771>,  <18.139973, 17.945219, 19.888626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.890781, 18.253269, 19.833771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197745, 0.324669, 0.924925,
		0.756832, 0.549090, -0.354550,
		-0.622978, 0.770124, -0.137140,
		17.703888, 18.484306, 19.792629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.600302, 18.617016, 20.051455>,  <18.139973, 17.945219, 19.888626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.600302, 18.617016, 20.051455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.207853, 18.681139, 20.094723>,  <17.972383, 18.719612, 20.120684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.207853, 18.681139, 20.094723>,  <18.600302, 18.617016, 20.051455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.207853, 18.681139, 20.094723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157332, 0.336412, 0.928479,
		0.112451, 0.927970, -0.355283,
		-0.981122, 0.160306, 0.108170,
		17.913517, 18.729231, 20.127174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.522718, 19.269890, 20.347054>,  <18.600302, 18.617016, 20.051455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.522718, 19.269890, 20.347054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.160116, 19.111460, 20.405527>,  <17.942554, 19.016401, 20.440611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.160116, 19.111460, 20.405527>,  <18.522718, 19.269890, 20.347054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.160116, 19.111460, 20.405527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004860, 0.356012, 0.934469,
		-0.422164, 0.846391, -0.324652,
		-0.906506, -0.396077, 0.146182,
		17.888165, 18.992636, 20.449381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.158207, 19.802816, 20.630491>,  <18.522718, 19.269890, 20.347054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.158207, 19.802816, 20.630491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.964701, 19.469873, 20.738674>,  <17.848597, 19.270107, 20.803585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.964701, 19.469873, 20.738674>,  <18.158207, 19.802816, 20.630491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.964701, 19.469873, 20.738674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073318, 0.269398, 0.960234,
		-0.872120, 0.484359, -0.069299,
		-0.483767, -0.832358, 0.270459,
		17.819571, 19.220165, 20.819813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.229948, 19.860935, 21.349644>,  <18.158207, 19.802816, 20.630491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.229948, 19.860935, 21.349644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.925146, 19.602112, 21.339306>,  <17.742266, 19.446817, 21.333103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.925146, 19.602112, 21.339306>,  <18.229948, 19.860935, 21.349644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.925146, 19.602112, 21.339306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059920, 0.030712, 0.997731,
		-0.644795, 0.761823, -0.062174,
		-0.762003, -0.647057, -0.025845,
		17.696545, 19.407995, 21.331553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.440382, 20.196144, 21.488453>,  <18.229948, 19.860935, 21.349644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.440382, 20.196144, 21.488453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.528154, 19.817148, 21.581503>,  <17.580818, 19.589750, 21.637333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.528154, 19.817148, 21.581503>,  <17.440382, 20.196144, 21.488453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.528154, 19.817148, 21.581503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050614, 0.249172, 0.967136,
		-0.974314, -0.200445, 0.102632,
		0.219431, -0.947489, 0.232626,
		17.593983, 19.532902, 21.651291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.945044, 19.944754, 22.052036>,  <17.440382, 20.196144, 21.488453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.945044, 19.944754, 22.052036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.274395, 19.718311, 22.067892>,  <17.472006, 19.582447, 22.077406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.274395, 19.718311, 22.067892>,  <16.945044, 19.944754, 22.052036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.274395, 19.718311, 22.067892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163150, 0.303044, 0.938907,
		-0.543532, -0.766610, 0.341880,
		0.823380, -0.566104, 0.039642,
		17.521410, 19.548481, 22.079784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.901066, 19.470295, 22.694159>,  <16.945044, 19.944754, 22.052036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.901066, 19.470295, 22.694159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.287470, 19.524286, 22.605974>,  <17.519312, 19.556681, 22.553064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.287470, 19.524286, 22.605974>,  <16.901066, 19.470295, 22.694159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287470, 19.524286, 22.605974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207708, 0.102388, 0.972818,
		0.153884, -0.985544, 0.070871,
		0.966011, 0.134980, -0.220461,
		17.577272, 19.564779, 22.539837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.186855, 19.119043, 23.157499>,  <16.901066, 19.470295, 22.694159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.186855, 19.119043, 23.157499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.470896, 19.365557, 23.021292>,  <17.641319, 19.513464, 22.939568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.470896, 19.365557, 23.021292>,  <17.186855, 19.119043, 23.157499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.470896, 19.365557, 23.021292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107308, 0.383250, 0.917390,
		0.695876, -0.687979, 0.206014,
		0.710100, 0.616282, -0.340520,
		17.683926, 19.550442, 22.919136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816368, 19.075390, 23.674379>,  <17.186855, 19.119043, 23.157499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816368, 19.075390, 23.674379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.874302, 19.419048, 23.478058>,  <17.909061, 19.625244, 23.360266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.874302, 19.419048, 23.478058>,  <17.816368, 19.075390, 23.674379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.874302, 19.419048, 23.478058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311880, 0.431108, 0.846686,
		0.939018, -0.275700, -0.205512,
		0.144834, 0.859148, -0.490803,
		17.917751, 19.676792, 23.330816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.319954, 19.245495, 24.035080>,  <17.816368, 19.075390, 23.674379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.319954, 19.245495, 24.035080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.147566, 19.572390, 23.882036>,  <18.044132, 19.768526, 23.790211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.147566, 19.572390, 23.882036>,  <18.319954, 19.245495, 24.035080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.147566, 19.572390, 23.882036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205886, 0.501878, 0.840077,
		0.878564, 0.283276, -0.384553,
		-0.430972, 0.817235, -0.382610,
		18.018274, 19.817560, 23.767254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.823973, 19.741472, 23.961727>,  <18.319954, 19.245495, 24.035080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.823973, 19.741472, 23.961727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.491169, 19.963057, 23.949814>,  <18.291487, 20.096006, 23.942665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.491169, 19.963057, 23.949814>,  <18.823973, 19.741472, 23.961727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.491169, 19.963057, 23.949814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273532, 0.456349, 0.846715,
		0.482638, 0.696329, -0.531213,
		-0.832010, 0.553961, -0.029783,
		18.241566, 20.129244, 23.940880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.029806, 20.380484, 24.095728>,  <18.823973, 19.741472, 23.961727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.029806, 20.380484, 24.095728> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.643047, 20.396814, 24.196476>,  <18.410992, 20.406612, 24.256926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.643047, 20.396814, 24.196476>,  <19.029806, 20.380484, 24.095728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.643047, 20.396814, 24.196476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252687, 0.290265, 0.922982,
		-0.035426, 0.956075, -0.290973,
		-0.966899, 0.040827, 0.251871,
		18.352978, 20.409063, 24.272038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.852985, 21.123774, 24.206177>,  <19.029806, 20.380484, 24.095728>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.852985, 21.123774, 24.206177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.599478, 20.885382, 24.403416>,  <18.447372, 20.742348, 24.521759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.599478, 20.885382, 24.403416>,  <18.852985, 21.123774, 24.206177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.599478, 20.885382, 24.403416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178183, 0.507846, 0.842819,
		-0.752720, 0.622014, -0.215664,
		-0.633770, -0.595979, 0.493098,
		18.409348, 20.706589, 24.551346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<15.049869, 16.576275, 27.883015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.274042, 16.743000, 27.596746>,  <15.408546, 16.843035, 27.424986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.274042, 16.743000, 27.596746>,  <15.049869, 16.576275, 27.883015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.274042, 16.743000, 27.596746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698081, -0.227236, -0.679004,
		-0.445642, 0.880132, 0.163618,
		0.560433, 0.416811, -0.715670,
		15.442172, 16.868044, 27.382046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.587983, 17.032560, 27.558912>,  <15.049869, 16.576275, 27.883015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.587983, 17.032560, 27.558912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.888910, 16.969135, 27.303139>,  <15.069467, 16.931080, 27.149675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.888910, 16.969135, 27.303139>,  <14.587983, 17.032560, 27.558912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.888910, 16.969135, 27.303139> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648389, -0.006338, -0.761283,
		0.116658, 0.987328, -0.107579,
		0.752318, -0.158563, -0.639434,
		15.114606, 16.921566, 27.111309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.294561, 17.281948, 27.022282>,  <14.587983, 17.032560, 27.558912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.294561, 17.281948, 27.022282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.596842, 17.103418, 26.830570>,  <14.778210, 16.996300, 26.715544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.596842, 17.103418, 26.830570>,  <14.294561, 17.281948, 27.022282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.596842, 17.103418, 26.830570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588683, -0.142229, -0.795753,
		0.286999, 0.883495, -0.370227,
		0.755701, -0.446326, -0.479279,
		14.823552, 16.969521, 26.686787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.218665, 17.536390, 26.403847>,  <14.294561, 17.281948, 27.022282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.218665, 17.536390, 26.403847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.440089, 17.204149, 26.379625>,  <14.572944, 17.004805, 26.365091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.440089, 17.204149, 26.379625>,  <14.218665, 17.536390, 26.403847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.440089, 17.204149, 26.379625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497576, -0.271551, -0.823819,
		0.667824, 0.486165, -0.563609,
		0.553560, -0.830605, -0.060556,
		14.606157, 16.954967, 26.361458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.350149, 17.434391, 25.618856>,  <14.218665, 17.536390, 26.403847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.350149, 17.434391, 25.618856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.427251, 17.093359, 25.813156>,  <14.473512, 16.888741, 25.929735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.427251, 17.093359, 25.813156>,  <14.350149, 17.434391, 25.618856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.427251, 17.093359, 25.813156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403013, -0.520138, -0.753018,
		0.894665, -0.050616, -0.443860,
		0.192754, -0.852581, 0.485749,
		14.485077, 16.837585, 25.958881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.624806, 17.143946, 25.048027>,  <14.350149, 17.434391, 25.618856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.624806, 17.143946, 25.048027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.518135, 16.844299, 25.290583>,  <14.454132, 16.664511, 25.436115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.518135, 16.844299, 25.290583>,  <14.624806, 17.143946, 25.048027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.518135, 16.844299, 25.290583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571692, -0.383580, -0.725283,
		0.775919, -0.540086, -0.325970,
		-0.266679, -0.749115, 0.606389,
		14.438131, 16.619564, 25.472500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.732726, 16.601067, 24.601770>,  <14.624806, 17.143946, 25.048027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.732726, 16.601067, 24.601770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.486957, 16.506100, 24.902733>,  <14.339495, 16.449120, 25.083311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.486957, 16.506100, 24.902733>,  <14.732726, 16.601067, 24.601770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.486957, 16.506100, 24.902733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606689, -0.467494, -0.642945,
		0.504392, -0.851518, 0.143202,
		-0.614425, -0.237417, 0.752406,
		14.302629, 16.434874, 25.128454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.612977, 15.857553, 24.500025>,  <14.732726, 16.601067, 24.601770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.612977, 15.857553, 24.500025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.300342, 15.975026, 24.720158>,  <14.112761, 16.045511, 24.852238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.300342, 15.975026, 24.720158>,  <14.612977, 15.857553, 24.500025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.300342, 15.975026, 24.720158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622837, -0.318585, -0.714547,
		-0.034522, -0.901251, 0.431920,
		-0.781589, 0.293684, 0.550334,
		14.065865, 16.063131, 24.885258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.228608, 15.294669, 24.545383>,  <14.612977, 15.857553, 24.500025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.228608, 15.294669, 24.545383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.973528, 15.596429, 24.607634>,  <13.820480, 15.777485, 24.644983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.973528, 15.596429, 24.607634>,  <14.228608, 15.294669, 24.545383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.973528, 15.596429, 24.607634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555569, -0.310512, -0.771314,
		-0.533557, -0.578327, 0.617135,
		-0.637699, 0.754401, 0.155624,
		13.782218, 15.822749, 24.654322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.483591, 15.122458, 24.384378>,  <14.228608, 15.294669, 24.545383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.483591, 15.122458, 24.384378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.410104, 15.515641, 24.381849>,  <13.366012, 15.751552, 24.380331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.410104, 15.515641, 24.381849>,  <13.483591, 15.122458, 24.384378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.410104, 15.515641, 24.381849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756649, -0.145519, -0.637422,
		-0.627479, -0.112321, 0.770489,
		-0.183717, 0.982959, -0.006322,
		13.354989, 15.810529, 24.379953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.740604, 15.098169, 24.261343>,  <13.483591, 15.122458, 24.384378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.740604, 15.098169, 24.261343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.865977, 15.473193, 24.201017>,  <12.941201, 15.698207, 24.164822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.865977, 15.473193, 24.201017>,  <12.740604, 15.098169, 24.261343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.865977, 15.473193, 24.201017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691617, 0.116552, -0.712799,
		-0.650713, 0.327718, 0.684962,
		0.313431, 0.937559, -0.150813,
		12.960007, 15.754460, 24.155773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.221712, 15.534325, 24.283249>,  <12.740604, 15.098169, 24.261343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.221712, 15.534325, 24.283249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.488214, 15.727351, 24.055834>,  <12.648115, 15.843167, 23.919384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.488214, 15.727351, 24.055834>,  <12.221712, 15.534325, 24.283249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.488214, 15.727351, 24.055834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692058, 0.116123, -0.712441,
		-0.277779, 0.868128, 0.411330,
		0.666255, 0.482565, -0.568538,
		12.688090, 15.872121, 23.885273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.881272, 16.091839, 23.914528>,  <12.221712, 15.534325, 24.283249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.881272, 16.091839, 23.914528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.210588, 16.006783, 23.704012>,  <12.408176, 15.955750, 23.577702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.210588, 16.006783, 23.704012>,  <11.881272, 16.091839, 23.914528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.210588, 16.006783, 23.704012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504114, 0.152252, -0.850111,
		0.260896, 0.965197, 0.018153,
		0.823287, -0.212639, -0.526291,
		12.457574, 15.942990, 23.546125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.852053, 16.575222, 23.250458>,  <11.881272, 16.091839, 23.914528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.852053, 16.575222, 23.250458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.109873, 16.275696, 23.188711>,  <12.264565, 16.095980, 23.151663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.109873, 16.275696, 23.188711>,  <11.852053, 16.575222, 23.250458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.109873, 16.275696, 23.188711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175289, 0.051793, -0.983154,
		0.744197, 0.660750, -0.097876,
		0.644550, -0.748817, -0.154367,
		12.303238, 16.051050, 23.142401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.168543, 17.153696, 22.891607>,  <11.852053, 16.575222, 23.250458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.168543, 17.153696, 22.891607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.025278, 17.514690, 22.795908>,  <11.939319, 17.731287, 22.738487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.025278, 17.514690, 22.795908>,  <12.168543, 17.153696, 22.891607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.025278, 17.514690, 22.795908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147515, 0.307731, 0.939969,
		0.921932, 0.301369, -0.243348,
		-0.358163, 0.902485, -0.239250,
		11.917830, 17.785437, 22.724133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.664549, 17.565248, 22.980024>,  <12.168543, 17.153696, 22.891607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.664549, 17.565248, 22.980024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.318345, 17.759933, 23.027353>,  <12.110622, 17.876745, 23.055752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.318345, 17.759933, 23.027353>,  <12.664549, 17.565248, 22.980024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.318345, 17.759933, 23.027353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353190, 0.425515, 0.833182,
		0.355173, 0.762919, -0.540191,
		-0.865510, 0.486714, 0.118324,
		12.058692, 17.905949, 23.062851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.912583, 18.208548, 23.098553>,  <12.664549, 17.565248, 22.980024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.912583, 18.208548, 23.098553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.531976, 18.233410, 23.219051>,  <12.303611, 18.248327, 23.291349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.531976, 18.233410, 23.219051>,  <12.912583, 18.208548, 23.098553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.531976, 18.233410, 23.219051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279015, 0.586642, 0.760264,
		-0.129468, 0.807457, -0.575544,
		-0.951519, 0.062155, 0.301244,
		12.246520, 18.252056, 23.309425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.824474, 19.013706, 23.225031>,  <12.912583, 18.208548, 23.098553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.824474, 19.013706, 23.225031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.575391, 18.776268, 23.428944>,  <12.425941, 18.633806, 23.551292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.575391, 18.776268, 23.428944>,  <12.824474, 19.013706, 23.225031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.575391, 18.776268, 23.428944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220348, 0.492116, 0.842181,
		-0.750786, 0.636764, -0.175648,
		-0.622710, -0.593594, 0.509783,
		12.388577, 18.598190, 23.581879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.312241, 19.486261, 23.600912>,  <12.824474, 19.013706, 23.225031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.312241, 19.486261, 23.600912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.285829, 19.147999, 23.812765>,  <12.269981, 18.945042, 23.939877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.285829, 19.147999, 23.812765>,  <12.312241, 19.486261, 23.600912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.285829, 19.147999, 23.812765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016352, 0.531635, 0.846816,
		-0.997684, 0.047255, -0.048932,
		-0.066030, -0.845654, 0.529631,
		12.266020, 18.894302, 23.971655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.812097, 19.645374, 24.130751>,  <12.312241, 19.486261, 23.600912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.812097, 19.645374, 24.130751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.034895, 19.341635, 24.265299>,  <12.168573, 19.159391, 24.346027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.034895, 19.341635, 24.265299>,  <11.812097, 19.645374, 24.130751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.034895, 19.341635, 24.265299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059421, 0.367541, 0.928107,
		-0.828388, -0.536938, 0.159597,
		0.556995, -0.759349, 0.336372,
		12.201994, 19.113831, 24.366211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.715528, 19.644917, 24.801659>,  <11.812097, 19.645374, 24.130751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.715528, 19.644917, 24.801659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.029970, 19.397791, 24.794271>,  <12.218636, 19.249516, 24.789839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.029970, 19.397791, 24.794271>,  <11.715528, 19.644917, 24.801659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.029970, 19.397791, 24.794271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196933, 0.222035, 0.954944,
		-0.585880, -0.754323, 0.296212,
		0.786105, -0.617816, -0.018466,
		12.265801, 19.212446, 24.788733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.654619, 19.064098, 25.383917>,  <11.715528, 19.644917, 24.801659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.654619, 19.064098, 25.383917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.040670, 19.107010, 25.288404>,  <12.272302, 19.132757, 25.231096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.040670, 19.107010, 25.288404>,  <11.654619, 19.064098, 25.383917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.040670, 19.107010, 25.288404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231390, 0.076939, 0.969814,
		0.122416, -0.991247, 0.049432,
		0.965129, 0.107283, -0.238783,
		12.330209, 19.139194, 25.216770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.054292, 18.813343, 25.897861>,  <11.654619, 19.064098, 25.383917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.054292, 18.813343, 25.897861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.334932, 19.036947, 25.721107>,  <12.503317, 19.171110, 25.615055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.334932, 19.036947, 25.721107>,  <12.054292, 18.813343, 25.897861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.334932, 19.036947, 25.721107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451903, 0.130409, 0.882483,
		0.550945, -0.818840, -0.161124,
		0.701600, 0.559012, -0.441885,
		12.545412, 19.204651, 25.588543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.635345, 18.575945, 26.220211>,  <12.054292, 18.813343, 25.897861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.635345, 18.575945, 26.220211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.773872, 18.901018, 26.032759>,  <12.856989, 19.096062, 25.920288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.773872, 18.901018, 26.032759>,  <12.635345, 18.575945, 26.220211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.773872, 18.901018, 26.032759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751129, 0.059062, 0.657508,
		0.562022, -0.579708, -0.589974,
		0.346317, 0.812681, -0.468630,
		12.877768, 19.144823, 25.892170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.397268, 18.504478, 26.250504>,  <12.635345, 18.575945, 26.220211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.397268, 18.504478, 26.250504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.329384, 18.889740, 26.167042>,  <13.288653, 19.120897, 26.116964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.329384, 18.889740, 26.167042>,  <13.397268, 18.504478, 26.250504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.329384, 18.889740, 26.167042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711976, 0.266220, 0.649783,
		0.681387, -0.038281, -0.730921,
		-0.169711, 0.963152, -0.208654,
		13.278470, 19.178686, 26.104446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.936005, 18.844799, 25.938602>,  <13.397268, 18.504478, 26.250504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.936005, 18.844799, 25.938602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.737535, 19.135298, 26.128920>,  <13.618454, 19.309597, 26.243109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.737535, 19.135298, 26.128920>,  <13.936005, 18.844799, 25.938602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.737535, 19.135298, 26.128920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781262, 0.134415, 0.609559,
		0.378737, 0.674165, -0.634082,
		-0.496173, 0.726247, 0.475792,
		13.588683, 19.353172, 26.271658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.416611, 19.195580, 26.078562>,  <13.936005, 18.844799, 25.938602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.416611, 19.195580, 26.078562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.146085, 19.338844, 26.336033>,  <13.983769, 19.424803, 26.490515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.146085, 19.338844, 26.336033>,  <14.416611, 19.195580, 26.078562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.146085, 19.338844, 26.336033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736330, 0.352934, 0.577283,
		-0.020414, 0.864383, -0.502420,
		-0.676314, 0.358163, 0.643676,
		13.943191, 19.446293, 26.529135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.710772, 19.898472, 26.268078>,  <14.416611, 19.195580, 26.078562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.710772, 19.898472, 26.268078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.439883, 19.799644, 26.545301>,  <14.277350, 19.740349, 26.711636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.439883, 19.799644, 26.545301>,  <14.710772, 19.898472, 26.268078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.439883, 19.799644, 26.545301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597137, 0.365777, 0.713887,
		-0.429883, 0.897310, -0.100179,
		-0.677221, -0.247068, 0.693058,
		14.236717, 19.725525, 26.753220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.463709, 20.560928, 26.113647>,  <14.710772, 19.898472, 26.268078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.463709, 20.560928, 26.113647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.636626, 20.819260, 25.861925>,  <14.740376, 20.974258, 25.710892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.636626, 20.819260, 25.861925>,  <14.463709, 20.560928, 26.113647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.636626, 20.819260, 25.861925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560337, -0.354397, -0.748616,
		-0.706502, 0.676245, 0.208678,
		0.432293, 0.645829, -0.629307,
		14.766315, 21.013008, 25.673134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.970411, 20.892426, 25.613575>,  <14.463709, 20.560928, 26.113647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.970411, 20.892426, 25.613575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.323123, 20.918873, 25.426773>,  <14.534750, 20.934740, 25.314692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.323123, 20.918873, 25.426773>,  <13.970411, 20.892426, 25.613575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.323123, 20.918873, 25.426773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453059, -0.156595, -0.877619,
		-0.131156, 0.985447, -0.108127,
		0.881780, 0.066117, -0.467005,
		14.587657, 20.938707, 25.286673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.852764, 21.368031, 24.985151>,  <13.970411, 20.892426, 25.613575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.852764, 21.368031, 24.985151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.172112, 21.133556, 24.930027>,  <14.363721, 20.992872, 24.896954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.172112, 21.133556, 24.930027>,  <13.852764, 21.368031, 24.985151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.172112, 21.133556, 24.930027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285805, -0.167434, -0.943547,
		0.530020, 0.792687, -0.301209,
		0.798370, -0.586186, -0.137810,
		14.411623, 20.957701, 24.888683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.947382, 21.457418, 24.218699>,  <13.852764, 21.368031, 24.985151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.947382, 21.457418, 24.218699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.176764, 21.141554, 24.305952>,  <14.314392, 20.952034, 24.358305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.176764, 21.141554, 24.305952>,  <13.947382, 21.457418, 24.218699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.176764, 21.141554, 24.305952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127768, -0.349212, -0.928292,
		0.809213, 0.504463, -0.301151,
		0.573454, -0.789663, 0.218133,
		14.348800, 20.904655, 24.371391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.460962, 21.375784, 23.688581>,  <13.947382, 21.457418, 24.218699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.460962, 21.375784, 23.688581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.446681, 21.013561, 23.857670>,  <14.438112, 20.796228, 23.959122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.446681, 21.013561, 23.857670>,  <14.460962, 21.375784, 23.688581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.446681, 21.013561, 23.857670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030729, -0.421795, -0.906170,
		0.998890, -0.045344, -0.012767,
		-0.035704, -0.905557, 0.422720,
		14.435969, 20.741894, 23.984486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206789, 21.021780, 23.580217>,  <14.460962, 21.375784, 23.688581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.206789, 21.021780, 23.580217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.934257, 20.740786, 23.662485>,  <14.770737, 20.572189, 23.711845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.934257, 20.740786, 23.662485>,  <15.206789, 21.021780, 23.580217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.934257, 20.740786, 23.662485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111072, -0.376946, -0.919552,
		0.723499, -0.603675, 0.334851,
		-0.681331, -0.702487, 0.205669,
		14.729857, 20.530039, 23.724186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.519861, 20.290789, 23.396475>,  <15.206789, 21.021780, 23.580217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.519861, 20.290789, 23.396475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.122702, 20.245205, 23.382814>,  <14.884406, 20.217854, 23.374619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.122702, 20.245205, 23.382814>,  <15.519861, 20.290789, 23.396475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.122702, 20.245205, 23.382814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071760, -0.344757, -0.935945,
		0.094889, -0.931748, 0.350487,
		-0.992898, -0.113962, -0.034149,
		14.824832, 20.211016, 23.372570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.453160, 19.617043, 23.188288>,  <15.519861, 20.290789, 23.396475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.453160, 19.617043, 23.188288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.104721, 19.793554, 23.102068>,  <14.895658, 19.899462, 23.050335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.104721, 19.793554, 23.102068>,  <15.453160, 19.617043, 23.188288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.104721, 19.793554, 23.102068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055751, -0.347214, -0.936127,
		-0.487935, -0.827476, 0.277856,
		-0.871098, 0.441278, -0.215551,
		14.843391, 19.925938, 23.037403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.110310, 19.122385, 22.818285>,  <15.453160, 19.617043, 23.188288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.110310, 19.122385, 22.818285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.920131, 19.458986, 22.715660>,  <14.806024, 19.660948, 22.654085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.920131, 19.458986, 22.715660>,  <15.110310, 19.122385, 22.818285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.920131, 19.458986, 22.715660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168390, -0.373288, -0.912305,
		-0.863479, -0.390550, 0.319179,
		-0.475446, 0.841503, -0.256562,
		14.777497, 19.711437, 22.638691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.469188, 18.919941, 22.564066>,  <15.110310, 19.122385, 22.818285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.469188, 18.919941, 22.564066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.467539, 19.291067, 22.414858>,  <14.466550, 19.513742, 22.325333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.467539, 19.291067, 22.414858>,  <14.469188, 18.919941, 22.564066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.467539, 19.291067, 22.414858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220161, -0.364712, -0.904718,
		-0.975455, 0.078395, 0.205772,
		-0.004122, 0.927814, -0.373020,
		14.466302, 19.569412, 22.302952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.882119, 18.900192, 22.168797>,  <14.469188, 18.919941, 22.564066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.882119, 18.900192, 22.168797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.100325, 19.214617, 22.052504>,  <14.231248, 19.403271, 21.982727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.100325, 19.214617, 22.052504>,  <13.882119, 18.900192, 22.168797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.100325, 19.214617, 22.052504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139898, -0.256624, -0.956333,
		-0.826344, 0.562365, -0.030023,
		0.545513, 0.786060, -0.290734,
		14.263979, 19.450434, 21.965284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.463010, 19.268238, 21.844055>,  <13.882119, 18.900192, 22.168797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.463010, 19.268238, 21.844055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.827271, 19.366671, 21.711296>,  <14.045827, 19.425730, 21.631641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.827271, 19.366671, 21.711296>,  <13.463010, 19.268238, 21.844055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.827271, 19.366671, 21.711296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295376, -0.173940, -0.939413,
		-0.288903, 0.953514, -0.085712,
		0.910653, 0.246082, -0.331897,
		14.100467, 19.440495, 21.611727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.366719, 19.694618, 21.212439>,  <13.463010, 19.268238, 21.844055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.366719, 19.694618, 21.212439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.750430, 19.585819, 21.181967>,  <13.980657, 19.520540, 21.163683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.750430, 19.585819, 21.181967>,  <13.366719, 19.694618, 21.212439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.750430, 19.585819, 21.181967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140390, -0.225079, -0.964173,
		0.245107, 0.935605, -0.254099,
		0.959277, -0.271999, -0.076181,
		14.038214, 19.504219, 21.159113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.573881, 19.970226, 20.594667>,  <13.366719, 19.694618, 21.212439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.573881, 19.970226, 20.594667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.827202, 19.668884, 20.665525>,  <13.979195, 19.488079, 20.708040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.827202, 19.668884, 20.665525>,  <13.573881, 19.970226, 20.594667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.827202, 19.668884, 20.665525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103587, -0.309358, -0.945287,
		0.766940, 0.580303, -0.273955,
		0.633303, -0.753357, 0.177147,
		14.017193, 19.442877, 20.718670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<11.095797, 6.695497, 12.932701> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.972730, 6.341172, 13.071656>,  <10.898890, 6.128577, 13.155029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.972730, 6.341172, 13.071656>,  <11.095797, 6.695497, 12.932701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.972730, 6.341172, 13.071656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798255, 0.438988, 0.412406,
		-0.517813, -0.150419, -0.842166,
		-0.307667, -0.885812, 0.347387,
		10.880429, 6.075428, 13.175872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.560962, 6.523175, 12.680902>,  <11.095797, 6.695497, 12.932701>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.560962, 6.523175, 12.680902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.541286, 6.307537, 13.017225>,  <10.529480, 6.178154, 13.219019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.541286, 6.307537, 13.017225>,  <10.560962, 6.523175, 12.680902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.541286, 6.307537, 13.017225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948852, 0.288079, 0.129195,
		-0.311867, -0.791445, -0.525693,
		-0.049191, -0.539096, 0.840806,
		10.526528, 6.145808, 13.269467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.963915, 6.035648, 12.652655>,  <10.560962, 6.523175, 12.680902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.963915, 6.035648, 12.652655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.049918, 6.136914, 13.029946>,  <10.101521, 6.197673, 13.256321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.049918, 6.136914, 13.029946>,  <9.963915, 6.035648, 12.652655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.049918, 6.136914, 13.029946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886751, 0.455283, 0.079936,
		-0.409199, -0.853596, 0.322383,
		0.215009, 0.253164, 0.943228,
		10.114421, 6.212863, 13.312915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.394791, 5.925015, 13.043980>,  <9.963915, 6.035648, 12.652655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.394791, 5.925015, 13.043980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.620454, 6.179363, 13.254654>,  <9.755852, 6.331971, 13.381059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.620454, 6.179363, 13.254654>,  <9.394791, 5.925015, 13.043980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.620454, 6.179363, 13.254654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825106, 0.457695, 0.331234,
		-0.030439, -0.621439, 0.782871,
		0.564158, 0.635869, 0.526685,
		9.789701, 6.370123, 13.412660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.222807, 5.946740, 13.814656>,  <9.394791, 5.925015, 13.043980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.222807, 5.946740, 13.814656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.379214, 6.291602, 13.685789>,  <9.473059, 6.498519, 13.608469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.379214, 6.291602, 13.685789>,  <9.222807, 5.946740, 13.814656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.379214, 6.291602, 13.685789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788010, 0.494460, 0.366811,
		0.475544, 0.110435, 0.872733,
		0.391022, 0.862157, -0.322161,
		9.496520, 6.550249, 13.589139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.319272, 5.177070, 13.780396>,  <9.222807, 5.946740, 13.814656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.319272, 5.177070, 13.780396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.959344, 5.184866, 13.954726>,  <8.743387, 5.189544, 14.059324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.959344, 5.184866, 13.954726>,  <9.319272, 5.177070, 13.780396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.959344, 5.184866, 13.954726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422356, 0.289126, 0.859082,
		-0.109264, 0.957093, -0.268393,
		-0.899820, 0.019491, 0.435825,
		8.689398, 5.190714, 14.085474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.684902, 5.060653, 13.509975>,  <9.319272, 5.177070, 13.780396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.684902, 5.060653, 13.509975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.548040, 5.009232, 13.137652>,  <8.465923, 4.978379, 12.914258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.548040, 5.009232, 13.137652>,  <8.684902, 5.060653, 13.509975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.548040, 5.009232, 13.137652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213580, 0.975308, -0.056190,
		0.915049, 0.179576, -0.361163,
		-0.342155, -0.128553, -0.930808,
		8.445394, 4.970665, 12.858410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.270704, 5.643625, 13.336604>,  <8.684902, 5.060653, 13.509975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.270704, 5.643625, 13.336604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.268316, 5.479765, 12.971715>,  <8.266884, 5.381449, 12.752782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.268316, 5.479765, 12.971715>,  <8.270704, 5.643625, 13.336604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.268316, 5.479765, 12.971715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478885, 0.802001, -0.357020,
		0.877857, 0.434718, -0.200964,
		-0.005970, -0.409651, -0.912223,
		8.266525, 5.356870, 12.698049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.604252, 6.098153, 12.746776>,  <8.270704, 5.643625, 13.336604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.604252, 6.098153, 12.746776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.301957, 5.858684, 12.640604>,  <8.120581, 5.715002, 12.576901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.301957, 5.858684, 12.640604>,  <8.604252, 6.098153, 12.746776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.301957, 5.858684, 12.640604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504417, 0.790634, -0.347075,
		0.417641, -0.128410, -0.899492,
		-0.755737, -0.598672, -0.265429,
		8.075236, 5.679082, 12.560975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.492241, 6.417019, 12.175606>,  <8.604252, 6.098153, 12.746776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.492241, 6.417019, 12.175606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.164302, 6.204346, 12.260613>,  <7.967538, 6.076742, 12.311618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.164302, 6.204346, 12.260613>,  <8.492241, 6.417019, 12.175606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.164302, 6.204346, 12.260613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571057, 0.732178, -0.371226,
		0.041772, -0.425710, -0.903895,
		-0.819847, -0.531682, 0.212520,
		7.918348, 6.044841, 12.324369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.935059, 6.487228, 11.650277>,  <8.492241, 6.417019, 12.175606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.935059, 6.487228, 11.650277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.758110, 6.664198, 11.338235>,  <7.651940, 6.770380, 11.151010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.758110, 6.664198, 11.338235>,  <7.935059, 6.487228, 11.650277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.758110, 6.664198, 11.338235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278408, 0.894619, 0.349493,
		0.852522, -0.062581, -0.518931,
		-0.442374, 0.442425, -0.780106,
		7.625397, 6.796926, 11.104203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.369780, 6.968094, 11.439468>,  <7.935059, 6.487228, 11.650277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.369780, 6.968094, 11.439468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.988793, 7.069576, 11.372008>,  <7.760201, 7.130465, 11.331532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.988793, 7.069576, 11.372008>,  <8.369780, 6.968094, 11.439468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.988793, 7.069576, 11.372008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179143, 0.914198, 0.363525,
		0.246407, 0.316033, -0.916192,
		-0.952466, 0.253704, -0.168649,
		7.703053, 7.145687, 11.321413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.285943, 7.721317, 11.175110>,  <8.369780, 6.968094, 11.439468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.285943, 7.721317, 11.175110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.921112, 7.638227, 11.316510>,  <7.702213, 7.588372, 11.401350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.921112, 7.638227, 11.316510>,  <8.285943, 7.721317, 11.175110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.921112, 7.638227, 11.316510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084661, 0.938997, 0.333343,
		-0.401181, 0.274107, -0.874025,
		-0.912078, -0.207727, 0.353501,
		7.647489, 7.575909, 11.422561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.854463, 8.408178, 11.079724>,  <8.285943, 7.721317, 11.175110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.854463, 8.408178, 11.079724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.681693, 8.178604, 11.358015>,  <7.578031, 8.040859, 11.524990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.681693, 8.178604, 11.358015>,  <7.854463, 8.408178, 11.079724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.681693, 8.178604, 11.358015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356030, 0.817249, 0.453152,
		-0.828664, -0.051972, -0.557329,
		-0.431925, -0.573937, 0.695728,
		7.552115, 8.006423, 11.566733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.181009, 8.535796, 11.010065>,  <7.854463, 8.408178, 11.079724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.181009, 8.535796, 11.010065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.252378, 8.404109, 11.380962>,  <7.295199, 8.325097, 11.603501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.252378, 8.404109, 11.380962>,  <7.181009, 8.535796, 11.010065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.252378, 8.404109, 11.380962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398068, 0.837653, 0.374005,
		-0.899838, -0.435837, 0.018405,
		0.178422, -0.329218, 0.927244,
		7.305904, 8.305344, 11.659136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.632597, 8.646286, 11.404592>,  <7.181009, 8.535796, 11.010065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.632597, 8.646286, 11.404592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.906960, 8.601475, 11.692197>,  <7.071579, 8.574588, 11.864760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.906960, 8.601475, 11.692197>,  <6.632597, 8.646286, 11.404592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.906960, 8.601475, 11.692197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254537, 0.888724, 0.381288,
		-0.681719, -0.444544, 0.581068,
		0.685908, -0.112028, 0.719013,
		7.112733, 8.567866, 11.907901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.277030, 8.594931, 12.061914>,  <6.632597, 8.646286, 11.404592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.277030, 8.594931, 12.061914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.657197, 8.692886, 12.138575>,  <6.885298, 8.751660, 12.184571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.657197, 8.692886, 12.138575>,  <6.277030, 8.594931, 12.061914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.657197, 8.692886, 12.138575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308087, 0.825241, 0.473349,
		-0.042240, -0.508926, 0.859773,
		0.950420, 0.244890, 0.191652,
		6.942324, 8.766354, 12.196070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.135555, 8.966496, 12.506006>,  <6.277030, 8.594931, 12.061914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.135555, 8.966496, 12.506006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.520127, 9.052705, 12.437651>,  <6.750870, 9.104430, 12.396637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.520127, 9.052705, 12.437651>,  <6.135555, 8.966496, 12.506006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.520127, 9.052705, 12.437651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137258, 0.914354, 0.380943,
		0.238355, -0.342794, 0.908669,
		0.961429, 0.215522, -0.170890,
		6.808556, 9.117361, 12.386384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.560976, 9.196651, 13.149265>,  <6.135555, 8.966496, 12.506006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.560976, 9.196651, 13.149265> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.712703, 9.350967, 12.812864>,  <6.803739, 9.443557, 12.611024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.712703, 9.350967, 12.812864>,  <6.560976, 9.196651, 13.149265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.712703, 9.350967, 12.812864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158677, 0.922586, 0.351648,
		0.911559, 0.000062, 0.411170,
		0.379318, 0.385791, -0.841001,
		6.826498, 9.466704, 12.560564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.904545, 9.693287, 13.494645>,  <6.560976, 9.196651, 13.149265>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.904545, 9.693287, 13.494645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.880380, 9.786971, 13.106523>,  <6.865881, 9.843182, 12.873649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.880380, 9.786971, 13.106523>,  <6.904545, 9.693287, 13.494645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.880380, 9.786971, 13.106523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076320, 0.968153, 0.238442,
		0.995252, 0.088458, -0.040613,
		-0.060412, 0.234210, -0.970307,
		6.862257, 9.857234, 12.815431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.265271, 10.282392, 13.489985>,  <6.904545, 9.693287, 13.494645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.265271, 10.282392, 13.489985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.112809, 10.279138, 13.120194>,  <7.021331, 10.277185, 12.898320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.112809, 10.279138, 13.120194>,  <7.265271, 10.282392, 13.489985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.112809, 10.279138, 13.120194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068675, 0.997448, 0.019538,
		0.921957, 0.070936, -0.380741,
		-0.381155, -0.008134, -0.924475,
		6.998462, 10.276697, 12.842852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.707685, 10.657618, 13.000503>,  <7.265271, 10.282392, 13.489985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.707685, 10.657618, 13.000503> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.329340, 10.660810, 12.870714>,  <7.102334, 10.662724, 12.792841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.329340, 10.660810, 12.870714>,  <7.707685, 10.657618, 13.000503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.329340, 10.660810, 12.870714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016323, 0.997263, 0.072111,
		0.324157, 0.073503, -0.943143,
		-0.945862, 0.007981, -0.324470,
		7.045582, 10.663204, 12.773374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.667105, 11.174747, 12.496644>,  <7.707685, 10.657618, 13.000503>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.667105, 11.174747, 12.496644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.284576, 11.113083, 12.595985>,  <7.055058, 11.076084, 12.655590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.284576, 11.113083, 12.595985>,  <7.667105, 11.174747, 12.496644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.284576, 11.113083, 12.595985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141867, 0.987631, 0.066778,
		-0.255577, 0.028628, -0.966365,
		-0.956323, -0.154162, 0.248355,
		6.997679, 11.066834, 12.670492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.304911, 11.701524, 12.128830>,  <7.667105, 11.174747, 12.496644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.304911, 11.701524, 12.128830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.051645, 11.577929, 12.412697>,  <6.899685, 11.503773, 12.583017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.051645, 11.577929, 12.412697>,  <7.304911, 11.701524, 12.128830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.051645, 11.577929, 12.412697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286530, 0.945296, 0.155936,
		-0.719028, -0.104608, -0.687064,
		-0.633166, -0.308987, 0.709667,
		6.861695, 11.485233, 12.625597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.638461, 12.162459, 12.067009>,  <7.304911, 11.701524, 12.128830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.638461, 12.162459, 12.067009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.591450, 11.984083, 12.421934>,  <6.563243, 11.877058, 12.634890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.591450, 11.984083, 12.421934>,  <6.638461, 12.162459, 12.067009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.591450, 11.984083, 12.421934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311497, 0.864966, 0.393450,
		-0.942951, -0.230154, -0.240566,
		-0.117527, -0.445939, 0.887314,
		6.556191, 11.850302, 12.688128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.028717, 12.357466, 12.342282>,  <6.638461, 12.162459, 12.067009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.028717, 12.357466, 12.342282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.243423, 12.265200, 12.666918>,  <6.372246, 12.209840, 12.861699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.243423, 12.265200, 12.666918>,  <6.028717, 12.357466, 12.342282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.243423, 12.265200, 12.666918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247494, 0.876546, 0.412812,
		-0.806617, -0.422446, 0.413411,
		0.536765, -0.230665, 0.811589,
		6.404452, 12.196000, 12.910395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.598408, 12.689366, 12.750349>,  <6.028717, 12.357466, 12.342282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.598408, 12.689366, 12.750349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.932564, 12.631948, 12.962583>,  <6.133057, 12.597498, 13.089923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.932564, 12.631948, 12.962583>,  <5.598408, 12.689366, 12.750349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.932564, 12.631948, 12.962583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104643, 0.906109, 0.409897,
		-0.539606, -0.397945, 0.741933,
		0.835389, -0.143545, 0.530584,
		6.183181, 12.588885, 13.121758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.501815, 12.825265, 13.553519>,  <5.598408, 12.689366, 12.750349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.501815, 12.825265, 13.553519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.899128, 12.862775, 13.526404>,  <6.137516, 12.885281, 13.510136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.899128, 12.862775, 13.526404>,  <5.501815, 12.825265, 13.553519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.899128, 12.862775, 13.526404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019891, 0.715487, 0.698343,
		0.113988, -0.692304, 0.712546,
		0.993283, 0.093776, -0.067786,
		6.197114, 12.890907, 13.506068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.731226, 12.805387, 14.255974>,  <5.501815, 12.825265, 13.553519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.731226, 12.805387, 14.255974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.013721, 12.992923, 14.043777>,  <6.183218, 13.105444, 13.916460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.013721, 12.992923, 14.043777>,  <5.731226, 12.805387, 14.255974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.013721, 12.992923, 14.043777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072446, 0.697514, 0.712900,
		0.704283, -0.541892, 0.458626,
		0.706213, 0.468858, -0.530505,
		6.225592, 13.133574, 13.884630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.270013, 12.890263, 14.727906>,  <5.731226, 12.805387, 14.255974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.270013, 12.890263, 14.727906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.327305, 13.158568, 14.436822>,  <6.361680, 13.319551, 14.262172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.327305, 13.158568, 14.436822>,  <6.270013, 12.890263, 14.727906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.327305, 13.158568, 14.436822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082796, 0.724593, 0.684186,
		0.986220, -0.158247, 0.048246,
		0.143230, 0.670763, -0.727710,
		6.370274, 13.359797, 14.218509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.686691, 13.404637, 15.054060>,  <6.270013, 12.890263, 14.727906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.686691, 13.404637, 15.054060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.538359, 13.591138, 14.732788>,  <6.449360, 13.703038, 14.540025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.538359, 13.591138, 14.732788>,  <6.686691, 13.404637, 15.054060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.538359, 13.591138, 14.732788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127547, 0.831077, 0.541335,
		0.919901, 0.303186, -0.248718,
		-0.370829, 0.466251, -0.803179,
		6.427110, 13.731013, 14.491835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.062122, 13.920824, 15.333213>,  <6.686691, 13.404637, 15.054060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.062122, 13.920824, 15.333213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.345173, 14.130803, 15.522397>,  <7.515003, 14.256791, 15.635908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.345173, 14.130803, 15.522397>,  <7.062122, 13.920824, 15.333213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.345173, 14.130803, 15.522397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689827, -0.658170, -0.301579,
		0.152976, 0.539667, -0.827863,
		0.707627, 0.524948, 0.472962,
		7.557461, 14.288288, 15.664286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.532673, 14.150523, 14.860475>,  <7.062122, 13.920824, 15.333213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.532673, 14.150523, 14.860475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.757191, 14.161076, 15.191353>,  <7.891902, 14.167407, 15.389880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.757191, 14.161076, 15.191353>,  <7.532673, 14.150523, 14.860475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.757191, 14.161076, 15.191353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604734, -0.695432, -0.388164,
		0.565019, 0.718108, -0.406295,
		0.561294, 0.026380, 0.827196,
		7.925580, 14.168989, 15.439511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.164501, 14.267418, 14.641419>,  <7.532673, 14.150523, 14.860475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.164501, 14.267418, 14.641419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.196551, 14.086722, 14.996838>,  <8.215781, 13.978305, 15.210089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.196551, 14.086722, 14.996838>,  <8.164501, 14.267418, 14.641419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.196551, 14.086722, 14.996838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589469, -0.697360, -0.407695,
		0.803807, 0.556437, 0.210409,
		0.080126, -0.451738, 0.888545,
		8.220589, 13.951200, 15.263401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.952988, 14.157557, 14.758293>,  <8.164501, 14.267418, 14.641419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.952988, 14.157557, 14.758293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.766175, 13.913409, 15.014210>,  <8.654088, 13.766921, 15.167760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.766175, 13.913409, 15.014210>,  <8.952988, 14.157557, 14.758293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.766175, 13.913409, 15.014210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468835, -0.784400, -0.406091,
		0.749717, 0.110300, 0.652501,
		-0.467030, -0.610369, 0.639791,
		8.626066, 13.730299, 15.206147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.450717, 13.816405, 14.994513>,  <8.952988, 14.157557, 14.758293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.450717, 13.816405, 14.994513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.124237, 13.600230, 15.076240>,  <8.928349, 13.470525, 15.125276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.124237, 13.600230, 15.076240>,  <9.450717, 13.816405, 14.994513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.124237, 13.600230, 15.076240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428981, -0.803740, -0.412283,
		0.387031, -0.248857, 0.887850,
		-0.816200, -0.540437, 0.204317,
		8.879377, 13.438099, 15.137535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.797144, 13.267438, 15.326522>,  <9.450717, 13.816405, 14.994513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.797144, 13.267438, 15.326522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.430018, 13.130898, 15.245431>,  <9.209743, 13.048973, 15.196776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.430018, 13.130898, 15.245431>,  <9.797144, 13.267438, 15.326522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.430018, 13.130898, 15.245431> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390495, -0.868332, -0.305801,
		-0.071649, -0.359832, 0.930262,
		-0.917813, -0.341352, -0.202728,
		9.154675, 13.028492, 15.184612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.799795, 12.600992, 15.556576>,  <9.797144, 13.267438, 15.326522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.799795, 12.600992, 15.556576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.499869, 12.631800, 15.293715>,  <9.319914, 12.650284, 15.135999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.499869, 12.631800, 15.293715>,  <9.799795, 12.600992, 15.556576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.499869, 12.631800, 15.293715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338271, -0.808964, -0.480780,
		-0.568641, -0.582790, 0.580519,
		-0.749813, 0.077018, -0.657152,
		9.274925, 12.654905, 15.096570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.387399, 12.015470, 15.551719>,  <9.799795, 12.600992, 15.556576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.387399, 12.015470, 15.551719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.318224, 12.173851, 15.190983>,  <9.276719, 12.268880, 14.974542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.318224, 12.173851, 15.190983>,  <9.387399, 12.015470, 15.551719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.318224, 12.173851, 15.190983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244122, -0.869833, -0.428714,
		-0.954200, -0.294299, 0.053766,
		-0.172938, 0.395953, -0.901839,
		9.266342, 12.292637, 14.920431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.937946, 11.577871, 15.196745>,  <9.387399, 12.015470, 15.551719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.937946, 11.577871, 15.196745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.124403, 11.797697, 14.919417>,  <9.236277, 11.929592, 14.753020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.124403, 11.797697, 14.919417>,  <8.937946, 11.577871, 15.196745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.124403, 11.797697, 14.919417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186580, -0.827109, -0.530169,
		-0.864812, 0.117774, -0.488087,
		0.466141, 0.549564, -0.693320,
		9.264245, 11.962566, 14.711421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.542045, 11.440979, 14.680120>,  <8.937946, 11.577871, 15.196745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.542045, 11.440979, 14.680120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.905252, 11.542703, 14.546955>,  <9.123176, 11.603737, 14.467056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.905252, 11.542703, 14.546955>,  <8.542045, 11.440979, 14.680120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.905252, 11.542703, 14.546955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028452, -0.830269, -0.556636,
		-0.417964, 0.495964, -0.761135,
		0.908018, 0.254310, -0.332911,
		9.177657, 11.618996, 14.447082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.523319, 11.130312, 14.004689>,  <8.542045, 11.440979, 14.680120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.523319, 11.130312, 14.004689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.907947, 11.229120, 14.052633>,  <9.138723, 11.288405, 14.081400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.907947, 11.229120, 14.052633>,  <8.523319, 11.130312, 14.004689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.907947, 11.229120, 14.052633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248883, -0.599848, -0.760421,
		-0.115942, 0.761028, -0.638274,
		0.961569, 0.247021, 0.119859,
		9.196417, 11.303226, 14.088592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.708966, 11.379203, 13.389089>,  <8.523319, 11.130312, 14.004689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.708966, 11.379203, 13.389089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.066622, 11.291280, 13.545141>,  <9.281215, 11.238526, 13.638773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.066622, 11.291280, 13.545141>,  <8.708966, 11.379203, 13.389089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.066622, 11.291280, 13.545141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162412, -0.652720, -0.739986,
		0.417301, 0.725011, -0.547922,
		0.894138, -0.219808, 0.390131,
		9.334863, 11.225337, 13.662181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.275152, 11.437242, 12.912123>,  <8.708966, 11.379203, 13.389089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.275152, 11.437242, 12.912123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.399787, 11.167653, 13.180056>,  <9.474567, 11.005900, 13.340816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.399787, 11.167653, 13.180056>,  <9.275152, 11.437242, 12.912123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.399787, 11.167653, 13.180056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097465, -0.678540, -0.728069,
		0.945206, 0.292142, -0.145735,
		0.311586, -0.673971, 0.669833,
		9.493263, 10.965462, 13.381005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.759038, 11.153963, 12.507689>,  <9.275152, 11.437242, 12.912123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.759038, 11.153963, 12.507689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.673903, 10.920097, 12.820833>,  <9.622823, 10.779778, 13.008719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.673903, 10.920097, 12.820833>,  <9.759038, 11.153963, 12.507689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.673903, 10.920097, 12.820833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189268, -0.810712, -0.554008,
		0.958582, 0.030257, 0.283206,
		-0.212836, -0.584663, 0.782860,
		9.610052, 10.744699, 13.055691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.321448, 10.663138, 12.559775>,  <9.759038, 11.153963, 12.507689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.321448, 10.663138, 12.559775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.003879, 10.514082, 12.751952>,  <9.813337, 10.424648, 12.867258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.003879, 10.514082, 12.751952>,  <10.321448, 10.663138, 12.559775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.003879, 10.514082, 12.751952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129050, -0.875449, -0.465762,
		0.594165, -0.307778, 0.743129,
		-0.793923, -0.372641, 0.480442,
		9.765701, 10.402289, 12.896085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.565131, 10.043562, 12.664923>,  <10.321448, 10.663138, 12.559775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.565131, 10.043562, 12.664923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.171039, 9.994749, 12.712969>,  <9.934583, 9.965461, 12.741796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.171039, 9.994749, 12.712969>,  <10.565131, 10.043562, 12.664923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.171039, 9.994749, 12.712969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042798, -0.854722, -0.517319,
		0.165796, -0.504538, 0.847321,
		-0.985231, -0.122033, 0.120116,
		9.875469, 9.958139, 12.749003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.518136, 9.249124, 12.814336>,  <10.565131, 10.043562, 12.664923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.518136, 9.249124, 12.814336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.158228, 9.386755, 12.706988>,  <9.942283, 9.469334, 12.642580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.158228, 9.386755, 12.706988>,  <10.518136, 9.249124, 12.814336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.158228, 9.386755, 12.706988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099733, -0.760890, -0.641171,
		-0.424811, -0.550142, 0.718943,
		-0.899772, 0.344079, -0.268368,
		9.888296, 9.489979, 12.626478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.136435, 8.626987, 12.747726>,  <10.518136, 9.249124, 12.814336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.136435, 8.626987, 12.747726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.933935, 8.895990, 12.531783>,  <9.812435, 9.057392, 12.402217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.933935, 8.895990, 12.531783>,  <10.136435, 8.626987, 12.747726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.933935, 8.895990, 12.531783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002899, -0.627329, -0.778749,
		-0.862383, -0.392675, 0.319534,
		-0.506248, 0.672506, -0.539859,
		9.782061, 9.097742, 12.369825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.472601, 8.327340, 12.581892>,  <10.136435, 8.626987, 12.747726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.472601, 8.327340, 12.581892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.553918, 8.626629, 12.329278>,  <9.602708, 8.806202, 12.177710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.553918, 8.626629, 12.329278>,  <9.472601, 8.327340, 12.581892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.553918, 8.626629, 12.329278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009961, -0.646552, -0.762805,
		-0.979067, 0.148782, -0.138892,
		0.203292, 0.748221, -0.631536,
		9.614905, 8.851095, 12.139817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.236407, 8.027832, 11.956251>,  <9.472601, 8.327340, 12.581892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.236407, 8.027832, 11.956251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.447946, 8.341875, 11.827300>,  <9.574869, 8.530301, 11.749929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.447946, 8.341875, 11.827300>,  <9.236407, 8.027832, 11.956251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.447946, 8.341875, 11.827300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190513, -0.479961, -0.856354,
		-0.827059, 0.391462, -0.403400,
		0.528846, 0.785108, -0.322378,
		9.606600, 8.577408, 11.730587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.924585, 8.201542, 11.307950>,  <9.236407, 8.027832, 11.956251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.924585, 8.201542, 11.307950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.290556, 8.362629, 11.318727>,  <9.510139, 8.459281, 11.325194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.290556, 8.362629, 11.318727>,  <8.924585, 8.201542, 11.307950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.290556, 8.362629, 11.318727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251807, -0.517355, -0.817886,
		-0.315438, 0.755091, -0.574750,
		0.914927, 0.402718, 0.026944,
		9.565034, 8.483444, 11.326811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.473558, 21.484095, 24.720623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.405483, 21.114491, 24.857586>,  <18.364637, 20.892729, 24.939764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.405483, 21.114491, 24.857586>,  <18.473558, 21.484095, 24.720623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.405483, 21.114491, 24.857586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350011, 0.268135, 0.897550,
		-0.921156, 0.272599, 0.277780,
		-0.170188, -0.924009, 0.342407,
		18.354427, 20.837288, 24.960308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.150579, 21.544106, 25.339714>,  <18.473558, 21.484095, 24.720623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.150579, 21.544106, 25.339714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.316942, 21.181242, 25.365276>,  <18.416759, 20.963524, 25.380613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.316942, 21.181242, 25.365276>,  <18.150579, 21.544106, 25.339714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316942, 21.181242, 25.365276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404041, 0.247285, 0.880682,
		-0.814721, -0.340463, 0.469377,
		0.415909, -0.907158, 0.063907,
		18.441715, 20.909094, 25.384449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.040970, 21.327190, 26.019516>,  <18.150579, 21.544106, 25.339714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.040970, 21.327190, 26.019516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.341021, 21.097343, 25.888597>,  <18.521051, 20.959435, 25.810047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.341021, 21.097343, 25.888597>,  <18.040970, 21.327190, 26.019516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.341021, 21.097343, 25.888597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492912, 0.155899, 0.855999,
		-0.440848, -0.803435, 0.400181,
		0.750127, -0.574619, -0.327295,
		18.566059, 20.924957, 25.790409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.005651, 20.795843, 26.534639>,  <18.040970, 21.327190, 26.019516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.005651, 20.795843, 26.534639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.362083, 20.828485, 26.356060>,  <18.575943, 20.848072, 26.248913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.362083, 20.828485, 26.356060>,  <18.005651, 20.795843, 26.534639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362083, 20.828485, 26.356060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406374, 0.294539, 0.864932,
		0.202081, -0.952149, 0.229295,
		0.891080, 0.081606, -0.446449,
		18.629408, 20.852968, 26.222126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.459574, 20.599426, 27.099613>,  <18.005651, 20.795843, 26.534639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.459574, 20.599426, 27.099613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.673576, 20.776335, 26.811678>,  <18.801979, 20.882479, 26.638918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.673576, 20.776335, 26.811678>,  <18.459574, 20.599426, 27.099613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.673576, 20.776335, 26.811678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609331, 0.388199, 0.691387,
		0.585220, -0.808517, -0.061799,
		0.535007, 0.442270, -0.719836,
		18.834078, 20.909016, 26.595728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.160879, 20.495752, 27.218275>,  <18.459574, 20.599426, 27.099613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.160879, 20.495752, 27.218275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.179001, 20.824280, 26.990807>,  <19.189875, 21.021397, 26.854326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.179001, 20.824280, 26.990807>,  <19.160879, 20.495752, 27.218275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.179001, 20.824280, 26.990807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384754, 0.510993, 0.768668,
		0.921906, -0.253623, -0.292855,
		0.045305, 0.821317, -0.568670,
		19.192593, 21.070675, 26.820206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.751795, 20.817257, 27.392359>,  <19.160879, 20.495752, 27.218275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.751795, 20.817257, 27.392359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.537052, 21.110115, 27.224667>,  <19.408207, 21.285830, 27.124052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.537052, 21.110115, 27.224667>,  <19.751795, 20.817257, 27.392359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.537052, 21.110115, 27.224667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361732, 0.648669, 0.669611,
		0.762192, 0.207835, -0.613080,
		-0.536854, 0.732143, -0.419230,
		19.375996, 21.329758, 27.098898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.225180, 21.298304, 27.385899>,  <19.751795, 20.817257, 27.392359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.225180, 21.298304, 27.385899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.870844, 21.482054, 27.359791>,  <19.658243, 21.592304, 27.344126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.870844, 21.482054, 27.359791>,  <20.225180, 21.298304, 27.385899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.870844, 21.482054, 27.359791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283486, 0.647206, 0.707644,
		0.367319, 0.608356, -0.703548,
		-0.885840, 0.459377, -0.065271,
		19.605091, 21.619867, 27.340210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.443005, 21.885172, 27.243124>,  <20.225180, 21.298304, 27.385899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.443005, 21.885172, 27.243124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.075283, 21.927576, 27.394722>,  <19.854649, 21.953018, 27.485682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.075283, 21.927576, 27.394722>,  <20.443005, 21.885172, 27.243124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.075283, 21.927576, 27.394722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357279, 0.628608, 0.690800,
		-0.165008, 0.770464, -0.615758,
		-0.919306, 0.106010, 0.378996,
		19.799492, 21.959379, 27.508421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.320635, 22.588579, 27.199926>,  <20.443005, 21.885172, 27.243124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.320635, 22.588579, 27.199926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.106129, 22.408844, 27.485729>,  <19.977425, 22.301003, 27.657211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.106129, 22.408844, 27.485729>,  <20.320635, 22.588579, 27.199926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.106129, 22.408844, 27.485729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434495, 0.578785, 0.690089,
		-0.723627, 0.680518, -0.115147,
		-0.536263, -0.449336, 0.714506,
		19.945250, 22.274044, 27.700081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.025652, 23.195192, 27.470036>,  <20.320635, 22.588579, 27.199926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.025652, 23.195192, 27.470036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.965805, 22.916704, 27.750860>,  <19.929897, 22.749611, 27.919355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.965805, 22.916704, 27.750860>,  <20.025652, 23.195192, 27.470036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.965805, 22.916704, 27.750860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383826, 0.613472, 0.690166,
		-0.911204, 0.372730, 0.175442,
		-0.149617, -0.696221, 0.702062,
		19.920919, 22.707838, 27.961479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.627562, 23.521797, 28.070669>,  <20.025652, 23.195192, 27.470036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.627562, 23.521797, 28.070669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.818935, 23.199224, 28.209677>,  <19.933760, 23.005682, 28.293081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.818935, 23.199224, 28.209677>,  <19.627562, 23.521797, 28.070669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.818935, 23.199224, 28.209677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402358, 0.553088, 0.729521,
		-0.780517, -0.209201, 0.589090,
		0.478435, -0.806430, 0.347521,
		19.962465, 22.957296, 28.313932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346203, 23.367910, 28.660406>,  <19.627562, 23.521797, 28.070669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346203, 23.367910, 28.660406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.735874, 23.300966, 28.599785>,  <19.969677, 23.260799, 28.563412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.735874, 23.300966, 28.599785>,  <19.346203, 23.367910, 28.660406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.735874, 23.300966, 28.599785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225742, 0.734284, 0.640209,
		0.004137, -0.657889, 0.753104,
		0.974179, -0.167359, -0.151551,
		20.028128, 23.250759, 28.554319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.323801, 23.662268, 29.240955>,  <19.346203, 23.367910, 28.660406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.323801, 23.662268, 29.240955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.561625, 23.340965, 29.255262>,  <19.704319, 23.148184, 29.263845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.561625, 23.340965, 29.255262>,  <19.323801, 23.662268, 29.240955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.561625, 23.340965, 29.255262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304797, 0.183998, -0.934475,
		0.744042, 0.566502, 0.354228,
		0.594559, -0.803256, 0.035766,
		19.739992, 23.099989, 29.265991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540184, 23.669678, 29.398472>,  <19.323801, 23.662268, 29.240955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.540184, 23.669678, 29.398472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.177242, 23.798742, 29.506245>,  <17.959476, 23.876181, 29.570908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.177242, 23.798742, 29.506245>,  <18.540184, 23.669678, 29.398472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.177242, 23.798742, 29.506245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414181, -0.576716, -0.704168,
		-0.071822, -0.750525, 0.656928,
		-0.907356, 0.322662, 0.269433,
		17.905035, 23.895540, 29.587074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.132965, 23.092733, 29.504318>,  <18.540184, 23.669678, 29.398472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.132965, 23.092733, 29.504318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.845398, 23.367304, 29.460543>,  <17.672857, 23.532047, 29.434278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.845398, 23.367304, 29.460543>,  <18.132965, 23.092733, 29.504318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.845398, 23.367304, 29.460543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473172, -0.598614, -0.646351,
		-0.509184, -0.412889, 0.755152,
		-0.718916, 0.686428, -0.109437,
		17.629723, 23.573233, 29.427711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.473364, 22.750757, 29.449881>,  <18.132965, 23.092733, 29.504318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.473364, 22.750757, 29.449881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.391260, 23.108795, 29.291553>,  <17.341997, 23.323618, 29.196556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.391260, 23.108795, 29.291553>,  <17.473364, 22.750757, 29.449881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.391260, 23.108795, 29.291553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654403, -0.426249, -0.624555,
		-0.727754, 0.130829, 0.673244,
		-0.205260, 0.895095, -0.395819,
		17.329681, 23.377323, 29.172808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.736982, 22.858656, 29.488012>,  <17.473364, 22.750757, 29.449881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.736982, 22.858656, 29.488012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.866974, 23.070583, 29.174662>,  <16.944969, 23.197741, 28.986650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.866974, 23.070583, 29.174662>,  <16.736982, 22.858656, 29.488012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.866974, 23.070583, 29.174662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691380, -0.432085, -0.579047,
		-0.645277, 0.729789, 0.225888,
		0.324979, 0.529820, -0.783376,
		16.964468, 23.229530, 28.939650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.166647, 23.026955, 29.065086>,  <16.736982, 22.858656, 29.488012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.166647, 23.026955, 29.065086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.446964, 23.119173, 28.795053>,  <16.615154, 23.174503, 28.633034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.446964, 23.119173, 28.795053>,  <16.166647, 23.026955, 29.065086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.446964, 23.119173, 28.795053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581773, -0.362946, -0.727880,
		-0.412827, 0.902839, -0.120227,
		0.700795, 0.230544, -0.675082,
		16.657204, 23.188335, 28.592529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.827928, 23.402491, 28.585487>,  <16.166647, 23.026955, 29.065086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.827928, 23.402491, 28.585487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.153664, 23.289379, 28.382751>,  <16.349106, 23.221512, 28.261110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.153664, 23.289379, 28.382751>,  <15.827928, 23.402491, 28.585487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153664, 23.289379, 28.382751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564484, -0.182844, -0.804939,
		0.134946, 0.941597, -0.308521,
		0.814339, -0.282778, -0.506842,
		16.397964, 23.204546, 28.230700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.654341, 23.692671, 27.972687>,  <15.827928, 23.402491, 28.585487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.654341, 23.692671, 27.972687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.932449, 23.413252, 27.905010>,  <16.099316, 23.245600, 27.864405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.932449, 23.413252, 27.905010>,  <15.654341, 23.692671, 27.972687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.932449, 23.413252, 27.905010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489888, -0.288322, -0.822728,
		0.525934, 0.654905, -0.542673,
		0.695273, -0.698549, -0.169192,
		16.141031, 23.203688, 27.854252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.845667, 23.701633, 27.209534>,  <15.654341, 23.692671, 27.972687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.845667, 23.701633, 27.209534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.934098, 23.341532, 27.359554>,  <15.987157, 23.125471, 27.449566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.934098, 23.341532, 27.359554>,  <15.845667, 23.701633, 27.209534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.934098, 23.341532, 27.359554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359211, -0.432697, -0.826886,
		0.906693, 0.048084, -0.419042,
		0.221078, -0.900256, 0.375050,
		16.000422, 23.071455, 27.472069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.124912, 23.430124, 26.678307>,  <15.845667, 23.701633, 27.209534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.124912, 23.430124, 26.678307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.032270, 23.118578, 26.911451>,  <15.976686, 22.931650, 27.051338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.032270, 23.118578, 26.911451>,  <16.124912, 23.430124, 26.678307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.032270, 23.118578, 26.911451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232144, -0.537592, -0.810619,
		0.944705, -0.323051, -0.056300,
		-0.231605, -0.778866, 0.582861,
		15.962789, 22.884918, 27.086309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.222256, 22.869678, 26.281376>,  <16.124912, 23.430124, 26.678307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.222256, 22.869678, 26.281376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.011076, 22.681034, 26.563894>,  <15.884368, 22.567848, 26.733406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.011076, 22.681034, 26.563894>,  <16.222256, 22.869678, 26.281376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.011076, 22.681034, 26.563894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226480, -0.723346, -0.652287,
		0.818520, -0.504337, 0.275080,
		-0.527950, -0.471610, 0.706295,
		15.852691, 22.539551, 26.775784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.466587, 22.205236, 26.211910>,  <16.222256, 22.869678, 26.281376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.466587, 22.205236, 26.211910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.115139, 22.173004, 26.400179>,  <15.904270, 22.153666, 26.513140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.115139, 22.173004, 26.400179>,  <16.466587, 22.205236, 26.211910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.115139, 22.173004, 26.400179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229043, -0.793759, -0.563459,
		0.419004, -0.602871, 0.678957,
		-0.878621, -0.080581, 0.470671,
		15.851553, 22.148830, 26.541380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.319448, 21.450119, 26.331442>,  <16.466587, 22.205236, 26.211910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.319448, 21.450119, 26.331442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.962999, 21.631477, 26.338745>,  <15.749130, 21.740292, 26.343128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.962999, 21.631477, 26.338745>,  <16.319448, 21.450119, 26.331442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.962999, 21.631477, 26.338745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362581, -0.687282, -0.629427,
		-0.272829, -0.567517, 0.776845,
		-0.891123, 0.453395, 0.018260,
		15.695662, 21.767496, 26.344223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.830645, 20.873507, 26.316845>,  <16.319448, 21.450119, 26.331442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.830645, 20.873507, 26.316845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.609687, 21.190166, 26.212418>,  <15.477113, 21.380161, 26.149761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.609687, 21.190166, 26.212418>,  <15.830645, 20.873507, 26.316845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.609687, 21.190166, 26.212418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543483, -0.579500, -0.607294,
		-0.632052, -0.193579, 0.750359,
		-0.552393, 0.791648, -0.261067,
		15.443969, 21.427660, 26.134098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.118420, 20.608566, 26.379913>,  <15.830645, 20.873507, 26.316845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.118420, 20.608566, 26.379913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.091654, 20.936754, 26.152809>,  <15.075594, 21.133667, 26.016546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.091654, 20.936754, 26.152809>,  <15.118420, 20.608566, 26.379913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.091654, 20.936754, 26.152809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628652, -0.476551, -0.614569,
		-0.774802, 0.315801, 0.547678,
		-0.066915, 0.820469, -0.567762,
		15.071579, 21.182896, 25.982481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.723388, 20.738602, 26.950792>,  <15.118420, 20.608566, 26.379913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.723388, 20.738602, 26.950792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.524684, 20.430225, 27.110231>,  <14.405462, 20.245199, 27.205894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.524684, 20.430225, 27.110231>,  <14.723388, 20.738602, 26.950792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.524684, 20.430225, 27.110231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508041, 0.114054, 0.853748,
		-0.703651, 0.626611, 0.335012,
		-0.496759, -0.770941, 0.398599,
		14.375656, 20.198942, 27.229811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.404508, 21.044001, 27.530233>,  <14.723388, 20.738602, 26.950792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.404508, 21.044001, 27.530233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.482473, 20.653633, 27.569407>,  <14.529253, 20.419413, 27.592911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.482473, 20.653633, 27.569407>,  <14.404508, 21.044001, 27.530233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.482473, 20.653633, 27.569407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449294, 0.177597, 0.875554,
		-0.871862, -0.126657, 0.473090,
		0.194914, -0.975919, 0.097934,
		14.540948, 20.360857, 27.598787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.299169, 21.011675, 28.182499>,  <14.404508, 21.044001, 27.530233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.299169, 21.011675, 28.182499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.485643, 20.663044, 28.121801>,  <14.597528, 20.453865, 28.085382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.485643, 20.663044, 28.121801>,  <14.299169, 21.011675, 28.182499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.485643, 20.663044, 28.121801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670413, 0.236123, 0.703415,
		-0.577250, -0.429653, 0.694393,
		0.466187, -0.871576, -0.151743,
		14.625500, 20.401571, 28.076279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.496863, 20.869743, 28.797859>,  <14.299169, 21.011675, 28.182499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.496863, 20.869743, 28.797859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.728674, 20.622019, 28.585972>,  <14.867761, 20.473385, 28.458839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.728674, 20.622019, 28.585972>,  <14.496863, 20.869743, 28.797859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.728674, 20.622019, 28.585972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716519, 0.077532, 0.693246,
		-0.388264, -0.781309, 0.488679,
		0.579527, -0.619310, -0.529720,
		14.902533, 20.436226, 28.427055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.735778, 20.336061, 29.266870>,  <14.496863, 20.869743, 28.797859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.735778, 20.336061, 29.266870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.991427, 20.339331, 28.959246>,  <15.144817, 20.341293, 28.774672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.991427, 20.339331, 28.959246>,  <14.735778, 20.336061, 29.266870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.991427, 20.339331, 28.959246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755412, -0.194512, 0.625714,
		-0.144475, -0.980866, -0.130494,
		0.639124, 0.008177, -0.769060,
		15.183165, 20.341784, 28.728527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.220025, 19.858696, 29.490147>,  <14.735778, 20.336061, 29.266870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.220025, 19.858696, 29.490147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.418354, 20.054695, 29.203354>,  <15.537352, 20.172295, 29.031279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.418354, 20.054695, 29.203354>,  <15.220025, 19.858696, 29.490147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.418354, 20.054695, 29.203354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818859, 0.011141, 0.573887,
		0.289191, -0.871653, -0.395714,
		0.495822, 0.489997, -0.716983,
		15.567101, 20.201694, 28.988258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.916106, 19.615316, 29.472233>,  <15.220025, 19.858696, 29.490147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.916106, 19.615316, 29.472233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.933430, 19.979536, 29.307781>,  <15.943824, 20.198067, 29.209110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.933430, 19.979536, 29.307781>,  <15.916106, 19.615316, 29.472233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.933430, 19.979536, 29.307781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748621, 0.242930, 0.616889,
		0.661583, -0.334496, -0.671134,
		0.043308, 0.910548, -0.411129,
		15.946423, 20.252701, 29.184443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.259460, 19.074966, 29.048754>,  <15.916106, 19.615316, 29.472233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.259460, 19.074966, 29.048754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.575233, 18.832258, 29.085903>,  <16.764696, 18.686632, 29.108192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.575233, 18.832258, 29.085903>,  <16.259460, 19.074966, 29.048754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.575233, 18.832258, 29.085903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256590, -0.463636, -0.848059,
		0.557638, 0.645654, -0.521700,
		0.789431, -0.606773, 0.092873,
		16.812063, 18.650227, 29.113766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441730, 19.003571, 28.412207>,  <16.259460, 19.074966, 29.048754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.441730, 19.003571, 28.412207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.597626, 18.671881, 28.572453>,  <16.691162, 18.472866, 28.668600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.597626, 18.671881, 28.572453>,  <16.441730, 19.003571, 28.412207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.597626, 18.671881, 28.572453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250804, -0.514140, -0.820218,
		0.886117, 0.219193, -0.408352,
		0.389736, -0.829225, 0.400614,
		16.714546, 18.423113, 28.692636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.804808, 18.584702, 27.856260>,  <16.441730, 19.003571, 28.412207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.804808, 18.584702, 27.856260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.688749, 18.337460, 28.148497>,  <16.619114, 18.189114, 28.323839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.688749, 18.337460, 28.148497>,  <16.804808, 18.584702, 27.856260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.688749, 18.337460, 28.148497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279091, -0.675591, -0.682411,
		0.915382, -0.401899, 0.023511,
		-0.290144, -0.618106, 0.730590,
		16.601706, 18.152027, 28.367674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.879658, 17.877361, 27.506403>,  <16.804808, 18.584702, 27.856260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.879658, 17.877361, 27.506403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.676792, 17.845804, 27.849695>,  <16.555073, 17.826870, 28.055672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.676792, 17.845804, 27.849695>,  <16.879658, 17.877361, 27.506403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.676792, 17.845804, 27.849695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582637, -0.702395, -0.408871,
		0.635075, -0.707401, 0.310262,
		-0.507162, -0.078894, 0.858232,
		16.524643, 17.822136, 28.107164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.888208, 17.120144, 27.533897>,  <16.879658, 17.877361, 27.506403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.888208, 17.120144, 27.533897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.611311, 17.290573, 27.766882>,  <16.445173, 17.392830, 27.906673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.611311, 17.290573, 27.766882>,  <16.888208, 17.120144, 27.533897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.611311, 17.290573, 27.766882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700035, -0.592575, -0.398505,
		0.175360, -0.683605, 0.708472,
		-0.692243, 0.426073, 0.582461,
		16.403639, 17.418396, 27.941620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556818, 16.669897, 27.980408>,  <16.888208, 17.120144, 27.533897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.556818, 16.669897, 27.980408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.300774, 16.968906, 27.909458>,  <16.147146, 17.148312, 27.866888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.300774, 16.968906, 27.909458>,  <16.556818, 16.669897, 27.980408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300774, 16.968906, 27.909458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593784, -0.627864, -0.503197,
		-0.487520, -0.216780, 0.845772,
		-0.640112, 0.747525, -0.177376,
		16.108740, 17.193165, 27.856245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.851120, 16.420671, 28.059877>,  <16.556818, 16.669897, 27.980408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.851120, 16.420671, 28.059877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.831703, 16.744171, 27.825418>,  <15.820053, 16.938271, 27.684742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.831703, 16.744171, 27.825418>,  <15.851120, 16.420671, 28.059877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.831703, 16.744171, 27.825418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490485, -0.530512, -0.691362,
		-0.870097, 0.253937, 0.422431,
		-0.048542, 0.808748, -0.586149,
		15.817141, 16.986795, 27.649574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<23.480991, 23.632046, 23.990389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.236645, 23.926510, 24.106947>,  <23.090036, 24.103188, 24.176882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.236645, 23.926510, 24.106947>,  <23.480991, 23.632046, 23.990389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.236645, 23.926510, 24.106947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392839, 0.037727, -0.918833,
		-0.687400, -0.675757, 0.266145,
		-0.610867, 0.736158, 0.291397,
		23.053385, 24.147358, 24.194366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.490341, 22.806591, 23.839025>,  <23.480991, 23.632046, 23.990389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.490341, 22.806591, 23.839025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.276445, 22.859577, 24.172853>,  <23.148108, 22.891369, 24.373150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.276445, 22.859577, 24.172853>,  <23.490341, 22.806591, 23.839025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.276445, 22.859577, 24.172853> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830086, -0.267191, -0.489455,
		0.158153, -0.954495, 0.252837,
		-0.534738, 0.132468, 0.834570,
		23.116024, 22.899317, 24.423225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.045860, 22.132378, 23.934975>,  <23.490341, 22.806591, 23.839025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.045860, 22.132378, 23.934975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.898430, 22.483109, 24.058475>,  <22.809973, 22.693546, 24.132576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.898430, 22.483109, 24.058475>,  <23.045860, 22.132378, 23.934975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.898430, 22.483109, 24.058475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816275, -0.146349, -0.558817,
		-0.444801, -0.457991, 0.769673,
		-0.368574, 0.876828, 0.308751,
		22.787857, 22.746157, 24.151100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.826168, 21.984816, 24.648481>,  <23.045860, 22.132378, 23.934975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.826168, 21.984816, 24.648481> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.096733, 21.700169, 24.724447>,  <23.259071, 21.529381, 24.770027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.096733, 21.700169, 24.724447>,  <22.826168, 21.984816, 24.648481>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.096733, 21.700169, 24.724447> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732541, -0.623230, 0.273801,
		-0.076481, -0.324323, -0.942850,
		0.676412, -0.711617, 0.189915,
		23.299656, 21.486683, 24.781422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.703089, 21.336409, 24.265165>,  <22.826168, 21.984816, 24.648481>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.703089, 21.336409, 24.265165> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.878401, 21.282282, 24.620604>,  <22.983589, 21.249805, 24.833866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.878401, 21.282282, 24.620604>,  <22.703089, 21.336409, 24.265165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.878401, 21.282282, 24.620604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782548, -0.543791, 0.303167,
		0.442186, -0.828240, -0.344224,
		0.438281, -0.135316, 0.888594,
		23.009886, 21.241688, 24.887182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.923965, 20.652075, 24.437052>,  <22.703089, 21.336409, 24.265165>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.923965, 20.652075, 24.437052> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.784492, 20.865471, 24.745287>,  <22.700809, 20.993509, 24.930229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.784492, 20.865471, 24.745287>,  <22.923965, 20.652075, 24.437052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.784492, 20.865471, 24.745287> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719466, -0.679281, 0.144729,
		0.600658, -0.503948, 0.620682,
		-0.348682, 0.533492, 0.770589,
		22.679888, 21.025518, 24.976463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.068012, 20.440130, 25.091734>,  <22.923965, 20.652075, 24.437052>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.068012, 20.440130, 25.091734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.719177, 20.634180, 25.066059>,  <22.509876, 20.750610, 25.050653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.719177, 20.634180, 25.066059>,  <23.068012, 20.440130, 25.091734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.719177, 20.634180, 25.066059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484790, -0.838628, 0.248359,
		0.066655, 0.247708, 0.966539,
		-0.872087, 0.485123, -0.064187,
		22.457552, 20.779716, 25.046803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.707983, 19.737810, 25.048491>,  <23.068012, 20.440130, 25.091734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.707983, 19.737810, 25.048491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.429913, 19.800884, 25.329023>,  <22.263071, 19.838728, 25.497343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.429913, 19.800884, 25.329023>,  <22.707983, 19.737810, 25.048491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.429913, 19.800884, 25.329023> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686511, -0.434938, -0.582694,
		0.213155, -0.886547, 0.410609,
		-0.695175, 0.157683, 0.701333,
		22.221359, 19.848190, 25.539423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.400761, 19.109915, 25.252014>,  <22.707983, 19.737810, 25.048491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.400761, 19.109915, 25.252014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.127750, 19.390373, 25.334528>,  <21.963943, 19.558647, 25.384035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.127750, 19.390373, 25.334528>,  <22.400761, 19.109915, 25.252014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.127750, 19.390373, 25.334528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702835, -0.552258, -0.448367,
		-0.200448, -0.451007, 0.869720,
		-0.682527, 0.701144, 0.206284,
		21.922993, 19.600718, 25.396414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.939133, 18.689196, 25.429417>,  <22.400761, 19.109915, 25.252014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.939133, 18.689196, 25.429417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.755524, 19.034206, 25.344233>,  <21.645359, 19.241213, 25.293123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.755524, 19.034206, 25.344233>,  <21.939133, 18.689196, 25.429417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.755524, 19.034206, 25.344233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686362, -0.496480, -0.531426,
		-0.564099, -0.097767, 0.819899,
		-0.459020, 0.862525, -0.212961,
		21.617817, 19.292963, 25.280344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.194469, 18.591959, 25.579277>,  <21.939133, 18.689196, 25.429417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.194469, 18.591959, 25.579277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.201342, 18.911169, 25.338327>,  <21.205465, 19.102695, 25.193758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.201342, 18.911169, 25.338327>,  <21.194469, 18.591959, 25.579277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.201342, 18.911169, 25.338327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682631, -0.430842, -0.590246,
		-0.730561, 0.421341, 0.537357,
		0.017179, 0.798027, -0.602377,
		21.206495, 19.150578, 25.157614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.461584, 18.767574, 25.528456>,  <21.194469, 18.591959, 25.579277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.461584, 18.767574, 25.528456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.655806, 18.926041, 25.216742>,  <20.772339, 19.021120, 25.029713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.655806, 18.926041, 25.216742>,  <20.461584, 18.767574, 25.528456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.655806, 18.926041, 25.216742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669629, -0.404510, -0.622871,
		-0.561990, 0.824272, 0.068872,
		0.485555, 0.396166, -0.779287,
		20.801472, 19.044891, 24.982956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.036694, 18.132454, 25.803482>,  <20.461584, 18.767574, 25.528456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.036694, 18.132454, 25.803482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.796352, 17.859167, 25.969465>,  <19.652147, 17.695194, 26.069056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.796352, 17.859167, 25.969465>,  <20.036694, 18.132454, 25.803482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.796352, 17.859167, 25.969465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310197, 0.279146, 0.908766,
		-0.736718, 0.674753, 0.044206,
		-0.600853, -0.683217, 0.414959,
		19.616096, 17.654202, 26.093952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767939, 18.403086, 26.420137>,  <20.036694, 18.132454, 25.803482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.767939, 18.403086, 26.420137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.691774, 18.015566, 26.483599>,  <19.646076, 17.783054, 26.521675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.691774, 18.015566, 26.483599>,  <19.767939, 18.403086, 26.420137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.691774, 18.015566, 26.483599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248049, 0.108890, 0.962608,
		-0.949851, 0.222643, 0.219576,
		-0.190409, -0.968800, 0.158656,
		19.634651, 17.724926, 26.531195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.252010, 18.302296, 27.038671>,  <19.767939, 18.403086, 26.420137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.252010, 18.302296, 27.038671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.475361, 17.975731, 26.979761>,  <19.609371, 17.779793, 26.944414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.475361, 17.975731, 26.979761>,  <19.252010, 18.302296, 27.038671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.475361, 17.975731, 26.979761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374360, 0.089543, 0.922950,
		-0.740319, -0.570487, 0.355630,
		0.558375, -0.816411, -0.147278,
		19.642874, 17.730808, 26.935577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.940166, 17.852638, 27.507193>,  <19.252010, 18.302296, 27.038671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.940166, 17.852638, 27.507193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.315004, 17.745926, 27.417147>,  <19.539907, 17.681898, 27.363119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.315004, 17.745926, 27.417147>,  <18.940166, 17.852638, 27.507193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.315004, 17.745926, 27.417147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208353, -0.089943, 0.973909,
		-0.280070, -0.959550, -0.028700,
		0.937096, -0.266783, -0.225115,
		19.596134, 17.665892, 27.349611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.178217, 17.361275, 28.083464>,  <18.940166, 17.852638, 27.507193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.178217, 17.361275, 28.083464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.510479, 17.487059, 27.899668>,  <19.709835, 17.562529, 27.789391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.510479, 17.487059, 27.899668>,  <19.178217, 17.361275, 28.083464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.510479, 17.487059, 27.899668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461269, 0.073546, 0.884207,
		0.311841, -0.946418, -0.083959,
		0.830654, 0.314460, -0.459488,
		19.759676, 17.581396, 27.761822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.656698, 17.028912, 28.363392>,  <19.178217, 17.361275, 28.083464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.656698, 17.028912, 28.363392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.834341, 17.365759, 28.241011>,  <19.940928, 17.567867, 28.167582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.834341, 17.365759, 28.241011>,  <19.656698, 17.028912, 28.363392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.834341, 17.365759, 28.241011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366503, 0.140856, 0.919693,
		0.817584, -0.520575, -0.246083,
		0.444107, 0.842117, -0.305954,
		19.967573, 17.618395, 28.149225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.283302, 17.105642, 28.757477>,  <19.656698, 17.028912, 28.363392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.283302, 17.105642, 28.757477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.233166, 17.475658, 28.614037>,  <20.203083, 17.697668, 28.527973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.233166, 17.475658, 28.614037>,  <20.283302, 17.105642, 28.757477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.233166, 17.475658, 28.614037> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065643, 0.368391, 0.927350,
		0.989940, 0.092696, -0.106897,
		-0.125341, 0.925038, -0.358600,
		20.195564, 17.753170, 28.506456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.861237, 17.466009, 29.077894>,  <20.283302, 17.105642, 28.757477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.861237, 17.466009, 29.077894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.622858, 17.753851, 28.935335>,  <20.479832, 17.926556, 28.849800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.622858, 17.753851, 28.935335>,  <20.861237, 17.466009, 29.077894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.622858, 17.753851, 28.935335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336625, 0.626809, 0.702705,
		0.729062, 0.298802, -0.615781,
		-0.595946, 0.719603, -0.356398,
		20.444075, 17.969732, 28.828415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.240244, 18.036686, 28.845356>,  <20.861237, 17.466009, 29.077894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.240244, 18.036686, 28.845356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.879992, 18.173220, 28.952950>,  <20.663839, 18.255140, 29.017506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.879992, 18.173220, 28.952950>,  <21.240244, 18.036686, 28.845356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.879992, 18.173220, 28.952950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423354, 0.549330, 0.720422,
		0.098147, 0.762710, -0.639250,
		-0.900632, 0.341336, 0.268981,
		20.609802, 18.275621, 29.033644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.423426, 18.648346, 29.216879>,  <21.240244, 18.036686, 28.845356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.423426, 18.648346, 29.216879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.034786, 18.596710, 29.296206>,  <20.801601, 18.565729, 29.343801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.034786, 18.596710, 29.296206>,  <21.423426, 18.648346, 29.216879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034786, 18.596710, 29.296206> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054360, 0.693909, 0.718008,
		-0.230302, 0.708397, -0.667184,
		-0.971600, -0.129090, 0.198317,
		20.743307, 18.557983, 29.355701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.261179, 19.266827, 29.415897>,  <21.423426, 18.648346, 29.216879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.261179, 19.266827, 29.415897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.992899, 19.020456, 29.581207>,  <20.831932, 18.872633, 29.680393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.992899, 19.020456, 29.581207>,  <21.261179, 19.266827, 29.415897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.992899, 19.020456, 29.581207> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069356, 0.502662, 0.861697,
		-0.738481, 0.606601, -0.294416,
		-0.670698, -0.615927, 0.413277,
		20.791689, 18.835678, 29.705191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.700264, 19.671862, 29.652939>,  <21.261179, 19.266827, 29.415897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.700264, 19.671862, 29.652939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.669977, 19.341112, 29.875847>,  <20.651804, 19.142662, 30.009592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.669977, 19.341112, 29.875847>,  <20.700264, 19.671862, 29.652939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.669977, 19.341112, 29.875847> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003388, 0.558657, 0.829392,
		-0.997124, 0.064688, -0.039499,
		-0.075718, -0.826873, 0.557269,
		20.647263, 19.093050, 30.043028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.172951, 19.811920, 30.141132>,  <20.700264, 19.671862, 29.652939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.172951, 19.811920, 30.141132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.411596, 19.531330, 30.297073>,  <20.554783, 19.362976, 30.390638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.411596, 19.531330, 30.297073>,  <20.172951, 19.811920, 30.141132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.411596, 19.531330, 30.297073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062066, 0.524654, 0.849050,
		-0.800126, -0.482358, 0.356553,
		0.596613, -0.701477, 0.389851,
		20.590580, 19.320887, 30.414028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.969780, 19.598133, 30.871105>,  <20.172951, 19.811920, 30.141132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.969780, 19.598133, 30.871105> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.349262, 19.474747, 30.843370>,  <20.576952, 19.400715, 30.826729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.349262, 19.474747, 30.843370>,  <19.969780, 19.598133, 30.871105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.349262, 19.474747, 30.843370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220686, 0.489045, 0.843880,
		-0.226397, -0.815895, 0.532033,
		0.948705, -0.308464, -0.069338,
		20.633873, 19.382208, 30.822569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.464340, 19.428171, 30.411858>,  <19.969780, 19.598133, 30.871105>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.464340, 19.428171, 30.411858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.158188, 19.437002, 30.669138>,  <18.974497, 19.442301, 30.823505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.158188, 19.437002, 30.669138>,  <19.464340, 19.428171, 30.411858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.158188, 19.437002, 30.669138> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586918, -0.433986, -0.683509,
		0.264049, -0.900649, 0.345122,
		-0.765380, 0.022079, 0.643200,
		18.928574, 19.443626, 30.862099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.214090, 18.842159, 30.419155>,  <19.464340, 19.428171, 30.411858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.214090, 18.842159, 30.419155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.900944, 19.064873, 30.530231>,  <18.713057, 19.198502, 30.596878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.900944, 19.064873, 30.530231>,  <19.214090, 18.842159, 30.419155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.900944, 19.064873, 30.530231> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584556, -0.505320, -0.634780,
		-0.213112, -0.659274, 0.721069,
		-0.782864, 0.556785, 0.277693,
		18.666084, 19.231909, 30.613539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694454, 18.482763, 30.231390>,  <19.214090, 18.842159, 30.419155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694454, 18.482763, 30.231390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.510868, 18.832787, 30.292873>,  <18.400717, 19.042801, 30.329763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.510868, 18.832787, 30.292873>,  <18.694454, 18.482763, 30.231390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.510868, 18.832787, 30.292873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709676, -0.256996, -0.655982,
		-0.534519, -0.410158, 0.738959,
		-0.458966, 0.875056, 0.153710,
		18.373178, 19.095303, 30.338985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.999811, 18.335722, 30.552549>,  <18.694454, 18.482763, 30.231390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.999811, 18.335722, 30.552549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.980320, 18.702293, 30.393660>,  <17.968626, 18.922235, 30.298326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.980320, 18.702293, 30.393660>,  <17.999811, 18.335722, 30.552549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980320, 18.702293, 30.393660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747779, -0.297123, -0.593754,
		-0.662157, 0.268103, 0.699764,
		-0.048728, 0.916427, -0.397224,
		17.965702, 18.977222, 30.274492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375042, 18.468821, 30.689093>,  <17.999811, 18.335722, 30.552549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.375042, 18.468821, 30.689093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.503868, 18.698433, 30.387959>,  <17.581163, 18.836201, 30.207277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.503868, 18.698433, 30.387959>,  <17.375042, 18.468821, 30.689093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.503868, 18.698433, 30.387959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702761, -0.387871, -0.596391,
		-0.634350, 0.721142, 0.278485,
		0.322066, 0.574030, -0.752837,
		17.600489, 18.870642, 30.162107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.811811, 18.815052, 30.362551>,  <17.375042, 18.468821, 30.689093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.811811, 18.815052, 30.362551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.105389, 18.798534, 30.091370>,  <17.281536, 18.788624, 29.928661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.105389, 18.798534, 30.091370>,  <16.811811, 18.815052, 30.362551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.105389, 18.798534, 30.091370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656301, -0.300165, -0.692221,
		-0.174912, 0.952993, -0.247407,
		0.733945, -0.041296, -0.677952,
		17.325573, 18.786146, 29.887983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.491896, 19.001387, 29.806431>,  <16.811811, 18.815052, 30.362551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.491896, 19.001387, 29.806431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.813475, 18.825020, 29.646799>,  <17.006422, 18.719200, 29.551020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.813475, 18.825020, 29.646799>,  <16.491896, 19.001387, 29.806431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.813475, 18.825020, 29.646799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582968, -0.451649, -0.675397,
		0.117550, 0.775633, -0.620142,
		0.803947, -0.440915, -0.399078,
		17.054659, 18.692745, 29.527075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.629282, 19.744202, 29.548769>,  <16.491896, 19.001387, 29.806431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.629282, 19.744202, 29.548769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.466110, 20.105173, 29.493320>,  <16.368208, 20.321756, 29.460051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.466110, 20.105173, 29.493320>,  <16.629282, 19.744202, 29.548769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.466110, 20.105173, 29.493320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659989, 0.396374, 0.638203,
		0.630879, 0.168853, -0.757285,
		-0.407930, 0.902428, -0.138623,
		16.343731, 20.375902, 29.451735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.156319, 20.255861, 29.247435>,  <16.629282, 19.744202, 29.548769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.156319, 20.255861, 29.247435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.877192, 20.469383, 29.438475>,  <16.709715, 20.597496, 29.553099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.877192, 20.469383, 29.438475>,  <17.156319, 20.255861, 29.247435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.877192, 20.469383, 29.438475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708661, 0.417549, 0.568729,
		0.104169, 0.735326, -0.669660,
		-0.697817, 0.533806, 0.477601,
		16.667847, 20.629524, 29.581755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.569696, 20.830046, 29.519594>,  <17.156319, 20.255861, 29.247435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.569696, 20.830046, 29.519594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.216185, 20.880255, 29.699894>,  <17.004078, 20.910379, 29.808073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.216185, 20.880255, 29.699894>,  <17.569696, 20.830046, 29.519594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.216185, 20.880255, 29.699894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428921, 0.602284, 0.673262,
		-0.186970, 0.788352, -0.586126,
		-0.883781, 0.125522, 0.450750,
		16.951050, 20.917912, 29.835119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.465895, 21.616867, 29.638157>,  <17.569696, 20.830046, 29.519594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.465895, 21.616867, 29.638157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.203392, 21.455971, 29.893509>,  <17.045891, 21.359432, 30.046721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.203392, 21.455971, 29.893509>,  <17.465895, 21.616867, 29.638157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.203392, 21.455971, 29.893509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148038, 0.760971, 0.631671,
		-0.739874, 0.509042, -0.439844,
		-0.656256, -0.402243, 0.638380,
		17.006516, 21.335299, 30.085022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.865898, 22.146828, 29.837444>,  <17.465895, 21.616867, 29.638157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.865898, 22.146828, 29.837444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.892458, 21.883625, 30.137476>,  <16.908394, 21.725702, 30.317495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.892458, 21.883625, 30.137476>,  <16.865898, 22.146828, 29.837444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.892458, 21.883625, 30.137476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091412, 0.752587, 0.652117,
		-0.993597, 0.025266, 0.110122,
		0.066400, -0.658008, 0.750078,
		16.912378, 21.686222, 30.362499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.488510, 22.481892, 30.418013>,  <16.865898, 22.146828, 29.837444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.488510, 22.481892, 30.418013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.682018, 22.197580, 30.622272>,  <16.798122, 22.026995, 30.744829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.682018, 22.197580, 30.622272>,  <16.488510, 22.481892, 30.418013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.682018, 22.197580, 30.622272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182466, 0.652559, 0.735441,
		-0.855963, -0.262609, 0.445381,
		0.483770, -0.710777, 0.510649,
		16.827150, 21.984348, 30.775467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.152168, 22.417767, 31.069281>,  <16.488510, 22.481892, 30.418013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.152168, 22.417767, 31.069281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.530134, 22.291332, 31.103283>,  <16.756914, 22.215471, 31.123684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.530134, 22.291332, 31.103283>,  <16.152168, 22.417767, 31.069281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.530134, 22.291332, 31.103283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168446, 0.692271, 0.701703,
		-0.280645, -0.648731, 0.707380,
		0.944915, -0.316085, 0.085007,
		16.813608, 22.196507, 31.128784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.238605, 22.373814, 31.844269>,  <16.152168, 22.417767, 31.069281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.238605, 22.373814, 31.844269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.596735, 22.402523, 31.668430>,  <16.811613, 22.419748, 31.562927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.596735, 22.402523, 31.668430>,  <16.238605, 22.373814, 31.844269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.596735, 22.402523, 31.668430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287842, 0.659935, 0.693998,
		0.339915, -0.747887, 0.570195,
		0.895323, 0.071774, -0.439595,
		16.865332, 22.424055, 31.536552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743282, 22.395185, 32.372360>,  <16.238605, 22.373814, 31.844269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.743282, 22.395185, 32.372360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.925377, 22.548933, 32.051109>,  <17.034634, 22.641182, 31.858358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.925377, 22.548933, 32.051109>,  <16.743282, 22.395185, 32.372360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.925377, 22.548933, 32.051109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243588, 0.813842, 0.527567,
		0.856403, -0.435800, 0.276862,
		0.455235, 0.384370, -0.803132,
		17.061949, 22.664244, 31.810169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<10.930832, 16.025942, 18.683218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.214058, 16.178505, 18.445505>,  <11.383994, 16.270042, 18.302877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.214058, 16.178505, 18.445505>,  <10.930832, 16.025942, 18.683218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.214058, 16.178505, 18.445505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347549, 0.544362, 0.763465,
		0.614696, -0.747126, 0.252886,
		0.708067, 0.381408, -0.594280,
		11.426477, 16.292929, 18.267221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.575228, 15.962177, 18.963148>,  <10.930832, 16.025942, 18.683218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.575228, 15.962177, 18.963148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.633967, 16.275251, 18.721209>,  <11.669211, 16.463097, 18.576046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.633967, 16.275251, 18.721209>,  <11.575228, 15.962177, 18.963148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.633967, 16.275251, 18.721209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216025, 0.571339, 0.791773,
		0.965282, -0.246933, -0.085179,
		0.146849, 0.782685, -0.604847,
		11.678022, 16.510057, 18.539755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.188558, 16.256420, 19.174919>,  <11.575228, 15.962177, 18.963148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.188558, 16.256420, 19.174919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.987413, 16.552839, 18.996941>,  <11.866727, 16.730692, 18.890154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.987413, 16.552839, 18.996941>,  <12.188558, 16.256420, 19.174919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.987413, 16.552839, 18.996941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135978, 0.576176, 0.805935,
		0.853604, 0.344771, -0.390503,
		-0.502861, 0.741049, -0.444945,
		11.836555, 16.775154, 18.863457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.531116, 16.771845, 19.379919>,  <12.188558, 16.256420, 19.174919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.531116, 16.771845, 19.379919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.199813, 16.956413, 19.252748>,  <12.001031, 17.067154, 19.176447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.199813, 16.956413, 19.252748>,  <12.531116, 16.771845, 19.379919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.199813, 16.956413, 19.252748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034916, 0.523774, 0.851141,
		0.559257, 0.716065, -0.417710,
		-0.828258, 0.461423, -0.317927,
		11.951335, 17.094841, 19.157370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.667887, 17.393721, 19.459547>,  <12.531116, 16.771845, 19.379919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.667887, 17.393721, 19.459547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.268356, 17.394011, 19.440163>,  <12.028638, 17.394184, 19.428532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.268356, 17.394011, 19.440163>,  <12.667887, 17.393721, 19.459547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.268356, 17.394011, 19.440163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043945, 0.408109, 0.911875,
		0.020436, 0.912933, -0.407597,
		-0.998825, 0.000723, -0.048459,
		11.968709, 17.394228, 19.425625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.370641, 18.130482, 19.713242>,  <12.667887, 17.393721, 19.459547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.370641, 18.130482, 19.713242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.064107, 17.879927, 19.770330>,  <11.880187, 17.729593, 19.804585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.064107, 17.879927, 19.770330>,  <12.370641, 18.130482, 19.713242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.064107, 17.879927, 19.770330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143359, 0.383285, 0.912437,
		-0.626242, 0.678771, -0.383523,
		-0.766335, -0.626388, 0.142721,
		11.834207, 17.692011, 19.813147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.728038, 18.577946, 19.916271>,  <12.370641, 18.130482, 19.713242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.728038, 18.577946, 19.916271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.702747, 18.198191, 20.039341>,  <11.687572, 17.970337, 20.113184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.702747, 18.198191, 20.039341>,  <11.728038, 18.577946, 19.916271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.702747, 18.198191, 20.039341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247424, 0.313579, 0.916760,
		-0.966842, -0.018162, -0.254728,
		-0.063227, -0.949388, 0.307676,
		11.683779, 17.913374, 20.131643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.232018, 18.672087, 20.472059>,  <11.728038, 18.577946, 19.916271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.232018, 18.672087, 20.472059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.395888, 18.309845, 20.515965>,  <11.494211, 18.092501, 20.542307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.395888, 18.309845, 20.515965>,  <11.232018, 18.672087, 20.472059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.395888, 18.309845, 20.515965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065426, 0.149183, 0.986643,
		-0.909881, -0.397024, 0.120367,
		0.409677, -0.905603, 0.109763,
		11.518791, 18.038164, 20.548893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.980491, 18.432793, 21.088829>,  <11.232018, 18.672087, 20.472059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.980491, 18.432793, 21.088829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.278446, 18.169949, 21.042612>,  <11.457219, 18.012243, 21.014881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.278446, 18.169949, 21.042612>,  <10.980491, 18.432793, 21.088829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.278446, 18.169949, 21.042612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051152, -0.116423, 0.991882,
		-0.665226, -0.744751, -0.053110,
		0.744888, -0.657109, -0.115544,
		11.501912, 17.972816, 21.007950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.759233, 17.830631, 21.411428>,  <10.980491, 18.432793, 21.088829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.759233, 17.830631, 21.411428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.159222, 17.830332, 21.408329>,  <11.399215, 17.830153, 21.406469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.159222, 17.830332, 21.408329>,  <10.759233, 17.830631, 21.411428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.159222, 17.830332, 21.408329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007614, -0.113030, 0.993562,
		-0.001620, -0.993591, -0.113021,
		0.999970, -0.000749, -0.007749,
		11.459212, 17.830107, 21.406004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.051729, 17.221245, 21.772055>,  <10.759233, 17.830631, 21.411428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.051729, 17.221245, 21.772055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.334748, 17.502657, 21.798649>,  <11.504560, 17.671505, 21.814606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.334748, 17.502657, 21.798649>,  <11.051729, 17.221245, 21.772055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.334748, 17.502657, 21.798649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055205, -0.038765, 0.997722,
		0.704507, -0.709605, 0.011411,
		0.707547, 0.703532, 0.066484,
		11.547012, 17.713717, 21.818594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.550152, 16.925531, 22.209290>,  <11.051729, 17.221245, 21.772055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.550152, 16.925531, 22.209290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.585662, 17.323944, 22.206720>,  <11.606968, 17.562992, 22.205179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.585662, 17.323944, 22.206720>,  <11.550152, 16.925531, 22.209290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.585662, 17.323944, 22.206720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154768, 0.020162, 0.987745,
		0.983954, -0.086694, 0.155944,
		0.088776, 0.996031, -0.006421,
		11.612295, 17.622753, 22.204794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.141256, 16.500664, 22.284004>,  <11.550152, 16.925531, 22.209290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.141256, 16.500664, 22.284004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.335467, 16.179089, 22.421377>,  <12.451994, 15.986143, 22.503801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.335467, 16.179089, 22.421377>,  <12.141256, 16.500664, 22.284004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.335467, 16.179089, 22.421377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194220, -0.482220, -0.854250,
		0.852374, 0.348061, -0.390272,
		0.485528, -0.803939, 0.343431,
		12.481126, 15.937907, 22.524406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.628591, 16.138506, 21.726395>,  <12.141256, 16.500664, 22.284004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.628591, 16.138506, 21.726395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.462751, 15.871421, 21.973705>,  <12.363248, 15.711170, 22.122091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.462751, 15.871421, 21.973705>,  <12.628591, 16.138506, 21.726395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.462751, 15.871421, 21.973705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048245, -0.662340, -0.747649,
		0.908725, -0.339803, 0.242392,
		-0.414599, -0.667713, 0.618278,
		12.338372, 15.671107, 22.159189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.808575, 15.331875, 21.556843>,  <12.628591, 16.138506, 21.726395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.808575, 15.331875, 21.556843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.474886, 15.294837, 21.774282>,  <12.274673, 15.272614, 21.904745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.474886, 15.294837, 21.774282>,  <12.808575, 15.331875, 21.556843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.474886, 15.294837, 21.774282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340519, -0.688880, -0.639915,
		0.433727, -0.718937, 0.543149,
		-0.834222, -0.092596, 0.543598,
		12.224619, 15.267058, 21.937363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.702122, 14.626873, 21.612494>,  <12.808575, 15.331875, 21.556843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.702122, 14.626873, 21.612494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.366684, 14.836501, 21.671970>,  <12.165421, 14.962278, 21.707657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.366684, 14.836501, 21.671970>,  <12.702122, 14.626873, 21.612494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.366684, 14.836501, 21.671970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514477, -0.672174, -0.532443,
		-0.179089, -0.523003, 0.833304,
		-0.838595, 0.524070, 0.148694,
		12.115106, 14.993722, 21.716579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.276527, 14.079331, 21.638346>,  <12.702122, 14.626873, 21.612494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.276527, 14.079331, 21.638346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.037945, 14.394598, 21.577641>,  <11.894795, 14.583758, 21.541218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.037945, 14.394598, 21.577641>,  <12.276527, 14.079331, 21.638346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.037945, 14.394598, 21.577641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574839, -0.551426, -0.604557,
		-0.560193, -0.273333, 0.781968,
		-0.596443, 0.788174, -0.151782,
		11.859008, 14.631048, 21.532112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.648492, 13.765435, 21.636414>,  <12.276527, 14.079331, 21.638346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.648492, 13.765435, 21.636414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.592967, 14.110675, 21.442181>,  <11.559652, 14.317819, 21.325642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.592967, 14.110675, 21.442181>,  <11.648492, 13.765435, 21.636414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.592967, 14.110675, 21.442181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711174, -0.428104, -0.557636,
		-0.689175, 0.267927, 0.673240,
		-0.138811, 0.863100, -0.485582,
		11.551324, 14.369605, 21.296507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.849232, 13.889580, 21.554306>,  <11.648492, 13.765435, 21.636414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.849232, 13.889580, 21.554306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.012674, 14.139300, 21.287987>,  <11.110740, 14.289133, 21.128195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.012674, 14.139300, 21.287987>,  <10.849232, 13.889580, 21.554306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.012674, 14.139300, 21.287987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667713, -0.292863, -0.684391,
		-0.622254, 0.724208, 0.297190,
		0.408606, 0.624302, -0.665799,
		11.135256, 14.326591, 21.088247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.291461, 14.198003, 21.244116>,  <10.849232, 13.889580, 21.554306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.291461, 14.198003, 21.244116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.588173, 14.249640, 20.980875>,  <10.766200, 14.280623, 20.822931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.588173, 14.249640, 20.980875>,  <10.291461, 14.198003, 21.244116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.588173, 14.249640, 20.980875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626316, -0.217491, -0.748616,
		-0.239773, 0.967488, -0.080477,
		0.741780, 0.129094, -0.658102,
		10.810707, 14.288368, 20.783445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.974339, 14.598889, 20.608774>,  <10.291461, 14.198003, 21.244116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.974339, 14.598889, 20.608774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.307499, 14.407146, 20.498144>,  <10.507395, 14.292099, 20.431767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.307499, 14.407146, 20.498144>,  <9.974339, 14.598889, 20.608774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.307499, 14.407146, 20.498144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441804, -0.274945, -0.853940,
		0.333302, 0.833438, -0.440785,
		0.832898, -0.479361, -0.276576,
		10.557368, 14.263337, 20.415171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.128667, 14.876925, 19.884792>,  <9.974339, 14.598889, 20.608774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.128667, 14.876925, 19.884792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.351751, 14.549134, 19.937586>,  <10.485601, 14.352460, 19.969263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.351751, 14.549134, 19.937586>,  <10.128667, 14.876925, 19.884792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.351751, 14.549134, 19.937586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064752, -0.115574, -0.991186,
		0.827506, 0.561341, -0.011394,
		0.557711, -0.819475, 0.131986,
		10.519065, 14.303292, 19.977182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.646124, 14.884002, 19.405882>,  <10.128667, 14.876925, 19.884792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.646124, 14.884002, 19.405882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.695111, 14.499432, 19.504402>,  <10.724504, 14.268690, 19.563515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.695111, 14.499432, 19.504402>,  <10.646124, 14.884002, 19.405882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.695111, 14.499432, 19.504402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371702, -0.185675, -0.909595,
		0.920239, 0.202948, 0.334624,
		0.122469, -0.961424, 0.246301,
		10.731853, 14.211004, 19.578293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.274580, 14.679117, 19.123877>,  <10.646124, 14.884002, 19.405882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.274580, 14.679117, 19.123877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.073643, 14.340289, 19.193302>,  <10.953080, 14.136992, 19.234959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.073643, 14.340289, 19.193302>,  <11.274580, 14.679117, 19.123877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.073643, 14.340289, 19.193302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026040, -0.185818, -0.982239,
		0.864277, -0.497940, 0.071286,
		-0.502342, -0.847070, 0.173565,
		10.922940, 14.086168, 19.245371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.665571, 14.213681, 18.803724>,  <11.274580, 14.679117, 19.123877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.665571, 14.213681, 18.803724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.286432, 14.093571, 18.846470>,  <11.058949, 14.021504, 18.872118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.286432, 14.093571, 18.846470>,  <11.665571, 14.213681, 18.803724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.286432, 14.093571, 18.846470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079055, -0.103317, -0.991502,
		0.308767, -0.948240, 0.074190,
		-0.947847, -0.300277, 0.106864,
		11.002078, 14.003488, 18.878529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.596397, 13.544005, 18.407816>,  <11.665571, 14.213681, 18.803724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.596397, 13.544005, 18.407816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.221058, 13.677638, 18.443350>,  <10.995854, 13.757817, 18.464670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.221058, 13.677638, 18.443350>,  <11.596397, 13.544005, 18.407816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.221058, 13.677638, 18.443350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188787, -0.279960, -0.941266,
		-0.289601, -0.900002, 0.325771,
		-0.938344, 0.334093, 0.088832,
		10.939553, 13.777863, 18.470001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.341070, 13.486428, 18.781303>,  <11.596397, 13.544005, 18.407816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.341070, 13.486428, 18.781303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.570855, 13.286071, 18.522352>,  <12.708726, 13.165856, 18.366982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.570855, 13.286071, 18.522352>,  <12.341070, 13.486428, 18.781303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.570855, 13.286071, 18.522352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715834, -0.076128, 0.694108,
		-0.396958, -0.862154, 0.314824,
		0.574462, -0.500894, -0.647379,
		12.743194, 13.135803, 18.328138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.670547, 12.895212, 19.140417>,  <12.341070, 13.486428, 18.781303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.670547, 12.895212, 19.140417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.900246, 13.014491, 18.835440>,  <13.038065, 13.086059, 18.652452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.900246, 13.014491, 18.835440>,  <12.670547, 12.895212, 19.140417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.900246, 13.014491, 18.835440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793339, 0.027240, 0.608170,
		0.202124, -0.954115, -0.220930,
		0.574246, 0.298198, -0.762443,
		13.072519, 13.103951, 18.606707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.374354, 12.775958, 19.328487>,  <12.670547, 12.895212, 19.140417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.374354, 12.775958, 19.328487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.429471, 13.043366, 19.036161>,  <13.462541, 13.203812, 18.860765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.429471, 13.043366, 19.036161>,  <13.374354, 12.775958, 19.328487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.429471, 13.043366, 19.036161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859173, 0.286429, 0.424005,
		0.492783, -0.686322, -0.534908,
		0.137791, 0.668521, -0.730817,
		13.470808, 13.243922, 18.816916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.054466, 12.628498, 19.104902>,  <13.374354, 12.775958, 19.328487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.054466, 12.628498, 19.104902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.977784, 13.011745, 19.019808>,  <13.931775, 13.241693, 18.968750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.977784, 13.011745, 19.019808>,  <14.054466, 12.628498, 19.104902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.977784, 13.011745, 19.019808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721599, 0.284519, 0.631144,
		0.665239, -0.032516, -0.745922,
		-0.191706, 0.958119, -0.212737,
		13.920272, 13.299181, 18.955986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733746, 12.932712, 18.982815>,  <14.054466, 12.628498, 19.104902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733746, 12.932712, 18.982815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.475595, 13.215892, 19.097565>,  <14.320704, 13.385799, 19.166414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.475595, 13.215892, 19.097565>,  <14.733746, 12.932712, 18.982815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.475595, 13.215892, 19.097565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707452, 0.412318, 0.574026,
		0.288098, 0.573411, -0.766941,
		-0.645377, 0.707950, 0.286873,
		14.281981, 13.428277, 19.183626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090848, 13.637945, 18.846155>,  <14.733746, 12.932712, 18.982815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090848, 13.637945, 18.846155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.804086, 13.670156, 19.123158>,  <14.632029, 13.689482, 19.289358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.804086, 13.670156, 19.123158>,  <15.090848, 13.637945, 18.846155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.804086, 13.670156, 19.123158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677516, 0.314666, 0.664799,
		-0.164374, 0.945780, -0.280144,
		-0.716905, 0.080527, 0.692504,
		14.589014, 13.694314, 19.330908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.201171, 14.324076, 19.200909>,  <15.090848, 13.637945, 18.846155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.201171, 14.324076, 19.200909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.962143, 14.112130, 19.441626>,  <14.818726, 13.984963, 19.586056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.962143, 14.112130, 19.441626>,  <15.201171, 14.324076, 19.200909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.962143, 14.112130, 19.441626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666515, 0.088959, 0.740165,
		-0.445720, 0.843405, 0.300003,
		-0.597570, -0.529863, 0.601793,
		14.782872, 13.953172, 19.622164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.294044, 14.713638, 19.808691>,  <15.201171, 14.324076, 19.200909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.294044, 14.713638, 19.808691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.092037, 14.401245, 19.955673>,  <14.970834, 14.213809, 20.043863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.092037, 14.401245, 19.955673>,  <15.294044, 14.713638, 19.808691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.092037, 14.401245, 19.955673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520981, 0.063605, 0.851195,
		-0.688142, 0.621304, 0.374756,
		-0.505015, -0.780984, 0.367457,
		14.940533, 14.166950, 20.065910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.109648, 14.862692, 20.452213>,  <15.294044, 14.713638, 19.808691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.109648, 14.862692, 20.452213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072495, 14.464749, 20.468378>,  <15.050202, 14.225984, 20.478077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.072495, 14.464749, 20.468378>,  <15.109648, 14.862692, 20.452213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.072495, 14.464749, 20.468378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441512, -0.004776, 0.897242,
		-0.892434, 0.101181, 0.439685,
		-0.092884, -0.994856, 0.040411,
		15.044629, 14.166292, 20.480501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.743174, 14.774975, 21.169325>,  <15.109648, 14.862692, 20.452213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.743174, 14.774975, 21.169325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.955826, 14.460229, 21.043970>,  <15.083417, 14.271381, 20.968758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.955826, 14.460229, 21.043970>,  <14.743174, 14.774975, 21.169325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.955826, 14.460229, 21.043970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582280, 0.070847, 0.809896,
		-0.615076, -0.613045, 0.495840,
		0.531631, -0.786865, -0.313388,
		15.115315, 14.224170, 20.949953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.687563, 14.228660, 21.656971>,  <14.743174, 14.774975, 21.169325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.687563, 14.228660, 21.656971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.013811, 14.158980, 21.436275>,  <15.209560, 14.117172, 21.303858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.013811, 14.158980, 21.436275>,  <14.687563, 14.228660, 21.656971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013811, 14.158980, 21.436275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546899, -0.079131, 0.833450,
		-0.188845, -0.981526, 0.030728,
		0.815621, -0.174198, -0.551739,
		15.258497, 14.106721, 21.270754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.961271, 13.617220, 22.014803>,  <14.687563, 14.228660, 21.656971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.961271, 13.617220, 22.014803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.254042, 13.794670, 21.807930>,  <15.429704, 13.901140, 21.683805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.254042, 13.794670, 21.807930>,  <14.961271, 13.617220, 22.014803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.254042, 13.794670, 21.807930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563096, 0.033585, 0.825709,
		0.383676, -0.895583, -0.225222,
		0.731926, 0.443626, -0.517185,
		15.473619, 13.927758, 21.652775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.543751, 13.334052, 22.298063>,  <14.961271, 13.617220, 22.014803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.543751, 13.334052, 22.298063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.652908, 13.677204, 22.123905>,  <15.718403, 13.883096, 22.019411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.652908, 13.677204, 22.123905>,  <15.543751, 13.334052, 22.298063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.652908, 13.677204, 22.123905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504600, 0.257687, 0.824000,
		0.819090, -0.444565, -0.362566,
		0.272893, 0.857881, -0.435396,
		15.734776, 13.934568, 21.993286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.159906, 13.456768, 22.649740>,  <15.543751, 13.334052, 22.298063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.159906, 13.456768, 22.649740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.076332, 13.802393, 22.466549>,  <16.026188, 14.009768, 22.356634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.076332, 13.802393, 22.466549>,  <16.159906, 13.456768, 22.649740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.076332, 13.802393, 22.466549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569350, 0.488238, 0.661412,
		0.795102, -0.122558, -0.593963,
		-0.208934, 0.864062, -0.457977,
		16.013653, 14.061612, 22.329155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.771399, 13.807179, 22.620100>,  <16.159906, 13.456768, 22.649740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.771399, 13.807179, 22.620100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.510921, 14.106171, 22.567602>,  <16.354635, 14.285565, 22.536104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.510921, 14.106171, 22.567602>,  <16.771399, 13.807179, 22.620100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.510921, 14.106171, 22.567602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638423, 0.633053, 0.437790,
		0.410323, 0.201296, -0.889446,
		-0.651192, 0.747478, -0.131244,
		16.315563, 14.330414, 22.528229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.085022, 14.372457, 22.285547>,  <16.771399, 13.807179, 22.620100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.085022, 14.372457, 22.285547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.787270, 14.529411, 22.501671>,  <16.608618, 14.623584, 22.631346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.787270, 14.529411, 22.501671>,  <17.085022, 14.372457, 22.285547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.787270, 14.529411, 22.501671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640805, 0.647317, 0.412734,
		-0.187800, 0.653463, -0.733292,
		-0.744379, 0.392386, 0.540308,
		16.563955, 14.647127, 22.663763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207405, 15.079371, 22.207680>,  <17.085022, 14.372457, 22.285547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207405, 15.079371, 22.207680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.943075, 15.045794, 22.506012>,  <16.784477, 15.025648, 22.685011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.943075, 15.045794, 22.506012>,  <17.207405, 15.079371, 22.207680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.943075, 15.045794, 22.506012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493589, 0.699998, 0.516114,
		-0.565405, 0.709194, -0.421142,
		-0.660824, -0.083942, 0.745832,
		16.744827, 15.020612, 22.729761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.179241, 15.690351, 22.463236>,  <17.207405, 15.079371, 22.207680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.179241, 15.690351, 22.463236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.007126, 15.487187, 22.761734>,  <16.903856, 15.365289, 22.940832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.007126, 15.487187, 22.761734>,  <17.179241, 15.690351, 22.463236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.007126, 15.487187, 22.761734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324607, 0.684327, 0.652936,
		-0.842309, 0.523186, -0.129586,
		-0.430286, -0.507910, 0.746245,
		16.878040, 15.334814, 22.985607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.021358, 16.233501, 22.900509>,  <17.179241, 15.690351, 22.463236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.021358, 16.233501, 22.900509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.014080, 15.903831, 23.126926>,  <17.009712, 15.706030, 23.262777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.014080, 15.903831, 23.126926>,  <17.021358, 16.233501, 22.900509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.014080, 15.903831, 23.126926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384846, 0.516747, 0.764765,
		-0.922801, 0.231756, 0.307777,
		-0.018196, -0.824173, 0.566045,
		17.008621, 15.656579, 23.296740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.794065, 16.451212, 23.607620>,  <17.021358, 16.233501, 22.900509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.794065, 16.451212, 23.607620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.003857, 16.118162, 23.678791>,  <17.129730, 15.918332, 23.721493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.003857, 16.118162, 23.678791>,  <16.794065, 16.451212, 23.607620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003857, 16.118162, 23.678791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439180, 0.443589, 0.781250,
		-0.729415, -0.331605, 0.598324,
		0.524476, -0.832627, 0.177926,
		17.161200, 15.868374, 23.732168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744413, 16.386162, 24.301083>,  <16.794065, 16.451212, 23.607620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.744413, 16.386162, 24.301083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.071287, 16.195154, 24.171972>,  <17.267412, 16.080549, 24.094507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.071287, 16.195154, 24.171972>,  <16.744413, 16.386162, 24.301083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.071287, 16.195154, 24.171972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527039, 0.392385, 0.753833,
		-0.233317, -0.786136, 0.572322,
		0.817186, -0.477518, -0.322774,
		17.316442, 16.051899, 24.075140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.937548, 15.867823, 24.848398>,  <16.744413, 16.386162, 24.301083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.937548, 15.867823, 24.848398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.272324, 15.945442, 24.643702>,  <17.473188, 15.992014, 24.520884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.272324, 15.945442, 24.643702>,  <16.937548, 15.867823, 24.848398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272324, 15.945442, 24.643702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413188, 0.389133, 0.823317,
		0.358902, -0.900511, 0.245500,
		0.836938, 0.194052, -0.511741,
		17.523405, 16.003656, 24.490179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.323591, 16.106258, 25.342215>,  <16.937548, 15.867823, 24.848398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.323591, 16.106258, 25.342215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.563068, 16.174471, 25.029169>,  <17.706755, 16.215399, 24.841341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.563068, 16.174471, 25.029169>,  <17.323591, 16.106258, 25.342215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.563068, 16.174471, 25.029169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648835, 0.469661, 0.598691,
		0.469661, -0.866220, 0.170534,
		-0.598691, -0.170534, 0.782615,
		17.742676, 16.225632, 24.794384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975779, 15.812963, 25.583796>,  <17.323591, 16.106258, 25.342215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.975779, 15.812963, 25.583796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.013412, 16.102112, 25.309977>,  <18.035994, 16.275600, 25.145685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.013412, 16.102112, 25.309977>,  <17.975779, 15.812963, 25.583796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.013412, 16.102112, 25.309977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741400, 0.408023, 0.532770,
		0.664435, -0.557648, -0.497548,
		0.094086, 0.722873, -0.684545,
		18.041639, 16.318974, 25.104612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.692688, 15.805255, 25.411785>,  <17.975779, 15.812963, 25.583796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.692688, 15.805255, 25.411785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.575006, 16.173071, 25.307560>,  <18.504398, 16.393761, 25.245026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.575006, 16.173071, 25.307560>,  <18.692688, 15.805255, 25.411785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.575006, 16.173071, 25.307560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839997, 0.378827, 0.388452,
		0.455905, -0.104589, -0.883862,
		-0.294203, 0.919539, -0.260563,
		18.486746, 16.448933, 25.229391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.302345, 16.118120, 25.266941>,  <18.692688, 15.805255, 25.411785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.302345, 16.118120, 25.266941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.060858, 16.434826, 25.304102>,  <18.915966, 16.624849, 25.326399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.060858, 16.434826, 25.304102>,  <19.302345, 16.118120, 25.266941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.060858, 16.434826, 25.304102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727190, 0.499195, 0.471168,
		0.326678, 0.352010, -0.877138,
		-0.603718, 0.791766, 0.092902,
		18.879742, 16.672356, 25.331972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.774904, 16.571033, 25.294693>,  <19.302345, 16.118120, 25.266941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.774904, 16.571033, 25.294693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.468281, 16.794987, 25.420498>,  <19.284306, 16.929358, 25.495981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.468281, 16.794987, 25.420498>,  <19.774904, 16.571033, 25.294693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.468281, 16.794987, 25.420498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625365, 0.539522, 0.563768,
		0.145957, 0.628847, -0.763706,
		-0.766560, 0.559881, 0.314512,
		19.238312, 16.962952, 25.514851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.120497, 17.281206, 25.420969>,  <19.774904, 16.571033, 25.294693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.120497, 17.281206, 25.420969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767412, 17.292568, 25.608591>,  <19.555561, 17.299385, 25.721165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.767412, 17.292568, 25.608591>,  <20.120497, 17.281206, 25.420969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767412, 17.292568, 25.608591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398629, 0.573805, 0.715432,
		-0.248823, 0.818499, -0.517828,
		-0.882712, 0.028405, 0.469054,
		19.502598, 17.301090, 25.749308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
