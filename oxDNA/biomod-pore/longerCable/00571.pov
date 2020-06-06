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
	<24.291273, 34.595139, 35.043739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399590, 34.979534, 35.066288>,  <24.464579, 35.210171, 35.079819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399590, 34.979534, 35.066288>,  <24.291273, 34.595139, 35.043739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.399590, 34.979534, 35.066288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043882, -0.046179, 0.997969,
		0.961638, -0.272713, 0.029665,
		0.270789, 0.960987, 0.056375,
		24.480825, 35.267830, 35.083199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.833355, 34.584587, 35.593540>,  <24.291273, 34.595139, 35.043739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.833355, 34.584587, 35.593540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.655119, 34.942680, 35.592503>,  <24.548178, 35.157536, 35.591881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.655119, 34.942680, 35.592503>,  <24.833355, 34.584587, 35.593540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.655119, 34.942680, 35.592503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199956, 0.102345, 0.974445,
		0.872621, 0.433684, -0.224611,
		-0.445589, 0.895234, -0.002591,
		24.521442, 35.211250, 35.591724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315866, 35.063496, 35.451626>,  <24.833355, 34.584587, 35.593540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315866, 35.063496, 35.451626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352484, 34.879707, 35.098240>,  <25.374454, 34.769436, 34.886208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352484, 34.879707, 35.098240>,  <25.315866, 35.063496, 35.451626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352484, 34.879707, 35.098240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736108, 0.628720, -0.250712,
		0.670645, -0.627373, 0.395775,
		0.091541, -0.459472, -0.883462,
		25.379946, 34.741867, 34.833202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958799, 34.627998, 35.404961>,  <25.315866, 35.063496, 35.451626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958799, 34.627998, 35.404961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831642, 34.807476, 35.070866>,  <25.755348, 34.915161, 34.870407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.831642, 34.807476, 35.070866>,  <25.958799, 34.627998, 35.404961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831642, 34.807476, 35.070866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797918, 0.602437, 0.019940,
		0.512125, -0.660112, -0.549528,
		-0.317893, 0.448690, -0.835238,
		25.736275, 34.942081, 34.820293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367149, 34.631718, 34.730160>,  <25.958799, 34.627998, 35.404961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367149, 34.631718, 34.730160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161699, 34.964432, 34.814377>,  <26.038429, 35.164059, 34.864906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161699, 34.964432, 34.814377>,  <26.367149, 34.631718, 34.730160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161699, 34.964432, 34.814377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857937, 0.494591, 0.139014,
		0.011498, 0.252032, -0.967651,
		-0.513627, 0.831781, 0.210541,
		26.007610, 35.213966, 34.877541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768250, 35.217327, 34.455879>,  <26.367149, 34.631718, 34.730160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768250, 35.217327, 34.455879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555698, 35.357841, 34.764225>,  <26.428167, 35.442150, 34.949234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555698, 35.357841, 34.764225>,  <26.768250, 35.217327, 34.455879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555698, 35.357841, 34.764225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797746, 0.513667, 0.315829,
		-0.285021, 0.782779, -0.553191,
		-0.531380, 0.351288, 0.770865,
		26.396284, 35.463226, 34.995483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.597610, 35.969849, 34.436993>,  <26.768250, 35.217327, 34.455879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.597610, 35.969849, 34.436993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657686, 35.838547, 34.810020>,  <26.693731, 35.759766, 35.033836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.657686, 35.838547, 34.810020>,  <26.597610, 35.969849, 34.436993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.657686, 35.838547, 34.810020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920817, 0.389837, -0.011078,
		-0.359914, 0.860393, 0.360813,
		0.150190, -0.328256, 0.932572,
		26.702744, 35.740070, 35.089790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853407, 36.535355, 35.040459>,  <26.597610, 35.969849, 34.436993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853407, 36.535355, 35.040459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983591, 36.157700, 35.061188>,  <27.061703, 35.931107, 35.073624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.983591, 36.157700, 35.061188>,  <26.853407, 36.535355, 35.040459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983591, 36.157700, 35.061188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945096, 0.323108, -0.048944,
		0.029465, 0.064908, 0.997456,
		0.325463, -0.944134, 0.051824,
		27.081230, 35.874458, 35.076736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462938, 36.441299, 35.604034>,  <26.853407, 36.535355, 35.040459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462938, 36.441299, 35.604034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450392, 36.179558, 35.301819>,  <27.442863, 36.022514, 35.120491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450392, 36.179558, 35.301819>,  <27.462938, 36.441299, 35.604034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450392, 36.179558, 35.301819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967394, 0.170198, -0.187568,
		0.251327, -0.736786, 0.627679,
		-0.031368, -0.654354, -0.755538,
		27.440981, 35.983253, 35.075157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012453, 36.052067, 35.633301>,  <27.462938, 36.441299, 35.604034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012453, 36.052067, 35.633301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940651, 35.963551, 35.249882>,  <27.897570, 35.910442, 35.019833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940651, 35.963551, 35.249882>,  <28.012453, 36.052067, 35.633301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940651, 35.963551, 35.249882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956966, 0.186569, -0.222282,
		0.228023, -0.957195, 0.178276,
		-0.179506, -0.221289, -0.958545,
		27.886799, 35.897163, 34.962318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537994, 35.565048, 35.345150>,  <28.012453, 36.052067, 35.633301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.537994, 35.565048, 35.345150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373842, 35.764370, 35.039658>,  <28.275351, 35.883965, 34.856361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.373842, 35.764370, 35.039658>,  <28.537994, 35.565048, 35.345150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373842, 35.764370, 35.039658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907503, 0.305447, -0.288341,
		0.089596, -0.811413, -0.577565,
		-0.410379, 0.498308, -0.763726,
		28.250729, 35.913864, 34.810539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851078, 35.400280, 34.727234>,  <28.537994, 35.565048, 35.345150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851078, 35.400280, 34.727234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706099, 35.770367, 34.682323>,  <28.619110, 35.992420, 34.655376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706099, 35.770367, 34.682323>,  <28.851078, 35.400280, 34.727234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706099, 35.770367, 34.682323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911802, 0.327066, -0.248285,
		-0.192997, -0.192360, -0.962159,
		-0.362449, 0.925216, -0.112272,
		28.597364, 36.047932, 34.648643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183260, 36.120552, 34.879227>,  <28.851078, 35.400280, 34.727234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183260, 36.120552, 34.879227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209166, 36.245743, 34.500206>,  <29.224709, 36.320858, 34.272793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.209166, 36.245743, 34.500206>,  <29.183260, 36.120552, 34.879227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.209166, 36.245743, 34.500206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968481, -0.209152, -0.135278,
		-0.240521, 0.926446, 0.289564,
		0.064765, 0.312975, -0.947551,
		29.228596, 36.339634, 34.215942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.760624, 36.759777, 34.679234>,  <29.183260, 36.120552, 34.879227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.760624, 36.759777, 34.679234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816504, 36.482494, 34.396404>,  <28.850031, 36.316124, 34.226707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.816504, 36.482494, 34.396404>,  <28.760624, 36.759777, 34.679234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816504, 36.482494, 34.396404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986297, -0.160706, -0.037310,
		-0.087768, 0.702596, -0.706155,
		0.139697, -0.693204, -0.707073,
		28.858412, 36.274532, 34.184280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.334641, 36.900558, 34.069107>,  <28.760624, 36.759777, 34.679234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.334641, 36.900558, 34.069107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368479, 36.506470, 34.128674>,  <28.388781, 36.270016, 34.164413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368479, 36.506470, 34.128674>,  <28.334641, 36.900558, 34.069107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368479, 36.506470, 34.128674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957681, -0.039126, 0.285160,
		-0.275120, -0.166740, -0.946840,
		0.084593, -0.985224, 0.148919,
		28.393856, 36.210903, 34.173351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804907, 36.494232, 33.695393>,  <28.334641, 36.900558, 34.069107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804907, 36.494232, 33.695393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924809, 36.320290, 34.035049>,  <27.996750, 36.215923, 34.238842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.924809, 36.320290, 34.035049>,  <27.804907, 36.494232, 33.695393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.924809, 36.320290, 34.035049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919064, -0.370347, 0.134777,
		0.255868, -0.820816, -0.510678,
		0.299755, -0.434860, 0.849142,
		28.014734, 36.189831, 34.289791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659767, 35.834629, 33.743603>,  <27.804907, 36.494232, 33.695393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659767, 35.834629, 33.743603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708418, 35.879726, 34.138065>,  <27.737608, 35.906784, 34.374741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708418, 35.879726, 34.138065>,  <27.659767, 35.834629, 33.743603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708418, 35.879726, 34.138065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830661, -0.532292, 0.163304,
		0.543333, -0.839020, 0.028916,
		0.121624, 0.112748, 0.986152,
		27.744905, 35.913551, 34.433910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425581, 35.224804, 33.973835>,  <27.659767, 35.834629, 33.743603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425581, 35.224804, 33.973835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420128, 35.480003, 34.281803>,  <27.416855, 35.633121, 34.466583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.420128, 35.480003, 34.281803>,  <27.425581, 35.224804, 33.973835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420128, 35.480003, 34.281803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828143, -0.438709, 0.348875,
		0.560351, -0.632844, 0.534336,
		-0.013634, 0.637999, 0.769916,
		27.416039, 35.671402, 34.512779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.168859, 35.407001, 34.300537>,  <27.425581, 35.224804, 33.973835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.168859, 35.407001, 34.300537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193693, 35.595654, 33.948696>,  <28.208593, 35.708847, 33.737591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193693, 35.595654, 33.948696>,  <28.168859, 35.407001, 34.300537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193693, 35.595654, 33.948696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991852, 0.069078, 0.107046,
		0.111248, -0.879085, -0.463501,
		0.062085, 0.471633, -0.879607,
		28.212318, 35.737144, 33.684814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744215, 35.215256, 33.706371>,  <28.168859, 35.407001, 34.300537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744215, 35.215256, 33.706371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647470, 35.603329, 33.699951>,  <28.589424, 35.836170, 33.696098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647470, 35.603329, 33.699951>,  <28.744215, 35.215256, 33.706371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647470, 35.603329, 33.699951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966965, 0.242367, 0.078981,
		0.080516, 0.003583, -0.996747,
		-0.241862, 0.970178, -0.016050,
		28.574911, 35.894382, 33.695137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.222635, 35.526875, 33.182198>,  <28.744215, 35.215256, 33.706371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.222635, 35.526875, 33.182198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099827, 35.737717, 33.499157>,  <29.026142, 35.864223, 33.689331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099827, 35.737717, 33.499157>,  <29.222635, 35.526875, 33.182198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099827, 35.737717, 33.499157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951700, 0.171593, 0.254602,
		-0.001766, 0.832293, -0.554333,
		-0.307023, 0.527109, 0.792397,
		29.007719, 35.895851, 33.736877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745218, 35.954834, 33.253052>,  <29.222635, 35.526875, 33.182198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745218, 35.954834, 33.253052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578669, 35.959198, 33.616703>,  <29.478739, 35.961815, 33.834892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.578669, 35.959198, 33.616703>,  <29.745218, 35.954834, 33.253052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578669, 35.959198, 33.616703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908283, 0.049718, 0.415392,
		-0.040670, 0.998704, -0.030606,
		-0.416375, 0.010905, 0.909128,
		29.453756, 35.962471, 33.889442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966177, 36.547100, 33.641708>,  <29.745218, 35.954834, 33.253052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966177, 36.547100, 33.641708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900312, 36.212116, 33.850147>,  <29.860794, 36.011124, 33.975212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.900312, 36.212116, 33.850147>,  <29.966177, 36.547100, 33.641708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900312, 36.212116, 33.850147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925820, 0.050997, 0.374508,
		-0.340210, 0.544112, 0.766941,
		-0.164663, -0.837461, 0.521099,
		29.850914, 35.960876, 34.006477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299435, 36.683998, 34.358582>,  <29.966177, 36.547100, 33.641708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299435, 36.683998, 34.358582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252674, 36.304104, 34.242424>,  <30.224617, 36.076168, 34.172729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252674, 36.304104, 34.242424>,  <30.299435, 36.683998, 34.358582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252674, 36.304104, 34.242424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884380, -0.232596, 0.404687,
		-0.451892, -0.209510, 0.867121,
		-0.116903, -0.949739, -0.290394,
		30.217604, 36.019180, 34.155304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353054, 36.386559, 34.922047>,  <30.299435, 36.683998, 34.358582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353054, 36.386559, 34.922047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483023, 36.218967, 34.582897>,  <30.561003, 36.118412, 34.379406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483023, 36.218967, 34.582897>,  <30.353054, 36.386559, 34.922047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483023, 36.218967, 34.582897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935442, 0.010427, 0.353325,
		-0.139193, -0.907938, 0.395314,
		0.324920, -0.418974, -0.847873,
		30.580498, 36.093277, 34.328537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.684334, 35.697865, 35.074482>,  <30.353054, 36.386559, 34.922047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.684334, 35.697865, 35.074482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819454, 35.881237, 34.745670>,  <30.900526, 35.991261, 34.548382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819454, 35.881237, 34.745670>,  <30.684334, 35.697865, 35.074482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819454, 35.881237, 34.745670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930749, -0.032800, 0.364184,
		0.139992, -0.888124, -0.437765,
		0.337799, 0.458433, -0.822029,
		30.920794, 36.018768, 34.499062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164913, 35.274422, 34.670242>,  <30.684334, 35.697865, 35.074482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164913, 35.274422, 34.670242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264273, 35.651577, 34.581467>,  <31.323889, 35.877872, 34.528202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.264273, 35.651577, 34.581467>,  <31.164913, 35.274422, 34.670242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264273, 35.651577, 34.581467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967476, -0.252810, 0.008783,
		-0.047827, -0.216900, -0.975022,
		0.248400, 0.942890, -0.221937,
		31.338793, 35.934444, 34.514885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591131, 35.336838, 34.090065>,  <31.164913, 35.274422, 34.670242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591131, 35.336838, 34.090065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632957, 35.603802, 34.384991>,  <31.658052, 35.763981, 34.561947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.632957, 35.603802, 34.384991>,  <31.591131, 35.336838, 34.090065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.632957, 35.603802, 34.384991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984194, -0.175992, 0.019728,
		0.142928, 0.723593, -0.675267,
		0.104566, 0.667413, 0.737310,
		31.664328, 35.804028, 34.606182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106918, 35.691685, 33.876057>,  <31.591131, 35.336838, 34.090065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106918, 35.691685, 33.876057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048561, 35.684566, 34.271713>,  <32.013546, 35.680294, 34.509106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048561, 35.684566, 34.271713>,  <32.106918, 35.691685, 33.876057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048561, 35.684566, 34.271713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785479, -0.609937, 0.104880,
		0.601447, 0.792250, 0.102967,
		-0.145895, -0.017799, 0.989140,
		32.004791, 35.679226, 34.568455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767128, 35.509308, 33.892956>,  <32.106918, 35.691685, 33.876057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767128, 35.509308, 33.892956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645496, 35.473930, 34.272369>,  <32.572517, 35.452705, 34.500015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645496, 35.473930, 34.272369>,  <32.767128, 35.509308, 33.892956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645496, 35.473930, 34.272369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902203, -0.346436, 0.256927,
		0.305883, 0.933895, 0.185136,
		-0.304081, -0.088440, 0.948532,
		32.554272, 35.447399, 34.556931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362106, 35.154709, 33.269058>,  <32.767128, 35.509308, 33.892956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362106, 35.154709, 33.269058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053898, 35.398811, 33.195419>,  <31.868973, 35.545273, 33.151237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053898, 35.398811, 33.195419>,  <32.362106, 35.154709, 33.269058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053898, 35.398811, 33.195419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527602, 0.772661, 0.353032,
		0.357684, 0.174887, -0.917320,
		-0.770518, 0.610254, -0.184098,
		31.822742, 35.581886, 33.140190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843678, 34.573120, 33.372536>,  <32.362106, 35.154709, 33.269058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843678, 34.573120, 33.372536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846222, 34.651398, 32.980278>,  <32.847748, 34.698364, 32.744923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846222, 34.651398, 32.980278>,  <32.843678, 34.573120, 33.372536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846222, 34.651398, 32.980278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969729, -0.238176, -0.053824,
		-0.244099, 0.951301, 0.188259,
		0.006364, 0.195698, -0.980644,
		32.848129, 34.710106, 32.686085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216331, 34.401299, 33.137730>,  <32.843678, 34.573120, 33.372536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216331, 34.401299, 33.137730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344662, 34.521786, 32.778545>,  <32.421661, 34.594078, 32.563034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344662, 34.521786, 32.778545>,  <32.216331, 34.401299, 33.137730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344662, 34.521786, 32.778545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909952, -0.165027, -0.380466,
		-0.262791, 0.939167, 0.221148,
		0.320825, 0.301217, -0.897964,
		32.440910, 34.612152, 32.509155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736717, 34.916809, 32.871399>,  <32.216331, 34.401299, 33.137730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736717, 34.916809, 32.871399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919468, 34.775974, 32.544647>,  <32.029118, 34.691471, 32.348595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919468, 34.775974, 32.544647>,  <31.736717, 34.916809, 32.871399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919468, 34.775974, 32.544647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879504, -0.316288, -0.355576,
		-0.133175, 0.880905, -0.454170,
		0.456877, -0.352091, -0.816881,
		32.056530, 34.670345, 32.299583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229424, 35.098358, 32.379120>,  <31.736717, 34.916809, 32.871399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229424, 35.098358, 32.379120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471294, 34.812767, 32.237923>,  <31.616417, 34.641415, 32.153202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471294, 34.812767, 32.237923>,  <31.229424, 35.098358, 32.379120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471294, 34.812767, 32.237923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771242, -0.414210, -0.483339,
		0.198877, 0.564509, -0.801110,
		0.604677, -0.713974, -0.352996,
		31.652697, 34.598576, 32.132023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451056, 35.431469, 31.902248>,  <31.229424, 35.098358, 32.379120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451056, 35.431469, 31.902248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626322, 35.118080, 31.725983>,  <31.731482, 34.930046, 31.620224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626322, 35.118080, 31.725983>,  <31.451056, 35.431469, 31.902248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626322, 35.118080, 31.725983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892517, -0.320896, -0.316922,
		0.106893, 0.532163, -0.839867,
		0.438164, -0.783472, -0.440663,
		31.757771, 34.883038, 31.593784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221584, 35.351196, 31.211645>,  <31.451056, 35.431469, 31.902248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221584, 35.351196, 31.211645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317387, 34.995945, 31.368547>,  <31.374868, 34.782795, 31.462688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317387, 34.995945, 31.368547>,  <31.221584, 35.351196, 31.211645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317387, 34.995945, 31.368547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879282, -0.369737, -0.300264,
		0.411704, -0.272987, -0.869470,
		0.239507, -0.888129, 0.392254,
		31.389238, 34.729507, 31.486223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972469, 34.954369, 30.820747>,  <31.221584, 35.351196, 31.211645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972469, 34.954369, 30.820747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028685, 34.698906, 31.123367>,  <31.062414, 34.545628, 31.304939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028685, 34.698906, 31.123367>,  <30.972469, 34.954369, 30.820747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028685, 34.698906, 31.123367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893941, -0.410312, -0.180314,
		0.425580, -0.650971, -0.628584,
		0.140537, -0.638655, 0.756551,
		31.070847, 34.507309, 31.350332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766432, 34.283566, 30.611498>,  <30.972469, 34.954369, 30.820747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766432, 34.283566, 30.611498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719507, 34.330120, 31.005999>,  <30.691353, 34.358051, 31.242699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719507, 34.330120, 31.005999>,  <30.766432, 34.283566, 30.611498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719507, 34.330120, 31.005999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951659, -0.297050, -0.078142,
		0.283872, -0.947743, 0.145605,
		-0.117310, 0.116384, 0.986252,
		30.684315, 34.365036, 31.301874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584171, 33.650253, 30.977100>,  <30.766432, 34.283566, 30.611498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584171, 33.650253, 30.977100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443718, 33.937695, 31.217205>,  <30.359446, 34.110161, 31.361267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443718, 33.937695, 31.217205>,  <30.584171, 33.650253, 30.977100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443718, 33.937695, 31.217205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820152, -0.545336, 0.173087,
		0.451724, -0.431527, 0.780851,
		-0.351135, 0.718605, 0.600260,
		30.338377, 34.153275, 31.397284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521160, 33.422096, 31.766613>,  <30.584171, 33.650253, 30.977100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521160, 33.422096, 31.766613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271833, 33.688511, 31.602724>,  <30.122238, 33.848358, 31.504391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271833, 33.688511, 31.602724>,  <30.521160, 33.422096, 31.766613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271833, 33.688511, 31.602724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770926, -0.611155, 0.179341,
		-0.130957, 0.427652, 0.894407,
		-0.623317, 0.666035, -0.409723,
		30.084839, 33.888321, 31.479807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913694, 33.736641, 32.039566>,  <30.521160, 33.422096, 31.766613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913694, 33.736641, 32.039566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915564, 33.343895, 32.115379>,  <29.916685, 33.108246, 32.160866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915564, 33.343895, 32.115379>,  <29.913694, 33.736641, 32.039566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915564, 33.343895, 32.115379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519799, -0.159531, -0.839261,
		0.854276, 0.102439, 0.509626,
		0.004672, -0.981864, 0.189531,
		29.916965, 33.049335, 32.172237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451923, 34.134686, 32.339836>,  <29.913694, 33.736641, 32.039566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451923, 34.134686, 32.339836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584063, 34.062607, 31.969236>,  <30.663345, 34.019360, 31.746876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.584063, 34.062607, 31.969236>,  <30.451923, 34.134686, 32.339836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584063, 34.062607, 31.969236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859982, 0.461994, 0.216776,
		0.388975, -0.868384, 0.307582,
		0.330346, -0.180194, -0.926499,
		30.683167, 34.008549, 31.691286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125181, 33.792862, 32.411770>,  <30.451923, 34.134686, 32.339836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125181, 33.792862, 32.411770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134701, 33.992279, 32.065155>,  <31.140413, 34.111927, 31.857185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.134701, 33.992279, 32.065155>,  <31.125181, 33.792862, 32.411770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134701, 33.992279, 32.065155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896133, 0.373583, 0.239544,
		0.443147, -0.782237, -0.437865,
		0.023801, 0.498538, -0.866541,
		31.141842, 34.141842, 31.805193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723425, 33.626759, 32.012794>,  <31.125181, 33.792862, 32.411770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723425, 33.626759, 32.012794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623623, 33.988495, 31.874279>,  <31.563742, 34.205536, 31.791170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623623, 33.988495, 31.874279>,  <31.723425, 33.626759, 32.012794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623623, 33.988495, 31.874279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961170, 0.274810, 0.025133,
		0.117891, -0.326568, -0.937793,
		-0.249507, 0.904341, -0.346285,
		31.548771, 34.259796, 31.770393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223392, 33.745956, 31.378958>,  <31.723425, 33.626759, 32.012794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223392, 33.745956, 31.378958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092068, 34.073475, 31.567333>,  <32.013271, 34.269985, 31.680359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.092068, 34.073475, 31.567333>,  <32.223392, 33.745956, 31.378958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092068, 34.073475, 31.567333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942067, 0.320109, 0.100199,
		-0.068709, 0.476552, -0.876457,
		-0.328312, 0.818797, 0.470939,
		31.993574, 34.319115, 31.708614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681583, 34.276413, 31.197607>,  <32.223392, 33.745956, 31.378958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681583, 34.276413, 31.197607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494904, 34.362705, 31.540688>,  <32.382896, 34.414478, 31.746536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494904, 34.362705, 31.540688>,  <32.681583, 34.276413, 31.197607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494904, 34.362705, 31.540688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830436, 0.440508, 0.341069,
		-0.304246, 0.871444, -0.384734,
		-0.466701, 0.215728, 0.857701,
		32.354893, 34.427425, 31.797998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939468, 35.005436, 31.375772>,  <32.681583, 34.276413, 31.197607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939468, 35.005436, 31.375772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791672, 34.871189, 31.722376>,  <32.702991, 34.790642, 31.930338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791672, 34.871189, 31.722376>,  <32.939468, 35.005436, 31.375772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791672, 34.871189, 31.722376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899943, 0.103036, 0.423658,
		-0.231467, 0.936348, 0.263961,
		-0.369493, -0.335613, 0.866510,
		32.680824, 34.770504, 31.982328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887295, 35.424393, 32.081097>,  <32.939468, 35.005436, 31.375772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887295, 35.424393, 32.081097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973579, 35.036774, 32.129112>,  <33.025352, 34.804203, 32.157921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.973579, 35.036774, 32.129112>,  <32.887295, 35.424393, 32.081097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973579, 35.036774, 32.129112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924920, 0.242189, 0.293032,
		-0.313035, 0.047815, 0.948537,
		0.215714, -0.969050, 0.120039,
		33.038292, 34.746059, 32.165123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175518, 35.316025, 32.754856>,  <32.887295, 35.424393, 32.081097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175518, 35.316025, 32.754856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310375, 35.029732, 32.510212>,  <33.391289, 34.857956, 32.363426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310375, 35.029732, 32.510212>,  <33.175518, 35.316025, 32.754856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310375, 35.029732, 32.510212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939972, 0.219482, 0.261303,
		-0.052785, -0.662993, 0.746763,
		0.337143, -0.715729, -0.611610,
		33.411518, 34.815014, 32.326729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668766, 35.240475, 33.137081>,  <33.175518, 35.316025, 32.754856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668766, 35.240475, 33.137081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779266, 35.071606, 32.791721>,  <33.845566, 34.970284, 32.584507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779266, 35.071606, 32.791721>,  <33.668766, 35.240475, 33.137081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779266, 35.071606, 32.791721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956246, 0.210766, 0.202906,
		0.096314, -0.881675, 0.461923,
		0.276255, -0.422169, -0.863398,
		33.862144, 34.944954, 32.532703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150875, 34.628796, 33.127274>,  <33.668766, 35.240475, 33.137081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150875, 34.628796, 33.127274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205780, 34.885651, 32.825596>,  <34.238724, 35.039764, 32.644588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205780, 34.885651, 32.825596>,  <34.150875, 34.628796, 33.127274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205780, 34.885651, 32.825596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953513, 0.120557, 0.276187,
		0.268275, -0.757047, -0.595742,
		0.137265, 0.642142, -0.754197,
		34.246960, 35.078293, 32.599339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757568, 34.452194, 32.860699>,  <34.150875, 34.628796, 33.127274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757568, 34.452194, 32.860699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684547, 34.842522, 32.812618>,  <34.640736, 35.076717, 32.783772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684547, 34.842522, 32.812618>,  <34.757568, 34.452194, 32.860699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684547, 34.842522, 32.812618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856686, 0.217862, 0.467575,
		0.482456, -0.017617, -0.875743,
		-0.182554, 0.975821, -0.120201,
		34.629780, 35.135269, 32.776558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299683, 34.475513, 33.226517>,  <34.757568, 34.452194, 32.860699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299683, 34.475513, 33.226517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170235, 34.839863, 33.124077>,  <35.092567, 35.058472, 33.062614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170235, 34.839863, 33.124077>,  <35.299683, 34.475513, 33.226517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170235, 34.839863, 33.124077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692255, 0.412440, 0.592180,
		0.645025, 0.014353, -0.764027,
		-0.323615, 0.910872, -0.256098,
		35.073151, 35.113125, 33.047249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903198, 34.952007, 32.833485>,  <35.299683, 34.475513, 33.226517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903198, 34.952007, 32.833485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622433, 35.038754, 33.104862>,  <35.453976, 35.090801, 33.267689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622433, 35.038754, 33.104862>,  <35.903198, 34.952007, 32.833485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622433, 35.038754, 33.104862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711107, 0.159068, 0.684853,
		0.040604, 0.963154, -0.265869,
		-0.701910, 0.216869, 0.678447,
		35.411861, 35.103813, 33.308395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247601, 35.636734, 32.961666>,  <35.903198, 34.952007, 32.833485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247601, 35.636734, 32.961666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633362, 35.533260, 32.983589>,  <36.864819, 35.471176, 32.996742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633362, 35.533260, 32.983589>,  <36.247601, 35.636734, 32.961666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633362, 35.533260, 32.983589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115562, 0.225881, -0.967276,
		0.237838, 0.939180, 0.247735,
		0.964406, -0.258684, 0.054810,
		36.922684, 35.455654, 33.000031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548294, 36.187115, 32.668182>,  <36.247601, 35.636734, 32.961666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548294, 36.187115, 32.668182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781006, 35.864410, 32.626865>,  <36.920635, 35.670788, 32.602077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781006, 35.864410, 32.626865>,  <36.548294, 36.187115, 32.668182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781006, 35.864410, 32.626865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032809, 0.150170, -0.988116,
		0.812683, 0.571478, 0.113835,
		0.581781, -0.806760, -0.103291,
		36.955540, 35.622383, 32.595879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053406, 36.426552, 32.293842>,  <36.548294, 36.187115, 32.668182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053406, 36.426552, 32.293842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098812, 36.030449, 32.261574>,  <37.126057, 35.792786, 32.242214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098812, 36.030449, 32.261574>,  <37.053406, 36.426552, 32.293842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098812, 36.030449, 32.261574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160650, 0.098422, -0.982092,
		0.980462, 0.098519, 0.170257,
		0.113512, -0.990256, -0.080672,
		37.132866, 35.733372, 32.237373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775997, 36.242580, 32.068974>,  <37.053406, 36.426552, 32.293842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.775997, 36.242580, 32.068974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542747, 35.931973, 31.973488>,  <37.402798, 35.745609, 31.916195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542747, 35.931973, 31.973488>,  <37.775997, 36.242580, 32.068974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542747, 35.931973, 31.973488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381604, -0.002410, -0.924323,
		0.717176, -0.630094, 0.297727,
		-0.583127, -0.776516, -0.238718,
		37.367809, 35.699017, 31.901873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181087, 35.874161, 31.617617>,  <37.775997, 36.242580, 32.068974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181087, 35.874161, 31.617617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820278, 35.720531, 31.538782>,  <37.603794, 35.628353, 31.491482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820278, 35.720531, 31.538782>,  <38.181087, 35.874161, 31.617617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820278, 35.720531, 31.538782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145576, 0.159170, -0.976459,
		0.406399, -0.909481, -0.087664,
		-0.902024, -0.384070, -0.197086,
		37.549671, 35.605312, 31.479656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230824, 35.386650, 31.007284>,  <38.181087, 35.874161, 31.617617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230824, 35.386650, 31.007284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849075, 35.500317, 31.043995>,  <37.620026, 35.568516, 31.066021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849075, 35.500317, 31.043995>,  <38.230824, 35.386650, 31.007284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849075, 35.500317, 31.043995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052556, 0.142698, -0.988370,
		-0.293959, -0.948096, -0.121253,
		-0.954372, 0.284167, 0.091776,
		37.562763, 35.585567, 31.071527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633743, 34.985394, 30.541183>,  <38.230824, 35.386650, 31.007284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633743, 34.985394, 30.541183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497719, 35.360004, 30.575300>,  <37.416103, 35.584770, 30.595770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.497719, 35.360004, 30.575300>,  <37.633743, 34.985394, 30.541183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.497719, 35.360004, 30.575300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254542, -0.004354, -0.967052,
		-0.905299, -0.350567, 0.239866,
		-0.340061, 0.936528, 0.085292,
		37.395702, 35.640965, 30.600887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977264, 35.086964, 30.205887>,  <37.633743, 34.985394, 30.541183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977264, 35.086964, 30.205887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140041, 35.452278, 30.198893>,  <37.237709, 35.671467, 30.194696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140041, 35.452278, 30.198893>,  <36.977264, 35.086964, 30.205887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140041, 35.452278, 30.198893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147467, 0.046794, -0.987960,
		-0.901470, 0.404625, 0.153722,
		0.406946, 0.913285, -0.017485,
		37.262127, 35.726265, 30.193647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552464, 35.587303, 29.970966>,  <36.977264, 35.086964, 30.205887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552464, 35.587303, 29.970966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927692, 35.699917, 29.890213>,  <37.152832, 35.767483, 29.841761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927692, 35.699917, 29.890213>,  <36.552464, 35.587303, 29.970966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927692, 35.699917, 29.890213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236400, 0.094209, -0.967078,
		-0.253243, 0.954916, 0.154928,
		0.938074, 0.281530, -0.201884,
		37.209114, 35.784374, 29.829647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612865, 36.165565, 29.583313>,  <36.552464, 35.587303, 29.970966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612865, 36.165565, 29.583313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915546, 35.914642, 29.509676>,  <37.097153, 35.764088, 29.465494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915546, 35.914642, 29.509676>,  <36.612865, 36.165565, 29.583313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915546, 35.914642, 29.509676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305109, -0.089815, -0.948073,
		0.578200, 0.773574, -0.259360,
		0.756699, -0.627309, -0.184093,
		37.142555, 35.726448, 29.454449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024487, 36.441223, 28.999798>,  <36.612865, 36.165565, 29.583313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024487, 36.441223, 28.999798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039127, 36.042271, 29.024731>,  <37.047913, 35.802898, 29.039690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.039127, 36.042271, 29.024731>,  <37.024487, 36.441223, 28.999798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.039127, 36.042271, 29.024731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295063, -0.070377, -0.952882,
		0.954777, 0.016486, -0.296867,
		0.036602, -0.997384, 0.062330,
		37.050106, 35.743057, 29.043430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512371, 36.224163, 28.510050>,  <37.024487, 36.441223, 28.999798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512371, 36.224163, 28.510050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272369, 35.907215, 28.554134>,  <37.128368, 35.717049, 28.580585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272369, 35.907215, 28.554134>,  <37.512371, 36.224163, 28.510050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272369, 35.907215, 28.554134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330185, 0.119798, -0.936283,
		0.728677, -0.598166, -0.333508,
		-0.600006, -0.792367, 0.110212,
		37.092369, 35.669506, 28.587198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632843, 35.742237, 28.006008>,  <37.512371, 36.224163, 28.510050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632843, 35.742237, 28.006008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248753, 35.686199, 28.102621>,  <37.018299, 35.652576, 28.160589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248753, 35.686199, 28.102621>,  <37.632843, 35.742237, 28.006008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248753, 35.686199, 28.102621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207962, -0.218400, -0.953443,
		0.186328, -0.965750, 0.180578,
		-0.960226, -0.140099, 0.241533,
		36.960686, 35.644169, 28.175081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444584, 35.269722, 27.564621>,  <37.632843, 35.742237, 28.006008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444584, 35.269722, 27.564621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116951, 35.476109, 27.664930>,  <36.920372, 35.599941, 27.725115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116951, 35.476109, 27.664930>,  <37.444584, 35.269722, 27.564621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116951, 35.476109, 27.664930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362549, -0.126790, -0.923300,
		-0.444597, -0.847173, 0.290914,
		-0.819080, 0.515967, 0.250771,
		36.871227, 35.630898, 27.740162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912548, 34.839764, 27.289492>,  <37.444584, 35.269722, 27.564621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912548, 34.839764, 27.289492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735748, 35.191055, 27.362549>,  <36.629669, 35.401829, 27.406384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735748, 35.191055, 27.362549>,  <36.912548, 34.839764, 27.289492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735748, 35.191055, 27.362549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351326, 0.017857, -0.936083,
		-0.825355, -0.477910, 0.300651,
		-0.441995, 0.878227, 0.182641,
		36.603149, 35.454525, 27.417341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255703, 34.913185, 26.956263>,  <36.912548, 34.839764, 27.289492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255703, 34.913185, 26.956263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363350, 35.298428, 26.955353>,  <36.427937, 35.529572, 26.954807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363350, 35.298428, 26.955353>,  <36.255703, 34.913185, 26.956263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363350, 35.298428, 26.955353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311773, 0.084883, -0.946358,
		-0.911248, 0.255391, 0.323113,
		0.269118, 0.963105, -0.002275,
		36.444084, 35.587360, 26.954670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686932, 35.232548, 26.597549>,  <36.255703, 34.913185, 26.956263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686932, 35.232548, 26.597549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975906, 35.508892, 26.586231>,  <36.149292, 35.674698, 26.579439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975906, 35.508892, 26.586231>,  <35.686932, 35.232548, 26.597549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975906, 35.508892, 26.586231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396456, 0.380353, -0.835556,
		-0.566489, 0.614854, 0.548676,
		0.722435, 0.690859, -0.028297,
		36.192638, 35.716148, 26.577742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378006, 35.850128, 26.559507>,  <35.686932, 35.232548, 26.597549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378006, 35.850128, 26.559507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732250, 35.942547, 26.398359>,  <35.944798, 35.997997, 26.301670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732250, 35.942547, 26.398359>,  <35.378006, 35.850128, 26.559507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732250, 35.942547, 26.398359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452165, 0.230999, -0.861503,
		-0.105986, 0.945122, 0.309048,
		0.885615, 0.231048, -0.402868,
		35.997936, 36.011860, 26.277498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255646, 36.606602, 26.146044>,  <35.378006, 35.850128, 26.559507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255646, 36.606602, 26.146044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585976, 36.429630, 26.006174>,  <35.784172, 36.323448, 25.922253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.585976, 36.429630, 26.006174>,  <35.255646, 36.606602, 26.146044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585976, 36.429630, 26.006174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226143, 0.308212, -0.924048,
		0.516598, 0.842178, 0.154477,
		0.825824, -0.442427, -0.349674,
		35.833721, 36.296902, 25.901272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648193, 37.183804, 25.649967>,  <35.255646, 36.606602, 26.146044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648193, 37.183804, 25.649967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777710, 36.816189, 25.560059>,  <35.855419, 36.595619, 25.506113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777710, 36.816189, 25.560059>,  <35.648193, 37.183804, 25.649967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777710, 36.816189, 25.560059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156468, 0.182283, -0.970717,
		0.933099, 0.349483, -0.084778,
		0.323795, -0.919040, -0.224771,
		35.874847, 36.540478, 25.492628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903618, 37.251259, 24.937813>,  <35.648193, 37.183804, 25.649967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903618, 37.251259, 24.937813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869762, 36.858879, 25.007765>,  <35.849449, 36.623451, 25.049736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869762, 36.858879, 25.007765>,  <35.903618, 37.251259, 24.937813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869762, 36.858879, 25.007765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350350, -0.135003, -0.926838,
		0.932786, -0.139719, -0.332247,
		-0.084643, -0.980945, 0.174880,
		35.844368, 36.564594, 25.060228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118534, 36.917591, 24.350470>,  <35.903618, 37.251259, 24.937813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118534, 36.917591, 24.350470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880604, 36.648445, 24.526392>,  <35.737846, 36.486958, 24.631945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880604, 36.648445, 24.526392>,  <36.118534, 36.917591, 24.350470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880604, 36.648445, 24.526392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350278, -0.275487, -0.895216,
		0.723523, -0.686554, -0.071824,
		-0.594828, -0.672867, 0.439806,
		35.702156, 36.446587, 24.658333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201637, 36.305962, 23.967806>,  <36.118534, 36.917591, 24.350470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201637, 36.305962, 23.967806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845692, 36.261555, 24.144810>,  <35.632126, 36.234913, 24.251013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845692, 36.261555, 24.144810>,  <36.201637, 36.305962, 23.967806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845692, 36.261555, 24.144810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388949, -0.322353, -0.863022,
		0.238452, -0.940087, 0.243672,
		-0.889865, -0.111014, 0.442512,
		35.578732, 36.228252, 24.277563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881084, 35.682285, 23.773102>,  <36.201637, 36.305962, 23.967806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881084, 35.682285, 23.773102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571556, 35.898403, 23.905333>,  <35.385838, 36.028072, 23.984671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.571556, 35.898403, 23.905333>,  <35.881084, 35.682285, 23.773102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571556, 35.898403, 23.905333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560102, -0.339975, -0.755449,
		-0.295769, -0.769746, 0.565697,
		-0.773826, 0.540286, 0.330582,
		35.339409, 36.060490, 24.004505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281506, 35.251453, 23.886375>,  <35.881084, 35.682285, 23.773102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281506, 35.251453, 23.886375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122562, 35.612766, 23.821651>,  <35.027195, 35.829556, 23.782818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122562, 35.612766, 23.821651>,  <35.281506, 35.251453, 23.886375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122562, 35.612766, 23.821651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549268, -0.375367, -0.746595,
		-0.735125, -0.207792, 0.645301,
		-0.397361, 0.903285, -0.161808,
		35.003353, 35.883751, 23.773109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582607, 35.092205, 23.753193>,  <35.281506, 35.251453, 23.886375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582607, 35.092205, 23.753193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601532, 35.468849, 23.619848>,  <34.612885, 35.694836, 23.539841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.601532, 35.468849, 23.619848>,  <34.582607, 35.092205, 23.753193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601532, 35.468849, 23.619848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660320, -0.220934, -0.717750,
		-0.749493, 0.254082, 0.611313,
		0.047307, 0.941611, -0.333364,
		34.615723, 35.751331, 23.519838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889385, 35.334026, 23.752426>,  <34.582607, 35.092205, 23.753193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889385, 35.334026, 23.752426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072792, 35.598186, 23.514557>,  <34.182835, 35.756683, 23.371836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072792, 35.598186, 23.514557>,  <33.889385, 35.334026, 23.752426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072792, 35.598186, 23.514557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623955, -0.237257, -0.744573,
		-0.632806, 0.712448, 0.303273,
		0.458516, 0.660399, -0.594673,
		34.210346, 35.796307, 23.336155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324409, 35.852245, 23.379698>,  <33.889385, 35.334026, 23.752426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324409, 35.852245, 23.379698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670135, 35.825989, 23.180239>,  <33.877571, 35.810234, 23.060562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670135, 35.825989, 23.180239>,  <33.324409, 35.852245, 23.379698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670135, 35.825989, 23.180239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501031, -0.198930, -0.842256,
		-0.043910, 0.977813, -0.204827,
		0.864315, -0.065641, -0.498649,
		33.929428, 35.806297, 23.030643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083729, 36.155277, 22.762178>,  <33.324409, 35.852245, 23.379698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083729, 36.155277, 22.762178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429703, 35.984276, 22.657015>,  <33.637287, 35.881676, 22.593916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429703, 35.984276, 22.657015>,  <33.083729, 36.155277, 22.762178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429703, 35.984276, 22.657015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406838, -0.290496, -0.866080,
		0.293878, 0.856069, -0.425185,
		0.864939, -0.427503, -0.262911,
		33.689186, 35.856026, 22.578142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151783, 36.351753, 22.130507>,  <33.083729, 36.155277, 22.762178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151783, 36.351753, 22.130507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391823, 36.032948, 22.157764>,  <33.535847, 35.841663, 22.174118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391823, 36.032948, 22.157764>,  <33.151783, 36.351753, 22.130507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391823, 36.032948, 22.157764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291881, -0.297487, -0.909014,
		0.744770, 0.525612, -0.411156,
		0.600102, -0.797016, 0.068144,
		33.571854, 35.793842, 22.178207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.473339, 36.265400, 21.526957>,  <33.151783, 36.351753, 22.130507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.473339, 36.265400, 21.526957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522343, 35.891396, 21.660072>,  <33.551743, 35.666992, 21.739941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522343, 35.891396, 21.660072>,  <33.473339, 36.265400, 21.526957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522343, 35.891396, 21.660072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344111, -0.354529, -0.869423,
		0.930903, -0.008005, -0.365180,
		0.122507, -0.935011, 0.332787,
		33.559093, 35.610893, 21.759909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977287, 35.939007, 21.233595>,  <33.473339, 36.265400, 21.526957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977287, 35.939007, 21.233595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755737, 35.622868, 21.338337>,  <33.622807, 35.433182, 21.401182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755737, 35.622868, 21.338337>,  <33.977287, 35.939007, 21.233595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755737, 35.622868, 21.338337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196858, -0.181273, -0.963529,
		0.808993, -0.585223, -0.055184,
		-0.553875, -0.790351, 0.261855,
		33.589573, 35.385761, 21.416893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137878, 35.434895, 20.772766>,  <33.977287, 35.939007, 21.233595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137878, 35.434895, 20.772766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811600, 35.250271, 20.912256>,  <33.615833, 35.139496, 20.995951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.811600, 35.250271, 20.912256>,  <34.137878, 35.434895, 20.772766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811600, 35.250271, 20.912256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242775, -0.274040, -0.930571,
		0.525078, -0.843722, 0.111478,
		-0.815692, -0.461558, 0.348727,
		33.566891, 35.111805, 21.016874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183662, 34.754486, 20.519968>,  <34.137878, 35.434895, 20.772766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183662, 34.754486, 20.519968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801620, 34.810028, 20.624653>,  <33.572395, 34.843353, 20.687464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801620, 34.810028, 20.624653>,  <34.183662, 34.754486, 20.519968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801620, 34.810028, 20.624653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285474, -0.195095, -0.938319,
		-0.079228, -0.970906, 0.225974,
		-0.955106, 0.138851, 0.261712,
		33.515087, 34.851685, 20.703167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782814, 34.156975, 20.339125>,  <34.183662, 34.754486, 20.519968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782814, 34.156975, 20.339125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492706, 34.429512, 20.378618>,  <33.318642, 34.593033, 20.402315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492706, 34.429512, 20.378618>,  <33.782814, 34.156975, 20.339125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492706, 34.429512, 20.378618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395078, -0.294451, -0.870179,
		-0.563819, -0.670125, 0.482742,
		-0.725273, 0.681345, 0.098734,
		33.275124, 34.633915, 20.408239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149677, 33.758255, 20.201902>,  <33.782814, 34.156975, 20.339125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149677, 33.758255, 20.201902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045479, 34.140450, 20.146488>,  <32.982960, 34.369766, 20.113239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045479, 34.140450, 20.146488>,  <33.149677, 33.758255, 20.201902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045479, 34.140450, 20.146488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415681, -0.240504, -0.877136,
		-0.871407, -0.170906, 0.459827,
		-0.260498, 0.955484, -0.138535,
		32.967331, 34.427094, 20.104927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396778, 33.750362, 20.200893>,  <33.149677, 33.758255, 20.201902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396778, 33.750362, 20.200893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485931, 34.085503, 20.001562>,  <32.539425, 34.286587, 19.881964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485931, 34.085503, 20.001562>,  <32.396778, 33.750362, 20.200893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485931, 34.085503, 20.001562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744822, -0.183436, -0.641554,
		-0.628937, 0.514158, 0.583163,
		0.222887, 0.837850, -0.498326,
		32.552799, 34.336857, 19.852064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712919, 34.016251, 20.078505>,  <32.396778, 33.750362, 20.200893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712919, 34.016251, 20.078505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948746, 34.211155, 19.820827>,  <32.090240, 34.328098, 19.666222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.948746, 34.211155, 19.820827>,  <31.712919, 34.016251, 20.078505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948746, 34.211155, 19.820827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681057, -0.128889, -0.720797,
		-0.434248, 0.863691, 0.255865,
		0.589568, 0.487263, -0.644193,
		32.125618, 34.357334, 19.627569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316788, 34.453812, 19.743464>,  <31.712919, 34.016251, 20.078505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316788, 34.453812, 19.743464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617268, 34.449699, 19.479465>,  <31.797556, 34.447231, 19.321066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.617268, 34.449699, 19.479465>,  <31.316788, 34.453812, 19.743464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617268, 34.449699, 19.479465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650249, -0.183420, -0.737247,
		-0.113476, 0.982981, -0.144472,
		0.751199, -0.010283, -0.659996,
		31.842627, 34.446613, 19.281467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.159607, 34.890579, 19.084780>,  <31.316788, 34.453812, 19.743464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.159607, 34.890579, 19.084780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451571, 34.643463, 18.967770>,  <31.626749, 34.495193, 18.897564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.451571, 34.643463, 18.967770>,  <31.159607, 34.890579, 19.084780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.451571, 34.643463, 18.967770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514436, -0.214685, -0.830220,
		0.450097, 0.756473, -0.474512,
		0.729910, -0.617786, -0.292527,
		31.670544, 34.458126, 18.880011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.259062, 35.040100, 18.345881>,  <31.159607, 34.890579, 19.084780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.259062, 35.040100, 18.345881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416740, 34.675522, 18.392990>,  <31.511349, 34.456776, 18.421257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416740, 34.675522, 18.392990>,  <31.259062, 35.040100, 18.345881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416740, 34.675522, 18.392990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436862, -0.298587, -0.848527,
		0.808554, 0.283037, -0.515879,
		0.394199, -0.911447, 0.117776,
		31.535000, 34.402088, 18.428324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612030, 34.828766, 17.589054>,  <31.259062, 35.040100, 18.345881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612030, 34.828766, 17.589054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522467, 34.526260, 17.834959>,  <31.468729, 34.344757, 17.982502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522467, 34.526260, 17.834959>,  <31.612030, 34.828766, 17.589054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522467, 34.526260, 17.834959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452093, -0.478211, -0.752945,
		0.863410, -0.446521, -0.234825,
		-0.223910, -0.756262, 0.614761,
		31.455294, 34.299381, 18.019388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591688, 34.286083, 17.160408>,  <31.612030, 34.828766, 17.589054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591688, 34.286083, 17.160408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408548, 34.139709, 17.484499>,  <31.298664, 34.051888, 17.678953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.408548, 34.139709, 17.484499>,  <31.591688, 34.286083, 17.160408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408548, 34.139709, 17.484499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688454, -0.430690, -0.583555,
		0.562499, -0.824984, -0.054736,
		-0.457850, -0.365933, 0.810227,
		31.271193, 34.029930, 17.727568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495497, 33.624866, 16.995918>,  <31.591688, 34.286083, 17.160408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495497, 33.624866, 16.995918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220093, 33.732170, 17.265434>,  <31.054850, 33.796555, 17.427143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220093, 33.732170, 17.265434>,  <31.495497, 33.624866, 16.995918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220093, 33.732170, 17.265434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706551, -0.038636, -0.706606,
		-0.163525, -0.962570, 0.216144,
		-0.688509, 0.268264, 0.673787,
		31.013540, 33.812649, 17.467571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026928, 33.059238, 16.955408>,  <31.495497, 33.624866, 16.995918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026928, 33.059238, 16.955408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834354, 33.349270, 17.152378>,  <30.718809, 33.523289, 17.270559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834354, 33.349270, 17.152378>,  <31.026928, 33.059238, 16.955408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834354, 33.349270, 17.152378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830140, -0.196951, -0.521611,
		-0.281226, -0.659902, 0.696736,
		-0.481435, 0.725079, 0.492423,
		30.689924, 33.566795, 17.300106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442150, 32.699749, 17.126621>,  <31.026928, 33.059238, 16.955408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442150, 32.699749, 17.126621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378876, 33.094357, 17.143385>,  <30.340912, 33.331120, 17.153442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.378876, 33.094357, 17.143385>,  <30.442150, 32.699749, 17.126621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378876, 33.094357, 17.143385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904466, -0.127741, -0.406969,
		-0.396130, -0.102280, 0.912480,
		-0.158186, 0.986519, 0.041907,
		30.331419, 33.390312, 17.155956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813646, 32.765362, 17.547310>,  <30.442150, 32.699749, 17.126621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813646, 32.765362, 17.547310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840145, 33.101456, 17.332045>,  <29.856045, 33.303112, 17.202885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.840145, 33.101456, 17.332045>,  <29.813646, 32.765362, 17.547310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.840145, 33.101456, 17.332045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972171, -0.067110, -0.224454,
		-0.224710, 0.538057, 0.812404,
		0.066249, 0.840233, -0.538164,
		29.860020, 33.353527, 17.170595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.221333, 33.275635, 17.772324>,  <29.813646, 32.765362, 17.547310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.221333, 33.275635, 17.772324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353140, 33.364697, 17.405315>,  <29.432224, 33.418133, 17.185110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353140, 33.364697, 17.405315>,  <29.221333, 33.275635, 17.772324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353140, 33.364697, 17.405315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884097, -0.268283, -0.382619,
		-0.331347, 0.937256, 0.108444,
		0.329518, 0.222655, -0.917520,
		29.451996, 33.431492, 17.130060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610361, 33.565849, 17.513502>,  <29.221333, 33.275635, 17.772324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610361, 33.565849, 17.513502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836464, 33.489838, 17.192411>,  <28.972126, 33.444233, 16.999756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.836464, 33.489838, 17.192411>,  <28.610361, 33.565849, 17.513502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.836464, 33.489838, 17.192411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808599, -0.320220, -0.493586,
		-0.163255, 0.928089, -0.334662,
		0.565257, -0.190027, -0.802729,
		29.006041, 33.432831, 16.951593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175261, 33.735416, 17.055347>,  <28.610361, 33.565849, 17.513502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175261, 33.735416, 17.055347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442913, 33.516987, 16.853725>,  <28.603504, 33.385929, 16.732752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442913, 33.516987, 16.853725>,  <28.175261, 33.735416, 17.055347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442913, 33.516987, 16.853725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717702, -0.298890, -0.628942,
		0.192792, 0.782604, -0.591915,
		0.669130, -0.546074, -0.504053,
		28.643652, 33.353165, 16.702509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998161, 33.815578, 16.417896>,  <28.175261, 33.735416, 17.055347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998161, 33.815578, 16.417896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237555, 33.495911, 16.395452>,  <28.381191, 33.304111, 16.381987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237555, 33.495911, 16.395452>,  <27.998161, 33.815578, 16.417896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237555, 33.495911, 16.395452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722856, -0.508485, -0.467891,
		0.345391, 0.320587, -0.882003,
		0.598485, -0.799166, -0.056112,
		28.417101, 33.256161, 16.378618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988567, 33.588497, 15.644935>,  <27.998161, 33.815578, 16.417896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988567, 33.588497, 15.644935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072170, 33.277843, 15.882642>,  <28.122332, 33.091450, 16.025267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072170, 33.277843, 15.882642>,  <27.988567, 33.588497, 15.644935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072170, 33.277843, 15.882642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690102, -0.547699, -0.473059,
		0.692874, -0.311233, -0.650430,
		0.209008, -0.776634, 0.594269,
		28.134872, 33.044853, 16.060923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770628, 33.078579, 15.257773>,  <27.988567, 33.588497, 15.644935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770628, 33.078579, 15.257773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800980, 32.882782, 15.605252>,  <27.819191, 32.765305, 15.813740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.800980, 32.882782, 15.605252>,  <27.770628, 33.078579, 15.257773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.800980, 32.882782, 15.605252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768028, -0.584301, -0.262157,
		0.635906, -0.647291, -0.420283,
		0.075880, -0.489496, 0.868698,
		27.823744, 32.735931, 15.865862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933659, 32.347931, 15.133782>,  <27.770628, 33.078579, 15.257773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933659, 32.347931, 15.133782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762083, 32.384399, 15.493271>,  <27.659138, 32.406281, 15.708963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.762083, 32.384399, 15.493271>,  <27.933659, 32.347931, 15.133782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.762083, 32.384399, 15.493271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706778, -0.653456, -0.271036,
		0.562563, -0.751453, 0.344733,
		-0.428939, 0.091175, 0.898721,
		27.633402, 32.411751, 15.762887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869452, 31.704657, 15.406478>,  <27.933659, 32.347931, 15.133782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869452, 31.704657, 15.406478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590193, 31.935051, 15.576575>,  <27.422638, 32.073288, 15.678634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.590193, 31.935051, 15.576575>,  <27.869452, 31.704657, 15.406478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.590193, 31.935051, 15.576575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640030, -0.768283, -0.010145,
		0.320864, -0.279251, 0.905022,
		-0.698147, 0.575986, 0.425243,
		27.380749, 32.107845, 15.704148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562912, 31.327990, 15.901759>,  <27.869452, 31.704657, 15.406478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562912, 31.327990, 15.901759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312073, 31.610331, 15.769988>,  <27.161570, 31.779736, 15.690926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.312073, 31.610331, 15.769988>,  <27.562912, 31.327990, 15.901759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312073, 31.610331, 15.769988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725737, -0.683061, -0.082059,
		-0.282941, 0.187619, 0.940608,
		-0.627097, 0.705852, -0.329428,
		27.123943, 31.822086, 15.671160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940617, 31.391214, 16.269157>,  <27.562912, 31.327990, 15.901759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940617, 31.391214, 16.269157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888384, 31.486397, 15.884173>,  <26.857044, 31.543507, 15.653183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.888384, 31.486397, 15.884173>,  <26.940617, 31.391214, 16.269157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888384, 31.486397, 15.884173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615074, -0.780816, -0.109598,
		-0.777582, 0.577671, 0.248322,
		-0.130582, 0.237957, -0.962458,
		26.849211, 31.557783, 15.595436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530533, 31.211634, 16.870153>,  <26.940617, 31.391214, 16.269157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530533, 31.211634, 16.870153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153807, 31.326937, 16.939310>,  <25.927771, 31.396118, 16.980804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.153807, 31.326937, 16.939310>,  <26.530533, 31.211634, 16.870153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153807, 31.326937, 16.939310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313928, -0.570490, -0.758940,
		-0.120140, -0.769056, 0.627789,
		-0.941815, 0.288259, 0.172890,
		25.871262, 31.413414, 16.991177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968403, 30.642351, 17.156752>,  <26.530533, 31.211634, 16.870153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968403, 30.642351, 17.156752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828403, 30.936989, 16.925259>,  <25.744404, 31.113771, 16.786364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828403, 30.936989, 16.925259>,  <25.968403, 30.642351, 17.156752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828403, 30.936989, 16.925259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472115, -0.672311, -0.570179,
		-0.809079, 0.073667, 0.583064,
		-0.349997, 0.736593, -0.578733,
		25.723404, 31.157967, 16.751638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.212143, 30.790569, 17.207718>,  <25.968403, 30.642351, 17.156752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.212143, 30.790569, 17.207718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349979, 30.894009, 16.846745>,  <25.432682, 30.956072, 16.630161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.349979, 30.894009, 16.846745>,  <25.212143, 30.790569, 17.207718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349979, 30.894009, 16.846745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481974, -0.776199, -0.406468,
		-0.805579, 0.575014, -0.142833,
		0.344592, 0.258601, -0.902431,
		25.453358, 30.971588, 16.576015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.642344, 30.991753, 16.831081>,  <25.212143, 30.790569, 17.207718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.642344, 30.991753, 16.831081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945450, 30.857046, 16.607517>,  <25.127314, 30.776222, 16.473379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945450, 30.857046, 16.607517>,  <24.642344, 30.991753, 16.831081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945450, 30.857046, 16.607517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553947, -0.784681, -0.278241,
		-0.344863, 0.520447, -0.781156,
		0.757768, -0.336764, -0.558908,
		25.172781, 30.756018, 16.439844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.666552, 31.647610, 16.347847>,  <24.642344, 30.991753, 16.831081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.666552, 31.647610, 16.347847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.045774, 31.734589, 16.254978>,  <25.273308, 31.786776, 16.199257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.045774, 31.734589, 16.254978>,  <24.666552, 31.647610, 16.347847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.045774, 31.734589, 16.254978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291529, -0.301920, 0.907665,
		0.127271, -0.928203, -0.349630,
		0.948057, 0.217446, -0.232172,
		25.330193, 31.799822, 16.185326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.029257, 32.137344, 16.851564>,  <24.666552, 31.647610, 16.347847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.029257, 32.137344, 16.851564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185965, 31.774920, 16.787600>,  <25.279989, 31.557465, 16.749220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185965, 31.774920, 16.787600>,  <25.029257, 32.137344, 16.851564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185965, 31.774920, 16.787600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316102, -0.030678, 0.948229,
		-0.864058, -0.422037, 0.274389,
		0.391770, -0.906060, -0.159914,
		25.303495, 31.503101, 16.739626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696262, 31.700270, 17.315628>,  <25.029257, 32.137344, 16.851564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696262, 31.700270, 17.315628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.070408, 31.601294, 17.214537>,  <25.294895, 31.541908, 17.153883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.070408, 31.601294, 17.214537>,  <24.696262, 31.700270, 17.315628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.070408, 31.601294, 17.214537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298237, 0.167652, 0.939653,
		-0.190137, -0.954288, 0.230611,
		0.935362, -0.247439, -0.252727,
		25.351017, 31.527061, 17.138718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.985039, 31.283766, 17.862219>,  <24.696262, 31.700270, 17.315628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.985039, 31.283766, 17.862219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292315, 31.461546, 17.677895>,  <25.476681, 31.568214, 17.567301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292315, 31.461546, 17.677895>,  <24.985039, 31.283766, 17.862219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292315, 31.461546, 17.677895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411861, 0.207988, 0.887193,
		0.490159, -0.871322, -0.023279,
		0.768189, 0.444454, -0.460811,
		25.522772, 31.594881, 17.539652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.488726, 30.902464, 18.172115>,  <24.985039, 31.283766, 17.862219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.488726, 30.902464, 18.172115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638147, 31.239763, 18.017509>,  <25.727800, 31.442142, 17.924746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.638147, 31.239763, 18.017509>,  <25.488726, 30.902464, 18.172115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.638147, 31.239763, 18.017509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620675, 0.082441, 0.779722,
		0.689362, -0.531168, -0.492585,
		0.373554, 0.843246, -0.386515,
		25.750214, 31.492737, 17.901554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.140614, 30.788130, 18.426949>,  <25.488726, 30.902464, 18.172115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.140614, 30.788130, 18.426949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128750, 31.164579, 18.292246>,  <26.121632, 31.390450, 18.211424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.128750, 31.164579, 18.292246>,  <26.140614, 30.788130, 18.426949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.128750, 31.164579, 18.292246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594636, 0.287416, 0.750866,
		0.803448, -0.177976, -0.568151,
		-0.029659, 0.941125, -0.336755,
		26.119852, 31.446917, 18.191219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783838, 30.930342, 18.490318>,  <26.140614, 30.788130, 18.426949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783838, 30.930342, 18.490318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581976, 31.275652, 18.486835>,  <26.460857, 31.482838, 18.484745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581976, 31.275652, 18.486835>,  <26.783838, 30.930342, 18.490318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581976, 31.275652, 18.486835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581889, 0.347578, 0.735251,
		0.637751, 0.365984, -0.677739,
		-0.504657, 0.863276, -0.008706,
		26.430578, 31.534636, 18.484224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278202, 31.429794, 18.557398>,  <26.783838, 30.930342, 18.490318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278202, 31.429794, 18.557398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934383, 31.581083, 18.694876>,  <26.728092, 31.671858, 18.777363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934383, 31.581083, 18.694876>,  <27.278202, 31.429794, 18.557398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934383, 31.581083, 18.694876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488143, 0.408499, 0.771262,
		0.151312, 0.830707, -0.535752,
		-0.859547, 0.378225, 0.343694,
		26.676519, 31.694551, 18.797983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469160, 32.068642, 18.858242>,  <27.278202, 31.429794, 18.557398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469160, 32.068642, 18.858242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110516, 32.006264, 19.024021>,  <26.895329, 31.968838, 19.123489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.110516, 32.006264, 19.024021>,  <27.469160, 32.068642, 18.858242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.110516, 32.006264, 19.024021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332055, 0.382433, 0.862255,
		-0.292961, 0.910729, -0.291113,
		-0.896612, -0.155941, 0.414450,
		26.841532, 31.959482, 19.148355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342066, 32.639973, 19.192699>,  <27.469160, 32.068642, 18.858242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342066, 32.639973, 19.192699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105413, 32.365086, 19.361322>,  <26.963423, 32.200153, 19.462496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105413, 32.365086, 19.361322>,  <27.342066, 32.639973, 19.192699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105413, 32.365086, 19.361322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186527, 0.392024, 0.900847,
		-0.784334, 0.611601, -0.103750,
		-0.591631, -0.687213, 0.421558,
		26.927925, 32.158920, 19.487789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081455, 33.009987, 19.773357>,  <27.342066, 32.639973, 19.192699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081455, 33.009987, 19.773357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978142, 32.630623, 19.846907>,  <26.916153, 32.403004, 19.891037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978142, 32.630623, 19.846907>,  <27.081455, 33.009987, 19.773357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978142, 32.630623, 19.846907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095157, 0.214382, 0.972103,
		-0.961371, 0.233583, -0.145619,
		-0.258285, -0.948409, 0.183874,
		26.900656, 32.346100, 19.902069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.475512, 33.032394, 20.209562>,  <27.081455, 33.009987, 19.773357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.475512, 33.032394, 20.209562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677011, 32.692047, 20.269239>,  <26.797911, 32.487839, 20.305046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677011, 32.692047, 20.269239>,  <26.475512, 33.032394, 20.209562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677011, 32.692047, 20.269239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130740, 0.245810, 0.960460,
		-0.853899, -0.464326, 0.235070,
		0.503750, -0.850869, 0.149191,
		26.828136, 32.436787, 20.313997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474823, 32.967682, 20.978529>,  <26.475512, 33.032394, 20.209562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474823, 32.967682, 20.978529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728296, 32.686012, 20.850414>,  <26.880381, 32.517010, 20.773546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.728296, 32.686012, 20.850414>,  <26.474823, 32.967682, 20.978529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728296, 32.686012, 20.850414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435797, -0.017130, 0.899882,
		-0.639163, -0.709818, 0.296023,
		0.633681, -0.704177, -0.320285,
		26.918400, 32.474758, 20.754328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495655, 32.411896, 21.499121>,  <26.474823, 32.967682, 20.978529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495655, 32.411896, 21.499121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837782, 32.396332, 21.292465>,  <27.043058, 32.386993, 21.168472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.837782, 32.396332, 21.292465>,  <26.495655, 32.411896, 21.499121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.837782, 32.396332, 21.292465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518076, 0.054289, 0.853610,
		-0.005169, -0.997767, 0.066594,
		0.855319, -0.038914, -0.516638,
		27.094378, 32.384659, 21.137474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886768, 31.943855, 21.763105>,  <26.495655, 32.411896, 21.499121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886768, 31.943855, 21.763105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151512, 32.160709, 21.556017>,  <27.310358, 32.290821, 21.431765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.151512, 32.160709, 21.556017>,  <26.886768, 31.943855, 21.763105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.151512, 32.160709, 21.556017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597185, 0.036138, 0.801289,
		0.453114, -0.839515, -0.299836,
		0.661859, 0.542133, -0.517721,
		27.350069, 32.323349, 21.400702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500143, 31.671026, 21.944109>,  <26.886768, 31.943855, 21.763105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500143, 31.671026, 21.944109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627657, 32.017139, 21.789364>,  <27.704165, 32.224808, 21.696516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627657, 32.017139, 21.789364>,  <27.500143, 31.671026, 21.944109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627657, 32.017139, 21.789364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621650, 0.117239, 0.774472,
		0.715492, -0.487383, -0.500529,
		0.318783, 0.865282, -0.386865,
		27.723291, 32.276726, 21.673304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273201, 31.695827, 22.078217>,  <27.500143, 31.671026, 21.944109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273201, 31.695827, 22.078217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194342, 32.070705, 21.963118>,  <28.147026, 32.295631, 21.894058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.194342, 32.070705, 21.963118>,  <28.273201, 31.695827, 22.078217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.194342, 32.070705, 21.963118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645804, 0.344976, 0.681123,
		0.737611, -0.051547, -0.673255,
		-0.197147, 0.937195, -0.287747,
		28.135199, 32.351864, 21.876793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953953, 32.024502, 21.925661>,  <28.273201, 31.695827, 22.078217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953953, 32.024502, 21.925661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675125, 32.297447, 22.013727>,  <28.507830, 32.461216, 22.066566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675125, 32.297447, 22.013727>,  <28.953953, 32.024502, 21.925661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675125, 32.297447, 22.013727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655136, 0.481373, 0.582303,
		0.291363, 0.550142, -0.782593,
		-0.697068, 0.682366, 0.220164,
		28.466005, 32.502155, 22.079777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262360, 32.714603, 21.784027>,  <28.953953, 32.024502, 21.925661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262360, 32.714603, 21.784027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958082, 32.735771, 22.042807>,  <28.775517, 32.748470, 22.198074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958082, 32.735771, 22.042807>,  <29.262360, 32.714603, 21.784027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958082, 32.735771, 22.042807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576625, 0.512764, 0.636063,
		-0.298074, 0.856897, -0.420570,
		-0.760694, 0.052917, 0.646950,
		28.729874, 32.751648, 22.236891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362539, 33.273895, 22.049915>,  <29.262360, 32.714603, 21.784027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362539, 33.273895, 22.049915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101572, 33.131901, 22.317747>,  <28.944992, 33.046703, 22.478447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101572, 33.131901, 22.317747>,  <29.362539, 33.273895, 22.049915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101572, 33.131901, 22.317747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559993, 0.369504, 0.741535,
		-0.510645, 0.858751, -0.042282,
		-0.652418, -0.354984, 0.669581,
		28.905848, 33.025406, 22.518621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266069, 33.845062, 22.514380>,  <29.362539, 33.273895, 22.049915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266069, 33.845062, 22.514380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140898, 33.515488, 22.703360>,  <29.065794, 33.317745, 22.816748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140898, 33.515488, 22.703360>,  <29.266069, 33.845062, 22.514380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140898, 33.515488, 22.703360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414968, 0.328835, 0.848333,
		-0.854328, 0.461521, 0.239003,
		-0.312931, -0.823933, 0.472450,
		29.047018, 33.268307, 22.845095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882919, 34.042175, 23.080256>,  <29.266069, 33.845062, 22.514380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882919, 34.042175, 23.080256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034868, 33.677624, 23.143621>,  <29.126038, 33.458893, 23.181641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034868, 33.677624, 23.143621>,  <28.882919, 34.042175, 23.080256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034868, 33.677624, 23.143621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427644, 0.324870, 0.843552,
		-0.820256, -0.252696, 0.513152,
		0.379870, -0.911375, 0.158413,
		29.148829, 33.404213, 23.191145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104975, 34.148117, 23.746832>,  <28.882919, 34.042175, 23.080256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104975, 34.148117, 23.746832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246906, 33.785370, 23.655901>,  <29.332066, 33.567722, 23.601341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.246906, 33.785370, 23.655901>,  <29.104975, 34.148117, 23.746832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.246906, 33.785370, 23.655901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626416, 0.050104, 0.777877,
		-0.694045, -0.418417, 0.585857,
		0.354831, -0.906872, -0.227329,
		29.353355, 33.513309, 23.587702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926083, 33.708225, 24.355841>,  <29.104975, 34.148117, 23.746832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926083, 33.708225, 24.355841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230757, 33.571098, 24.135910>,  <29.413561, 33.488823, 24.003952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.230757, 33.571098, 24.135910>,  <28.926083, 33.708225, 24.355841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230757, 33.571098, 24.135910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597793, 0.044447, 0.800418,
		-0.249962, -0.938349, 0.238791,
		0.761685, -0.342821, -0.549828,
		29.459263, 33.468250, 23.970963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278784, 33.294739, 24.773048>,  <28.926083, 33.708225, 24.355841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278784, 33.294739, 24.773048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564129, 33.348736, 24.497980>,  <29.735336, 33.381134, 24.332939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.564129, 33.348736, 24.497980>,  <29.278784, 33.294739, 24.773048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.564129, 33.348736, 24.497980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674180, 0.135658, 0.726002,
		0.191295, -0.981515, 0.005761,
		0.713364, 0.134997, -0.687669,
		29.778137, 33.389233, 24.291679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913855, 33.074589, 25.048126>,  <29.278784, 33.294739, 24.773048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913855, 33.074589, 25.048126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049694, 33.297066, 24.744728>,  <30.131197, 33.430553, 24.562689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049694, 33.297066, 24.744728>,  <29.913855, 33.074589, 25.048126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049694, 33.297066, 24.744728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806444, 0.242847, 0.539140,
		0.484067, -0.794777, -0.366072,
		0.339597, 0.556197, -0.758498,
		30.151573, 33.463924, 24.517179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625839, 33.034218, 25.061056>,  <29.913855, 33.074589, 25.048126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625839, 33.034218, 25.061056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558537, 33.373154, 24.859577>,  <30.518154, 33.576515, 24.738689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.558537, 33.373154, 24.859577>,  <30.625839, 33.034218, 25.061056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.558537, 33.373154, 24.859577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782155, 0.425752, 0.454940,
		0.599936, -0.317422, -0.734384,
		-0.168258, 0.847337, -0.503697,
		30.508059, 33.627354, 24.708467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240084, 33.273029, 24.817816>,  <30.625839, 33.034218, 25.061056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240084, 33.273029, 24.817816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001312, 33.593933, 24.814980>,  <30.858049, 33.786476, 24.813278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.001312, 33.593933, 24.814980>,  <31.240084, 33.273029, 24.817816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001312, 33.593933, 24.814980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722680, 0.541515, 0.429529,
		0.348435, 0.251274, -0.903025,
		-0.596931, 0.802261, -0.007092,
		30.822233, 33.834610, 24.812851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697849, 33.901699, 24.641678>,  <31.240084, 33.273029, 24.817816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697849, 33.901699, 24.641678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365776, 34.056015, 24.802654>,  <31.166533, 34.148605, 24.899240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365776, 34.056015, 24.802654>,  <31.697849, 33.901699, 24.641678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365776, 34.056015, 24.802654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557361, 0.589854, 0.584312,
		-0.011956, 0.709391, -0.704714,
		-0.830184, 0.385795, 0.402439,
		31.116720, 34.171753, 24.923386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830564, 34.663483, 24.659966>,  <31.697849, 33.901699, 24.641678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830564, 34.663483, 24.659966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544762, 34.566566, 24.922501>,  <31.373280, 34.508419, 25.080021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.544762, 34.566566, 24.922501>,  <31.830564, 34.663483, 24.659966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544762, 34.566566, 24.922501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497359, 0.483885, 0.720062,
		-0.492054, 0.840924, -0.225235,
		-0.714505, -0.242287, 0.656338,
		31.330410, 34.493881, 25.119402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769417, 35.258244, 25.120344>,  <31.830564, 34.663483, 24.659966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769417, 35.258244, 25.120344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580008, 34.975327, 25.330299>,  <31.466362, 34.805576, 25.456272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580008, 34.975327, 25.330299>,  <31.769417, 35.258244, 25.120344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580008, 34.975327, 25.330299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509619, 0.266038, 0.818237,
		-0.718377, 0.654947, 0.234477,
		-0.473522, -0.707296, 0.524889,
		31.437950, 34.763138, 25.487766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252289, 35.585243, 25.692539>,  <31.769417, 35.258244, 25.120344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252289, 35.585243, 25.692539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376211, 35.214699, 25.778210>,  <31.450565, 34.992371, 25.829613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376211, 35.214699, 25.778210>,  <31.252289, 35.585243, 25.692539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376211, 35.214699, 25.778210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518882, 0.353485, 0.778337,
		-0.796732, -0.130000, 0.590185,
		0.309805, -0.926363, 0.214178,
		31.469152, 34.936790, 25.842463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213858, 35.593578, 26.382511>,  <31.252289, 35.585243, 25.692539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213858, 35.593578, 26.382511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456045, 35.286831, 26.297361>,  <31.601357, 35.102783, 26.246271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.456045, 35.286831, 26.297361>,  <31.213858, 35.593578, 26.382511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456045, 35.286831, 26.297361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657632, 0.331424, 0.676519,
		-0.448251, -0.549605, 0.704986,
		0.605468, -0.766872, -0.212877,
		31.637686, 35.056770, 26.233498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355976, 35.199482, 27.020697>,  <31.213858, 35.593578, 26.382511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355976, 35.199482, 27.020697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666813, 35.113365, 26.784128>,  <31.853315, 35.061695, 26.642187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666813, 35.113365, 26.784128>,  <31.355976, 35.199482, 27.020697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666813, 35.113365, 26.784128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629339, 0.254053, 0.734432,
		-0.007866, -0.942924, 0.332914,
		0.777091, -0.215293, -0.591421,
		31.899940, 35.048779, 26.606703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699997, 34.815029, 27.432922>,  <31.355976, 35.199482, 27.020697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699997, 34.815029, 27.432922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952179, 34.916233, 27.139387>,  <32.103489, 34.976955, 26.963266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.952179, 34.916233, 27.139387>,  <31.699997, 34.815029, 27.432922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.952179, 34.916233, 27.139387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727346, 0.137628, 0.672328,
		0.271100, -0.957625, -0.097255,
		0.630454, 0.253006, -0.733836,
		32.141315, 34.992134, 26.919237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317883, 34.480000, 27.593021>,  <31.699997, 34.815029, 27.432922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317883, 34.480000, 27.593021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433826, 34.764194, 27.336525>,  <32.503395, 34.934711, 27.182627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433826, 34.764194, 27.336525>,  <32.317883, 34.480000, 27.593021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433826, 34.764194, 27.336525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752667, 0.244625, 0.611269,
		0.591162, -0.659826, -0.463851,
		0.289862, 0.710484, -0.641243,
		32.520786, 34.977341, 27.144152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.037479, 34.319031, 27.448305>,  <32.317883, 34.480000, 27.593021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.037479, 34.319031, 27.448305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980167, 34.711655, 27.397694>,  <32.945782, 34.947227, 27.367327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980167, 34.711655, 27.397694>,  <33.037479, 34.319031, 27.448305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980167, 34.711655, 27.397694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866036, 0.186228, 0.464005,
		0.479012, -0.043098, -0.876750,
		-0.143277, 0.981561, -0.126530,
		32.937183, 35.006123, 27.359735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699654, 34.589912, 27.658365>,  <33.037479, 34.319031, 27.448305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699654, 34.589912, 27.658365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471550, 34.913338, 27.600355>,  <33.334686, 35.107391, 27.565550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471550, 34.913338, 27.600355>,  <33.699654, 34.589912, 27.658365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471550, 34.913338, 27.600355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657591, 0.555136, 0.509311,
		0.492317, 0.195073, -0.848275,
		-0.570261, 0.808561, -0.145024,
		33.300472, 35.155907, 27.556849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141369, 35.136616, 27.471289>,  <33.699654, 34.589912, 27.658365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141369, 35.136616, 27.471289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824314, 35.331657, 27.617699>,  <33.634083, 35.448681, 27.705545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824314, 35.331657, 27.617699>,  <34.141369, 35.136616, 27.471289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824314, 35.331657, 27.617699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600489, 0.520380, 0.607139,
		0.105569, 0.701034, -0.705271,
		-0.792634, 0.487602, 0.366027,
		33.586525, 35.477940, 27.727507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408642, 35.720352, 27.561794>,  <34.141369, 35.136616, 27.471289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408642, 35.720352, 27.561794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083633, 35.737949, 27.794300>,  <33.888626, 35.748508, 27.933804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083633, 35.737949, 27.794300>,  <34.408642, 35.720352, 27.561794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083633, 35.737949, 27.794300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493377, 0.582966, 0.645546,
		-0.310457, 0.811304, -0.495381,
		-0.812525, 0.043995, 0.581264,
		33.839874, 35.751148, 27.968679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321869, 36.384033, 27.710157>,  <34.408642, 35.720352, 27.561794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321869, 36.384033, 27.710157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137600, 36.188938, 28.006777>,  <34.027039, 36.071880, 28.184748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.137600, 36.188938, 28.006777>,  <34.321869, 36.384033, 27.710157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137600, 36.188938, 28.006777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402967, 0.629479, 0.664360,
		-0.790822, 0.604871, -0.093441,
		-0.460671, -0.487737, 0.741549,
		33.999397, 36.042618, 28.229242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057709, 36.992867, 28.157043>,  <34.321869, 36.384033, 27.710157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057709, 36.992867, 28.157043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097061, 36.650135, 28.359495>,  <34.120674, 36.444496, 28.480967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097061, 36.650135, 28.359495>,  <34.057709, 36.992867, 28.157043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097061, 36.650135, 28.359495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442078, 0.493287, 0.749157,
		-0.891565, 0.150042, 0.427317,
		0.098385, -0.856829, 0.506127,
		34.126575, 36.393085, 28.511333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928001, 37.155888, 28.867058>,  <34.057709, 36.992867, 28.157043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928001, 37.155888, 28.867058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169399, 36.837769, 28.844099>,  <34.314240, 36.646896, 28.830324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169399, 36.837769, 28.844099>,  <33.928001, 37.155888, 28.867058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169399, 36.837769, 28.844099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590324, 0.397246, 0.702647,
		-0.536013, -0.457927, 0.709220,
		0.603496, -0.795298, -0.057397,
		34.350449, 36.599178, 28.826880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593575, 37.317757, 29.497223>,  <33.928001, 37.155888, 28.867058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593575, 37.317757, 29.497223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422249, 37.674999, 29.552237>,  <33.319454, 37.889343, 29.585245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.422249, 37.674999, 29.552237>,  <33.593575, 37.317757, 29.497223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422249, 37.674999, 29.552237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768030, -0.279604, -0.576152,
		-0.476110, -0.352400, 0.805688,
		-0.428310, 0.893104, 0.137532,
		33.293755, 37.942932, 29.593496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810196, 37.270229, 29.521467>,  <33.593575, 37.317757, 29.497223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810196, 37.270229, 29.521467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891258, 37.648808, 29.420935>,  <32.939896, 37.875954, 29.360615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.891258, 37.648808, 29.420935>,  <32.810196, 37.270229, 29.521467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.891258, 37.648808, 29.420935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712595, -0.033506, -0.700775,
		-0.671667, 0.321116, 0.667643,
		0.202660, 0.946447, -0.251331,
		32.952057, 37.932743, 29.345535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144234, 37.604408, 29.618507>,  <32.810196, 37.270229, 29.521467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144234, 37.604408, 29.618507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366684, 37.839630, 29.383589>,  <32.500153, 37.980762, 29.242638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366684, 37.839630, 29.383589>,  <32.144234, 37.604408, 29.618507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366684, 37.839630, 29.383589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709855, -0.031424, -0.703647,
		-0.432238, 0.808210, 0.399958,
		0.556126, 0.588055, -0.587294,
		32.533524, 38.016048, 29.207401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713223, 38.229729, 29.466694>,  <32.144234, 37.604408, 29.618507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713223, 38.229729, 29.466694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978830, 38.204010, 29.168716>,  <32.138195, 38.188580, 28.989929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978830, 38.204010, 29.168716>,  <31.713223, 38.229729, 29.466694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978830, 38.204010, 29.168716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740447, 0.082027, -0.667091,
		0.104000, 0.994554, 0.006856,
		0.664020, -0.064301, -0.744945,
		32.178036, 38.184719, 28.945232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478428, 38.665272, 28.792646>,  <31.713223, 38.229729, 29.466694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478428, 38.665272, 28.792646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752193, 38.404713, 28.661648>,  <31.916452, 38.248375, 28.583048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.752193, 38.404713, 28.661648>,  <31.478428, 38.665272, 28.792646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752193, 38.404713, 28.661648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526299, -0.130542, -0.840219,
		0.504568, 0.747418, -0.432176,
		0.684412, -0.651402, -0.327498,
		31.957518, 38.209293, 28.563398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622581, 38.894802, 28.123102>,  <31.478428, 38.665272, 28.792646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622581, 38.894802, 28.123102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730759, 38.509712, 28.121271>,  <31.795664, 38.278660, 28.120173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730759, 38.509712, 28.121271>,  <31.622581, 38.894802, 28.123102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730759, 38.509712, 28.121271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414849, -0.112241, -0.902941,
		0.868770, 0.246092, -0.429741,
		0.270441, -0.962726, -0.004579,
		31.811892, 38.220894, 28.119898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.770987, 38.682568, 27.448734>,  <31.622581, 38.894802, 28.123102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.770987, 38.682568, 27.448734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728645, 38.333355, 27.639149>,  <31.703241, 38.123829, 27.753397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.728645, 38.333355, 27.639149>,  <31.770987, 38.682568, 27.448734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.728645, 38.333355, 27.639149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494606, -0.369079, -0.786858,
		0.862647, -0.318742, -0.392738,
		-0.105853, -0.873032, 0.476037,
		31.696890, 38.071445, 27.781960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939312, 38.131142, 26.978651>,  <31.770987, 38.682568, 27.448734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939312, 38.131142, 26.978651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713825, 37.947487, 27.253290>,  <31.578533, 37.837296, 27.418074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713825, 37.947487, 27.253290>,  <31.939312, 38.131142, 26.978651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713825, 37.947487, 27.253290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436134, -0.540471, -0.719498,
		0.701435, -0.705042, 0.104427,
		-0.563716, -0.459137, 0.686598,
		31.544710, 37.809746, 27.459270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847359, 37.407829, 26.751053>,  <31.939312, 38.131142, 26.978651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847359, 37.407829, 26.751053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537838, 37.463749, 26.998175>,  <31.352125, 37.497303, 27.146448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537838, 37.463749, 26.998175>,  <31.847359, 37.407829, 26.751053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537838, 37.463749, 26.998175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566428, -0.589296, -0.576099,
		0.283530, -0.795730, 0.535186,
		-0.773803, 0.139803, 0.617807,
		31.305696, 37.505692, 27.183517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559292, 36.763870, 26.809618>,  <31.847359, 37.407829, 26.751053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559292, 36.763870, 26.809618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267258, 37.012451, 26.923298>,  <31.092037, 37.161602, 26.991507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.267258, 37.012451, 26.923298>,  <31.559292, 36.763870, 26.809618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267258, 37.012451, 26.923298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582378, -0.348252, -0.734545,
		-0.357516, -0.701790, 0.616176,
		-0.730081, 0.621459, 0.284201,
		31.048233, 37.198887, 27.008558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911890, 36.419437, 26.860125>,  <31.559292, 36.763870, 26.809618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911890, 36.419437, 26.860125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791273, 36.798256, 26.815996>,  <30.718903, 37.025547, 26.789520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791273, 36.798256, 26.815996>,  <30.911890, 36.419437, 26.860125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791273, 36.798256, 26.815996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777733, -0.311246, -0.546129,
		-0.551547, -0.078881, 0.830405,
		-0.301540, 0.947050, -0.110319,
		30.700811, 37.082371, 26.782900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.244762, 36.327686, 27.009314>,  <30.911890, 36.419437, 26.860125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.244762, 36.327686, 27.009314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263620, 36.690575, 26.842113>,  <30.274935, 36.908310, 26.741793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263620, 36.690575, 26.842113>,  <30.244762, 36.327686, 27.009314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263620, 36.690575, 26.842113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894782, -0.147653, -0.421382,
		-0.444007, 0.393885, 0.804806,
		0.047144, 0.907223, -0.418000,
		30.277763, 36.962742, 26.716713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637724, 36.591763, 27.031244>,  <30.244762, 36.327686, 27.009314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637724, 36.591763, 27.031244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757589, 36.841805, 26.742952>,  <29.829508, 36.991829, 26.569977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.757589, 36.841805, 26.742952>,  <29.637724, 36.591763, 27.031244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757589, 36.841805, 26.742952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814702, -0.225440, -0.534263,
		-0.496451, 0.747277, 0.441716,
		0.299662, 0.625102, -0.720728,
		29.847488, 37.029335, 26.526733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004272, 36.975727, 26.852684>,  <29.637724, 36.591763, 27.031244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004272, 36.975727, 26.852684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263361, 37.044384, 26.555767>,  <29.418814, 37.085579, 26.377617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263361, 37.044384, 26.555767>,  <29.004272, 36.975727, 26.852684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263361, 37.044384, 26.555767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696212, -0.262348, -0.668178,
		-0.309428, 0.949585, -0.050428,
		0.647721, 0.171645, -0.742290,
		29.457678, 37.095879, 26.333080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730783, 37.425339, 26.309116>,  <29.004272, 36.975727, 26.852684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730783, 37.425339, 26.309116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005991, 37.189255, 26.140219>,  <29.171116, 37.047604, 26.038881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005991, 37.189255, 26.140219>,  <28.730783, 37.425339, 26.309116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005991, 37.189255, 26.140219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630639, -0.198379, -0.750293,
		0.359065, 0.782497, -0.508696,
		0.688017, -0.590207, -0.422242,
		29.212397, 37.012192, 26.013546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478745, 37.407825, 25.632200>,  <28.730783, 37.425339, 26.309116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478745, 37.407825, 25.632200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743406, 37.108387, 25.649246>,  <28.902203, 36.928722, 25.659473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.743406, 37.108387, 25.649246>,  <28.478745, 37.407825, 25.632200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743406, 37.108387, 25.649246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482374, -0.468482, -0.740162,
		0.574048, 0.469175, -0.671077,
		0.661653, -0.748598, 0.042613,
		28.941902, 36.883808, 25.662031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891321, 37.391670, 25.095835>,  <28.478745, 37.407825, 25.632200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891321, 37.391670, 25.095835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903690, 37.014397, 25.228165>,  <28.911112, 36.788033, 25.307562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903690, 37.014397, 25.228165>,  <28.891321, 37.391670, 25.095835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903690, 37.014397, 25.228165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465834, -0.306437, -0.830117,
		0.884332, -0.128437, -0.448844,
		0.030925, -0.943186, 0.330823,
		28.912968, 36.731441, 25.327412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.190689, 37.037697, 24.573860>,  <28.891321, 37.391670, 25.095835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.190689, 37.037697, 24.573860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052217, 36.716114, 24.767279>,  <28.969133, 36.523167, 24.883329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052217, 36.716114, 24.767279>,  <29.190689, 37.037697, 24.573860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052217, 36.716114, 24.767279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146727, -0.462676, -0.874301,
		0.926623, -0.373615, 0.042207,
		-0.346180, -0.803955, 0.483546,
		28.948364, 36.474926, 24.912342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.271259, 36.381222, 24.095663>,  <29.190689, 37.037697, 24.573860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.271259, 36.381222, 24.095663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004959, 36.264191, 24.370232>,  <28.845179, 36.193974, 24.534973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.004959, 36.264191, 24.370232>,  <29.271259, 36.381222, 24.095663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.004959, 36.264191, 24.370232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413045, -0.621625, -0.665564,
		0.621428, -0.726622, 0.292998,
		-0.665749, -0.292579, 0.686423,
		28.805235, 36.176418, 24.576159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285156, 35.691448, 23.924179>,  <29.271259, 36.381222, 24.095663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285156, 35.691448, 23.924179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952864, 35.752285, 24.138378>,  <28.753489, 35.788788, 24.266897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.952864, 35.752285, 24.138378>,  <29.285156, 35.691448, 23.924179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.952864, 35.752285, 24.138378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547468, -0.397442, -0.736423,
		0.100827, -0.904936, 0.413431,
		-0.830730, 0.152089, 0.535496,
		28.703644, 35.797913, 24.299026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.825518, 35.026890, 24.097849>,  <29.285156, 35.691448, 23.924179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.825518, 35.026890, 24.097849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589285, 35.349655, 24.101803>,  <28.447546, 35.543316, 24.104176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.589285, 35.349655, 24.101803>,  <28.825518, 35.026890, 24.097849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.589285, 35.349655, 24.101803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575757, -0.412748, -0.705793,
		-0.565438, -0.422518, 0.708350,
		-0.590580, 0.806919, 0.009884,
		28.412111, 35.591732, 24.104769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095860, 34.805752, 24.062641>,  <28.825518, 35.026890, 24.097849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095860, 34.805752, 24.062641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137039, 35.173222, 23.910093>,  <28.161747, 35.393703, 23.818565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137039, 35.173222, 23.910093>,  <28.095860, 34.805752, 24.062641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137039, 35.173222, 23.910093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456576, -0.296986, -0.838652,
		-0.883708, 0.260462, 0.388870,
		0.102948, 0.918673, -0.381369,
		28.167923, 35.448822, 23.795683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447174, 35.049294, 23.862417>,  <28.095860, 34.805752, 24.062641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447174, 35.049294, 23.862417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756395, 35.203556, 23.660959>,  <27.941927, 35.296116, 23.540085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756395, 35.203556, 23.660959>,  <27.447174, 35.049294, 23.862417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756395, 35.203556, 23.660959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411311, -0.299695, -0.860817,
		-0.482922, 0.872611, -0.073053,
		0.773052, 0.385660, -0.503644,
		27.988312, 35.319256, 23.509867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251837, 35.516895, 23.298014>,  <27.447174, 35.049294, 23.862417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251837, 35.516895, 23.298014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600525, 35.380947, 23.156824>,  <27.809738, 35.299377, 23.072111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600525, 35.380947, 23.156824>,  <27.251837, 35.516895, 23.298014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600525, 35.380947, 23.156824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434693, -0.203915, -0.877189,
		0.226157, 0.918098, -0.325498,
		0.871719, -0.339874, -0.352974,
		27.862041, 35.278984, 23.050932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451443, 35.933056, 22.720297>,  <27.251837, 35.516895, 23.298014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451443, 35.933056, 22.720297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669945, 35.601482, 22.672169>,  <27.801046, 35.402538, 22.643291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.669945, 35.601482, 22.672169>,  <27.451443, 35.933056, 22.720297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669945, 35.601482, 22.672169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235077, -0.013842, -0.971878,
		0.803956, 0.559177, -0.202424,
		0.546254, -0.828933, -0.120321,
		27.833820, 35.352802, 22.636072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867533, 36.063343, 22.124088>,  <27.451443, 35.933056, 22.720297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867533, 36.063343, 22.124088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868294, 35.664005, 22.147072>,  <27.868750, 35.424404, 22.160862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868294, 35.664005, 22.147072>,  <27.867533, 36.063343, 22.124088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868294, 35.664005, 22.147072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117767, -0.057285, -0.991388,
		0.993039, -0.004882, -0.117681,
		0.001902, -0.998346, 0.057461,
		27.868864, 35.364502, 22.164310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.390127, 35.749123, 21.623175>,  <27.867533, 36.063343, 22.124088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.390127, 35.749123, 21.623175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129925, 35.455795, 21.702255>,  <27.973804, 35.279800, 21.749704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129925, 35.455795, 21.702255>,  <28.390127, 35.749123, 21.623175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129925, 35.455795, 21.702255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074199, -0.197700, -0.977450,
		0.755869, -0.650505, 0.074193,
		-0.650504, -0.733320, 0.197703,
		27.934772, 35.235798, 21.761566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396835, 35.437557, 21.049725>,  <28.390127, 35.749123, 21.623175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396835, 35.437557, 21.049725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091095, 35.259415, 21.236240>,  <27.907650, 35.152531, 21.348150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091095, 35.259415, 21.236240>,  <28.396835, 35.437557, 21.049725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091095, 35.259415, 21.236240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416730, -0.210629, -0.884291,
		0.492038, -0.870226, -0.024599,
		-0.764352, -0.445356, 0.466287,
		27.861790, 35.125809, 21.376127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276423, 34.708755, 20.716658>,  <28.396835, 35.437557, 21.049725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276423, 34.708755, 20.716658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932150, 34.826229, 20.883020>,  <27.725586, 34.896713, 20.982838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.932150, 34.826229, 20.883020>,  <28.276423, 34.708755, 20.716658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932150, 34.826229, 20.883020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440779, -0.020936, -0.897372,
		-0.254835, -0.955673, 0.147469,
		-0.860682, 0.293683, 0.415905,
		27.673944, 34.914333, 21.007792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839096, 34.182491, 20.614237>,  <28.276423, 34.708755, 20.716658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839096, 34.182491, 20.614237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566097, 34.467163, 20.680820>,  <27.402298, 34.637966, 20.720770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.566097, 34.467163, 20.680820>,  <27.839096, 34.182491, 20.614237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.566097, 34.467163, 20.680820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432350, -0.209488, -0.877033,
		-0.589299, -0.670539, 0.450671,
		-0.682495, 0.711682, 0.166457,
		27.361349, 34.680668, 20.730757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237827, 33.897266, 20.270679>,  <27.839096, 34.182491, 20.614237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237827, 33.897266, 20.270679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181566, 34.288464, 20.332321>,  <27.147810, 34.523182, 20.369307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.181566, 34.288464, 20.332321>,  <27.237827, 33.897266, 20.270679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.181566, 34.288464, 20.332321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521850, 0.059042, -0.850992,
		-0.841361, -0.200116, 0.502060,
		-0.140655, 0.977992, 0.154106,
		27.139370, 34.581860, 20.378553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504141, 34.066208, 20.249784>,  <27.237827, 33.897266, 20.270679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504141, 34.066208, 20.249784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700998, 34.406185, 20.174541>,  <26.819113, 34.610172, 20.129396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700998, 34.406185, 20.174541>,  <26.504141, 34.066208, 20.249784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700998, 34.406185, 20.174541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447387, 0.061587, -0.892217,
		-0.746752, 0.523257, 0.410565,
		0.492145, 0.849946, -0.188108,
		26.848642, 34.661171, 20.118109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033115, 34.545635, 20.053185>,  <26.504141, 34.066208, 20.249784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033115, 34.545635, 20.053185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363556, 34.711056, 19.900064>,  <26.561821, 34.810307, 19.808193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.363556, 34.711056, 19.900064>,  <26.033115, 34.545635, 20.053185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363556, 34.711056, 19.900064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424351, 0.009561, -0.905447,
		-0.370785, 0.910432, 0.183388,
		0.826102, 0.413547, -0.382798,
		26.611387, 34.835121, 19.785225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.782610, 35.019135, 19.588379>,  <26.033115, 34.545635, 20.053185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.782610, 35.019135, 19.588379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165972, 34.953178, 19.495190>,  <26.395988, 34.913605, 19.439276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.165972, 34.953178, 19.495190>,  <25.782610, 35.019135, 19.588379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.165972, 34.953178, 19.495190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227426, 0.052010, -0.972405,
		0.172455, 0.984940, 0.012347,
		0.958403, -0.164888, -0.232971,
		26.453493, 34.903713, 19.425299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.921349, 35.557480, 19.187971>,  <25.782610, 35.019135, 19.588379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.921349, 35.557480, 19.187971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184513, 35.266911, 19.108511>,  <26.342411, 35.092567, 19.060835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184513, 35.266911, 19.108511>,  <25.921349, 35.557480, 19.187971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184513, 35.266911, 19.108511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171329, 0.112487, -0.978771,
		0.733349, 0.677978, -0.050451,
		0.657910, -0.726425, -0.198650,
		26.381886, 35.048985, 19.048916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360949, 35.865089, 18.697676>,  <25.921349, 35.557480, 19.187971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360949, 35.865089, 18.697676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382504, 35.468689, 18.648666>,  <26.395435, 35.230850, 18.619261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.382504, 35.468689, 18.648666>,  <26.360949, 35.865089, 18.697676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382504, 35.468689, 18.648666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231802, 0.106934, -0.966868,
		0.971269, 0.080501, -0.223954,
		0.053886, -0.991002, -0.122522,
		26.398668, 35.171387, 18.611910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.455059, 35.846104, 18.043886>,  <26.360949, 35.865089, 18.697676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.455059, 35.846104, 18.043886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386013, 35.455887, 18.098331>,  <26.344585, 35.221756, 18.130999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386013, 35.455887, 18.098331>,  <26.455059, 35.846104, 18.043886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386013, 35.455887, 18.098331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364840, -0.065036, -0.928796,
		0.914929, -0.209985, -0.344690,
		-0.172616, -0.975539, 0.136115,
		26.334229, 35.163223, 18.139166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692141, 35.522991, 17.457336>,  <26.455059, 35.846104, 18.043886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692141, 35.522991, 17.457336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429369, 35.266224, 17.615515>,  <26.271706, 35.112164, 17.710423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429369, 35.266224, 17.615515>,  <26.692141, 35.522991, 17.457336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429369, 35.266224, 17.615515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483531, -0.043723, -0.874234,
		0.578481, -0.765521, -0.281667,
		-0.656930, -0.641923, 0.395447,
		26.232290, 35.073647, 17.734148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074564, 35.889244, 17.383402>,  <26.692141, 35.522991, 17.457336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074564, 35.889244, 17.383402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740919, 36.071404, 17.258902>,  <25.540733, 36.180698, 17.184202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.740919, 36.071404, 17.258902>,  <26.074564, 35.889244, 17.383402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.740919, 36.071404, 17.258902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000993, 0.565505, 0.824744,
		0.551597, 0.687618, -0.472146,
		-0.834110, 0.455395, -0.311248,
		25.490686, 36.208023, 17.165527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157894, 36.543007, 17.462011>,  <26.074564, 35.889244, 17.383402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157894, 36.543007, 17.462011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758898, 36.549355, 17.434427>,  <25.519499, 36.553162, 17.417877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758898, 36.549355, 17.434427>,  <26.157894, 36.543007, 17.462011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.758898, 36.549355, 17.434427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051555, 0.504582, 0.861823,
		0.048474, 0.863218, -0.502499,
		-0.997493, 0.015869, -0.068962,
		25.459650, 36.554115, 17.413738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.956409, 37.184238, 17.429184>,  <26.157894, 36.543007, 17.462011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.956409, 37.184238, 17.429184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613459, 37.029850, 17.565378>,  <25.407688, 36.937218, 17.647095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.613459, 37.029850, 17.565378>,  <25.956409, 37.184238, 17.429184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.613459, 37.029850, 17.565378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061179, 0.580421, 0.812015,
		-0.511040, 0.717033, -0.474026,
		-0.857377, -0.385972, 0.340486,
		25.356245, 36.914059, 17.667524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492889, 37.664368, 17.565840>,  <25.956409, 37.184238, 17.429184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492889, 37.664368, 17.565840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361746, 37.372036, 17.805305>,  <25.283060, 37.196636, 17.948984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361746, 37.372036, 17.805305>,  <25.492889, 37.664368, 17.565840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361746, 37.372036, 17.805305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070628, 0.612956, 0.786954,
		-0.942083, 0.300293, -0.149347,
		-0.327860, -0.730827, 0.598664,
		25.263388, 37.152786, 17.984905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.055450, 38.019047, 18.037878>,  <25.492889, 37.664368, 17.565840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.055450, 38.019047, 18.037878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144600, 37.670422, 18.212555>,  <25.198090, 37.461246, 18.317362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144600, 37.670422, 18.212555>,  <25.055450, 38.019047, 18.037878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144600, 37.670422, 18.212555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008651, 0.449712, 0.893132,
		-0.974809, -0.195278, 0.107769,
		0.222874, -0.871565, 0.436694,
		25.211462, 37.408951, 18.343563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.658459, 38.090942, 18.622484>,  <25.055450, 38.019047, 18.037878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.658459, 38.090942, 18.622484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924213, 37.800987, 18.695288>,  <25.083666, 37.627014, 18.738970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924213, 37.800987, 18.695288>,  <24.658459, 38.090942, 18.622484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924213, 37.800987, 18.695288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131739, 0.353295, 0.926190,
		-0.735688, -0.591370, 0.330220,
		0.664386, -0.724890, 0.182008,
		25.123529, 37.583519, 18.749889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.515051, 37.724998, 19.315216>,  <24.658459, 38.090942, 18.622484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.515051, 37.724998, 19.315216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.901230, 37.675686, 19.223381>,  <25.132938, 37.646099, 19.168280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.901230, 37.675686, 19.223381>,  <24.515051, 37.724998, 19.315216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.901230, 37.675686, 19.223381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254403, 0.254964, 0.932884,
		-0.056472, -0.959059, 0.277518,
		0.965448, -0.123283, -0.229589,
		25.190865, 37.638702, 19.154505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.758308, 37.456390, 19.923666>,  <24.515051, 37.724998, 19.315216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.758308, 37.456390, 19.923666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089228, 37.600204, 19.751009>,  <25.287779, 37.686493, 19.647415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089228, 37.600204, 19.751009>,  <24.758308, 37.456390, 19.923666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.089228, 37.600204, 19.751009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366594, 0.236686, 0.899771,
		0.425662, -0.902616, 0.064006,
		0.827297, 0.359534, -0.431642,
		25.337418, 37.708065, 19.621517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.237869, 37.163315, 20.333738>,  <24.758308, 37.456390, 19.923666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.237869, 37.163315, 20.333738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398258, 37.484516, 20.157373>,  <25.494492, 37.677238, 20.051554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.398258, 37.484516, 20.157373>,  <25.237869, 37.163315, 20.333738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.398258, 37.484516, 20.157373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501665, 0.210244, 0.839124,
		0.766521, -0.557655, -0.318539,
		0.400971, 0.803006, -0.440912,
		25.518549, 37.725418, 20.025099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828829, 37.234840, 20.710598>,  <25.237869, 37.163315, 20.333738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828829, 37.234840, 20.710598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826797, 37.570793, 20.493498>,  <25.825579, 37.772366, 20.363237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.826797, 37.570793, 20.493498>,  <25.828829, 37.234840, 20.710598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.826797, 37.570793, 20.493498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504474, 0.470780, 0.723790,
		0.863412, -0.270129, -0.426086,
		-0.005076, 0.839879, -0.542750,
		25.825275, 37.822758, 20.330673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.504650, 37.420437, 20.668833>,  <25.828829, 37.234840, 20.710598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.504650, 37.420437, 20.668833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288177, 37.755291, 20.637022>,  <26.158295, 37.956203, 20.617935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288177, 37.755291, 20.637022>,  <26.504650, 37.420437, 20.668833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288177, 37.755291, 20.637022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540094, 0.418520, 0.730163,
		0.644531, 0.352198, -0.678629,
		-0.541182, 0.837136, -0.079529,
		26.125822, 38.006432, 20.613163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.975597, 37.910130, 20.550625>,  <26.504650, 37.420437, 20.668833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.975597, 37.910130, 20.550625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645153, 38.096821, 20.676929>,  <26.446886, 38.208836, 20.752712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645153, 38.096821, 20.676929>,  <26.975597, 37.910130, 20.550625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645153, 38.096821, 20.676929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513960, 0.394304, 0.761820,
		0.231059, 0.791635, -0.565619,
		-0.826110, 0.466731, 0.315761,
		26.397320, 38.236839, 20.771658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258753, 38.517185, 20.742111>,  <26.975597, 37.910130, 20.550625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258753, 38.517185, 20.742111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909403, 38.513691, 20.936901>,  <26.699793, 38.511593, 21.053774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.909403, 38.513691, 20.936901>,  <27.258753, 38.517185, 20.742111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909403, 38.513691, 20.936901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438935, 0.419200, 0.794737,
		-0.211081, 0.907852, -0.362284,
		-0.873373, -0.008734, 0.486974,
		26.647390, 38.511070, 21.082993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.193247, 39.233421, 21.085608>,  <27.258753, 38.517185, 20.742111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.193247, 39.233421, 21.085608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940950, 38.996189, 21.285774>,  <26.789572, 38.853848, 21.405874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940950, 38.996189, 21.285774>,  <27.193247, 39.233421, 21.085608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940950, 38.996189, 21.285774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491563, 0.193613, 0.849046,
		-0.600443, 0.781515, 0.169419,
		-0.630741, -0.593084, 0.500417,
		26.751728, 38.818264, 21.435900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874435, 39.602882, 21.745584>,  <27.193247, 39.233421, 21.085608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874435, 39.602882, 21.745584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839922, 39.216110, 21.841587>,  <26.819214, 38.984047, 21.899189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839922, 39.216110, 21.841587>,  <26.874435, 39.602882, 21.745584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839922, 39.216110, 21.841587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370389, 0.192506, 0.908710,
		-0.924861, 0.167304, 0.341529,
		-0.086285, -0.966929, 0.240009,
		26.814037, 38.926033, 21.913589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629309, 39.589909, 22.430218>,  <26.874435, 39.602882, 21.745584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629309, 39.589909, 22.430218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797045, 39.228664, 22.393259>,  <26.897686, 39.011917, 22.371084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.797045, 39.228664, 22.393259>,  <26.629309, 39.589909, 22.430218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797045, 39.228664, 22.393259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384388, 0.084431, 0.919302,
		-0.822435, -0.421016, 0.382552,
		0.419340, -0.903115, -0.092395,
		26.922848, 38.957729, 22.365541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773544, 39.352592, 23.146269>,  <26.629309, 39.589909, 22.430218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773544, 39.352592, 23.146269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978745, 39.069427, 22.952074>,  <27.101864, 38.899529, 22.835558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978745, 39.069427, 22.952074>,  <26.773544, 39.352592, 23.146269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978745, 39.069427, 22.952074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530847, -0.182820, 0.827513,
		-0.674561, -0.682231, 0.282006,
		0.512999, -0.707910, -0.485485,
		27.132645, 38.857056, 22.806429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.719650, 38.810940, 23.589960>,  <26.773544, 39.352592, 23.146269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.719650, 38.810940, 23.589960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032701, 38.745792, 23.349638>,  <27.220531, 38.706703, 23.205444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032701, 38.745792, 23.349638>,  <26.719650, 38.810940, 23.589960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032701, 38.745792, 23.349638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590452, -0.111431, 0.799344,
		-0.197135, -0.980335, 0.008955,
		0.782627, -0.162866, -0.600807,
		27.267490, 38.696934, 23.169395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115860, 38.250690, 23.841286>,  <26.719650, 38.810940, 23.589960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115860, 38.250690, 23.841286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386843, 38.455868, 23.630405>,  <27.549433, 38.578976, 23.503878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.386843, 38.455868, 23.630405>,  <27.115860, 38.250690, 23.841286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386843, 38.455868, 23.630405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613352, 0.001694, 0.789808,
		0.406021, -0.858420, -0.313468,
		0.677456, 0.512944, -0.527202,
		27.590080, 38.609753, 23.472244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835676, 37.911221, 23.912169>,  <27.115860, 38.250690, 23.841286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835676, 37.911221, 23.912169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918900, 38.274708, 23.767426>,  <27.968834, 38.492802, 23.680580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.918900, 38.274708, 23.767426>,  <27.835676, 37.911221, 23.912169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.918900, 38.274708, 23.767426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601473, 0.172873, 0.779965,
		0.771324, -0.379927, -0.510602,
		0.208061, 0.908719, -0.361857,
		27.981318, 38.547325, 23.658869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506325, 37.900166, 24.004450>,  <27.835676, 37.911221, 23.912169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506325, 37.900166, 24.004450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422750, 38.287109, 23.947102>,  <28.372606, 38.519276, 23.912693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.422750, 38.287109, 23.947102>,  <28.506325, 37.900166, 24.004450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.422750, 38.287109, 23.947102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666890, 0.248174, 0.702614,
		0.715264, 0.051189, -0.696977,
		-0.208938, 0.967362, -0.143372,
		28.360069, 38.577316, 23.904089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144196, 38.167526, 23.922329>,  <28.506325, 37.900166, 24.004450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144196, 38.167526, 23.922329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911507, 38.474426, 24.030348>,  <28.771893, 38.658566, 24.095160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911507, 38.474426, 24.030348>,  <29.144196, 38.167526, 23.922329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911507, 38.474426, 24.030348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715386, 0.324621, 0.618744,
		0.387068, 0.553126, -0.737719,
		-0.581723, 0.767250, 0.270048,
		28.736990, 38.704601, 24.111362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534204, 38.816734, 23.841257>,  <29.144196, 38.167526, 23.922329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534204, 38.816734, 23.841257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245419, 38.872700, 24.112312>,  <29.072147, 38.906281, 24.274944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245419, 38.872700, 24.112312>,  <29.534204, 38.816734, 23.841257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245419, 38.872700, 24.112312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691589, 0.176718, 0.700340,
		-0.021762, 0.974266, -0.224348,
		-0.721964, 0.139916, 0.677637,
		29.028830, 38.914673, 24.315603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777292, 39.300224, 24.339544>,  <29.534204, 38.816734, 23.841257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777292, 39.300224, 24.339544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470486, 39.171539, 24.561604>,  <29.286402, 39.094330, 24.694839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.470486, 39.171539, 24.561604>,  <29.777292, 39.300224, 24.339544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470486, 39.171539, 24.561604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487968, 0.269327, 0.830271,
		-0.416622, 0.907726, -0.049595,
		-0.767016, -0.321708, 0.555149,
		29.240381, 39.075027, 24.728148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832067, 39.808773, 24.783913>,  <29.777292, 39.300224, 24.339544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832067, 39.808773, 24.783913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622066, 39.520199, 24.964533>,  <29.496065, 39.347054, 25.072905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622066, 39.520199, 24.964533>,  <29.832067, 39.808773, 24.783913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622066, 39.520199, 24.964533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400679, 0.258575, 0.878974,
		-0.750885, 0.642392, 0.153312,
		-0.525003, -0.721437, 0.451553,
		29.464565, 39.303768, 25.099998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.489426, 40.127052, 25.374662>,  <29.832067, 39.808773, 24.783913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.489426, 40.127052, 25.374662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502111, 39.732079, 25.436588>,  <29.509724, 39.495094, 25.473743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502111, 39.732079, 25.436588>,  <29.489426, 40.127052, 25.374662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502111, 39.732079, 25.436588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457798, 0.152041, 0.875959,
		-0.888490, 0.043093, 0.456868,
		0.031715, -0.987434, 0.154815,
		29.511625, 39.435848, 25.483032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250092, 40.088490, 25.979490>,  <29.489426, 40.127052, 25.374662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250092, 40.088490, 25.979490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501043, 39.793724, 25.878813>,  <29.651613, 39.616863, 25.818407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501043, 39.793724, 25.878813>,  <29.250092, 40.088490, 25.979490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501043, 39.793724, 25.878813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557202, 0.199031, 0.806172,
		-0.543988, -0.646017, 0.535480,
		0.627378, -0.736918, -0.251692,
		29.689257, 39.572647, 25.803305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276932, 39.799610, 26.639725>,  <29.250092, 40.088490, 25.979490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276932, 39.799610, 26.639725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570221, 39.660439, 26.406031>,  <29.746195, 39.576935, 26.265814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570221, 39.660439, 26.406031>,  <29.276932, 39.799610, 26.639725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570221, 39.660439, 26.406031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672264, 0.241748, 0.699728,
		-0.102219, -0.905816, 0.411156,
		0.733221, -0.347931, -0.584235,
		29.790188, 39.556061, 26.230761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725216, 39.544628, 27.178480>,  <29.276932, 39.799610, 26.639725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725216, 39.544628, 27.178480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935713, 39.618664, 26.846502>,  <30.062012, 39.663086, 26.647316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935713, 39.618664, 26.846502>,  <29.725216, 39.544628, 27.178480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935713, 39.618664, 26.846502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765354, 0.322217, 0.557144,
		0.370543, -0.928396, 0.027907,
		0.526242, 0.185088, -0.829947,
		30.093586, 39.674191, 26.597519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.402113, 39.272533, 27.319235>,  <29.725216, 39.544628, 27.178480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.402113, 39.272533, 27.319235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439045, 39.544872, 27.028603>,  <30.461205, 39.708275, 26.854223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.439045, 39.544872, 27.028603>,  <30.402113, 39.272533, 27.319235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.439045, 39.544872, 27.028603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768290, 0.415468, 0.486947,
		0.633409, -0.603185, -0.484728,
		0.092330, 0.680848, -0.726582,
		30.466743, 39.749126, 26.810629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088202, 39.285370, 27.328051>,  <30.402113, 39.272533, 27.319235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088202, 39.285370, 27.328051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986666, 39.633331, 27.158894>,  <30.925743, 39.842106, 27.057400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986666, 39.633331, 27.158894>,  <31.088202, 39.285370, 27.328051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986666, 39.633331, 27.158894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742045, 0.455587, 0.491742,
		0.620430, -0.188981, -0.761152,
		-0.253841, 0.869900, -0.422892,
		30.910513, 39.894302, 27.032026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674290, 39.576897, 27.198946>,  <31.088202, 39.285370, 27.328051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674290, 39.576897, 27.198946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427214, 39.886158, 27.141399>,  <31.278967, 40.071712, 27.106873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427214, 39.886158, 27.141399>,  <31.674290, 39.576897, 27.198946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427214, 39.886158, 27.141399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740852, 0.633448, 0.223344,
		0.263809, 0.031375, -0.964064,
		-0.617692, 0.773149, -0.143865,
		31.241905, 40.118103, 27.098240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038380, 40.000629, 26.673937>,  <31.674290, 39.576897, 27.198946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038380, 40.000629, 26.673937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787670, 40.242176, 26.870913>,  <31.637245, 40.387104, 26.989098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.787670, 40.242176, 26.870913>,  <32.038380, 40.000629, 26.673937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787670, 40.242176, 26.870913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771202, 0.571077, 0.281281,
		-0.111362, 0.556068, -0.823642,
		-0.626775, 0.603870, 0.492437,
		31.599638, 40.423336, 27.018644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127735, 40.753563, 26.442234>,  <32.038380, 40.000629, 26.673937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127735, 40.753563, 26.442234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974195, 40.729984, 26.810839>,  <31.882072, 40.715836, 27.032001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.974195, 40.729984, 26.810839>,  <32.127735, 40.753563, 26.442234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974195, 40.729984, 26.810839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758986, 0.548257, 0.351218,
		-0.525929, 0.834230, -0.165709,
		-0.383848, -0.058945, 0.921513,
		31.859041, 40.712299, 27.087292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371475, 41.346947, 26.683664>,  <32.127735, 40.753563, 26.442234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371475, 41.346947, 26.683664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268620, 41.156174, 27.019857>,  <32.206905, 41.041710, 27.221573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.268620, 41.156174, 27.019857>,  <32.371475, 41.346947, 26.683664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268620, 41.156174, 27.019857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644970, 0.562976, 0.516790,
		-0.719647, 0.674975, 0.162844,
		-0.257143, -0.476935, 0.840482,
		32.191475, 41.013092, 27.272001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377724, 41.836014, 27.167576>,  <32.371475, 41.346947, 26.683664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377724, 41.836014, 27.167576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427006, 41.502254, 27.382463>,  <32.456573, 41.301998, 27.511396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427006, 41.502254, 27.382463>,  <32.377724, 41.836014, 27.167576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427006, 41.502254, 27.382463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564309, 0.504207, 0.653706,
		-0.816319, 0.222619, 0.532977,
		0.123203, -0.834396, 0.537220,
		32.463966, 41.251934, 27.543629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381996, 42.136326, 27.928432>,  <32.377724, 41.836014, 27.167576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381996, 42.136326, 27.928432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534054, 41.768047, 27.963770>,  <32.625286, 41.547081, 27.984972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534054, 41.768047, 27.963770>,  <32.381996, 42.136326, 27.928432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534054, 41.768047, 27.963770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720532, 0.354670, 0.595854,
		-0.579936, -0.162854, 0.798219,
		0.380142, -0.920700, 0.088344,
		32.648098, 41.491837, 27.990273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396488, 41.949684, 28.669277>,  <32.381996, 42.136326, 27.928432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396488, 41.949684, 28.669277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679184, 41.736588, 28.483072>,  <32.848801, 41.608730, 28.371349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.679184, 41.736588, 28.483072>,  <32.396488, 41.949684, 28.669277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.679184, 41.736588, 28.483072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687787, 0.363257, 0.628485,
		-0.165720, -0.764350, 0.623142,
		0.706743, -0.532742, -0.465511,
		32.891209, 41.576763, 28.343418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839039, 41.840351, 29.203032>,  <32.396488, 41.949684, 28.669277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839039, 41.840351, 29.203032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048759, 41.768795, 28.870018>,  <33.174591, 41.725861, 28.670210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048759, 41.768795, 28.870018>,  <32.839039, 41.840351, 29.203032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048759, 41.768795, 28.870018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846115, 0.219562, 0.485676,
		0.095911, -0.959058, 0.266476,
		0.524299, -0.178888, -0.832532,
		33.206051, 41.715130, 28.620258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359131, 41.363579, 29.371365>,  <32.839039, 41.840351, 29.203032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359131, 41.363579, 29.371365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471073, 41.555031, 29.038477>,  <33.538239, 41.669903, 28.838743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471073, 41.555031, 29.038477>,  <33.359131, 41.363579, 29.371365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471073, 41.555031, 29.038477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852539, 0.274685, 0.444663,
		0.441430, -0.833941, -0.331183,
		0.279852, 0.478634, -0.832222,
		33.555027, 41.698620, 28.788811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004383, 41.510597, 29.520283>,  <33.359131, 41.363579, 29.371365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004383, 41.510597, 29.520283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971252, 41.748608, 29.200512>,  <33.951374, 41.891415, 29.008650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.971252, 41.748608, 29.200512>,  <34.004383, 41.510597, 29.520283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971252, 41.748608, 29.200512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825104, 0.490814, 0.279829,
		0.558875, -0.636432, -0.531613,
		-0.082831, 0.595026, -0.799427,
		33.946404, 41.927116, 28.960684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540127, 41.336628, 29.121351>,  <34.004383, 41.510597, 29.520283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540127, 41.336628, 29.121351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438148, 41.719234, 29.064680>,  <34.376961, 41.948799, 29.030678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438148, 41.719234, 29.064680>,  <34.540127, 41.336628, 29.121351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438148, 41.719234, 29.064680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960634, 0.267269, 0.075825,
		0.110395, -0.116771, -0.987004,
		-0.254942, 0.956520, -0.141679,
		34.361668, 42.006191, 29.022177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945312, 41.731670, 28.569897>,  <34.540127, 41.336628, 29.121351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945312, 41.731670, 28.569897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832954, 41.962643, 28.876535>,  <34.765541, 42.101227, 29.060518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832954, 41.962643, 28.876535>,  <34.945312, 41.731670, 28.569897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832954, 41.962643, 28.876535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946175, 0.032804, 0.321988,
		0.160779, 0.815780, -0.555566,
		-0.280896, 0.577432, 0.766596,
		34.748684, 42.135872, 29.106514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.162975, 42.459957, 28.500328>,  <34.945312, 41.731670, 28.569897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.162975, 42.459957, 28.500328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124161, 42.340111, 28.879972>,  <35.100872, 42.268204, 29.107759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124161, 42.340111, 28.879972>,  <35.162975, 42.459957, 28.500328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124161, 42.340111, 28.879972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936539, 0.295277, 0.188960,
		-0.336867, 0.907216, 0.251950,
		-0.097033, -0.299616, 0.949113,
		35.095051, 42.250225, 29.164707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890484, 42.259918, 28.887394>,  <35.162975, 42.459957, 28.500328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890484, 42.259918, 28.887394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285141, 42.284153, 28.947880>,  <36.521935, 42.298695, 28.984171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285141, 42.284153, 28.947880>,  <35.890484, 42.259918, 28.887394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285141, 42.284153, 28.947880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029492, -0.846488, 0.531591,
		0.160207, -0.528950, -0.833394,
		0.986643, 0.060587, 0.151213,
		36.581135, 42.302330, 28.993244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929356, 41.595371, 28.807590>,  <35.890484, 42.259918, 28.887394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929356, 41.595371, 28.807590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295147, 41.724464, 28.905222>,  <36.514622, 41.801918, 28.963800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295147, 41.724464, 28.905222>,  <35.929356, 41.595371, 28.807590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295147, 41.724464, 28.905222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229527, -0.910506, 0.343941,
		0.333234, -0.258505, -0.906714,
		0.914479, 0.322729, 0.244078,
		36.569492, 41.821281, 28.978445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418365, 41.279015, 28.411850>,  <35.929356, 41.595371, 28.807590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418365, 41.279015, 28.411850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572037, 41.376797, 28.767973>,  <36.664238, 41.435467, 28.981647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.572037, 41.376797, 28.767973>,  <36.418365, 41.279015, 28.411850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572037, 41.376797, 28.767973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141101, -0.968527, 0.205049,
		0.912413, 0.046848, -0.406581,
		0.384178, 0.244458, 0.890307,
		36.687290, 41.450134, 29.035065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193470, 41.063644, 28.436779>,  <36.418365, 41.279015, 28.411850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193470, 41.063644, 28.436779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984558, 41.077389, 28.777611>,  <36.859211, 41.085636, 28.982111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984558, 41.077389, 28.777611>,  <37.193470, 41.063644, 28.436779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984558, 41.077389, 28.777611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158579, -0.977846, 0.136638,
		0.837899, 0.206485, 0.505261,
		-0.522282, 0.034365, 0.852080,
		36.827873, 41.087700, 29.033236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500927, 40.608311, 28.890657>,  <37.193470, 41.063644, 28.436779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500927, 40.608311, 28.890657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140118, 40.664558, 29.053913>,  <36.923630, 40.698307, 29.151867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140118, 40.664558, 29.053913>,  <37.500927, 40.608311, 28.890657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140118, 40.664558, 29.053913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105693, -0.844746, 0.524628,
		0.418545, 0.516365, 0.747119,
		-0.902025, 0.140616, 0.408140,
		36.869511, 40.706741, 29.176355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565807, 40.495625, 29.591110>,  <37.500927, 40.608311, 28.890657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565807, 40.495625, 29.591110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178677, 40.436600, 29.509592>,  <36.946396, 40.401184, 29.460682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178677, 40.436600, 29.509592>,  <37.565807, 40.495625, 29.591110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178677, 40.436600, 29.509592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034744, -0.880594, 0.472597,
		-0.249195, 0.450313, 0.857391,
		-0.967830, -0.147558, -0.203794,
		36.888329, 40.392334, 29.448454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216473, 40.157566, 30.226267>,  <37.565807, 40.495625, 29.591110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216473, 40.157566, 30.226267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981876, 40.057163, 29.918234>,  <36.841118, 39.996922, 29.733414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981876, 40.057163, 29.918234>,  <37.216473, 40.157566, 30.226267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981876, 40.057163, 29.918234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084493, -0.926622, 0.366378,
		-0.805539, 0.279942, 0.522244,
		-0.586488, -0.251005, -0.770084,
		36.805931, 39.981861, 29.687208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630932, 39.771435, 30.486231>,  <37.216473, 40.157566, 30.226267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630932, 39.771435, 30.486231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679302, 39.631863, 30.114506>,  <36.708324, 39.548119, 29.891470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679302, 39.631863, 30.114506>,  <36.630932, 39.771435, 30.486231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679302, 39.631863, 30.114506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101446, -0.926939, 0.361238,
		-0.987464, -0.137959, -0.076695,
		0.120928, -0.348929, -0.929314,
		36.715580, 39.527184, 29.835712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011406, 39.312584, 30.297907>,  <36.630932, 39.771435, 30.486231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011406, 39.312584, 30.297907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352421, 39.219933, 30.110493>,  <36.557030, 39.164341, 29.998043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352421, 39.219933, 30.110493>,  <36.011406, 39.312584, 30.297907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352421, 39.219933, 30.110493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066439, -0.937195, 0.342419,
		-0.518423, -0.260797, -0.814385,
		0.852539, -0.231625, -0.468536,
		36.608181, 39.150444, 29.969933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873802, 38.759315, 29.733076>,  <36.011406, 39.312584, 30.297907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873802, 38.759315, 29.733076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217499, 38.779064, 29.936750>,  <36.423717, 38.790913, 30.058954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217499, 38.779064, 29.936750>,  <35.873802, 38.759315, 29.733076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217499, 38.779064, 29.936750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084284, -0.968068, 0.236093,
		0.504583, -0.245777, -0.827641,
		0.859239, 0.049372, 0.509186,
		36.475269, 38.793877, 30.089506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489082, 38.359554, 29.430115>,  <35.873802, 38.759315, 29.733076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489082, 38.359554, 29.430115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517029, 38.391907, 29.827824>,  <36.533798, 38.411316, 30.066448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.517029, 38.391907, 29.827824>,  <36.489082, 38.359554, 29.430115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517029, 38.391907, 29.827824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158794, -0.983097, 0.091126,
		0.984836, -0.164252, -0.055845,
		0.069869, 0.080877, 0.994272,
		36.537991, 38.416168, 30.126106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789711, 37.725296, 29.637295>,  <36.489082, 38.359554, 29.430115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789711, 37.725296, 29.637295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639267, 37.870045, 29.978491>,  <36.549000, 37.956894, 30.183208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639267, 37.870045, 29.978491>,  <36.789711, 37.725296, 29.637295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639267, 37.870045, 29.978491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364817, -0.904058, 0.222682,
		0.851735, -0.227432, 0.472040,
		-0.376106, 0.361874, 0.852989,
		36.526436, 37.978607, 30.234388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029957, 37.530716, 30.329311>,  <36.789711, 37.725296, 29.637295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029957, 37.530716, 30.329311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635937, 37.599545, 30.325819>,  <36.399525, 37.640842, 30.323723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635937, 37.599545, 30.325819>,  <37.029957, 37.530716, 30.329311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635937, 37.599545, 30.325819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171365, -0.973262, 0.152953,
		0.017821, 0.152162, 0.988195,
		-0.985046, 0.172068, -0.008731,
		36.340424, 37.651165, 30.323200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.715446, 37.309109, 30.860254>,  <37.029957, 37.530716, 30.329311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.715446, 37.309109, 30.860254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444881, 37.300926, 30.565760>,  <36.282543, 37.296017, 30.389063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444881, 37.300926, 30.565760>,  <36.715446, 37.309109, 30.860254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444881, 37.300926, 30.565760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152437, -0.974081, 0.167118,
		-0.720575, 0.225271, 0.655763,
		-0.676413, -0.020458, -0.736238,
		36.241959, 37.294788, 30.344889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248821, 36.730652, 30.830261>,  <36.715446, 37.309109, 30.860254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248821, 36.730652, 30.830261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057053, 36.465900, 30.599758>,  <36.941990, 36.307049, 30.461456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057053, 36.465900, 30.599758>,  <37.248821, 36.730652, 30.830261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057053, 36.465900, 30.599758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008999, -0.660311, 0.750938,
		-0.877539, 0.354829, 0.322524,
		-0.479421, -0.661880, -0.576256,
		36.913227, 36.267338, 30.426882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541027, 36.469933, 31.193035>,  <37.248821, 36.730652, 30.830261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541027, 36.469933, 31.193035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703365, 36.178638, 30.972143>,  <36.800770, 36.003860, 30.839609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703365, 36.178638, 30.972143>,  <36.541027, 36.469933, 31.193035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703365, 36.178638, 30.972143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220767, -0.508220, 0.832451,
		-0.886877, -0.459761, -0.045489,
		0.405847, -0.728239, -0.552228,
		36.825119, 35.960167, 30.806475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272827, 35.820644, 31.220011>,  <36.541027, 36.469933, 31.193035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272827, 35.820644, 31.220011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661522, 35.739826, 31.171188>,  <36.894741, 35.691338, 31.141895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661522, 35.739826, 31.171188>,  <36.272827, 35.820644, 31.220011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661522, 35.739826, 31.171188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044706, -0.350197, 0.935609,
		-0.231773, -0.914627, -0.331269,
		0.971742, -0.202040, -0.122055,
		36.953045, 35.679214, 31.134571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394531, 35.098526, 31.270586>,  <36.272827, 35.820644, 31.220011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394531, 35.098526, 31.270586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750675, 35.265305, 31.343708>,  <36.964359, 35.365372, 31.387581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.750675, 35.265305, 31.343708>,  <36.394531, 35.098526, 31.270586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750675, 35.265305, 31.343708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002528, -0.406060, 0.913843,
		0.455256, -0.813185, -0.362592,
		0.890357, 0.416949, 0.182805,
		37.017784, 35.390388, 31.398550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728344, 34.630436, 31.749054>,  <36.394531, 35.098526, 31.270586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728344, 34.630436, 31.749054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947563, 34.962872, 31.786869>,  <37.079094, 35.162331, 31.809559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947563, 34.962872, 31.786869>,  <36.728344, 34.630436, 31.749054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947563, 34.962872, 31.786869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040159, -0.139038, 0.989472,
		0.835482, -0.538483, -0.109575,
		0.548049, 0.831086, 0.094539,
		37.111977, 35.212196, 31.815231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435883, 34.388870, 32.166698>,  <36.728344, 34.630436, 31.749054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435883, 34.388870, 32.166698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307819, 34.767735, 32.174519>,  <37.230980, 34.995052, 32.179211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307819, 34.767735, 32.174519>,  <37.435883, 34.388870, 32.166698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307819, 34.767735, 32.174519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068827, -0.043837, 0.996665,
		0.944861, 0.317745, 0.079226,
		-0.320158, 0.947163, 0.019551,
		37.211773, 35.051884, 32.180386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890995, 34.736801, 32.567608>,  <37.435883, 34.388870, 32.166698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890995, 34.736801, 32.567608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585075, 34.993591, 32.589348>,  <37.401524, 35.147667, 32.602394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.585075, 34.993591, 32.589348>,  <37.890995, 34.736801, 32.567608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585075, 34.993591, 32.589348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108330, 0.044976, 0.993097,
		0.635100, 0.765404, -0.103943,
		-0.764796, 0.641976, 0.054352,
		37.355637, 35.186184, 32.605652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044010, 35.345848, 33.056705>,  <37.890995, 34.736801, 32.567608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044010, 35.345848, 33.056705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653595, 35.271053, 33.012177>,  <37.419346, 35.226177, 32.985458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653595, 35.271053, 33.012177>,  <38.044010, 35.345848, 33.056705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653595, 35.271053, 33.012177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121066, 0.041511, 0.991776,
		-0.180826, 0.981485, -0.063154,
		-0.976035, -0.186984, -0.111318,
		37.360783, 35.214958, 32.978783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624451, 35.881924, 33.144753>,  <38.044010, 35.345848, 33.056705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624451, 35.881924, 33.144753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425961, 35.571884, 33.301205>,  <37.306866, 35.385860, 33.395077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425961, 35.571884, 33.301205>,  <37.624451, 35.881924, 33.144753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425961, 35.571884, 33.301205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265063, 0.293752, 0.918396,
		-0.826742, 0.559407, 0.059682,
		-0.496225, -0.775096, 0.391135,
		37.277092, 35.339355, 33.418545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863644, 36.016193, 33.551395>,  <37.624451, 35.881924, 33.144753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863644, 36.016193, 33.551395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108845, 35.724567, 33.673176>,  <37.255966, 35.549591, 33.746246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108845, 35.724567, 33.673176>,  <36.863644, 36.016193, 33.551395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108845, 35.724567, 33.673176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049813, 0.420245, 0.906042,
		-0.788505, -0.540245, 0.293930,
		0.613007, -0.729061, 0.304455,
		37.292747, 35.505848, 33.764511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925072, 36.390797, 34.246574>,  <36.863644, 36.016193, 33.551395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925072, 36.390797, 34.246574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696041, 36.325829, 34.568016>,  <36.558624, 36.286850, 34.760880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696041, 36.325829, 34.568016>,  <36.925072, 36.390797, 34.246574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696041, 36.325829, 34.568016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529578, -0.821525, 0.211290,
		0.625865, 0.546550, 0.556395,
		-0.572573, -0.162416, 0.803605,
		36.524269, 36.277103, 34.809097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257446, 36.036602, 34.819782>,  <36.925072, 36.390797, 34.246574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257446, 36.036602, 34.819782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882450, 35.937801, 34.917847>,  <36.657452, 35.878521, 34.976685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882450, 35.937801, 34.917847>,  <37.257446, 36.036602, 34.819782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882450, 35.937801, 34.917847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318689, -0.892350, 0.319606,
		0.139828, 0.377758, 0.915285,
		-0.937489, -0.247001, 0.245163,
		36.601204, 35.863701, 34.991394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219982, 35.899075, 35.620342>,  <37.257446, 36.036602, 34.819782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219982, 35.899075, 35.620342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891243, 35.748726, 35.449093>,  <36.694000, 35.658516, 35.346344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891243, 35.748726, 35.449093>,  <37.219982, 35.899075, 35.620342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891243, 35.748726, 35.449093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125605, -0.852529, 0.507364,
		-0.555689, 0.363201, 0.747860,
		-0.821847, -0.375872, -0.428121,
		36.644688, 35.635963, 35.320656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125740, 35.297989, 35.932663>,  <37.219982, 35.899075, 35.620342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125740, 35.297989, 35.932663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877834, 35.005146, 35.819592>,  <36.729092, 34.829441, 35.751751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877834, 35.005146, 35.819592>,  <37.125740, 35.297989, 35.932663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877834, 35.005146, 35.819592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209292, -0.501337, 0.839558,
		-0.756364, 0.461168, 0.463936,
		-0.619766, -0.732110, -0.282674,
		36.691906, 34.785515, 35.734791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670506, 35.112873, 36.551254>,  <37.125740, 35.297989, 35.932663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670506, 35.112873, 36.551254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776886, 34.814495, 36.307014>,  <36.840714, 34.635468, 36.160469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776886, 34.814495, 36.307014>,  <36.670506, 35.112873, 36.551254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776886, 34.814495, 36.307014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140035, -0.596796, 0.790079,
		-0.953763, -0.295623, -0.054257,
		0.265946, -0.745950, -0.610600,
		36.856670, 34.590710, 36.123837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.495911, 35.829464, 36.248840>,  <36.670506, 35.112873, 36.551254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.495911, 35.829464, 36.248840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595444, 35.787579, 36.633987>,  <36.655163, 35.762447, 36.865074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.595444, 35.787579, 36.633987>,  <36.495911, 35.829464, 36.248840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595444, 35.787579, 36.633987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246672, 0.954504, 0.167553,
		-0.936608, -0.279205, 0.211682,
		0.248833, -0.104716, 0.962869,
		36.670094, 35.756165, 36.922848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721828, 35.920723, 36.147659>,  <36.495911, 35.829464, 36.248840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721828, 35.920723, 36.147659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494041, 36.249405, 36.138638>,  <35.357368, 36.446613, 36.133224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494041, 36.249405, 36.138638>,  <35.721828, 35.920723, 36.147659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494041, 36.249405, 36.138638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729308, 0.492403, -0.475025,
		-0.379226, -0.286959, -0.879683,
		-0.569471, 0.821702, -0.022550,
		35.323200, 36.495914, 36.131874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509987, 36.216080, 35.506714>,  <35.721828, 35.920723, 36.147659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509987, 36.216080, 35.506714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523960, 36.527161, 35.757778>,  <35.532345, 36.713810, 35.908417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.523960, 36.527161, 35.757778>,  <35.509987, 36.216080, 35.506714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523960, 36.527161, 35.757778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636564, 0.466848, -0.613872,
		-0.770432, 0.420994, -0.478746,
		0.034935, 0.777700, 0.627665,
		35.534439, 36.760471, 35.946079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474220, 36.765900, 35.116840>,  <35.509987, 36.216080, 35.506714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474220, 36.765900, 35.116840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644169, 36.864979, 35.465122>,  <35.746140, 36.924427, 35.674091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644169, 36.864979, 35.465122>,  <35.474220, 36.765900, 35.116840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644169, 36.864979, 35.465122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757157, 0.429962, -0.491779,
		-0.496181, 0.868205, -0.004864,
		0.424874, 0.247694, 0.870706,
		35.771629, 36.939285, 35.726334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667683, 37.467602, 35.140976>,  <35.474220, 36.765900, 35.116840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667683, 37.467602, 35.140976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911480, 37.282223, 35.398266>,  <36.057758, 37.170998, 35.552639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911480, 37.282223, 35.398266>,  <35.667683, 37.467602, 35.140976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911480, 37.282223, 35.398266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784390, 0.470338, -0.404370,
		-0.115132, 0.751001, 0.650186,
		0.609490, -0.463443, 0.643229,
		36.094326, 37.143188, 35.591236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195530, 37.880959, 35.646240>,  <35.667683, 37.467602, 35.140976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195530, 37.880959, 35.646240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400669, 37.539558, 35.609306>,  <36.523754, 37.334721, 35.587147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.400669, 37.539558, 35.609306>,  <36.195530, 37.880959, 35.646240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400669, 37.539558, 35.609306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815612, 0.517977, -0.257830,
		0.267886, 0.056916, 0.961768,
		0.512848, -0.853499, -0.092338,
		36.554523, 37.283508, 35.581604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856804, 37.877445, 36.106724>,  <36.195530, 37.880959, 35.646240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856804, 37.877445, 36.106724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846645, 37.680992, 35.758438>,  <36.840549, 37.563122, 35.549465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846645, 37.680992, 35.758438>,  <36.856804, 37.877445, 36.106724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846645, 37.680992, 35.758438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714868, 0.599923, -0.359243,
		0.698798, -0.631569, 0.335861,
		-0.025396, -0.491134, -0.870714,
		36.839027, 37.533653, 35.497223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589184, 37.704082, 35.900318>,  <36.856804, 37.877445, 36.106724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589184, 37.704082, 35.900318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349693, 37.734840, 35.581417>,  <37.205997, 37.753296, 35.390076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349693, 37.734840, 35.581417>,  <37.589184, 37.704082, 35.900318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349693, 37.734840, 35.581417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634588, 0.652869, -0.413593,
		0.488699, -0.753557, -0.439688,
		-0.598725, 0.076898, -0.797255,
		37.170074, 37.757912, 35.342239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917259, 37.695518, 35.222805>,  <37.589184, 37.704082, 35.900318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917259, 37.695518, 35.222805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584721, 37.902794, 35.142456>,  <37.385197, 38.027157, 35.094246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584721, 37.902794, 35.142456>,  <37.917259, 37.695518, 35.222805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584721, 37.902794, 35.142456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545356, 0.691028, -0.474413,
		-0.107025, -0.503947, -0.857078,
		-0.831344, 0.518187, -0.200873,
		37.335316, 38.058250, 35.082195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949978, 37.902935, 34.505058>,  <37.917259, 37.695518, 35.222805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949978, 37.902935, 34.505058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686726, 38.153645, 34.671917>,  <37.528774, 38.304070, 34.772034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.686726, 38.153645, 34.671917>,  <37.949978, 37.902935, 34.505058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686726, 38.153645, 34.671917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217704, 0.688808, -0.691483,
		-0.720741, -0.364272, -0.589778,
		-0.658132, 0.626777, 0.417149,
		37.489285, 38.341679, 34.797062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491253, 37.337158, 34.613750>,  <37.949978, 37.902935, 34.505058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491253, 37.337158, 34.613750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725410, 37.013519, 34.593063>,  <38.865906, 36.819336, 34.580650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725410, 37.013519, 34.593063>,  <38.491253, 37.337158, 34.613750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725410, 37.013519, 34.593063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215935, 0.217077, -0.951972,
		0.781467, 0.546107, 0.301787,
		0.585390, -0.809101, -0.051715,
		38.901028, 36.770790, 34.577549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113838, 37.550419, 34.446175>,  <38.491253, 37.337158, 34.613750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113838, 37.550419, 34.446175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048729, 37.180542, 34.308510>,  <39.009663, 36.958614, 34.225910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048729, 37.180542, 34.308510>,  <39.113838, 37.550419, 34.446175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048729, 37.180542, 34.308510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370769, 0.265928, -0.889838,
		0.914350, -0.272445, 0.299562,
		-0.162770, -0.924692, -0.344166,
		38.999897, 36.903133, 34.205261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758503, 37.305489, 34.280800>,  <39.113838, 37.550419, 34.446175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758503, 37.305489, 34.280800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441040, 37.184658, 34.069569>,  <39.250565, 37.112160, 33.942829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441040, 37.184658, 34.069569>,  <39.758503, 37.305489, 34.280800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441040, 37.184658, 34.069569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437455, 0.319858, -0.840431,
		0.422786, -0.898019, -0.121709,
		-0.793653, -0.302081, -0.528075,
		39.202946, 37.094036, 33.911148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927727, 37.556641, 33.617493>,  <39.758503, 37.305489, 34.280800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927727, 37.556641, 33.617493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995823, 37.167576, 33.554314>,  <40.036682, 36.934135, 33.516407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.995823, 37.167576, 33.554314>,  <39.927727, 37.556641, 33.617493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995823, 37.167576, 33.554314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385259, 0.081835, -0.919173,
		0.906969, 0.217333, -0.360795,
		0.170241, -0.972661, -0.157951,
		40.046894, 36.875778, 33.506927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070885, 37.488815, 32.957771>,  <39.927727, 37.556641, 33.617493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070885, 37.488815, 32.957771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012703, 37.099735, 33.030098>,  <39.977795, 36.866287, 33.073494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.012703, 37.099735, 33.030098>,  <40.070885, 37.488815, 32.957771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012703, 37.099735, 33.030098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482851, -0.089726, -0.871094,
		0.863538, -0.214013, -0.456618,
		-0.145455, -0.972701, 0.180818,
		39.969067, 36.807926, 33.084343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492264, 36.993290, 32.524033>,  <40.070885, 37.488815, 32.957771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492264, 36.993290, 32.524033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134972, 36.836319, 32.611794>,  <39.920597, 36.742138, 32.664448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.134972, 36.836319, 32.611794>,  <40.492264, 36.993290, 32.524033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134972, 36.836319, 32.611794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169008, -0.159125, -0.972685,
		0.416618, -0.905915, 0.075813,
		-0.893233, -0.392425, 0.219401,
		39.867001, 36.718594, 32.677612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931683, 36.441097, 32.523613>,  <40.492264, 36.993290, 32.524033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931683, 36.441097, 32.523613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025867, 36.105583, 32.327244>,  <41.082378, 35.904274, 32.209423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025867, 36.105583, 32.327244>,  <40.931683, 36.441097, 32.523613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025867, 36.105583, 32.327244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357751, 0.544460, -0.758668,
		0.903643, 0.003011, 0.428275,
		0.235464, -0.838781, -0.490921,
		41.096508, 35.853951, 32.179966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571697, 36.516750, 32.362961>,  <40.931683, 36.441097, 32.523613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571697, 36.516750, 32.362961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468098, 36.287292, 32.052132>,  <41.405937, 36.149616, 31.865633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.468098, 36.287292, 32.052132>,  <41.571697, 36.516750, 32.362961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468098, 36.287292, 32.052132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342920, 0.697502, -0.629203,
		0.902953, -0.429438, 0.016063,
		-0.258999, -0.573649, -0.777075,
		41.390396, 36.115196, 31.819010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207382, 36.452721, 31.829977>,  <41.571697, 36.516750, 32.362961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207382, 36.452721, 31.829977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839279, 36.426273, 31.675707>,  <41.618416, 36.410404, 31.583145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839279, 36.426273, 31.675707>,  <42.207382, 36.452721, 31.829977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839279, 36.426273, 31.675707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239494, 0.684282, -0.688768,
		0.309453, -0.726214, -0.613883,
		-0.920261, -0.066120, -0.385677,
		41.563202, 36.406437, 31.560003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613216, 35.822559, 31.896008>,  <42.207382, 36.452721, 31.829977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613216, 35.822559, 31.896008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856045, 36.017944, 31.645290>,  <43.001740, 36.135178, 31.494860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856045, 36.017944, 31.645290>,  <42.613216, 35.822559, 31.896008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856045, 36.017944, 31.645290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786882, 0.479529, -0.388417,
		0.110837, 0.729009, 0.675471,
		0.607068, 0.488465, -0.626794,
		43.038166, 36.164482, 31.457253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143219, 36.066956, 32.365799>,  <42.613216, 35.822559, 31.896008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143219, 36.066956, 32.365799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286083, 35.710274, 32.254593>,  <43.371803, 35.496265, 32.187870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.286083, 35.710274, 32.254593>,  <43.143219, 36.066956, 32.365799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286083, 35.710274, 32.254593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931686, 0.318989, 0.173803,
		-0.066296, -0.321103, 0.944721,
		0.357164, -0.891706, -0.278019,
		43.393234, 35.442760, 32.171188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629166, 35.782932, 32.869263>,  <43.143219, 36.066956, 32.365799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629166, 35.782932, 32.869263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723362, 35.651745, 32.503315>,  <43.779881, 35.573032, 32.283745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723362, 35.651745, 32.503315>,  <43.629166, 35.782932, 32.869263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723362, 35.651745, 32.503315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944478, 0.299169, 0.135862,
		0.229143, -0.896067, 0.380207,
		0.235488, -0.327965, -0.914868,
		43.794010, 35.553356, 32.228855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880219, 35.045414, 32.744095>,  <43.629166, 35.782932, 32.869263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880219, 35.045414, 32.744095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024113, 35.316952, 32.488045>,  <44.110451, 35.479874, 32.334415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024113, 35.316952, 32.488045>,  <43.880219, 35.045414, 32.744095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024113, 35.316952, 32.488045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831890, 0.077338, 0.549524,
		0.422547, -0.730200, -0.536901,
		0.359739, 0.678842, -0.640125,
		44.132034, 35.520603, 32.296005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611080, 34.900364, 32.420757>,  <43.880219, 35.045414, 32.744095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611080, 34.900364, 32.420757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548321, 35.294777, 32.443111>,  <44.510666, 35.531425, 32.456524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.548321, 35.294777, 32.443111>,  <44.611080, 34.900364, 32.420757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548321, 35.294777, 32.443111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818068, 0.098052, 0.566701,
		0.553306, 0.134632, -0.822026,
		-0.156898, 0.986032, 0.055885,
		44.501251, 35.590588, 32.459877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153996, 35.233234, 32.059895>,  <44.611080, 34.900364, 32.420757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153996, 35.233234, 32.059895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986588, 35.425453, 32.368160>,  <44.886143, 35.540783, 32.553120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.986588, 35.425453, 32.368160>,  <45.153996, 35.233234, 32.059895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.986588, 35.425453, 32.368160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879291, 0.001980, 0.476280,
		0.227347, 0.876968, -0.423367,
		-0.418521, 0.480544, 0.770660,
		44.861031, 35.569618, 32.599358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604774, 35.772053, 32.339226>,  <45.153996, 35.233234, 32.059895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604774, 35.772053, 32.339226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372711, 35.638699, 32.636486>,  <45.233475, 35.558685, 32.814842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372711, 35.638699, 32.636486>,  <45.604774, 35.772053, 32.339226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372711, 35.638699, 32.636486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801928, -0.074068, 0.592812,
		-0.142592, 0.939876, 0.310324,
		-0.580155, -0.333388, 0.743151,
		45.198666, 35.538681, 32.859432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.669048, 36.210526, 32.836849>,  <45.604774, 35.772053, 32.339226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.669048, 36.210526, 32.836849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591579, 35.840199, 32.966686>,  <45.545097, 35.618004, 33.044586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591579, 35.840199, 32.966686>,  <45.669048, 36.210526, 32.836849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591579, 35.840199, 32.966686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809406, 0.036174, 0.586134,
		-0.554393, 0.376244, 0.742354,
		-0.193676, -0.925814, 0.324589,
		45.533478, 35.562454, 33.064064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.187889, 36.230751, 33.175533>,  <45.669048, 36.210526, 32.836849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.187889, 36.230751, 33.175533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011173, 35.872086, 33.186935>,  <45.905144, 35.656887, 33.193775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.011173, 35.872086, 33.186935>,  <46.187889, 36.230751, 33.175533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011173, 35.872086, 33.186935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639716, -0.292594, 0.710741,
		-0.628957, 0.332233, 0.702876,
		-0.441789, -0.896666, 0.028505,
		45.878635, 35.603085, 33.195488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127102, 35.906906, 33.861954>,  <46.187889, 36.230751, 33.175533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127102, 35.906906, 33.861954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101154, 35.578896, 33.634502>,  <46.085587, 35.382088, 33.498032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.101154, 35.578896, 33.634502>,  <46.127102, 35.906906, 33.861954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101154, 35.578896, 33.634502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617350, -0.480674, 0.622762,
		-0.784010, -0.310649, 0.537425,
		-0.064866, -0.820031, -0.568632,
		46.081696, 35.332886, 33.463913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.885090, 35.406273, 34.433079>,  <46.127102, 35.906906, 33.861954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.885090, 35.406273, 34.433079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092834, 35.747185, 34.408131>,  <46.217480, 35.951733, 34.393162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.092834, 35.747185, 34.408131>,  <45.885090, 35.406273, 34.433079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.092834, 35.747185, 34.408131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589324, 0.410061, 0.696094,
		0.618840, -0.324768, 0.715236,
		0.519359, 0.852277, -0.062369,
		46.248642, 36.002869, 34.389420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078659, 35.574436, 35.121952>,  <45.885090, 35.406273, 34.433079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078659, 35.574436, 35.121952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.013664, 35.890617, 34.885719>,  <45.974667, 36.080326, 34.743980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.013664, 35.890617, 34.885719>,  <46.078659, 35.574436, 35.121952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.013664, 35.890617, 34.885719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735232, 0.302180, 0.606730,
		0.658051, 0.532802, 0.532063,
		-0.162488, 0.790449, -0.590583,
		45.964916, 36.127750, 34.708546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366852, 35.051552, 35.621078>,  <46.078659, 35.574436, 35.121952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366852, 35.051552, 35.621078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633427, 34.803394, 35.455685>,  <46.793373, 34.654499, 35.356449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.633427, 34.803394, 35.455685>,  <46.366852, 35.051552, 35.621078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.633427, 34.803394, 35.455685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580271, 0.779842, -0.234803,
		0.468125, -0.083453, 0.879713,
		0.666442, -0.620389, -0.413489,
		46.833359, 34.617279, 35.331638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.093128, 35.260567, 35.688850>,  <46.366852, 35.051552, 35.621078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.093128, 35.260567, 35.688850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.210419, 35.055885, 35.365818>,  <47.280792, 34.933079, 35.171997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.210419, 35.055885, 35.365818>,  <47.093128, 35.260567, 35.688850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.210419, 35.055885, 35.365818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840030, 0.541214, -0.037919,
		0.456476, -0.667272, 0.588539,
		0.293223, -0.511699, -0.807579,
		47.298386, 34.902374, 35.123543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.707413, 35.120899, 35.701958>,  <47.093128, 35.260567, 35.688850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.707413, 35.120899, 35.701958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.722309, 35.072727, 35.305149>,  <47.731247, 35.043823, 35.067062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.722309, 35.072727, 35.305149>,  <47.707413, 35.120899, 35.701958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.722309, 35.072727, 35.305149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575573, 0.814096, -0.077225,
		0.816902, -0.568106, 0.099632,
		0.037238, -0.120430, -0.992023,
		47.733479, 35.036598, 35.007542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.939529, 37.948063, 19.422153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.110653, 37.591084, 19.364866>,  <32.213326, 37.376896, 19.330494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.110653, 37.591084, 19.364866>,  <31.939529, 37.948063, 19.422153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110653, 37.591084, 19.364866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367830, 0.027163, 0.929496,
		-0.825640, -0.450326, 0.339891,
		0.427809, -0.892451, -0.143216,
		32.238995, 37.323349, 19.321901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896444, 37.656120, 20.012806>,  <31.939529, 37.948063, 19.422153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896444, 37.656120, 20.012806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.137257, 37.383427, 19.846529>,  <32.281746, 37.219810, 19.746763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.137257, 37.383427, 19.846529>,  <31.896444, 37.656120, 20.012806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137257, 37.383427, 19.846529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385264, -0.207988, 0.899062,
		-0.699378, -0.701415, 0.137432,
		0.602032, -0.681732, -0.415692,
		32.317867, 37.178905, 19.721821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975378, 36.996624, 20.419003>,  <31.896444, 37.656120, 20.012806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975378, 36.996624, 20.419003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.303665, 37.051926, 20.197262>,  <32.500637, 37.085106, 20.064217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.303665, 37.051926, 20.197262>,  <31.975378, 36.996624, 20.419003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303665, 37.051926, 20.197262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557050, 0.021963, 0.830189,
		0.126954, -0.990153, -0.058990,
		0.820718, 0.138256, -0.554353,
		32.549881, 37.093403, 20.030956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529232, 36.524769, 20.735914>,  <31.975378, 36.996624, 20.419003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529232, 36.524769, 20.735914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.742435, 36.784737, 20.519211>,  <32.870358, 36.940720, 20.389189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.742435, 36.784737, 20.519211>,  <32.529232, 36.524769, 20.735914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742435, 36.784737, 20.519211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629613, 0.123078, 0.767098,
		0.565233, -0.749968, -0.343598,
		0.533010, 0.649923, -0.541756,
		32.902340, 36.979713, 20.356684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233322, 36.356899, 20.767632>,  <32.529232, 36.524769, 20.735914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233322, 36.356899, 20.767632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.259712, 36.745750, 20.677637>,  <33.275547, 36.979061, 20.623640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.259712, 36.745750, 20.677637>,  <33.233322, 36.356899, 20.767632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259712, 36.745750, 20.677637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725903, 0.107945, 0.679274,
		0.684626, -0.208136, -0.698546,
		0.065977, 0.972125, -0.224988,
		33.279507, 37.037388, 20.610140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982861, 36.557503, 20.886528>,  <33.233322, 36.356899, 20.767632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982861, 36.557503, 20.886528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850891, 36.929924, 20.824184>,  <33.771709, 37.153378, 20.786777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850891, 36.929924, 20.824184>,  <33.982861, 36.557503, 20.886528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850891, 36.929924, 20.824184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756416, 0.359515, 0.546429,
		0.564787, 0.062385, -0.822875,
		-0.329925, 0.931052, -0.155860,
		33.751915, 37.209240, 20.777426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525043, 37.021584, 20.728724>,  <33.982861, 36.557503, 20.886528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525043, 37.021584, 20.728724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.225681, 37.240982, 20.877878>,  <34.046066, 37.372623, 20.967371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.225681, 37.240982, 20.877878>,  <34.525043, 37.021584, 20.728724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225681, 37.240982, 20.877878> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635975, 0.433913, 0.638165,
		0.188234, 0.714749, -0.673574,
		-0.748401, 0.548500, 0.372886,
		34.001160, 37.405533, 20.989744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.906170, 37.520287, 21.000708>,  <34.525043, 37.021584, 20.728724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.906170, 37.520287, 21.000708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.547642, 37.595161, 21.161491>,  <34.332523, 37.640087, 21.257961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.547642, 37.595161, 21.161491>,  <34.906170, 37.520287, 21.000708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547642, 37.595161, 21.161491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437531, 0.520468, 0.733266,
		-0.071950, 0.833111, -0.548406,
		-0.896320, 0.187186, 0.401960,
		34.278748, 37.651318, 21.282080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827904, 38.254887, 21.143599>,  <34.906170, 37.520287, 21.000708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827904, 38.254887, 21.143599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.573616, 38.065056, 21.387117>,  <34.421043, 37.951157, 21.533230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.573616, 38.065056, 21.387117>,  <34.827904, 38.254887, 21.143599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573616, 38.065056, 21.387117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312703, 0.562740, 0.765206,
		-0.705747, 0.676829, -0.209342,
		-0.635719, -0.474580, 0.608798,
		34.382900, 37.922684, 21.569757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579166, 38.817619, 21.579601>,  <34.827904, 38.254887, 21.143599>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579166, 38.817619, 21.579601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.468372, 38.477325, 21.758276>,  <34.401894, 38.273151, 21.865480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.468372, 38.477325, 21.758276>,  <34.579166, 38.817619, 21.579601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468372, 38.477325, 21.758276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111606, 0.433247, 0.894338,
		-0.954369, 0.297576, -0.025058,
		-0.276990, -0.850733, 0.446689,
		34.385277, 38.222107, 21.892282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157089, 38.966175, 22.038157>,  <34.579166, 38.817619, 21.579601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157089, 38.966175, 22.038157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327335, 38.632053, 22.177359>,  <34.429485, 38.431580, 22.260880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.327335, 38.632053, 22.177359>,  <34.157089, 38.966175, 22.038157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327335, 38.632053, 22.177359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109948, 0.429465, 0.896366,
		-0.898198, -0.343248, 0.274629,
		0.425619, -0.835309, 0.348005,
		34.455021, 38.381462, 22.281759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884274, 38.917786, 22.772684>,  <34.157089, 38.966175, 22.038157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884274, 38.917786, 22.772684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.232548, 38.721676, 22.756977>,  <34.441513, 38.604008, 22.747553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.232548, 38.721676, 22.756977>,  <33.884274, 38.917786, 22.772684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232548, 38.721676, 22.756977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304087, 0.473833, 0.826446,
		-0.386582, -0.731512, 0.561644,
		0.870681, -0.490278, -0.039268,
		34.493752, 38.574593, 22.745197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092476, 38.642879, 23.484381>,  <33.884274, 38.917786, 22.772684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092476, 38.642879, 23.484381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442101, 38.664719, 23.291285>,  <34.651875, 38.677822, 23.175426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.442101, 38.664719, 23.291285>,  <34.092476, 38.642879, 23.484381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442101, 38.664719, 23.291285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402124, 0.476271, 0.781960,
		0.272604, -0.877602, 0.394337,
		0.874062, 0.054593, -0.482738,
		34.704319, 38.681095, 23.146463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538445, 38.491623, 24.019016>,  <34.092476, 38.642879, 23.484381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538445, 38.491623, 24.019016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.778946, 38.634937, 23.733324>,  <34.923248, 38.720924, 23.561909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.778946, 38.634937, 23.733324>,  <34.538445, 38.491623, 24.019016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778946, 38.634937, 23.733324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599095, 0.389347, 0.699639,
		0.528753, -0.848553, 0.019450,
		0.601254, 0.358283, -0.714232,
		34.959320, 38.742424, 23.519054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254841, 38.328243, 24.248693>,  <34.538445, 38.491623, 24.019016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254841, 38.328243, 24.248693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284607, 38.648022, 24.010250>,  <35.302467, 38.839890, 23.867184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.284607, 38.648022, 24.010250>,  <35.254841, 38.328243, 24.248693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284607, 38.648022, 24.010250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502851, 0.486123, 0.714720,
		0.861164, -0.352942, -0.365826,
		0.074418, 0.799447, -0.596109,
		35.306931, 38.887856, 23.831417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025955, 38.568943, 24.322897>,  <35.254841, 38.328243, 24.248693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025955, 38.568943, 24.322897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.803246, 38.871201, 24.184916>,  <35.669621, 39.052555, 24.102127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.803246, 38.871201, 24.184916>,  <36.025955, 38.568943, 24.322897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803246, 38.871201, 24.184916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423468, 0.615472, 0.664732,
		0.714614, 0.224031, -0.662674,
		-0.556778, 0.755648, -0.344955,
		35.636211, 39.097897, 24.081429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487038, 39.105186, 24.406023>,  <36.025955, 38.568943, 24.322897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487038, 39.105186, 24.406023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.135456, 39.292763, 24.371296>,  <35.924507, 39.405308, 24.350460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.135456, 39.292763, 24.371296>,  <36.487038, 39.105186, 24.406023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135456, 39.292763, 24.371296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309607, 0.699543, 0.644036,
		0.362745, 0.539199, -0.760053,
		-0.878954, 0.468938, -0.086816,
		35.871769, 39.433445, 24.345251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660439, 39.887024, 24.443062>,  <36.487038, 39.105186, 24.406023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660439, 39.887024, 24.443062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275757, 39.815201, 24.525894>,  <36.044949, 39.772106, 24.575594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.275757, 39.815201, 24.525894>,  <36.660439, 39.887024, 24.443062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275757, 39.815201, 24.525894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050175, 0.627423, 0.777060,
		-0.269459, 0.757692, -0.594386,
		-0.961704, -0.179562, 0.207082,
		35.987247, 39.761333, 24.588018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472874, 40.537342, 24.750040>,  <36.660439, 39.887024, 24.443062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472874, 40.537342, 24.750040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140282, 40.335934, 24.843939>,  <35.940727, 40.215088, 24.900278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.140282, 40.335934, 24.843939>,  <36.472874, 40.537342, 24.750040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140282, 40.335934, 24.843939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001325, 0.424343, 0.905501,
		-0.555549, 0.752597, -0.353501,
		-0.831483, -0.503518, 0.234745,
		35.890839, 40.184879, 24.914362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959003, 41.055866, 25.017210>,  <36.472874, 40.537342, 24.750040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959003, 41.055866, 25.017210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.915668, 40.683052, 25.155527>,  <35.889668, 40.459362, 25.238518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.915668, 40.683052, 25.155527>,  <35.959003, 41.055866, 25.017210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915668, 40.683052, 25.155527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038848, 0.343606, 0.938310,
		-0.993355, 0.115087, -0.001017,
		-0.108337, -0.932035, 0.345794,
		35.883167, 40.403442, 25.259266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399178, 41.142143, 25.543890>,  <35.959003, 41.055866, 25.017210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399178, 41.142143, 25.543890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580505, 40.793869, 25.620218>,  <35.689301, 40.584904, 25.666016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.580505, 40.793869, 25.620218>,  <35.399178, 41.142143, 25.543890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580505, 40.793869, 25.620218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147926, 0.284602, 0.947164,
		-0.878988, -0.401140, 0.257812,
		0.453319, -0.870683, 0.190822,
		35.716503, 40.532665, 25.677465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470238, 41.133698, 26.269855>,  <35.399178, 41.142143, 25.543890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470238, 41.133698, 26.269855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718880, 40.841587, 26.156496>,  <35.868065, 40.666321, 26.088480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718880, 40.841587, 26.156496>,  <35.470238, 41.133698, 26.269855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718880, 40.841587, 26.156496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392768, -0.022461, 0.919363,
		-0.677750, -0.682788, 0.272865,
		0.621601, -0.730271, -0.283401,
		35.905361, 40.622505, 26.071476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105724, 41.728302, 26.222973>,  <35.470238, 41.133698, 26.269855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105724, 41.728302, 26.222973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.798775, 41.982601, 26.256327>,  <34.614605, 42.135181, 26.276339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.798775, 41.982601, 26.256327>,  <35.105724, 41.728302, 26.222973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798775, 41.982601, 26.256327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469142, -0.468048, -0.748890,
		-0.437082, -0.613799, 0.657427,
		-0.767376, 0.635753, 0.083383,
		34.568562, 42.173325, 26.281342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420715, 41.301914, 26.215151>,  <35.105724, 41.728302, 26.222973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420715, 41.301914, 26.215151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.359989, 41.675816, 26.086664>,  <34.323555, 41.900158, 26.009571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.359989, 41.675816, 26.086664>,  <34.420715, 41.301914, 26.215151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359989, 41.675816, 26.086664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526766, -0.351504, -0.773926,
		-0.836343, 0.051712, 0.545763,
		-0.151816, 0.934757, -0.321218,
		34.314445, 41.956242, 25.990299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829132, 41.245041, 25.885265>,  <34.420715, 41.301914, 26.215151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829132, 41.245041, 25.885265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.950619, 41.605000, 25.760078>,  <34.023510, 41.820972, 25.684967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.950619, 41.605000, 25.760078>,  <33.829132, 41.245041, 25.885265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950619, 41.605000, 25.760078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467676, -0.145379, -0.871863,
		-0.830082, 0.411165, 0.376705,
		0.303715, 0.899894, -0.312968,
		34.041733, 41.874969, 25.666187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.183193, 41.604061, 25.643677>,  <33.829132, 41.245041, 25.885265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.183193, 41.604061, 25.643677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.495682, 41.793194, 25.480646>,  <33.683174, 41.906673, 25.382828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.495682, 41.793194, 25.480646>,  <33.183193, 41.604061, 25.643677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495682, 41.793194, 25.480646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415772, -0.092901, -0.904712,
		-0.465642, 0.876241, 0.124015,
		0.781224, 0.472834, -0.407575,
		33.730049, 41.935043, 25.358374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.915531, 42.128464, 25.280327>,  <33.183193, 41.604061, 25.643677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.915531, 42.128464, 25.280327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.267918, 42.048084, 25.108967>,  <33.479347, 41.999859, 25.006151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.267918, 42.048084, 25.108967>,  <32.915531, 42.128464, 25.280327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267918, 42.048084, 25.108967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455458, -0.114608, -0.882849,
		0.128307, 0.972875, -0.192488,
		0.880963, -0.200946, -0.428399,
		33.532207, 41.987801, 24.980448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901142, 42.566978, 24.623260>,  <32.915531, 42.128464, 25.280327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901142, 42.566978, 24.623260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.176979, 42.285107, 24.556458>,  <33.342480, 42.115986, 24.516376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.176979, 42.285107, 24.556458>,  <32.901142, 42.566978, 24.623260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176979, 42.285107, 24.556458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510375, -0.309281, -0.802410,
		0.513787, 0.638574, -0.572928,
		0.689594, -0.704677, -0.167008,
		33.383858, 42.073704, 24.506355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041405, 42.674915, 23.893293>,  <32.901142, 42.566978, 24.623260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041405, 42.674915, 23.893293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.157856, 42.306293, 23.996042>,  <33.227726, 42.085121, 24.057692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.157856, 42.306293, 23.996042>,  <33.041405, 42.674915, 23.893293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157856, 42.306293, 23.996042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445877, -0.368264, -0.815828,
		0.846425, 0.122980, -0.518112,
		0.291133, -0.921552, 0.256874,
		33.245197, 42.029827, 24.073105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086754, 42.452061, 23.333141>,  <33.041405, 42.674915, 23.893293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086754, 42.452061, 23.333141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067234, 42.123386, 23.560282>,  <33.055523, 41.926182, 23.696566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067234, 42.123386, 23.560282>,  <33.086754, 42.452061, 23.333141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067234, 42.123386, 23.560282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465844, -0.484181, -0.740646,
		0.883520, -0.300672, -0.359150,
		-0.048798, -0.821684, 0.567850,
		33.052593, 41.876881, 23.730637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404903, 41.857445, 22.911585>,  <33.086754, 42.452061, 23.333141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404903, 41.857445, 22.911585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.148869, 41.724003, 23.188425>,  <32.995247, 41.643940, 23.354528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.148869, 41.724003, 23.188425>,  <33.404903, 41.857445, 22.911585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148869, 41.724003, 23.188425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330712, -0.693457, -0.640114,
		0.693484, -0.638613, 0.333546,
		-0.640085, -0.333601, 0.692099,
		32.956844, 41.623924, 23.396055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385582, 41.206066, 22.751392>,  <33.404903, 41.857445, 22.911585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385582, 41.206066, 22.751392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.068935, 41.258926, 22.990015>,  <32.878948, 41.290642, 23.133188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.068935, 41.258926, 22.990015>,  <33.385582, 41.206066, 22.751392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068935, 41.258926, 22.990015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537412, -0.615152, -0.576868,
		0.290740, -0.777254, 0.557983,
		-0.791618, 0.132148, 0.596555,
		32.831451, 41.298573, 23.168982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137745, 40.542046, 22.974146>,  <33.385582, 41.206066, 22.751392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137745, 40.542046, 22.974146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.834869, 40.798996, 23.021500>,  <32.653145, 40.953167, 23.049911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.834869, 40.798996, 23.021500>,  <33.137745, 40.542046, 22.974146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834869, 40.798996, 23.021500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624193, -0.658177, -0.420935,
		-0.192481, -0.392623, 0.899332,
		-0.757188, 0.642379, 0.118386,
		32.607712, 40.991711, 23.057016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497169, 40.135700, 23.111393>,  <33.137745, 40.542046, 22.974146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497169, 40.135700, 23.111393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.339386, 40.484283, 22.994806>,  <32.244717, 40.693436, 22.924854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.339386, 40.484283, 22.994806>,  <32.497169, 40.135700, 23.111393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339386, 40.484283, 22.994806> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770323, -0.486537, -0.412171,
		-0.501000, 0.061937, 0.863228,
		-0.394463, 0.871462, -0.291467,
		32.221046, 40.745724, 22.907366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784685, 40.143257, 23.140707>,  <32.497169, 40.135700, 23.111393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784685, 40.143257, 23.140707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.836338, 40.438427, 22.875740>,  <31.867329, 40.615528, 22.716761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.836338, 40.438427, 22.875740>,  <31.784685, 40.143257, 23.140707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836338, 40.438427, 22.875740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540317, -0.507775, -0.670986,
		-0.831495, 0.444559, 0.333143,
		0.129131, 0.737924, -0.662415,
		31.875078, 40.659805, 22.677015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068613, 40.307205, 22.903660>,  <31.784685, 40.143257, 23.140707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068613, 40.307205, 22.903660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.350409, 40.406178, 22.637585>,  <31.519485, 40.465561, 22.477940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.350409, 40.406178, 22.637585>,  <31.068613, 40.307205, 22.903660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350409, 40.406178, 22.637585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492647, -0.504187, -0.709292,
		-0.510879, 0.827390, -0.233298,
		0.704487, 0.247429, -0.665189,
		31.561754, 40.480408, 22.438028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695223, 40.508301, 22.368280>,  <31.068613, 40.307205, 22.903660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695223, 40.508301, 22.368280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.045919, 40.442608, 22.187460>,  <31.256338, 40.403191, 22.078968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.045919, 40.442608, 22.187460>,  <30.695223, 40.508301, 22.368280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045919, 40.442608, 22.187460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480930, -0.288530, -0.827923,
		0.005540, 0.943281, -0.331950,
		0.876742, -0.164232, -0.452053,
		31.308943, 40.393337, 22.051844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522163, 40.648678, 21.647106>,  <30.695223, 40.508301, 22.368280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522163, 40.648678, 21.647106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.872799, 40.456604, 21.634340>,  <31.083179, 40.341362, 21.626680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.872799, 40.456604, 21.634340>,  <30.522163, 40.648678, 21.647106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872799, 40.456604, 21.634340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284849, -0.464262, -0.838643,
		0.387884, 0.744235, -0.543746,
		0.876588, -0.480182, -0.031914,
		31.135775, 40.312550, 21.624765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818405, 40.709541, 20.970612>,  <30.522163, 40.648678, 21.647106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818405, 40.709541, 20.970612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.004883, 40.387028, 21.116255>,  <31.116770, 40.193520, 21.203640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.004883, 40.387028, 21.116255>,  <30.818405, 40.709541, 20.970612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004883, 40.387028, 21.116255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225792, -0.506377, -0.832226,
		0.855383, 0.305767, -0.418122,
		0.466195, -0.806281, 0.364107,
		31.144741, 40.145142, 21.225487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114447, 40.492687, 20.334543>,  <30.818405, 40.709541, 20.970612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114447, 40.492687, 20.334543> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.105583, 40.185333, 20.590385>,  <31.100266, 40.000919, 20.743891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.105583, 40.185333, 20.590385>,  <31.114447, 40.492687, 20.334543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105583, 40.185333, 20.590385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393470, -0.581428, -0.712125,
		0.919070, -0.267446, -0.289452,
		-0.022160, -0.768384, 0.639605,
		31.098936, 39.954819, 20.782267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.448889, 39.949039, 19.912046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.249775, 39.743759, 20.191711>,  <31.130306, 39.620590, 20.359510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.249775, 39.743759, 20.191711>,  <31.448889, 39.949039, 19.912046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.249775, 39.743759, 20.191711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320808, -0.640009, -0.698190,
		0.805786, -0.571847, 0.153948,
		-0.497787, -0.513204, 0.699164,
		31.100439, 39.589798, 20.401461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570997, 39.319202, 19.794107>,  <31.448889, 39.949039, 19.912046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570997, 39.319202, 19.794107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.229687, 39.324574, 20.002621>,  <31.024900, 39.327797, 20.127729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.229687, 39.324574, 20.002621>,  <31.570997, 39.319202, 19.794107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229687, 39.324574, 20.002621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395479, -0.668219, -0.630142,
		0.339875, -0.743843, 0.575485,
		-0.853277, 0.013423, 0.521286,
		30.973703, 39.328602, 20.159006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344215, 38.578823, 19.791199>,  <31.570997, 39.319202, 19.794107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344215, 38.578823, 19.791199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019089, 38.797482, 19.871702>,  <30.824013, 38.928677, 19.920004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.019089, 38.797482, 19.871702>,  <31.344215, 38.578823, 19.791199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019089, 38.797482, 19.871702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547173, -0.597971, -0.585690,
		-0.199817, -0.586183, 0.785151,
		-0.812819, 0.546645, 0.201259,
		30.775244, 38.961475, 19.932079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853794, 38.082359, 19.814720>,  <31.344215, 38.578823, 19.791199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853794, 38.082359, 19.814720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.639376, 38.419575, 19.797125>,  <30.510725, 38.621906, 19.786568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.639376, 38.419575, 19.797125>,  <30.853794, 38.082359, 19.814720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639376, 38.419575, 19.797125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628243, -0.433189, -0.646265,
		-0.563883, -0.318793, 0.761844,
		-0.536047, 0.843041, -0.043989,
		30.478561, 38.672485, 19.783928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158749, 37.930477, 19.780388>,  <30.853794, 38.082359, 19.814720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.158749, 37.930477, 19.780388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143724, 38.296169, 19.619007>,  <30.134710, 38.515583, 19.522179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.143724, 38.296169, 19.619007>,  <30.158749, 37.930477, 19.780388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143724, 38.296169, 19.619007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596711, -0.344372, -0.724806,
		-0.801577, 0.213521, 0.558466,
		-0.037559, 0.914230, -0.403451,
		30.132456, 38.570438, 19.497972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469196, 38.101543, 19.728048>,  <30.158749, 37.930477, 19.780388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469196, 38.101543, 19.728048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.634027, 38.338455, 19.451096>,  <29.732925, 38.480602, 19.284924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.634027, 38.338455, 19.451096>,  <29.469196, 38.101543, 19.728048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634027, 38.338455, 19.451096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575482, -0.419960, -0.701750,
		-0.706407, 0.687630, 0.167792,
		0.412078, 0.592283, -0.692382,
		29.757650, 38.516140, 19.243382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953188, 38.364765, 19.395350>,  <29.469196, 38.101543, 19.728048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953188, 38.364765, 19.395350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.278303, 38.382492, 19.163000>,  <29.473372, 38.393127, 19.023590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.278303, 38.382492, 19.163000>,  <28.953188, 38.364765, 19.395350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278303, 38.382492, 19.163000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547926, -0.280521, -0.788089,
		-0.197874, 0.958824, -0.203720,
		0.812787, 0.044318, -0.580873,
		29.522139, 38.395786, 18.988739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800726, 38.802284, 18.807819>,  <28.953188, 38.364765, 19.395350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800726, 38.802284, 18.807819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.114294, 38.594009, 18.672556>,  <29.302435, 38.469044, 18.591398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.114294, 38.594009, 18.672556>,  <28.800726, 38.802284, 18.807819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114294, 38.594009, 18.672556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568145, -0.381979, -0.728906,
		0.250364, 0.763528, -0.595268,
		0.783919, -0.520690, -0.338161,
		29.349470, 38.437801, 18.571108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.877684, 38.918888, 18.070585>,  <28.800726, 38.802284, 18.807819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.877684, 38.918888, 18.070585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.080633, 38.580566, 18.136534>,  <29.202402, 38.377571, 18.176102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.080633, 38.580566, 18.136534>,  <28.877684, 38.918888, 18.070585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.080633, 38.580566, 18.136534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512665, -0.450058, -0.731179,
		0.692637, 0.286458, -0.661963,
		0.507374, -0.845807, 0.164870,
		29.232845, 38.326824, 18.185995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141262, 38.770252, 17.419577>,  <28.877684, 38.918888, 18.070585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141262, 38.770252, 17.419577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.169119, 38.426071, 17.621479>,  <29.185833, 38.219563, 17.742620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.169119, 38.426071, 17.621479>,  <29.141262, 38.770252, 17.419577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169119, 38.426071, 17.621479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418625, -0.484485, -0.768133,
		0.905485, -0.157809, -0.393946,
		0.069643, -0.860448, 0.504756,
		29.190012, 38.167938, 17.772905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408747, 38.249058, 16.964725>,  <29.141262, 38.770252, 17.419577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408747, 38.249058, 16.964725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.225004, 38.059437, 17.265196>,  <29.114759, 37.945663, 17.445478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.225004, 38.059437, 17.265196>,  <29.408747, 38.249058, 16.964725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.225004, 38.059437, 17.265196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544636, -0.517740, -0.659786,
		0.701688, -0.712194, -0.020360,
		-0.459354, -0.474052, 0.751178,
		29.087198, 37.917221, 17.490549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502268, 37.529263, 16.834673>,  <29.408747, 38.249058, 16.964725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502268, 37.529263, 16.834673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.181124, 37.582302, 17.067165>,  <28.988438, 37.614124, 17.206661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.181124, 37.582302, 17.067165>,  <29.502268, 37.529263, 16.834673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181124, 37.582302, 17.067165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563933, -0.485148, -0.668290,
		0.193372, -0.864321, 0.464281,
		-0.802861, 0.132595, 0.581233,
		28.940266, 37.622082, 17.241535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103041, 36.993095, 16.622618>,  <29.502268, 37.529263, 16.834673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103041, 36.993095, 16.622618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.830280, 37.170368, 16.855375>,  <28.666624, 37.276733, 16.995029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.830280, 37.170368, 16.855375>,  <29.103041, 36.993095, 16.622618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830280, 37.170368, 16.855375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730725, -0.377474, -0.568818,
		-0.032440, -0.813082, 0.581245,
		-0.681900, 0.443183, 0.581894,
		28.625710, 37.303322, 17.029943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600212, 36.497417, 16.681936>,  <29.103041, 36.993095, 16.622618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600212, 36.497417, 16.681936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.409887, 36.833878, 16.784748>,  <28.295692, 37.035755, 16.846436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.409887, 36.833878, 16.784748>,  <28.600212, 36.497417, 16.681936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.409887, 36.833878, 16.784748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806140, -0.300186, -0.509928,
		-0.351774, -0.449826, 0.820921,
		-0.475808, 0.841157, 0.257025,
		28.267145, 37.086224, 16.861856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983854, 36.257572, 16.950809>,  <28.600212, 36.497417, 16.681936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983854, 36.257572, 16.950809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.971907, 36.635857, 16.821362>,  <27.964737, 36.862827, 16.743692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.971907, 36.635857, 16.821362>,  <27.983854, 36.257572, 16.950809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.971907, 36.635857, 16.821362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630284, -0.269106, -0.728233,
		-0.775790, 0.182219, 0.604108,
		-0.029871, 0.945716, -0.323619,
		27.962946, 36.919571, 16.724276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229385, 36.256863, 16.878836>,  <27.983854, 36.257572, 16.950809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229385, 36.256863, 16.878836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.412027, 36.553478, 16.682213>,  <27.521612, 36.731449, 16.564240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.412027, 36.553478, 16.682213>,  <27.229385, 36.256863, 16.878836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412027, 36.553478, 16.682213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759285, 0.036843, -0.649714,
		-0.463679, 0.669896, 0.579863,
		0.456605, 0.741540, -0.491559,
		27.549009, 36.775940, 16.534744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.660227, 36.633816, 16.700344>,  <27.229385, 36.256863, 16.878836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.660227, 36.633816, 16.700344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.960543, 36.766064, 16.471607>,  <27.140732, 36.845413, 16.334364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.960543, 36.766064, 16.471607>,  <26.660227, 36.633816, 16.700344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.960543, 36.766064, 16.471607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606971, 0.003793, -0.794715,
		-0.260581, 0.943756, 0.203525,
		0.750789, 0.330622, -0.571844,
		27.185780, 36.865250, 16.300055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432201, 37.250031, 16.276114>,  <26.660227, 36.633816, 16.700344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432201, 37.250031, 16.276114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.746655, 37.141911, 16.053785>,  <26.935326, 37.077038, 15.920388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.746655, 37.141911, 16.053785>,  <26.432201, 37.250031, 16.276114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746655, 37.141911, 16.053785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566873, 0.043018, -0.822681,
		0.246278, 0.961815, -0.119406,
		0.786131, -0.270297, -0.555822,
		26.982494, 37.060822, 15.887039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448477, 37.661728, 15.640313>,  <26.432201, 37.250031, 16.276114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448477, 37.661728, 15.640313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.677031, 37.345943, 15.550624>,  <26.814163, 37.156475, 15.496810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.677031, 37.345943, 15.550624>,  <26.448477, 37.661728, 15.640313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677031, 37.345943, 15.550624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395846, -0.025782, -0.917955,
		0.718906, 0.613263, -0.327235,
		0.571384, -0.789458, -0.224223,
		26.848446, 37.109104, 15.483357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720371, 37.902363, 15.025899>,  <26.448477, 37.661728, 15.640313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720371, 37.902363, 15.025899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.740042, 37.504162, 15.058293>,  <26.751844, 37.265240, 15.077730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.740042, 37.504162, 15.058293>,  <26.720371, 37.902363, 15.025899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.740042, 37.504162, 15.058293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450126, -0.094471, -0.887954,
		0.891610, 0.007213, -0.452747,
		0.049176, -0.995502, 0.080985,
		26.754795, 37.205513, 15.082589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014933, 37.636654, 14.429787>,  <26.720371, 37.902363, 15.025899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014933, 37.636654, 14.429787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.800030, 37.338783, 14.588186>,  <26.671089, 37.160061, 14.683226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.800030, 37.338783, 14.588186>,  <27.014933, 37.636654, 14.429787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.800030, 37.338783, 14.588186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403401, -0.185449, -0.896034,
		0.740692, -0.641145, -0.200769,
		-0.537255, -0.744676, 0.395999,
		26.638853, 37.115379, 14.706986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164051, 36.949024, 14.056656>,  <27.014933, 37.636654, 14.429787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164051, 36.949024, 14.056656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.798605, 36.951660, 14.219266>,  <26.579336, 36.953243, 14.316832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.798605, 36.951660, 14.219266>,  <27.164051, 36.949024, 14.056656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798605, 36.951660, 14.219266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388331, -0.310320, -0.867698,
		0.120434, -0.950609, 0.286072,
		-0.913616, 0.006590, 0.406525,
		26.524521, 36.953636, 14.341223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963026, 36.300823, 14.126936>,  <27.164051, 36.949024, 14.056656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963026, 36.300823, 14.126936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.673550, 36.572052, 14.075571>,  <26.499865, 36.734791, 14.044752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.673550, 36.572052, 14.075571>,  <26.963026, 36.300823, 14.126936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673550, 36.572052, 14.075571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065304, -0.252520, -0.965386,
		-0.687027, -0.690256, 0.227027,
		-0.723691, 0.678071, -0.128412,
		26.456442, 36.775475, 14.037047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818741, 35.688572, 13.661831>,  <26.963026, 36.300823, 14.126936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818741, 35.688572, 13.661831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.734550, 35.832012, 14.025613>,  <26.684036, 35.918076, 14.243882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.734550, 35.832012, 14.025613>,  <26.818741, 35.688572, 13.661831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734550, 35.832012, 14.025613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962055, 0.089256, -0.257845,
		-0.173637, -0.929215, 0.326205,
		-0.210478, 0.358599, 0.909454,
		26.671408, 35.939590, 14.298449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974901, 34.914341, 13.915814>,  <26.818741, 35.688572, 13.661831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974901, 34.914341, 13.915814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.180445, 34.589821, 13.804289>,  <27.303770, 34.395107, 13.737373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.180445, 34.589821, 13.804289>,  <26.974901, 34.914341, 13.915814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180445, 34.589821, 13.804289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734097, 0.247674, 0.632265,
		-0.443903, -0.529571, 0.722844,
		0.513859, -0.811303, -0.278814,
		27.334602, 34.346432, 13.720645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.117638, 34.482628, 14.458134>,  <26.974901, 34.914341, 13.915814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.117638, 34.482628, 14.458134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.397469, 34.404751, 14.183125>,  <27.565367, 34.358025, 14.018119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.397469, 34.404751, 14.183125>,  <27.117638, 34.482628, 14.458134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397469, 34.404751, 14.183125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714139, 0.157598, 0.682033,
		-0.024431, -0.968122, 0.249287,
		0.699578, -0.194688, -0.687523,
		27.607342, 34.346344, 13.976868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.560387, 33.994179, 14.628597>,  <27.117638, 34.482628, 14.458134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.560387, 33.994179, 14.628597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.783922, 34.197865, 14.366787>,  <27.918043, 34.320076, 14.209701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.783922, 34.197865, 14.366787>,  <27.560387, 33.994179, 14.628597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783922, 34.197865, 14.366787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652686, 0.216812, 0.725943,
		0.511567, -0.832885, -0.211191,
		0.558838, 0.509210, -0.654526,
		27.951574, 34.350628, 14.170429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251711, 33.815323, 14.770353>,  <27.560387, 33.994179, 14.628597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251711, 33.815323, 14.770353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.275326, 34.154285, 14.559293>,  <28.289495, 34.357662, 14.432657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.275326, 34.154285, 14.559293>,  <28.251711, 33.815323, 14.770353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275326, 34.154285, 14.559293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778309, 0.291913, 0.555897,
		0.625100, -0.443494, -0.642311,
		0.059038, 0.847408, -0.527650,
		28.293037, 34.408508, 14.400998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936596, 33.960903, 14.746699>,  <28.251711, 33.815323, 14.770353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936596, 33.960903, 14.746699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.802708, 34.312244, 14.610195>,  <28.722374, 34.523048, 14.528293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.802708, 34.312244, 14.610195>,  <28.936596, 33.960903, 14.746699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802708, 34.312244, 14.610195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684006, 0.475569, 0.553146,
		0.648150, -0.048276, -0.759981,
		-0.334720, 0.878353, -0.341261,
		28.702291, 34.575748, 14.507817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562647, 34.393959, 14.609754>,  <28.936596, 33.960903, 14.746699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562647, 34.393959, 14.609754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.254473, 34.648655, 14.622383>,  <29.069569, 34.801472, 14.629961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.254473, 34.648655, 14.622383>,  <29.562647, 34.393959, 14.609754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254473, 34.648655, 14.622383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545541, 0.632841, 0.549452,
		0.329876, 0.440541, -0.834929,
		-0.770433, 0.636738, 0.031575,
		29.023342, 34.839676, 14.631855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813536, 34.895226, 14.257149>,  <29.562647, 34.393959, 14.609754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813536, 34.895226, 14.257149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.536303, 35.026527, 14.513863>,  <29.369963, 35.105309, 14.667891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.536303, 35.026527, 14.513863>,  <29.813536, 34.895226, 14.257149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536303, 35.026527, 14.513863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677558, 0.600562, 0.424547,
		-0.246072, 0.729092, -0.638650,
		-0.693083, 0.328253, 0.641784,
		29.328379, 35.125004, 14.706398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.922045, 35.635712, 14.342115>,  <29.813536, 34.895226, 14.257149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.922045, 35.635712, 14.342115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.727184, 35.514988, 14.669919>,  <29.610268, 35.442554, 14.866601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.727184, 35.514988, 14.669919>,  <29.922045, 35.635712, 14.342115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727184, 35.514988, 14.669919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725609, 0.382307, 0.572130,
		-0.485978, 0.873357, 0.032754,
		-0.487152, -0.301810, 0.819508,
		29.581039, 35.424446, 14.915771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880018, 36.186073, 14.784310>,  <29.922045, 35.635712, 14.342115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880018, 36.186073, 14.784310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.777985, 35.919643, 15.064676>,  <29.716764, 35.759785, 15.232896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.777985, 35.919643, 15.064676>,  <29.880018, 36.186073, 14.784310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777985, 35.919643, 15.064676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574669, 0.478543, 0.663892,
		-0.777617, 0.572142, 0.260702,
		-0.255083, -0.666071, 0.700915,
		29.701460, 35.719822, 15.274951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621492, 36.619106, 15.412676>,  <29.880018, 36.186073, 14.784310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621492, 36.619106, 15.412676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.764902, 36.257465, 15.505685>,  <29.850948, 36.040482, 15.561490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.764902, 36.257465, 15.505685>,  <29.621492, 36.619106, 15.412676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764902, 36.257465, 15.505685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707800, 0.425670, 0.563758,
		-0.608671, -0.037541, 0.792534,
		0.358522, -0.904099, 0.232522,
		29.872459, 35.986237, 15.575441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616177, 36.721153, 16.118774>,  <29.621492, 36.619106, 15.412676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616177, 36.721153, 16.118774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.833246, 36.385971, 16.095701>,  <29.963488, 36.184860, 16.081858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.833246, 36.385971, 16.095701>,  <29.616177, 36.721153, 16.118774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833246, 36.385971, 16.095701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566427, 0.314389, 0.761788,
		-0.620212, -0.446076, 0.645254,
		0.542676, -0.837959, -0.057682,
		29.996050, 36.134583, 16.078396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491772, 36.421810, 16.841537>,  <29.616177, 36.721153, 16.118774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491772, 36.421810, 16.841537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.813543, 36.252094, 16.675224>,  <30.006605, 36.150265, 16.575438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.813543, 36.252094, 16.675224>,  <29.491772, 36.421810, 16.841537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813543, 36.252094, 16.675224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495376, 0.092817, 0.863706,
		-0.327870, -0.900757, 0.284847,
		0.804428, -0.424290, -0.415781,
		30.054873, 36.124805, 16.550489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.788713, 36.048710, 17.350132>,  <29.491772, 36.421810, 16.841537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.788713, 36.048710, 17.350132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.086245, 36.107105, 17.089237>,  <30.264763, 36.142143, 16.932701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.086245, 36.107105, 17.089237>,  <29.788713, 36.048710, 17.350132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086245, 36.107105, 17.089237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574553, 0.358920, 0.735571,
		0.341479, -0.921882, 0.183101,
		0.743828, 0.145981, -0.652234,
		30.309393, 36.150902, 16.893566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265701, 35.717579, 17.682951>,  <29.788713, 36.048710, 17.350132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265701, 35.717579, 17.682951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427074, 35.978786, 17.426575>,  <30.523899, 36.135513, 17.272749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.427074, 35.978786, 17.426575>,  <30.265701, 35.717579, 17.682951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427074, 35.978786, 17.426575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639335, 0.299939, 0.708016,
		0.654593, -0.695413, -0.296494,
		0.403434, 0.653021, -0.640940,
		30.548105, 36.174694, 17.234293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983940, 35.483883, 17.598774>,  <30.265701, 35.717579, 17.682951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983940, 35.483883, 17.598774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.979898, 35.872948, 17.505978>,  <30.977474, 36.106388, 17.450300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.979898, 35.872948, 17.505978>,  <30.983940, 35.483883, 17.598774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979898, 35.872948, 17.505978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746085, 0.161803, 0.645892,
		0.665774, -0.166561, -0.727326,
		-0.010103, 0.972665, -0.231992,
		30.976868, 36.164749, 17.436380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717691, 35.738831, 17.627464>,  <30.983940, 35.483883, 17.598774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717691, 35.738831, 17.627464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.477528, 36.057713, 17.652687>,  <31.333429, 36.249043, 17.667822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.477528, 36.057713, 17.652687>,  <31.717691, 35.738831, 17.627464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477528, 36.057713, 17.652687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530582, 0.338124, 0.777274,
		0.598322, 0.500142, -0.625994,
		-0.600411, 0.797201, 0.063059,
		31.297403, 36.296871, 17.671604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120529, 36.358505, 17.428461>,  <31.717691, 35.738831, 17.627464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120529, 36.358505, 17.428461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.811232, 36.450600, 17.664797>,  <31.625654, 36.505856, 17.806599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.811232, 36.450600, 17.664797>,  <32.120529, 36.358505, 17.428461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811232, 36.450600, 17.664797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629573, 0.390004, 0.671963,
		-0.075722, 0.891566, -0.446515,
		-0.773242, 0.230232, 0.590838,
		31.579260, 36.519669, 17.842049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467812, 36.851826, 17.757626>,  <32.120529, 36.358505, 17.428461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467812, 36.851826, 17.757626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.137741, 36.818741, 17.981140>,  <31.939699, 36.798889, 18.115250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.137741, 36.818741, 17.981140>,  <32.467812, 36.851826, 17.757626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137741, 36.818741, 17.981140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557004, 0.045425, 0.829266,
		-0.093977, 0.995537, 0.008590,
		-0.825175, -0.082717, 0.558787,
		31.890188, 36.793926, 18.148777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491299, 37.462124, 18.109066>,  <32.467812, 36.851826, 17.757626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491299, 37.462124, 18.109066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256245, 37.219196, 18.322926>,  <32.115211, 37.073441, 18.451242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.256245, 37.219196, 18.322926>,  <32.491299, 37.462124, 18.109066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256245, 37.219196, 18.322926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357464, 0.397933, 0.844908,
		-0.725882, 0.687616, -0.016746,
		-0.587636, -0.607317, 0.534650,
		32.079952, 37.037003, 18.483320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142250, 37.923496, 18.633345>,  <32.491299, 37.462124, 18.109066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142250, 37.923496, 18.633345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145130, 37.545788, 18.764982>,  <32.146858, 37.319164, 18.843966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.145130, 37.545788, 18.764982>,  <32.142250, 37.923496, 18.633345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.145130, 37.545788, 18.764982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410539, 0.302879, 0.860071,
		-0.911815, 0.128916, 0.389839,
		0.007198, -0.944270, 0.329095,
		32.147289, 37.262508, 18.863710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.771383, 41.921833, 22.600561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.893864, 41.555897, 22.705872>,  <31.967352, 41.336334, 22.769058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.893864, 41.555897, 22.705872>,  <31.771383, 41.921833, 22.600561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893864, 41.555897, 22.705872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512700, 0.391504, 0.764110,
		-0.802110, -0.098987, 0.588915,
		0.306199, -0.914837, 0.263278,
		31.985723, 41.281445, 22.784855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622351, 41.812607, 23.285788>,  <31.771383, 41.921833, 22.600561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622351, 41.812607, 23.285788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.920483, 41.566521, 23.183027>,  <32.099361, 41.418869, 23.121370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.920483, 41.566521, 23.183027>,  <31.622351, 41.812607, 23.285788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920483, 41.566521, 23.183027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497815, 0.257239, 0.828256,
		-0.443469, -0.745212, 0.497990,
		0.745329, -0.615213, -0.256900,
		32.144081, 41.381958, 23.105957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832714, 41.549767, 23.908628>,  <31.622351, 41.812607, 23.285788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832714, 41.549767, 23.908628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.141685, 41.447540, 23.676065>,  <32.327068, 41.386204, 23.536528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.141685, 41.447540, 23.676065>,  <31.832714, 41.549767, 23.908628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141685, 41.447540, 23.676065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629088, 0.182227, 0.755673,
		-0.087179, -0.949461, 0.301534,
		0.772430, -0.255571, -0.581408,
		32.373413, 41.370869, 23.501642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189735, 41.045692, 24.254272>,  <31.832714, 41.549767, 23.908628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189735, 41.045692, 24.254272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.442451, 41.211845, 23.992495>,  <32.594082, 41.311535, 23.835428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.442451, 41.211845, 23.992495>,  <32.189735, 41.045692, 24.254272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442451, 41.211845, 23.992495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631057, 0.214646, 0.745449,
		0.450117, -0.883962, -0.126515,
		0.631793, 0.415378, -0.654446,
		32.631989, 41.336460, 23.796162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925240, 40.818775, 24.448278>,  <32.189735, 41.045692, 24.254272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925240, 40.818775, 24.448278> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.983376, 41.142300, 24.220348>,  <33.018257, 41.336414, 24.083591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.983376, 41.142300, 24.220348>,  <32.925240, 40.818775, 24.448278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983376, 41.142300, 24.220348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722631, 0.306608, 0.619512,
		0.675782, -0.501809, -0.539913,
		0.145336, 0.808813, -0.569823,
		33.026978, 41.384945, 24.049402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596527, 40.841965, 24.453953>,  <32.925240, 40.818775, 24.448278>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596527, 40.841965, 24.453953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.524296, 41.212151, 24.320747>,  <33.480957, 41.434261, 24.240824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.524296, 41.212151, 24.320747>,  <33.596527, 40.841965, 24.453953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524296, 41.212151, 24.320747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634887, 0.368274, 0.679185,
		0.751205, -0.088780, -0.654071,
		-0.180580, 0.925469, -0.333015,
		33.470123, 41.489792, 24.220842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286907, 41.173050, 24.338900>,  <33.596527, 40.841965, 24.453953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286907, 41.173050, 24.338900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.032631, 41.480579, 24.366657>,  <33.880066, 41.665096, 24.383312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.032631, 41.480579, 24.366657>,  <34.286907, 41.173050, 24.338900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032631, 41.480579, 24.366657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592330, 0.428157, 0.682515,
		0.495018, 0.474972, -0.727570,
		-0.635690, 0.768819, 0.069395,
		33.841923, 41.711224, 24.387476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641525, 41.807892, 24.394548>,  <34.286907, 41.173050, 24.338900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641525, 41.807892, 24.394548> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.292736, 41.887211, 24.573584>,  <34.083462, 41.934803, 24.681005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.292736, 41.887211, 24.573584>,  <34.641525, 41.807892, 24.394548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292736, 41.887211, 24.573584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482443, 0.503253, 0.716928,
		-0.083088, 0.841080, -0.534490,
		-0.871978, 0.198293, 0.447588,
		34.031143, 41.946697, 24.707859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704281, 42.449833, 24.677616>,  <34.641525, 41.807892, 24.394548>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704281, 42.449833, 24.677616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.417095, 42.286533, 24.903131>,  <34.244785, 42.188553, 25.038441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.417095, 42.286533, 24.903131>,  <34.704281, 42.449833, 24.677616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417095, 42.286533, 24.903131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398642, 0.422814, 0.813826,
		-0.570625, 0.809047, -0.140819,
		-0.717964, -0.408253, 0.563788,
		34.201706, 42.164059, 25.072268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636280, 42.913082, 25.218126>,  <34.704281, 42.449833, 24.677616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636280, 42.913082, 25.218126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.441208, 42.589218, 25.348740>,  <34.324165, 42.394901, 25.427107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.441208, 42.589218, 25.348740>,  <34.636280, 42.913082, 25.218126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441208, 42.589218, 25.348740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151632, 0.289785, 0.945004,
		-0.859753, 0.510372, -0.018553,
		-0.487680, -0.809657, 0.326532,
		34.294903, 42.346321, 25.446699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100071, 43.210995, 25.613979>,  <34.636280, 42.913082, 25.218126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100071, 43.210995, 25.613979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.159130, 42.834572, 25.735708>,  <34.194565, 42.608719, 25.808746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.159130, 42.834572, 25.735708>,  <34.100071, 43.210995, 25.613979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159130, 42.834572, 25.735708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005312, 0.308446, 0.951227,
		-0.989026, -0.138826, 0.050539,
		0.147644, -0.941057, 0.304324,
		34.203423, 42.552254, 25.827005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623253, 42.985622, 26.056625>,  <34.100071, 43.210995, 25.613979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623253, 42.985622, 26.056625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.941273, 42.754993, 26.131948>,  <34.132084, 42.616615, 26.177143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.941273, 42.754993, 26.131948>,  <33.623253, 42.985622, 26.056625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941273, 42.754993, 26.131948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206977, 0.549726, 0.809297,
		-0.570133, -0.604459, 0.556397,
		0.795053, -0.576568, 0.188308,
		34.179790, 42.582024, 26.188440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735561, 42.798203, 26.842239>,  <33.623253, 42.985622, 26.056625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735561, 42.798203, 26.842239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.076664, 42.792679, 26.633387>,  <34.281326, 42.789364, 26.508074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.076664, 42.792679, 26.633387>,  <33.735561, 42.798203, 26.842239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076664, 42.792679, 26.633387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484835, 0.392776, 0.781449,
		0.194291, -0.919531, 0.341635,
		0.852752, -0.013808, -0.522134,
		34.332489, 42.788536, 26.476748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946655, 42.924625, 27.363035>,  <33.735561, 42.798203, 26.842239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946655, 42.924625, 27.363035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.216846, 42.960712, 27.070297>,  <34.378960, 42.982365, 26.894655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.216846, 42.960712, 27.070297>,  <33.946655, 42.924625, 27.363035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216846, 42.960712, 27.070297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535410, 0.622424, 0.570899,
		0.507019, -0.777464, 0.372131,
		0.675476, 0.090214, -0.731843,
		34.419491, 42.987778, 26.850744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089901, 42.249710, 27.695671>,  <33.946655, 42.924625, 27.363035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089901, 42.249710, 27.695671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.909882, 42.091354, 28.015854>,  <33.801868, 41.996342, 28.207964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.909882, 42.091354, 28.015854>,  <34.089901, 42.249710, 27.695671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909882, 42.091354, 28.015854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539635, -0.593625, -0.596996,
		0.711513, -0.700631, 0.053526,
		-0.450048, -0.395886, 0.800457,
		33.774868, 41.972588, 28.255991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905102, 41.587173, 27.511015>,  <34.089901, 42.249710, 27.695671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905102, 41.587173, 27.511015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.699505, 41.594990, 27.854044>,  <33.576145, 41.599682, 28.059860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.699505, 41.594990, 27.854044>,  <33.905102, 41.587173, 27.511015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699505, 41.594990, 27.854044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663414, -0.642815, -0.382976,
		0.543774, -0.765772, 0.343370,
		-0.513995, 0.019544, 0.857570,
		33.545307, 41.600853, 28.111315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756340, 40.870056, 27.734657>,  <33.905102, 41.587173, 27.511015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756340, 40.870056, 27.734657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.486198, 41.109283, 27.907265>,  <33.324112, 41.252819, 28.010828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.486198, 41.109283, 27.907265>,  <33.756340, 40.870056, 27.734657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486198, 41.109283, 27.907265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720170, -0.660883, -0.211159,
		0.158895, -0.453374, 0.877043,
		-0.675357, 0.598068, 0.431517,
		33.283592, 41.288704, 28.036720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308815, 40.402096, 28.019028>,  <33.756340, 40.870056, 27.734657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308815, 40.402096, 28.019028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.081032, 40.730816, 28.011448>,  <32.944363, 40.928047, 28.006901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.081032, 40.730816, 28.011448>,  <33.308815, 40.402096, 28.019028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081032, 40.730816, 28.011448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718701, -0.508943, -0.473757,
		-0.398978, -0.256166, 0.880452,
		-0.569460, 0.821800, -0.018950,
		32.910194, 40.977356, 28.005762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586777, 40.135445, 28.194811>,  <33.308815, 40.402096, 28.019028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586777, 40.135445, 28.194811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.536922, 40.482101, 28.001564>,  <32.507008, 40.690094, 27.885616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.536922, 40.482101, 28.001564>,  <32.586777, 40.135445, 28.194811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536922, 40.482101, 28.001564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924410, -0.278321, -0.260775,
		-0.360459, 0.414096, 0.835819,
		-0.124640, 0.866639, -0.483118,
		32.499531, 40.742092, 27.856628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942101, 40.408905, 28.367397>,  <32.586777, 40.135445, 28.194811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942101, 40.408905, 28.367397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.024860, 40.601677, 28.026825>,  <32.074516, 40.717342, 27.822481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.024860, 40.601677, 28.026825>,  <31.942101, 40.408905, 28.367397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024860, 40.601677, 28.026825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939227, -0.145833, -0.310781,
		-0.273943, 0.863986, 0.422473,
		0.206900, 0.481934, -0.851430,
		32.086929, 40.746258, 27.771397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402010, 40.739113, 28.317379>,  <31.942101, 40.408905, 28.367397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402010, 40.739113, 28.317379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.519308, 40.726833, 27.935162>,  <31.589687, 40.719467, 27.705832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.519308, 40.726833, 27.935162>,  <31.402010, 40.739113, 28.317379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519308, 40.726833, 27.935162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928550, -0.247091, -0.277022,
		-0.227603, 0.968506, -0.100961,
		0.293244, -0.030696, -0.955545,
		31.607281, 40.717625, 27.648499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841291, 41.130363, 27.809080>,  <31.402010, 40.739113, 28.317379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841291, 41.130363, 27.809080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.075888, 40.901768, 27.579496>,  <31.216644, 40.764610, 27.441746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.075888, 40.901768, 27.579496>,  <30.841291, 41.130363, 27.809080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075888, 40.901768, 27.579496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809955, -0.415463, -0.413960,
		-0.001886, 0.707666, -0.706544,
		0.586489, -0.571488, -0.573962,
		31.251835, 40.730320, 27.407309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419254, 41.117050, 27.107983>,  <30.841291, 41.130363, 27.809080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419254, 41.117050, 27.107983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.673948, 40.809315, 27.087288>,  <30.826765, 40.624672, 27.074871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.673948, 40.809315, 27.087288>,  <30.419254, 41.117050, 27.107983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673948, 40.809315, 27.087288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717463, -0.566543, -0.405310,
		0.282512, 0.295195, -0.912714,
		0.636737, -0.769343, -0.051736,
		30.864969, 40.578510, 27.071768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589945, 40.947338, 26.371374>,  <30.419254, 41.117050, 27.107983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589945, 40.947338, 26.371374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.666239, 40.622715, 26.592279>,  <30.712015, 40.427940, 26.724823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.666239, 40.622715, 26.592279>,  <30.589945, 40.947338, 26.371374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666239, 40.622715, 26.592279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447426, -0.572627, -0.686956,
		0.873744, -0.116068, -0.472334,
		0.190737, -0.811558, 0.552261,
		30.723459, 40.379246, 26.757957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654434, 40.570679, 25.821804>,  <30.589945, 40.947338, 26.371374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654434, 40.570679, 25.821804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.591059, 40.323818, 26.130096>,  <30.553034, 40.175701, 26.315071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.591059, 40.323818, 26.130096>,  <30.654434, 40.570679, 25.821804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591059, 40.323818, 26.130096> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511894, -0.616150, -0.598601,
		0.844312, -0.489372, -0.218295,
		-0.158436, -0.617150, 0.770729,
		30.543528, 40.138672, 26.361315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.895531, 39.958748, 25.573477>,  <30.654434, 40.570679, 25.821804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.895531, 39.958748, 25.573477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.633593, 39.870270, 25.862543>,  <30.476429, 39.817181, 26.035982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.633593, 39.870270, 25.862543>,  <30.895531, 39.958748, 25.573477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633593, 39.870270, 25.862543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457759, -0.644766, -0.612155,
		0.601359, -0.731675, 0.320966,
		-0.654846, -0.221200, 0.722667,
		30.437140, 39.803909, 26.079344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894361, 39.250847, 25.569578>,  <30.895531, 39.958748, 25.573477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894361, 39.250847, 25.569578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.561474, 39.359062, 25.763165>,  <30.361742, 39.423992, 25.879316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.561474, 39.359062, 25.763165>,  <30.894361, 39.250847, 25.569578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561474, 39.359062, 25.763165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506391, -0.726341, -0.464755,
		0.225793, -0.631854, 0.741470,
		-0.832218, 0.270535, 0.483968,
		30.311808, 39.440224, 25.908354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.593933, 38.680958, 25.576479>,  <30.894361, 39.250847, 25.569578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.593933, 38.680958, 25.576479> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.293657, 38.933830, 25.653225>,  <30.113491, 39.085552, 25.699272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.293657, 38.933830, 25.653225>,  <30.593933, 38.680958, 25.576479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293657, 38.933830, 25.653225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620895, -0.575882, -0.531835,
		-0.225724, -0.518371, 0.824827,
		-0.750692, 0.632179, 0.191864,
		30.068449, 39.123486, 25.710785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428560, 38.150673, 26.071991>,  <30.593933, 38.680958, 25.576479>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428560, 38.150673, 26.071991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.398634, 37.776905, 26.211287>,  <30.380678, 37.552647, 26.294865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.398634, 37.776905, 26.211287>,  <30.428560, 38.150673, 26.071991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398634, 37.776905, 26.211287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585471, 0.241535, 0.773876,
		-0.807234, 0.261782, 0.529002,
		-0.074814, -0.934415, 0.348241,
		30.376190, 37.496582, 26.315760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344042, 38.341492, 26.687428>,  <30.428560, 38.150673, 26.071991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344042, 38.341492, 26.687428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.441887, 37.954105, 26.706360>,  <30.500593, 37.721672, 26.717718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.441887, 37.954105, 26.706360>,  <30.344042, 38.341492, 26.687428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441887, 37.954105, 26.706360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502460, 0.168354, 0.848052,
		-0.829277, -0.183661, 0.527796,
		0.244611, -0.968466, 0.047330,
		30.515270, 37.663567, 26.720558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182379, 38.078369, 27.380920>,  <30.344042, 38.341492, 26.687428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182379, 38.078369, 27.380920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.449148, 37.802349, 27.268459>,  <30.609211, 37.636738, 27.200983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.449148, 37.802349, 27.268459>,  <30.182379, 38.078369, 27.380920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449148, 37.802349, 27.268459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447670, 0.069434, 0.891499,
		-0.595654, -0.720427, 0.355220,
		0.666925, -0.690046, -0.281155,
		30.649225, 37.595337, 27.184113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323580, 37.654987, 28.049618>,  <30.182379, 38.078369, 27.380920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323580, 37.654987, 28.049618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.620918, 37.635429, 27.782770>,  <30.799320, 37.623695, 27.622662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.620918, 37.635429, 27.782770>,  <30.323580, 37.654987, 28.049618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620918, 37.635429, 27.782770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664484, 0.168496, 0.728059,
		0.076807, -0.984489, 0.157741,
		0.743345, -0.048897, -0.667119,
		30.843922, 37.620762, 27.582634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821795, 37.327805, 28.414165>,  <30.323580, 37.654987, 28.049618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821795, 37.327805, 28.414165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.042101, 37.475410, 28.114702>,  <31.174284, 37.563972, 27.935024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.042101, 37.475410, 28.114702>,  <30.821795, 37.327805, 28.414165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042101, 37.475410, 28.114702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739901, 0.199244, 0.642533,
		0.386268, -0.907817, -0.163297,
		0.550766, 0.369014, -0.748656,
		31.207331, 37.586113, 27.890106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577812, 36.920116, 28.324890>,  <30.821795, 37.327805, 28.414165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577812, 36.920116, 28.324890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.611315, 37.287907, 28.171240>,  <31.631416, 37.508579, 28.079050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.611315, 37.287907, 28.171240>,  <31.577812, 36.920116, 28.324890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611315, 37.287907, 28.171240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830785, 0.148428, 0.536438,
		0.550256, -0.364056, -0.751453,
		0.083757, 0.919474, -0.384126,
		31.636442, 37.563747, 28.056002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357700, 36.985779, 28.186241>,  <31.577812, 36.920116, 28.324890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357700, 36.985779, 28.186241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.181839, 37.342995, 28.147917>,  <32.076321, 37.557323, 28.124922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.181839, 37.342995, 28.147917>,  <32.357700, 36.985779, 28.186241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181839, 37.342995, 28.147917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676592, 0.399462, 0.618589,
		0.590698, 0.207143, -0.779851,
		-0.439657, 0.893041, -0.095810,
		32.049942, 37.610909, 28.119173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846920, 37.504482, 28.001190>,  <32.357700, 36.985779, 28.186241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846920, 37.504482, 28.001190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.559811, 37.702908, 28.196627>,  <32.387543, 37.821964, 28.313889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.559811, 37.702908, 28.196627>,  <32.846920, 37.504482, 28.001190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559811, 37.702908, 28.196627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675693, 0.326912, 0.660732,
		0.168040, 0.804394, -0.569836,
		-0.717775, 0.496064, 0.488589,
		32.344479, 37.851727, 28.343203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128300, 38.120781, 28.034460>,  <32.846920, 37.504482, 28.001190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128300, 38.120781, 28.034460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.837425, 38.127132, 28.308964>,  <32.662903, 38.130943, 28.473665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.837425, 38.127132, 28.308964>,  <33.128300, 38.120781, 28.034460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837425, 38.127132, 28.308964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663683, 0.271569, 0.696976,
		-0.175297, 0.962288, -0.208021,
		-0.727183, 0.015882, 0.686259,
		32.619270, 38.131897, 28.514841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244759, 38.766335, 28.481316>,  <33.128300, 38.120781, 28.034460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244759, 38.766335, 28.481316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.001816, 38.552406, 28.716291>,  <32.856049, 38.424049, 28.857277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.001816, 38.552406, 28.716291>,  <33.244759, 38.766335, 28.481316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001816, 38.552406, 28.716291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495527, 0.322930, 0.806331,
		-0.620943, 0.780823, 0.068884,
		-0.607356, -0.534820, 0.587440,
		32.819611, 38.391960, 28.892523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043217, 39.151688, 29.145727>,  <33.244759, 38.766335, 28.481316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043217, 39.151688, 29.145727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.992390, 38.762001, 29.220303>,  <32.961891, 38.528191, 29.265047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.992390, 38.762001, 29.220303>,  <33.043217, 39.151688, 29.145727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992390, 38.762001, 29.220303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488313, 0.102165, 0.866668,
		-0.863368, 0.201168, 0.462739,
		-0.127070, -0.974214, 0.186439,
		32.954269, 38.469738, 29.276234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899662, 39.150375, 29.849268>,  <33.043217, 39.151688, 29.145727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899662, 39.150375, 29.849268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.044567, 38.791454, 29.748381>,  <33.131512, 38.576103, 29.687847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.044567, 38.791454, 29.748381>,  <32.899662, 39.150375, 29.849268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044567, 38.791454, 29.748381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419765, -0.084543, 0.903687,
		-0.832203, -0.433247, 0.346029,
		0.362265, -0.897301, -0.252219,
		33.153248, 38.522263, 29.672714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.523764, 36.574745, 24.137218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797594, 36.283337, 24.147053>,  <27.961893, 36.108490, 24.152954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.797594, 36.283337, 24.147053>,  <27.523764, 36.574745, 24.137218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797594, 36.283337, 24.147053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328485, 0.338428, 0.881796,
		-0.650732, -0.595581, 0.470990,
		0.684577, -0.728526, 0.024586,
		28.002968, 36.064777, 24.154428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550022, 36.282574, 24.809437>,  <27.523764, 36.574745, 24.137218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550022, 36.282574, 24.809437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878107, 36.103539, 24.666935>,  <28.074957, 35.996117, 24.581434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878107, 36.103539, 24.666935>,  <27.550022, 36.282574, 24.809437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878107, 36.103539, 24.666935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459609, 0.144803, 0.876237,
		-0.340607, -0.882438, 0.324485,
		0.820211, -0.447589, -0.356255,
		28.124170, 35.969261, 24.560059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811472, 35.844486, 25.289513>,  <27.550022, 36.282574, 24.809437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811472, 35.844486, 25.289513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133192, 35.925087, 25.065907>,  <28.326223, 35.973450, 24.931744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133192, 35.925087, 25.065907>,  <27.811472, 35.844486, 25.289513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133192, 35.925087, 25.065907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500687, 0.276833, 0.820168,
		0.320027, -0.939551, 0.121763,
		0.804298, 0.201511, -0.559015,
		28.374483, 35.985538, 24.898203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388199, 35.481506, 25.581322>,  <27.811472, 35.844486, 25.289513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388199, 35.481506, 25.581322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548018, 35.791504, 25.385464>,  <28.643908, 35.977501, 25.267948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.548018, 35.791504, 25.385464>,  <28.388199, 35.481506, 25.581322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548018, 35.791504, 25.385464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482852, 0.276120, 0.831030,
		0.779242, -0.568461, -0.263883,
		0.399545, 0.774990, -0.489647,
		28.667881, 36.024002, 25.238569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097343, 35.539101, 25.755821>,  <28.388199, 35.481506, 25.581322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097343, 35.539101, 25.755821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045610, 35.904934, 25.602554>,  <29.014570, 36.124432, 25.510595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.045610, 35.904934, 25.602554>,  <29.097343, 35.539101, 25.755821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045610, 35.904934, 25.602554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537827, 0.389336, 0.747770,
		0.833076, -0.109365, -0.542240,
		-0.129333, 0.914580, -0.383165,
		29.006811, 36.179310, 25.487604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810240, 35.886459, 25.711246>,  <29.097343, 35.539101, 25.755821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810240, 35.886459, 25.711246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545555, 36.186356, 25.709499>,  <29.386744, 36.366295, 25.708452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545555, 36.186356, 25.709499>,  <29.810240, 35.886459, 25.711246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545555, 36.186356, 25.709499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645788, 0.572902, 0.504718,
		0.380911, 0.331160, -0.863273,
		-0.661714, 0.749744, -0.004366,
		29.347040, 36.411278, 25.708189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161020, 36.354473, 25.507437>,  <29.810240, 35.886459, 25.711246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161020, 36.354473, 25.507437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863359, 36.568001, 25.668072>,  <29.684763, 36.696117, 25.764454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863359, 36.568001, 25.668072>,  <30.161020, 36.354473, 25.507437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863359, 36.568001, 25.668072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667264, 0.622462, 0.409023,
		-0.031628, 0.572340, -0.819406,
		-0.744150, 0.533824, 0.401589,
		29.640114, 36.728149, 25.788548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345741, 37.005169, 25.357996>,  <30.161020, 36.354473, 25.507437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345741, 37.005169, 25.357996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088461, 37.042984, 25.661930>,  <29.934092, 37.065674, 25.844292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088461, 37.042984, 25.661930>,  <30.345741, 37.005169, 25.357996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.088461, 37.042984, 25.661930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635732, 0.619039, 0.461124,
		-0.426773, 0.779649, -0.458270,
		-0.643202, 0.094542, 0.759837,
		29.895500, 37.071346, 25.889881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108917, 37.787712, 25.539001>,  <30.345741, 37.005169, 25.357996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108917, 37.787712, 25.539001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085701, 37.535408, 25.848522>,  <30.071772, 37.384026, 26.034235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085701, 37.535408, 25.848522>,  <30.108917, 37.787712, 25.539001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085701, 37.535408, 25.848522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586094, 0.605940, 0.537895,
		-0.808162, 0.484741, 0.334516,
		-0.058043, -0.630764, 0.773801,
		30.068289, 37.346180, 26.080662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443192, 38.174423, 25.610010>,  <30.108917, 37.787712, 25.539001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443192, 38.174423, 25.610010> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480053, 38.571766, 25.582464>,  <29.502171, 38.810173, 25.565937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480053, 38.571766, 25.582464>,  <29.443192, 38.174423, 25.610010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480053, 38.571766, 25.582464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660233, 0.009188, -0.751004,
		-0.745385, 0.114673, 0.656697,
		0.092154, 0.993361, -0.068863,
		29.507700, 38.869774, 25.561806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748644, 38.377487, 25.667582>,  <29.443192, 38.174423, 25.610010>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748644, 38.377487, 25.667582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955610, 38.671806, 25.492821>,  <29.079790, 38.848396, 25.387964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955610, 38.671806, 25.492821>,  <28.748644, 38.377487, 25.667582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.955610, 38.671806, 25.492821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615538, -0.034658, -0.787345,
		-0.594468, 0.676315, 0.434979,
		0.517418, 0.735797, -0.436900,
		29.110836, 38.892544, 25.361752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.210760, 38.843773, 25.428831>,  <28.748644, 38.377487, 25.667582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.210760, 38.843773, 25.428831> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533703, 38.933071, 25.210348>,  <28.727468, 38.986649, 25.079258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533703, 38.933071, 25.210348>,  <28.210760, 38.843773, 25.428831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.533703, 38.933071, 25.210348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580099, 0.130874, -0.803963,
		-0.107995, 0.965937, 0.235165,
		0.807355, 0.223244, -0.546205,
		28.775909, 39.000046, 25.046486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.940176, 39.296299, 25.020897>,  <28.210760, 38.843773, 25.428831>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.940176, 39.296299, 25.020897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272642, 39.172462, 24.836153>,  <28.472122, 39.098160, 24.725306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272642, 39.172462, 24.836153>,  <27.940176, 39.296299, 25.020897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272642, 39.172462, 24.836153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455347, 0.097704, -0.884937,
		0.319096, 0.945836, -0.059764,
		0.831166, -0.309593, -0.461861,
		28.521992, 39.079586, 24.697596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.016924, 39.712421, 24.505032>,  <27.940176, 39.296299, 25.020897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.016924, 39.712421, 24.505032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218042, 39.395546, 24.366680>,  <28.338713, 39.205421, 24.283669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218042, 39.395546, 24.366680>,  <28.016924, 39.712421, 24.505032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.218042, 39.395546, 24.366680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460909, 0.092812, -0.882581,
		0.731273, 0.603177, -0.318462,
		0.502795, -0.792189, -0.345880,
		28.368881, 39.157890, 24.262917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995844, 39.857327, 23.802576>,  <28.016924, 39.712421, 24.505032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995844, 39.857327, 23.802576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119764, 39.477745, 23.826256>,  <28.194117, 39.249996, 23.840464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119764, 39.477745, 23.826256>,  <27.995844, 39.857327, 23.802576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.119764, 39.477745, 23.826256> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553534, -0.230632, -0.800255,
		0.773061, 0.215149, -0.596730,
		0.309799, -0.948957, 0.059200,
		28.212704, 39.193058, 23.844015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336153, 39.716496, 23.183187>,  <27.995844, 39.857327, 23.802576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336153, 39.716496, 23.183187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220726, 39.357609, 23.316895>,  <28.151470, 39.142277, 23.397120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220726, 39.357609, 23.316895>,  <28.336153, 39.716496, 23.183187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220726, 39.357609, 23.316895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547191, -0.131947, -0.826542,
		0.785692, -0.421420, -0.452873,
		-0.288566, -0.897215, 0.334267,
		28.134155, 39.088444, 23.417175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389709, 39.152691, 22.607977>,  <28.336153, 39.716496, 23.183187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389709, 39.152691, 22.607977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148338, 38.983879, 22.878611>,  <28.003515, 38.882591, 23.040991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148338, 38.983879, 22.878611>,  <28.389709, 39.152691, 22.607977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148338, 38.983879, 22.878611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629109, -0.269410, -0.729137,
		0.489994, -0.865628, -0.102931,
		-0.603430, -0.422027, 0.676583,
		27.967310, 38.857269, 23.081585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258530, 38.566982, 22.321817>,  <28.389709, 39.152691, 22.607977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258530, 38.566982, 22.321817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959747, 38.619781, 22.582474>,  <27.780478, 38.651459, 22.738867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959747, 38.619781, 22.582474>,  <28.258530, 38.566982, 22.321817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959747, 38.619781, 22.582474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664817, -0.135470, -0.734620,
		-0.008687, -0.981950, 0.188941,
		-0.746956, 0.131993, 0.651640,
		27.735661, 38.659382, 22.777966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838842, 38.096169, 22.062616>,  <28.258530, 38.566982, 22.321817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838842, 38.096169, 22.062616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597668, 38.302898, 22.305716>,  <27.452963, 38.426937, 22.451574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597668, 38.302898, 22.305716>,  <27.838842, 38.096169, 22.062616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597668, 38.302898, 22.305716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714158, -0.010101, -0.699911,
		-0.355595, -0.856029, 0.375188,
		-0.602934, 0.516829, 0.607748,
		27.416788, 38.457947, 22.488041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263557, 37.674782, 22.072187>,  <27.838842, 38.096169, 22.062616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263557, 37.674782, 22.072187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159618, 38.048981, 22.167957>,  <27.097254, 38.273499, 22.225420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159618, 38.048981, 22.167957>,  <27.263557, 37.674782, 22.072187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159618, 38.048981, 22.167957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681601, -0.002054, -0.731721,
		-0.684031, -0.353329, 0.638169,
		-0.259849, 0.935497, 0.239424,
		27.081663, 38.329628, 22.239784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610434, 37.683887, 22.099899>,  <27.263557, 37.674782, 22.072187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610434, 37.683887, 22.099899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662468, 38.078957, 22.065075>,  <26.693689, 38.315998, 22.044180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662468, 38.078957, 22.065075>,  <26.610434, 37.683887, 22.099899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662468, 38.078957, 22.065075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614290, 0.011358, -0.788998,
		-0.778283, 0.156119, 0.608196,
		0.130085, 0.987673, -0.087062,
		26.701494, 38.375259, 22.038956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.930012, 37.990311, 21.984980>,  <26.610434, 37.683887, 22.099899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.930012, 37.990311, 21.984980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187231, 38.252136, 21.825964>,  <26.341562, 38.409229, 21.730555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.187231, 38.252136, 21.825964>,  <25.930012, 37.990311, 21.984980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187231, 38.252136, 21.825964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569481, 0.061638, -0.819690,
		-0.512033, 0.753493, 0.412396,
		0.643051, 0.654560, -0.397539,
		26.380146, 38.448505, 21.706701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.540405, 38.623272, 21.738758>,  <25.930012, 37.990311, 21.984980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.540405, 38.623272, 21.738758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877398, 38.574806, 21.528788>,  <26.079592, 38.545727, 21.402805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877398, 38.574806, 21.528788>,  <25.540405, 38.623272, 21.738758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877398, 38.574806, 21.528788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526864, 0.018073, -0.849758,
		0.112450, 0.992467, -0.048613,
		0.842478, -0.121167, -0.524927,
		26.130140, 38.538456, 21.371309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.723812, 33.713078, 18.397835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416157, 33.933128, 18.527929>,  <32.231564, 34.065159, 18.605986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.416157, 33.933128, 18.527929>,  <32.723812, 33.713078, 18.397835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416157, 33.933128, 18.527929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548401, 0.306845, 0.777883,
		0.328139, 0.776663, -0.537699,
		-0.769143, 0.550128, 0.325235,
		32.185413, 34.098167, 18.625500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012695, 34.294899, 18.612122>,  <32.723812, 33.713078, 18.397835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012695, 34.294899, 18.612122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.654297, 34.352623, 18.780107>,  <32.439259, 34.387257, 18.880899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.654297, 34.352623, 18.780107>,  <33.012695, 34.294899, 18.612122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654297, 34.352623, 18.780107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442225, 0.375954, 0.814307,
		-0.040376, 0.915333, -0.400669,
		-0.895995, 0.144307, 0.419963,
		32.385498, 34.395916, 18.906096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014629, 34.968418, 18.786335>,  <33.012695, 34.294899, 18.612122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014629, 34.968418, 18.786335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.768955, 34.773655, 19.034754>,  <32.621552, 34.656796, 19.183805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.768955, 34.773655, 19.034754>,  <33.014629, 34.968418, 18.786335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768955, 34.773655, 19.034754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493734, 0.376840, 0.783721,
		-0.615637, 0.787979, 0.008956,
		-0.614181, -0.486910, 0.621048,
		32.584702, 34.627583, 19.221067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689606, 35.421307, 19.185219>,  <33.014629, 34.968418, 18.786335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689606, 35.421307, 19.185219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.676075, 35.087368, 19.404997>,  <32.667957, 34.887005, 19.536863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.676075, 35.087368, 19.404997>,  <32.689606, 35.421307, 19.185219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676075, 35.087368, 19.404997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359928, 0.502693, 0.785972,
		-0.932367, 0.224349, 0.283478,
		-0.033830, -0.834846, 0.549443,
		32.665928, 34.836914, 19.569830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718422, 35.708523, 19.863142>,  <32.689606, 35.421307, 19.185219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718422, 35.708523, 19.863142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.774437, 35.321510, 19.947313>,  <32.808048, 35.089302, 19.997816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.774437, 35.321510, 19.947313>,  <32.718422, 35.708523, 19.863142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774437, 35.321510, 19.947313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405105, 0.249907, 0.879452,
		-0.903481, -0.037915, 0.426948,
		0.140041, -0.967527, 0.210427,
		32.816448, 35.031254, 20.010441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424900, 35.587440, 20.522413>,  <32.718422, 35.708523, 19.863142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424900, 35.587440, 20.522413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.682541, 35.285221, 20.474623>,  <32.837124, 35.103889, 20.445950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.682541, 35.285221, 20.474623>,  <32.424900, 35.587440, 20.522413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.682541, 35.285221, 20.474623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298916, 0.104837, 0.948503,
		-0.704119, -0.646645, 0.293373,
		0.644101, -0.755553, -0.119475,
		32.875771, 35.058556, 20.438780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326462, 35.081512, 21.068186>,  <32.424900, 35.587440, 20.522413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326462, 35.081512, 21.068186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.693413, 34.995190, 20.934410>,  <32.913582, 34.943398, 20.854145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.693413, 34.995190, 20.934410>,  <32.326462, 35.081512, 21.068186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693413, 34.995190, 20.934410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334208, -0.038694, 0.941705,
		-0.216168, -0.975669, 0.036627,
		0.917375, -0.215807, -0.334441,
		32.968624, 34.930447, 20.834078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.475025, 34.645058, 21.564968>,  <32.326462, 35.081512, 21.068186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.475025, 34.645058, 21.564968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.810844, 34.787300, 21.400675>,  <33.012337, 34.872646, 21.302099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.810844, 34.787300, 21.400675>,  <32.475025, 34.645058, 21.564968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810844, 34.787300, 21.400675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451265, -0.035474, 0.891685,
		0.302518, -0.933963, -0.190255,
		0.839549, 0.355606, -0.410733,
		33.062710, 34.893982, 21.277454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020004, 34.290909, 21.898174>,  <32.475025, 34.645058, 21.564968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020004, 34.290909, 21.898174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.188168, 34.617191, 21.739239>,  <33.289066, 34.812962, 21.643877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.188168, 34.617191, 21.739239>,  <33.020004, 34.290909, 21.898174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188168, 34.617191, 21.739239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575622, 0.098730, 0.811734,
		0.701367, -0.569977, -0.428032,
		0.420410, 0.815708, -0.397337,
		33.314289, 34.861904, 21.620037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774708, 34.428642, 22.151934>,  <33.020004, 34.290909, 21.898174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774708, 34.428642, 22.151934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.681644, 34.804901, 22.053101>,  <33.625805, 35.030655, 21.993801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.681644, 34.804901, 22.053101>,  <33.774708, 34.428642, 22.151934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681644, 34.804901, 22.053101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631223, 0.339326, 0.697435,
		0.739883, 0.006301, -0.672706,
		-0.232662, 0.940648, -0.247084,
		33.611847, 35.087097, 21.978975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303459, 34.782913, 22.475748>,  <33.774708, 34.428642, 22.151934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303459, 34.782913, 22.475748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.098709, 35.095963, 22.334055>,  <33.975861, 35.283794, 22.249039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.098709, 35.095963, 22.334055>,  <34.303459, 34.782913, 22.475748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098709, 35.095963, 22.334055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571788, 0.618131, 0.539418,
		0.641126, 0.073567, -0.763902,
		-0.511875, 0.782625, -0.354235,
		33.945148, 35.330750, 22.227785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803608, 35.239433, 22.364243>,  <34.303459, 34.782913, 22.475748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803608, 35.239433, 22.364243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.464264, 35.446671, 22.407818>,  <34.260658, 35.571014, 22.433962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.464264, 35.446671, 22.407818>,  <34.803608, 35.239433, 22.364243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464264, 35.446671, 22.407818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473401, 0.650230, 0.594216,
		0.237027, 0.555678, -0.796894,
		-0.848357, 0.518096, 0.108937,
		34.209759, 35.602100, 22.440498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950241, 35.945076, 22.141148>,  <34.803608, 35.239433, 22.364243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950241, 35.945076, 22.141148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.656212, 35.922764, 22.411421>,  <34.479794, 35.909378, 22.573586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.656212, 35.922764, 22.411421>,  <34.950241, 35.945076, 22.141148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656212, 35.922764, 22.411421> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468753, 0.678218, 0.565942,
		-0.489828, 0.732741, -0.472397,
		-0.735077, -0.055777, 0.675685,
		34.435688, 35.906033, 22.614126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829536, 36.615597, 22.535908>,  <34.950241, 35.945076, 22.141148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829536, 36.615597, 22.535908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.638874, 36.355679, 22.772741>,  <34.524479, 36.199726, 22.914841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.638874, 36.355679, 22.772741>,  <34.829536, 36.615597, 22.535908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638874, 36.355679, 22.772741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461648, 0.388151, 0.797634,
		-0.748120, 0.653529, 0.114965,
		-0.476653, -0.649799, 0.592084,
		34.495876, 36.160740, 22.950367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230915, 37.073933, 22.570414>,  <34.829536, 36.615597, 22.535908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230915, 37.073933, 22.570414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.263275, 37.414997, 22.363949>,  <34.282692, 37.619637, 22.240070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.263275, 37.414997, 22.363949>,  <34.230915, 37.073933, 22.570414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263275, 37.414997, 22.363949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403852, -0.445403, -0.799074,
		-0.911240, 0.273099, 0.308315,
		0.080901, 0.852662, -0.516161,
		34.287544, 37.670795, 22.209101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584972, 37.175167, 22.338715>,  <34.230915, 37.073933, 22.570414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584972, 37.175167, 22.338715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.843571, 37.377583, 22.110340>,  <33.998730, 37.499031, 21.973314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.843571, 37.377583, 22.110340>,  <33.584972, 37.175167, 22.338715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843571, 37.377583, 22.110340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385530, -0.429081, -0.816858,
		-0.658339, 0.748208, -0.082306,
		0.646495, 0.506038, -0.570937,
		34.037518, 37.529392, 21.939058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123325, 37.598511, 21.898767>,  <33.584972, 37.175167, 22.338715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123325, 37.598511, 21.898767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.474564, 37.636341, 21.711149>,  <33.685307, 37.659039, 21.598577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.474564, 37.636341, 21.711149>,  <33.123325, 37.598511, 21.898767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.474564, 37.636341, 21.711149> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458564, -0.113583, -0.881373,
		-0.136630, 0.989017, -0.056368,
		0.878095, 0.094574, -0.469046,
		33.737991, 37.664715, 21.570435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994347, 38.056076, 21.517227>,  <33.123325, 37.598511, 21.898767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994347, 38.056076, 21.517227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.316734, 37.878571, 21.360518>,  <33.510166, 37.772068, 21.266491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.316734, 37.878571, 21.360518>,  <32.994347, 38.056076, 21.517227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316734, 37.878571, 21.360518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486723, -0.120099, -0.865261,
		0.336920, 0.888060, -0.312786,
		0.805969, -0.443764, -0.391775,
		33.558525, 37.745441, 21.242985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000149, 38.267574, 20.860607>,  <32.994347, 38.056076, 21.517227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000149, 38.267574, 20.860607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.247398, 37.954807, 20.828291>,  <33.395748, 37.767147, 20.808901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.247398, 37.954807, 20.828291>,  <33.000149, 38.267574, 20.860607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247398, 37.954807, 20.828291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348655, -0.180594, -0.919688,
		0.704529, 0.596650, -0.384249,
		0.618125, -0.781917, -0.080791,
		33.432835, 37.720234, 20.804054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211658, 38.220535, 20.137091>,  <33.000149, 38.267574, 20.860607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211658, 38.220535, 20.137091> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.256454, 37.852478, 20.287178>,  <33.283333, 37.631641, 20.377230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.256454, 37.852478, 20.287178>,  <33.211658, 38.220535, 20.137091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256454, 37.852478, 20.287178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397217, -0.387563, -0.831874,
		0.910866, -0.055884, -0.408900,
		0.111986, -0.920148, 0.375216,
		33.290051, 37.576435, 20.399742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563938, 37.876389, 19.674162>,  <33.211658, 38.220535, 20.137091>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563938, 37.876389, 19.674162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.353893, 37.609131, 19.885002>,  <33.227867, 37.448776, 20.011507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.353893, 37.609131, 19.885002>,  <33.563938, 37.876389, 19.674162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353893, 37.609131, 19.885002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439732, -0.317259, -0.840228,
		0.728623, -0.672998, -0.127208,
		-0.525114, -0.668147, 0.527101,
		33.196358, 37.408688, 20.043133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577038, 37.265045, 19.247528>,  <33.563938, 37.876389, 19.674162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577038, 37.265045, 19.247528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.251759, 37.221054, 19.476128>,  <33.056591, 37.194660, 19.613287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.251759, 37.221054, 19.476128>,  <33.577038, 37.265045, 19.247528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251759, 37.221054, 19.476128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442534, -0.520918, -0.729937,
		0.377983, -0.846492, 0.374940,
		-0.813199, -0.109980, 0.571500,
		33.007797, 37.188061, 19.647577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264709, 36.541790, 19.083771>,  <33.577038, 37.265045, 19.247528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264709, 36.541790, 19.083771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.991882, 36.748871, 19.290365>,  <32.828186, 36.873119, 19.414322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.991882, 36.748871, 19.290365>,  <33.264709, 36.541790, 19.083771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991882, 36.748871, 19.290365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712923, -0.313467, -0.627280,
		-0.162844, -0.796066, 0.582890,
		-0.682073, 0.517704, 0.516487,
		32.787262, 36.904182, 19.445311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693264, 36.132011, 19.138161>,  <33.264709, 36.541790, 19.083771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693264, 36.132011, 19.138161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.548130, 36.496590, 19.215750>,  <32.461052, 36.715336, 19.262304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.548130, 36.496590, 19.215750>,  <32.693264, 36.132011, 19.138161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548130, 36.496590, 19.215750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795554, -0.194584, -0.573786,
		-0.485229, -0.362504, 0.795703,
		-0.362830, 0.911443, 0.193974,
		32.439281, 36.770023, 19.273943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929829, 36.042389, 19.192066>,  <32.693264, 36.132011, 19.138161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929829, 36.042389, 19.192066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.010044, 36.422432, 19.096502>,  <32.058174, 36.650459, 19.039164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.010044, 36.422432, 19.096502>,  <31.929829, 36.042389, 19.192066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010044, 36.422432, 19.096502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682499, -0.039462, -0.729820,
		-0.702836, 0.309414, 0.640534,
		0.200540, 0.950108, -0.238910,
		32.070206, 36.707466, 19.024830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255819, 36.357128, 19.295527>,  <31.929829, 36.042389, 19.192066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255819, 36.357128, 19.295527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.493250, 36.537899, 19.029165>,  <31.635708, 36.646362, 18.869349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.493250, 36.537899, 19.029165>,  <31.255819, 36.357128, 19.295527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493250, 36.537899, 19.029165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730618, -0.044326, -0.681346,
		-0.337438, 0.890951, 0.303878,
		0.593576, 0.451931, -0.665902,
		31.671322, 36.673477, 18.829395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769341, 36.527954, 18.839695>,  <31.255819, 36.357128, 19.295527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769341, 36.527954, 18.839695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.101284, 36.638111, 18.645584>,  <31.300449, 36.704205, 18.529118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.101284, 36.638111, 18.645584>,  <30.769341, 36.527954, 18.839695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101284, 36.638111, 18.645584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499015, -0.022808, -0.866293,
		-0.249642, 0.961060, 0.118499,
		0.829857, 0.275396, -0.485278,
		31.350241, 36.720730, 18.500000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656221, 37.107140, 18.496603>,  <30.769341, 36.527954, 18.839695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656221, 37.107140, 18.496603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.921640, 36.890079, 18.290598>,  <31.080893, 36.759846, 18.166994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.921640, 36.890079, 18.290598>,  <30.656221, 37.107140, 18.496603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921640, 36.890079, 18.290598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508512, 0.177790, -0.842500,
		0.548744, 0.820929, -0.157971,
		0.663547, -0.542647, -0.515014,
		31.120705, 36.727283, 18.136093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.523413, 37.872135, 18.268038>,  <30.656221, 37.107140, 18.496603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.523413, 37.872135, 18.268038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.161390, 38.017326, 18.356686>,  <29.944176, 38.104443, 18.409874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.161390, 38.017326, 18.356686>,  <30.523413, 37.872135, 18.268038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161390, 38.017326, 18.356686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393866, 0.518801, 0.758759,
		0.160440, 0.774009, -0.612511,
		-0.905057, 0.362982, 0.221619,
		29.889874, 38.126221, 18.423172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621868, 38.550953, 18.307499>,  <30.523413, 37.872135, 18.268038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621868, 38.550953, 18.307499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.278114, 38.498402, 18.505165>,  <30.071863, 38.466869, 18.623764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.278114, 38.498402, 18.505165>,  <30.621868, 38.550953, 18.307499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278114, 38.498402, 18.505165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389226, 0.458666, 0.798829,
		-0.331609, 0.878843, -0.343033,
		-0.859383, -0.131381, 0.494166,
		30.020300, 38.458988, 18.653416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305996, 39.283058, 18.396553>,  <30.621868, 38.550953, 18.307499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305996, 39.283058, 18.396553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.113827, 39.051025, 18.659674>,  <29.998526, 38.911808, 18.817547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.113827, 39.051025, 18.659674>,  <30.305996, 39.283058, 18.396553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113827, 39.051025, 18.659674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428923, 0.498812, 0.753135,
		-0.764997, 0.643968, 0.009170,
		-0.480421, -0.580079, 0.657803,
		29.969700, 38.877003, 18.857014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078987, 39.740585, 18.930065>,  <30.305996, 39.283058, 18.396553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078987, 39.740585, 18.930065> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.105047, 39.375721, 19.091917>,  <30.120684, 39.156803, 19.189028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.105047, 39.375721, 19.091917>,  <30.078987, 39.740585, 18.930065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105047, 39.375721, 19.091917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434411, 0.390975, 0.811434,
		-0.898355, 0.122909, 0.421724,
		0.065151, -0.912158, 0.404628,
		30.124592, 39.102074, 19.213305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829391, 39.809978, 19.601427>,  <30.078987, 39.740585, 18.930065>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829391, 39.809978, 19.601427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.026918, 39.468086, 19.665403>,  <30.145433, 39.262951, 19.703789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.026918, 39.468086, 19.665403>,  <29.829391, 39.809978, 19.601427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026918, 39.468086, 19.665403> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337587, 0.357943, 0.870581,
		-0.801362, -0.375913, 0.465304,
		0.493815, -0.854732, 0.159939,
		30.175062, 39.211666, 19.713385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747005, 39.658268, 20.301893>,  <29.829391, 39.809978, 19.601427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747005, 39.658268, 20.301893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.056650, 39.430866, 20.190500>,  <30.242437, 39.294426, 20.123665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.056650, 39.430866, 20.190500>,  <29.747005, 39.658268, 20.301893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056650, 39.430866, 20.190500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481021, 0.242250, 0.842575,
		-0.411545, -0.786204, 0.460991,
		0.774112, -0.568504, -0.278484,
		30.288883, 39.260315, 20.106955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.867599, 39.100323, 20.863722>,  <29.747005, 39.658268, 20.301893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.867599, 39.100323, 20.863722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.194210, 39.175461, 20.645365>,  <30.390177, 39.220543, 20.514351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.194210, 39.175461, 20.645365>,  <29.867599, 39.100323, 20.863722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194210, 39.175461, 20.645365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410807, 0.475300, 0.778028,
		0.405609, -0.859537, 0.310929,
		0.816528, 0.187843, -0.545891,
		30.439169, 39.231815, 20.481598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392479, 38.895901, 21.306187>,  <29.867599, 39.100323, 20.863722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392479, 38.895901, 21.306187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.618038, 39.095909, 21.043280>,  <30.753374, 39.215916, 20.885536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.618038, 39.095909, 21.043280>,  <30.392479, 38.895901, 21.306187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618038, 39.095909, 21.043280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387288, 0.542815, 0.745225,
		0.729404, -0.674780, 0.112437,
		0.563895, 0.500024, -0.657265,
		30.787207, 39.245914, 20.846100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139847, 38.934605, 21.583822>,  <30.392479, 38.895901, 21.306187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139847, 38.934605, 21.583822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.116419, 39.242905, 21.330046>,  <31.102362, 39.427883, 21.177780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.116419, 39.242905, 21.330046>,  <31.139847, 38.934605, 21.583822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116419, 39.242905, 21.330046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443185, 0.589547, 0.675294,
		0.894515, -0.241623, -0.376114,
		-0.058570, 0.770748, -0.634442,
		31.098848, 39.474129, 21.139713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931257, 39.183556, 21.638241>,  <31.139847, 38.934605, 21.583822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931257, 39.183556, 21.638241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.698772, 39.481701, 21.507626>,  <31.559282, 39.660587, 21.429256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.698772, 39.481701, 21.507626>,  <31.931257, 39.183556, 21.638241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698772, 39.481701, 21.507626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257519, 0.549123, 0.795077,
		0.771930, 0.378018, -0.511102,
		-0.581212, 0.745363, -0.326538,
		31.524408, 39.705311, 21.409664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311756, 39.756378, 21.574722>,  <31.931257, 39.183556, 21.638241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311756, 39.756378, 21.574722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.943935, 39.912766, 21.590551>,  <31.723242, 40.006596, 21.600048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.943935, 39.912766, 21.590551>,  <32.311756, 39.756378, 21.574722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943935, 39.912766, 21.590551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317158, 0.678938, 0.662159,
		0.232016, 0.621441, -0.748318,
		-0.919554, 0.390966, 0.039571,
		31.668070, 40.030056, 21.602423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393272, 40.426884, 21.382420>,  <32.311756, 39.756378, 21.574722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393272, 40.426884, 21.382420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.049210, 40.423214, 21.586395>,  <31.842772, 40.421013, 21.708780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.049210, 40.423214, 21.586395>,  <32.393272, 40.426884, 21.382420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049210, 40.423214, 21.586395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340572, 0.733921, 0.587682,
		-0.379651, 0.679173, -0.628164,
		-0.860160, -0.009179, 0.509941,
		31.791161, 40.420460, 21.739378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.209557, 41.155041, 21.554224>,  <32.393272, 40.426884, 21.382420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.209557, 41.155041, 21.554224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.009274, 40.930115, 21.817463>,  <31.889105, 40.795158, 21.975407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.009274, 40.930115, 21.817463>,  <32.209557, 41.155041, 21.554224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009274, 40.930115, 21.817463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119119, 0.708269, 0.695820,
		-0.857382, 0.426793, -0.287652,
		-0.500706, -0.562320, 0.658096,
		31.859062, 40.761417, 22.014893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894295, 41.683041, 21.854660>,  <32.209557, 41.155041, 21.554224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894295, 41.683041, 21.854660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.897976, 41.376587, 22.111706>,  <31.900185, 41.192715, 22.265932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.897976, 41.376587, 22.111706>,  <31.894295, 41.683041, 21.854660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897976, 41.376587, 22.111706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134840, 0.637721, 0.758373,
		-0.990825, 0.079670, 0.109175,
		0.009203, -0.766136, 0.642612,
		31.900738, 41.146748, 22.304489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<25.356926, 38.946987, 21.117434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.685442, 38.739105, 21.023294>,  <25.882551, 38.614376, 20.966810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.685442, 38.739105, 21.023294>,  <25.356926, 38.946987, 21.117434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.685442, 38.739105, 21.023294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354719, -0.142073, -0.924116,
		0.446833, 0.842448, -0.301033,
		0.821289, -0.519708, -0.235349,
		25.931829, 38.583195, 20.952690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409410, 39.044682, 20.468203>,  <25.356926, 38.946987, 21.117434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409410, 39.044682, 20.468203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.654306, 38.731495, 20.512249>,  <25.801245, 38.543583, 20.538677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.654306, 38.731495, 20.512249>,  <25.409410, 39.044682, 20.468203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.654306, 38.731495, 20.512249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289306, -0.351448, -0.890386,
		0.735842, 0.513273, -0.441688,
		0.612241, -0.782966, 0.110118,
		25.837978, 38.496605, 20.545284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.894079, 38.978798, 19.827574>,  <25.409410, 39.044682, 20.468203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.894079, 38.978798, 19.827574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.877401, 38.607559, 19.975573>,  <25.867395, 38.384815, 20.064371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.877401, 38.607559, 19.975573>,  <25.894079, 38.978798, 19.827574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.877401, 38.607559, 19.975573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025188, -0.369223, -0.928999,
		0.998813, -0.048052, -0.007983,
		-0.041693, -0.928098, 0.369995,
		25.864893, 38.329128, 20.086571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252766, 38.587040, 19.386866>,  <25.894079, 38.978798, 19.827574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252766, 38.587040, 19.386866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.036758, 38.302849, 19.567354>,  <25.907154, 38.132336, 19.675648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.036758, 38.302849, 19.567354>,  <26.252766, 38.587040, 19.386866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036758, 38.302849, 19.567354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073662, -0.494161, -0.866244,
		0.838424, -0.501025, 0.214521,
		-0.540018, -0.710478, 0.451222,
		25.874752, 38.089706, 19.702721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.476612, 38.070755, 19.125116>,  <26.252766, 38.587040, 19.386866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.476612, 38.070755, 19.125116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.123163, 37.956593, 19.273579>,  <25.911095, 37.888096, 19.362656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.123163, 37.956593, 19.273579>,  <26.476612, 38.070755, 19.125116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123163, 37.956593, 19.273579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131118, -0.610167, -0.781348,
		0.449467, -0.739081, 0.501735,
		-0.883622, -0.285404, 0.371157,
		25.858076, 37.870972, 19.384926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433443, 37.395065, 19.048828>,  <26.476612, 38.070755, 19.125116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433443, 37.395065, 19.048828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.040461, 37.464664, 19.075672>,  <25.804670, 37.506424, 19.091780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.040461, 37.464664, 19.075672>,  <26.433443, 37.395065, 19.048828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040461, 37.464664, 19.075672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166744, -0.658424, -0.733944,
		-0.083514, -0.732259, 0.675886,
		-0.982457, 0.173994, 0.067112,
		25.745724, 37.516861, 19.095806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.112009, 36.714115, 18.995102>,  <26.433443, 37.395065, 19.048828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.112009, 36.714115, 18.995102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.827234, 36.983414, 18.915213>,  <25.656370, 37.144993, 18.867279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.827234, 36.983414, 18.915213>,  <26.112009, 36.714115, 18.995102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827234, 36.983414, 18.915213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381370, -0.609479, -0.695048,
		-0.589661, -0.418664, 0.690666,
		-0.711938, 0.673242, -0.199721,
		25.613653, 37.185387, 18.855295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518728, 36.329105, 18.976910>,  <26.112009, 36.714115, 18.995102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518728, 36.329105, 18.976910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.415176, 36.653198, 18.766577>,  <25.353045, 36.847656, 18.640377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.415176, 36.653198, 18.766577>,  <25.518728, 36.329105, 18.976910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.415176, 36.653198, 18.766577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354687, -0.586101, -0.728480,
		-0.898431, -0.002082, 0.439110,
		-0.258880, 0.810236, -0.525833,
		25.337513, 36.896271, 18.608828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.812420, 36.193890, 18.660902>,  <25.518728, 36.329105, 18.976910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.812420, 36.193890, 18.660902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.010941, 36.473022, 18.454325>,  <25.130053, 36.640503, 18.330378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.010941, 36.473022, 18.454325>,  <24.812420, 36.193890, 18.660902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.010941, 36.473022, 18.454325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310096, -0.413140, -0.856245,
		-0.810881, 0.585102, 0.011354,
		0.496300, 0.697833, -0.516445,
		25.159830, 36.682373, 18.299391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.322962, 36.264458, 18.045053>,  <24.812420, 36.193890, 18.660902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.322962, 36.264458, 18.045053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.652679, 36.468849, 17.947531>,  <24.850510, 36.591484, 17.889017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.652679, 36.468849, 17.947531>,  <24.322962, 36.264458, 18.045053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.652679, 36.468849, 17.947531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037834, -0.379954, -0.924231,
		-0.564895, 0.771063, -0.293862,
		0.824295, 0.510976, -0.243807,
		24.899967, 36.622143, 17.874390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.147200, 36.513103, 17.362074>,  <24.322962, 36.264458, 18.045053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.147200, 36.513103, 17.362074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.545349, 36.535534, 17.393278>,  <24.784239, 36.548992, 17.412001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.545349, 36.535534, 17.393278>,  <24.147200, 36.513103, 17.362074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.545349, 36.535534, 17.393278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093543, -0.380467, -0.920052,
		-0.021913, 0.923093, -0.383952,
		0.995374, 0.056077, 0.078011,
		24.843962, 36.552357, 17.416681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.396088, 36.920170, 16.741938>,  <24.147200, 36.513103, 17.362074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.396088, 36.920170, 16.741938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.694073, 36.686623, 16.871014>,  <24.872864, 36.546494, 16.948460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<24.694073, 36.686623, 16.871014>,  <24.396088, 36.920170, 16.741938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.694073, 36.686623, 16.871014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094603, -0.386368, -0.917480,
		0.660362, 0.714018, -0.232595,
		0.744964, -0.583865, 0.322691,
		24.917562, 36.511463, 16.967821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.982487, 36.840908, 16.257214>,  <24.396088, 36.920170, 16.741938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.982487, 36.840908, 16.257214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.081480, 36.506145, 16.452494>,  <25.140875, 36.305286, 16.569662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.081480, 36.506145, 16.452494>,  <24.982487, 36.840908, 16.257214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081480, 36.506145, 16.452494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130661, -0.528097, -0.839072,
		0.960042, 0.143866, -0.240045,
		0.247481, -0.836909, 0.488198,
		25.155724, 36.255074, 16.598953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.418716, 36.524944, 15.904372>,  <24.982487, 36.840908, 16.257214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.418716, 36.524944, 15.904372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.215485, 36.260571, 16.125284>,  <25.093546, 36.101944, 16.257832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.215485, 36.260571, 16.125284>,  <25.418716, 36.524944, 15.904372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.215485, 36.260571, 16.125284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224141, -0.517658, -0.825706,
		0.831634, -0.543314, 0.114868,
		-0.508080, -0.660939, 0.552281,
		25.063061, 36.062290, 16.290968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.622467, 36.581894, 15.158988>,  <25.418716, 36.524944, 15.904372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.622467, 36.581894, 15.158988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.892212, 36.654934, 14.872801>,  <26.054058, 36.698757, 14.701089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.892212, 36.654934, 14.872801>,  <25.622467, 36.581894, 15.158988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892212, 36.654934, 14.872801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731357, -0.031662, 0.681259,
		0.101745, -0.982677, -0.154897,
		0.674362, 0.182600, -0.715467,
		26.094521, 36.709713, 14.658161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105701, 35.995434, 15.133408>,  <25.622467, 36.581894, 15.158988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105701, 35.995434, 15.133408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.272589, 36.326004, 14.982172>,  <26.372721, 36.524345, 14.891431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.272589, 36.326004, 14.982172>,  <26.105701, 35.995434, 15.133408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272589, 36.326004, 14.982172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726582, -0.053426, 0.685000,
		0.545901, -0.560507, -0.622755,
		0.417219, 0.826425, -0.378089,
		26.397755, 36.573933, 14.868745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853386, 35.839813, 15.280119>,  <26.105701, 35.995434, 15.133408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853386, 35.839813, 15.280119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.836824, 36.231358, 15.200006>,  <26.826887, 36.466286, 15.151939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.836824, 36.231358, 15.200006>,  <26.853386, 35.839813, 15.280119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836824, 36.231358, 15.200006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705312, 0.170615, 0.688059,
		0.707687, -0.112771, -0.697469,
		-0.041406, 0.978863, -0.200281,
		26.824402, 36.525017, 15.139922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503016, 36.094307, 15.163229>,  <26.853386, 35.839813, 15.280119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503016, 36.094307, 15.163229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.291634, 36.414982, 15.274961>,  <27.164804, 36.607388, 15.341999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.291634, 36.414982, 15.274961>,  <27.503016, 36.094307, 15.163229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.291634, 36.414982, 15.274961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692847, 0.217125, 0.687619,
		0.490609, 0.556908, -0.670191,
		-0.528456, 0.801692, 0.279329,
		27.133097, 36.655491, 15.358759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907339, 36.689243, 15.132580>,  <27.503016, 36.094307, 15.163229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907339, 36.689243, 15.132580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.618261, 36.787933, 15.390833>,  <27.444815, 36.847145, 15.545785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.618261, 36.787933, 15.390833>,  <27.907339, 36.689243, 15.132580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618261, 36.787933, 15.390833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687799, 0.164596, 0.706994,
		0.068163, 0.955006, -0.288649,
		-0.722694, 0.246723, 0.645633,
		27.401453, 36.861950, 15.584523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224148, 37.196793, 15.507771>,  <27.907339, 36.689243, 15.132580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.224148, 37.196793, 15.507771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.890444, 37.131870, 15.718548>,  <27.690222, 37.092918, 15.845014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.890444, 37.131870, 15.718548>,  <28.224148, 37.196793, 15.507771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890444, 37.131870, 15.718548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477432, 0.265404, 0.837627,
		-0.275805, 0.950378, -0.143925,
		-0.834260, -0.162307, 0.526940,
		27.640165, 37.083179, 15.876630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020350, 37.791374, 15.888070>,  <28.224148, 37.196793, 15.507771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020350, 37.791374, 15.888070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.877415, 37.476646, 16.089357>,  <27.791655, 37.287811, 16.210129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.877415, 37.476646, 16.089357>,  <28.020350, 37.791374, 15.888070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877415, 37.476646, 16.089357> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594306, 0.224083, 0.772390,
		-0.720493, 0.575069, 0.387537,
		-0.357337, -0.786818, 0.503218,
		27.770214, 37.240601, 16.240322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.675034, 38.189217, 16.468489>,  <28.020350, 37.791374, 15.888070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.675034, 38.189217, 16.468489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.778101, 37.811451, 16.550159>,  <27.839941, 37.584793, 16.599161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.778101, 37.811451, 16.550159>,  <27.675034, 38.189217, 16.468489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778101, 37.811451, 16.550159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478786, 0.308340, 0.822004,
		-0.839268, -0.114049, 0.531622,
		0.257669, -0.944415, 0.204175,
		27.855402, 37.528126, 16.611412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.715130, 38.216873, 17.179134>,  <27.675034, 38.189217, 16.468489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.715130, 38.216873, 17.179134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.865229, 37.852810, 17.108936>,  <27.955288, 37.634373, 17.066816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.865229, 37.852810, 17.108936>,  <27.715130, 38.216873, 17.179134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865229, 37.852810, 17.108936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767658, 0.199036, 0.609168,
		-0.519509, -0.363310, 0.773379,
		0.375247, -0.910159, -0.175497,
		27.977802, 37.579762, 17.056288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804008, 37.966221, 17.768658>,  <27.715130, 38.216873, 17.179134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804008, 37.966221, 17.768658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.051708, 37.737007, 17.553934>,  <28.200327, 37.599480, 17.425100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.051708, 37.737007, 17.553934>,  <27.804008, 37.966221, 17.768658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051708, 37.737007, 17.553934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760236, 0.266554, 0.592444,
		-0.196402, -0.774971, 0.600705,
		0.619247, -0.573035, -0.536809,
		28.237482, 37.565098, 17.392891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.037649, 37.520199, 18.178234>,  <27.804008, 37.966221, 17.768658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.037649, 37.520199, 18.178234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.310467, 37.563122, 17.888876>,  <28.474157, 37.588875, 17.715261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.310467, 37.563122, 17.888876>,  <28.037649, 37.520199, 18.178234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310467, 37.563122, 17.888876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712596, 0.124817, 0.690382,
		0.164380, -0.986359, 0.008659,
		0.682045, 0.107315, -0.723393,
		28.515081, 37.595314, 17.671858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624674, 37.181927, 18.434475>,  <28.037649, 37.520199, 18.178234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624674, 37.181927, 18.434475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.758261, 37.420925, 18.142870>,  <28.838413, 37.564323, 17.967907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.758261, 37.420925, 18.142870>,  <28.624674, 37.181927, 18.434475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758261, 37.420925, 18.142870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810129, 0.213404, 0.546031,
		0.481828, -0.772951, -0.412782,
		0.333966, 0.597500, -0.729014,
		28.858450, 37.600174, 17.924166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.309692, 37.059483, 18.496859>,  <28.624674, 37.181927, 18.434475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.309692, 37.059483, 18.496859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.272799, 37.382652, 18.264050>,  <29.250662, 37.576553, 18.124365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.272799, 37.382652, 18.264050>,  <29.309692, 37.059483, 18.496859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272799, 37.382652, 18.264050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765570, 0.431294, 0.477376,
		0.636707, -0.401547, -0.658304,
		-0.092234, 0.807926, -0.582020,
		29.245129, 37.625031, 18.089443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952417, 37.277218, 18.377634>,  <29.309692, 37.059483, 18.496859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952417, 37.277218, 18.377634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.720755, 37.597660, 18.317226>,  <29.581757, 37.789925, 18.280981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.720755, 37.597660, 18.317226>,  <29.952417, 37.277218, 18.377634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720755, 37.597660, 18.317226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623961, 0.554831, 0.550304,
		0.524643, 0.224481, -0.821193,
		-0.579156, 0.801106, -0.151021,
		29.547009, 37.837994, 18.271919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513123, 37.337715, 17.730473>,  <29.952417, 37.277218, 18.377634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513123, 37.337715, 17.730473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.761930, 37.026215, 17.697886>,  <30.911215, 36.839314, 17.678333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.761930, 37.026215, 17.697886>,  <30.513123, 37.337715, 17.730473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761930, 37.026215, 17.697886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470083, -0.288201, -0.834243,
		0.626189, 0.557212, -0.545345,
		0.622020, -0.778752, -0.081467,
		30.948536, 36.792587, 17.673445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885571, 37.402233, 17.081869>,  <30.513123, 37.337715, 17.730473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885571, 37.402233, 17.081869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.922991, 37.023113, 17.203802>,  <30.945442, 36.795643, 17.276962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.922991, 37.023113, 17.203802>,  <30.885571, 37.402233, 17.081869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922991, 37.023113, 17.203802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253893, -0.318763, -0.913197,
		0.962698, 0.008035, -0.270460,
		0.093551, -0.947800, 0.304832,
		30.951056, 36.738773, 17.295252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257320, 36.931889, 16.476547>,  <30.885571, 37.402233, 17.081869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257320, 36.931889, 16.476547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050663, 36.677364, 16.705698>,  <30.926668, 36.524651, 16.843187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.050663, 36.677364, 16.705698>,  <31.257320, 36.931889, 16.476547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050663, 36.677364, 16.705698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424062, -0.391091, -0.816835,
		0.743809, -0.664946, -0.067782,
		-0.516642, -0.636313, 0.572875,
		30.895670, 36.486469, 16.877562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307039, 36.276276, 16.097120>,  <31.257320, 36.931889, 16.476547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307039, 36.276276, 16.097120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.009207, 36.196136, 16.351822>,  <30.830507, 36.148052, 16.504642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.009207, 36.196136, 16.351822>,  <31.307039, 36.276276, 16.097120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009207, 36.196136, 16.351822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421888, -0.597989, -0.681483,
		0.517309, -0.776059, 0.360726,
		-0.744582, -0.200351, 0.636756,
		30.785831, 36.136032, 16.542849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.175959, 35.585457, 16.226391>,  <31.307039, 36.276276, 16.097120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.175959, 35.585457, 16.226391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.823454, 35.762714, 16.292116>,  <30.611950, 35.869068, 16.331551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.823454, 35.762714, 16.292116>,  <31.175959, 35.585457, 16.226391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823454, 35.762714, 16.292116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437821, -0.634502, -0.636961,
		-0.178007, -0.633271, 0.753181,
		-0.881264, 0.443142, 0.164314,
		30.559074, 35.895657, 16.341410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894684, 35.150730, 15.727674>,  <31.175959, 35.585457, 16.226391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894684, 35.150730, 15.727674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619310, 35.410049, 15.857760>,  <30.454086, 35.565639, 15.935813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.619310, 35.410049, 15.857760>,  <30.894684, 35.150730, 15.727674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619310, 35.410049, 15.857760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696051, -0.464482, -0.547513,
		-0.203894, -0.603295, 0.771014,
		-0.688434, 0.648299, 0.325219,
		30.412781, 35.604538, 15.955326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278143, 34.792156, 15.823123>,  <30.894684, 35.150730, 15.727674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278143, 34.792156, 15.823123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162708, 35.168926, 15.754420>,  <30.093449, 35.394989, 15.713199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.162708, 35.168926, 15.754420>,  <30.278143, 34.792156, 15.823123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162708, 35.168926, 15.754420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666723, -0.326443, -0.670011,
		-0.687167, -0.078841, 0.722209,
		-0.288585, 0.941923, -0.171756,
		30.076134, 35.451504, 15.702893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.057352, 34.433609, 16.489000>,  <30.278143, 34.792156, 15.823123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.057352, 34.433609, 16.489000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.982616, 34.109798, 16.711624>,  <29.937775, 33.915512, 16.845200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.982616, 34.109798, 16.711624>,  <30.057352, 34.433609, 16.489000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982616, 34.109798, 16.711624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769580, 0.231521, 0.595100,
		-0.610604, 0.539506, 0.579737,
		-0.186839, -0.809525, 0.556562,
		29.926565, 33.866940, 16.878593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974850, 34.660511, 17.205584>,  <30.057352, 34.433609, 16.489000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974850, 34.660511, 17.205584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.085411, 34.276146, 17.199406>,  <30.151749, 34.045525, 17.195698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.085411, 34.276146, 17.199406>,  <29.974850, 34.660511, 17.205584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085411, 34.276146, 17.199406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764778, 0.210195, 0.609043,
		-0.581993, -0.180154, 0.792987,
		0.276404, -0.960917, -0.015446,
		30.168333, 33.987869, 17.194773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194807, 34.596584, 17.892586>,  <29.974850, 34.660511, 17.205584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194807, 34.596584, 17.892586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.314934, 34.249481, 17.734188>,  <30.387011, 34.041222, 17.639149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.314934, 34.249481, 17.734188>,  <30.194807, 34.596584, 17.892586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314934, 34.249481, 17.734188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811675, 0.014435, 0.583931,
		-0.500993, -0.496782, 0.708670,
		0.300316, -0.867755, -0.395994,
		30.405029, 33.989155, 17.615391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241482, 34.090900, 18.447353>,  <30.194807, 34.596584, 17.892586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241482, 34.090900, 18.447353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.490557, 34.023411, 18.141729>,  <30.640001, 33.982918, 17.958355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.490557, 34.023411, 18.141729>,  <30.241482, 34.090900, 18.447353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.490557, 34.023411, 18.141729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760029, -0.101760, 0.641873,
		-0.186048, -0.980397, 0.064868,
		0.622689, -0.168721, -0.764062,
		30.677364, 33.972794, 17.912510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574472, 33.535851, 18.651155>,  <30.241482, 34.090900, 18.447353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574472, 33.535851, 18.651155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.791027, 33.721272, 18.370579>,  <30.920959, 33.832523, 18.202232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.791027, 33.721272, 18.370579>,  <30.574472, 33.535851, 18.651155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791027, 33.721272, 18.370579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762901, 0.079816, 0.641570,
		0.353389, -0.882466, -0.310434,
		0.541386, 0.463554, -0.701440,
		30.953444, 33.860336, 18.160147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312338, 33.113464, 18.569569>,  <30.574472, 33.535851, 18.651155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312338, 33.113464, 18.569569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.336288, 33.485981, 18.425842>,  <31.350658, 33.709492, 18.339607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.336288, 33.485981, 18.425842>,  <31.312338, 33.113464, 18.569569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336288, 33.485981, 18.425842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883665, 0.117968, 0.453013,
		0.464275, -0.344639, -0.815887,
		0.059878, 0.931293, -0.359315,
		31.354252, 33.765369, 18.318048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046463, 33.139275, 18.592997>,  <31.312338, 33.113464, 18.569569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046463, 33.139275, 18.592997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.920839, 33.517448, 18.558294>,  <31.845465, 33.744350, 18.537472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.920839, 33.517448, 18.558294>,  <32.046463, 33.139275, 18.592997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920839, 33.517448, 18.558294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797981, 0.312374, 0.515412,
		0.514387, 0.092639, -0.852540,
		-0.314058, 0.945432, -0.086757,
		31.826622, 33.801079, 18.532267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.501772, 34.152248, 18.195972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.743500, 34.421062, 18.024778>,  <25.888536, 34.582352, 17.922062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.743500, 34.421062, 18.024778>,  <25.501772, 34.152248, 18.195972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.743500, 34.421062, 18.024778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675655, -0.147586, 0.722294,
		0.422241, -0.725665, -0.543252,
		0.604320, 0.672033, -0.427983,
		25.924795, 34.622673, 17.896383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094908, 33.901142, 18.261084>,  <25.501772, 34.152248, 18.195972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094908, 33.901142, 18.261084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.207499, 34.283600, 18.228708>,  <26.275053, 34.513077, 18.209284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.207499, 34.283600, 18.228708>,  <26.094908, 33.901142, 18.261084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207499, 34.283600, 18.228708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455415, -0.058871, 0.888331,
		0.844610, -0.286907, -0.452015,
		0.281479, 0.956148, -0.080939,
		26.291943, 34.570446, 18.204426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657742, 33.901558, 18.561066>,  <26.094908, 33.901142, 18.261084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657742, 33.901558, 18.561066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.583841, 34.294670, 18.559336>,  <26.539501, 34.530537, 18.558298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.583841, 34.294670, 18.559336>,  <26.657742, 33.901558, 18.561066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.583841, 34.294670, 18.559336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426243, 0.084094, 0.900692,
		0.885542, 0.164560, -0.434438,
		-0.184751, 0.982776, -0.004326,
		26.528416, 34.589504, 18.558039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.286657, 34.147682, 18.750778>,  <26.657742, 33.901558, 18.561066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.286657, 34.147682, 18.750778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027058, 34.438000, 18.842014>,  <26.871298, 34.612190, 18.896757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027058, 34.438000, 18.842014>,  <27.286657, 34.147682, 18.750778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027058, 34.438000, 18.842014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387767, 0.057627, 0.919954,
		0.654552, 0.685495, -0.318839,
		-0.648998, 0.725793, 0.228092,
		26.832357, 34.655739, 18.910442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.665453, 34.583355, 19.073566>,  <27.286657, 34.147682, 18.750778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.665453, 34.583355, 19.073566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.303778, 34.706333, 19.192169>,  <27.086773, 34.780121, 19.263330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.303778, 34.706333, 19.192169>,  <27.665453, 34.583355, 19.073566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.303778, 34.706333, 19.192169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352260, 0.144160, 0.924733,
		0.241565, 0.940581, -0.238650,
		-0.904190, 0.307450, 0.296505,
		27.032520, 34.798569, 19.281120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875669, 35.248882, 19.437231>,  <27.665453, 34.583355, 19.073566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875669, 35.248882, 19.437231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505516, 35.151344, 19.553303>,  <27.283424, 35.092823, 19.622946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.505516, 35.151344, 19.553303>,  <27.875669, 35.248882, 19.437231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505516, 35.151344, 19.553303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322003, -0.101900, 0.941239,
		-0.199945, 0.964447, 0.172815,
		-0.925384, -0.243843, 0.290180,
		27.227901, 35.078190, 19.640356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628265, 35.748409, 19.986513>,  <27.875669, 35.248882, 19.437231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628265, 35.748409, 19.986513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372799, 35.442234, 20.018019>,  <27.219519, 35.258530, 20.036922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.372799, 35.442234, 20.018019>,  <27.628265, 35.748409, 19.986513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372799, 35.442234, 20.018019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071403, 0.042962, 0.996522,
		-0.766163, 0.642070, 0.027216,
		-0.638667, -0.765442, 0.078762,
		27.181198, 35.212601, 20.041647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.158037, 35.913506, 20.451172>,  <27.628265, 35.748409, 19.986513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.158037, 35.913506, 20.451172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111383, 35.516235, 20.450642>,  <27.083391, 35.277874, 20.450323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.111383, 35.516235, 20.450642>,  <27.158037, 35.913506, 20.451172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111383, 35.516235, 20.450642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134982, -0.017174, 0.990699,
		-0.983960, 0.115369, 0.136064,
		-0.116632, -0.993174, -0.001326,
		27.076393, 35.218285, 20.450243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622066, 35.718975, 20.963560>,  <27.158037, 35.913506, 20.451172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622066, 35.718975, 20.963560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829933, 35.383144, 20.900246>,  <26.954653, 35.181644, 20.862257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.829933, 35.383144, 20.900246>,  <26.622066, 35.718975, 20.963560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829933, 35.383144, 20.900246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226556, -0.043216, 0.973039,
		-0.823782, -0.541518, 0.167753,
		0.519669, -0.839577, -0.158285,
		26.985834, 35.131271, 20.852760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.604126, 35.381149, 21.644592>,  <26.622066, 35.718975, 20.963560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.604126, 35.381149, 21.644592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.912493, 35.215305, 21.451189>,  <27.097513, 35.115799, 21.335146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.912493, 35.215305, 21.451189>,  <26.604126, 35.381149, 21.644592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912493, 35.215305, 21.451189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536880, 0.014557, 0.843533,
		-0.342701, -0.909881, 0.233819,
		0.770918, -0.414613, -0.483509,
		27.143768, 35.090923, 21.306137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694517, 34.742939, 21.897367>,  <26.604126, 35.381149, 21.644592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694517, 34.742939, 21.897367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.047308, 34.857029, 21.747295>,  <27.258984, 34.925484, 21.657253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.047308, 34.857029, 21.747295>,  <26.694517, 34.742939, 21.897367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047308, 34.857029, 21.747295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461561, -0.361842, 0.809958,
		0.095267, -0.887533, -0.450787,
		0.881978, 0.285228, -0.375179,
		27.311901, 34.942596, 21.634741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.280466, 34.138035, 21.941177>,  <26.694517, 34.742939, 21.897367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.280466, 34.138035, 21.941177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449900, 34.499500, 21.915998>,  <27.551559, 34.716381, 21.900892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449900, 34.499500, 21.915998>,  <27.280466, 34.138035, 21.941177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449900, 34.499500, 21.915998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585513, -0.220105, 0.780211,
		0.691197, -0.367339, -0.622342,
		0.423582, 0.903668, -0.062946,
		27.576975, 34.770599, 21.897116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811781, 33.587322, 21.699638>,  <27.280466, 34.138035, 21.941177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811781, 33.587322, 21.699638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.896626, 33.200157, 21.753546>,  <27.947533, 32.967857, 21.785891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.896626, 33.200157, 21.753546>,  <27.811781, 33.587322, 21.699638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.896626, 33.200157, 21.753546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438600, -0.217526, -0.871959,
		0.873293, 0.125841, -0.470664,
		0.212110, -0.967909, 0.134770,
		27.960258, 32.909786, 21.793976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066900, 33.422138, 21.117151>,  <27.811781, 33.587322, 21.699638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066900, 33.422138, 21.117151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959545, 33.074310, 21.282953>,  <27.895132, 32.865612, 21.382435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.959545, 33.074310, 21.282953>,  <28.066900, 33.422138, 21.117151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959545, 33.074310, 21.282953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327959, -0.322105, -0.888083,
		0.905765, -0.374291, -0.198735,
		-0.268388, -0.869572, 0.414503,
		27.879028, 32.813438, 21.407305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323696, 32.831844, 20.761131>,  <28.066900, 33.422138, 21.117151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323696, 32.831844, 20.761131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.997545, 32.707375, 20.956408>,  <27.801855, 32.632690, 21.073574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.997545, 32.707375, 20.956408>,  <28.323696, 32.831844, 20.761131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997545, 32.707375, 20.956408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342657, -0.420294, -0.840202,
		0.466636, -0.852363, 0.236070,
		-0.815375, -0.311177, 0.488192,
		27.752932, 32.614021, 21.102865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175852, 32.224960, 20.474010>,  <28.323696, 32.831844, 20.761131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175852, 32.224960, 20.474010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.835064, 32.295185, 20.671324>,  <27.630592, 32.337318, 20.789713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.835064, 32.295185, 20.671324>,  <28.175852, 32.224960, 20.474010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835064, 32.295185, 20.671324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515267, -0.448474, -0.730322,
		0.093011, -0.876385, 0.472545,
		-0.851967, 0.175559, 0.493285,
		27.579473, 32.347851, 20.819309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895506, 31.667826, 20.393515>,  <28.175852, 32.224960, 20.474010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895506, 31.667826, 20.393515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.591133, 31.905922, 20.496796>,  <27.408508, 32.048779, 20.558764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.591133, 31.905922, 20.496796>,  <27.895506, 31.667826, 20.393515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591133, 31.905922, 20.496796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531988, -0.344558, -0.773478,
		-0.371448, -0.725920, 0.578849,
		-0.760931, 0.595248, 0.258195,
		27.362854, 32.084496, 20.574255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170332, 31.211182, 20.522877>,  <27.895506, 31.667826, 20.393515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170332, 31.211182, 20.522877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.094925, 31.596382, 20.445847>,  <27.049681, 31.827503, 20.399628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.094925, 31.596382, 20.445847>,  <27.170332, 31.211182, 20.522877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094925, 31.596382, 20.445847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500285, -0.262911, -0.824980,
		-0.845089, -0.059180, 0.531340,
		-0.188518, 0.963003, -0.192576,
		27.038370, 31.885283, 20.388073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629482, 31.139822, 20.156733>,  <27.170332, 31.211182, 20.522877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629482, 31.139822, 20.156733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.705112, 31.528133, 20.097616>,  <26.750490, 31.761120, 20.062147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.705112, 31.528133, 20.097616>,  <26.629482, 31.139822, 20.156733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705112, 31.528133, 20.097616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632031, 0.005124, -0.774926,
		-0.751523, 0.239929, 0.614530,
		0.189076, 0.970777, -0.147791,
		26.761835, 31.819366, 20.053278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.011145, 31.500641, 20.088844>,  <26.629482, 31.139822, 20.156733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.011145, 31.500641, 20.088844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.283386, 31.712214, 19.886057>,  <26.446732, 31.839157, 19.764385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.283386, 31.712214, 19.886057>,  <26.011145, 31.500641, 20.088844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283386, 31.712214, 19.886057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586626, -0.021123, -0.809583,
		-0.438921, 0.848403, 0.295907,
		0.680602, 0.528929, -0.506966,
		26.487566, 31.870892, 19.733967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618435, 31.687790, 19.452950>,  <26.011145, 31.500641, 20.088844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618435, 31.687790, 19.452950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.999052, 31.777027, 19.368292>,  <26.227423, 31.830570, 19.317497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.999052, 31.777027, 19.368292>,  <25.618435, 31.687790, 19.452950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.999052, 31.777027, 19.368292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212031, -0.022502, -0.977004,
		-0.222726, 0.974537, 0.025891,
		0.951544, 0.223094, -0.211644,
		26.284515, 31.843956, 19.304798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570061, 32.286762, 18.958149>,  <25.618435, 31.687790, 19.452950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570061, 32.286762, 18.958149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.919992, 32.097095, 18.918457>,  <26.129951, 31.983297, 18.894642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.919992, 32.097095, 18.918457>,  <25.570061, 32.286762, 18.958149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919992, 32.097095, 18.918457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085333, 0.050802, -0.995057,
		0.476859, 0.878971, 0.003981,
		0.874828, -0.474162, -0.099231,
		26.182442, 31.954847, 18.888687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.879768, 32.688774, 18.456369>,  <25.570061, 32.286762, 18.958149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.879768, 32.688774, 18.456369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.023155, 32.315620, 18.470425>,  <26.109188, 32.091728, 18.478857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.023155, 32.315620, 18.470425>,  <25.879768, 32.688774, 18.456369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023155, 32.315620, 18.470425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252564, -0.133147, -0.958375,
		0.898728, 0.334673, -0.283341,
		0.358469, -0.932880, 0.035136,
		26.130695, 32.035755, 18.480965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.087614, 32.700802, 17.842560>,  <25.879768, 32.688774, 18.456369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.087614, 32.700802, 17.842560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.095770, 32.314346, 17.945450>,  <26.100664, 32.082474, 18.007183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.095770, 32.314346, 17.945450>,  <26.087614, 32.700802, 17.842560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.095770, 32.314346, 17.945450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213133, -0.255565, -0.943006,
		0.976810, -0.035595, -0.211126,
		0.020390, -0.966136, 0.257225,
		26.101887, 32.024506, 18.022617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549356, 32.410984, 17.325905>,  <26.087614, 32.700802, 17.842560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549356, 32.410984, 17.325905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.295816, 32.141533, 17.477936>,  <26.143692, 31.979862, 17.569155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.295816, 32.141533, 17.477936>,  <26.549356, 32.410984, 17.325905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295816, 32.141533, 17.477936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183924, -0.346031, -0.920019,
		0.751268, -0.653061, 0.095436,
		-0.633852, -0.673628, 0.380076,
		26.105661, 31.939445, 17.591959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571819, 31.949600, 16.865311>,  <26.549356, 32.410984, 17.325905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571819, 31.949600, 16.865311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.258028, 31.824430, 17.079477>,  <26.069754, 31.749329, 17.207977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.258028, 31.824430, 17.079477>,  <26.571819, 31.949600, 16.865311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.258028, 31.824430, 17.079477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360867, -0.471797, -0.804477,
		0.504349, -0.824309, 0.257190,
		-0.784478, -0.312926, 0.535416,
		26.022684, 31.730553, 17.240103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.195675, 32.471397, 17.003778>,  <26.571819, 31.949600, 16.865311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.195675, 32.471397, 17.003778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.347790, 32.419479, 16.637493>,  <27.439058, 32.388329, 16.417721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.347790, 32.419479, 16.637493>,  <27.195675, 32.471397, 17.003778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347790, 32.419479, 16.637493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841013, 0.460481, 0.283997,
		0.384808, -0.878129, 0.284273,
		0.380288, -0.129793, -0.915715,
		27.461876, 32.380543, 16.362778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941017, 32.361485, 17.080959>,  <27.195675, 32.471397, 17.003778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941017, 32.361485, 17.080959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903006, 32.447884, 16.692257>,  <27.880199, 32.499722, 16.459036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903006, 32.447884, 16.692257>,  <27.941017, 32.361485, 17.080959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903006, 32.447884, 16.692257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944425, 0.328152, -0.019415,
		0.314691, -0.919598, -0.235179,
		-0.095028, 0.215999, -0.971758,
		27.874496, 32.512684, 16.400730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476023, 32.042736, 16.780872>,  <27.941017, 32.361485, 17.080959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476023, 32.042736, 16.780872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.363056, 32.357666, 16.561651>,  <28.295277, 32.546623, 16.430119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.363056, 32.357666, 16.561651>,  <28.476023, 32.042736, 16.780872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363056, 32.357666, 16.561651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879269, 0.440890, 0.180280,
		0.383570, -0.430971, -0.816785,
		-0.282417, 0.787324, -0.548052,
		28.278332, 32.593864, 16.397236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141296, 32.187351, 16.484148>,  <28.476023, 32.042736, 16.780872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141296, 32.187351, 16.484148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.906519, 32.510098, 16.457413>,  <28.765652, 32.703743, 16.441372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.906519, 32.510098, 16.457413>,  <29.141296, 32.187351, 16.484148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906519, 32.510098, 16.457413> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791797, 0.589290, 0.160606,
		0.168975, 0.041344, -0.984753,
		-0.586945, 0.806863, -0.066839,
		28.730434, 32.752155, 16.437361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.387835, 32.619637, 15.934464>,  <29.141296, 32.187351, 16.484148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.387835, 32.619637, 15.934464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.203014, 32.856506, 16.198538>,  <29.092123, 32.998627, 16.356981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.203014, 32.856506, 16.198538>,  <29.387835, 32.619637, 15.934464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203014, 32.856506, 16.198538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804648, 0.592927, 0.031310,
		-0.372899, 0.545681, -0.750452,
		-0.462048, 0.592174, 0.660183,
		29.064400, 33.034157, 16.396593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726965, 33.251423, 15.804987>,  <29.387835, 32.619637, 15.934464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726965, 33.251423, 15.804987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538973, 33.322269, 16.150877>,  <29.426178, 33.364777, 16.358412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538973, 33.322269, 16.150877>,  <29.726965, 33.251423, 15.804987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538973, 33.322269, 16.150877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804214, 0.489708, 0.336786,
		-0.363812, 0.853706, -0.372594,
		-0.469979, 0.177119, 0.864725,
		29.397980, 33.375404, 16.410294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708351, 34.044331, 15.996566>,  <29.726965, 33.251423, 15.804987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708351, 34.044331, 15.996566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.650562, 33.830746, 16.329796>,  <29.615889, 33.702595, 16.529734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.650562, 33.830746, 16.329796>,  <29.708351, 34.044331, 15.996566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.650562, 33.830746, 16.329796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841752, 0.376263, 0.387144,
		-0.520175, 0.757173, 0.395103,
		-0.144472, -0.533961, 0.833074,
		29.607220, 33.670559, 16.579718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.543589, 34.764072, 16.049696>,  <29.708351, 34.044331, 15.996566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.543589, 34.764072, 16.049696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.586823, 35.071308, 15.797234>,  <29.612762, 35.255650, 15.645756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.586823, 35.071308, 15.797234>,  <29.543589, 34.764072, 16.049696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.586823, 35.071308, 15.797234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787987, -0.320894, -0.525456,
		-0.606131, 0.554138, 0.570558,
		0.108086, 0.768087, -0.631157,
		29.619249, 35.301735, 15.607886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871374, 35.132515, 16.013456>,  <29.543589, 34.764072, 16.049696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871374, 35.132515, 16.013456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.071156, 35.213799, 15.676587>,  <29.191025, 35.262569, 15.474465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.071156, 35.213799, 15.676587>,  <28.871374, 35.132515, 16.013456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071156, 35.213799, 15.676587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795188, -0.278282, -0.538734,
		-0.343836, 0.938758, 0.022599,
		0.499452, 0.203207, -0.842172,
		29.220991, 35.274761, 15.423935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.411674, 35.589649, 15.521589>,  <28.871374, 35.132515, 16.013456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.411674, 35.589649, 15.521589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.684124, 35.437641, 15.271258>,  <28.847593, 35.346436, 15.121060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.684124, 35.437641, 15.271258>,  <28.411674, 35.589649, 15.521589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684124, 35.437641, 15.271258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722690, -0.211854, -0.657904,
		0.117430, 0.900392, -0.418932,
		0.681124, -0.380016, -0.625826,
		28.888460, 35.323635, 15.083510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156134, 35.738449, 14.869218>,  <28.411674, 35.589649, 15.521589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.156134, 35.738449, 14.869218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417797, 35.444061, 14.799455>,  <28.574795, 35.267429, 14.757597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417797, 35.444061, 14.799455>,  <28.156134, 35.738449, 14.869218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417797, 35.444061, 14.799455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595963, -0.359561, -0.718014,
		0.465728, 0.573637, -0.673823,
		0.654160, -0.735973, -0.174408,
		28.614044, 35.223270, 14.747132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089312, 35.666843, 14.153308>,  <28.156134, 35.738449, 14.869218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089312, 35.666843, 14.153308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.319124, 35.350811, 14.238801>,  <28.457012, 35.161190, 14.290097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.319124, 35.350811, 14.238801>,  <28.089312, 35.666843, 14.153308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319124, 35.350811, 14.238801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339076, -0.467426, -0.816419,
		0.744945, 0.396585, -0.536449,
		0.574530, -0.790084, 0.213734,
		28.491484, 35.113785, 14.302921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542370, 35.432018, 13.643958>,  <28.089312, 35.666843, 14.153308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542370, 35.432018, 13.643958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475815, 35.100307, 13.857353>,  <28.435881, 34.901279, 13.985391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.475815, 35.100307, 13.857353>,  <28.542370, 35.432018, 13.643958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475815, 35.100307, 13.857353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312614, -0.468758, -0.826159,
		0.935194, -0.304240, -0.181248,
		-0.166389, -0.829280, 0.533489,
		28.425898, 34.851524, 14.017400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.637562, 34.867741, 13.205620>,  <28.542370, 35.432018, 13.643958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.637562, 34.867741, 13.205620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424734, 34.727009, 13.513678>,  <28.297037, 34.642570, 13.698512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.424734, 34.727009, 13.513678>,  <28.637562, 34.867741, 13.205620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.424734, 34.727009, 13.513678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562451, -0.533027, -0.632084,
		0.632893, -0.769480, 0.085721,
		-0.532067, -0.351827, 0.770144,
		28.265114, 34.621460, 13.744720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493015, 34.169250, 13.067966>,  <28.637562, 34.867741, 13.205620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493015, 34.169250, 13.067966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.221422, 34.248550, 13.350718>,  <28.058466, 34.296131, 13.520369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.221422, 34.248550, 13.350718>,  <28.493015, 34.169250, 13.067966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.221422, 34.248550, 13.350718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689752, -0.502037, -0.521730,
		0.251444, -0.841816, 0.477620,
		-0.678984, 0.198254, 0.706878,
		28.017727, 34.308025, 13.562781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240337, 33.540592, 13.427048>,  <28.493015, 34.169250, 13.067966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240337, 33.540592, 13.427048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.953604, 33.819176, 13.440336>,  <27.781565, 33.986324, 13.448309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.953604, 33.819176, 13.440336>,  <28.240337, 33.540592, 13.427048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.953604, 33.819176, 13.440336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558748, -0.545290, -0.624868,
		-0.417076, -0.466488, 0.780023,
		-0.716832, 0.696454, 0.033222,
		27.738554, 34.028111, 13.450303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.778168, 39.871414, 25.862429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432858, 40.002468, 26.016010>,  <36.225674, 40.081100, 26.108160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.432858, 40.002468, 26.016010>,  <36.778168, 39.871414, 25.862429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432858, 40.002468, 26.016010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489734, -0.359594, -0.794262,
		-0.122155, -0.873700, 0.470878,
		-0.863272, 0.327628, 0.383955,
		36.173878, 40.100758, 26.131197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143467, 39.345814, 25.913895>,  <36.778168, 39.871414, 25.862429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143467, 39.345814, 25.913895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018654, 39.719013, 25.842165>,  <35.943768, 39.942932, 25.799128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018654, 39.719013, 25.842165>,  <36.143467, 39.345814, 25.913895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018654, 39.719013, 25.842165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615987, -0.342372, -0.709465,
		-0.723323, -0.110915, 0.681544,
		-0.312032, 0.932994, -0.179323,
		35.925045, 39.998913, 25.788368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424576, 39.283337, 25.871016>,  <36.143467, 39.345814, 25.913895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424576, 39.283337, 25.871016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553928, 39.610294, 25.680317>,  <35.631542, 39.806469, 25.565897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.553928, 39.610294, 25.680317>,  <35.424576, 39.283337, 25.871016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553928, 39.610294, 25.680317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382832, -0.347732, -0.855875,
		-0.865368, 0.459292, 0.200473,
		0.323386, 0.817394, -0.476747,
		35.650944, 39.855515, 25.537292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104725, 39.253017, 25.330494>,  <35.424576, 39.283337, 25.871016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104725, 39.253017, 25.330494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348660, 39.537212, 25.190033>,  <35.495018, 39.707729, 25.105757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.348660, 39.537212, 25.190033>,  <35.104725, 39.253017, 25.330494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348660, 39.537212, 25.190033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202182, -0.288949, -0.935751,
		-0.766306, 0.641650, -0.032563,
		0.609833, 0.710489, -0.351154,
		35.531609, 39.750359, 25.084686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737324, 39.574539, 24.782728>,  <35.104725, 39.253017, 25.330494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737324, 39.574539, 24.782728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126175, 39.637566, 24.713280>,  <35.359486, 39.675381, 24.671610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126175, 39.637566, 24.713280>,  <34.737324, 39.574539, 24.782728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126175, 39.637566, 24.713280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160005, -0.095438, -0.982492,
		-0.171377, 0.982886, -0.067566,
		0.972126, 0.157566, -0.173623,
		35.417812, 39.684834, 24.661192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733620, 40.001888, 24.121258>,  <34.737324, 39.574539, 24.782728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733620, 40.001888, 24.121258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087032, 39.825996, 24.185759>,  <35.299080, 39.720459, 24.224459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087032, 39.825996, 24.185759>,  <34.733620, 40.001888, 24.121258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087032, 39.825996, 24.185759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044072, -0.420817, -0.906074,
		0.466290, 0.793440, -0.391186,
		0.883533, -0.439734, 0.161254,
		35.352093, 39.694077, 24.234135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124123, 40.127159, 23.482147>,  <34.733620, 40.001888, 24.121258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124123, 40.127159, 23.482147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.291782, 39.810299, 23.659597>,  <35.392380, 39.620182, 23.766068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.291782, 39.810299, 23.659597>,  <35.124123, 40.127159, 23.482147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291782, 39.810299, 23.659597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107706, -0.528552, -0.842040,
		0.901504, 0.305164, -0.306864,
		0.419154, -0.792154, 0.443624,
		35.417530, 39.572651, 23.792685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444664, 39.804817, 22.901241>,  <35.124123, 40.127159, 23.482147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444664, 39.804817, 22.901241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418831, 39.521046, 23.181965>,  <35.403332, 39.350780, 23.350399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.418831, 39.521046, 23.181965>,  <35.444664, 39.804817, 22.901241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418831, 39.521046, 23.181965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171251, -0.684965, -0.708163,
		0.983108, -0.165923, -0.077252,
		-0.064586, -0.709431, 0.701810,
		35.399456, 39.308216, 23.392508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748043, 39.260391, 22.641136>,  <35.444664, 39.804817, 22.901241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748043, 39.260391, 22.641136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504150, 39.098515, 22.913736>,  <35.357815, 39.001389, 23.077297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.504150, 39.098515, 22.913736>,  <35.748043, 39.260391, 22.641136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504150, 39.098515, 22.913736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294755, -0.682382, -0.668935,
		0.735760, -0.608749, 0.296786,
		-0.609734, -0.404696, 0.681502,
		35.321232, 38.977104, 23.118187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905785, 38.608681, 22.548092>,  <35.748043, 39.260391, 22.641136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905785, 38.608681, 22.548092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540955, 38.633831, 22.710165>,  <35.322056, 38.648922, 22.807409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.540955, 38.633831, 22.710165>,  <35.905785, 38.608681, 22.548092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540955, 38.633831, 22.710165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347229, -0.643998, -0.681688,
		0.218078, -0.762440, 0.609203,
		-0.912071, 0.062871, 0.405183,
		35.267334, 38.652691, 22.831720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622158, 37.884167, 22.572451>,  <35.905785, 38.608681, 22.548092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622158, 37.884167, 22.572451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285683, 38.092751, 22.629698>,  <35.083797, 38.217899, 22.664047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.285683, 38.092751, 22.629698>,  <35.622158, 37.884167, 22.572451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.285683, 38.092751, 22.629698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475627, -0.587587, -0.654615,
		-0.257260, -0.618725, 0.742291,
		-0.841188, 0.521460, 0.143120,
		35.033325, 38.249187, 22.672634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040489, 37.346039, 22.693014>,  <35.622158, 37.884167, 22.572451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040489, 37.346039, 22.693014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.842075, 37.669273, 22.565926>,  <34.723026, 37.863213, 22.489672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.842075, 37.669273, 22.565926>,  <35.040489, 37.346039, 22.693014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842075, 37.669273, 22.565926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480489, -0.560232, -0.674737,
		-0.723245, -0.182029, 0.666170,
		-0.496031, 0.808088, -0.317722,
		34.693264, 37.911701, 22.470610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685760, 37.010098, 23.168102>,  <35.040489, 37.346039, 22.693014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685760, 37.010098, 23.168102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636761, 36.625942, 23.268225>,  <34.607361, 36.395451, 23.328299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636761, 36.625942, 23.268225>,  <34.685760, 37.010098, 23.168102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636761, 36.625942, 23.268225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494576, 0.159588, 0.854357,
		-0.860459, 0.228451, 0.455435,
		-0.122497, -0.960386, 0.250306,
		34.600010, 36.337826, 23.343317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488651, 37.055626, 23.814541>,  <34.685760, 37.010098, 23.168102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488651, 37.055626, 23.814541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638039, 36.686195, 23.779818>,  <34.727669, 36.464539, 23.758984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638039, 36.686195, 23.779818>,  <34.488651, 37.055626, 23.814541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638039, 36.686195, 23.779818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338938, 0.048747, 0.939545,
		-0.863508, -0.380309, 0.331240,
		0.373464, -0.923574, -0.086807,
		34.750076, 36.409122, 23.753775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236702, 36.622444, 24.315134>,  <34.488651, 37.055626, 23.814541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236702, 36.622444, 24.315134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583809, 36.437473, 24.242323>,  <34.792072, 36.326488, 24.198637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583809, 36.437473, 24.242323>,  <34.236702, 36.622444, 24.315134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583809, 36.437473, 24.242323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292326, 0.178758, 0.939463,
		-0.401897, -0.868449, 0.290301,
		0.867770, -0.462430, -0.182028,
		34.844139, 36.298744, 24.187714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433239, 36.188858, 24.857292>,  <34.236702, 36.622444, 24.315134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433239, 36.188858, 24.857292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792854, 36.182159, 24.682276>,  <35.008625, 36.178139, 24.577265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792854, 36.182159, 24.682276>,  <34.433239, 36.188858, 24.857292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792854, 36.182159, 24.682276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437811, 0.049689, 0.897693,
		0.006700, -0.998624, 0.052008,
		0.899042, -0.016755, -0.437542,
		35.062569, 36.177135, 24.551014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815201, 35.706692, 25.244705>,  <34.433239, 36.188858, 24.857292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815201, 35.706692, 25.244705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087070, 35.938496, 25.064837>,  <35.250195, 36.077579, 24.956915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.087070, 35.938496, 25.064837>,  <34.815201, 35.706692, 25.244705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087070, 35.938496, 25.064837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511877, 0.064360, 0.856645,
		0.525376, -0.812419, -0.252894,
		0.679678, 0.579511, -0.449672,
		35.290974, 36.112350, 24.929935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550358, 35.351498, 25.252033>,  <34.815201, 35.706692, 25.244705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550358, 35.351498, 25.252033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.643883, 35.738979, 25.218702>,  <35.699997, 35.971470, 25.198704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.643883, 35.738979, 25.218702>,  <35.550358, 35.351498, 25.252033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643883, 35.738979, 25.218702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644937, -0.090388, 0.758872,
		0.727591, -0.231174, -0.645887,
		0.233812, 0.968705, -0.083327,
		35.714027, 36.029591, 25.193705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292400, 35.353611, 25.219444>,  <35.550358, 35.351498, 25.252033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292400, 35.353611, 25.219444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.157791, 35.716972, 25.318695>,  <36.077026, 35.934990, 25.378244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.157791, 35.716972, 25.318695>,  <36.292400, 35.353611, 25.219444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157791, 35.716972, 25.318695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637547, 0.025865, 0.769977,
		0.693029, 0.417303, -0.587852,
		-0.336519, 0.908399, 0.248125,
		36.056835, 35.989491, 25.393133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892612, 35.887424, 25.305655>,  <36.292400, 35.353611, 25.219444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892612, 35.887424, 25.305655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.567848, 35.995052, 25.512884>,  <36.372990, 36.059628, 25.637222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.567848, 35.995052, 25.512884>,  <36.892612, 35.887424, 25.305655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567848, 35.995052, 25.512884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509236, -0.107484, 0.853889,
		0.285439, 0.957105, -0.049751,
		-0.811913, 0.269068, 0.518072,
		36.324276, 36.075771, 25.668306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.163113, 36.285103, 25.813404>,  <36.892612, 35.887424, 25.305655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.163113, 36.285103, 25.813404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801407, 36.204842, 25.964159>,  <36.584385, 36.156685, 26.054611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.801407, 36.204842, 25.964159>,  <37.163113, 36.285103, 25.813404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801407, 36.204842, 25.964159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399774, -0.087873, 0.912392,
		-0.149957, 0.975713, 0.159677,
		-0.904264, -0.200654, 0.376888,
		36.530128, 36.144646, 26.077225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186790, 36.553665, 26.474449>,  <37.163113, 36.285103, 25.813404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186790, 36.553665, 26.474449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.878456, 36.301025, 26.507671>,  <36.693455, 36.149441, 26.527605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.878456, 36.301025, 26.507671>,  <37.186790, 36.553665, 26.474449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878456, 36.301025, 26.507671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240785, -0.168164, 0.955899,
		-0.589776, 0.756839, 0.281706,
		-0.770835, -0.631597, 0.083057,
		36.647205, 36.111546, 26.532589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595066, 36.855568, 26.860222>,  <37.186790, 36.553665, 26.474449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595066, 36.855568, 26.860222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545292, 36.459904, 26.891405>,  <36.515427, 36.222504, 26.910116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545292, 36.459904, 26.891405>,  <36.595066, 36.855568, 26.860222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545292, 36.459904, 26.891405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072580, 0.069285, 0.994953,
		-0.989569, 0.129467, 0.063172,
		-0.124437, -0.989160, 0.077959,
		36.507961, 36.163155, 26.914793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217434, 36.808620, 27.509033>,  <36.595066, 36.855568, 26.860222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217434, 36.808620, 27.509033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320206, 36.422943, 27.482721>,  <36.381870, 36.191536, 27.466934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.320206, 36.422943, 27.482721>,  <36.217434, 36.808620, 27.509033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320206, 36.422943, 27.482721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133177, -0.032093, 0.990572,
		-0.957210, -0.263266, 0.120162,
		0.256928, -0.964189, -0.065781,
		36.397285, 36.133686, 27.462988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915165, 36.410782, 28.093328>,  <36.217434, 36.808620, 27.509033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915165, 36.410782, 28.093328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199989, 36.157078, 27.972878>,  <36.370884, 36.004856, 27.900608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199989, 36.157078, 27.972878>,  <35.915165, 36.410782, 28.093328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199989, 36.157078, 27.972878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267214, -0.151797, 0.951606,
		-0.649277, -0.758070, 0.061394,
		0.712065, -0.634261, -0.301125,
		36.413609, 35.966801, 27.882540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730438, 35.846088, 28.535898>,  <35.915165, 36.410782, 28.093328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730438, 35.846088, 28.535898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108768, 35.790520, 28.418514>,  <36.335766, 35.757179, 28.348083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108768, 35.790520, 28.418514>,  <35.730438, 35.846088, 28.535898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108768, 35.790520, 28.418514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247118, -0.278236, 0.928180,
		-0.210593, -0.950414, -0.228833,
		0.945824, -0.138920, -0.293459,
		36.392517, 35.748844, 28.330477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121613, 35.212307, 28.710972>,  <35.730438, 35.846088, 28.535898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121613, 35.212307, 28.710972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.916794, 35.126896, 28.378174>,  <35.793903, 35.075649, 28.178495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.916794, 35.126896, 28.378174>,  <36.121613, 35.212307, 28.710972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916794, 35.126896, 28.378174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374224, -0.816396, 0.439835,
		-0.773152, 0.536568, 0.338128,
		-0.512047, -0.213523, -0.831995,
		35.763180, 35.062840, 28.128576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446518, 34.871262, 28.857815>,  <36.121613, 35.212307, 28.710972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446518, 34.871262, 28.857815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.554550, 34.753391, 28.491161>,  <35.619370, 34.682667, 28.271170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.554550, 34.753391, 28.491161>,  <35.446518, 34.871262, 28.857815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554550, 34.753391, 28.491161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251873, -0.940487, 0.228133,
		-0.929309, 0.169261, -0.328231,
		0.270083, -0.294678, -0.916635,
		35.635574, 34.664989, 28.216171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946682, 35.468349, 28.992901>,  <35.446518, 34.871262, 28.857815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946682, 35.468349, 28.992901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.736015, 35.807068, 28.963053>,  <34.609615, 36.010300, 28.945145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.736015, 35.807068, 28.963053>,  <34.946682, 35.468349, 28.992901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736015, 35.807068, 28.963053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726415, -0.493907, -0.477888,
		-0.441527, -0.197482, 0.875245,
		-0.526664, 0.846792, -0.074619,
		34.578014, 36.061104, 28.940666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171391, 35.320660, 29.241243>,  <34.946682, 35.468349, 28.992901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171391, 35.320660, 29.241243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.168278, 35.652042, 29.017244>,  <34.166409, 35.850872, 28.882845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.168278, 35.652042, 29.017244>,  <34.171391, 35.320660, 29.241243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168278, 35.652042, 29.017244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842650, -0.306960, -0.442398,
		-0.538405, 0.468439, 0.700489,
		-0.007786, 0.828457, -0.559999,
		34.165943, 35.900578, 28.849245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427837, 35.571583, 29.285263>,  <34.171391, 35.320660, 29.241243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427837, 35.571583, 29.285263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602142, 35.703114, 28.950125>,  <33.706726, 35.782032, 28.749041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602142, 35.703114, 28.950125>,  <33.427837, 35.571583, 29.285263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602142, 35.703114, 28.950125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789310, -0.307753, -0.531298,
		-0.432555, 0.892839, 0.125439,
		0.435759, 0.328826, -0.837847,
		33.732872, 35.801762, 28.698771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842457, 35.655975, 28.810982>,  <33.427837, 35.571583, 29.285263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842457, 35.655975, 28.810982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130604, 35.728878, 28.543295>,  <33.303493, 35.772621, 28.382683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.130604, 35.728878, 28.543295>,  <32.842457, 35.655975, 28.810982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130604, 35.728878, 28.543295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581203, -0.367929, -0.725831,
		-0.378515, 0.911816, -0.159113,
		0.720367, 0.182261, -0.669217,
		33.346714, 35.783558, 28.342529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592182, 36.072445, 28.291622>,  <32.842457, 35.655975, 28.810982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592182, 36.072445, 28.291622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.910446, 35.903343, 28.118095>,  <33.101406, 35.801884, 28.013979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.910446, 35.903343, 28.118095>,  <32.592182, 36.072445, 28.291622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910446, 35.903343, 28.118095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556853, -0.228620, -0.798529,
		0.238403, 0.876933, -0.417317,
		0.795663, -0.422755, -0.433819,
		33.149143, 35.776516, 27.987949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599236, 36.233662, 27.654442>,  <32.592182, 36.072445, 28.291622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599236, 36.233662, 27.654442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.828518, 35.911747, 27.592804>,  <32.966087, 35.718597, 27.555820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.828518, 35.911747, 27.592804>,  <32.599236, 36.233662, 27.654442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828518, 35.911747, 27.592804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482669, -0.179653, -0.857179,
		0.662165, 0.565720, -0.491425,
		0.573209, -0.804789, -0.154096,
		33.000481, 35.670311, 27.546576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635201, 36.182579, 26.914707>,  <32.599236, 36.233662, 27.654442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635201, 36.182579, 26.914707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751064, 35.824341, 27.049763>,  <32.820583, 35.609398, 27.130796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.751064, 35.824341, 27.049763>,  <32.635201, 36.182579, 26.914707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751064, 35.824341, 27.049763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411556, -0.435028, -0.800857,
		0.864129, 0.093018, -0.494599,
		0.289658, -0.895599, 0.337639,
		32.837963, 35.555660, 27.151054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723579, 35.968369, 26.302557>,  <32.635201, 36.182579, 26.914707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723579, 35.968369, 26.302557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688049, 35.663074, 26.558552>,  <32.666733, 35.479897, 26.712149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.688049, 35.663074, 26.558552>,  <32.723579, 35.968369, 26.302557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688049, 35.663074, 26.558552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527104, -0.509164, -0.680377,
		0.845146, -0.397775, -0.357076,
		-0.088827, -0.763234, 0.639987,
		32.661400, 35.434105, 26.750547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939350, 35.278736, 25.923697>,  <32.723579, 35.968369, 26.302557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939350, 35.278736, 25.923697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707539, 35.176693, 26.233294>,  <32.568451, 35.115467, 26.419052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.707539, 35.176693, 26.233294>,  <32.939350, 35.278736, 25.923697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707539, 35.176693, 26.233294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554618, -0.572410, -0.603942,
		0.597111, -0.779273, 0.190241,
		-0.579532, -0.255110, 0.773991,
		32.533680, 35.100159, 26.465490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791245, 34.654648, 25.767704>,  <32.939350, 35.278736, 25.923697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791245, 34.654648, 25.767704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516232, 34.776730, 26.031265>,  <32.351223, 34.849979, 26.189402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.516232, 34.776730, 26.031265>,  <32.791245, 34.654648, 25.767704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516232, 34.776730, 26.031265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713572, -0.452157, -0.535135,
		0.134604, -0.838097, 0.528654,
		-0.687530, 0.305201, 0.658905,
		32.309971, 34.868290, 26.228937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381721, 34.061390, 25.891388>,  <32.791245, 34.654648, 25.767704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381721, 34.061390, 25.891388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144855, 34.359402, 26.014208>,  <32.002735, 34.538208, 26.087900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.144855, 34.359402, 26.014208>,  <32.381721, 34.061390, 25.891388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.144855, 34.359402, 26.014208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790244, -0.462356, -0.402171,
		-0.157661, -0.480795, 0.862542,
		-0.592163, 0.745026, 0.307049,
		31.967207, 34.582909, 26.106323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755180, 33.690636, 26.055817>,  <32.381721, 34.061390, 25.891388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755180, 33.690636, 26.055817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.648508, 34.073757, 26.012939>,  <31.584503, 34.303631, 25.987213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.648508, 34.073757, 26.012939>,  <31.755180, 33.690636, 26.055817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648508, 34.073757, 26.012939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840221, -0.285534, -0.460975,
		-0.472132, -0.032869, 0.880915,
		-0.266683, 0.957805, -0.107192,
		31.568502, 34.361099, 25.980782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009411, 33.767300, 26.181435>,  <31.755180, 33.690636, 26.055817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009411, 33.767300, 26.181435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.166592, 34.033428, 25.927525>,  <31.260900, 34.193104, 25.775179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.166592, 34.033428, 25.927525>,  <31.009411, 33.767300, 26.181435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166592, 34.033428, 25.927525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742833, -0.177222, -0.645594,
		-0.542022, 0.725219, 0.424581,
		0.392952, 0.665319, -0.634775,
		31.284477, 34.233025, 25.737093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.430948, 34.137924, 25.972231>,  <31.009411, 33.767300, 26.181435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.430948, 34.137924, 25.972231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.711449, 34.258556, 25.713837>,  <30.879749, 34.330936, 25.558800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.711449, 34.258556, 25.713837>,  <30.430948, 34.137924, 25.972231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711449, 34.258556, 25.713837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655324, -0.084101, -0.750652,
		-0.280708, 0.949725, 0.138655,
		0.701252, 0.301577, -0.645985,
		30.921824, 34.349030, 25.520041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095163, 34.635555, 25.545319>,  <30.430948, 34.137924, 25.972231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095163, 34.635555, 25.545319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.416544, 34.487610, 25.358702>,  <30.609373, 34.398842, 25.246731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.416544, 34.487610, 25.358702>,  <30.095163, 34.635555, 25.545319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416544, 34.487610, 25.358702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572490, -0.264811, -0.775971,
		0.163459, 0.890548, -0.424507,
		0.803453, -0.369865, -0.466544,
		30.657579, 34.376652, 25.218739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055719, 34.892845, 24.752127>,  <30.095163, 34.635555, 25.545319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055719, 34.892845, 24.752127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.278200, 34.561207, 24.774872>,  <30.411688, 34.362225, 24.788519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.278200, 34.561207, 24.774872>,  <30.055719, 34.892845, 24.752127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.278200, 34.561207, 24.774872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434856, -0.348666, -0.830261,
		0.708194, 0.437066, -0.554467,
		0.556203, -0.829099, 0.056863,
		30.445061, 34.312477, 24.791931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276072, 34.731010, 24.060678>,  <30.055719, 34.892845, 24.752127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276072, 34.731010, 24.060678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.329678, 34.391312, 24.264961>,  <30.361841, 34.187492, 24.387531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.329678, 34.391312, 24.264961>,  <30.276072, 34.731010, 24.060678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329678, 34.391312, 24.264961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638885, -0.467999, -0.610576,
		0.757540, -0.244455, -0.605290,
		0.134016, -0.849246, 0.510706,
		30.369883, 34.136539, 24.418173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531113, 34.219532, 23.620667>,  <30.276072, 34.731010, 24.060678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531113, 34.219532, 23.620667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.448154, 33.945118, 23.899618>,  <30.398378, 33.780468, 24.066990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.448154, 33.945118, 23.899618>,  <30.531113, 34.219532, 23.620667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448154, 33.945118, 23.899618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615842, -0.462330, -0.637957,
		0.760082, -0.561786, -0.326605,
		-0.207397, -0.686037, 0.697380,
		30.385935, 33.739307, 24.108831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682003, 33.581627, 23.361326>,  <30.531113, 34.219532, 23.620667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682003, 33.581627, 23.361326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.411505, 33.521275, 23.649750>,  <30.249207, 33.485062, 23.822803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.411505, 33.521275, 23.649750>,  <30.682003, 33.581627, 23.361326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411505, 33.521275, 23.649750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603748, -0.447340, -0.659830,
		0.422114, -0.881545, 0.211418,
		-0.676246, -0.150880, 0.721060,
		30.208632, 33.476009, 23.866068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407703, 32.918339, 23.196545>,  <30.682003, 33.581627, 23.361326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407703, 32.918339, 23.196545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.131813, 33.064465, 23.446609>,  <29.966280, 33.152142, 23.596647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.131813, 33.064465, 23.446609>,  <30.407703, 32.918339, 23.196545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131813, 33.064465, 23.446609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724005, -0.359758, -0.588550,
		0.009900, -0.858556, 0.512624,
		-0.689724, 0.365315, 0.625160,
		29.924896, 33.174061, 23.634157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.968254, 32.378532, 23.334200>,  <30.407703, 32.918339, 23.196545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.968254, 32.378532, 23.334200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.762066, 32.710011, 23.421436>,  <29.638353, 32.908897, 23.473778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.762066, 32.710011, 23.421436>,  <29.968254, 32.378532, 23.334200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762066, 32.710011, 23.421436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737311, -0.299233, -0.605666,
		-0.436651, -0.473001, 0.765249,
		-0.515468, 0.828692, 0.218089,
		29.607426, 32.958618, 23.486864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.388319, 32.109829, 23.454439>,  <29.968254, 32.378532, 23.334200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.388319, 32.109829, 23.454439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.314133, 32.495342, 23.377785>,  <29.269621, 32.726650, 23.331793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.314133, 32.495342, 23.377785>,  <29.388319, 32.109829, 23.454439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314133, 32.495342, 23.377785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790210, -0.262204, -0.553910,
		-0.584097, 0.048701, 0.810221,
		-0.185467, 0.963783, -0.191637,
		29.258493, 32.784477, 23.320293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729879, 32.169670, 23.478748>,  <29.388319, 32.109829, 23.454439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729879, 32.169670, 23.478748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.811718, 32.511265, 23.287395>,  <28.860821, 32.716221, 23.172585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.811718, 32.511265, 23.287395>,  <28.729879, 32.169670, 23.478748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811718, 32.511265, 23.287395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738471, -0.186122, -0.648088,
		-0.642496, 0.485868, 0.592564,
		0.204596, 0.853985, -0.478382,
		28.873096, 32.767460, 23.143881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093807, 32.323074, 23.249693>,  <28.729879, 32.169670, 23.478748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093807, 32.323074, 23.249693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.297796, 32.600964, 23.046799>,  <28.420191, 32.767696, 22.925062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.297796, 32.600964, 23.046799>,  <28.093807, 32.323074, 23.249693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297796, 32.600964, 23.046799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659161, -0.063242, -0.749338,
		-0.552660, 0.716492, 0.425682,
		0.509974, 0.694722, -0.507235,
		28.450788, 32.809380, 22.894629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640415, 32.773045, 22.922186>,  <28.093807, 32.323074, 23.249693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640415, 32.773045, 22.922186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.980312, 32.801735, 22.713268>,  <28.184250, 32.818951, 22.587917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.980312, 32.801735, 22.713268>,  <27.640415, 32.773045, 22.922186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980312, 32.801735, 22.713268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525087, 0.026636, -0.850631,
		-0.047104, 0.997068, 0.060298,
		0.849744, 0.071730, -0.522293,
		28.235235, 32.823254, 22.556580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596516, 33.409817, 22.460724>,  <27.640415, 32.773045, 22.922186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596516, 33.409817, 22.460724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.863249, 33.143295, 22.327230>,  <28.023289, 32.983383, 22.247135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.863249, 33.143295, 22.327230>,  <27.596516, 33.409817, 22.460724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863249, 33.143295, 22.327230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541638, -0.125770, -0.831150,
		0.511823, 0.734999, -0.444761,
		0.666832, -0.666302, -0.333732,
		28.063299, 32.943405, 22.227110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897913, 34.044518, 22.452873>,  <27.596516, 33.409817, 22.460724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897913, 34.044518, 22.452873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.857151, 34.424782, 22.335663>,  <27.832695, 34.652939, 22.265337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.857151, 34.424782, 22.335663>,  <27.897913, 34.044518, 22.452873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857151, 34.424782, 22.335663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549755, 0.299312, 0.779860,
		0.829087, -0.081623, -0.553130,
		-0.101904, 0.950658, -0.293028,
		27.826580, 34.709980, 22.247755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.446329, 34.250355, 22.344660>,  <27.897913, 34.044518, 22.452873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.446329, 34.250355, 22.344660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.250944, 34.582966, 22.450464>,  <28.133713, 34.782532, 22.513947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.250944, 34.582966, 22.450464>,  <28.446329, 34.250355, 22.344660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250944, 34.582966, 22.450464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648642, 0.143252, 0.747491,
		0.583667, 0.536696, -0.609336,
		-0.488464, 0.831526, 0.264512,
		28.104404, 34.832424, 22.529818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941862, 34.647606, 22.593641>,  <28.446329, 34.250355, 22.344660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941862, 34.647606, 22.593641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.616724, 34.841225, 22.723244>,  <28.421642, 34.957397, 22.801004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.616724, 34.841225, 22.723244>,  <28.941862, 34.647606, 22.593641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616724, 34.841225, 22.723244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452723, 0.175008, 0.874308,
		0.366506, 0.857360, -0.361395,
		-0.812844, 0.484051, 0.324006,
		28.372871, 34.986439, 22.820446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193295, 35.249348, 22.993580>,  <28.941862, 34.647606, 22.593641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193295, 35.249348, 22.993580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.834208, 35.126514, 23.119949>,  <28.618755, 35.052814, 23.195770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.834208, 35.126514, 23.119949>,  <29.193295, 35.249348, 22.993580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834208, 35.126514, 23.119949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333820, -0.006125, 0.942617,
		-0.287523, 0.951664, 0.108007,
		-0.897717, -0.307079, 0.315923,
		28.564892, 35.034389, 23.214725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749111, 34.830063, 23.175539>,  <29.193295, 35.249348, 22.993580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749111, 34.830063, 23.175539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.849178, 35.024940, 23.510216>,  <29.909220, 35.141869, 23.711021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.849178, 35.024940, 23.510216>,  <29.749111, 34.830063, 23.175539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849178, 35.024940, 23.510216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603717, -0.597106, 0.528196,
		0.756929, -0.637265, 0.144750,
		0.250170, 0.487195, 0.836694,
		29.924229, 35.171101, 23.761225>
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
