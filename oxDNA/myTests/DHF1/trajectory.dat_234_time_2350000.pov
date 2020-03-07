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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<1.144280, 3.922998, 3.157211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.757397, 4.019562, 3.125633>,  <0.525267, 4.077500, 3.106687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.757397, 4.019562, 3.125633>,  <1.144280, 3.922998, 3.157211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.757397, 4.019562, 3.125633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203092, -0.921735, -0.330391,
		-0.152525, -0.303524, 0.940537,
		-0.967207, 0.241408, -0.078944,
		0.467234, 4.091984, 3.101950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.673875, 3.539748, 3.538780>,  <1.144280, 3.922998, 3.157211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.673875, 3.539748, 3.538780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.534138, 3.652763, 3.181427>,  <0.450296, 3.720572, 2.967015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.534138, 3.652763, 3.181427>,  <0.673875, 3.539748, 3.538780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.534138, 3.652763, 3.181427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016758, -0.955186, -0.295531,
		-0.936845, -0.088271, 0.338422,
		-0.349343, 0.282538, -0.893382,
		0.429335, 3.737525, 2.913412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.047956, 3.217656, 3.295522>,  <0.673875, 3.539748, 3.538780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.047956, 3.217656, 3.295522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.286003, 3.301491, 2.985191>,  <0.428832, 3.351792, 2.798993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.286003, 3.301491, 2.985191>,  <0.047956, 3.217656, 3.295522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.286003, 3.301491, 2.985191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051113, -0.953568, -0.296810,
		-0.802011, 0.216292, -0.556773,
		0.595119, 0.209587, -0.775827,
		0.464539, 3.364367, 2.752443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.258382, 3.067973, 2.727348>,  <0.047956, 3.217656, 3.295522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.258382, 3.067973, 2.727348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.127563, 3.015991, 2.636002>,  <0.359131, 2.984802, 2.581193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.127563, 3.015991, 2.636002>,  <-0.258382, 3.067973, 2.727348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.127563, 3.015991, 2.636002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212652, -0.896712, -0.388186,
		-0.154333, 0.423108, -0.892839,
		0.964863, -0.129954, -0.228367,
		0.417022, 2.977005, 2.567492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.231243, 2.749582, 2.042801>,  <-0.258382, 3.067973, 2.727348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.231243, 2.749582, 2.042801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.086239, 2.640633, 2.260368>,  <0.276728, 2.575263, 2.390909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.086239, 2.640633, 2.260368>,  <-0.231243, 2.749582, 2.042801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.086239, 2.640633, 2.260368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186348, -0.960036, -0.208821,
		0.579059, 0.064384, -0.812740,
		0.793704, -0.272372, 0.543919,
		0.324350, 2.558921, 2.423544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.072452, 2.260102, 1.632415>,  <-0.231243, 2.749582, 2.042801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.072452, 2.260102, 1.632415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.194397, 2.205696, 2.009468>,  <0.267564, 2.173053, 2.235700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.194397, 2.205696, 2.009468>,  <0.072452, 2.260102, 1.632415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.194397, 2.205696, 2.009468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010084, -0.989233, -0.145999,
		0.952343, 0.054015, -0.300209,
		0.304863, -0.136014, 0.942634,
		0.285856, 2.164892, 2.292258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.675949, 1.871953, 1.602516>,  <0.072452, 2.260102, 1.632415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.675949, 1.871953, 1.602516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.503391, 1.816376, 1.959076>,  <0.399857, 1.783030, 2.173012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.503391, 1.816376, 1.959076>,  <0.675949, 1.871953, 1.602516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.503391, 1.816376, 1.959076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045687, -0.983437, -0.175398,
		0.901007, -0.116390, 0.417900,
		-0.431393, -0.138942, 0.891401,
		0.373973, 1.774693, 2.226496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.051487, 1.315114, 2.094752>,  <0.675949, 1.871953, 1.602516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.051487, 1.315114, 2.094752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.655537, 1.331650, 2.149063>,  <0.417966, 1.341571, 2.181650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.655537, 1.331650, 2.149063>,  <1.051487, 1.315114, 2.094752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.655537, 1.331650, 2.149063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067980, -0.977866, -0.197878,
		0.124592, -0.205105, 0.970777,
		-0.989876, 0.041340, 0.135778,
		0.358574, 1.344052, 2.189796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.932137, -0.410690, 1.346932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.691010, -0.599762, 1.604050>,  <4.546334, -0.713205, 1.758321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.691010, -0.599762, 1.604050>,  <4.932137, -0.410690, 1.346932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.691010, -0.599762, 1.604050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789565, -0.237400, 0.565887,
		-0.114883, 0.848655, 0.516320,
		-0.602818, -0.472679, 0.642795,
		4.510165, -0.741566, 1.796888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.102523, 0.284367, 1.595440>,  <4.932137, -0.410690, 1.346932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.102523, 0.284367, 1.595440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.800033, 0.273026, 1.856918>,  <4.618538, 0.266220, 2.013806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.800033, 0.273026, 1.856918>,  <5.102523, 0.284367, 1.595440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.800033, 0.273026, 1.856918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370111, 0.805334, 0.463093,
		-0.539575, 0.592143, -0.598519,
		-0.756225, -0.028355, 0.653697,
		4.573165, 0.264519, 2.053027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.687993, 0.909156, 1.644076>,  <5.102523, 0.284367, 1.595440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.687993, 0.909156, 1.644076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.730306, 0.730392, 1.999397>,  <4.755693, 0.623134, 2.212590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.730306, 0.730392, 1.999397>,  <4.687993, 0.909156, 1.644076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.730306, 0.730392, 1.999397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232596, 0.879654, 0.414858,
		-0.966803, 0.162731, 0.197002,
		0.105783, -0.446908, 0.888303,
		4.762041, 0.596320, 2.265888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.235280, 1.352696, 2.128980>,  <4.687993, 0.909156, 1.644076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.235280, 1.352696, 2.128980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.551269, 1.155930, 2.275383>,  <4.740862, 1.037870, 2.363225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.551269, 1.155930, 2.275383>,  <4.235280, 1.352696, 2.128980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.551269, 1.155930, 2.275383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416512, 0.868600, 0.268425,
		-0.449957, -0.059602, 0.891059,
		0.789973, -0.491916, 0.366008,
		4.788260, 1.008355, 2.385185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.306184, 1.405277, 2.886670>,  <4.235280, 1.352696, 2.128980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.306184, 1.405277, 2.886670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.658973, 1.361801, 2.703232>,  <4.870646, 1.335716, 2.593169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.658973, 1.361801, 2.703232>,  <4.306184, 1.405277, 2.886670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.658973, 1.361801, 2.703232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309918, 0.866827, 0.390591,
		0.355070, -0.486618, 0.798203,
		0.881973, -0.108690, -0.458596,
		4.923564, 1.329194, 2.565653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.752762, 1.587365, 3.345124>,  <4.306184, 1.405277, 2.886670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.752762, 1.587365, 3.345124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.950933, 1.636902, 3.001213>,  <5.069835, 1.666624, 2.794867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.950933, 1.636902, 3.001213>,  <4.752762, 1.587365, 3.345124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.950933, 1.636902, 3.001213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345965, 0.879764, 0.326074,
		0.796782, -0.458998, 0.393013,
		0.495425, 0.123841, -0.859777,
		5.099560, 1.674054, 2.743280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.531704, 1.685808, 3.509062>,  <4.752762, 1.587365, 3.345124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.531704, 1.685808, 3.509062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.462535, 1.865219, 3.158310>,  <5.421033, 1.972866, 2.947859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.462535, 1.865219, 3.158310>,  <5.531704, 1.685808, 3.509062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.462535, 1.865219, 3.158310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410537, 0.842091, 0.349774,
		0.895297, -0.299508, -0.329756,
		-0.172924, 0.448529, -0.876880,
		5.410658, 1.999778, 2.895246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.125827, 2.023558, 3.385713>,  <5.531704, 1.685808, 3.509062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.125827, 2.023558, 3.385713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.876159, 2.191170, 3.121948>,  <5.726358, 2.291737, 2.963689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.876159, 2.191170, 3.121948>,  <6.125827, 2.023558, 3.385713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.876159, 2.191170, 3.121948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397208, 0.896985, 0.194019,
		0.672783, -0.140823, -0.726314,
		-0.624170, 0.419030, -0.659413,
		5.688908, 2.316879, 2.924124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
