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
	<4.663533, 14.917854, 14.729183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.340254, 15.027458, 14.937696>,  <4.146286, 15.093221, 15.062803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.340254, 15.027458, 14.937696>,  <4.663533, 14.917854, 14.729183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.340254, 15.027458, 14.937696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557346, 0.641785, 0.526761,
		-0.190213, 0.716261, -0.671408,
		-0.808198, 0.274010, 0.521281,
		4.097795, 15.109661, 15.094080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.683756, 15.625796, 14.662617>,  <4.663533, 14.917854, 14.729183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.683756, 15.625796, 14.662617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.556305, 15.462911, 15.004997>,  <4.479835, 15.365179, 15.210425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.556305, 15.462911, 15.004997>,  <4.683756, 15.625796, 14.662617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.556305, 15.462911, 15.004997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648816, 0.564622, 0.510137,
		-0.691024, 0.717898, 0.084304,
		-0.318627, -0.407215, 0.855952,
		4.460717, 15.340746, 15.261783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.576153, 16.186174, 15.174202>,  <4.683756, 15.625796, 14.662617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.576153, 16.186174, 15.174202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.642090, 15.885570, 15.429719>,  <4.681653, 15.705207, 15.583030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.642090, 15.885570, 15.429719>,  <4.576153, 16.186174, 15.174202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.642090, 15.885570, 15.429719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481785, 0.626482, 0.612702,
		-0.860645, 0.206762, 0.465338,
		0.164842, -0.751512, 0.638793,
		4.691543, 15.660116, 15.621357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.267053, 16.359089, 15.788127>,  <4.576153, 16.186174, 15.174202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.267053, 16.359089, 15.788127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.569361, 16.103065, 15.843466>,  <4.750746, 15.949452, 15.876669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.569361, 16.103065, 15.843466>,  <4.267053, 16.359089, 15.788127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.569361, 16.103065, 15.843466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419180, 0.635181, 0.648717,
		-0.503090, -0.432288, 0.748349,
		0.755770, -0.640056, 0.138347,
		4.796092, 15.911049, 15.884970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.322453, 16.362631, 16.517931>,  <4.267053, 16.359089, 15.788127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.322453, 16.362631, 16.517931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.672533, 16.251980, 16.359182>,  <4.882581, 16.185589, 16.263933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.672533, 16.251980, 16.359182>,  <4.322453, 16.362631, 16.517931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.672533, 16.251980, 16.359182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482620, 0.555656, 0.676996,
		0.033247, -0.784043, 0.619815,
		0.875198, -0.276627, -0.396869,
		4.935092, 16.168991, 16.240122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.828795, 16.404348, 17.048258>,  <4.322453, 16.362631, 16.517931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.828795, 16.404348, 17.048258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.034247, 16.424620, 16.705652>,  <5.157518, 16.436783, 16.500088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.034247, 16.424620, 16.705652>,  <4.828795, 16.404348, 17.048258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.034247, 16.424620, 16.705652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629335, 0.656274, 0.416224,
		0.583201, -0.752819, 0.305188,
		0.513628, 0.050677, -0.856515,
		5.188335, 16.439823, 16.448698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.443585, 16.487818, 17.319645>,  <4.828795, 16.404348, 17.048258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.443585, 16.487818, 17.319645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.458548, 16.610109, 16.939093>,  <5.467525, 16.683485, 16.710760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.458548, 16.610109, 16.939093>,  <5.443585, 16.487818, 17.319645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.458548, 16.610109, 16.939093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575307, 0.771858, 0.270660,
		0.817082, -0.557462, -0.147016,
		0.037407, 0.305731, -0.951383,
		5.469769, 16.701828, 16.653677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.152810, 16.600655, 17.115082>,  <5.443585, 16.487818, 17.319645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.152810, 16.600655, 17.115082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.918742, 16.814606, 16.871284>,  <5.778302, 16.942976, 16.725006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.918742, 16.814606, 16.871284>,  <6.152810, 16.600655, 17.115082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.918742, 16.814606, 16.871284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506249, 0.828117, 0.240694,
		0.633474, -0.167709, -0.755370,
		-0.585169, 0.534878, -0.609494,
		5.743192, 16.975069, 16.688437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.615467, 16.962278, 16.646093>,  <6.152810, 16.600655, 17.115082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.615467, 16.962278, 16.646093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.270880, 17.165369, 16.649866>,  <6.064127, 17.287224, 16.652130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.270880, 17.165369, 16.649866>,  <6.615467, 16.962278, 16.646093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.270880, 17.165369, 16.649866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507614, 0.860464, 0.043942,
		0.014196, 0.042642, -0.998990,
		-0.861468, 0.507725, 0.009431,
		6.012439, 17.317686, 16.652695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.637331, 17.380310, 16.075357>,  <6.615467, 16.962278, 16.646093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.637331, 17.380310, 16.075357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.364384, 17.563370, 16.303368>,  <6.200615, 17.673204, 16.440174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.364384, 17.563370, 16.303368>,  <6.637331, 17.380310, 16.075357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.364384, 17.563370, 16.303368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585261, 0.809246, 0.050901,
		-0.437997, 0.368347, -0.820048,
		-0.682370, 0.457647, 0.570027,
		6.159673, 17.700665, 16.474375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.469266, 17.997942, 15.760994>,  <6.637331, 17.380310, 16.075357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.469266, 17.997942, 15.760994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.370994, 18.043282, 16.146074>,  <6.312030, 18.070484, 16.377123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.370994, 18.043282, 16.146074>,  <6.469266, 17.997942, 15.760994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.370994, 18.043282, 16.146074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506722, 0.861659, 0.027864,
		-0.826362, 0.494668, -0.269130,
		-0.245682, 0.113348, 0.962701,
		6.297289, 18.077286, 16.434885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.322684, 18.680172, 15.818263>,  <6.469266, 17.997942, 15.760994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.322684, 18.680172, 15.818263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.375483, 18.563646, 16.197254>,  <6.407163, 18.493731, 16.424648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.375483, 18.563646, 16.197254>,  <6.322684, 18.680172, 15.818263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.375483, 18.563646, 16.197254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392138, 0.893213, 0.219997,
		-0.910387, 0.342503, 0.232137,
		0.131998, -0.291312, 0.947478,
		6.415082, 18.476254, 16.481497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.941247, 19.105770, 16.211851>,  <6.322684, 18.680172, 15.818263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.941247, 19.105770, 16.211851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.233814, 18.957203, 16.440613>,  <6.409355, 18.868063, 16.577869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.233814, 18.957203, 16.440613>,  <5.941247, 19.105770, 16.211851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.233814, 18.957203, 16.440613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216440, 0.921736, 0.321803,
		-0.646670, -0.111589, 0.754564,
		0.731418, -0.371418, 0.571906,
		6.453239, 18.845778, 16.612185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.027799, 19.660542, 16.738554>,  <5.941247, 19.105770, 16.211851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.027799, 19.660542, 16.738554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.352870, 19.433115, 16.789610>,  <6.547912, 19.296659, 16.820244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.352870, 19.433115, 16.789610>,  <6.027799, 19.660542, 16.738554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.352870, 19.433115, 16.789610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505374, 0.796744, 0.331357,
		-0.290094, -0.204779, 0.934832,
		0.812676, -0.568564, 0.127641,
		6.596673, 19.262547, 16.827902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.265064, 19.836267, 17.372627>,  <6.027799, 19.660542, 16.738554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.265064, 19.836267, 17.372627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.575760, 19.669401, 17.183886>,  <6.762178, 19.569281, 17.070641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.575760, 19.669401, 17.183886>,  <6.265064, 19.836267, 17.372627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.575760, 19.669401, 17.183886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587551, 0.749785, 0.304313,
		0.226839, -0.513610, 0.827495,
		0.776742, -0.417166, -0.471853,
		6.808783, 19.544250, 17.042330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.886517, 19.852077, 17.828856>,  <6.265064, 19.836267, 17.372627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.886517, 19.852077, 17.828856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.047565, 19.838724, 17.462952>,  <7.144194, 19.830713, 17.243410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.047565, 19.838724, 17.462952>,  <6.886517, 19.852077, 17.828856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.047565, 19.838724, 17.462952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554575, 0.803946, 0.214751,
		0.728247, -0.593765, 0.342197,
		0.402620, -0.033383, -0.914758,
		7.168351, 19.828709, 17.188524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.509482, 20.150301, 17.969273>,  <6.886517, 19.852077, 17.828856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.509482, 20.150301, 17.969273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.507291, 20.166553, 17.569609>,  <7.505976, 20.176306, 17.329811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.507291, 20.166553, 17.569609>,  <7.509482, 20.150301, 17.969273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.507291, 20.166553, 17.569609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412037, 0.910504, 0.034768,
		0.911151, -0.411500, -0.021731,
		-0.005479, 0.040633, -0.999159,
		7.505647, 20.178743, 17.269861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.178345, 20.324102, 17.704685>,  <7.509482, 20.150301, 17.969273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.178345, 20.324102, 17.704685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.943552, 20.403322, 17.390684>,  <7.802677, 20.450853, 17.202284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.943552, 20.403322, 17.390684>,  <8.178345, 20.324102, 17.704685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.943552, 20.403322, 17.390684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601982, 0.755126, -0.259617,
		0.541359, -0.624948, -0.562468,
		-0.586981, 0.198050, -0.785003,
		7.767457, 20.462738, 17.155184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.693550, 20.511707, 17.173029>,  <8.178345, 20.324102, 17.704685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.693550, 20.511707, 17.173029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.335926, 20.654661, 17.065002>,  <8.121352, 20.740433, 17.000187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.335926, 20.654661, 17.065002>,  <8.693550, 20.511707, 17.173029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.335926, 20.654661, 17.065002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428219, 0.858842, -0.281104,
		0.131481, -0.366970, -0.920894,
		-0.894059, 0.357384, -0.270065,
		8.067708, 20.761877, 16.983982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.864280, 20.932922, 16.589127>,  <8.693550, 20.511707, 17.173029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.864280, 20.932922, 16.589127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.511486, 21.070490, 16.718014>,  <8.299809, 21.153030, 16.795347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.511486, 21.070490, 16.718014>,  <8.864280, 20.932922, 16.589127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.511486, 21.070490, 16.718014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202157, 0.893702, -0.400536,
		-0.425719, -0.288128, -0.857756,
		-0.881984, 0.343917, 0.322219,
		8.246891, 21.173664, 16.814680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.625046, 21.497313, 16.092899>,  <8.864280, 20.932922, 16.589127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.625046, 21.497313, 16.092899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.422472, 21.578979, 16.428003>,  <8.300928, 21.627979, 16.629066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.422472, 21.578979, 16.428003>,  <8.625046, 21.497313, 16.092899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.422472, 21.578979, 16.428003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182676, 0.974915, -0.127162,
		-0.842706, 0.088639, -0.531027,
		-0.506434, 0.204166, 0.837759,
		8.270542, 21.640228, 16.679331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.106562, 21.972710, 15.866158>,  <8.625046, 21.497313, 16.092899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.106562, 21.972710, 15.866158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.169004, 22.006496, 16.259808>,  <8.206470, 22.026768, 16.495996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.169004, 22.006496, 16.259808>,  <8.106562, 21.972710, 15.866158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.169004, 22.006496, 16.259808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162518, 0.980562, -0.109939,
		-0.974279, 0.177100, 0.139345,
		0.156106, 0.084465, 0.984122,
		8.215837, 22.031836, 16.555044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.786165, 22.578514, 16.108492>,  <8.106562, 21.972710, 15.866158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.786165, 22.578514, 16.108492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.072288, 22.505569, 16.378332>,  <8.243960, 22.461803, 16.540236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.072288, 22.505569, 16.378332>,  <7.786165, 22.578514, 16.108492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.072288, 22.505569, 16.378332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331336, 0.938447, -0.097643,
		-0.615268, 0.293363, 0.731699,
		0.715305, -0.182361, 0.674598,
		8.286880, 22.450861, 16.580711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.899874, 23.281889, 16.395403>,  <7.786165, 22.578514, 16.108492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.899874, 23.281889, 16.395403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.198457, 23.056866, 16.537575>,  <8.377606, 22.921852, 16.622877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.198457, 23.056866, 16.537575>,  <7.899874, 23.281889, 16.395403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.198457, 23.056866, 16.537575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554407, 0.821163, 0.135365,
		-0.368015, 0.096008, 0.924850,
		0.746457, -0.562560, 0.355428,
		8.422394, 22.888098, 16.644203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.119271, 23.630926, 16.876486>,  <7.899874, 23.281889, 16.395403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.119271, 23.630926, 16.876486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.443684, 23.412846, 16.791649>,  <8.638331, 23.281998, 16.740747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.443684, 23.412846, 16.791649>,  <8.119271, 23.630926, 16.876486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.443684, 23.412846, 16.791649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577473, 0.804105, 0.141210,
		0.093557, -0.237003, 0.966994,
		0.811032, -0.545202, -0.212092,
		8.686993, 23.249285, 16.728022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.627811, 23.571018, 17.331100>,  <8.119271, 23.630926, 16.876486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.627811, 23.571018, 17.331100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.846769, 23.512203, 17.001558>,  <8.978144, 23.476913, 16.803833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.846769, 23.512203, 17.001558>,  <8.627811, 23.571018, 17.331100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.846769, 23.512203, 17.001558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600556, 0.754621, 0.264346,
		0.582831, -0.639474, 0.501380,
		0.547394, -0.147037, -0.823857,
		9.010987, 23.468092, 16.754402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.423568, 23.347845, 17.448622>,  <8.627811, 23.571018, 17.331100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.423568, 23.347845, 17.448622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.329994, 23.563868, 17.125237>,  <9.273849, 23.693481, 16.931206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.329994, 23.563868, 17.125237>,  <9.423568, 23.347845, 17.448622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.329994, 23.563868, 17.125237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484318, 0.785752, 0.384746,
		0.843036, -0.301548, -0.445374,
		-0.233935, 0.540057, -0.808463,
		9.259813, 23.725885, 16.882698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.075844, 23.734705, 17.333889>,  <9.423568, 23.347845, 17.448622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.075844, 23.734705, 17.333889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.736290, 23.883324, 17.183504>,  <9.532557, 23.972496, 17.093273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.736290, 23.883324, 17.183504>,  <10.075844, 23.734705, 17.333889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.736290, 23.883324, 17.183504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208507, 0.888970, 0.407746,
		0.485717, 0.267738, -0.832103,
		-0.848884, 0.371548, -0.375963,
		9.481625, 23.994787, 17.070715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.550721, 23.772238, 16.700035>,  <10.075844, 23.734705, 17.333889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.550721, 23.772238, 16.700035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.871189, 24.011106, 16.715588>,  <11.063470, 24.154428, 16.724918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.871189, 24.011106, 16.715588>,  <10.550721, 23.772238, 16.700035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.871189, 24.011106, 16.715588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042857, 0.007549, -0.999053,
		-0.596899, 0.802078, -0.019545,
		0.801171, 0.597171, 0.038880,
		11.111541, 24.190258, 16.727251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.342556, 24.404861, 16.341955>,  <10.550721, 23.772238, 16.700035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.342556, 24.404861, 16.341955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.733089, 24.324713, 16.309402>,  <10.967409, 24.276623, 16.289871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.733089, 24.324713, 16.309402>,  <10.342556, 24.404861, 16.341955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.733089, 24.324713, 16.309402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047672, 0.167659, -0.984692,
		0.210950, 0.965268, 0.154139,
		0.976334, -0.200372, -0.081384,
		11.025990, 24.264601, 16.284986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.725134, 25.007187, 16.011625>,  <10.342556, 24.404861, 16.341955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.725134, 25.007187, 16.011625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.900528, 24.653669, 15.946338>,  <11.005764, 24.441559, 15.907165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.900528, 24.653669, 15.946338>,  <10.725134, 25.007187, 16.011625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.900528, 24.653669, 15.946338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062885, 0.211336, -0.975388,
		0.896535, 0.417429, 0.148246,
		0.438485, -0.883793, -0.163220,
		11.032074, 24.388531, 15.897371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.583535, 24.657269, 15.217668>,  <10.725134, 25.007187, 16.011625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.583535, 24.657269, 15.217668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.558541, 24.266180, 15.297821>,  <10.543545, 24.031527, 15.345913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.558541, 24.266180, 15.297821>,  <10.583535, 24.657269, 15.217668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.558541, 24.266180, 15.297821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927839, 0.017065, 0.372590,
		-0.367710, 0.209205, 0.906103,
		-0.062485, -0.977723, 0.200383,
		10.539796, 23.972862, 15.357936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.255582, 24.573610, 14.675586>,  <10.583535, 24.657269, 15.217668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.255582, 24.573610, 14.675586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558965, 24.342278, 14.795767>,  <11.740994, 24.203478, 14.867875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.558965, 24.342278, 14.795767>,  <11.255582, 24.573610, 14.675586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.558965, 24.342278, 14.795767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641367, -0.744212, 0.186541,
		0.115717, -0.334184, -0.935378,
		0.758458, -0.578334, 0.300452,
		11.786502, 24.168777, 14.885902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.416380, 24.025581, 14.178580>,  <11.255582, 24.573610, 14.675586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.416380, 24.025581, 14.178580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.513724, 23.911041, 14.549262>,  <11.572131, 23.842318, 14.771671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.513724, 23.911041, 14.549262>,  <11.416380, 24.025581, 14.178580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.513724, 23.911041, 14.549262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576810, -0.810848, -0.099076,
		0.779786, -0.510421, -0.362498,
		0.243360, -0.286350, 0.926703,
		11.586732, 23.825136, 14.827273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.538441, 23.315172, 14.044312>,  <11.416380, 24.025581, 14.178580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.538441, 23.315172, 14.044312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.426685, 23.382812, 14.422380>,  <11.359632, 23.423397, 14.649221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.426685, 23.382812, 14.422380>,  <11.538441, 23.315172, 14.044312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.426685, 23.382812, 14.422380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579001, -0.814933, -0.025352,
		0.765964, -0.554338, 0.325591,
		-0.279388, 0.169099, 0.945171,
		11.342869, 23.433542, 14.705932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.527258, 22.731102, 14.292426>,  <11.538441, 23.315172, 14.044312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.527258, 22.731102, 14.292426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.247828, 22.954420, 14.471447>,  <11.080171, 23.088411, 14.578859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.247828, 22.954420, 14.471447>,  <11.527258, 22.731102, 14.292426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.247828, 22.954420, 14.471447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665013, -0.737435, -0.118099,
		0.264106, -0.380129, 0.886425,
		-0.698574, 0.558293, 0.447552,
		11.038257, 23.121908, 14.605713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.207678, 22.392359, 14.910265>,  <11.527258, 22.731102, 14.292426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.207678, 22.392359, 14.910265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.932449, 22.641775, 14.761803>,  <10.767312, 22.791426, 14.672726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.932449, 22.641775, 14.761803>,  <11.207678, 22.392359, 14.910265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.932449, 22.641775, 14.761803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670410, -0.741982, -0.003681,
		-0.277686, 0.246294, 0.928563,
		-0.688070, 0.623541, -0.371156,
		10.726028, 22.828836, 14.650455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.574715, 22.270615, 15.365733>,  <11.207678, 22.392359, 14.910265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.574715, 22.270615, 15.365733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.472260, 22.409735, 15.004972>,  <10.410787, 22.493206, 14.788516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.472260, 22.409735, 15.004972>,  <10.574715, 22.270615, 15.365733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.472260, 22.409735, 15.004972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795782, -0.605536, -0.007513,
		-0.548748, 0.715794, 0.431874,
		-0.256137, 0.347800, -0.901903,
		10.395418, 22.514074, 14.734402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.866688, 22.567587, 15.403610>,  <10.574715, 22.270615, 15.365733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.866688, 22.567587, 15.403610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.951400, 22.474400, 15.023952>,  <10.002227, 22.418488, 14.796158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.951400, 22.474400, 15.023952>,  <9.866688, 22.567587, 15.403610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.951400, 22.474400, 15.023952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756248, -0.654234, -0.008158,
		-0.619062, 0.719516, -0.314735,
		0.211780, -0.232968, -0.949144,
		10.014934, 22.404509, 14.739209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.244305, 22.449324, 15.073581>,  <9.866688, 22.567587, 15.403610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.244305, 22.449324, 15.073581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.496106, 22.273670, 14.817179>,  <9.647187, 22.168278, 14.663338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.496106, 22.273670, 14.817179>,  <9.244305, 22.449324, 15.073581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.496106, 22.273670, 14.817179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700650, -0.677436, -0.223989,
		-0.335879, 0.590122, -0.734127,
		0.629504, -0.439133, -0.641005,
		9.684958, 22.141930, 14.624877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.756384, 22.259714, 14.525634>,  <9.244305, 22.449324, 15.073581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.756384, 22.259714, 14.525634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.087244, 22.046661, 14.453939>,  <9.285760, 21.918829, 14.410923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.087244, 22.046661, 14.453939>,  <8.756384, 22.259714, 14.525634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.087244, 22.046661, 14.453939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561714, -0.793408, -0.234483,
		-0.017315, 0.294632, -0.955454,
		0.827150, -0.532632, -0.179237,
		9.335389, 21.886871, 14.400168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.738427, 21.977060, 13.847329>,  <8.756384, 22.259714, 14.525634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.738427, 21.977060, 13.847329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.988803, 21.733566, 14.042323>,  <9.139029, 21.587469, 14.159320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.988803, 21.733566, 14.042323>,  <8.738427, 21.977060, 13.847329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.988803, 21.733566, 14.042323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454016, -0.792672, -0.406867,
		0.634090, 0.033348, -0.772540,
		0.625939, -0.608735, 0.487485,
		9.176584, 21.550945, 14.188569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.764612, 21.400127, 13.378497>,  <8.738427, 21.977060, 13.847329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.764612, 21.400127, 13.378497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.902482, 21.262108, 13.727700>,  <8.985204, 21.179296, 13.937222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.902482, 21.262108, 13.727700>,  <8.764612, 21.400127, 13.378497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.902482, 21.262108, 13.727700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347589, -0.910803, -0.222755,
		0.871998, -0.226670, -0.433866,
		0.344674, -0.345049, 0.873007,
		9.005884, 21.158594, 13.989602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.992810, 20.592350, 13.252825>,  <8.764612, 21.400127, 13.378497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.992810, 20.592350, 13.252825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.937016, 20.645803, 13.645291>,  <8.903539, 20.677876, 13.880771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.937016, 20.645803, 13.645291>,  <8.992810, 20.592350, 13.252825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.937016, 20.645803, 13.645291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345366, -0.935198, 0.078275,
		0.928044, -0.327943, 0.176601,
		-0.139487, 0.133634, 0.981165,
		8.895169, 20.685894, 13.939641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.319515, 19.971615, 13.510728>,  <8.992810, 20.592350, 13.252825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.319515, 19.971615, 13.510728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.067565, 20.109730, 13.789018>,  <8.916395, 20.192598, 13.955992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.067565, 20.109730, 13.789018>,  <9.319515, 19.971615, 13.510728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.067565, 20.109730, 13.789018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321126, -0.931377, 0.171509,
		0.707202, -0.115386, 0.697532,
		-0.629876, 0.345287, 0.695725,
		8.878602, 20.213316, 13.997735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.174016, 19.455479, 13.919981>,  <9.319515, 19.971615, 13.510728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.174016, 19.455479, 13.919981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.906451, 19.698055, 14.091928>,  <8.745913, 19.843601, 14.195097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.906451, 19.698055, 14.091928>,  <9.174016, 19.455479, 13.919981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.906451, 19.698055, 14.091928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483760, -0.794221, 0.367679,
		0.564386, 0.037992, 0.824636,
		-0.668913, 0.606439, 0.429868,
		8.705777, 19.879988, 14.220889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.135197, 19.324440, 14.637020>,  <9.174016, 19.455479, 13.919981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.135197, 19.324440, 14.637020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.782202, 19.463570, 14.510383>,  <8.570404, 19.547049, 14.434401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.782202, 19.463570, 14.510383>,  <9.135197, 19.324440, 14.637020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.782202, 19.463570, 14.510383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451351, -0.815592, 0.362067,
		-0.132275, 0.462415, 0.876742,
		-0.882489, 0.347826, -0.316593,
		8.517455, 19.567917, 14.415404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.686321, 19.008554, 15.163337>,  <9.135197, 19.324440, 14.637020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.686321, 19.008554, 15.163337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.493147, 19.127401, 14.833855>,  <8.377242, 19.198709, 14.636166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.493147, 19.127401, 14.833855>,  <8.686321, 19.008554, 15.163337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.493147, 19.127401, 14.833855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581536, -0.812103, 0.048019,
		-0.654667, 0.502205, 0.564980,
		-0.482937, 0.297119, -0.823707,
		8.348266, 19.216537, 14.586742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.024955, 19.034689, 15.342691>,  <8.686321, 19.008554, 15.163337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.024955, 19.034689, 15.342691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.008759, 18.983250, 14.946343>,  <7.999043, 18.952385, 14.708534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.008759, 18.983250, 14.946343>,  <8.024955, 19.034689, 15.342691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.008759, 18.983250, 14.946343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550471, -0.824745, 0.129532,
		-0.833872, 0.550689, -0.037398,
		-0.040488, -0.128600, -0.990870,
		7.996613, 18.944670, 14.649082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.328813, 18.851789, 15.169619>,  <8.024955, 19.034689, 15.342691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.328813, 18.851789, 15.169619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.541267, 18.714970, 14.859548>,  <7.668739, 18.632877, 14.673505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.541267, 18.714970, 14.859548>,  <7.328813, 18.851789, 15.169619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.541267, 18.714970, 14.859548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614953, -0.784992, -0.074974,
		-0.582862, 0.516518, -0.627280,
		0.531135, -0.342048, -0.775176,
		7.700607, 18.612354, 14.626995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.837899, 18.515079, 14.727808>,  <7.328813, 18.851789, 15.169619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.837899, 18.515079, 14.727808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.190317, 18.390562, 14.585340>,  <7.401768, 18.315851, 14.499860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.190317, 18.390562, 14.585340>,  <6.837899, 18.515079, 14.727808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.190317, 18.390562, 14.585340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376882, -0.916973, -0.130848,
		-0.285866, 0.249517, -0.925215,
		0.881045, -0.311292, -0.356169,
		7.454631, 18.297174, 14.478490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.716096, 18.036089, 14.120172>,  <6.837899, 18.515079, 14.727808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.716096, 18.036089, 14.120172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.080083, 17.940573, 14.255783>,  <7.298475, 17.883263, 14.337150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.080083, 17.940573, 14.255783>,  <6.716096, 18.036089, 14.120172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.080083, 17.940573, 14.255783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240901, -0.969862, -0.036528,
		0.337534, -0.048433, -0.940066,
		0.909966, -0.238792, 0.339029,
		7.353073, 17.868935, 14.357491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.982894, 17.415455, 13.696531>,  <6.716096, 18.036089, 14.120172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.982894, 17.415455, 13.696531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.219654, 17.406094, 14.018800>,  <7.361710, 17.400476, 14.212161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.219654, 17.406094, 14.018800>,  <6.982894, 17.415455, 13.696531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.219654, 17.406094, 14.018800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054404, -0.996139, -0.068902,
		0.804173, 0.084615, -0.588341,
		0.591900, -0.023401, 0.805672,
		7.397224, 17.399073, 14.260501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.110768, 16.772921, 13.783391>,  <6.982894, 17.415455, 13.696531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.110768, 16.772921, 13.783391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.263265, 16.883104, 14.136384>,  <7.354763, 16.949215, 14.348180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.263265, 16.883104, 14.136384>,  <7.110768, 16.772921, 13.783391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.263265, 16.883104, 14.136384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038227, -0.958458, 0.282660,
		0.923684, -0.074027, -0.375935,
		0.381242, 0.275459, 0.882483,
		7.377637, 16.965742, 14.401129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.700209, 16.263210, 13.911156>,  <7.110768, 16.772921, 13.783391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.700209, 16.263210, 13.911156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.592654, 16.415394, 14.265094>,  <7.528121, 16.506704, 14.477456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.592654, 16.415394, 14.265094>,  <7.700209, 16.263210, 13.911156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.592654, 16.415394, 14.265094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133223, -0.924539, 0.357043,
		0.953913, -0.021876, 0.299284,
		-0.268889, 0.380459, 0.884844,
		7.511987, 16.529531, 14.530547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.052012, 15.947847, 14.359670>,  <7.700209, 16.263210, 13.911156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.052012, 15.947847, 14.359670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.755098, 16.079292, 14.593260>,  <7.576950, 16.158159, 14.733414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.755098, 16.079292, 14.593260>,  <8.052012, 15.947847, 14.359670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.755098, 16.079292, 14.593260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087174, -0.911446, 0.402079,
		0.664391, 0.247549, 0.705198,
		-0.742284, 0.328613, 0.583976,
		7.532413, 16.177876, 14.768453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.043494, 15.493665, 15.044828>,  <8.052012, 15.947847, 14.359670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.043494, 15.493665, 15.044828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.679009, 15.658409, 15.041665>,  <7.460318, 15.757256, 15.039767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.679009, 15.658409, 15.041665>,  <8.043494, 15.493665, 15.044828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.679009, 15.658409, 15.041665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364461, -0.797099, 0.481457,
		0.191989, 0.441593, 0.876434,
		-0.911213, 0.411860, -0.007909,
		7.405645, 15.781967, 15.039292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.873258, 15.585903, 15.702451>,  <8.043494, 15.493665, 15.044828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.873258, 15.585903, 15.702451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.565247, 15.531641, 15.453082>,  <7.380440, 15.499084, 15.303461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.565247, 15.531641, 15.453082>,  <7.873258, 15.585903, 15.702451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.565247, 15.531641, 15.453082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263088, -0.822678, 0.503970,
		-0.581242, 0.552085, 0.597796,
		-0.770028, -0.135656, -0.623422,
		7.334238, 15.490944, 15.266055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.296993, 15.049184, 15.830599>,  <7.873258, 15.585903, 15.702451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.296993, 15.049184, 15.830599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.319791, 14.666400, 15.716771>,  <8.333469, 14.436729, 15.648475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.319791, 14.666400, 15.716771>,  <8.296993, 15.049184, 15.830599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.319791, 14.666400, 15.716771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263294, 0.260536, -0.928869,
		0.963031, 0.127866, -0.237113,
		0.056994, -0.956959, -0.284570,
		8.336889, 14.379313, 15.631400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.104895, 15.071472, 15.832696>,  <8.296993, 15.049184, 15.830599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.104895, 15.071472, 15.832696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.322631, 14.745716, 15.913155>,  <9.453273, 14.550262, 15.961430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.322631, 14.745716, 15.913155>,  <9.104895, 15.071472, 15.832696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.322631, 14.745716, 15.913155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835201, 0.503771, -0.220576,
		0.078304, 0.288066, 0.954404,
		0.544342, -0.814391, 0.201146,
		9.485933, 14.501399, 15.973498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.655349, 15.181737, 16.407501>,  <9.104895, 15.071472, 15.832696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.655349, 15.181737, 16.407501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.731737, 14.918699, 16.115995>,  <9.777571, 14.760877, 15.941092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.731737, 14.918699, 16.115995>,  <9.655349, 15.181737, 16.407501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.731737, 14.918699, 16.115995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833046, 0.501269, -0.234015,
		0.519195, -0.562406, 0.643534,
		0.190972, -0.657594, -0.728766,
		9.789029, 14.721421, 15.897366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.396993, 15.416165, 16.510559>,  <9.655349, 15.181737, 16.407501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.396993, 15.416165, 16.510559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.304245, 15.234543, 16.166451>,  <10.248596, 15.125569, 15.959985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.304245, 15.234543, 16.166451>,  <10.396993, 15.416165, 16.510559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.304245, 15.234543, 16.166451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724329, 0.509718, -0.464259,
		0.649296, -0.730768, 0.210698,
		-0.231869, -0.454056, -0.860273,
		10.234684, 15.098326, 15.908368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.031160, 15.234203, 16.257017>,  <10.396993, 15.416165, 16.510559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.031160, 15.234203, 16.257017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.753844, 15.270416, 15.971038>,  <10.587455, 15.292144, 15.799450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.753844, 15.270416, 15.971038>,  <11.031160, 15.234203, 16.257017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.753844, 15.270416, 15.971038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625116, 0.569177, -0.534104,
		0.358579, -0.817216, -0.451198,
		-0.693290, 0.090533, -0.714950,
		10.545857, 15.297576, 15.756553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.698253, 15.079212, 16.761379>,  <11.031160, 15.234203, 16.257017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.698253, 15.079212, 16.761379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.483072, 14.749002, 16.829630>,  <11.353964, 14.550875, 16.870581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.483072, 14.749002, 16.829630>,  <11.698253, 15.079212, 16.761379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.483072, 14.749002, 16.829630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773786, -0.563883, -0.288601,
		0.334462, -0.023224, 0.942123,
		-0.537950, -0.825528, 0.170627,
		11.321688, 14.501343, 16.880817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.106501, 15.363716, 17.433107>,  <11.698253, 15.079212, 16.761379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.106501, 15.363716, 17.433107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.375951, 15.068537, 17.449409>,  <12.537621, 14.891429, 17.459190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.375951, 15.068537, 17.449409>,  <12.106501, 15.363716, 17.433107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.375951, 15.068537, 17.449409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223013, -0.150384, 0.963146,
		-0.704624, -0.657888, -0.265874,
		0.673626, -0.737949, 0.040753,
		12.578038, 14.847153, 17.461636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.786849, 14.704392, 17.576853>,  <12.106501, 15.363716, 17.433107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.786849, 14.704392, 17.576853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.165135, 14.684581, 17.705332>,  <12.392107, 14.672694, 17.782419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.165135, 14.684581, 17.705332>,  <11.786849, 14.704392, 17.576853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.165135, 14.684581, 17.705332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322382, -0.017892, 0.946441,
		-0.041121, -0.998613, -0.032885,
		0.945716, -0.049520, 0.321199,
		12.448851, 14.669723, 17.801691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.823261, 14.191024, 18.084219>,  <11.786849, 14.704392, 17.576853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.823261, 14.191024, 18.084219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.147734, 14.411357, 18.162775>,  <12.342417, 14.543556, 18.209909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.147734, 14.411357, 18.162775>,  <11.823261, 14.191024, 18.084219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.147734, 14.411357, 18.162775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273455, 0.060437, 0.959984,
		0.516921, -0.832425, 0.199654,
		0.811181, 0.550832, 0.196390,
		12.391088, 14.576607, 18.221691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.112726, 13.867047, 18.628988>,  <11.823261, 14.191024, 18.084219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.112726, 13.867047, 18.628988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.251903, 14.242048, 18.631023>,  <12.335408, 14.467049, 18.632244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.251903, 14.242048, 18.631023>,  <12.112726, 13.867047, 18.628988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.251903, 14.242048, 18.631023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050581, 0.013352, 0.998631,
		0.936151, -0.347722, 0.052066,
		0.347941, 0.937503, 0.005089,
		12.356285, 14.523299, 18.632549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.562077, 13.874537, 19.133759>,  <12.112726, 13.867047, 18.628988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.562077, 13.874537, 19.133759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.444073, 14.254352, 19.091139>,  <12.373270, 14.482240, 19.065567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.444073, 14.254352, 19.091139>,  <12.562077, 13.874537, 19.133759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.444073, 14.254352, 19.091139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184868, 0.052683, 0.981350,
		0.937439, 0.309207, 0.159997,
		-0.295011, 0.949535, -0.106550,
		12.355570, 14.539212, 19.059174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.853309, 14.201665, 19.721609>,  <12.562077, 13.874537, 19.133759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.853309, 14.201665, 19.721609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.575036, 14.459464, 19.594707>,  <12.408072, 14.614143, 19.518566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.575036, 14.459464, 19.594707>,  <12.853309, 14.201665, 19.721609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.575036, 14.459464, 19.594707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180837, 0.270294, 0.945642,
		0.695216, 0.715237, -0.071489,
		-0.695681, 0.644498, -0.317254,
		12.366332, 14.652813, 19.499531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.029979, 14.930882, 19.864563>,  <12.853309, 14.201665, 19.721609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.029979, 14.930882, 19.864563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632755, 14.886137, 19.850012>,  <12.394422, 14.859290, 19.841280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.632755, 14.886137, 19.850012>,  <13.029979, 14.930882, 19.864563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.632755, 14.886137, 19.850012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073931, 0.352988, 0.932702,
		-0.091493, 0.928917, -0.358807,
		-0.993057, -0.111863, -0.036380,
		12.334838, 14.852578, 19.839098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.819304, 15.467343, 20.370789>,  <13.029979, 14.930882, 19.864563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.819304, 15.467343, 20.370789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.457620, 15.308720, 20.307358>,  <12.240609, 15.213546, 20.269299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.457620, 15.308720, 20.307358>,  <12.819304, 15.467343, 20.370789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.457620, 15.308720, 20.307358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260747, 0.218507, 0.940354,
		-0.338256, 0.891625, -0.300977,
		-0.904209, -0.396559, -0.158578,
		12.186357, 15.189752, 20.259785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.290932, 16.015060, 20.447622>,  <12.819304, 15.467343, 20.370789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.290932, 16.015060, 20.447622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.130398, 15.654378, 20.511948>,  <12.034078, 15.437969, 20.550543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.130398, 15.654378, 20.511948>,  <12.290932, 16.015060, 20.447622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.130398, 15.654378, 20.511948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208496, 0.260900, 0.942582,
		-0.891886, 0.344762, -0.292710,
		-0.401335, -0.901704, 0.160812,
		12.009997, 15.383866, 20.560190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.579345, 16.096704, 20.721745>,  <12.290932, 16.015060, 20.447622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.579345, 16.096704, 20.721745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.736316, 15.744357, 20.827627>,  <11.830499, 15.532948, 20.891157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.736316, 15.744357, 20.827627>,  <11.579345, 16.096704, 20.721745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.736316, 15.744357, 20.827627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296700, 0.151177, 0.942929,
		-0.870615, -0.448570, -0.202028,
		0.392427, -0.880869, 0.264708,
		11.854044, 15.480097, 20.907040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.152584, 15.904434, 21.171412>,  <11.579345, 16.096704, 20.721745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.152584, 15.904434, 21.171412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.427467, 15.623409, 21.245333>,  <11.592398, 15.454795, 21.289684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.427467, 15.623409, 21.245333>,  <11.152584, 15.904434, 21.171412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.427467, 15.623409, 21.245333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115485, 0.145500, 0.982595,
		-0.717222, -0.696589, 0.018853,
		0.687208, -0.702562, 0.184801,
		11.633630, 15.412641, 21.300774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.840252, 15.412631, 21.692202>,  <11.152584, 15.904434, 21.171412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.840252, 15.412631, 21.692202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.238111, 15.372391, 21.701611>,  <11.476828, 15.348247, 21.707256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.238111, 15.372391, 21.701611>,  <10.840252, 15.412631, 21.692202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.238111, 15.372391, 21.701611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029548, -0.058820, 0.997831,
		-0.099000, -0.993186, -0.061478,
		0.994649, -0.100602, 0.023523,
		11.536506, 15.342211, 21.708668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.968331, 14.839308, 22.106375>,  <10.840252, 15.412631, 21.692202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.968331, 14.839308, 22.106375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295369, 15.069556, 22.100710>,  <11.491591, 15.207705, 22.097311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295369, 15.069556, 22.100710>,  <10.968331, 14.839308, 22.106375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.295369, 15.069556, 22.100710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099751, -0.117378, 0.988065,
		0.567088, -0.809249, -0.153386,
		0.817594, 0.575621, -0.014160,
		11.540648, 15.242243, 22.096462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.396963, 14.490139, 22.490831>,  <10.968331, 14.839308, 22.106375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.396963, 14.490139, 22.490831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.543697, 14.860172, 22.530134>,  <11.631738, 15.082192, 22.553715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.543697, 14.860172, 22.530134>,  <11.396963, 14.490139, 22.490831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.543697, 14.860172, 22.530134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144519, -0.047668, 0.988353,
		0.918992, -0.376762, 0.116206,
		0.366835, 0.925083, 0.098256,
		11.653748, 15.137697, 22.559610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.843464, 14.367973, 23.028885>,  <11.396963, 14.490139, 22.490831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.843464, 14.367973, 23.028885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.778677, 14.761939, 23.004517>,  <11.739805, 14.998319, 22.989895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.778677, 14.761939, 23.004517>,  <11.843464, 14.367973, 23.028885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.778677, 14.761939, 23.004517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022046, 0.065332, 0.997620,
		0.986550, 0.160239, -0.032295,
		-0.161967, 0.984914, -0.060921,
		11.730087, 15.057413, 22.986240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.344678, 14.637425, 23.574991>,  <11.843464, 14.367973, 23.028885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.344678, 14.637425, 23.574991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.058525, 14.902940, 23.487705>,  <11.886833, 15.062248, 23.435333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.058525, 14.902940, 23.487705>,  <12.344678, 14.637425, 23.574991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.058525, 14.902940, 23.487705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026477, 0.337827, 0.940836,
		0.698233, 0.667279, -0.259250,
		-0.715381, 0.663786, -0.218214,
		11.843910, 15.102076, 23.422241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.532783, 15.294622, 23.768204>,  <12.344678, 14.637425, 23.574991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.532783, 15.294622, 23.768204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.134617, 15.317650, 23.737640>,  <11.895718, 15.331467, 23.719303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.134617, 15.317650, 23.737640>,  <12.532783, 15.294622, 23.768204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.134617, 15.317650, 23.737640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048158, 0.388581, 0.920155,
		0.082662, 0.919614, -0.384026,
		-0.995413, 0.057568, -0.076408,
		11.835993, 15.334920, 23.714718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.288947, 15.808001, 24.231548>,  <12.532783, 15.294622, 23.768204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.288947, 15.808001, 24.231548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.930230, 15.641737, 24.170895>,  <11.715000, 15.541979, 24.134502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.930230, 15.641737, 24.170895>,  <12.288947, 15.808001, 24.231548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.930230, 15.641737, 24.170895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321390, 0.376424, 0.868915,
		-0.304095, 0.827969, -0.471163,
		-0.896792, -0.415660, -0.151632,
		11.661193, 15.517039, 24.125404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.788774, 16.311769, 24.505091>,  <12.288947, 15.808001, 24.231548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.788774, 16.311769, 24.505091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.597541, 15.960605, 24.494476>,  <11.482800, 15.749906, 24.488108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.597541, 15.960605, 24.494476>,  <11.788774, 16.311769, 24.505091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.597541, 15.960605, 24.494476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307088, 0.138772, 0.941509,
		-0.822881, 0.458269, -0.335941,
		-0.478084, -0.877913, -0.026536,
		11.454116, 15.697230, 24.486515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.337788, 16.381077, 24.931536>,  <11.788774, 16.311769, 24.505091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.337788, 16.381077, 24.931536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.316154, 15.982802, 24.901382>,  <11.303175, 15.743837, 24.883291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.316154, 15.982802, 24.901382>,  <11.337788, 16.381077, 24.931536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.316154, 15.982802, 24.901382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416092, -0.046155, 0.908151,
		-0.907713, 0.080482, -0.411801,
		-0.054083, -0.995687, -0.075383,
		11.299930, 15.684096, 24.878767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.611184, 16.185696, 25.095974>,  <11.337788, 16.381077, 24.931536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.611184, 16.185696, 25.095974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.842431, 15.865133, 25.157333>,  <10.981179, 15.672796, 25.194149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.842431, 15.865133, 25.157333>,  <10.611184, 16.185696, 25.095974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.842431, 15.865133, 25.157333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387936, -0.104566, 0.915735,
		-0.717834, -0.588912, -0.371345,
		0.578118, -0.801404, 0.153399,
		11.015866, 15.624712, 25.203354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.157760, 15.647758, 25.309416>,  <10.611184, 16.185696, 25.095974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.157760, 15.647758, 25.309416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.530934, 15.591948, 25.442179>,  <10.754839, 15.558461, 25.521837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.530934, 15.591948, 25.442179>,  <10.157760, 15.647758, 25.309416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.530934, 15.591948, 25.442179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359645, -0.317839, 0.877288,
		-0.016910, -0.937823, -0.346703,
		0.932936, -0.139525, 0.331908,
		10.810815, 15.550090, 25.541752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.219315, 14.976061, 25.694126>,  <10.157760, 15.647758, 25.309416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.219315, 14.976061, 25.694126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.551239, 15.146010, 25.838844>,  <10.750394, 15.247980, 25.925674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.551239, 15.146010, 25.838844>,  <10.219315, 14.976061, 25.694126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.551239, 15.146010, 25.838844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330656, -0.147910, 0.932089,
		0.449533, -0.893087, 0.017750,
		0.829811, 0.424874, 0.361795,
		10.800182, 15.273473, 25.947382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.269971, 14.752605, 26.339842>,  <10.219315, 14.976061, 25.694126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.269971, 14.752605, 26.339842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.517875, 15.066455, 26.333366>,  <10.666617, 15.254765, 26.329481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.517875, 15.066455, 26.333366>,  <10.269971, 14.752605, 26.339842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.517875, 15.066455, 26.333366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205606, 0.182245, 0.961516,
		0.757380, -0.592580, 0.274272,
		0.619760, 0.784625, -0.016190,
		10.703803, 15.301843, 26.328510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.810756, 14.618876, 26.788570>,  <10.269971, 14.752605, 26.339842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.810756, 14.618876, 26.788570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.776956, 15.015594, 26.750200>,  <10.756676, 15.253624, 26.727179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.776956, 15.015594, 26.750200>,  <10.810756, 14.618876, 26.788570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.776956, 15.015594, 26.750200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228406, 0.074427, 0.970717,
		0.969892, 0.103935, 0.220243,
		-0.084500, 0.991796, -0.095926,
		10.751606, 15.313132, 26.721422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.177263, 14.890318, 27.405624>,  <10.810756, 14.618876, 26.788570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.177263, 14.890318, 27.405624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.966972, 15.207733, 27.283047>,  <10.840797, 15.398183, 27.209501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.966972, 15.207733, 27.283047>,  <11.177263, 14.890318, 27.405624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.966972, 15.207733, 27.283047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346114, 0.129530, 0.929208,
		0.777056, 0.594573, 0.206558,
		-0.525727, 0.793539, -0.306442,
		10.809255, 15.445795, 27.191114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.366419, 15.430139, 27.850004>,  <11.177263, 14.890318, 27.405624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.366419, 15.430139, 27.850004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.020289, 15.541414, 27.683235>,  <10.812612, 15.608180, 27.583174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.020289, 15.541414, 27.683235>,  <11.366419, 15.430139, 27.850004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.020289, 15.541414, 27.683235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335122, 0.297419, 0.893999,
		0.372702, 0.913319, -0.164136,
		-0.865324, 0.278190, -0.416923,
		10.760693, 15.624871, 27.558159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.150828, 16.073364, 28.140280>,  <11.366419, 15.430139, 27.850004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.150828, 16.073364, 28.140280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.806475, 15.907181, 28.022793>,  <10.599862, 15.807470, 27.952301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.806475, 15.907181, 28.022793>,  <11.150828, 16.073364, 28.140280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.806475, 15.907181, 28.022793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464279, 0.405298, 0.787514,
		-0.208138, 0.814326, -0.541805,
		-0.860885, -0.415460, -0.293717,
		10.548209, 15.782543, 27.934677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.704274, 16.565428, 28.177246>,  <11.150828, 16.073364, 28.140280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.704274, 16.565428, 28.177246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.483997, 16.232403, 28.201185>,  <10.351831, 16.032589, 28.215549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.483997, 16.232403, 28.201185>,  <10.704274, 16.565428, 28.177246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.483997, 16.232403, 28.201185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465908, 0.366080, 0.805553,
		-0.692582, 0.415726, -0.589493,
		-0.550691, -0.832561, 0.059850,
		10.318790, 15.982635, 28.219141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.986897, 16.775154, 28.345043>,  <10.704274, 16.565428, 28.177246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.986897, 16.775154, 28.345043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.997069, 16.387941, 28.444855>,  <10.003173, 16.155613, 28.504742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.997069, 16.387941, 28.444855>,  <9.986897, 16.775154, 28.345043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.997069, 16.387941, 28.444855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543618, 0.196088, 0.816106,
		-0.838947, -0.156403, -0.521253,
		0.025430, -0.968033, 0.249531,
		10.004699, 16.097532, 28.519714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.350488, 16.668278, 28.623907>,  <9.986897, 16.775154, 28.345043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.350488, 16.668278, 28.623907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.583529, 16.361172, 28.730574>,  <9.723354, 16.176908, 28.794573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.583529, 16.361172, 28.730574>,  <9.350488, 16.668278, 28.623907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.583529, 16.361172, 28.730574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286045, 0.113415, 0.951481,
		-0.760756, -0.630615, -0.153538,
		0.582604, -0.767764, 0.266666,
		9.758311, 16.130842, 28.810574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.983112, 16.095026, 28.931076>,  <9.350488, 16.668278, 28.623907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.983112, 16.095026, 28.931076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353875, 16.059666, 29.076969>,  <9.576333, 16.038450, 29.164505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353875, 16.059666, 29.076969>,  <8.983112, 16.095026, 28.931076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.353875, 16.059666, 29.076969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357933, 0.083919, 0.929968,
		-0.112818, -0.992544, 0.046143,
		0.926906, -0.088401, 0.364732,
		9.631948, 16.033146, 29.186388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.905671, 15.794926, 29.540876>,  <8.983112, 16.095026, 28.931076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.905671, 15.794926, 29.540876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.286901, 15.890809, 29.614840>,  <9.515638, 15.948339, 29.659218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.286901, 15.890809, 29.614840>,  <8.905671, 15.794926, 29.540876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.286901, 15.890809, 29.614840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169298, -0.084332, 0.981950,
		0.250975, -0.967175, -0.039793,
		0.953074, 0.239708, 0.184906,
		9.572823, 15.962722, 29.670311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.126703, 15.272382, 29.953592>,  <8.905671, 15.794926, 29.540876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.126703, 15.272382, 29.953592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.355087, 15.598905, 29.988571>,  <9.492118, 15.794818, 30.009558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.355087, 15.598905, 29.988571>,  <9.126703, 15.272382, 29.953592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.355087, 15.598905, 29.988571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189124, 0.027130, 0.981578,
		0.798897, -0.576980, 0.169873,
		0.570960, 0.816308, 0.087447,
		9.526375, 15.843797, 30.014805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.706986, 15.230205, 30.464588>,  <9.126703, 15.272382, 29.953592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.706986, 15.230205, 30.464588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.608105, 15.617708, 30.456646>,  <9.548776, 15.850210, 30.451881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.608105, 15.617708, 30.456646>,  <9.706986, 15.230205, 30.464588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.608105, 15.617708, 30.456646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077991, 0.000532, 0.996954,
		0.965820, 0.248000, 0.075423,
		-0.247204, 0.968760, -0.019856,
		9.533943, 15.908337, 30.450689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.200848, 15.499207, 30.897575>,  <9.706986, 15.230205, 30.464588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.200848, 15.499207, 30.897575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.905470, 15.768497, 30.882242>,  <9.728243, 15.930070, 30.873043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.905470, 15.768497, 30.882242>,  <10.200848, 15.499207, 30.897575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.905470, 15.768497, 30.882242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163484, 0.233891, 0.958420,
		0.654197, 0.701473, -0.282777,
		-0.738444, 0.673224, -0.038331,
		9.683937, 15.970464, 30.870743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.374334, 15.857689, 31.414757>,  <10.200848, 15.499207, 30.897575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.374334, 15.857689, 31.414757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.011352, 15.999434, 31.324469>,  <9.793562, 16.084480, 31.270296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.011352, 15.999434, 31.324469>,  <10.374334, 15.857689, 31.414757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.011352, 15.999434, 31.324469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057218, 0.428004, 0.901964,
		0.416229, 0.831409, -0.368120,
		-0.907458, 0.354361, -0.225719,
		9.739115, 16.105742, 31.256752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.396536, 16.551758, 31.523214>,  <10.374334, 15.857689, 31.414757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.396536, 16.551758, 31.523214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.007073, 16.460966, 31.531946>,  <9.773396, 16.406492, 31.537186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.007073, 16.460966, 31.531946>,  <10.396536, 16.551758, 31.523214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.007073, 16.460966, 31.531946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039687, 0.262947, 0.963994,
		-0.224545, 0.937731, -0.265027,
		-0.973655, -0.226978, 0.021828,
		9.714977, 16.392872, 31.538494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.057785, 17.154421, 31.835808>,  <10.396536, 16.551758, 31.523214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.057785, 17.154421, 31.835808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.775440, 16.874306, 31.878431>,  <9.606033, 16.706236, 31.904005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.775440, 16.874306, 31.878431>,  <10.057785, 17.154421, 31.835808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.775440, 16.874306, 31.878431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172964, 0.316274, 0.932767,
		-0.686907, 0.639975, -0.344370,
		-0.705863, -0.700288, 0.106558,
		9.563682, 16.664219, 31.910398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.312698, 17.439278, 31.940645>,  <10.057785, 17.154421, 31.835808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.312698, 17.439278, 31.940645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.368176, 17.076933, 32.100735>,  <9.401464, 16.859526, 32.196789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.368176, 17.076933, 32.100735>,  <9.312698, 17.439278, 31.940645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.368176, 17.076933, 32.100735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040971, 0.398534, 0.916238,
		-0.989487, -0.143475, 0.018161,
		0.138695, -0.905862, 0.400222,
		9.409785, 16.805174, 32.220802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.973307, 17.548487, 32.574799>,  <9.312698, 17.439278, 31.940645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.973307, 17.548487, 32.574799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.181450, 17.211765, 32.632202>,  <9.306335, 17.009733, 32.666645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.181450, 17.211765, 32.632202>,  <8.973307, 17.548487, 32.574799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.181450, 17.211765, 32.632202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266360, 0.319673, 0.909319,
		-0.811345, -0.434944, 0.390567,
		0.520357, -0.841803, 0.143513,
		9.337557, 16.959225, 32.675255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.965246, 17.406927, 33.292557>,  <8.973307, 17.548487, 32.574799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.965246, 17.406927, 33.292557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.269228, 17.193056, 33.144722>,  <9.451617, 17.064734, 33.056023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.269228, 17.193056, 33.144722>,  <8.965246, 17.406927, 33.292557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.269228, 17.193056, 33.144722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542204, 0.207909, 0.814118,
		-0.358449, -0.819083, 0.447904,
		0.759953, -0.534675, -0.369585,
		9.497214, 17.032654, 33.033848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.274613, 16.882439, 33.823338>,  <8.965246, 17.406927, 33.292557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.274613, 16.882439, 33.823338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.540638, 16.986099, 33.543186>,  <9.700253, 17.048296, 33.375095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.540638, 16.986099, 33.543186>,  <9.274613, 16.882439, 33.823338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.540638, 16.986099, 33.543186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707018, 0.083476, 0.702251,
		0.240454, -0.962223, -0.127708,
		0.665062, 0.259151, -0.700382,
		9.740156, 17.063845, 33.333073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.890590, 16.434956, 33.896816>,  <9.274613, 16.882439, 33.823338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.890590, 16.434956, 33.896816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.975677, 16.781265, 33.715626>,  <10.026729, 16.989052, 33.606911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.975677, 16.781265, 33.715626>,  <9.890590, 16.434956, 33.896816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.975677, 16.781265, 33.715626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801506, 0.110547, 0.587680,
		0.558874, -0.488071, -0.670408,
		0.212718, 0.865775, -0.452973,
		10.039492, 17.040998, 33.579735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.663314, 16.581766, 33.895023>,  <9.890590, 16.434956, 33.896816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.663314, 16.581766, 33.895023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.488400, 16.939030, 33.852982>,  <10.383451, 17.153387, 33.827755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.488400, 16.939030, 33.852982>,  <10.663314, 16.581766, 33.895023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.488400, 16.939030, 33.852982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576062, 0.367934, 0.729915,
		0.690604, 0.258633, -0.675408,
		-0.437286, 0.893159, -0.105108,
		10.357214, 17.206978, 33.821449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.454121, 16.843462, 33.880352>,  <10.663314, 16.581766, 33.895023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.454121, 16.843462, 33.880352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.504130, 16.449665, 33.929577>,  <11.534137, 16.213387, 33.959110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.504130, 16.449665, 33.929577>,  <11.454121, 16.843462, 33.880352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.504130, 16.449665, 33.929577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121618, -0.107891, -0.986696,
		0.984671, 0.138328, 0.106243,
		0.125025, -0.984492, 0.123060,
		11.541638, 16.154318, 33.966496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.055977, 16.670395, 33.601833>,  <11.454121, 16.843462, 33.880352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.055977, 16.670395, 33.601833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.815915, 16.350952, 33.619926>,  <11.671878, 16.159286, 33.630783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.815915, 16.350952, 33.619926>,  <12.055977, 16.670395, 33.601833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.815915, 16.350952, 33.619926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271198, -0.256354, -0.927758,
		0.752507, -0.544530, 0.370432,
		-0.600154, -0.798605, 0.045232,
		11.635869, 16.111370, 33.633495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.287528, 16.377310, 32.993031>,  <12.055977, 16.670395, 33.601833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.287528, 16.377310, 32.993031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.989964, 16.132891, 33.101269>,  <11.811426, 15.986239, 33.166210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.989964, 16.132891, 33.101269>,  <12.287528, 16.377310, 32.993031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.989964, 16.132891, 33.101269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117851, -0.518513, -0.846909,
		0.657807, -0.598134, 0.457739,
		-0.743909, -0.611048, 0.270591,
		11.766791, 15.949576, 33.182446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.512409, 15.663577, 33.092823>,  <12.287528, 16.377310, 32.993031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.512409, 15.663577, 33.092823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.124085, 15.670966, 32.997166>,  <11.891091, 15.675400, 32.939774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.124085, 15.670966, 32.997166>,  <12.512409, 15.663577, 33.092823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.124085, 15.670966, 32.997166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214033, -0.383287, -0.898488,
		-0.108256, -0.923445, 0.368145,
		-0.970809, 0.018472, -0.239141,
		11.832843, 15.676508, 32.925423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.146852, 15.179086, 33.589211>,  <12.512409, 15.663577, 33.092823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.146852, 15.179086, 33.589211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.288165, 15.526166, 33.729088>,  <12.372953, 15.734414, 33.813015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.288165, 15.526166, 33.729088>,  <12.146852, 15.179086, 33.589211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.288165, 15.526166, 33.729088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538080, 0.117313, -0.834690,
		-0.765285, 0.483045, -0.425448,
		0.353283, 0.867701, 0.349695,
		12.394150, 15.786476, 33.833996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.371573, 15.044436, 33.764305>,  <12.146852, 15.179086, 33.589211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.371573, 15.044436, 33.764305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.034945, 14.994157, 33.554180>,  <10.832967, 14.963989, 33.428104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.034945, 14.994157, 33.554180>,  <11.371573, 15.044436, 33.764305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.034945, 14.994157, 33.554180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533135, -0.349455, -0.770486,
		-0.086726, -0.928483, 0.361105,
		-0.841573, -0.125696, -0.525314,
		10.782473, 14.956448, 33.396587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.421922, 14.359144, 33.511326>,  <11.371573, 15.044436, 33.764305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.421922, 14.359144, 33.511326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.160362, 14.560326, 33.285244>,  <11.003427, 14.681034, 33.149593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.160362, 14.560326, 33.285244>,  <11.421922, 14.359144, 33.511326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.160362, 14.560326, 33.285244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423121, -0.376199, -0.824283,
		-0.627206, -0.778146, 0.033186,
		-0.653897, 0.502954, -0.565204,
		10.964193, 14.711211, 33.115685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.176739, 13.919359, 32.969967>,  <11.421922, 14.359144, 33.511326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.176739, 13.919359, 32.969967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.130923, 14.285374, 32.815262>,  <11.103434, 14.504982, 32.722439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.130923, 14.285374, 32.815262>,  <11.176739, 13.919359, 32.969967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.130923, 14.285374, 32.815262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358939, -0.324908, -0.874985,
		-0.926306, -0.239046, -0.291227,
		-0.114540, 0.915037, -0.386767,
		11.096561, 14.559885, 32.699230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.868794, 13.863852, 32.384392>,  <11.176739, 13.919359, 32.969967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.868794, 13.863852, 32.384392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.049484, 14.220521, 32.372627>,  <11.157898, 14.434523, 32.365570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.049484, 14.220521, 32.372627>,  <10.868794, 13.863852, 32.384392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.049484, 14.220521, 32.372627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395788, -0.229832, -0.889117,
		-0.799561, 0.389995, -0.456734,
		0.451724, 0.891673, -0.029409,
		11.185001, 14.488023, 32.363804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.657217, 14.152838, 31.750799>,  <10.868794, 13.863852, 32.384392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.657217, 14.152838, 31.750799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.989599, 14.347063, 31.859423>,  <11.189029, 14.463598, 31.924597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.989599, 14.347063, 31.859423>,  <10.657217, 14.152838, 31.750799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.989599, 14.347063, 31.859423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400667, -0.183659, -0.897627,
		-0.385980, 0.854692, -0.347161,
		0.830954, 0.485562, 0.271558,
		11.238886, 14.492732, 31.940889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.786285, 14.605235, 31.190063>,  <10.657217, 14.152838, 31.750799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.786285, 14.605235, 31.190063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.128696, 14.571126, 31.394003>,  <11.334143, 14.550660, 31.516367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.128696, 14.571126, 31.394003>,  <10.786285, 14.605235, 31.190063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.128696, 14.571126, 31.394003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504903, -0.073605, -0.860032,
		0.110865, 0.993635, -0.019954,
		0.856027, -0.085273, 0.509849,
		11.385505, 14.545544, 31.546957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.178199, 14.962329, 30.772518>,  <10.786285, 14.605235, 31.190063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.178199, 14.962329, 30.772518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.420523, 14.775173, 31.029913>,  <11.565917, 14.662880, 31.184349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.420523, 14.775173, 31.029913>,  <11.178199, 14.962329, 30.772518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.420523, 14.775173, 31.029913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654545, -0.166685, -0.737420,
		0.452290, 0.867926, 0.205275,
		0.605810, -0.467889, 0.643486,
		11.602265, 14.634807, 31.222960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.663959, 15.271710, 30.607063>,  <11.178199, 14.962329, 30.772518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.663959, 15.271710, 30.607063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.800800, 14.934013, 30.772093>,  <11.882906, 14.731395, 30.871111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.800800, 14.934013, 30.772093>,  <11.663959, 15.271710, 30.607063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.800800, 14.934013, 30.772093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696488, -0.066910, -0.714442,
		0.630768, 0.531767, 0.565115,
		0.342105, -0.844243, 0.412574,
		11.903432, 14.680740, 30.895864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.375844, 15.308676, 30.542185>,  <11.663959, 15.271710, 30.607063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.375844, 15.308676, 30.542185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.281845, 14.922331, 30.585794>,  <12.225446, 14.690524, 30.611959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.281845, 14.922331, 30.585794>,  <12.375844, 15.308676, 30.542185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.281845, 14.922331, 30.585794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576201, -0.228759, -0.784641,
		0.782795, -0.121570, 0.610289,
		-0.234998, -0.965862, 0.109023,
		12.211346, 14.632572, 30.618502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.994404, 15.035765, 30.576860>,  <12.375844, 15.308676, 30.542185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.994404, 15.035765, 30.576860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.735264, 14.754043, 30.460762>,  <12.579780, 14.585010, 30.391102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.735264, 14.754043, 30.460762>,  <12.994404, 15.035765, 30.576860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.735264, 14.754043, 30.460762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449252, -0.045543, -0.892244,
		0.615194, -0.708434, 0.345916,
		-0.647850, -0.704306, -0.290247,
		12.540909, 14.542750, 30.373688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.390387, 14.510489, 30.309349>,  <12.994404, 15.035765, 30.576860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.390387, 14.510489, 30.309349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.017584, 14.475727, 30.168602>,  <12.793902, 14.454869, 30.084154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.017584, 14.475727, 30.168602>,  <13.390387, 14.510489, 30.309349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.017584, 14.475727, 30.168602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360882, -0.132607, -0.923136,
		0.033568, -0.987351, 0.154954,
		-0.932007, -0.086908, -0.351866,
		12.737982, 14.449656, 30.063042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.402261, 13.980088, 29.774378>,  <13.390387, 14.510489, 30.309349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.402261, 13.980088, 29.774378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.052087, 14.156728, 29.695784>,  <12.841983, 14.262712, 29.648626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.052087, 14.156728, 29.695784>,  <13.402261, 13.980088, 29.774378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.052087, 14.156728, 29.695784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158892, -0.120988, -0.979855,
		-0.456475, -0.889018, 0.035751,
		-0.875434, 0.441598, -0.196486,
		12.789456, 14.289207, 29.636837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.100981, 13.561528, 29.246088>,  <13.402261, 13.980088, 29.774378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.100981, 13.561528, 29.246088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.916986, 13.916681, 29.242565>,  <12.806590, 14.129773, 29.240452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.916986, 13.916681, 29.242565>,  <13.100981, 13.561528, 29.246088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.916986, 13.916681, 29.242565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121762, 0.053249, -0.991130,
		-0.879539, -0.456977, -0.132605,
		-0.459984, 0.887883, -0.008808,
		12.778991, 14.183046, 29.239923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.560985, 13.528870, 28.804312>,  <13.100981, 13.561528, 29.246088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.560985, 13.528870, 28.804312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.642906, 13.920311, 28.812210>,  <12.692060, 14.155176, 28.816948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.642906, 13.920311, 28.812210>,  <12.560985, 13.528870, 28.804312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.642906, 13.920311, 28.812210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082555, 0.002830, -0.996582,
		-0.975315, 0.205734, -0.080209,
		0.204804, 0.978604, 0.019745,
		12.704348, 14.213892, 28.818134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.229455, 13.826990, 28.147659>,  <12.560985, 13.528870, 28.804312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.229455, 13.826990, 28.147659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.481256, 14.113482, 28.268150>,  <12.632338, 14.285378, 28.340445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.481256, 14.113482, 28.268150>,  <12.229455, 13.826990, 28.147659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.481256, 14.113482, 28.268150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230667, 0.197938, -0.952687,
		-0.741968, 0.669204, -0.040608,
		0.629504, 0.716231, 0.301227,
		12.670108, 14.328352, 28.358519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.020671, 14.339173, 27.634178>,  <12.229455, 13.826990, 28.147659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.020671, 14.339173, 27.634178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.378726, 14.428938, 27.788252>,  <12.593559, 14.482797, 27.880697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.378726, 14.428938, 27.788252>,  <12.020671, 14.339173, 27.634178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.378726, 14.428938, 27.788252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361772, 0.139190, -0.921817,
		-0.260480, 0.964503, 0.043409,
		0.895138, 0.224411, 0.385186,
		12.647267, 14.496262, 27.903809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.234594, 15.039816, 27.470560>,  <12.020671, 14.339173, 27.634178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.234594, 15.039816, 27.470560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.552561, 14.802046, 27.519173>,  <12.743340, 14.659384, 27.548340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.552561, 14.802046, 27.519173>,  <12.234594, 15.039816, 27.470560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.552561, 14.802046, 27.519173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354537, 0.292544, -0.888100,
		0.492355, 0.749051, 0.443293,
		0.794915, -0.594425, 0.121530,
		12.791036, 14.623718, 27.555632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.913614, 15.379635, 27.271830>,  <12.234594, 15.039816, 27.470560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.913614, 15.379635, 27.271830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.991602, 14.987564, 27.285913>,  <13.038394, 14.752321, 27.294365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.991602, 14.987564, 27.285913>,  <12.913614, 15.379635, 27.271830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.991602, 14.987564, 27.285913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525771, 0.074141, -0.847389,
		0.827981, 0.183727, 0.529804,
		0.194968, -0.980177, 0.035211,
		13.050093, 14.693511, 27.296476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.554508, 15.305984, 27.058372>,  <12.913614, 15.379635, 27.271830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.554508, 15.305984, 27.058372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444286, 14.921824, 27.041903>,  <13.378153, 14.691327, 27.032021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.444286, 14.921824, 27.041903>,  <13.554508, 15.305984, 27.058372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.444286, 14.921824, 27.041903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576577, -0.130853, -0.806496,
		0.769174, -0.245974, 0.589804,
		-0.275555, -0.960403, -0.041174,
		13.361620, 14.633702, 27.029551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.168200, 14.982199, 26.833572>,  <13.554508, 15.305984, 27.058372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.168200, 14.982199, 26.833572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.886782, 14.721303, 26.720711>,  <13.717931, 14.564766, 26.652994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.886782, 14.721303, 26.720711>,  <14.168200, 14.982199, 26.833572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.886782, 14.721303, 26.720711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565726, -0.273746, -0.777828,
		0.430092, -0.706857, 0.561581,
		-0.703544, -0.652239, -0.282152,
		13.675718, 14.525631, 26.636065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.575308, 14.451129, 26.462395>,  <14.168200, 14.982199, 26.833572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.575308, 14.451129, 26.462395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.201200, 14.396410, 26.331823>,  <13.976734, 14.363579, 26.253481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.201200, 14.396410, 26.331823>,  <14.575308, 14.451129, 26.462395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.201200, 14.396410, 26.331823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352971, -0.428441, -0.831775,
		-0.026070, -0.893154, 0.448994,
		-0.935271, -0.136797, -0.326427,
		13.920618, 14.355371, 26.233894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.567828, 13.774405, 26.127386>,  <14.575308, 14.451129, 26.462395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.567828, 13.774405, 26.127386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.227804, 13.944050, 26.002470>,  <14.023789, 14.045836, 25.927521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.227804, 13.944050, 26.002470>,  <14.567828, 13.774405, 26.127386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.227804, 13.944050, 26.002470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147968, -0.376750, -0.914421,
		-0.505474, -0.823521, 0.257505,
		-0.850060, 0.424113, -0.312292,
		13.972786, 14.071283, 25.908783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.237512, 13.227948, 25.810892>,  <14.567828, 13.774405, 26.127386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.237512, 13.227948, 25.810892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.092811, 13.567815, 25.657425>,  <14.005990, 13.771735, 25.565344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.092811, 13.567815, 25.657425>,  <14.237512, 13.227948, 25.810892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.092811, 13.567815, 25.657425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093027, -0.376587, -0.921698,
		-0.927621, -0.369118, 0.057189,
		-0.361752, 0.849667, -0.383668,
		13.984285, 13.822715, 25.542324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.689203, 13.038383, 25.400778>,  <14.237512, 13.227948, 25.810892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.689203, 13.038383, 25.400778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.794831, 13.400521, 25.267742>,  <13.858208, 13.617805, 25.187920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.794831, 13.400521, 25.267742>,  <13.689203, 13.038383, 25.400778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.794831, 13.400521, 25.267742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052559, -0.357826, -0.932308,
		-0.963070, 0.228714, -0.142075,
		0.264070, 0.905345, -0.332591,
		13.874052, 13.672125, 25.167965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.497108, 13.083682, 24.700119>,  <13.689203, 13.038383, 25.400778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.497108, 13.083682, 24.700119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.715110, 13.418730, 24.685339>,  <13.845911, 13.619759, 24.676470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.715110, 13.418730, 24.685339>,  <13.497108, 13.083682, 24.700119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.715110, 13.418730, 24.685339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071450, -0.090311, -0.993347,
		-0.835383, 0.538738, -0.109068,
		0.545004, 0.837619, -0.036951,
		13.878612, 13.670015, 24.674253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.206209, 13.437135, 24.185482>,  <13.497108, 13.083682, 24.700119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.206209, 13.437135, 24.185482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573867, 13.591244, 24.218315>,  <13.794461, 13.683709, 24.238016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.573867, 13.591244, 24.218315>,  <13.206209, 13.437135, 24.185482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.573867, 13.591244, 24.218315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164294, -0.185548, -0.968803,
		-0.358023, 0.903956, -0.233844,
		0.919145, 0.385273, 0.082084,
		13.849610, 13.706825, 24.242941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.208606, 13.948161, 23.643181>,  <13.206209, 13.437135, 24.185482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.208606, 13.948161, 23.643181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.590356, 13.865449, 23.729355>,  <13.819406, 13.815822, 23.781059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.590356, 13.865449, 23.729355>,  <13.208606, 13.948161, 23.643181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.590356, 13.865449, 23.729355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127611, -0.369832, -0.920293,
		0.269973, 0.905796, -0.326570,
		0.954374, -0.206780, 0.215434,
		13.876668, 13.803415, 23.793985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.421598, 14.377527, 23.140934>,  <13.208606, 13.948161, 23.643181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.421598, 14.377527, 23.140934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.708061, 14.116672, 23.240400>,  <13.879939, 13.960158, 23.300079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.708061, 14.116672, 23.240400>,  <13.421598, 14.377527, 23.140934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.708061, 14.116672, 23.240400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286299, -0.050438, -0.956812,
		0.636516, 0.756420, 0.150585,
		0.716157, -0.652138, 0.248667,
		13.922908, 13.921030, 23.315001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.057323, 14.606660, 22.910828>,  <13.421598, 14.377527, 23.140934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.057323, 14.606660, 22.910828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.116173, 14.211358, 22.927353>,  <14.151483, 13.974177, 22.937267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.116173, 14.211358, 22.927353>,  <14.057323, 14.606660, 22.910828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.116173, 14.211358, 22.927353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161569, -0.017196, -0.986712,
		0.975833, 0.151846, 0.157141,
		0.147126, -0.988255, 0.041314,
		14.160311, 13.914882, 22.939747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.634108, 14.439110, 22.416647>,  <14.057323, 14.606660, 22.910828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.634108, 14.439110, 22.416647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.478806, 14.076931, 22.485258>,  <14.385624, 13.859624, 22.526424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.478806, 14.076931, 22.485258>,  <14.634108, 14.439110, 22.416647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.478806, 14.076931, 22.485258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004372, -0.184316, -0.982857,
		0.921541, -0.382350, 0.067603,
		-0.388256, -0.905448, 0.171527,
		14.362329, 13.805297, 22.536716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.998120, 13.949858, 22.026663>,  <14.634108, 14.439110, 22.416647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.998120, 13.949858, 22.026663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.640944, 13.783213, 22.094889>,  <14.426639, 13.683226, 22.135824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.640944, 13.783213, 22.094889>,  <14.998120, 13.949858, 22.026663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.640944, 13.783213, 22.094889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021045, -0.339842, -0.940247,
		0.449684, -0.843174, 0.294691,
		-0.892940, -0.416612, 0.170566,
		14.373062, 13.658229, 22.146059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086460, 13.399041, 21.605469>,  <14.998120, 13.949858, 22.026663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086460, 13.399041, 21.605469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.692444, 13.418710, 21.671532>,  <14.456034, 13.430511, 21.711168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.692444, 13.418710, 21.671532>,  <15.086460, 13.399041, 21.605469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.692444, 13.418710, 21.671532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171690, -0.361907, -0.916268,
		0.014718, -0.930917, 0.364935,
		-0.985041, 0.049170, 0.165155,
		14.396932, 13.433461, 21.721079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.807149, 12.720236, 21.418066>,  <15.086460, 13.399041, 21.605469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.807149, 12.720236, 21.418066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528374, 12.999943, 21.354441>,  <14.361109, 13.167768, 21.316265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.528374, 12.999943, 21.354441>,  <14.807149, 12.720236, 21.418066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.528374, 12.999943, 21.354441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150640, -0.359605, -0.920865,
		-0.701131, -0.617824, 0.355961,
		-0.696938, 0.699269, -0.159061,
		14.319292, 13.209723, 21.306723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.431150, 12.438839, 20.969795>,  <14.807149, 12.720236, 21.418066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.431150, 12.438839, 20.969795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.295116, 12.814523, 20.950907>,  <14.213496, 13.039933, 20.939573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.295116, 12.814523, 20.950907>,  <14.431150, 12.438839, 20.969795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.295116, 12.814523, 20.950907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072272, -0.076170, -0.994472,
		-0.937614, -0.334792, 0.093782,
		-0.340084, 0.939209, -0.047223,
		14.193091, 13.096285, 20.936741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.850906, 12.419237, 20.410952>,  <14.431150, 12.438839, 20.969795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.850906, 12.419237, 20.410952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.970819, 12.797862, 20.458538>,  <14.042766, 13.025037, 20.487091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.970819, 12.797862, 20.458538>,  <13.850906, 12.419237, 20.410952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.970819, 12.797862, 20.458538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149150, 0.076668, -0.985838,
		-0.942277, 0.313280, -0.118196,
		0.299781, 0.946561, 0.118968,
		14.060753, 13.081830, 20.494228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.446658, 12.751953, 19.888960>,  <13.850906, 12.419237, 20.410952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.446658, 12.751953, 19.888960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.739140, 13.007536, 19.984522>,  <13.914628, 13.160886, 20.041859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.739140, 13.007536, 19.984522>,  <13.446658, 12.751953, 19.888960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.739140, 13.007536, 19.984522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110711, 0.234421, -0.965810,
		-0.673115, 0.732653, 0.100671,
		0.731204, 0.638957, 0.238905,
		13.958501, 13.199223, 20.056194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.375327, 13.230668, 19.387131>,  <13.446658, 12.751953, 19.888960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.375327, 13.230668, 19.387131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.744328, 13.322348, 19.511362>,  <13.965728, 13.377356, 19.585901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.744328, 13.322348, 19.511362>,  <13.375327, 13.230668, 19.387131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.744328, 13.322348, 19.511362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247214, 0.267121, -0.931414,
		-0.296442, 0.936010, 0.189758,
		0.922501, 0.229199, 0.310580,
		14.021078, 13.391108, 19.604536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.523218, 13.823797, 19.121679>,  <13.375327, 13.230668, 19.387131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.523218, 13.823797, 19.121679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.872264, 13.646122, 19.202911>,  <14.081692, 13.539517, 19.251650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.872264, 13.646122, 19.202911>,  <13.523218, 13.823797, 19.121679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.872264, 13.646122, 19.202911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304487, 0.169648, -0.937287,
		0.381879, 0.879725, 0.283287,
		0.872614, -0.444187, 0.203080,
		14.134048, 13.512866, 19.263836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.991029, 14.280592, 18.937746>,  <13.523218, 13.823797, 19.121679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.991029, 14.280592, 18.937746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.183783, 13.930984, 18.912848>,  <14.299435, 13.721218, 18.897909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.183783, 13.930984, 18.912848>,  <13.991029, 14.280592, 18.937746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.183783, 13.930984, 18.912848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366854, 0.265753, -0.891512,
		0.795742, 0.406771, 0.448700,
		0.481885, -0.874021, -0.062245,
		14.328348, 13.668777, 18.894175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.672046, 14.462172, 18.727207>,  <13.991029, 14.280592, 18.937746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.672046, 14.462172, 18.727207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.627944, 14.069963, 18.662188>,  <14.601482, 13.834639, 18.623177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.627944, 14.069963, 18.662188>,  <14.672046, 14.462172, 18.727207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.627944, 14.069963, 18.662188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482391, 0.090200, -0.871299,
		0.868989, -0.174477, 0.463050,
		-0.110255, -0.980521, -0.162549,
		14.594868, 13.775807, 18.613422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.348709, 14.281430, 18.582327>,  <14.672046, 14.462172, 18.727207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.348709, 14.281430, 18.582327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.075336, 14.047108, 18.408087>,  <14.911311, 13.906514, 18.303543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.075336, 14.047108, 18.408087>,  <15.348709, 14.281430, 18.582327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.075336, 14.047108, 18.408087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427882, 0.162005, -0.889197,
		0.591468, -0.794093, 0.139936,
		-0.683435, -0.585808, -0.435599,
		14.870305, 13.871366, 18.277407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.686331, 14.375181, 19.185215>,  <15.348709, 14.281430, 18.582327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.686331, 14.375181, 19.185215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.056929, 14.515709, 19.131281>,  <16.279287, 14.600025, 19.098921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.056929, 14.515709, 19.131281>,  <15.686331, 14.375181, 19.185215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.056929, 14.515709, 19.131281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256618, -0.327787, 0.909232,
		0.275234, -0.877001, -0.393848,
		0.926495, 0.351320, -0.134836,
		16.334877, 14.621105, 19.090830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.150095, 13.838084, 19.513515>,  <15.686331, 14.375181, 19.185215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.150095, 13.838084, 19.513515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327152, 14.196395, 19.497246>,  <16.433386, 14.411381, 19.487484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327152, 14.196395, 19.497246>,  <16.150095, 13.838084, 19.513515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327152, 14.196395, 19.497246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286292, -0.098192, 0.953098,
		0.849768, -0.433525, -0.299917,
		0.442641, 0.895776, -0.040675,
		16.459944, 14.465128, 19.485043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827002, 13.749317, 19.809517>,  <16.150095, 13.838084, 19.513515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.827002, 13.749317, 19.809517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.781116, 14.146619, 19.816275>,  <16.753586, 14.385000, 19.820330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.781116, 14.146619, 19.816275>,  <16.827002, 13.749317, 19.809517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.781116, 14.146619, 19.816275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391085, 0.029523, 0.919881,
		0.913178, 0.112129, -0.391834,
		-0.114713, 0.993255, 0.016892,
		16.746702, 14.444595, 19.821342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.457348, 13.966436, 20.082973>,  <16.827002, 13.749317, 19.809517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.457348, 13.966436, 20.082973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.214661, 14.278512, 20.143904>,  <17.069048, 14.465757, 20.180462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.214661, 14.278512, 20.143904>,  <17.457348, 13.966436, 20.082973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.214661, 14.278512, 20.143904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267541, 0.019971, 0.963339,
		0.748544, 0.625226, -0.220848,
		-0.606716, 0.780188, 0.152325,
		17.032646, 14.512568, 20.189602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.819349, 14.568112, 20.352047>,  <17.457348, 13.966436, 20.082973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.819349, 14.568112, 20.352047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.448433, 14.653625, 20.474962>,  <17.225883, 14.704933, 20.548712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.448433, 14.653625, 20.474962>,  <17.819349, 14.568112, 20.352047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.448433, 14.653625, 20.474962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343460, 0.159423, 0.925538,
		0.148876, 0.963785, -0.221258,
		-0.927293, 0.213784, 0.307287,
		17.170246, 14.717761, 20.567148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.977177, 14.904601, 21.020828>,  <17.819349, 14.568112, 20.352047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.977177, 14.904601, 21.020828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.579718, 14.884696, 21.061193>,  <17.341242, 14.872753, 21.085413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.579718, 14.884696, 21.061193>,  <17.977177, 14.904601, 21.020828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.579718, 14.884696, 21.061193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094949, 0.110389, 0.989343,
		-0.060373, 0.992642, -0.104963,
		-0.993650, -0.049764, 0.100915,
		17.281622, 14.869767, 21.091469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.729774, 15.547528, 21.352533>,  <17.977177, 14.904601, 21.020828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.729774, 15.547528, 21.352533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.479294, 15.246294, 21.433264>,  <17.329004, 15.065554, 21.481701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.479294, 15.246294, 21.433264>,  <17.729774, 15.547528, 21.352533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.479294, 15.246294, 21.433264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081659, 0.194087, 0.977579,
		-0.775372, 0.628644, -0.060041,
		-0.626203, -0.753085, 0.201825,
		17.291433, 15.020369, 21.493811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.282162, 15.807905, 21.818329>,  <17.729774, 15.547528, 21.352533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.282162, 15.807905, 21.818329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.244978, 15.412982, 21.869839>,  <17.222668, 15.176028, 21.900743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.244978, 15.412982, 21.869839>,  <17.282162, 15.807905, 21.818329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.244978, 15.412982, 21.869839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079821, 0.136307, 0.987446,
		-0.992465, 0.081513, -0.091479,
		-0.092959, -0.987307, 0.128774,
		17.217091, 15.116790, 21.908470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.579180, 15.693775, 22.152451>,  <17.282162, 15.807905, 21.818329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.579180, 15.693775, 22.152451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.778620, 15.355101, 22.226774>,  <16.898283, 15.151896, 22.271368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.778620, 15.355101, 22.226774>,  <16.579180, 15.693775, 22.152451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778620, 15.355101, 22.226774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108615, 0.151639, 0.982450,
		-0.860002, -0.510029, -0.016356,
		0.498597, -0.846685, 0.185807,
		16.928200, 15.101095, 22.282516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.140646, 15.318777, 22.566856>,  <16.579180, 15.693775, 22.152451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.140646, 15.318777, 22.566856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508869, 15.181038, 22.640608>,  <16.729803, 15.098394, 22.684858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508869, 15.181038, 22.640608>,  <16.140646, 15.318777, 22.566856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.508869, 15.181038, 22.640608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184370, 0.033079, 0.982300,
		-0.344353, -0.938259, -0.033037,
		0.920559, -0.344350, 0.184378,
		16.785036, 15.077733, 22.695921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.093964, 14.783607, 23.055384>,  <16.140646, 15.318777, 22.566856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.093964, 14.783607, 23.055384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.474432, 14.892120, 23.114285>,  <16.702713, 14.957228, 23.149626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.474432, 14.892120, 23.114285>,  <16.093964, 14.783607, 23.055384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.474432, 14.892120, 23.114285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180672, 0.102510, 0.978187,
		0.250271, -0.957025, 0.146517,
		0.951169, 0.271283, 0.147252,
		16.759783, 14.973505, 23.158461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.199154, 14.488236, 23.693800>,  <16.093964, 14.783607, 23.055384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.199154, 14.488236, 23.693800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498474, 14.750390, 23.652781>,  <16.678066, 14.907682, 23.628168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.498474, 14.750390, 23.652781>,  <16.199154, 14.488236, 23.693800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.498474, 14.750390, 23.652781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009082, 0.144457, 0.989469,
		0.663297, -0.741352, 0.102145,
		0.748301, 0.655384, -0.102551,
		16.722965, 14.947005, 23.622015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.572689, 14.319196, 24.220385>,  <16.199154, 14.488236, 23.693800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.572689, 14.319196, 24.220385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.703554, 14.688578, 24.140188>,  <16.782074, 14.910207, 24.092070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.703554, 14.688578, 24.140188>,  <16.572689, 14.319196, 24.220385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.703554, 14.688578, 24.140188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124266, 0.168280, 0.977875,
		0.936761, -0.344839, -0.059699,
		0.327164, 0.923454, -0.200490,
		16.801702, 14.965614, 24.080042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983713, 14.411950, 24.670918>,  <16.572689, 14.319196, 24.220385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983713, 14.411950, 24.670918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.953999, 14.795648, 24.561863>,  <16.936169, 15.025867, 24.496429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.953999, 14.795648, 24.561863>,  <16.983713, 14.411950, 24.670918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.953999, 14.795648, 24.561863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092766, 0.265560, 0.959621,
		0.992913, 0.096580, 0.069258,
		-0.074288, 0.959245, -0.272637,
		16.931711, 15.083421, 24.480072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413260, 14.729001, 25.158707>,  <16.983713, 14.411950, 24.670918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413260, 14.729001, 25.158707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.166100, 15.004346, 25.006729>,  <17.017803, 15.169553, 24.915543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.166100, 15.004346, 25.006729>,  <17.413260, 14.729001, 25.158707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166100, 15.004346, 25.006729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136013, 0.382365, 0.913946,
		0.774402, 0.616405, -0.142637,
		-0.617901, 0.688362, -0.379943,
		16.980730, 15.210855, 24.892746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620543, 15.290712, 25.456345>,  <17.413260, 14.729001, 25.158707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620543, 15.290712, 25.456345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.242851, 15.360835, 25.344847>,  <17.016235, 15.402908, 25.277948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.242851, 15.360835, 25.344847>,  <17.620543, 15.290712, 25.456345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.242851, 15.360835, 25.344847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202731, 0.357562, 0.911619,
		0.259481, 0.917288, -0.302081,
		-0.944230, 0.175307, -0.278743,
		16.959583, 15.413427, 25.261223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.424376, 15.888420, 25.737494>,  <17.620543, 15.290712, 25.456345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.424376, 15.888420, 25.737494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.077305, 15.709090, 25.651569>,  <16.869062, 15.601493, 25.600016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.077305, 15.709090, 25.651569>,  <17.424376, 15.888420, 25.737494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.077305, 15.709090, 25.651569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427113, 0.451174, 0.783592,
		-0.254386, 0.771653, -0.582958,
		-0.867676, -0.448324, -0.214811,
		16.817001, 15.574593, 25.587126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880737, 16.387373, 25.760441>,  <17.424376, 15.888420, 25.737494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.880737, 16.387373, 25.760441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.725752, 16.025988, 25.833788>,  <16.632761, 15.809156, 25.877796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.725752, 16.025988, 25.833788>,  <16.880737, 16.387373, 25.760441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.725752, 16.025988, 25.833788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551413, 0.386527, 0.739284,
		-0.738794, 0.185333, -0.647947,
		-0.387462, -0.903465, 0.183369,
		16.609512, 15.754949, 25.888798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.245066, 16.450846, 26.011147>,  <16.880737, 16.387373, 25.760441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.245066, 16.450846, 26.011147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.263254, 16.063931, 26.110977>,  <16.274168, 15.831781, 26.170876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.263254, 16.063931, 26.110977>,  <16.245066, 16.450846, 26.011147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.263254, 16.063931, 26.110977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665717, 0.156933, 0.729516,
		-0.744818, -0.199321, -0.636803,
		0.045473, -0.967287, 0.249578,
		16.276896, 15.773745, 26.185850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.465053, 16.185148, 26.282982>,  <16.245066, 16.450846, 26.011147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.465053, 16.185148, 26.282982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.736177, 15.926779, 26.423470>,  <15.898852, 15.771758, 26.507763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.736177, 15.926779, 26.423470>,  <15.465053, 16.185148, 26.282982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.736177, 15.926779, 26.423470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567781, -0.156359, 0.808193,
		-0.467113, -0.747220, -0.472724,
		0.677812, -0.645922, 0.351220,
		15.939521, 15.733003, 26.528835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.981155, 15.630590, 26.596848>,  <15.465053, 16.185148, 26.282982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.981155, 15.630590, 26.596848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.344972, 15.604297, 26.761000>,  <15.563262, 15.588520, 26.859491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.344972, 15.604297, 26.761000>,  <14.981155, 15.630590, 26.596848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.344972, 15.604297, 26.761000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415497, -0.167202, 0.894095,
		0.009844, -0.983729, -0.179389,
		0.909541, -0.065734, 0.410383,
		15.617834, 15.584577, 26.884115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.015869, 14.968215, 27.020584>,  <14.981155, 15.630590, 26.596848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.015869, 14.968215, 27.020584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.287363, 15.206304, 27.192644>,  <15.450259, 15.349156, 27.295881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.287363, 15.206304, 27.192644>,  <15.015869, 14.968215, 27.020584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.287363, 15.206304, 27.192644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424678, -0.159740, 0.891140,
		0.599138, -0.787525, 0.144356,
		0.678736, 0.595221, 0.430151,
		15.490984, 15.384870, 27.321690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.126876, 14.651587, 27.643965>,  <15.015869, 14.968215, 27.020584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.126876, 14.651587, 27.643965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.276166, 15.019693, 27.690971>,  <15.365740, 15.240558, 27.719175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.276166, 15.019693, 27.690971>,  <15.126876, 14.651587, 27.643965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.276166, 15.019693, 27.690971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326217, 0.011597, 0.945224,
		0.868496, -0.391117, 0.304536,
		0.373225, 0.920268, 0.117517,
		15.388133, 15.295774, 27.726227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.252852, 14.606067, 28.347548>,  <15.126876, 14.651587, 27.643965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.252852, 14.606067, 28.347548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.280631, 14.995290, 28.259605>,  <15.297298, 15.228824, 28.206841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.280631, 14.995290, 28.259605>,  <15.252852, 14.606067, 28.347548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.280631, 14.995290, 28.259605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173611, 0.228811, 0.957864,
		0.982362, -0.028352, 0.184824,
		0.069448, 0.973058, -0.219853,
		15.301465, 15.287208, 28.193649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745802, 14.921703, 28.859121>,  <15.252852, 14.606067, 28.347548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.745802, 14.921703, 28.859121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503558, 15.201012, 28.706463>,  <15.358212, 15.368597, 28.614868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.503558, 15.201012, 28.706463>,  <15.745802, 14.921703, 28.859121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.503558, 15.201012, 28.706463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353081, 0.194016, 0.915255,
		0.713142, 0.689039, 0.129048,
		-0.605609, 0.698271, -0.381648,
		15.321876, 15.410493, 28.591969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853692, 15.426744, 29.265301>,  <15.745802, 14.921703, 28.859121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853692, 15.426744, 29.265301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.497174, 15.509623, 29.103973>,  <15.283263, 15.559350, 29.007177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.497174, 15.509623, 29.103973>,  <15.853692, 15.426744, 29.265301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.497174, 15.509623, 29.103973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375927, 0.159665, 0.912790,
		0.253522, 0.965182, -0.064418,
		-0.891295, 0.207196, -0.403316,
		15.229786, 15.571781, 28.982979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.660250, 16.099146, 29.425650>,  <15.853692, 15.426744, 29.265301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.660250, 16.099146, 29.425650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322632, 15.900929, 29.343649>,  <15.120061, 15.782000, 29.294449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.322632, 15.900929, 29.343649>,  <15.660250, 16.099146, 29.425650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.322632, 15.900929, 29.343649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395376, 0.316765, 0.862170,
		-0.362306, 0.808763, -0.463290,
		-0.844045, -0.495543, -0.205000,
		15.069418, 15.752267, 29.282148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.051420, 16.543602, 29.519194>,  <15.660250, 16.099146, 29.425650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.051420, 16.543602, 29.519194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.929700, 16.166056, 29.570604>,  <14.856668, 15.939528, 29.601450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.929700, 16.166056, 29.570604>,  <15.051420, 16.543602, 29.519194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.929700, 16.166056, 29.570604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376734, 0.243172, 0.893834,
		-0.874913, 0.223575, -0.429583,
		-0.304301, -0.943865, 0.128526,
		14.838409, 15.882896, 29.609161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.269407, 16.561693, 29.564602>,  <15.051420, 16.543602, 29.519194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.269407, 16.561693, 29.564602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.428697, 16.241295, 29.743410>,  <14.524270, 16.049057, 29.850695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.428697, 16.241295, 29.743410>,  <14.269407, 16.561693, 29.564602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.428697, 16.241295, 29.743410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375121, 0.302510, 0.876226,
		-0.837080, -0.516619, -0.180004,
		0.398222, -0.800995, 0.447020,
		14.548163, 16.000996, 29.877516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.658193, 16.344391, 29.943520>,  <14.269407, 16.561693, 29.564602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.658193, 16.344391, 29.943520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982899, 16.144857, 30.064978>,  <14.177722, 16.025137, 30.137852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.982899, 16.144857, 30.064978>,  <13.658193, 16.344391, 29.943520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.982899, 16.144857, 30.064978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129510, 0.353228, 0.926530,
		-0.569442, -0.791450, 0.222134,
		0.811766, -0.498836, 0.303644,
		14.226428, 15.995207, 30.156071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.417636, 16.109503, 30.600010>,  <13.658193, 16.344391, 29.943520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.417636, 16.109503, 30.600010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.812634, 16.053106, 30.628235>,  <14.049632, 16.019268, 30.645170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.812634, 16.053106, 30.628235>,  <13.417636, 16.109503, 30.600010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.812634, 16.053106, 30.628235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017357, 0.347612, 0.937478,
		-0.156705, -0.926978, 0.340817,
		0.987493, -0.140992, 0.070562,
		14.108881, 16.010809, 30.649403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.503477, 15.695932, 31.206032>,  <13.417636, 16.109503, 30.600010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.503477, 15.695932, 31.206032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.851536, 15.878870, 31.132620>,  <14.060370, 15.988632, 31.088573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.851536, 15.878870, 31.132620>,  <13.503477, 15.695932, 31.206032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.851536, 15.878870, 31.132620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020768, 0.406127, 0.913581,
		0.492356, -0.791137, 0.362888,
		0.870147, 0.457343, -0.183529,
		14.112579, 16.016073, 31.077560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.926164, 15.664530, 31.828035>,  <13.503477, 15.695932, 31.206032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.926164, 15.664530, 31.828035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.122217, 15.942256, 31.617249>,  <14.239849, 16.108892, 31.490776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.122217, 15.942256, 31.617249>,  <13.926164, 15.664530, 31.828035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.122217, 15.942256, 31.617249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296503, 0.435704, 0.849851,
		0.819667, -0.572789, 0.007687,
		0.490135, 0.694316, -0.526966,
		14.269258, 16.150551, 31.459158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.621837, 15.750987, 32.120068>,  <13.926164, 15.664530, 31.828035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.621837, 15.750987, 32.120068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.498075, 16.089218, 31.946049>,  <14.423819, 16.292156, 31.841637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.498075, 16.089218, 31.946049>,  <14.621837, 15.750987, 32.120068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.498075, 16.089218, 31.946049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293175, 0.520036, 0.802254,
		0.904609, 0.120674, -0.408803,
		-0.309403, 0.845577, -0.435051,
		14.405254, 16.342892, 31.815533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040879, 16.278128, 32.389317>,  <14.621837, 15.750987, 32.120068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.040879, 16.278128, 32.389317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.768174, 16.517742, 32.221340>,  <14.604551, 16.661510, 32.120552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.768174, 16.517742, 32.221340>,  <15.040879, 16.278128, 32.389317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.768174, 16.517742, 32.221340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102786, 0.646768, 0.755729,
		0.724317, 0.472064, -0.502515,
		-0.681763, 0.599038, -0.419943,
		14.563645, 16.697454, 32.095356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.339986, 16.939764, 32.382267>,  <15.040879, 16.278128, 32.389317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.339986, 16.939764, 32.382267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.948345, 17.004559, 32.333084>,  <14.713361, 17.043436, 32.303574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.948345, 17.004559, 32.333084>,  <15.339986, 16.939764, 32.382267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.948345, 17.004559, 32.333084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056991, 0.798937, 0.598709,
		0.195219, 0.579190, -0.791473,
		-0.979103, 0.161986, -0.122959,
		14.654614, 17.053154, 32.296196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.347872, 17.606359, 32.242275>,  <15.339986, 16.939764, 32.382267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.347872, 17.606359, 32.242275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.041509, 17.471067, 32.460995>,  <14.857691, 17.389893, 32.592224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.041509, 17.471067, 32.460995>,  <15.347872, 17.606359, 32.242275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.041509, 17.471067, 32.460995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265347, 0.608360, 0.747990,
		-0.585642, 0.717982, -0.376199,
		-0.765908, -0.338231, 0.546796,
		14.811736, 17.369598, 32.625034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.941259, 18.265390, 32.561520>,  <15.347872, 17.606359, 32.242275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.941259, 18.265390, 32.561520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.857914, 18.606213, 32.753597>,  <14.807907, 18.810705, 32.868843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.857914, 18.606213, 32.753597>,  <14.941259, 18.265390, 32.561520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.857914, 18.606213, 32.753597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347003, 0.523433, -0.778207,
		-0.914425, 0.004479, -0.404730,
		-0.208363, 0.852055, 0.480194,
		14.795405, 18.861830, 32.897655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.460306, 18.512722, 32.257454>,  <14.941259, 18.265390, 32.561520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.460306, 18.512722, 32.257454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.686754, 18.792660, 32.431686>,  <14.822623, 18.960623, 32.536224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.686754, 18.792660, 32.431686>,  <14.460306, 18.512722, 32.257454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.686754, 18.792660, 32.431686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199712, 0.396220, -0.896172,
		-0.799765, 0.594331, 0.084541,
		0.566119, 0.699843, 0.435578,
		14.856590, 19.002613, 32.562359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.165616, 19.131685, 31.999788>,  <14.460306, 18.512722, 32.257454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.165616, 19.131685, 31.999788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.541045, 19.204494, 32.117054>,  <14.766303, 19.248180, 32.187412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.541045, 19.204494, 32.117054>,  <14.165616, 19.131685, 31.999788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.541045, 19.204494, 32.117054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204230, 0.391790, -0.897101,
		-0.278154, 0.901869, 0.330549,
		0.938574, 0.182025, 0.293167,
		14.822618, 19.259102, 32.205006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.328052, 19.874662, 31.727093>,  <14.165616, 19.131685, 31.999788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.328052, 19.874662, 31.727093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.651799, 19.647934, 31.788588>,  <14.846048, 19.511898, 31.825485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.651799, 19.647934, 31.788588>,  <14.328052, 19.874662, 31.727093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.651799, 19.647934, 31.788588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397183, 0.335449, -0.854236,
		0.432626, 0.752456, 0.496633,
		0.809370, -0.566819, 0.153739,
		14.894610, 19.477888, 31.834709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.755886, 20.196173, 31.358303>,  <14.328052, 19.874662, 31.727093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.755886, 20.196173, 31.358303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944292, 19.849026, 31.421482>,  <15.057336, 19.640738, 31.459389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.944292, 19.849026, 31.421482>,  <14.755886, 20.196173, 31.358303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.944292, 19.849026, 31.421482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600653, 0.184407, -0.777952,
		0.646035, 0.461299, 0.608147,
		0.471015, -0.867869, 0.157947,
		15.085597, 19.588665, 31.468866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.397629, 20.325417, 31.005384>,  <14.755886, 20.196173, 31.358303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.397629, 20.325417, 31.005384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380361, 19.929970, 31.063042>,  <15.370000, 19.692701, 31.097635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.380361, 19.929970, 31.063042>,  <15.397629, 20.325417, 31.005384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380361, 19.929970, 31.063042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691458, -0.133704, -0.709936,
		0.721126, 0.069020, 0.689358,
		-0.043171, -0.988615, 0.144142,
		15.367410, 19.633385, 31.106285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170465, 20.144850, 31.119308>,  <15.397629, 20.325417, 31.005384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.170465, 20.144850, 31.119308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920807, 19.853949, 31.005087>,  <15.771011, 19.679407, 30.936554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.920807, 19.853949, 31.005087>,  <16.170465, 20.144850, 31.119308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.920807, 19.853949, 31.005087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542153, -0.139967, -0.828541,
		0.562592, -0.671945, 0.481644,
		-0.624148, -0.727255, -0.285552,
		15.733562, 19.635773, 30.919422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494549, 19.445250, 31.012785>,  <16.170465, 20.144850, 31.119308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.494549, 19.445250, 31.012785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166765, 19.411381, 30.786047>,  <15.970095, 19.391060, 30.650003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.166765, 19.411381, 30.786047>,  <16.494549, 19.445250, 31.012785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166765, 19.411381, 30.786047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558586, -0.339425, -0.756817,
		-0.128318, -0.936815, 0.325443,
		-0.819461, -0.084675, -0.566845,
		15.920927, 19.385979, 30.615993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510489, 18.779493, 30.705278>,  <16.494549, 19.445250, 31.012785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510489, 18.779493, 30.705278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.262295, 18.990320, 30.473001>,  <16.113379, 19.116816, 30.333635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.262295, 18.990320, 30.473001>,  <16.510489, 18.779493, 30.705278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.262295, 18.990320, 30.473001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414689, -0.407958, -0.813390,
		-0.665607, -0.745501, 0.034564,
		-0.620484, 0.527065, -0.580691,
		16.076149, 19.148439, 30.298794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.383692, 18.315332, 30.146421>,  <16.510489, 18.779493, 30.705278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.383692, 18.315332, 30.146421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.247538, 18.656565, 29.988237>,  <16.165846, 18.861305, 29.893326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.247538, 18.656565, 29.988237>,  <16.383692, 18.315332, 30.146421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.247538, 18.656565, 29.988237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265339, -0.316339, -0.910783,
		-0.902072, -0.414948, -0.118679,
		-0.340384, 0.853082, -0.395462,
		16.145422, 18.912489, 29.869598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.961987, 18.133171, 29.592819>,  <16.383692, 18.315332, 30.146421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.961987, 18.133171, 29.592819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.091436, 18.507215, 29.535076>,  <16.169106, 18.731642, 29.500431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.091436, 18.507215, 29.535076>,  <15.961987, 18.133171, 29.592819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.091436, 18.507215, 29.535076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246190, -0.230531, -0.941406,
		-0.913596, 0.269122, -0.304820,
		0.323624, 0.935109, -0.144357,
		16.188524, 18.787748, 29.491770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.629452, 18.356487, 29.079693>,  <15.961987, 18.133171, 29.592819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.629452, 18.356487, 29.079693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.967064, 18.570871, 29.087303>,  <16.169630, 18.699501, 29.091869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.967064, 18.570871, 29.087303>,  <15.629452, 18.356487, 29.079693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.967064, 18.570871, 29.087303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184946, -0.257590, -0.948389,
		-0.503398, 0.803987, -0.316537,
		0.844029, 0.535959, 0.019024,
		16.220272, 18.731659, 29.093010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732738, 18.599648, 28.433632>,  <15.629452, 18.356487, 29.079693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.732738, 18.599648, 28.433632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.097654, 18.676985, 28.578043>,  <16.316605, 18.723387, 28.664690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.097654, 18.676985, 28.578043>,  <15.732738, 18.599648, 28.433632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.097654, 18.676985, 28.578043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400215, -0.233857, -0.886081,
		-0.086888, 0.952853, -0.290725,
		0.912293, 0.193343, 0.361026,
		16.371342, 18.734987, 28.686352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.084732, 19.109987, 27.875935>,  <15.732738, 18.599648, 28.433632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.084732, 19.109987, 27.875935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.292711, 18.879856, 28.128490>,  <16.417500, 18.741777, 28.280024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.292711, 18.879856, 28.128490>,  <16.084732, 19.109987, 27.875935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.292711, 18.879856, 28.128490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599030, -0.281349, -0.749671,
		0.608946, 0.768012, 0.198350,
		0.519950, -0.575326, 0.631388,
		16.448696, 18.707258, 28.317907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772888, 19.151865, 27.786350>,  <16.084732, 19.109987, 27.875935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.772888, 19.151865, 27.786350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802633, 18.812651, 27.996229>,  <16.820480, 18.609123, 28.122156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.802633, 18.812651, 27.996229>,  <16.772888, 19.151865, 27.786350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802633, 18.812651, 27.996229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708909, -0.325100, -0.625906,
		0.701369, 0.418506, 0.577004,
		0.074361, -0.848034, 0.524698,
		16.824942, 18.558241, 28.153639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512535, 19.152174, 27.923689>,  <16.772888, 19.151865, 27.786350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.512535, 19.152174, 27.923689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.334658, 18.793903, 27.925280>,  <17.227932, 18.578941, 27.926235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.334658, 18.793903, 27.925280>,  <17.512535, 19.152174, 27.923689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.334658, 18.793903, 27.925280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600011, -0.301190, -0.741129,
		0.665009, -0.327186, 0.671351,
		-0.444692, -0.895675, 0.003979,
		17.201250, 18.525202, 27.926474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.034756, 18.726969, 27.784460>,  <17.512535, 19.152174, 27.923689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.034756, 18.726969, 27.784460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.752090, 18.446367, 27.747545>,  <17.582491, 18.278006, 27.725395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.752090, 18.446367, 27.747545>,  <18.034756, 18.726969, 27.784460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.752090, 18.446367, 27.747545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479805, -0.379249, -0.791175,
		0.520012, -0.603375, 0.604587,
		-0.706664, -0.701504, -0.092289,
		17.540091, 18.235916, 27.719858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.363489, 18.142061, 27.636721>,  <18.034756, 18.726969, 27.784460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.363489, 18.142061, 27.636721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.988703, 18.088104, 27.507790>,  <17.763830, 18.055729, 27.430431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.988703, 18.088104, 27.507790>,  <18.363489, 18.142061, 27.636721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.988703, 18.088104, 27.507790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349330, -0.341322, -0.872621,
		0.007695, -0.930216, 0.366931,
		-0.936968, -0.134895, -0.322326,
		17.707613, 18.047636, 27.411091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.345446, 17.453283, 27.368944>,  <18.363489, 18.142061, 27.636721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.345446, 17.453283, 27.368944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.041210, 17.647587, 27.196644>,  <17.858669, 17.764168, 27.093264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.041210, 17.647587, 27.196644>,  <18.345446, 17.453283, 27.368944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041210, 17.647587, 27.196644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381087, -0.203115, -0.901952,
		-0.525621, -0.850167, -0.030629,
		-0.760589, 0.485757, -0.430749,
		17.813034, 17.793314, 27.067419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.227829, 17.115835, 26.736149>,  <18.345446, 17.453283, 27.368944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.227829, 17.115835, 26.736149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032370, 17.460707, 26.682676>,  <17.915094, 17.667629, 26.650593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.032370, 17.460707, 26.682676>,  <18.227829, 17.115835, 26.736149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.032370, 17.460707, 26.682676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268174, 0.002617, -0.963367,
		-0.830244, -0.506598, -0.232492,
		-0.488648, 0.862178, -0.133683,
		17.885775, 17.719360, 26.642570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.843754, 16.974016, 26.141293>,  <18.227829, 17.115835, 26.736149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.843754, 16.974016, 26.141293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.900082, 17.370029, 26.141249>,  <17.933878, 17.607637, 26.141222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.900082, 17.370029, 26.141249>,  <17.843754, 16.974016, 26.141293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.900082, 17.370029, 26.141249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384519, -0.054794, -0.921489,
		-0.912313, 0.129723, -0.388404,
		0.140820, 0.990035, -0.000108,
		17.942327, 17.667040, 26.141216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.703718, 17.189964, 25.533926>,  <17.843754, 16.974016, 26.141293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.703718, 17.189964, 25.533926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.894951, 17.526188, 25.635826>,  <18.009691, 17.727922, 25.696966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.894951, 17.526188, 25.635826>,  <17.703718, 17.189964, 25.533926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.894951, 17.526188, 25.635826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350080, 0.083645, -0.932978,
		-0.805532, 0.535222, -0.254274,
		0.478082, 0.840560, 0.254749,
		18.038376, 17.778357, 25.712252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.366106, 17.723026, 25.188280>,  <17.703718, 17.189964, 25.533926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.366106, 17.723026, 25.188280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.752523, 17.761196, 25.284323>,  <17.984375, 17.784098, 25.341948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.752523, 17.761196, 25.284323>,  <17.366106, 17.723026, 25.188280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.752523, 17.761196, 25.284323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249756, -0.106899, -0.962390,
		-0.066168, 0.989680, -0.127102,
		0.966045, 0.095424, 0.240105,
		18.042337, 17.789824, 25.356354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.558647, 18.033033, 24.669024>,  <17.366106, 17.723026, 25.188280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.558647, 18.033033, 24.669024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.912354, 17.913462, 24.812531>,  <18.124577, 17.841719, 24.898636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.912354, 17.913462, 24.812531>,  <17.558647, 18.033033, 24.669024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.912354, 17.913462, 24.812531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329681, -0.144496, -0.932969,
		0.330731, 0.943273, -0.029223,
		0.884267, -0.298927, 0.358769,
		18.177633, 17.823784, 24.920160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.117186, 18.313969, 24.233345>,  <17.558647, 18.033033, 24.669024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.117186, 18.313969, 24.233345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.263033, 17.986931, 24.411600>,  <18.350542, 17.790709, 24.518553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.263033, 17.986931, 24.411600>,  <18.117186, 18.313969, 24.233345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.263033, 17.986931, 24.411600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228212, -0.385527, -0.894029,
		0.902759, 0.427679, 0.046014,
		0.364618, -0.817594, 0.445639,
		18.372417, 17.741653, 24.545292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.779848, 18.235058, 24.078602>,  <18.117186, 18.313969, 24.233345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.779848, 18.235058, 24.078602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.659760, 17.862768, 24.162142>,  <18.587708, 17.639395, 24.212265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.659760, 17.862768, 24.162142>,  <18.779848, 18.235058, 24.078602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.659760, 17.862768, 24.162142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320977, -0.304755, -0.896715,
		0.898244, -0.202175, 0.390234,
		-0.300220, -0.930726, 0.208851,
		18.569695, 17.583551, 24.224796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.289911, 17.836128, 23.783264>,  <18.779848, 18.235058, 24.078602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.289911, 17.836128, 23.783264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.014681, 17.550045, 23.832298>,  <18.849543, 17.378395, 23.861719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.014681, 17.550045, 23.832298>,  <19.289911, 17.836128, 23.783264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.014681, 17.550045, 23.832298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212276, -0.359939, -0.908506,
		0.693895, -0.599099, 0.399487,
		-0.688076, -0.715209, 0.122586,
		18.808258, 17.335482, 23.869074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.680758, 17.297430, 23.731632>,  <19.289911, 17.836128, 23.783264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.680758, 17.297430, 23.731632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.300632, 17.209221, 23.643742>,  <19.072557, 17.156296, 23.591007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.300632, 17.209221, 23.643742>,  <19.680758, 17.297430, 23.731632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.300632, 17.209221, 23.643742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276562, -0.274042, -0.921094,
		0.142907, -0.936094, 0.321413,
		-0.950311, -0.220521, -0.219726,
		19.015539, 17.143064, 23.577824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.786678, 16.904144, 23.200953>,  <19.680758, 17.297430, 23.731632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.786678, 16.904144, 23.200953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.389500, 16.946899, 23.180439>,  <19.151192, 16.972553, 23.168131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.389500, 16.946899, 23.180439>,  <19.786678, 16.904144, 23.200953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.389500, 16.946899, 23.180439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019936, -0.275865, -0.960990,
		-0.116866, -0.955235, 0.271789,
		-0.992948, 0.106888, -0.051283,
		19.091616, 16.978966, 23.165054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.575991, 16.295002, 22.935226>,  <19.786678, 16.904144, 23.200953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.575991, 16.295002, 22.935226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.319998, 16.583576, 22.829432>,  <19.166403, 16.756721, 22.765955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.319998, 16.583576, 22.829432>,  <19.575991, 16.295002, 22.935226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.319998, 16.583576, 22.829432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247549, -0.132274, -0.959803,
		-0.727422, -0.679730, -0.093938,
		-0.639981, 0.721436, -0.264486,
		19.128004, 16.800007, 22.750086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.111933, 15.907123, 22.418390>,  <19.575991, 16.295002, 22.935226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.111933, 15.907123, 22.418390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.079506, 16.304188, 22.382509>,  <19.060049, 16.542427, 22.360981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.079506, 16.304188, 22.382509>,  <19.111933, 15.907123, 22.418390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.079506, 16.304188, 22.382509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082062, -0.083044, -0.993161,
		-0.993325, -0.087875, -0.074728,
		-0.081068, 0.992664, -0.089701,
		19.055185, 16.601988, 22.355598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.576965, 16.063532, 22.014315>,  <19.111933, 15.907123, 22.418390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.576965, 16.063532, 22.014315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.804882, 16.390081, 21.976645>,  <18.941631, 16.586012, 21.954042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.804882, 16.390081, 21.976645>,  <18.576965, 16.063532, 22.014315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804882, 16.390081, 21.976645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141519, -0.015411, -0.989816,
		-0.809512, 0.577317, 0.106751,
		0.569792, 0.816375, -0.094176,
		18.975821, 16.634995, 21.948391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.184204, 16.390066, 21.483706>,  <18.576965, 16.063532, 22.014315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.184204, 16.390066, 21.483706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.531115, 16.580076, 21.543289>,  <18.739260, 16.694082, 21.579039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.531115, 16.580076, 21.543289>,  <18.184204, 16.390066, 21.483706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.531115, 16.580076, 21.543289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110244, 0.108526, -0.987962,
		-0.485471, 0.873255, 0.041753,
		0.867274, 0.475023, 0.148957,
		18.791296, 16.722584, 21.587976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.180933, 16.884739, 20.940367>,  <18.184204, 16.390066, 21.483706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.180933, 16.884739, 20.940367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.562094, 16.862795, 21.059679>,  <18.790791, 16.849628, 21.131266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.562094, 16.862795, 21.059679>,  <18.180933, 16.884739, 20.940367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.562094, 16.862795, 21.059679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303262, 0.184280, -0.934919,
		-0.003675, 0.981341, 0.192238,
		0.952900, -0.054862, 0.298281,
		18.847963, 16.846336, 21.149164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.507113, 17.325891, 20.531446>,  <18.180933, 16.884739, 20.940367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.507113, 17.325891, 20.531446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.819559, 17.113880, 20.663464>,  <19.007027, 16.986673, 20.742674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.819559, 17.113880, 20.663464>,  <18.507113, 17.325891, 20.531446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.819559, 17.113880, 20.663464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329086, -0.099731, -0.939019,
		0.530624, 0.842093, 0.096524,
		0.781115, -0.530030, 0.330041,
		19.053894, 16.954870, 20.762476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.024727, 17.497229, 20.095379>,  <18.507113, 17.325891, 20.531446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.024727, 17.497229, 20.095379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.159666, 17.163898, 20.270544>,  <19.240629, 16.963900, 20.375643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.159666, 17.163898, 20.270544>,  <19.024727, 17.497229, 20.095379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.159666, 17.163898, 20.270544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502033, -0.234256, -0.832519,
		0.796342, 0.500693, 0.339332,
		0.337346, -0.833325, 0.437912,
		19.260870, 16.913900, 20.401918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.813698, 17.513378, 20.085289>,  <19.024727, 17.497229, 20.095379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.813698, 17.513378, 20.085289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.645567, 17.150444, 20.088474>,  <19.544689, 16.932684, 20.090385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.645567, 17.150444, 20.088474>,  <19.813698, 17.513378, 20.085289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.645567, 17.150444, 20.088474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503546, -0.240552, -0.829805,
		0.754829, -0.344780, 0.557996,
		-0.420327, -0.907337, 0.007963,
		19.519468, 16.878242, 20.090862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.281796, 17.095516, 19.785116>,  <19.813698, 17.513378, 20.085289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.281796, 17.095516, 19.785116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.984547, 16.827927, 19.778820>,  <19.806198, 16.667374, 19.775042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.984547, 16.827927, 19.778820>,  <20.281796, 17.095516, 19.785116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.984547, 16.827927, 19.778820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383361, -0.406336, -0.829413,
		0.548458, -0.622388, 0.558414,
		-0.743121, -0.668972, -0.015741,
		19.761610, 16.627235, 19.774097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.600780, 16.438915, 19.495600>,  <20.281796, 17.095516, 19.785116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.600780, 16.438915, 19.495600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.207411, 16.389849, 19.442184>,  <19.971390, 16.360409, 19.410135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.207411, 16.389849, 19.442184>,  <20.600780, 16.438915, 19.495600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.207411, 16.389849, 19.442184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173328, -0.419589, -0.891012,
		0.053267, -0.899387, 0.433895,
		-0.983423, -0.122668, -0.133538,
		19.912384, 16.353048, 19.402122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.506355, 15.776443, 19.365412>,  <20.600780, 16.438915, 19.495600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.506355, 15.776443, 19.365412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.198996, 15.976227, 19.205359>,  <20.014580, 16.096096, 19.109327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.198996, 15.976227, 19.205359>,  <20.506355, 15.776443, 19.365412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.198996, 15.976227, 19.205359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208932, -0.395195, -0.894521,
		-0.604906, -0.770949, 0.199314,
		-0.768398, 0.499458, -0.400132,
		19.968475, 16.126064, 19.085320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.262085, 15.300654, 18.748718>,  <20.506355, 15.776443, 19.365412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.262085, 15.300654, 18.748718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.173037, 15.687543, 18.699852>,  <20.119608, 15.919676, 18.670532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.173037, 15.687543, 18.699852>,  <20.262085, 15.300654, 18.748718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.173037, 15.687543, 18.699852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306693, -0.049465, -0.950522,
		-0.925408, -0.249072, -0.285628,
		-0.222620, 0.967221, -0.122164,
		20.106251, 15.977709, 18.663202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745901, 15.276145, 18.223976>,  <20.262085, 15.300654, 18.748718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745901, 15.276145, 18.223976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.959225, 15.614298, 18.236061>,  <20.087219, 15.817189, 18.243313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.959225, 15.614298, 18.236061>,  <19.745901, 15.276145, 18.223976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.959225, 15.614298, 18.236061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153233, -0.061416, -0.986280,
		-0.831928, 0.530620, -0.162294,
		0.533307, 0.845382, 0.030214,
		20.119217, 15.867912, 18.245125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.162745, 15.183958, 17.488033>,  <19.745901, 15.276145, 18.223976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.162745, 15.183958, 17.488033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227886, 15.359523, 17.841494>,  <20.266972, 15.464862, 18.053570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227886, 15.359523, 17.841494>,  <20.162745, 15.183958, 17.488033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.227886, 15.359523, 17.841494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906234, -0.287608, 0.309873,
		0.390152, -0.851257, 0.350918,
		0.162855, 0.438912, 0.883649,
		20.276743, 15.491197, 18.106588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.700386, 15.700915, 17.247690>,  <20.162745, 15.183958, 17.488033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.700386, 15.700915, 17.247690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.870192, 16.062868, 17.260208>,  <20.972075, 16.280039, 17.267719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.870192, 16.062868, 17.260208>,  <20.700386, 15.700915, 17.247690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.870192, 16.062868, 17.260208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488160, -0.257848, 0.833795,
		0.762554, -0.338680, -0.551187,
		0.424512, 0.904881, 0.031292,
		20.997545, 16.334333, 17.269596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.505077, 15.613082, 17.304415>,  <20.700386, 15.700915, 17.247690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.505077, 15.613082, 17.304415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.360659, 15.941874, 17.480595>,  <21.274008, 16.139149, 17.586302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.360659, 15.941874, 17.480595>,  <21.505077, 15.613082, 17.304415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.360659, 15.941874, 17.480595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401580, -0.289230, 0.868953,
		0.841653, 0.490607, -0.225666,
		-0.361045, 0.821980, 0.440450,
		21.252346, 16.188467, 17.612730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.097271, 15.191381, 17.161249>,  <21.505077, 15.613082, 17.304415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.097271, 15.191381, 17.161249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.432396, 15.333374, 16.995331>,  <22.633471, 15.418570, 16.895779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.432396, 15.333374, 16.995331>,  <22.097271, 15.191381, 17.161249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.432396, 15.333374, 16.995331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311599, 0.934773, 0.170604,
		0.448302, -0.013684, 0.893777,
		0.837813, 0.354982, -0.414797,
		22.683741, 15.439869, 16.870892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.237797, 15.766038, 17.621601>,  <22.097271, 15.191381, 17.161249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.237797, 15.766038, 17.621601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419010, 15.843562, 17.273533>,  <22.527739, 15.890077, 17.064692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.419010, 15.843562, 17.273533>,  <22.237797, 15.766038, 17.621601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.419010, 15.843562, 17.273533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341186, 0.939464, 0.031614,
		0.823623, 0.282568, 0.491732,
		0.453031, 0.193810, -0.870173,
		22.554920, 15.901705, 17.012482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.508963, 16.469990, 17.680176>,  <22.237797, 15.766038, 17.621601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.508963, 16.469990, 17.680176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.450710, 16.382706, 17.294186>,  <22.415758, 16.330336, 17.062592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.450710, 16.382706, 17.294186>,  <22.508963, 16.469990, 17.680176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.450710, 16.382706, 17.294186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480515, 0.868203, -0.123809,
		0.864810, 0.445655, -0.231290,
		-0.145631, -0.218210, -0.964975,
		22.407021, 16.317244, 17.004694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.371624, 17.059107, 17.436026>,  <22.508963, 16.469990, 17.680176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.371624, 17.059107, 17.436026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.275316, 16.834784, 17.119160>,  <22.217531, 16.700190, 16.929041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.275316, 16.834784, 17.119160>,  <22.371624, 17.059107, 17.436026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.275316, 16.834784, 17.119160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539481, 0.755808, -0.371099,
		0.806839, 0.338008, -0.484521,
		-0.240770, -0.560807, -0.792164,
		22.203085, 16.666542, 16.881510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.361980, 17.560038, 16.951860>,  <22.371624, 17.059107, 17.436026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.361980, 17.560038, 16.951860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.183477, 17.244726, 16.782404>,  <22.076376, 17.055540, 16.680729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.183477, 17.244726, 16.782404>,  <22.361980, 17.560038, 16.951860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.183477, 17.244726, 16.782404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503671, 0.612535, -0.609193,
		0.739709, -0.058479, -0.670381,
		-0.446257, -0.788277, -0.423643,
		22.049601, 17.008244, 16.655312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.301134, 17.689987, 16.121996>,  <22.361980, 17.560038, 16.951860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.301134, 17.689987, 16.121996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.007915, 17.459000, 16.265759>,  <21.831984, 17.320408, 16.352016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.007915, 17.459000, 16.265759>,  <22.301134, 17.689987, 16.121996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.007915, 17.459000, 16.265759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668355, 0.513448, -0.538212,
		0.126263, -0.634746, -0.762335,
		-0.733048, -0.577467, 0.359406,
		21.788002, 17.285759, 16.373581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.902073, 17.600000, 15.464032>,  <22.301134, 17.689987, 16.121996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.902073, 17.600000, 15.464032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.678713, 17.559546, 15.793386>,  <21.544697, 17.535273, 15.990997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.678713, 17.559546, 15.793386>,  <21.902073, 17.600000, 15.464032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.678713, 17.559546, 15.793386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641786, 0.681571, -0.351527,
		-0.525641, -0.724729, -0.445499,
		-0.558401, -0.101138, 0.823383,
		21.511192, 17.529203, 16.040400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.196791, 17.596390, 15.135173>,  <21.902073, 17.600000, 15.464032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.196791, 17.596390, 15.135173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.158363, 17.673304, 15.525823>,  <21.135307, 17.719452, 15.760213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.158363, 17.673304, 15.525823>,  <21.196791, 17.596390, 15.135173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.158363, 17.673304, 15.525823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721574, 0.662397, -0.201400,
		-0.685640, -0.724056, 0.075112,
		-0.096070, 0.192287, 0.976625,
		21.129541, 17.730989, 15.818810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.369925, 17.602589, 15.276220>,  <21.196791, 17.596390, 15.135173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.369925, 17.602589, 15.276220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.550175, 17.797863, 15.575182>,  <20.658325, 17.915028, 15.754559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.550175, 17.797863, 15.575182>,  <20.369925, 17.602589, 15.276220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.550175, 17.797863, 15.575182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665563, 0.741693, -0.083172,
		-0.594947, -0.459964, 0.659144,
		0.450626, 0.488185, 0.747403,
		20.685362, 17.944319, 15.799403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.842579, 17.866043, 15.614460>,  <20.369925, 17.602589, 15.276220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.842579, 17.866043, 15.614460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.165226, 18.069574, 15.734770>,  <20.358814, 18.191692, 15.806955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.165226, 18.069574, 15.734770>,  <19.842579, 17.866043, 15.614460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.165226, 18.069574, 15.734770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539047, 0.842010, 0.021172,
		-0.242482, -0.179209, 0.953460,
		0.806617, 0.508826, 0.300774,
		20.407211, 18.222221, 15.825002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.704189, 18.307487, 16.344477>,  <19.842579, 17.866043, 15.614460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.704189, 18.307487, 16.344477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.992725, 18.509562, 16.154968>,  <20.165848, 18.630806, 16.041264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.992725, 18.509562, 16.154968>,  <19.704189, 18.307487, 16.344477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.992725, 18.509562, 16.154968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542643, 0.837317, 0.066632,
		0.430357, 0.209023, 0.878124,
		0.721340, 0.505183, -0.473770,
		20.209127, 18.661116, 16.012836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.753729, 18.958889, 16.658642>,  <19.704189, 18.307487, 16.344477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.753729, 18.958889, 16.658642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.957750, 19.019587, 16.319981>,  <20.080164, 19.056005, 16.116785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.957750, 19.019587, 16.319981>,  <19.753729, 18.958889, 16.658642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.957750, 19.019587, 16.319981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383875, 0.921010, -0.066187,
		0.769731, 0.358767, 0.528016,
		0.510054, 0.151746, -0.846651,
		20.110767, 19.065111, 16.065985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061470, 19.498886, 16.785250>,  <19.753729, 18.958889, 16.658642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.061470, 19.498886, 16.785250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.049871, 19.489347, 16.385532>,  <20.042913, 19.483624, 16.145702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.049871, 19.489347, 16.385532>,  <20.061470, 19.498886, 16.785250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.049871, 19.489347, 16.385532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276261, 0.960967, -0.014916,
		0.960645, 0.275634, -0.034450,
		-0.028994, -0.023846, -0.999295,
		20.041174, 19.482193, 16.085743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.385675, 20.130814, 16.516689>,  <20.061470, 19.498886, 16.785250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.385675, 20.130814, 16.516689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.194124, 19.971062, 16.203979>,  <20.079193, 19.875212, 16.016354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.194124, 19.971062, 16.203979>,  <20.385675, 20.130814, 16.516689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.194124, 19.971062, 16.203979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368261, 0.899773, -0.234078,
		0.796905, 0.175802, -0.577958,
		-0.478880, -0.399377, -0.781775,
		20.050461, 19.851248, 15.969447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.612423, 20.530445, 15.906878>,  <20.385675, 20.130814, 16.516689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.612423, 20.530445, 15.906878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.263056, 20.377542, 15.786200>,  <20.053436, 20.285801, 15.713792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.263056, 20.377542, 15.786200>,  <20.612423, 20.530445, 15.906878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.263056, 20.377542, 15.786200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281012, 0.901613, -0.328827,
		0.397711, -0.202422, -0.894903,
		-0.873418, -0.382257, -0.301698,
		20.001030, 20.262865, 15.695690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471518, 20.921549, 15.296580>,  <20.612423, 20.530445, 15.906878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471518, 20.921549, 15.296580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.118158, 20.784227, 15.424173>,  <19.906143, 20.701834, 15.500729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.118158, 20.784227, 15.424173>,  <20.471518, 20.921549, 15.296580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.118158, 20.784227, 15.424173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424844, 0.873974, -0.235960,
		-0.197776, -0.343964, -0.917918,
		-0.883398, -0.343304, 0.318982,
		19.853138, 20.681236, 15.519868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.957932, 21.266140, 14.857102>,  <20.471518, 20.921549, 15.296580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.957932, 21.266140, 14.857102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.712111, 21.132097, 15.142767>,  <19.564617, 21.051672, 15.314166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.712111, 21.132097, 15.142767>,  <19.957932, 21.266140, 14.857102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.712111, 21.132097, 15.142767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398572, 0.913144, 0.085495,
		-0.680782, -0.232104, -0.694740,
		-0.614554, -0.335107, 0.714162,
		19.527744, 21.031565, 15.357016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.396343, 21.734976, 14.753119>,  <19.957932, 21.266140, 14.857102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.396343, 21.734976, 14.753119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.329750, 21.563580, 15.108349>,  <19.289795, 21.460743, 15.321487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.329750, 21.563580, 15.108349>,  <19.396343, 21.734976, 14.753119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.329750, 21.563580, 15.108349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488784, 0.818066, 0.303081,
		-0.856373, -0.383620, -0.345632,
		-0.166482, -0.428490, 0.888077,
		19.279806, 21.435032, 15.374772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.638535, 21.854069, 14.960093>,  <19.396343, 21.734976, 14.753119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.638535, 21.854069, 14.960093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.808346, 21.776709, 15.313901>,  <18.910233, 21.730293, 15.526185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.808346, 21.776709, 15.313901>,  <18.638535, 21.854069, 14.960093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.808346, 21.776709, 15.313901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461399, 0.794343, 0.395132,
		-0.779029, -0.575861, 0.247988,
		0.424529, -0.193398, 0.884518,
		18.935705, 21.718689, 15.579256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.181789, 22.032593, 15.336967>,  <18.638535, 21.854069, 14.960093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.181789, 22.032593, 15.336967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.511223, 22.059637, 15.562227>,  <18.708883, 22.075865, 15.697383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.511223, 22.059637, 15.562227>,  <18.181789, 22.032593, 15.336967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511223, 22.059637, 15.562227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410039, 0.756973, 0.508782,
		-0.391890, -0.649939, 0.651154,
		0.823584, 0.067612, 0.563151,
		18.758299, 22.079920, 15.731173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.882988, 22.334949, 15.924973>,  <18.181789, 22.032593, 15.336967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.882988, 22.334949, 15.924973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.278799, 22.377899, 15.963566>,  <18.516285, 22.403669, 15.986722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.278799, 22.377899, 15.963566>,  <17.882988, 22.334949, 15.924973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.278799, 22.377899, 15.963566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132696, 0.939731, 0.315115,
		-0.056834, -0.324617, 0.944136,
		0.989526, 0.107374, 0.096484,
		18.575657, 22.410112, 15.992511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052135, 22.853476, 16.426821>,  <17.882988, 22.334949, 15.924973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.052135, 22.853476, 16.426821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.404625, 22.887754, 16.240873>,  <18.616119, 22.908321, 16.129305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.404625, 22.887754, 16.240873>,  <18.052135, 22.853476, 16.426821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.404625, 22.887754, 16.240873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017605, 0.988697, 0.148891,
		0.472371, -0.123022, 0.872772,
		0.881224, 0.085696, -0.464866,
		18.668991, 22.913464, 16.101414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566607, 22.981886, 16.943563>,  <18.052135, 22.853476, 16.426821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.566607, 22.981886, 16.943563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.720345, 23.101284, 16.594124>,  <18.812588, 23.172922, 16.384460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.720345, 23.101284, 16.594124>,  <18.566607, 22.981886, 16.943563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.720345, 23.101284, 16.594124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079714, 0.932022, 0.353527,
		0.919740, -0.205516, 0.334427,
		0.384349, 0.298494, -0.873600,
		18.835648, 23.190832, 16.332043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.216072, 23.400984, 17.100599>,  <18.566607, 22.981886, 16.943563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.216072, 23.400984, 17.100599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.092827, 23.506029, 16.734846>,  <19.018879, 23.569057, 16.515394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.092827, 23.506029, 16.734846>,  <19.216072, 23.400984, 17.100599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.092827, 23.506029, 16.734846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145774, 0.962827, 0.227407,
		0.940115, -0.063226, -0.334943,
		-0.308114, 0.262615, -0.914385,
		19.000393, 23.584814, 16.460531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.719210, 23.930267, 16.886175>,  <19.216072, 23.400984, 17.100599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.719210, 23.930267, 16.886175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.419989, 23.972713, 16.624134>,  <19.240456, 23.998182, 16.466909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.419989, 23.972713, 16.624134>,  <19.719210, 23.930267, 16.886175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.419989, 23.972713, 16.624134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102194, 0.993778, 0.044282,
		0.655725, -0.033822, -0.754242,
		-0.748051, 0.106116, -0.655102,
		19.195574, 24.004549, 16.427603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.864851, 24.424505, 16.253468>,  <19.719210, 23.930267, 16.886175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.864851, 24.424505, 16.253468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.482012, 24.445551, 16.367445>,  <19.252308, 24.458179, 16.435831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.482012, 24.445551, 16.367445>,  <19.864851, 24.424505, 16.253468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.482012, 24.445551, 16.367445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082978, 0.991960, 0.095548,
		-0.277626, 0.115093, -0.953770,
		-0.957099, 0.052616, 0.284944,
		19.194881, 24.461336, 16.452929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.526960, 25.044317, 15.911965>,  <19.864851, 24.424505, 16.253468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.526960, 25.044317, 15.911965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.382446, 24.921053, 16.263990>,  <19.295738, 24.847094, 16.475204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.382446, 24.921053, 16.263990>,  <19.526960, 25.044317, 15.911965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.382446, 24.921053, 16.263990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069142, 0.932360, 0.354859,
		-0.929888, 0.189055, -0.315542,
		-0.361287, -0.308162, 0.880062,
		19.274061, 24.828604, 16.528009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.667133, 25.369497, 15.312247>,  <19.526960, 25.044317, 15.911965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.667133, 25.369497, 15.312247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.801977, 25.352041, 14.936066>,  <19.882883, 25.341568, 14.710357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.801977, 25.352041, 14.936066>,  <19.667133, 25.369497, 15.312247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.801977, 25.352041, 14.936066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596558, -0.762889, 0.249238,
		-0.728338, -0.645056, -0.231144,
		0.337109, -0.043638, -0.940453,
		19.903111, 25.338949, 14.653930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.775434, 24.636791, 15.102797>,  <19.667133, 25.369497, 15.312247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.775434, 24.636791, 15.102797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020372, 24.885206, 14.907103>,  <20.167336, 25.034254, 14.789686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020372, 24.885206, 14.907103>,  <19.775434, 24.636791, 15.102797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.020372, 24.885206, 14.907103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734493, -0.675832, 0.061414,
		-0.292499, -0.396946, -0.869987,
		0.612343, 0.621036, -0.489234,
		20.204075, 25.071518, 14.760332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.168409, 24.321558, 14.516047>,  <19.775434, 24.636791, 15.102797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.168409, 24.321558, 14.516047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.386890, 24.594917, 14.709803>,  <20.517979, 24.758932, 14.826056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.386890, 24.594917, 14.709803>,  <20.168409, 24.321558, 14.516047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.386890, 24.594917, 14.709803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750377, -0.656193, 0.079652,
		0.372287, 0.319969, -0.871219,
		0.546201, 0.683397, 0.484389,
		20.550751, 24.799936, 14.855120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.739040, 24.404118, 14.145435>,  <20.168409, 24.321558, 14.516047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.739040, 24.404118, 14.145435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791254, 24.512772, 14.526838>,  <20.822582, 24.577965, 14.755680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.791254, 24.512772, 14.526838>,  <20.739040, 24.404118, 14.145435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791254, 24.512772, 14.526838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691552, -0.714092, 0.108759,
		0.710435, 0.645203, -0.281062,
		0.130533, 0.271635, 0.953507,
		20.830414, 24.594263, 14.812890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.524475, 24.518131, 14.306283>,  <20.739040, 24.404118, 14.145435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.524475, 24.518131, 14.306283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.302450, 24.372330, 14.605360>,  <21.169235, 24.284849, 14.784806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.302450, 24.372330, 14.605360>,  <21.524475, 24.518131, 14.306283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.302450, 24.372330, 14.605360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736358, -0.633404, 0.237858,
		0.386892, 0.682596, 0.619982,
		-0.555060, -0.364503, 0.747694,
		21.135933, 24.262980, 14.829668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.953203, 24.458920, 14.953494>,  <21.524475, 24.518131, 14.306283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.953203, 24.458920, 14.953494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.637182, 24.213795, 14.960136>,  <21.447569, 24.066719, 14.964122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.637182, 24.213795, 14.960136>,  <21.953203, 24.458920, 14.953494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.637182, 24.213795, 14.960136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573681, -0.729508, 0.372436,
		-0.216119, 0.303771, 0.927909,
		-0.790052, -0.612814, 0.016607,
		21.400166, 24.029951, 14.965118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.089293, 24.025778, 15.534064>,  <21.953203, 24.458920, 14.953494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.089293, 24.025778, 15.534064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.805927, 23.832077, 15.328677>,  <21.635908, 23.715857, 15.205444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.805927, 23.832077, 15.328677>,  <22.089293, 24.025778, 15.534064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.805927, 23.832077, 15.328677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460932, -0.868357, 0.183021,
		-0.534503, -0.107020, 0.838363,
		-0.708412, -0.484254, -0.513469,
		21.593403, 23.686800, 15.174637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.850468, 23.429529, 15.942018>,  <22.089293, 24.025778, 15.534064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.850468, 23.429529, 15.942018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.756311, 23.351860, 15.561095>,  <21.699818, 23.305258, 15.332541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.756311, 23.351860, 15.561095>,  <21.850468, 23.429529, 15.942018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.756311, 23.351860, 15.561095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279134, -0.952065, 0.125127,
		-0.930954, -0.236368, 0.278307,
		-0.235391, -0.194173, -0.952307,
		21.685694, 23.293608, 15.275403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.343864, 22.839705, 16.015621>,  <21.850468, 23.429529, 15.942018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.343864, 22.839705, 16.015621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530483, 22.850294, 15.661982>,  <21.642454, 22.856647, 15.449798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530483, 22.850294, 15.661982>,  <21.343864, 22.839705, 16.015621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530483, 22.850294, 15.661982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298182, -0.945747, 0.129034,
		-0.832719, -0.323824, -0.449130,
		0.466548, 0.026473, -0.884100,
		21.670448, 22.858236, 15.396751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.241806, 22.139755, 15.760167>,  <21.343864, 22.839705, 16.015621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.241806, 22.139755, 15.760167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.526905, 22.313356, 15.539756>,  <21.697964, 22.417517, 15.407509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.526905, 22.313356, 15.539756>,  <21.241806, 22.139755, 15.760167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.526905, 22.313356, 15.539756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468133, -0.879357, -0.087080,
		-0.522344, -0.195888, -0.829931,
		0.712748, 0.434004, -0.551028,
		21.740728, 22.443558, 15.374447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.289209, 21.752287, 15.197913>,  <21.241806, 22.139755, 15.760167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.289209, 21.752287, 15.197913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.655573, 21.912085, 15.213490>,  <21.875391, 22.007963, 15.222836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.655573, 21.912085, 15.213490>,  <21.289209, 21.752287, 15.197913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.655573, 21.912085, 15.213490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395697, -0.914940, 0.079424,
		0.067358, -0.057336, -0.996080,
		0.915908, 0.399496, 0.038941,
		21.930346, 22.031933, 15.225172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.743792, 21.272871, 14.862027>,  <21.289209, 21.752287, 15.197913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.743792, 21.272871, 14.862027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000259, 21.496220, 15.072596>,  <22.154140, 21.630230, 15.198936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000259, 21.496220, 15.072596>,  <21.743792, 21.272871, 14.862027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.000259, 21.496220, 15.072596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585940, -0.799192, 0.134037,
		0.495554, 0.222511, -0.839592,
		0.641171, 0.558373, 0.526421,
		22.192610, 21.663733, 15.230522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.493631, 21.146603, 14.579541>,  <21.743792, 21.272871, 14.862027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.493631, 21.146603, 14.579541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.543129, 21.284859, 14.951610>,  <22.572828, 21.367813, 15.174850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.543129, 21.284859, 14.951610>,  <22.493631, 21.146603, 14.579541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.543129, 21.284859, 14.951610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577302, -0.787491, 0.215824,
		0.807100, 0.510283, -0.296986,
		0.123743, 0.345642, 0.930171,
		22.580252, 21.388552, 15.230661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.139307, 21.102934, 14.641014>,  <22.493631, 21.146603, 14.579541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.139307, 21.102934, 14.641014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.982075, 21.111874, 15.008707>,  <22.887735, 21.117237, 15.229322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.982075, 21.111874, 15.008707>,  <23.139307, 21.102934, 14.641014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.982075, 21.111874, 15.008707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526796, -0.813900, 0.245057,
		0.753641, 0.580575, 0.308153,
		-0.393080, 0.022351, 0.919233,
		22.864151, 21.118580, 15.284477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.645374, 20.891556, 15.103708>,  <23.139307, 21.102934, 14.641014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.645374, 20.891556, 15.103708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.334246, 20.812021, 15.342189>,  <23.147568, 20.764299, 15.485277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.334246, 20.812021, 15.342189>,  <23.645374, 20.891556, 15.103708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.334246, 20.812021, 15.342189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480946, -0.798985, 0.360990,
		0.404577, 0.567527, 0.717099,
		-0.777823, -0.198838, 0.596201,
		23.100899, 20.752371, 15.521049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.921766, 20.675098, 15.786005>,  <23.645374, 20.891556, 15.103708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.921766, 20.675098, 15.786005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.551878, 20.523048, 15.778029>,  <23.329945, 20.431818, 15.773244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.551878, 20.523048, 15.778029>,  <23.921766, 20.675098, 15.786005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.551878, 20.523048, 15.778029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362283, -0.894978, 0.260317,
		-0.116798, 0.233497, 0.965317,
		-0.924721, -0.380123, -0.019940,
		23.274462, 20.409012, 15.772047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.855688, 20.176722, 16.390041>,  <23.921766, 20.675098, 15.786005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.855688, 20.176722, 16.390041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.543722, 20.069994, 16.163576>,  <23.356543, 20.005957, 16.027697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.543722, 20.069994, 16.163576>,  <23.855688, 20.176722, 16.390041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.543722, 20.069994, 16.163576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184093, -0.962358, 0.199943,
		-0.598199, 0.051713, 0.799677,
		-0.779915, -0.266821, -0.566161,
		23.309748, 19.989948, 15.993728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.367460, 19.616907, 16.687544>,  <23.855688, 20.176722, 16.390041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.367460, 19.616907, 16.687544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.347723, 19.605640, 16.288191>,  <23.335880, 19.598881, 16.048578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.347723, 19.605640, 16.288191>,  <23.367460, 19.616907, 16.687544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.347723, 19.605640, 16.288191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171980, -0.984912, 0.019286,
		-0.983864, -0.170750, 0.053444,
		-0.049345, -0.028166, -0.998385,
		23.332920, 19.597191, 15.988675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.018501, 19.004473, 16.584110>,  <23.367460, 19.616907, 16.687544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.018501, 19.004473, 16.584110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.174429, 19.066027, 16.220932>,  <23.267984, 19.102959, 16.003025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.174429, 19.066027, 16.220932>,  <23.018501, 19.004473, 16.584110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.174429, 19.066027, 16.220932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133346, -0.984981, -0.109689,
		-0.911186, -0.078312, -0.404483,
		0.389818, 0.153883, -0.907944,
		23.291374, 19.112192, 15.948549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.767014, 18.343702, 16.133507>,  <23.018501, 19.004473, 16.584110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.767014, 18.343702, 16.133507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.079531, 18.526009, 15.962927>,  <23.267040, 18.635391, 15.860579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.079531, 18.526009, 15.962927>,  <22.767014, 18.343702, 16.133507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.079531, 18.526009, 15.962927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320460, -0.879215, -0.352542,
		-0.535618, 0.138778, -0.832979,
		0.781293, 0.455764, -0.426451,
		23.313919, 18.662739, 15.834991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.870586, 17.966246, 15.505174>,  <22.767014, 18.343702, 16.133507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.870586, 17.966246, 15.505174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.213661, 18.161674, 15.569258>,  <23.419506, 18.278933, 15.607708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.213661, 18.161674, 15.569258>,  <22.870586, 17.966246, 15.505174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.213661, 18.161674, 15.569258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509054, -0.850727, -0.130877,
		0.072351, 0.193807, -0.978368,
		0.857688, 0.488573, 0.160209,
		23.470968, 18.308247, 15.617320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.282501, 17.646275, 14.999713>,  <22.870586, 17.966246, 15.505174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.282501, 17.646275, 14.999713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.542831, 17.832819, 15.239358>,  <23.699030, 17.944746, 15.383145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.542831, 17.832819, 15.239358>,  <23.282501, 17.646275, 14.999713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.542831, 17.832819, 15.239358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618289, -0.783522, -0.061746,
		0.440622, 0.410610, -0.798280,
		0.650823, 0.466361, 0.599113,
		23.738079, 17.972727, 15.419092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.952097, 17.611765, 14.616536>,  <23.282501, 17.646275, 14.999713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.952097, 17.611765, 14.616536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.011139, 17.642830, 15.010933>,  <24.046564, 17.661469, 15.247571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.011139, 17.642830, 15.010933>,  <23.952097, 17.611765, 14.616536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.011139, 17.642830, 15.010933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512291, -0.858764, -0.009051,
		0.846033, 0.506451, -0.166542,
		0.147604, 0.077661, 0.985993,
		24.055420, 17.666128, 15.306730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.615583, 17.511604, 14.680090>,  <23.952097, 17.611765, 14.616536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.615583, 17.511604, 14.680090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472946, 17.427761, 15.044267>,  <24.387363, 17.377455, 15.262773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.472946, 17.427761, 15.044267>,  <24.615583, 17.511604, 14.680090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.472946, 17.427761, 15.044267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606081, -0.793520, 0.054695,
		0.710989, 0.571306, 0.410005,
		-0.356595, -0.209609, 0.910442,
		24.365967, 17.364878, 15.317399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.236572, 17.211468, 14.952254>,  <24.615583, 17.511604, 14.680090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.236572, 17.211468, 14.952254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907120, 17.121056, 15.160307>,  <24.709448, 17.066809, 15.285139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907120, 17.121056, 15.160307>,  <25.236572, 17.211468, 14.952254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907120, 17.121056, 15.160307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379615, -0.901103, 0.209536,
		0.421331, 0.370031, 0.827984,
		-0.823634, -0.226031, 0.520132,
		24.660030, 17.053246, 15.316346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.381716, 17.317646, 15.642201>,  <25.236572, 17.211468, 14.952254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.381716, 17.317646, 15.642201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117310, 17.036974, 15.535839>,  <24.958666, 16.868570, 15.472021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117310, 17.036974, 15.535839>,  <25.381716, 17.317646, 15.642201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117310, 17.036974, 15.535839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651942, -0.712490, 0.259480,
		-0.371527, -0.001836, 0.928420,
		-0.661014, -0.701680, -0.265907,
		24.919006, 16.826469, 15.456067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459898, 16.721825, 16.064468>,  <25.381716, 17.317646, 15.642201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459898, 16.721825, 16.064468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290495, 16.592302, 15.726051>,  <25.188852, 16.514589, 15.523001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.290495, 16.592302, 15.726051>,  <25.459898, 16.721825, 16.064468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.290495, 16.592302, 15.726051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739506, -0.663005, -0.116428,
		-0.523232, -0.674963, 0.520244,
		-0.423509, -0.323804, -0.846044,
		25.163443, 16.495161, 15.472238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349005, 16.066978, 16.036158>,  <25.459898, 16.721825, 16.064468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349005, 16.066978, 16.036158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441404, 16.155319, 15.657135>,  <25.496843, 16.208324, 15.429721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441404, 16.155319, 15.657135>,  <25.349005, 16.066978, 16.036158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441404, 16.155319, 15.657135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575048, -0.816582, -0.050138,
		-0.784831, -0.533309, -0.315629,
		0.230998, 0.220852, -0.947557,
		25.510704, 16.221575, 15.372868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.227758, 15.435404, 15.547044>,  <25.349005, 16.066978, 16.036158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.227758, 15.435404, 15.547044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518156, 15.670837, 15.404776>,  <25.692394, 15.812098, 15.319415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.518156, 15.670837, 15.404776>,  <25.227758, 15.435404, 15.547044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518156, 15.670837, 15.404776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559118, -0.806301, -0.193044,
		-0.400400, -0.058713, -0.914458,
		0.725994, 0.588585, -0.355671,
		25.735954, 15.847413, 15.298075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460140, 15.231919, 14.792105>,  <25.227758, 15.435404, 15.547044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460140, 15.231919, 14.792105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732828, 15.388318, 15.039452>,  <25.896441, 15.482158, 15.187860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732828, 15.388318, 15.039452>,  <25.460140, 15.231919, 14.792105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732828, 15.388318, 15.039452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551757, -0.829804, -0.083596,
		0.480438, 0.398178, -0.781431,
		0.681721, 0.390997, 0.618367,
		25.937344, 15.505617, 15.224961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032064, 15.079657, 14.413369>,  <25.460140, 15.231919, 14.792105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032064, 15.079657, 14.413369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132605, 15.122141, 14.798190>,  <26.192928, 15.147632, 15.029082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132605, 15.122141, 14.798190>,  <26.032064, 15.079657, 14.413369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132605, 15.122141, 14.798190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553872, -0.830915, -0.052975,
		0.793756, 0.546169, -0.267677,
		0.251350, 0.106210, 0.962051,
		26.208010, 15.154004, 15.086805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733534, 15.142010, 14.606583>,  <26.032064, 15.079657, 14.413369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733534, 15.142010, 14.606583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562403, 14.945414, 14.910003>,  <26.459724, 14.827456, 15.092055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562403, 14.945414, 14.910003>,  <26.733534, 15.142010, 14.606583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562403, 14.945414, 14.910003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421927, -0.850783, -0.313282,
		0.799337, 0.186023, 0.571363,
		-0.427828, -0.491491, 0.758551,
		26.434053, 14.797966, 15.137568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<12.684223, 18.460642, 25.631620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.313747, 18.313057, 25.600531>,  <12.091462, 18.224506, 25.581877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.313747, 18.313057, 25.600531>,  <12.684223, 18.460642, 25.631620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.313747, 18.313057, 25.600531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284020, -0.547083, -0.787422,
		0.248006, -0.751377, 0.611494,
		-0.926189, -0.368962, -0.077726,
		12.035891, 18.202368, 25.577213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.812495, 17.784868, 25.448399>,  <12.684223, 18.460642, 25.631620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.812495, 17.784868, 25.448399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.444012, 17.908899, 25.354399>,  <12.222921, 17.983318, 25.297998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.444012, 17.908899, 25.354399>,  <12.812495, 17.784868, 25.448399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.444012, 17.908899, 25.354399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163524, -0.239497, -0.957027,
		-0.353037, -0.920050, 0.169921,
		-0.921209, 0.310080, -0.235002,
		12.167649, 18.001923, 25.283897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.636780, 17.316483, 24.977211>,  <12.812495, 17.784868, 25.448399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.636780, 17.316483, 24.977211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.341978, 17.581461, 24.923561>,  <12.165097, 17.740448, 24.891371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.341978, 17.581461, 24.923561>,  <12.636780, 17.316483, 24.977211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.341978, 17.581461, 24.923561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054379, -0.139683, -0.988702,
		-0.673697, -0.735971, 0.066924,
		-0.737004, 0.662446, -0.134125,
		12.120876, 17.780195, 24.883324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.172942, 16.994698, 24.621746>,  <12.636780, 17.316483, 24.977211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.172942, 16.994698, 24.621746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.099961, 17.380659, 24.546196>,  <12.056172, 17.612236, 24.500866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.099961, 17.380659, 24.546196>,  <12.172942, 16.994698, 24.621746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.099961, 17.380659, 24.546196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101261, -0.209520, -0.972547,
		-0.977986, -0.158318, 0.135935,
		-0.182453, 0.964903, -0.188876,
		12.045225, 17.670130, 24.489532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.575941, 16.997738, 24.139688>,  <12.172942, 16.994698, 24.621746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.575941, 16.997738, 24.139688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.783560, 17.338408, 24.110716>,  <11.908131, 17.542809, 24.093332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.783560, 17.338408, 24.110716>,  <11.575941, 16.997738, 24.139688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.783560, 17.338408, 24.110716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122647, -0.158072, -0.979781,
		-0.845901, 0.499668, -0.186502,
		0.519046, 0.851672, -0.072430,
		11.939274, 17.593908, 24.088987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.554745, 17.166018, 23.404526>,  <11.575941, 16.997738, 24.139688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.554745, 17.166018, 23.404526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.853030, 17.411222, 23.508930>,  <12.032001, 17.558346, 23.571573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.853030, 17.411222, 23.508930>,  <11.554745, 17.166018, 23.404526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.853030, 17.411222, 23.508930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399181, -0.097411, -0.911683,
		-0.533448, 0.784045, -0.317343,
		0.745713, 0.613013, 0.261012,
		12.076744, 17.595127, 23.587234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.652534, 17.585190, 22.760456>,  <11.554745, 17.166018, 23.404526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.652534, 17.585190, 22.760456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.996147, 17.607962, 22.963955>,  <12.202314, 17.621624, 23.086054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<11.996147, 17.607962, 22.963955>,  <11.652534, 17.585190, 22.760456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.996147, 17.607962, 22.963955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503007, 0.090804, -0.859499,
		-0.095127, 0.994240, 0.049367,
		0.859031, 0.056929, 0.508748,
		12.253857, 17.625040, 23.116579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.003718, 18.041861, 22.303757>,  <11.652534, 17.585190, 22.760456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.003718, 18.041861, 22.303757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.281762, 17.859121, 22.525789>,  <12.448588, 17.749477, 22.659008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.281762, 17.859121, 22.525789>,  <12.003718, 18.041861, 22.303757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.281762, 17.859121, 22.525789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605660, -0.043821, -0.794516,
		0.387297, 0.888465, 0.246234,
		0.695110, -0.456847, 0.555079,
		12.490295, 17.722067, 22.692312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.591260, 18.370975, 22.225859>,  <12.003718, 18.041861, 22.303757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.591260, 18.370975, 22.225859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.700699, 17.998995, 22.324110>,  <12.766362, 17.775806, 22.383060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.700699, 17.998995, 22.324110>,  <12.591260, 18.370975, 22.225859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.700699, 17.998995, 22.324110> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613457, -0.027976, -0.789232,
		0.740820, 0.366613, 0.562832,
		0.273598, -0.929953, 0.245627,
		12.782778, 17.720009, 22.397799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.244587, 18.410044, 22.148743>,  <12.591260, 18.370975, 22.225859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.244587, 18.410044, 22.148743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.172197, 18.017021, 22.165857>,  <13.128764, 17.781208, 22.176126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.172197, 18.017021, 22.165857>,  <13.244587, 18.410044, 22.148743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.172197, 18.017021, 22.165857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567124, -0.139802, -0.811681,
		0.803504, -0.122627, 0.582532,
		-0.180973, -0.982557, 0.042787,
		13.117906, 17.722254, 22.178694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.871845, 18.148836, 22.013369>,  <13.244587, 18.410044, 22.148743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.871845, 18.148836, 22.013369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.649692, 17.816494, 21.999374>,  <13.516399, 17.617088, 21.990978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.649692, 17.816494, 21.999374>,  <13.871845, 18.148836, 22.013369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.649692, 17.816494, 21.999374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682769, -0.431569, -0.589555,
		0.474737, -0.351318, 0.806970,
		-0.555384, -0.830857, -0.034987,
		13.483076, 17.567236, 21.988878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.186462, 17.522802, 22.252398>,  <13.871845, 18.148836, 22.013369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.186462, 17.522802, 22.252398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.913795, 17.362963, 22.007236>,  <13.750194, 17.267059, 21.860140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.913795, 17.362963, 22.007236>,  <14.186462, 17.522802, 22.252398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.913795, 17.362963, 22.007236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731478, -0.353506, -0.583072,
		0.016331, -0.845786, 0.533272,
		-0.681669, -0.399599, -0.612901,
		13.709293, 17.243084, 21.823366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.397976, 16.829685, 22.098362>,  <14.186462, 17.522802, 22.252398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.397976, 16.829685, 22.098362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.133155, 16.926603, 21.814678>,  <13.974262, 16.984755, 21.644468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.133155, 16.926603, 21.814678>,  <14.397976, 16.829685, 22.098362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.133155, 16.926603, 21.814678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542296, -0.498295, -0.676474,
		-0.517300, -0.832464, 0.198504,
		-0.662054, 0.242293, -0.709210,
		13.934539, 16.999292, 21.601915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.342850, 16.222708, 21.652452>,  <14.397976, 16.829685, 22.098362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.342850, 16.222708, 21.652452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.198725, 16.519993, 21.426954>,  <14.112249, 16.698364, 21.291655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.198725, 16.519993, 21.426954>,  <14.342850, 16.222708, 21.652452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.198725, 16.519993, 21.426954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397120, -0.424631, -0.813624,
		-0.844080, -0.517035, -0.142145,
		-0.360313, 0.743212, -0.563747,
		14.090631, 16.742956, 21.257830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.186454, 15.944264, 20.980961>,  <14.342850, 16.222708, 21.652452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.186454, 15.944264, 20.980961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.197455, 16.336420, 20.902906>,  <14.204056, 16.571714, 20.856073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.197455, 16.336420, 20.902906>,  <14.186454, 15.944264, 20.980961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.197455, 16.336420, 20.902906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275918, -0.195073, -0.941178,
		-0.960788, -0.027956, -0.275873,
		0.027503, 0.980390, -0.195137,
		14.205707, 16.630537, 20.844366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.719996, 16.013971, 20.485260>,  <14.186454, 15.944264, 20.980961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.719996, 16.013971, 20.485260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.995497, 16.303905, 20.479143>,  <14.160797, 16.477867, 20.475473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.995497, 16.303905, 20.479143>,  <13.719996, 16.013971, 20.485260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.995497, 16.303905, 20.479143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220136, -0.229180, -0.948165,
		-0.690770, 0.649683, -0.317411,
		0.688751, 0.724837, -0.015292,
		14.202122, 16.521357, 20.474556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.614947, 16.297087, 19.836540>,  <13.719996, 16.013971, 20.485260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.614947, 16.297087, 19.836540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.969237, 16.454262, 19.935406>,  <14.181811, 16.548567, 19.994726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.969237, 16.454262, 19.935406>,  <13.614947, 16.297087, 19.836540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.969237, 16.454262, 19.935406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245590, 0.055179, -0.967802,
		-0.393923, 0.917909, -0.047628,
		0.885726, 0.392936, 0.247166,
		14.234955, 16.572144, 20.009556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.617183, 16.705482, 19.352236>,  <13.614947, 16.297087, 19.836540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.617183, 16.705482, 19.352236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.994410, 16.666744, 19.479513>,  <14.220745, 16.643501, 19.555880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.994410, 16.666744, 19.479513>,  <13.617183, 16.705482, 19.352236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.994410, 16.666744, 19.479513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322574, 0.033131, -0.945964,
		0.081069, 0.994748, 0.062484,
		0.943066, -0.096844, 0.318194,
		14.277329, 16.637691, 19.574972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.950336, 17.144348, 18.988268>,  <13.617183, 16.705482, 19.352236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.950336, 17.144348, 18.988268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.225626, 16.882776, 19.113951>,  <14.390800, 16.725834, 19.189360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.225626, 16.882776, 19.113951>,  <13.950336, 17.144348, 18.988268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.225626, 16.882776, 19.113951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393039, -0.027966, -0.919097,
		0.609811, 0.756039, 0.237772,
		0.688223, -0.653929, 0.314207,
		14.432093, 16.686598, 19.208212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.373300, 17.162420, 18.501566>,  <13.950336, 17.144348, 18.988268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.373300, 17.162420, 18.501566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.541308, 16.831482, 18.650738>,  <14.642114, 16.632919, 18.740242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.541308, 16.831482, 18.650738>,  <14.373300, 17.162420, 18.501566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.541308, 16.831482, 18.650738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435559, -0.176733, -0.882640,
		0.796159, 0.533162, 0.286126,
		0.420023, -0.827347, 0.372931,
		14.667315, 16.583279, 18.762617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.114444, 17.140062, 18.344027>,  <14.373300, 17.162420, 18.501566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.114444, 17.140062, 18.344027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.001188, 16.759415, 18.391781>,  <14.933235, 16.531027, 18.420433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.001188, 16.759415, 18.391781>,  <15.114444, 17.140062, 18.344027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.001188, 16.759415, 18.391781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439630, -0.239409, -0.865684,
		0.852384, -0.192623, 0.486146,
		-0.283138, -0.951620, 0.119386,
		14.916246, 16.473928, 18.427597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.661592, 16.697073, 17.981733>,  <15.114444, 17.140062, 18.344027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.661592, 16.697073, 17.981733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.348306, 16.457064, 18.046907>,  <15.160334, 16.313059, 18.086012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.348306, 16.457064, 18.046907>,  <15.661592, 16.697073, 17.981733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.348306, 16.457064, 18.046907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192118, -0.482786, -0.854405,
		0.591323, -0.637882, 0.493400,
		-0.783216, -0.600021, 0.162934,
		15.113340, 16.277058, 18.095787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475685, 16.870073, 18.083633>,  <15.661592, 16.697073, 17.981733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.475685, 16.870073, 18.083633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.838787, 17.037706, 18.076132>,  <17.056648, 17.138287, 18.071630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.838787, 17.037706, 18.076132>,  <16.475685, 16.870073, 18.083633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.838787, 17.037706, 18.076132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073059, 0.201955, 0.976666,
		0.413092, -0.885203, 0.213944,
		0.907754, 0.419083, -0.018754,
		17.111113, 17.163431, 18.070505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.912956, 16.638264, 18.543774>,  <16.475685, 16.870073, 18.083633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.912956, 16.638264, 18.543774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.065638, 17.005390, 18.500116>,  <17.157248, 17.225666, 18.473923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.065638, 17.005390, 18.500116>,  <16.912956, 16.638264, 18.543774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.065638, 17.005390, 18.500116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049259, 0.097714, 0.993995,
		0.922971, -0.384789, -0.007913,
		0.381705, 0.917818, -0.109141,
		17.180149, 17.280735, 18.467375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312737, 16.711267, 19.153431>,  <16.912956, 16.638264, 18.543774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.312737, 16.711267, 19.153431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.282089, 17.086712, 19.018887>,  <17.263700, 17.311979, 18.938160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.282089, 17.086712, 19.018887>,  <17.312737, 16.711267, 19.153431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.282089, 17.086712, 19.018887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080538, 0.330423, 0.940391,
		0.993803, 0.099140, 0.050277,
		-0.076618, 0.938612, -0.336359,
		17.259104, 17.368296, 18.917978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.778074, 17.146931, 19.458099>,  <17.312737, 16.711267, 19.153431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.778074, 17.146931, 19.458099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.480659, 17.393246, 19.353825>,  <17.302210, 17.541035, 19.291260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.480659, 17.393246, 19.353825>,  <17.778074, 17.146931, 19.458099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.480659, 17.393246, 19.353825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010042, 0.379519, 0.925130,
		0.668619, 0.690486, -0.276003,
		-0.743538, 0.615787, -0.260687,
		17.257599, 17.577982, 19.275618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.999882, 17.801203, 19.710392>,  <17.778074, 17.146931, 19.458099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.999882, 17.801203, 19.710392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.600817, 17.794083, 19.684008>,  <17.361378, 17.789810, 19.668177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.600817, 17.794083, 19.684008>,  <17.999882, 17.801203, 19.710392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.600817, 17.794083, 19.684008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068237, 0.307517, 0.949093,
		0.003389, 0.951376, -0.308013,
		-0.997663, -0.017802, -0.065961,
		17.301517, 17.788742, 19.664219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.786358, 18.310194, 20.117434>,  <17.999882, 17.801203, 19.710392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.786358, 18.310194, 20.117434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.446035, 18.103954, 20.076860>,  <17.241842, 17.980211, 20.052517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.446035, 18.103954, 20.076860>,  <17.786358, 18.310194, 20.117434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.446035, 18.103954, 20.076860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287936, 0.295959, 0.910770,
		-0.439572, 0.804093, -0.400263,
		-0.850805, -0.515599, -0.101432,
		17.190794, 17.949274, 20.046431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.197983, 18.767418, 20.338516>,  <17.786358, 18.310194, 20.117434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.197983, 18.767418, 20.338516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.085909, 18.386826, 20.389402>,  <17.018663, 18.158470, 20.419933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.085909, 18.386826, 20.389402>,  <17.197983, 18.767418, 20.338516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.085909, 18.386826, 20.389402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458837, 0.249146, 0.852874,
		-0.843187, 0.180593, -0.506382,
		-0.280186, -0.951479, 0.127214,
		17.001854, 18.101381, 20.427567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.634487, 18.865282, 20.683039>,  <17.197983, 18.767418, 20.338516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.634487, 18.865282, 20.683039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.701937, 18.476210, 20.746857>,  <16.742407, 18.242765, 20.785149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.701937, 18.476210, 20.746857>,  <16.634487, 18.865282, 20.683039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.701937, 18.476210, 20.746857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246500, 0.115108, 0.962283,
		-0.954361, -0.201591, -0.220356,
		0.168623, -0.972682, 0.159547,
		16.752523, 18.184404, 20.794722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.105074, 18.680328, 21.029266>,  <16.634487, 18.865282, 20.683039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.105074, 18.680328, 21.029266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.376245, 18.401745, 21.123381>,  <16.538948, 18.234594, 21.179850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.376245, 18.401745, 21.123381>,  <16.105074, 18.680328, 21.029266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376245, 18.401745, 21.123381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169031, 0.163805, 0.971903,
		-0.715430, -0.698652, -0.006675,
		0.677929, -0.696457, 0.235285,
		16.579624, 18.192808, 21.193966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.686872, 18.217730, 21.567266>,  <16.105074, 18.680328, 21.029266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.686872, 18.217730, 21.567266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.054256, 18.061367, 21.591337>,  <16.274687, 17.967548, 21.605780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.054256, 18.061367, 21.591337>,  <15.686872, 18.217730, 21.567266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054256, 18.061367, 21.591337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022509, 0.100244, 0.994708,
		-0.394872, -0.914955, 0.083271,
		0.918460, -0.390907, 0.060178,
		16.329794, 17.944096, 21.609390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.679838, 17.598242, 21.982748>,  <15.686872, 18.217730, 21.567266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.679838, 17.598242, 21.982748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.046591, 17.755447, 22.010658>,  <16.266642, 17.849771, 22.027405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.046591, 17.755447, 22.010658>,  <15.679838, 17.598242, 21.982748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.046591, 17.755447, 22.010658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066349, -0.022311, 0.997547,
		0.393606, -0.919262, 0.005620,
		0.916882, 0.393014, 0.069774,
		16.321655, 17.873352, 22.031591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.111216, 17.110937, 22.292933>,  <15.679838, 17.598242, 21.982748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.111216, 17.110937, 22.292933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.251081, 17.482883, 22.338686>,  <16.335001, 17.706051, 22.366138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.251081, 17.482883, 22.338686>,  <16.111216, 17.110937, 22.292933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.251081, 17.482883, 22.338686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057025, -0.100739, 0.993277,
		0.935138, -0.353836, 0.017801,
		0.349664, 0.929866, 0.114382,
		16.355980, 17.761843, 22.373001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.426439, 17.055119, 22.860466>,  <16.111216, 17.110937, 22.292933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.426439, 17.055119, 22.860466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.376034, 17.450888, 22.831726>,  <16.345791, 17.688349, 22.814482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.376034, 17.450888, 22.831726>,  <16.426439, 17.055119, 22.860466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.376034, 17.450888, 22.831726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263811, 0.036398, 0.963887,
		0.956308, 0.140417, 0.256434,
		-0.126013, 0.989423, -0.071851,
		16.338230, 17.747715, 22.810171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428938, 17.158140, 23.545700>,  <16.426439, 17.055119, 22.860466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.428938, 17.158140, 23.545700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.343945, 17.517565, 23.392111>,  <16.292948, 17.733219, 23.299957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.343945, 17.517565, 23.392111>,  <16.428938, 17.158140, 23.545700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.343945, 17.517565, 23.392111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250037, 0.329866, 0.910313,
		0.944633, 0.289435, 0.154583,
		-0.212485, 0.898563, -0.383972,
		16.280199, 17.787134, 23.276918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.740791, 17.669271, 23.993706>,  <16.428938, 17.158140, 23.545700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.740791, 17.669271, 23.993706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.402765, 17.793892, 23.819902>,  <16.199949, 17.868664, 23.715620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.402765, 17.793892, 23.819902>,  <16.740791, 17.669271, 23.993706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.402765, 17.793892, 23.819902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397829, 0.176540, 0.900314,
		0.357202, 0.933685, -0.025244,
		-0.845067, 0.311552, -0.434508,
		16.149244, 17.887358, 23.689550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623470, 18.328539, 24.308668>,  <16.740791, 17.669271, 23.993706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.623470, 18.328539, 24.308668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.265808, 18.238489, 24.153849>,  <16.051210, 18.184460, 24.060957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.265808, 18.238489, 24.153849>,  <16.623470, 18.328539, 24.308668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265808, 18.238489, 24.153849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440806, 0.594330, 0.672653,
		0.078606, 0.772070, -0.630658,
		-0.894154, -0.225123, -0.387051,
		15.997561, 18.170952, 24.037733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.176598, 18.926643, 24.360155>,  <16.623470, 18.328539, 24.308668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.176598, 18.926643, 24.360155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.915976, 18.627813, 24.307467>,  <15.759602, 18.448515, 24.275854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.915976, 18.627813, 24.307467>,  <16.176598, 18.926643, 24.360155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.915976, 18.627813, 24.307467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596280, 0.397020, 0.697728,
		-0.468960, 0.533153, -0.704148,
		-0.651557, -0.747076, -0.131722,
		15.720509, 18.403690, 24.267950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.532380, 19.182444, 24.159698>,  <16.176598, 18.926643, 24.360155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.532380, 19.182444, 24.159698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.450995, 18.830900, 24.332308>,  <15.402164, 18.619974, 24.435873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.450995, 18.830900, 24.332308>,  <15.532380, 19.182444, 24.159698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.450995, 18.830900, 24.332308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647380, 0.451403, 0.614113,
		-0.734509, -0.154410, -0.660798,
		-0.203461, -0.878859, 0.431521,
		15.389957, 18.567242, 24.461763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<14.785863, 19.204529, 24.305637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.887568, 18.897543, 24.541042>,  <14.948592, 18.713352, 24.682285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.887568, 18.897543, 24.541042>,  <14.785863, 19.204529, 24.305637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.887568, 18.897543, 24.541042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730187, 0.246681, 0.637162,
		-0.634174, -0.591732, -0.497670,
		0.254264, -0.767464, 0.588514,
		14.963848, 18.667303, 24.717596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.220005, 18.962444, 24.599209>,  <14.785863, 19.204529, 24.305637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.220005, 18.962444, 24.599209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.475986, 18.802273, 24.861542>,  <14.629576, 18.706169, 25.018942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.475986, 18.802273, 24.861542>,  <14.220005, 18.962444, 24.599209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.475986, 18.802273, 24.861542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642619, 0.189060, 0.742494,
		-0.421307, -0.896612, -0.136333,
		0.639955, -0.400428, 0.655832,
		14.667973, 18.682144, 25.058290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.877439, 18.479343, 25.104528>,  <14.220005, 18.962444, 24.599209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.877439, 18.479343, 25.104528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.206473, 18.580288, 25.308359>,  <14.403893, 18.640854, 25.430658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.206473, 18.580288, 25.308359>,  <13.877439, 18.479343, 25.104528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.206473, 18.580288, 25.308359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539901, 0.065310, 0.839191,
		0.178501, -0.965426, 0.189974,
		0.822584, 0.252363, 0.509576,
		14.453249, 18.655996, 25.461233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.786251, 18.116974, 25.762543>,  <13.877439, 18.479343, 25.104528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.786251, 18.116974, 25.762543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.098378, 18.357225, 25.832228>,  <14.285654, 18.501377, 25.874039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.098378, 18.357225, 25.832228>,  <13.786251, 18.116974, 25.762543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.098378, 18.357225, 25.832228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298618, 0.113088, 0.947649,
		0.549484, -0.791489, 0.267604,
		0.780317, 0.600629, 0.174213,
		14.332474, 18.537415, 25.884491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.182941, 17.762400, 26.298508>,  <13.786251, 18.116974, 25.762543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.182941, 17.762400, 26.298508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.236421, 18.158800, 26.295935>,  <14.268508, 18.396641, 26.294392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.236421, 18.158800, 26.295935>,  <14.182941, 17.762400, 26.298508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.236421, 18.158800, 26.295935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223926, 0.036532, 0.973921,
		0.965392, -0.128771, 0.226795,
		0.133698, 0.991001, -0.006432,
		14.276530, 18.456100, 26.294004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.458879, 17.872101, 26.886374>,  <14.182941, 17.762400, 26.298508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.458879, 17.872101, 26.886374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.342402, 18.244967, 26.800327>,  <14.272516, 18.468687, 26.748699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.342402, 18.244967, 26.800327>,  <14.458879, 17.872101, 26.886374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.342402, 18.244967, 26.800327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145875, 0.178967, 0.972980,
		0.945478, 0.314703, 0.083866,
		-0.291191, 0.932165, -0.215117,
		14.255045, 18.524616, 26.735792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.821822, 18.396912, 27.303082>,  <14.458879, 17.872101, 26.886374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.821822, 18.396912, 27.303082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.506080, 18.596365, 27.159815>,  <14.316634, 18.716036, 27.073854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.506080, 18.596365, 27.159815>,  <14.821822, 18.396912, 27.303082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.506080, 18.596365, 27.159815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163851, 0.391132, 0.905631,
		0.591667, 0.773551, -0.227042,
		-0.789356, 0.498631, -0.358168,
		14.269273, 18.745955, 27.052364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.789989, 19.058010, 27.611872>,  <14.821822, 18.396912, 27.303082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.789989, 19.058010, 27.611872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.409002, 19.026657, 27.494118>,  <14.180410, 19.007845, 27.423466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.409002, 19.026657, 27.494118>,  <14.789989, 19.058010, 27.611872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.409002, 19.026657, 27.494118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303091, 0.341167, 0.889798,
		0.030690, 0.936729, -0.348708,
		-0.952467, -0.078383, -0.294385,
		14.123262, 19.003141, 27.405802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.464911, 19.710653, 27.668322>,  <14.789989, 19.058010, 27.611872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.464911, 19.710653, 27.668322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.161752, 19.450851, 27.692764>,  <13.979856, 19.294970, 27.707430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.161752, 19.450851, 27.692764>,  <14.464911, 19.710653, 27.668322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.161752, 19.450851, 27.692764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294281, 0.423977, 0.856529,
		-0.582228, 0.631178, -0.512468,
		-0.757898, -0.649505, 0.061107,
		13.934382, 19.256001, 27.711096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.858594, 20.136600, 27.840385>,  <14.464911, 19.710653, 27.668322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.858594, 20.136600, 27.840385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.714715, 19.781960, 27.956697>,  <13.628387, 19.569176, 28.026485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.714715, 19.781960, 27.956697>,  <13.858594, 20.136600, 27.840385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714715, 19.781960, 27.956697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314546, 0.408615, 0.856793,
		-0.878453, 0.216722, -0.425855,
		-0.359697, -0.886603, 0.290780,
		13.606806, 19.515978, 28.043932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.253817, 20.332211, 28.272190>,  <13.858594, 20.136600, 27.840385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.253817, 20.332211, 28.272190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.314067, 19.954754, 28.390074>,  <13.350217, 19.728279, 28.460804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.314067, 19.954754, 28.390074>,  <13.253817, 20.332211, 28.272190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.314067, 19.954754, 28.390074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343960, 0.229461, 0.910516,
		-0.926824, -0.238515, -0.290013,
		0.150625, -0.943641, 0.294710,
		13.359255, 19.671661, 28.478487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.576393, 20.153557, 28.560249>,  <13.253817, 20.332211, 28.272190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.576393, 20.153557, 28.560249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.843851, 19.888258, 28.694721>,  <13.004326, 19.729078, 28.775404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.843851, 19.888258, 28.694721>,  <12.576393, 20.153557, 28.560249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.843851, 19.888258, 28.694721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294066, 0.179390, 0.938800,
		-0.682963, -0.726583, -0.075090,
		0.668645, -0.663247, 0.336180,
		13.044445, 19.689283, 28.795576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.165396, 19.830730, 29.071724>,  <12.576393, 20.153557, 28.560249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.165396, 19.830730, 29.071724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.554738, 19.777206, 29.146204>,  <12.788343, 19.745092, 29.190891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.554738, 19.777206, 29.146204>,  <12.165396, 19.830730, 29.071724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.554738, 19.777206, 29.146204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151517, 0.234150, 0.960321,
		-0.172102, -0.962948, 0.207637,
		0.973357, -0.133812, 0.186201,
		12.846745, 19.737062, 29.202065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.187642, 19.273106, 29.641674>,  <12.165396, 19.830730, 29.071724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.187642, 19.273106, 29.641674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.535175, 19.470547, 29.626255>,  <12.743695, 19.589012, 29.617002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.535175, 19.470547, 29.626255>,  <12.187642, 19.273106, 29.641674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.535175, 19.470547, 29.626255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052607, 0.169457, 0.984132,
		0.492303, -0.853019, 0.173196,
		0.868832, 0.493602, -0.038550,
		12.795825, 19.618628, 29.614691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.727920, 18.840914, 30.029255>,  <12.187642, 19.273106, 29.641674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.727920, 18.840914, 30.029255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.847346, 19.222670, 30.029713>,  <12.919003, 19.451723, 30.029987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.847346, 19.222670, 30.029713>,  <12.727920, 18.840914, 30.029255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.847346, 19.222670, 30.029713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109926, 0.033196, 0.993385,
		0.948037, -0.296719, 0.114824,
		0.298568, 0.954388, 0.001146,
		12.936916, 19.508986, 30.030056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.230193, 18.917730, 30.605846>,  <12.727920, 18.840914, 30.029255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.230193, 18.917730, 30.605846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.124420, 19.295563, 30.528030>,  <13.060956, 19.522263, 30.481340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.124420, 19.295563, 30.528030>,  <13.230193, 18.917730, 30.605846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.124420, 19.295563, 30.528030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055513, 0.216293, 0.974749,
		0.962805, 0.246957, -0.109632,
		-0.264433, 0.944579, -0.194539,
		13.045090, 19.578936, 30.469669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.834621, 19.356672, 30.954046>,  <13.230193, 18.917730, 30.605846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.834621, 19.356672, 30.954046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.490113, 19.547630, 30.884413>,  <13.283408, 19.662205, 30.842632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.490113, 19.547630, 30.884413>,  <13.834621, 19.356672, 30.954046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.490113, 19.547630, 30.884413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084985, 0.202435, 0.975601,
		0.500990, 0.855051, -0.133780,
		-0.861271, 0.477397, -0.174084,
		13.231732, 19.690849, 30.832188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995667, 20.090679, 31.135258>,  <13.834621, 19.356672, 30.954046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.995667, 20.090679, 31.135258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.598971, 20.049263, 31.165543>,  <13.360954, 20.024414, 31.183714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.598971, 20.049263, 31.165543>,  <13.995667, 20.090679, 31.135258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.598971, 20.049263, 31.165543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023254, 0.435357, 0.899957,
		-0.126143, 0.894284, -0.429353,
		-0.991739, -0.103539, 0.075712,
		13.301450, 20.018202, 31.188257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.813849, 20.737623, 31.438478>,  <13.995667, 20.090679, 31.135258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.813849, 20.737623, 31.438478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.503186, 20.490919, 31.489719>,  <13.316789, 20.342897, 31.520464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.503186, 20.490919, 31.489719>,  <13.813849, 20.737623, 31.438478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.503186, 20.490919, 31.489719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051526, 0.264881, 0.962903,
		-0.627813, 0.741245, -0.237501,
		-0.776657, -0.616760, 0.128102,
		13.270189, 20.305891, 31.528151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.350111, 21.159914, 31.775976>,  <13.813849, 20.737623, 31.438478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.350111, 21.159914, 31.775976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.212850, 20.790951, 31.846863>,  <13.130493, 20.569572, 31.889395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.212850, 20.790951, 31.846863>,  <13.350111, 21.159914, 31.775976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.212850, 20.790951, 31.846863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251647, 0.272061, 0.928793,
		-0.904942, 0.274123, -0.325481,
		-0.343154, -0.922410, 0.177217,
		13.109903, 20.514227, 31.900028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.768104, 21.335941, 32.090057>,  <13.350111, 21.159914, 31.775976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.768104, 21.335941, 32.090057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.859492, 20.961996, 32.198746>,  <12.914326, 20.737629, 32.263958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.859492, 20.961996, 32.198746>,  <12.768104, 21.335941, 32.090057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.859492, 20.961996, 32.198746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228279, 0.219879, 0.948442,
		-0.946409, -0.278720, -0.163174,
		0.228471, -0.934863, 0.271721,
		12.928034, 20.681538, 32.280262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.210051, 21.099848, 32.478600>,  <12.768104, 21.335941, 32.090057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.210051, 21.099848, 32.478600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.534040, 20.890076, 32.583607>,  <12.728435, 20.764212, 32.646610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.534040, 20.890076, 32.583607>,  <12.210051, 21.099848, 32.478600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.534040, 20.890076, 32.583607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207427, 0.162511, 0.964657,
		-0.548558, -0.835800, 0.022848,
		0.809974, -0.524432, 0.262515,
		12.777033, 20.732746, 32.662361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.963940, 20.583946, 32.944935>,  <12.210051, 21.099848, 32.478600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.963940, 20.583946, 32.944935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.329460, 20.739643, 32.991337>,  <12.548773, 20.833061, 33.019180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.329460, 20.739643, 32.991337>,  <11.963940, 20.583946, 32.944935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.329460, 20.739643, 32.991337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264915, 0.354687, 0.896670,
		0.307871, -0.850112, 0.427229,
		0.913803, 0.389239, 0.116010,
		12.603601, 20.856415, 33.026138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.373859, 20.122555, 33.198963>,  <11.963940, 20.583946, 32.944935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.373859, 20.122555, 33.198963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.057605, 19.942377, 33.364853>,  <10.867852, 19.834270, 33.464386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.057605, 19.942377, 33.364853>,  <11.373859, 20.122555, 33.198963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.057605, 19.942377, 33.364853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112631, -0.558783, -0.821630,
		0.601838, -0.696321, 0.391060,
		-0.790636, -0.450443, 0.414724,
		10.820414, 19.807245, 33.489269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.512728, 19.361771, 33.308655>,  <11.373859, 20.122555, 33.198963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.512728, 19.361771, 33.308655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.127377, 19.465067, 33.279762>,  <10.896166, 19.527044, 33.262428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.127377, 19.465067, 33.279762>,  <11.512728, 19.361771, 33.308655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.127377, 19.465067, 33.279762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122032, -0.662067, -0.739443,
		-0.238773, -0.703548, 0.669334,
		-0.963377, 0.258240, -0.072228,
		10.838364, 19.542540, 33.258095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.297711, 18.761631, 33.145145>,  <11.512728, 19.361771, 33.308655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.297711, 18.761631, 33.145145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.007051, 19.016258, 33.041790>,  <10.832656, 19.169033, 32.979774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.007051, 19.016258, 33.041790>,  <11.297711, 18.761631, 33.145145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.007051, 19.016258, 33.041790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180859, -0.540091, -0.821944,
		-0.662777, -0.550531, 0.507584,
		-0.726648, 0.636567, -0.258391,
		10.789057, 19.207228, 32.964272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.657974, 18.401608, 33.077461>,  <11.297711, 18.761631, 33.145145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.657974, 18.401608, 33.077461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.652597, 18.736282, 32.858452>,  <10.649371, 18.937086, 32.727047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.652597, 18.736282, 32.858452>,  <10.657974, 18.401608, 33.077461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.652597, 18.736282, 32.858452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275746, -0.529438, -0.802285,
		-0.961137, 0.140192, 0.237829,
		-0.013442, 0.836685, -0.547520,
		10.648565, 18.987288, 32.694195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.171520, 18.202766, 32.591755>,  <10.657974, 18.401608, 33.077461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.171520, 18.202766, 32.591755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.346179, 18.517502, 32.417294>,  <10.450974, 18.706343, 32.312618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.346179, 18.517502, 32.417294>,  <10.171520, 18.202766, 32.591755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.346179, 18.517502, 32.417294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202472, -0.386420, -0.899825,
		-0.876553, 0.481214, -0.009416,
		0.436646, 0.786837, -0.436150,
		10.477173, 18.753553, 32.286449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.791992, 18.382061, 32.066498>,  <10.171520, 18.202766, 32.591755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.791992, 18.382061, 32.066498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.130342, 18.560144, 31.948999>,  <10.333352, 18.666994, 31.878502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.130342, 18.560144, 31.948999>,  <9.791992, 18.382061, 32.066498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.130342, 18.560144, 31.948999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084191, -0.432369, -0.897758,
		-0.526694, 0.784121, -0.328248,
		0.845875, 0.445208, -0.293743,
		10.384105, 18.693707, 31.860876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.511616, 18.677002, 31.469654>,  <9.791992, 18.382061, 32.066498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.511616, 18.677002, 31.469654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.909367, 18.661554, 31.430208>,  <10.148017, 18.652285, 31.406540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.909367, 18.661554, 31.430208>,  <9.511616, 18.677002, 31.469654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.909367, 18.661554, 31.430208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105298, -0.260760, -0.959644,
		0.011347, 0.964631, -0.263360,
		0.994376, -0.038621, -0.098615,
		10.207680, 18.649967, 31.400623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.663281, 19.088051, 30.884659>,  <9.511616, 18.677002, 31.469654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.663281, 19.088051, 30.884659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.955428, 18.815725, 30.906771>,  <10.130716, 18.652330, 30.920038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<9.955428, 18.815725, 30.906771>,  <9.663281, 19.088051, 30.884659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.955428, 18.815725, 30.906771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002695, -0.083806, -0.996479,
		0.683049, 0.727647, -0.063044,
		0.730368, -0.680813, 0.055282,
		10.174539, 18.611481, 30.923355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.002359, 19.205505, 30.239353>,  <9.663281, 19.088051, 30.884659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.002359, 19.205505, 30.239353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.188875, 18.874599, 30.364706>,  <10.300784, 18.676056, 30.439917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.188875, 18.874599, 30.364706>,  <10.002359, 19.205505, 30.239353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.188875, 18.874599, 30.364706> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277844, -0.199368, -0.939710,
		0.839868, 0.525247, 0.136888,
		0.466288, -0.827266, 0.313380,
		10.328762, 18.626419, 30.458719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.679515, 19.351656, 29.921986>,  <10.002359, 19.205505, 30.239353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.679515, 19.351656, 29.921986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.609020, 18.968824, 30.014021>,  <10.566724, 18.739126, 30.069242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.609020, 18.968824, 30.014021>,  <10.679515, 19.351656, 29.921986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.609020, 18.968824, 30.014021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435539, -0.285440, -0.853715,
		0.882749, -0.050242, 0.467150,
		-0.176236, -0.957079, 0.230090,
		10.556149, 18.681702, 30.083048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.354209, 19.022030, 30.010042>,  <10.679515, 19.351656, 29.921986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.354209, 19.022030, 30.010042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.073937, 18.752375, 29.916586>,  <10.905774, 18.590582, 29.860512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.073937, 18.752375, 29.916586>,  <11.354209, 19.022030, 30.010042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.073937, 18.752375, 29.916586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483532, -0.207882, -0.850283,
		0.524638, -0.708748, 0.471626,
		-0.700679, -0.674138, -0.233640,
		10.863733, 18.550133, 29.846495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.752009, 18.366547, 29.850395>,  <11.354209, 19.022030, 30.010042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.752009, 18.366547, 29.850395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.384162, 18.331352, 29.697262>,  <11.163453, 18.310236, 29.605383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.384162, 18.331352, 29.697262>,  <11.752009, 18.366547, 29.850395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.384162, 18.331352, 29.697262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390821, -0.106956, -0.914231,
		0.039493, -0.990363, 0.132745,
		-0.919619, -0.087985, -0.382831,
		11.108276, 18.304956, 29.582413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.679706, 17.679079, 29.572653>,  <11.752009, 18.366547, 29.850395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.679706, 17.679079, 29.572653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.453834, 17.952309, 29.387377>,  <11.318311, 18.116245, 29.276211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.453834, 17.952309, 29.387377>,  <11.679706, 17.679079, 29.572653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.453834, 17.952309, 29.387377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430221, -0.235320, -0.871513,
		-0.704306, -0.691401, -0.160992,
		-0.564680, 0.683073, -0.463192,
		11.284430, 18.157230, 29.248419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.734369, 17.430279, 28.929348>,  <11.679706, 17.679079, 29.572653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.734369, 17.430279, 28.929348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.499621, 17.739178, 28.832012>,  <11.358772, 17.924517, 28.773611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.499621, 17.739178, 28.832012>,  <11.734369, 17.430279, 28.929348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.499621, 17.739178, 28.832012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167909, -0.177928, -0.969612,
		-0.792079, -0.609896, -0.025246,
		-0.586870, 0.772249, -0.243340,
		11.323561, 17.970852, 28.759010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.194926, 17.217821, 28.431044>,  <11.734369, 17.430279, 28.929348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.194926, 17.217821, 28.431044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.191821, 17.613312, 28.371235>,  <11.189958, 17.850607, 28.335350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.191821, 17.613312, 28.371235>,  <11.194926, 17.217821, 28.431044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.191821, 17.613312, 28.371235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086549, -0.148299, -0.985148,
		-0.996217, -0.020589, -0.084422,
		-0.007764, 0.988728, -0.149520,
		11.189492, 17.909931, 28.326380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.718629, 17.361370, 27.872843>,  <11.194926, 17.217821, 28.431044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.718629, 17.361370, 27.872843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.955518, 17.683680, 27.872154>,  <11.097651, 17.877066, 27.871742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.955518, 17.683680, 27.872154>,  <10.718629, 17.361370, 27.872843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.955518, 17.683680, 27.872154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087811, -0.066661, -0.993904,
		-0.800975, 0.588462, -0.110233,
		0.592223, 0.805772, -0.001720,
		11.133184, 17.925411, 27.871637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.490347, 17.712503, 27.255997>,  <10.718629, 17.361370, 27.872843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.490347, 17.712503, 27.255997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.834781, 17.884714, 27.364206>,  <11.041441, 17.988041, 27.429132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.834781, 17.884714, 27.364206>,  <10.490347, 17.712503, 27.255997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.834781, 17.884714, 27.364206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164099, 0.268265, -0.949266,
		-0.481254, 0.861790, 0.160350,
		0.861084, 0.430524, 0.270522,
		11.093106, 18.013872, 27.445362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.409963, 18.376205, 26.965054>,  <10.490347, 17.712503, 27.255997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.409963, 18.376205, 26.965054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.795945, 18.285631, 27.018103>,  <11.027534, 18.231287, 27.049932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<10.795945, 18.285631, 27.018103>,  <10.409963, 18.376205, 26.965054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.795945, 18.285631, 27.018103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192447, 0.267057, -0.944269,
		0.178397, 0.936701, 0.301275,
		0.964955, -0.226434, 0.132623,
		11.085432, 18.217701, 27.057890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.762197, 18.870024, 26.593876>,  <10.409963, 18.376205, 26.965054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.762197, 18.870024, 26.593876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.047908, 18.595264, 26.647514>,  <11.219335, 18.430408, 26.679697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.047908, 18.595264, 26.647514>,  <10.762197, 18.870024, 26.593876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.047908, 18.595264, 26.647514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277856, 0.102470, -0.955142,
		0.642343, 0.719495, 0.264050,
		0.714277, -0.686897, 0.134095,
		11.262191, 18.389194, 26.687742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.361149, 19.177406, 26.252810>,  <10.762197, 18.870024, 26.593876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.361149, 19.177406, 26.252810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.423821, 18.782440, 26.261417>,  <11.461425, 18.545460, 26.266582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.423821, 18.782440, 26.261417>,  <11.361149, 19.177406, 26.252810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.423821, 18.782440, 26.261417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273798, 0.022490, -0.961524,
		0.948939, 0.156545, 0.273876,
		0.156681, -0.987415, 0.021520,
		11.470826, 18.486216, 26.267874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.022497, 19.150866, 25.962154>,  <11.361149, 19.177406, 26.252810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.022497, 19.150866, 25.962154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.852881, 18.790264, 25.927549>,  <11.751112, 18.573904, 25.906786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<11.852881, 18.790264, 25.927549>,  <12.022497, 19.150866, 25.962154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.852881, 18.790264, 25.927549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528475, -0.168734, -0.832012,
		0.735462, -0.398527, 0.547971,
		-0.424040, -0.901502, -0.086514,
		11.725669, 18.519814, 25.901596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<16.932898, 26.139040, 17.192265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.288704, 25.960524, 17.231432>,  <17.502188, 25.853415, 17.254932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.288704, 25.960524, 17.231432>,  <16.932898, 26.139040, 17.192265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.288704, 25.960524, 17.231432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330385, 0.776291, 0.536860,
		-0.315606, -0.445195, 0.837970,
		0.889516, -0.446289, 0.097916,
		17.555559, 25.826637, 17.260807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.164642, 26.562294, 17.919111>,  <16.932898, 26.139040, 17.192265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.164642, 26.562294, 17.919111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.445560, 26.419842, 18.165672>,  <17.614111, 26.334372, 18.313608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.445560, 26.419842, 18.165672>,  <17.164642, 26.562294, 17.919111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.445560, 26.419842, 18.165672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378914, -0.546024, -0.747182,
		0.602665, 0.758307, -0.248528,
		0.702296, -0.356129, 0.616403,
		17.656250, 26.313004, 18.350594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.804850, 26.653648, 17.672783>,  <17.164642, 26.562294, 17.919111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.804850, 26.653648, 17.672783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.806313, 26.314823, 17.885374>,  <17.807190, 26.111528, 18.012928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.806313, 26.314823, 17.885374>,  <17.804850, 26.653648, 17.672783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.806313, 26.314823, 17.885374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321421, -0.502282, -0.802746,
		0.946930, 0.173765, 0.270426,
		0.003659, -0.847065, 0.531477,
		17.807411, 26.060703, 18.044817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.454550, 26.421673, 17.568165>,  <17.804850, 26.653648, 17.672783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.454550, 26.421673, 17.568165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.211109, 26.129147, 17.691311>,  <18.065044, 25.953630, 17.765200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.211109, 26.129147, 17.691311>,  <18.454550, 26.421673, 17.568165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.211109, 26.129147, 17.691311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351521, -0.596342, -0.721671,
		0.711364, -0.330987, 0.620007,
		-0.608600, -0.731316, 0.307867,
		18.028528, 25.909752, 17.783670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.827787, 25.824867, 17.600187>,  <18.454550, 26.421673, 17.568165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.827787, 25.824867, 17.600187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.455248, 25.703234, 17.520060>,  <18.231724, 25.630255, 17.471983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.455248, 25.703234, 17.520060>,  <18.827787, 25.824867, 17.600187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.455248, 25.703234, 17.520060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363122, -0.734612, -0.573138,
		0.027126, -0.606530, 0.794597,
		-0.931347, -0.304082, -0.200317,
		18.175844, 25.612009, 17.459965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.777798, 25.145685, 17.787415>,  <18.827787, 25.824867, 17.600187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.777798, 25.145685, 17.787415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.523378, 25.231548, 17.490938>,  <18.370726, 25.283066, 17.313053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.523378, 25.231548, 17.490938>,  <18.777798, 25.145685, 17.787415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.523378, 25.231548, 17.490938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423342, -0.705998, -0.567757,
		-0.645152, -0.674899, 0.358176,
		-0.636050, 0.214659, -0.741189,
		18.332563, 25.295946, 17.268581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.726984, 24.488184, 17.407902>,  <18.777798, 25.145685, 17.787415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.726984, 24.488184, 17.407902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.553715, 24.745743, 17.155630>,  <18.449753, 24.900278, 17.004267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.553715, 24.745743, 17.155630>,  <18.726984, 24.488184, 17.407902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.553715, 24.745743, 17.155630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131183, -0.647243, -0.750911,
		-0.891713, -0.408009, 0.195899,
		-0.433173, 0.643898, -0.630679,
		18.423763, 24.938911, 16.966427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.037247, 24.193714, 17.092503>,  <18.726984, 24.488184, 17.407902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.037247, 24.193714, 17.092503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.268440, 24.439034, 16.877172>,  <18.407156, 24.586226, 16.747974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.268440, 24.439034, 16.877172>,  <18.037247, 24.193714, 17.092503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.268440, 24.439034, 16.877172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159642, -0.731908, -0.662439,
		-0.800279, 0.296940, -0.520941,
		0.577985, 0.613300, -0.538327,
		18.441835, 24.623024, 16.715673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846022, 24.336752, 16.368944>,  <18.037247, 24.193714, 17.092503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846022, 24.336752, 16.368944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.242313, 24.341370, 16.423086>,  <18.480089, 24.344141, 16.455572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.242313, 24.341370, 16.423086>,  <17.846022, 24.336752, 16.368944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.242313, 24.341370, 16.423086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086396, -0.822457, -0.562227,
		0.104835, 0.568710, -0.815830,
		0.990730, 0.011544, 0.135356,
		18.539532, 24.344833, 16.463694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078035, 24.161556, 15.781845>,  <17.846022, 24.336752, 16.368944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.078035, 24.161556, 15.781845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.410696, 24.124065, 16.000778>,  <18.610292, 24.101570, 16.132137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.410696, 24.124065, 16.000778>,  <18.078035, 24.161556, 15.781845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.410696, 24.124065, 16.000778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303708, -0.748397, -0.589631,
		0.464885, 0.656596, -0.593939,
		0.831651, -0.093727, 0.547332,
		18.660191, 24.095947, 16.164978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.679031, 23.963226, 15.269802>,  <18.078035, 24.161556, 15.781845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.679031, 23.963226, 15.269802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.766071, 23.842133, 15.640963>,  <18.818295, 23.769476, 15.863659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.766071, 23.842133, 15.640963>,  <18.679031, 23.963226, 15.269802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.766071, 23.842133, 15.640963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265976, -0.896311, -0.354800,
		0.939099, 0.324004, -0.114518,
		0.217600, -0.302734, 0.927902,
		18.831352, 23.751312, 15.919333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.428883, 23.722431, 15.322320>,  <18.679031, 23.963226, 15.269802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.428883, 23.722431, 15.322320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.202177, 23.553181, 15.605090>,  <19.066154, 23.451630, 15.774753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.202177, 23.553181, 15.605090>,  <19.428883, 23.722431, 15.322320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.202177, 23.553181, 15.605090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134497, -0.894051, -0.427298,
		0.812829, -0.147098, 0.563624,
		-0.566763, -0.423126, 0.706926,
		19.032148, 23.426243, 15.817168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.705622, 22.993414, 15.357183>,  <19.428883, 23.722431, 15.322320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.705622, 22.993414, 15.357183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.380230, 22.982244, 15.589552>,  <19.184996, 22.975542, 15.728973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.380230, 22.982244, 15.589552>,  <19.705622, 22.993414, 15.357183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.380230, 22.982244, 15.589552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056201, -0.990398, -0.126308,
		0.578872, -0.135397, 0.804099,
		-0.813480, -0.027925, 0.580923,
		19.136187, 22.973867, 15.763829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.886570, 22.482573, 15.900607>,  <19.705622, 22.993414, 15.357183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.886570, 22.482573, 15.900607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.487326, 22.476263, 15.924360>,  <19.247780, 22.472477, 15.938612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.487326, 22.476263, 15.924360>,  <19.886570, 22.482573, 15.900607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.487326, 22.476263, 15.924360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007212, -0.989881, -0.141718,
		0.061017, -0.141022, 0.988124,
		-0.998111, -0.015774, 0.059382,
		19.187893, 22.471531, 15.942175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.926958, 22.045124, 16.370760>,  <19.886570, 22.482573, 15.900607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.926958, 22.045124, 16.370760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.563551, 22.056757, 16.204027>,  <19.345507, 22.063736, 16.103987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.563551, 22.056757, 16.204027>,  <19.926958, 22.045124, 16.370760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.563551, 22.056757, 16.204027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029881, -0.990500, -0.134228,
		-0.416776, -0.134404, 0.899018,
		-0.908518, 0.029080, -0.416833,
		19.290995, 22.065481, 16.078978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.459023, 21.589611, 16.740465>,  <19.926958, 22.045124, 16.370760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.459023, 21.589611, 16.740465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.296085, 21.646852, 16.379667>,  <19.198322, 21.681198, 16.163189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.296085, 21.646852, 16.379667>,  <19.459023, 21.589611, 16.740465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.296085, 21.646852, 16.379667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038696, -0.984056, -0.173598,
		-0.912454, -0.105618, 0.395313,
		-0.407345, 0.143103, -0.901993,
		19.173882, 21.689783, 16.109070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.869404, 21.189634, 16.592865>,  <19.459023, 21.589611, 16.740465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.869404, 21.189634, 16.592865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.012705, 21.264189, 16.226933>,  <19.098686, 21.308922, 16.007374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.012705, 21.264189, 16.226933>,  <18.869404, 21.189634, 16.592865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.012705, 21.264189, 16.226933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113138, -0.981316, -0.155625,
		-0.926744, -0.047748, -0.372646,
		0.358253, 0.186385, -0.914831,
		19.120180, 21.320105, 15.952483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.697544, 20.630598, 16.251242>,  <18.869404, 21.189634, 16.592865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.697544, 20.630598, 16.251242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.966764, 20.758589, 15.984523>,  <19.128296, 20.835382, 15.824492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.966764, 20.758589, 15.984523>,  <18.697544, 20.630598, 16.251242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.966764, 20.758589, 15.984523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244406, -0.947144, -0.207808,
		-0.698047, -0.023104, -0.715679,
		0.673050, 0.319976, -0.666798,
		19.168680, 20.854582, 15.784484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.728001, 20.117264, 15.956894>,  <18.697544, 20.630598, 16.251242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.728001, 20.117264, 15.956894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.063118, 20.293980, 15.828565>,  <19.264189, 20.400009, 15.751567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.063118, 20.293980, 15.828565>,  <18.728001, 20.117264, 15.956894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.063118, 20.293980, 15.828565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357924, -0.888125, -0.288314,
		-0.412304, 0.126717, -0.902191,
		0.837792, 0.441789, -0.320822,
		19.314455, 20.426516, 15.732318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.833361, 19.910849, 15.206591>,  <18.728001, 20.117264, 15.956894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.833361, 19.910849, 15.206591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.169720, 19.988573, 15.408634>,  <19.371534, 20.035208, 15.529860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.169720, 19.988573, 15.408634>,  <18.833361, 19.910849, 15.206591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.169720, 19.988573, 15.408634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343623, -0.912751, -0.220926,
		0.418110, 0.359343, -0.834300,
		0.840897, 0.194313, 0.505109,
		19.421989, 20.046867, 15.560167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229933, 19.440170, 14.980171>,  <18.833361, 19.910849, 15.206591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229933, 19.440170, 14.980171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.481894, 19.595222, 15.249383>,  <19.633070, 19.688253, 15.410911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.481894, 19.595222, 15.249383>,  <19.229933, 19.440170, 14.980171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.481894, 19.595222, 15.249383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479727, -0.875670, 0.055354,
		0.610809, 0.288003, -0.737541,
		0.629900, 0.387628, 0.673030,
		19.670864, 19.711512, 15.451292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.946074, 19.330311, 14.769466>,  <19.229933, 19.440170, 14.980171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.946074, 19.330311, 14.769466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.962887, 19.376856, 15.166393>,  <19.972975, 19.404783, 15.404550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.962887, 19.376856, 15.166393>,  <19.946074, 19.330311, 14.769466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.962887, 19.376856, 15.166393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609968, -0.789609, 0.066756,
		0.791311, 0.602475, -0.104169,
		0.042034, 0.116365, 0.992317,
		19.975496, 19.411766, 15.464088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.654276, 19.138832, 14.899247>,  <19.946074, 19.330311, 14.769466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.654276, 19.138832, 14.899247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.489365, 19.145864, 15.263603>,  <20.390419, 19.150084, 15.482217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.489365, 19.145864, 15.263603>,  <20.654276, 19.138832, 14.899247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.489365, 19.145864, 15.263603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581362, -0.764720, 0.277889,
		0.701460, 0.644123, 0.305055,
		-0.412276, 0.017580, 0.910889,
		20.365683, 19.151138, 15.536870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.227732, 19.188330, 15.406611>,  <20.654276, 19.138832, 14.899247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.227732, 19.188330, 15.406611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.907280, 19.021229, 15.578039>,  <20.715008, 18.920967, 15.680896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.907280, 19.021229, 15.578039>,  <21.227732, 19.188330, 15.406611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.907280, 19.021229, 15.578039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591771, -0.659915, 0.462947,
		0.089422, 0.624496, 0.775892,
		-0.801131, -0.417753, 0.428569,
		20.666941, 18.895903, 15.706610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.490589, 18.887197, 16.135521>,  <21.227732, 19.188330, 15.406611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.490589, 18.887197, 16.135521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.154509, 18.691761, 16.041422>,  <20.952860, 18.574499, 15.984962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.154509, 18.691761, 16.041422>,  <21.490589, 18.887197, 16.135521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.154509, 18.691761, 16.041422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407018, -0.854860, 0.321792,
		-0.358328, 0.174620, 0.917120,
		-0.840201, -0.488592, -0.235246,
		20.902449, 18.545183, 15.970848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.291748, 18.550772, 16.766783>,  <21.490589, 18.887197, 16.135521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.291748, 18.550772, 16.766783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.113295, 18.363331, 16.461790>,  <21.006224, 18.250866, 16.278795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.113295, 18.363331, 16.461790>,  <21.291748, 18.550772, 16.766783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.113295, 18.363331, 16.461790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344320, -0.876259, 0.337066,
		-0.826081, -0.112161, 0.552277,
		-0.446132, -0.468604, -0.762480,
		20.979456, 18.222750, 16.233046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065554, 17.934807, 17.098925>,  <21.291748, 18.550772, 16.766783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065554, 17.934807, 17.098925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.082916, 17.860231, 16.706322>,  <21.093334, 17.815487, 16.470760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.082916, 17.860231, 16.706322>,  <21.065554, 17.934807, 17.098925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.082916, 17.860231, 16.706322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430886, -0.882869, 0.186758,
		-0.901362, -0.431025, 0.042011,
		0.043406, -0.186438, -0.981507,
		21.095938, 17.804300, 16.411869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.798912, 17.243221, 17.029518>,  <21.065554, 17.934807, 17.098925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.798912, 17.243221, 17.029518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.034206, 17.337708, 16.720150>,  <21.175383, 17.394400, 16.534529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.034206, 17.337708, 16.720150>,  <20.798912, 17.243221, 17.029518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034206, 17.337708, 16.720150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505372, -0.854013, 0.123536,
		-0.631331, -0.463534, -0.621737,
		0.588235, 0.236216, -0.773422,
		21.210676, 17.408573, 16.488123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.750584, 16.616055, 16.658836>,  <20.798912, 17.243221, 17.029518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.750584, 16.616055, 16.658836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.084091, 16.820805, 16.576073>,  <21.284197, 16.943655, 16.526415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.084091, 16.820805, 16.576073>,  <20.750584, 16.616055, 16.658836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.084091, 16.820805, 16.576073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549054, -0.808107, 0.213316,
		-0.058014, -0.291460, -0.954822,
		0.833771, 0.511874, -0.206909,
		21.334223, 16.974367, 16.514000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.194967, 16.250340, 16.192049>,  <20.750584, 16.616055, 16.658836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.194967, 16.250340, 16.192049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.482431, 16.482687, 16.344952>,  <21.654911, 16.622095, 16.436693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.482431, 16.482687, 16.344952>,  <21.194967, 16.250340, 16.192049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.482431, 16.482687, 16.344952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583540, -0.802753, 0.122757,
		0.378163, 0.134841, -0.915866,
		0.718661, 0.580867, 0.382256,
		21.698030, 16.656946, 16.459629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.813200, 16.007666, 15.885830>,  <21.194967, 16.250340, 16.192049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.813200, 16.007666, 15.885830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.937248, 16.208664, 16.208649>,  <22.011677, 16.329262, 16.402340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.937248, 16.208664, 16.208649>,  <21.813200, 16.007666, 15.885830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.937248, 16.208664, 16.208649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635462, -0.740965, 0.217163,
		0.707116, 0.445500, -0.549106,
		0.310122, 0.502495, 0.807046,
		22.030285, 16.359413, 16.450762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.600351, 16.219740, 15.894222>,  <21.813200, 16.007666, 15.885830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.600351, 16.219740, 15.894222> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.415352, 16.133163, 16.238140>,  <22.304352, 16.081217, 16.444490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.415352, 16.133163, 16.238140>,  <22.600351, 16.219740, 15.894222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.415352, 16.133163, 16.238140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680481, -0.708309, 0.187733,
		0.568368, 0.671901, 0.474876,
		-0.462497, -0.216443, 0.859796,
		22.276602, 16.068230, 16.496078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.094645, 16.408226, 16.450310>,  <22.600351, 16.219740, 15.894222>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.094645, 16.408226, 16.450310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.827934, 16.116301, 16.510687>,  <22.667908, 15.941146, 16.546913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.827934, 16.116301, 16.510687>,  <23.094645, 16.408226, 16.450310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.827934, 16.116301, 16.510687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744638, -0.660674, 0.094989,
		0.030401, 0.175735, 0.983968,
		-0.666775, -0.729812, 0.150944,
		22.627901, 15.897357, 16.555969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.777231, 16.160347, 16.300779>,  <23.094645, 16.408226, 16.450310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.777231, 16.160347, 16.300779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.682602, 15.783894, 16.204195>,  <23.625824, 15.558022, 16.146244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.682602, 15.783894, 16.204195>,  <23.777231, 16.160347, 16.300779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.682602, 15.783894, 16.204195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119029, -0.274715, 0.954130,
		-0.964295, 0.196982, 0.177013,
		-0.236574, -0.941132, -0.241460,
		23.611629, 15.501554, 16.131758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.551126, 16.848457, 15.982747>,  <23.777231, 16.160347, 16.300779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.551126, 16.848457, 15.982747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.916348, 16.909813, 15.831590>,  <24.135481, 16.946627, 15.740895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.916348, 16.909813, 15.831590>,  <23.551126, 16.848457, 15.982747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.916348, 16.909813, 15.831590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222377, 0.963963, -0.146026,
		0.341878, 0.217364, 0.914261,
		0.913054, 0.153387, -0.377895,
		24.190264, 16.955830, 15.718222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.045147, 17.213686, 16.542631>,  <23.551126, 16.848457, 15.982747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.045147, 17.213686, 16.542631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.160774, 17.257053, 16.162172>,  <24.230150, 17.283073, 15.933896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.160774, 17.257053, 16.162172>,  <24.045147, 17.213686, 16.542631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.160774, 17.257053, 16.162172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296338, 0.954898, 0.018787,
		0.910288, 0.276431, 0.308160,
		0.289068, 0.108421, -0.951149,
		24.247494, 17.289579, 15.876827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.449816, 17.854645, 16.515757>,  <24.045147, 17.213686, 16.542631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.449816, 17.854645, 16.515757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.315083, 17.793310, 16.144159>,  <24.234243, 17.756510, 15.921201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.315083, 17.793310, 16.144159>,  <24.449816, 17.854645, 16.515757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.315083, 17.793310, 16.144159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338988, 0.940236, -0.032284,
		0.878425, 0.304044, -0.368682,
		-0.336833, -0.153338, -0.928995,
		24.214033, 17.747309, 15.865460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.463287, 18.502655, 16.343880>,  <24.449816, 17.854645, 16.515757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.463287, 18.502655, 16.343880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.227659, 18.345341, 16.061512>,  <24.086283, 18.250952, 15.892092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.227659, 18.345341, 16.061512>,  <24.463287, 18.502655, 16.343880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.227659, 18.345341, 16.061512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446085, 0.886672, -0.121742,
		0.673797, 0.243185, -0.697752,
		-0.589072, -0.393286, -0.705918,
		24.050938, 18.227354, 15.849736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.594238, 18.923321, 15.811782>,  <24.463287, 18.502655, 16.343880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.594238, 18.923321, 15.811782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.247808, 18.732706, 15.751348>,  <24.039949, 18.618338, 15.715088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.247808, 18.732706, 15.751348>,  <24.594238, 18.923321, 15.811782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.247808, 18.732706, 15.751348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429101, 0.863692, -0.264402,
		0.256487, -0.164162, -0.952505,
		-0.866076, -0.476536, -0.151084,
		23.987986, 18.589745, 15.706023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.383755, 19.256353, 15.283889>,  <24.594238, 18.923321, 15.811782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.383755, 19.256353, 15.283889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.056292, 19.075621, 15.425678>,  <23.859814, 18.967180, 15.510752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.056292, 19.075621, 15.425678>,  <24.383755, 19.256353, 15.283889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.056292, 19.075621, 15.425678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517733, 0.847766, -0.115092,
		-0.248508, -0.277743, -0.927956,
		-0.818656, -0.451832, 0.354473,
		23.810696, 18.940071, 15.532021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.839859, 19.383810, 14.806757>,  <24.383755, 19.256353, 15.283889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.839859, 19.383810, 14.806757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.657501, 19.291302, 15.150541>,  <23.548086, 19.235798, 15.356812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.657501, 19.291302, 15.150541>,  <23.839859, 19.383810, 14.806757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.657501, 19.291302, 15.150541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458336, 0.888770, -0.003966,
		-0.762946, -0.395730, -0.511186,
		-0.455896, -0.231268, 0.859461,
		23.520733, 19.221922, 15.408380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.095421, 19.462208, 14.738566>,  <23.839859, 19.383810, 14.806757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.095421, 19.462208, 14.738566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.181591, 19.500446, 15.127298>,  <23.233294, 19.523390, 15.360538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.181591, 19.500446, 15.127298>,  <23.095421, 19.462208, 14.738566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.181591, 19.500446, 15.127298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604728, 0.794468, 0.055902,
		-0.766744, -0.599735, 0.228960,
		0.215427, 0.095596, 0.971829,
		23.246220, 19.529125, 15.418847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.494797, 19.679976, 15.012608>,  <23.095421, 19.462208, 14.738566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.494797, 19.679976, 15.012608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.763060, 19.758965, 15.298608>,  <22.924017, 19.806358, 15.470208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.763060, 19.758965, 15.298608>,  <22.494797, 19.679976, 15.012608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.763060, 19.758965, 15.298608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511026, 0.821675, 0.252395,
		-0.537656, -0.534654, 0.651974,
		0.670655, 0.197474, 0.715001,
		22.964256, 19.818207, 15.513108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.099630, 19.928049, 15.717259>,  <22.494797, 19.679976, 15.012608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.099630, 19.928049, 15.717259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.468082, 20.083735, 15.719482>,  <22.689154, 20.177145, 15.720817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.468082, 20.083735, 15.719482>,  <22.099630, 19.928049, 15.717259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.468082, 20.083735, 15.719482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382701, 0.902925, 0.195619,
		0.071119, -0.182318, 0.980664,
		0.921131, 0.389213, 0.005558,
		22.744421, 20.200499, 15.721149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.032301, 20.520985, 16.237064>,  <22.099630, 19.928049, 15.717259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.032301, 20.520985, 16.237064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.364878, 20.591248, 16.026218>,  <22.564425, 20.633406, 15.899711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.364878, 20.591248, 16.026218>,  <22.032301, 20.520985, 16.237064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.364878, 20.591248, 16.026218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253179, 0.964269, -0.078015,
		0.494577, 0.198319, 0.846205,
		0.831441, 0.175657, -0.527115,
		22.614309, 20.643946, 15.868084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.439989, 21.072393, 16.501530>,  <22.032301, 20.520985, 16.237064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.439989, 21.072393, 16.501530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.544010, 21.081987, 16.115412>,  <22.606422, 21.087744, 15.883740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.544010, 21.081987, 16.115412>,  <22.439989, 21.072393, 16.501530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.544010, 21.081987, 16.115412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191527, 0.981110, -0.027222,
		0.946410, 0.191960, 0.259732,
		0.260051, 0.023983, -0.965297,
		22.622025, 21.089182, 15.825823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.588728, 21.754608, 16.473980>,  <22.439989, 21.072393, 16.501530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.588728, 21.754608, 16.473980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.586914, 21.633261, 16.092834>,  <22.585825, 21.560453, 15.864147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.586914, 21.633261, 16.092834>,  <22.588728, 21.754608, 16.473980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.586914, 21.633261, 16.092834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257037, 0.921211, -0.292067,
		0.966391, 0.243596, -0.082155,
		-0.004535, -0.303367, -0.952863,
		22.585554, 21.542250, 15.806975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.955185, 22.252775, 16.082956>,  <22.588728, 21.754608, 16.473980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.955185, 22.252775, 16.082956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.722107, 22.080635, 15.807199>,  <22.582260, 21.977350, 15.641745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.722107, 22.080635, 15.807199>,  <22.955185, 22.252775, 16.082956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.722107, 22.080635, 15.807199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197210, 0.897808, -0.393763,
		0.788399, -0.093489, -0.608019,
		-0.582697, -0.430350, -0.689394,
		22.547298, 21.951530, 15.600381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.040464, 22.568466, 15.449044>,  <22.955185, 22.252775, 16.082956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.040464, 22.568466, 15.449044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.668402, 22.423138, 15.427839>,  <22.445164, 22.335941, 15.415116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.668402, 22.423138, 15.427839>,  <23.040464, 22.568466, 15.449044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.668402, 22.423138, 15.427839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318411, 0.870078, -0.376269,
		0.182831, -0.333109, -0.924992,
		-0.930155, -0.363321, -0.053012,
		22.389355, 22.314140, 15.411936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.864849, 22.696560, 14.772256>,  <23.040464, 22.568466, 15.449044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.864849, 22.696560, 14.772256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.510197, 22.653837, 14.952245>,  <22.297405, 22.628204, 15.060238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.510197, 22.653837, 14.952245>,  <22.864849, 22.696560, 14.772256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.510197, 22.653837, 14.952245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304068, 0.867728, -0.393180,
		-0.348460, -0.485429, -0.801832,
		-0.886633, -0.106804, 0.449972,
		22.244207, 22.621796, 15.087236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.343420, 22.840857, 14.271107>,  <22.864849, 22.696560, 14.772256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.343420, 22.840857, 14.271107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.138912, 22.855009, 14.614584>,  <22.016209, 22.863501, 14.820670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.138912, 22.855009, 14.614584>,  <22.343420, 22.840857, 14.271107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.138912, 22.855009, 14.614584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536600, 0.767323, -0.351108,
		-0.671317, -0.640284, -0.373322,
		-0.511267, 0.035380, 0.858693,
		21.985533, 22.865623, 14.872191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.556187, 22.938347, 14.045156>,  <22.343420, 22.840857, 14.271107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.556187, 22.938347, 14.045156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.599648, 23.067133, 14.421355>,  <21.625725, 23.144405, 14.647075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.599648, 23.067133, 14.421355>,  <21.556187, 22.938347, 14.045156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.599648, 23.067133, 14.421355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493733, 0.838632, -0.230054,
		-0.862799, -0.439357, 0.250086,
		0.108654, 0.321966, 0.940496,
		21.632244, 23.163723, 14.703504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.996790, 18.882622, 22.444443> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827072, 18.520428, 22.440975>,  <16.725243, 18.303112, 22.438894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.827072, 18.520428, 22.440975>,  <16.996790, 18.882622, 22.444443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827072, 18.520428, 22.440975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431928, -0.193963, -0.880804,
		0.795873, -0.377463, 0.473401,
		-0.424294, -0.905483, -0.008667,
		16.699783, 18.248783, 22.438375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.495939, 18.359344, 22.192190>,  <16.996790, 18.882622, 22.444443>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.495939, 18.359344, 22.192190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.127607, 18.213137, 22.137829>,  <16.906609, 18.125412, 22.105213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.127607, 18.213137, 22.137829>,  <17.495939, 18.359344, 22.192190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.127607, 18.213137, 22.137829> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230174, -0.228121, -0.946034,
		0.314794, -0.902416, 0.294194,
		-0.920829, -0.365521, -0.135901,
		16.851358, 18.103481, 22.097059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647902, 17.737398, 21.829271>,  <17.495939, 18.359344, 22.192190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.647902, 17.737398, 21.829271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.257795, 17.787302, 21.756290>,  <17.023731, 17.817244, 21.712502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.257795, 17.787302, 21.756290>,  <17.647902, 17.737398, 21.829271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.257795, 17.787302, 21.756290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151022, -0.226600, -0.962208,
		-0.161385, -0.965965, 0.202154,
		-0.975268, 0.124757, -0.182452,
		16.965216, 17.824730, 21.701555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376011, 17.180092, 21.466623>,  <17.647902, 17.737398, 21.829271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376011, 17.180092, 21.466623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.110258, 17.468533, 21.388031>,  <16.950806, 17.641598, 21.340876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.110258, 17.468533, 21.388031>,  <17.376011, 17.180092, 21.466623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.110258, 17.468533, 21.388031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001847, -0.261303, -0.965255,
		-0.747390, -0.641662, 0.172273,
		-0.664383, 0.721104, -0.196481,
		16.910944, 17.684864, 21.329086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.959333, 16.903425, 21.047293>,  <17.376011, 17.180092, 21.466623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.959333, 16.903425, 21.047293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910463, 17.292635, 20.969011>,  <16.881142, 17.526161, 20.922043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910463, 17.292635, 20.969011>,  <16.959333, 16.903425, 21.047293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.910463, 17.292635, 20.969011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003274, -0.196782, -0.980442,
		-0.992503, -0.120426, 0.020857,
		-0.122175, 0.973023, -0.195701,
		16.873812, 17.584541, 20.910301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.383825, 16.961096, 20.553816>,  <16.959333, 16.903425, 21.047293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.383825, 16.961096, 20.553816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584633, 17.304981, 20.516146>,  <16.705118, 17.511312, 20.493544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584633, 17.304981, 20.516146>,  <16.383825, 16.961096, 20.553816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.584633, 17.304981, 20.516146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146417, -0.191806, -0.970450,
		-0.852371, 0.473397, -0.222167,
		0.502021, 0.859713, -0.094177,
		16.735239, 17.562895, 20.487892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.111078, 17.232313, 19.946861>,  <16.383825, 16.961096, 20.553816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.111078, 17.232313, 19.946861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449749, 17.441282, 19.987276>,  <16.652952, 17.566664, 20.011524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449749, 17.441282, 19.987276>,  <16.111078, 17.232313, 19.946861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449749, 17.441282, 19.987276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008561, 0.176483, -0.984266,
		-0.532035, 0.834223, 0.144952,
		0.846679, 0.522423, 0.101037,
		16.703753, 17.598009, 20.017588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.041002, 17.767809, 19.456268>,  <16.111078, 17.232313, 19.946861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.041002, 17.767809, 19.456268> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433672, 17.800125, 19.525307>,  <16.669273, 17.819515, 19.566730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433672, 17.800125, 19.525307>,  <16.041002, 17.767809, 19.456268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.433672, 17.800125, 19.525307> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167631, 0.064715, -0.983723,
		-0.090647, 0.994628, 0.049986,
		0.981673, 0.080792, 0.172597,
		16.728174, 17.824364, 19.577085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.292189, 18.420084, 19.038385>,  <16.041002, 17.767809, 19.456268>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.292189, 18.420084, 19.038385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.549324, 18.122665, 19.112032>,  <16.703606, 17.944214, 19.156219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.549324, 18.122665, 19.112032>,  <16.292189, 18.420084, 19.038385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549324, 18.122665, 19.112032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288002, 0.011884, -0.957556,
		0.709799, 0.668579, 0.221782,
		0.642838, -0.743546, 0.184117,
		16.742176, 17.899601, 19.167267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.792892, 18.469702, 18.431084>,  <16.292189, 18.420084, 19.038385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.792892, 18.469702, 18.431084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951782, 18.143438, 18.599327>,  <17.047115, 17.947680, 18.700274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951782, 18.143438, 18.599327>,  <16.792892, 18.469702, 18.431084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.951782, 18.143438, 18.599327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534764, -0.166745, -0.828386,
		0.745816, 0.553982, 0.369950,
		0.397224, -0.815659, 0.420611,
		17.070950, 17.898741, 18.725510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.511505, 18.513460, 18.454041>,  <16.792892, 18.469702, 18.431084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.511505, 18.513460, 18.454041> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.382790, 18.134768, 18.449074>,  <17.305559, 17.907553, 18.446095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.382790, 18.134768, 18.449074>,  <17.511505, 18.513460, 18.454041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.382790, 18.134768, 18.449074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413164, -0.128611, -0.901529,
		0.851908, -0.295233, 0.432540,
		-0.321791, -0.946729, -0.012415,
		17.286253, 17.850748, 18.445349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.099890, 18.072130, 18.122736>,  <17.511505, 18.513460, 18.454041>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.099890, 18.072130, 18.122736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.763742, 17.857857, 18.089697>,  <17.562054, 17.729292, 18.069874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.763742, 17.857857, 18.089697>,  <18.099890, 18.072130, 18.122736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.763742, 17.857857, 18.089697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196458, -0.159018, -0.967532,
		0.505157, -0.829311, 0.238873,
		-0.840370, -0.535684, -0.082595,
		17.511631, 17.697151, 18.064919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.547100, 17.425808, 18.254620>,  <18.099890, 18.072130, 18.122736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.547100, 17.425808, 18.254620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260031, 17.377283, 18.528912>,  <18.087790, 17.348167, 18.693487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260031, 17.377283, 18.528912>,  <18.547100, 17.425808, 18.254620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.260031, 17.377283, 18.528912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653067, -0.224616, -0.723223,
		0.241762, -0.966867, 0.081976,
		-0.717673, -0.121312, 0.685732,
		18.044729, 17.340889, 18.734631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.230556, 17.344290, 17.851532>,  <18.547100, 17.425808, 18.254620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.230556, 17.344290, 17.851532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.323378, 17.576048, 18.164057>,  <19.379070, 17.715103, 18.351572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.323378, 17.576048, 18.164057>,  <19.230556, 17.344290, 17.851532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.323378, 17.576048, 18.164057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970405, 0.193084, 0.145029,
		-0.066829, -0.791844, 0.607056,
		0.232053, 0.579398, 0.781313,
		19.392994, 17.749866, 18.398451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.667891, 17.201723, 18.482826>,  <19.230556, 17.344290, 17.851532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.667891, 17.201723, 18.482826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766642, 16.815252, 18.512642>,  <19.825891, 16.583370, 18.530531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766642, 16.815252, 18.512642>,  <19.667891, 17.201723, 18.482826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.766642, 16.815252, 18.512642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327556, -0.010811, 0.944770,
		-0.912008, -0.257658, -0.319146,
		0.246878, -0.966176, 0.074538,
		19.840704, 16.525400, 18.535004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.068907, 16.820332, 18.603079>,  <19.667891, 17.201723, 18.482826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.068907, 16.820332, 18.603079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345005, 16.570999, 18.750057>,  <19.510664, 16.421400, 18.838245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.345005, 16.570999, 18.750057>,  <19.068907, 16.820332, 18.603079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.345005, 16.570999, 18.750057> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475747, -0.008339, 0.879543,
		-0.545182, -0.781914, -0.302304,
		0.690247, -0.623331, 0.367447,
		19.552080, 16.384001, 18.860291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.666363, 16.414042, 19.103216>,  <19.068907, 16.820332, 18.603079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.666363, 16.414042, 19.103216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052876, 16.409918, 19.206125>,  <19.284784, 16.407444, 19.267870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052876, 16.409918, 19.206125>,  <18.666363, 16.414042, 19.103216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.052876, 16.409918, 19.206125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257444, -0.022434, 0.966033,
		-0.004167, -0.999695, -0.024326,
		0.966284, -0.010288, 0.257272,
		19.342760, 16.406826, 19.283306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.665325, 15.994587, 19.705261>,  <18.666363, 16.414042, 19.103216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.665325, 15.994587, 19.705261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.005297, 16.202997, 19.736637>,  <19.209280, 16.328043, 19.755463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.005297, 16.202997, 19.736637>,  <18.665325, 15.994587, 19.705261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.005297, 16.202997, 19.736637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143465, 0.085597, 0.985947,
		0.506990, -0.849238, 0.147501,
		0.849929, 0.521026, 0.078439,
		19.260275, 16.359304, 19.760168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121023, 15.631413, 20.186855>,  <18.665325, 15.994587, 19.705261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121023, 15.631413, 20.186855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259930, 16.006424, 20.178408>,  <19.343273, 16.231432, 20.173340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259930, 16.006424, 20.178408>,  <19.121023, 15.631413, 20.186855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.259930, 16.006424, 20.178408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105439, 0.061413, 0.992528,
		0.931821, -0.342442, 0.120179,
		0.347264, 0.937530, -0.021119,
		19.364109, 16.287683, 20.172071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.645029, 15.745548, 20.721264>,  <19.121023, 15.631413, 20.186855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.645029, 15.745548, 20.721264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.529825, 16.117788, 20.630901>,  <19.460703, 16.341133, 20.576685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.529825, 16.117788, 20.630901>,  <19.645029, 15.745548, 20.721264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.529825, 16.117788, 20.630901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123994, 0.197676, 0.972394,
		0.949567, 0.308068, 0.058456,
		-0.288008, 0.930601, -0.225905,
		19.443422, 16.396969, 20.563129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.004425, 16.089527, 21.156471>,  <19.645029, 15.745548, 20.721264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.004425, 16.089527, 21.156471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.711178, 16.345753, 21.065069>,  <19.535231, 16.499489, 21.010227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.711178, 16.345753, 21.065069>,  <20.004425, 16.089527, 21.156471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.711178, 16.345753, 21.065069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017939, 0.317659, 0.948035,
		0.679866, 0.699120, -0.221390,
		-0.733117, 0.640566, -0.228507,
		19.491243, 16.537922, 20.996517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.162361, 16.814644, 21.514826>,  <20.004425, 16.089527, 21.156471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.162361, 16.814644, 21.514826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.771782, 16.817070, 21.428556>,  <19.537436, 16.818525, 21.376795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.771782, 16.817070, 21.428556>,  <20.162361, 16.814644, 21.514826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.771782, 16.817070, 21.428556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194263, 0.410215, 0.891058,
		0.093877, 0.911968, -0.399375,
		-0.976447, 0.006066, -0.215672,
		19.478848, 16.818890, 21.363855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.882545, 17.455915, 21.759680>,  <20.162361, 16.814644, 21.514826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.882545, 17.455915, 21.759680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.571646, 17.211155, 21.701090>,  <19.385105, 17.064299, 21.665936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.571646, 17.211155, 21.701090>,  <19.882545, 17.455915, 21.759680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571646, 17.211155, 21.701090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427687, 0.343068, 0.836295,
		-0.461480, 0.712657, -0.528353,
		-0.777252, -0.611903, -0.146475,
		19.338470, 17.027584, 21.657146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.444889, 17.816990, 22.090904>,  <19.882545, 17.455915, 21.759680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.444889, 17.816990, 22.090904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266041, 17.466928, 22.016941>,  <19.158731, 17.256891, 21.972563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.266041, 17.466928, 22.016941>,  <19.444889, 17.816990, 22.090904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.266041, 17.466928, 22.016941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527276, 0.090890, 0.844819,
		-0.722538, 0.475236, -0.502085,
		-0.447123, -0.875151, -0.184909,
		19.131905, 17.204384, 21.961468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.657125, 17.883415, 22.209202>,  <19.444889, 17.816990, 22.090904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.657125, 17.883415, 22.209202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781706, 17.506241, 22.256315>,  <18.856453, 17.279936, 22.284582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781706, 17.506241, 22.256315>,  <18.657125, 17.883415, 22.209202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.781706, 17.506241, 22.256315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395213, -0.015814, 0.918453,
		-0.864179, -0.332600, -0.377586,
		0.311449, -0.942935, 0.117781,
		18.875141, 17.223360, 22.291649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.116491, 17.523083, 22.509295>,  <18.657125, 17.883415, 22.209202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.116491, 17.523083, 22.509295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.443483, 17.306282, 22.587233>,  <18.639679, 17.176203, 22.633995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.443483, 17.306282, 22.587233>,  <18.116491, 17.523083, 22.509295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.443483, 17.306282, 22.587233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281619, -0.081045, 0.956098,
		-0.502414, -0.836461, -0.218890,
		0.817478, -0.542000, 0.194845,
		18.688726, 17.143682, 22.645687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.848774, 17.102701, 22.994169>,  <18.116491, 17.523083, 22.509295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.848774, 17.102701, 22.994169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240734, 17.048342, 23.052578>,  <18.475910, 17.015726, 23.087624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240734, 17.048342, 23.052578>,  <17.848774, 17.102701, 22.994169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.240734, 17.048342, 23.052578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146129, 0.009251, 0.989222,
		-0.135784, -0.990680, -0.010793,
		0.979903, -0.135898, 0.146024,
		18.534704, 17.007572, 23.096386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.923971, 16.459436, 23.355982>,  <17.848774, 17.102701, 22.994169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.923971, 16.459436, 23.355982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.239929, 16.693308, 23.429974>,  <18.429504, 16.833630, 23.474369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.239929, 16.693308, 23.429974>,  <17.923971, 16.459436, 23.355982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.239929, 16.693308, 23.429974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106243, -0.166606, 0.980283,
		0.603968, -0.793974, -0.069484,
		0.789895, 0.584678, 0.184979,
		18.476898, 16.868711, 23.485468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.759863, 15.734847, 23.498392>,  <17.923971, 16.459436, 23.355982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.759863, 15.734847, 23.498392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.438936, 15.499518, 23.538731>,  <17.246380, 15.358321, 23.562935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.438936, 15.499518, 23.538731>,  <17.759863, 15.734847, 23.498392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.438936, 15.499518, 23.538731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153922, -0.367156, -0.917335,
		0.576715, -0.720468, 0.385131,
		-0.802314, -0.588321, 0.100848,
		17.198242, 15.323022, 23.568985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.019279, 15.102986, 23.335970>,  <17.759863, 15.734847, 23.498392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.019279, 15.102986, 23.335970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.625420, 15.083467, 23.268940>,  <17.389103, 15.071756, 23.228722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.625420, 15.083467, 23.268940>,  <18.019279, 15.102986, 23.335970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.625420, 15.083467, 23.268940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174281, -0.326779, -0.928893,
		-0.009433, -0.943840, 0.330268,
		-0.984650, -0.048798, -0.167576,
		17.330025, 15.068829, 23.218668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.993885, 14.569295, 22.798742>,  <18.019279, 15.102986, 23.335970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.993885, 14.569295, 22.798742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620401, 14.711786, 22.784376>,  <17.396311, 14.797281, 22.775757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620401, 14.711786, 22.784376>,  <17.993885, 14.569295, 22.798742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620401, 14.711786, 22.784376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047767, -0.223362, -0.973564,
		-0.354834, -0.907309, 0.225571,
		-0.933708, 0.356229, -0.035917,
		17.340288, 14.818655, 22.773602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635620, 14.067491, 22.498114>,  <17.993885, 14.569295, 22.798742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635620, 14.067491, 22.498114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393631, 14.384144, 22.463875>,  <17.248438, 14.574136, 22.443331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393631, 14.384144, 22.463875>,  <17.635620, 14.067491, 22.498114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.393631, 14.384144, 22.463875> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334423, -0.350174, -0.874951,
		-0.722613, -0.500695, 0.476586,
		-0.604972, 0.791633, -0.085597,
		17.212139, 14.621634, 22.438196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.128363, 13.843157, 21.978027>,  <17.635620, 14.067491, 22.498114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.128363, 13.843157, 21.978027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.109686, 14.242713, 21.980425>,  <17.098480, 14.482447, 21.981863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.109686, 14.242713, 21.980425>,  <17.128363, 13.843157, 21.978027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.109686, 14.242713, 21.980425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168149, -0.001944, -0.985760,
		-0.984655, -0.047035, 0.168054,
		-0.046692, 0.998891, 0.005995,
		17.095678, 14.542380, 21.982224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497700, 13.971561, 21.604023>,  <17.128363, 13.843157, 21.978027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497700, 13.971561, 21.604023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.735100, 14.293096, 21.587999>,  <16.877541, 14.486016, 21.578384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.735100, 14.293096, 21.587999>,  <16.497700, 13.971561, 21.604023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.735100, 14.293096, 21.587999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305267, 0.178775, -0.935335,
		-0.744694, 0.567351, 0.351487,
		0.593501, 0.803835, -0.040061,
		16.913151, 14.534246, 21.575981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.141291, 14.475103, 21.427256>,  <16.497700, 13.971561, 21.604023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.141291, 14.475103, 21.427256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494539, 14.607825, 21.294588>,  <16.706488, 14.687458, 21.214989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494539, 14.607825, 21.294588>,  <16.141291, 14.475103, 21.427256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494539, 14.607825, 21.294588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403705, 0.177319, -0.897541,
		-0.238997, 0.926533, 0.290545,
		0.883121, 0.331805, -0.331667,
		16.759476, 14.707367, 21.195087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.994874, 15.000688, 20.942617>,  <16.141291, 14.475103, 21.427256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.994874, 15.000688, 20.942617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369078, 14.898099, 20.845419>,  <16.593599, 14.836546, 20.787100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369078, 14.898099, 20.845419>,  <15.994874, 15.000688, 20.942617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.369078, 14.898099, 20.845419> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207781, 0.156873, -0.965514,
		0.285747, 0.953736, 0.093466,
		0.935508, -0.256472, -0.242994,
		16.649731, 14.821157, 20.772520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218882, 15.500326, 20.544601>,  <15.994874, 15.000688, 20.942617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218882, 15.500326, 20.544601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441328, 15.189619, 20.426373>,  <16.574797, 15.003195, 20.355434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.441328, 15.189619, 20.426373>,  <16.218882, 15.500326, 20.544601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.441328, 15.189619, 20.426373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241218, 0.189476, -0.951795,
		0.795328, 0.600608, -0.081999,
		0.556118, -0.776769, -0.295573,
		16.608164, 14.956589, 20.337700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605179, 15.708838, 20.015623>,  <16.218882, 15.500326, 20.544601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605179, 15.708838, 20.015623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616030, 15.316469, 19.938627>,  <16.622541, 15.081047, 19.892429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616030, 15.316469, 19.938627>,  <16.605179, 15.708838, 20.015623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.616030, 15.316469, 19.938627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050403, 0.190975, -0.980300,
		0.998360, 0.036297, -0.044260,
		0.027130, -0.980923, -0.192492,
		16.624168, 15.022192, 19.880880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885307, 15.697595, 19.401501>,  <16.605179, 15.708838, 20.015623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.885307, 15.697595, 19.401501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.765068, 15.317853, 19.438087>,  <16.692924, 15.090008, 19.460039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.765068, 15.317853, 19.438087>,  <16.885307, 15.697595, 19.401501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.765068, 15.317853, 19.438087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029036, -0.086749, -0.995807,
		0.953309, -0.301993, -0.001489,
		-0.300598, -0.949355, 0.091467,
		16.674889, 15.033047, 19.465528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352064, 15.239155, 19.000801>,  <16.885307, 15.697595, 19.401501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.352064, 15.239155, 19.000801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.974030, 15.120173, 19.054966>,  <16.747210, 15.048784, 19.087465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.974030, 15.120173, 19.054966>,  <17.352064, 15.239155, 19.000801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.974030, 15.120173, 19.054966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154367, 0.041072, -0.987159,
		0.288074, -0.953852, -0.084734,
		-0.945084, -0.297455, 0.135411,
		16.690504, 15.030937, 19.095589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.084878, 15.796021, 28.399332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.433403, 15.738900, 28.587128>,  <14.642518, 15.704628, 28.699806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.433403, 15.738900, 28.587128>,  <14.084878, 15.796021, 28.399332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.433403, 15.738900, 28.587128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483367, 0.084672, -0.871313,
		0.084672, 0.986123, 0.142801,
		0.871313, -0.142801, 0.469490,
		14.694798, 15.696060, 28.727974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.509245, 16.279549, 28.017426>,  <14.084878, 15.796021, 28.399332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.509245, 16.279549, 28.017426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.767465, 16.037661, 28.204006>,  <14.922397, 15.892528, 28.315954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.767465, 16.037661, 28.204006>,  <14.509245, 16.279549, 28.017426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.767465, 16.037661, 28.204006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586213, 0.000875, -0.810156,
		0.489510, 0.796438, 0.355060,
		0.645550, -0.604720, 0.466454,
		14.961129, 15.856244, 28.343943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.151145, 16.556929, 27.943354>,  <14.509245, 16.279549, 28.017426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.151145, 16.556929, 27.943354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.210404, 16.166800, 28.008837>,  <15.245960, 15.932722, 28.048126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.210404, 16.166800, 28.008837>,  <15.151145, 16.556929, 27.943354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.210404, 16.166800, 28.008837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702194, -0.012827, -0.711870,
		0.696402, 0.220417, 0.682965,
		0.148148, -0.975322, 0.163708,
		15.254848, 15.874203, 28.057949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.896133, 16.427731, 28.016943>,  <15.151145, 16.556929, 27.943354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.896133, 16.427731, 28.016943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.738095, 16.083582, 27.888159>,  <15.643272, 15.877092, 27.810888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.738095, 16.083582, 27.888159>,  <15.896133, 16.427731, 28.016943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.738095, 16.083582, 27.888159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648506, -0.012991, -0.761099,
		0.650645, -0.509501, 0.563089,
		-0.395096, -0.860372, -0.321962,
		15.619566, 15.825470, 27.791571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433020, 16.103027, 27.800426>,  <15.896133, 16.427731, 28.016943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433020, 16.103027, 27.800426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.139030, 15.890016, 27.632509>,  <15.962637, 15.762208, 27.531759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.139030, 15.890016, 27.632509>,  <16.433020, 16.103027, 27.800426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.139030, 15.890016, 27.632509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589451, -0.195711, -0.783738,
		0.335205, -0.823474, 0.457742,
		-0.734972, -0.532530, -0.419795,
		15.918539, 15.730257, 27.506571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.781532, 15.600483, 27.430164>,  <16.433020, 16.103027, 27.800426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.781532, 15.600483, 27.430164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.416527, 15.609910, 27.266817>,  <16.197523, 15.615566, 27.168808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.416527, 15.609910, 27.266817>,  <16.781532, 15.600483, 27.430164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.416527, 15.609910, 27.266817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403555, -0.111217, -0.908171,
		-0.066819, -0.993517, 0.091977,
		-0.912513, 0.023565, -0.408370,
		16.142773, 15.616980, 27.144306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.809046, 14.924521, 27.028633>,  <16.781532, 15.600483, 27.430164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.809046, 14.924521, 27.028633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.534477, 15.179570, 26.888765>,  <16.369736, 15.332600, 26.804844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.534477, 15.179570, 26.888765>,  <16.809046, 14.924521, 27.028633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.534477, 15.179570, 26.888765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356282, -0.124307, -0.926073,
		-0.633950, -0.760255, -0.141846,
		-0.686419, 0.637621, -0.349669,
		16.328552, 15.370856, 26.783865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.409462, 14.570677, 26.598476>,  <16.809046, 14.924521, 27.028633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.409462, 14.570677, 26.598476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.447424, 14.953734, 26.489731>,  <16.470201, 15.183569, 26.424484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.447424, 14.953734, 26.489731>,  <16.409462, 14.570677, 26.598476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.447424, 14.953734, 26.489731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108327, -0.281409, -0.953454,
		-0.989575, 0.061036, -0.130445,
		0.094904, 0.957645, -0.271864,
		16.475895, 15.241028, 26.408173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.020739, 14.605542, 25.978460>,  <16.409462, 14.570677, 26.598476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.020739, 14.605542, 25.978460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.227411, 14.947380, 25.957645>,  <16.351416, 15.152483, 25.945156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.227411, 14.947380, 25.957645>,  <16.020739, 14.605542, 25.978460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.227411, 14.947380, 25.957645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069046, -0.102169, -0.992368,
		-0.853388, 0.509146, -0.111795,
		0.516683, 0.854594, -0.052036,
		16.382416, 15.203758, 25.942036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.701101, 14.980030, 25.368519>,  <16.020739, 14.605542, 25.978460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.701101, 14.980030, 25.368519> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.050053, 15.160819, 25.443005>,  <16.259424, 15.269293, 25.487696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.050053, 15.160819, 25.443005>,  <15.701101, 14.980030, 25.368519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.050053, 15.160819, 25.443005> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229108, -0.041532, -0.972515,
		-0.431816, 0.891064, -0.139782,
		0.872378, 0.451973, 0.186216,
		16.311766, 15.296411, 25.498869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.693182, 15.629428, 24.888615>,  <15.701101, 14.980030, 25.368519>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.693182, 15.629428, 24.888615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.078249, 15.568128, 24.977865>,  <16.309290, 15.531347, 25.031416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.078249, 15.568128, 24.977865>,  <15.693182, 15.629428, 24.888615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.078249, 15.568128, 24.977865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208842, -0.103924, -0.972412,
		0.172211, 0.982708, -0.068039,
		0.962667, -0.153251, 0.223127,
		16.367048, 15.522152, 25.044804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.151821, 16.095255, 24.498283>,  <15.693182, 15.629428, 24.888615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.151821, 16.095255, 24.498283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.428181, 15.832657, 24.619390>,  <16.593996, 15.675097, 24.692055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.428181, 15.832657, 24.619390>,  <16.151821, 16.095255, 24.498283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428181, 15.832657, 24.619390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378502, -0.028337, -0.925167,
		0.615949, 0.753796, 0.228907,
		0.690901, -0.656497, 0.302767,
		16.635450, 15.635708, 24.710220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.729763, 16.348320, 24.233984>,  <16.151821, 16.095255, 24.498283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.729763, 16.348320, 24.233984> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.795727, 15.957696, 24.289312>,  <16.835306, 15.723321, 24.322510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.795727, 15.957696, 24.289312>,  <16.729763, 16.348320, 24.233984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.795727, 15.957696, 24.289312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351113, -0.072926, -0.933489,
		0.921696, 0.202509, 0.330858,
		0.164912, -0.976561, 0.138319,
		16.845200, 15.664727, 24.330809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.303476, 16.160597, 23.825209>,  <16.729763, 16.348320, 24.233984>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.303476, 16.160597, 23.825209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.163418, 15.792724, 23.896297>,  <17.079382, 15.572001, 23.938950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.163418, 15.792724, 23.896297>,  <17.303476, 16.160597, 23.825209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.163418, 15.792724, 23.896297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324604, -0.297111, -0.897974,
		0.878653, -0.256733, 0.402564,
		-0.350146, -0.919681, 0.177721,
		17.058374, 15.516819, 23.949614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.921402, 16.445391, 24.156624>,  <17.303476, 16.160597, 23.825209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.921402, 16.445391, 24.156624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.226887, 16.684427, 24.058947>,  <18.410177, 16.827848, 24.000341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.226887, 16.684427, 24.058947>,  <17.921402, 16.445391, 24.156624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.226887, 16.684427, 24.058947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042912, 0.424422, 0.904447,
		0.644130, -0.680258, 0.349780,
		0.763711, 0.597591, -0.244192,
		18.455999, 16.863705, 23.985689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.310564, 16.448124, 24.729372>,  <17.921402, 16.445391, 24.156624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.310564, 16.448124, 24.729372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.436285, 16.780216, 24.545229>,  <18.511717, 16.979471, 24.434742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.436285, 16.780216, 24.545229>,  <18.310564, 16.448124, 24.729372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.436285, 16.780216, 24.545229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040338, 0.472817, 0.880237,
		0.948466, -0.295230, 0.115118,
		0.314302, 0.830231, -0.460359,
		18.530577, 17.029285, 24.407122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.964802, 16.712776, 25.082682>,  <18.310564, 16.448124, 24.729372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.964802, 16.712776, 25.082682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.770885, 17.027052, 24.928968>,  <18.654535, 17.215616, 24.836740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.770885, 17.027052, 24.928968>,  <18.964802, 16.712776, 25.082682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.770885, 17.027052, 24.928968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128725, 0.498675, 0.857177,
		0.865106, 0.366083, -0.342890,
		-0.484789, 0.785688, -0.384283,
		18.625448, 17.262758, 24.813683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.326464, 17.342068, 25.359682>,  <18.964802, 16.712776, 25.082682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.326464, 17.342068, 25.359682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.965113, 17.461645, 25.236692>,  <18.748302, 17.533392, 25.162899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.965113, 17.461645, 25.236692>,  <19.326464, 17.342068, 25.359682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.965113, 17.461645, 25.236692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108374, 0.534569, 0.838147,
		0.414926, 0.790486, -0.450520,
		-0.903378, 0.298944, -0.307474,
		18.694099, 17.551329, 25.144449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.258425, 18.121513, 25.665701>,  <19.326464, 17.342068, 25.359682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.258425, 18.121513, 25.665701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.891361, 17.992878, 25.572336>,  <18.671124, 17.915697, 25.516317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.891361, 17.992878, 25.572336>,  <19.258425, 18.121513, 25.665701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.891361, 17.992878, 25.572336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328394, 0.283030, 0.901139,
		-0.223733, 0.903590, -0.365333,
		-0.917660, -0.321588, -0.233410,
		18.616062, 17.896402, 25.502314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.755892, 18.729656, 25.880249>,  <19.258425, 18.121513, 25.665701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.755892, 18.729656, 25.880249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.557434, 18.383799, 25.848673>,  <18.438360, 18.176283, 25.829727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.557434, 18.383799, 25.848673>,  <18.755892, 18.729656, 25.880249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.557434, 18.383799, 25.848673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521341, 0.223974, 0.823431,
		-0.694295, 0.449693, -0.561898,
		-0.496142, -0.864645, -0.078940,
		18.408592, 18.124405, 25.824991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.100397, 18.983202, 26.254021>,  <18.755892, 18.729656, 25.880249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.100397, 18.983202, 26.254021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.082378, 18.584120, 26.233797>,  <18.071568, 18.344671, 26.221663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.082378, 18.584120, 26.233797>,  <18.100397, 18.983202, 26.254021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.082378, 18.584120, 26.233797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689713, -0.005552, 0.724061,
		-0.722680, 0.067487, -0.687880,
		-0.045046, -0.997704, -0.050559,
		18.068865, 18.284809, 26.218630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.415493, 18.847206, 26.297569>,  <18.100397, 18.983202, 26.254021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.415493, 18.847206, 26.297569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.589855, 18.508429, 26.419338>,  <17.694473, 18.305162, 26.492399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.589855, 18.508429, 26.419338>,  <17.415493, 18.847206, 26.297569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.589855, 18.508429, 26.419338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662226, -0.072783, 0.745761,
		-0.609461, -0.526677, -0.592595,
		0.435906, -0.846944, 0.304421,
		17.720627, 18.254345, 26.510664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751822, 18.261444, 26.406754>,  <17.415493, 18.847206, 26.297569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.751822, 18.261444, 26.406754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.084795, 18.165421, 26.606525>,  <17.284578, 18.107807, 26.726389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.084795, 18.165421, 26.606525>,  <16.751822, 18.261444, 26.406754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084795, 18.165421, 26.606525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529335, -0.077923, 0.844827,
		-0.163890, -0.967626, -0.191937,
		0.832433, -0.240057, 0.499428,
		17.334524, 18.093403, 26.756353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.463871, 17.914404, 26.908175>,  <16.751822, 18.261444, 26.406754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.463871, 17.914404, 26.908175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.833845, 17.948500, 27.056353>,  <17.055830, 17.968958, 27.145260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.833845, 17.948500, 27.056353>,  <16.463871, 17.914404, 26.908175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.833845, 17.948500, 27.056353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359037, -0.124190, 0.925024,
		0.124858, -0.988590, -0.084262,
		0.924934, 0.085243, 0.370446,
		17.111326, 17.974072, 27.167486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.552143, 17.455976, 27.451612>,  <16.463871, 17.914404, 26.908175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.552143, 17.455976, 27.451612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.836884, 17.725189, 27.531914>,  <17.007727, 17.886717, 27.580095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.836884, 17.725189, 27.531914>,  <16.552143, 17.455976, 27.451612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.836884, 17.725189, 27.531914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236245, -0.039726, 0.970881,
		0.661407, -0.738547, 0.130721,
		0.711849, 0.673030, 0.200753,
		17.050438, 17.927097, 27.592140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844137, 17.236237, 28.103479>,  <16.552143, 17.455976, 27.451612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.844137, 17.236237, 28.103479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.944267, 17.622622, 28.077404>,  <17.004345, 17.854452, 28.061758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.944267, 17.622622, 28.077404>,  <16.844137, 17.236237, 28.103479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.944267, 17.622622, 28.077404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336450, 0.149931, 0.929689,
		0.907821, -0.210793, 0.362530,
		0.250326, 0.965965, -0.065189,
		17.019365, 17.912411, 28.057848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.051710, 17.425367, 28.708294>,  <16.844137, 17.236237, 28.103479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.051710, 17.425367, 28.708294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.952662, 17.768824, 28.528776>,  <16.893232, 17.974897, 28.421066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.952662, 17.768824, 28.528776>,  <17.051710, 17.425367, 28.708294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.952662, 17.768824, 28.528776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362687, 0.347387, 0.864743,
		0.898410, 0.376901, 0.225397,
		-0.247623, 0.858643, -0.448793,
		16.878374, 18.026417, 28.394138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.680891, 16.983652, 28.893579>,  <17.051710, 17.425367, 28.708294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.680891, 16.983652, 28.893579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.764338, 16.752808, 28.577751>,  <17.814405, 16.614302, 28.388254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.764338, 16.752808, 28.577751>,  <17.680891, 16.983652, 28.893579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.764338, 16.752808, 28.577751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901609, -0.426285, 0.073361,
		-0.378920, 0.696580, -0.609259,
		0.208616, -0.577111, -0.789571,
		17.826921, 16.579674, 28.340879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<9.610996, 16.011597, 27.100283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.978120, 15.926831, 27.234579>,  <10.198394, 15.875972, 27.315157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<9.978120, 15.926831, 27.234579>,  <9.610996, 16.011597, 27.100283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.978120, 15.926831, 27.234579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295453, -0.200323, -0.934119,
		0.265210, 0.956537, -0.121247,
		0.917808, -0.211914, 0.335739,
		10.253462, 15.863256, 27.335300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.109486, 16.443703, 26.786707>,  <9.610996, 16.011597, 27.100283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.109486, 16.443703, 26.786707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.331717, 16.131495, 26.901335>,  <10.465055, 15.944170, 26.970112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.331717, 16.131495, 26.901335>,  <10.109486, 16.443703, 26.786707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.331717, 16.131495, 26.901335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352335, -0.091177, -0.931422,
		0.753122, 0.618445, 0.224349,
		0.555578, -0.780520, 0.286568,
		10.498390, 15.897339, 26.987305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.769374, 16.614922, 26.619749>,  <10.109486, 16.443703, 26.786707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.769374, 16.614922, 26.619749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.765913, 16.217186, 26.662106>,  <10.763836, 15.978544, 26.687519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.765913, 16.217186, 26.662106>,  <10.769374, 16.614922, 26.619749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.765913, 16.217186, 26.662106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377764, -0.101299, -0.920344,
		0.925862, 0.032038, 0.376502,
		-0.008653, -0.994340, 0.105891,
		10.763317, 15.918884, 26.693872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.354683, 16.424231, 26.202854>,  <10.769374, 16.614922, 26.619749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.354683, 16.424231, 26.202854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.166800, 16.076864, 26.266388>,  <11.054070, 15.868444, 26.304508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.166800, 16.076864, 26.266388>,  <11.354683, 16.424231, 26.202854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.166800, 16.076864, 26.266388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289982, -0.321702, -0.901342,
		0.833836, -0.377310, 0.402932,
		-0.469709, -0.868415, 0.158834,
		11.025887, 15.816339, 26.314037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.854862, 15.891529, 26.116772>,  <11.354683, 16.424231, 26.202854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.854862, 15.891529, 26.116772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.488606, 15.734360, 26.082796>,  <11.268853, 15.640059, 26.062410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.488606, 15.734360, 26.082796>,  <11.854862, 15.891529, 26.116772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.488606, 15.734360, 26.082796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299723, -0.526469, -0.795611,
		0.267898, -0.753951, 0.599824,
		-0.915640, -0.392923, -0.084937,
		11.213914, 15.616483, 26.057316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.959880, 15.122877, 25.921614>,  <11.854862, 15.891529, 26.116772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.959880, 15.122877, 25.921614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.599369, 15.244167, 25.797838>,  <11.383062, 15.316941, 25.723572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.599369, 15.244167, 25.797838>,  <11.959880, 15.122877, 25.921614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.599369, 15.244167, 25.797838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171370, -0.406478, -0.897445,
		-0.397895, -0.861880, 0.314391,
		-0.901284, 0.303211, -0.309436,
		11.328986, 15.335135, 25.705006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.841090, 14.665683, 25.466454>,  <11.959880, 15.122877, 25.921614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.841090, 14.665683, 25.466454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.574389, 14.951088, 25.380346>,  <11.414369, 15.122332, 25.328682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.574389, 14.951088, 25.380346>,  <11.841090, 14.665683, 25.466454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.574389, 14.951088, 25.380346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161562, -0.143593, -0.976360,
		-0.727557, -0.685769, -0.019536,
		-0.666752, 0.713514, -0.215267,
		11.374364, 15.165142, 25.315765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.261479, 14.429043, 25.018801>,  <11.841090, 14.665683, 25.466454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.261479, 14.429043, 25.018801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.257440, 14.824458, 24.958546>,  <11.255015, 15.061707, 24.922394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.257440, 14.824458, 24.958546>,  <11.261479, 14.429043, 25.018801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.257440, 14.824458, 24.958546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059872, -0.150971, -0.986723,
		-0.998155, -0.000947, 0.060710,
		-0.010100, 0.988538, -0.150636,
		11.254410, 15.121019, 24.913355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.888751, 14.529999, 24.422853>,  <11.261479, 14.429043, 25.018801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.888751, 14.529999, 24.422853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.072901, 14.884044, 24.450073>,  <11.183391, 15.096471, 24.466404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.072901, 14.884044, 24.450073>,  <10.888751, 14.529999, 24.422853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.072901, 14.884044, 24.450073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107249, 0.131549, -0.985491,
		-0.881222, 0.446398, 0.155489,
		0.460375, 0.885113, 0.068048,
		11.211014, 15.149577, 24.470488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.462241, 15.002191, 24.014673>,  <10.888751, 14.529999, 24.422853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.462241, 15.002191, 24.014673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.838845, 15.130327, 24.056511>,  <11.064808, 15.207210, 24.081614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.838845, 15.130327, 24.056511>,  <10.462241, 15.002191, 24.014673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.838845, 15.130327, 24.056511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059904, 0.146334, -0.987420,
		-0.331617, 0.935931, 0.118586,
		0.941510, 0.320342, 0.104593,
		11.121298, 15.226430, 24.087889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.539379, 15.642962, 23.566528>,  <10.462241, 15.002191, 24.014673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.539379, 15.642962, 23.566528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.918655, 15.527790, 23.620239>,  <11.146221, 15.458687, 23.652466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<10.918655, 15.527790, 23.620239>,  <10.539379, 15.642962, 23.566528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.918655, 15.527790, 23.620239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194826, 0.193118, -0.961638,
		0.250953, 0.937977, 0.239209,
		0.948190, -0.287930, 0.134279,
		11.203113, 15.441411, 23.660522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.043733, 16.195238, 23.295958>,  <10.539379, 15.642962, 23.566528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.043733, 16.195238, 23.295958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.270571, 15.866593, 23.319118>,  <11.406673, 15.669406, 23.333015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.270571, 15.866593, 23.319118>,  <11.043733, 16.195238, 23.295958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.270571, 15.866593, 23.319118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071406, -0.020993, -0.997226,
		0.820551, 0.569658, 0.046763,
		0.567096, -0.821614, 0.057903,
		11.440700, 15.620110, 23.336489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.553368, 16.317623, 22.864410>,  <11.043733, 16.195238, 23.295958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.553368, 16.317623, 22.864410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.576141, 15.921014, 22.911119>,  <11.589806, 15.683047, 22.939144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.576141, 15.921014, 22.911119>,  <11.553368, 16.317623, 22.864410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.576141, 15.921014, 22.911119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234272, -0.100429, -0.966970,
		0.970503, 0.082411, 0.226568,
		0.056935, -0.991526, 0.116773,
		11.593222, 15.623556, 22.946152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.334646, 16.194391, 22.618473>,  <11.553368, 16.317623, 22.864410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.334646, 16.194391, 22.618473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.074509, 15.890704, 22.608326>,  <11.918427, 15.708492, 22.602238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.074509, 15.890704, 22.608326>,  <12.334646, 16.194391, 22.618473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.074509, 15.890704, 22.608326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119225, -0.069032, -0.990465,
		0.750226, -0.647166, 0.135412,
		-0.650343, -0.759217, -0.025369,
		11.879406, 15.662939, 22.600716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.896624, 16.490240, 22.378105>,  <12.334646, 16.194391, 22.618473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.896624, 16.490240, 22.378105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.963483, 16.879610, 22.315489>,  <13.003598, 17.113232, 22.277920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.963483, 16.879610, 22.315489>,  <12.896624, 16.490240, 22.378105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.963483, 16.879610, 22.315489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211444, 0.190472, 0.958651,
		0.962992, -0.127137, 0.237662,
		0.167148, 0.973425, -0.156541,
		13.013627, 17.171638, 22.268526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.429947, 16.667601, 22.802279>,  <12.896624, 16.490240, 22.378105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.429947, 16.667601, 22.802279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.225457, 16.999435, 22.712450>,  <13.102763, 17.198536, 22.658552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.225457, 16.999435, 22.712450>,  <13.429947, 16.667601, 22.802279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.225457, 16.999435, 22.712450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244365, 0.110206, 0.963400,
		0.823974, 0.547392, 0.146383,
		-0.511225, 0.829588, -0.224571,
		13.072089, 17.248312, 22.645079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.266322, 16.933037, 23.444479>,  <13.429947, 16.667601, 22.802279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.266322, 16.933037, 23.444479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.059278, 17.194464, 23.223598>,  <12.935053, 17.351320, 23.091070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.059278, 17.194464, 23.223598>,  <13.266322, 16.933037, 23.444479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.059278, 17.194464, 23.223598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454642, 0.336646, 0.824603,
		0.724832, 0.677877, 0.122889,
		-0.517609, 0.653569, -0.552204,
		12.903996, 17.390535, 23.057938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.413004, 17.627939, 23.651878>,  <13.266322, 16.933037, 23.444479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.413004, 17.627939, 23.651878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.049517, 17.642096, 23.485516>,  <12.831425, 17.650589, 23.385698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.049517, 17.642096, 23.485516>,  <13.413004, 17.627939, 23.651878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.049517, 17.642096, 23.485516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378346, 0.351032, 0.856523,
		0.176312, 0.935694, -0.305598,
		-0.908718, 0.035393, -0.415907,
		12.776901, 17.652714, 23.360743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.117916, 18.165754, 24.050947>,  <13.413004, 17.627939, 23.651878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.117916, 18.165754, 24.050947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.780400, 18.029438, 23.885113>,  <12.577891, 17.947649, 23.785612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.780400, 18.029438, 23.885113>,  <13.117916, 18.165754, 24.050947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780400, 18.029438, 23.885113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533181, 0.444314, 0.719933,
		-0.061139, 0.828521, -0.556610,
		-0.843789, -0.340790, -0.414587,
		12.527264, 17.927200, 23.760736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.527283, 18.761436, 24.127829>,  <13.117916, 18.165754, 24.050947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.527283, 18.761436, 24.127829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.369298, 18.394667, 24.105026>,  <12.274507, 18.174604, 24.091345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.369298, 18.394667, 24.105026>,  <12.527283, 18.761436, 24.127829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.369298, 18.394667, 24.105026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508955, 0.166727, 0.844492,
		-0.764833, 0.362557, -0.532526,
		-0.394963, -0.916927, -0.057007,
		12.250809, 18.119589, 24.087925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.909857, 18.934027, 24.379396>,  <12.527283, 18.761436, 24.127829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.909857, 18.934027, 24.379396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.916538, 18.534369, 24.394497>,  <11.920547, 18.294573, 24.403557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.916538, 18.534369, 24.394497>,  <11.909857, 18.934027, 24.379396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.916538, 18.534369, 24.394497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377535, 0.028657, 0.925552,
		-0.925845, -0.029713, -0.376734,
		0.016705, -0.999147, 0.037749,
		11.921550, 18.234625, 24.405821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.265920, 18.687529, 24.596634>,  <11.909857, 18.934027, 24.379396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.265920, 18.687529, 24.596634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.542165, 18.419052, 24.704382>,  <11.707911, 18.257967, 24.769032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.542165, 18.419052, 24.704382>,  <11.265920, 18.687529, 24.596634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.542165, 18.419052, 24.704382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359169, 0.004984, 0.933259,
		-0.627737, -0.741269, -0.237628,
		0.690612, -0.671190, 0.269369,
		11.749349, 18.217695, 24.785192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.921540, 18.261021, 24.954556>,  <11.265920, 18.687529, 24.596634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.921540, 18.261021, 24.954556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.303994, 18.209646, 25.059864>,  <11.533466, 18.178822, 25.123049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.303994, 18.209646, 25.059864>,  <10.921540, 18.261021, 24.954556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.303994, 18.209646, 25.059864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280475, -0.142105, 0.949284,
		-0.084504, -0.981485, -0.171893,
		0.956134, -0.128430, 0.263274,
		11.590835, 18.171116, 25.138845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.848346, 17.715727, 25.432821>,  <10.921540, 18.261021, 24.954556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.848346, 17.715727, 25.432821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.205551, 17.890184, 25.477192>,  <11.419874, 17.994860, 25.503815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.205551, 17.890184, 25.477192>,  <10.848346, 17.715727, 25.432821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.205551, 17.890184, 25.477192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196862, 0.156938, 0.967789,
		0.404688, -0.886086, 0.226008,
		0.893013, 0.436145, 0.110925,
		11.473455, 18.021029, 25.510469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.291239, 17.312181, 25.809875>,  <10.848346, 17.715727, 25.432821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.291239, 17.312181, 25.809875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.417197, 17.689285, 25.853783>,  <11.492772, 17.915546, 25.880127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.417197, 17.689285, 25.853783>,  <11.291239, 17.312181, 25.809875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.417197, 17.689285, 25.853783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089319, -0.085704, 0.992309,
		0.944914, -0.322277, 0.057218,
		0.314895, 0.942758, 0.109769,
		11.511665, 17.972113, 25.886713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.694132, 17.211908, 26.383627>,  <11.291239, 17.312181, 25.809875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.694132, 17.211908, 26.383627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.613441, 17.602297, 26.350681>,  <11.565027, 17.836531, 26.330914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.613441, 17.602297, 26.350681>,  <11.694132, 17.211908, 26.383627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.613441, 17.602297, 26.350681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120944, 0.108272, 0.986737,
		0.971946, 0.189089, -0.139880,
		-0.201726, 0.975973, -0.082365,
		11.552923, 17.895088, 26.325972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.185063, 17.462008, 26.767366>,  <11.694132, 17.211908, 26.383627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.185063, 17.462008, 26.767366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.909780, 17.750055, 26.732054>,  <11.744609, 17.922884, 26.710867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.909780, 17.750055, 26.732054>,  <12.185063, 17.462008, 26.767366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.909780, 17.750055, 26.732054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064070, 0.060881, 0.996087,
		0.722677, 0.691173, 0.004239,
		-0.688210, 0.720120, -0.088281,
		11.703317, 17.966091, 26.705570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.493509, 18.090826, 27.046541>,  <12.185063, 17.462008, 26.767366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.493509, 18.090826, 27.046541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.095448, 18.104971, 27.083248>,  <11.856612, 18.113457, 27.105272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.095448, 18.104971, 27.083248>,  <12.493509, 18.090826, 27.046541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.095448, 18.104971, 27.083248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092661, 0.024581, 0.995394,
		0.032942, 0.999072, -0.027738,
		-0.995153, 0.035361, 0.091765,
		11.796903, 18.115580, 27.110777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.937689, 18.707384, 26.972698>,  <12.493509, 18.090826, 27.046541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.937689, 18.707384, 26.972698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.294731, 18.825253, 27.109182>,  <13.508957, 18.895973, 27.191072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.294731, 18.825253, 27.109182>,  <12.937689, 18.707384, 26.972698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.294731, 18.825253, 27.109182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382810, -0.095609, -0.918867,
		-0.238139, 0.950804, -0.198143,
		0.892607, 0.294669, 0.341209,
		13.562513, 18.913652, 27.211546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.125027, 19.150934, 26.559673>,  <12.937689, 18.707384, 26.972698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.125027, 19.150934, 26.559673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.468736, 19.030197, 26.724861>,  <13.674961, 18.957754, 26.823975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.468736, 19.030197, 26.724861>,  <13.125027, 19.150934, 26.559673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.468736, 19.030197, 26.724861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425534, -0.026198, -0.904563,
		0.283855, 0.952998, 0.105933,
		0.859271, -0.301843, 0.412969,
		13.726517, 18.939644, 26.848751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.655140, 19.581062, 26.305611>,  <13.125027, 19.150934, 26.559673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.655140, 19.581062, 26.305611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.848774, 19.252939, 26.427437>,  <13.964954, 19.056067, 26.500532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.848774, 19.252939, 26.427437>,  <13.655140, 19.581062, 26.305611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.848774, 19.252939, 26.427437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609483, 0.066352, -0.790018,
		0.627847, 0.568063, 0.532082,
		0.484085, -0.820306, 0.304566,
		13.993999, 19.006847, 26.518806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386677, 19.754030, 26.240490>,  <13.655140, 19.581062, 26.305611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386677, 19.754030, 26.240490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.343282, 19.356924, 26.261074>,  <14.317245, 19.118660, 26.273424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.343282, 19.356924, 26.261074>,  <14.386677, 19.754030, 26.240490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343282, 19.356924, 26.261074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635468, -0.109064, -0.764385,
		0.764468, -0.050224, 0.642703,
		-0.108487, -0.992765, 0.051460,
		14.310736, 19.059095, 26.276512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.085468, 19.488035, 26.132196>,  <14.386677, 19.754030, 26.240490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.085468, 19.488035, 26.132196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.789635, 19.230680, 26.053129>,  <14.612135, 19.076267, 26.005688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.789635, 19.230680, 26.053129>,  <15.085468, 19.488035, 26.132196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.789635, 19.230680, 26.053129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474277, -0.289781, -0.831317,
		0.477576, -0.708578, 0.519460,
		-0.739583, -0.643385, -0.197670,
		14.567760, 19.037664, 25.993828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.589046, 18.968697, 25.904873>,  <15.085468, 19.488035, 26.132196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.589046, 18.968697, 25.904873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.217992, 18.886793, 25.779928>,  <14.995359, 18.837650, 25.704962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.217992, 18.886793, 25.779928>,  <15.589046, 18.968697, 25.904873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.217992, 18.886793, 25.779928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373220, -0.540057, -0.754351,
		-0.014234, -0.816341, 0.577395,
		-0.927634, -0.204758, -0.312362,
		14.939702, 18.825365, 25.686220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.575442, 18.224161, 25.895861>,  <15.589046, 18.968697, 25.904873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.575442, 18.224161, 25.895861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.301675, 18.360348, 25.637976>,  <15.137414, 18.442060, 25.483246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.301675, 18.360348, 25.637976>,  <15.575442, 18.224161, 25.895861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.301675, 18.360348, 25.637976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427973, -0.528286, -0.733316,
		-0.590265, -0.777813, 0.215856,
		-0.684417, 0.340470, -0.644712,
		15.096349, 18.462488, 25.444563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.502426, 17.700552, 25.430115>,  <15.575442, 18.224161, 25.895861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.502426, 17.700552, 25.430115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.316209, 17.990223, 25.226612>,  <15.204478, 18.164026, 25.104509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.316209, 17.990223, 25.226612>,  <15.502426, 17.700552, 25.430115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.316209, 17.990223, 25.226612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265772, -0.433925, -0.860857,
		-0.844178, -0.535979, 0.009543,
		-0.465542, 0.724180, -0.508758,
		15.176546, 18.207478, 25.073984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.148750, 17.355156, 24.821741>,  <15.502426, 17.700552, 25.430115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.148750, 17.355156, 24.821741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.213920, 17.739706, 24.733002>,  <15.253021, 17.970436, 24.679758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.213920, 17.739706, 24.733002>,  <15.148750, 17.355156, 24.821741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.213920, 17.739706, 24.733002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283978, -0.261032, -0.922615,
		-0.944887, 0.087316, -0.315537,
		0.162925, 0.961373, -0.221850,
		15.262797, 18.028118, 24.666447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.965583, 17.387541, 24.008810>,  <15.148750, 17.355156, 24.821741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.965583, 17.387541, 24.008810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.185030, 17.708460, 24.102907>,  <15.316698, 17.901011, 24.159365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.185030, 17.708460, 24.102907>,  <14.965583, 17.387541, 24.008810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.185030, 17.708460, 24.102907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412870, -0.015309, -0.910661,
		-0.727019, 0.596729, -0.339644,
		0.548617, 0.802297, 0.235241,
		15.349615, 17.949148, 24.173479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.878938, 17.883421, 23.512691>,  <14.965583, 17.387541, 24.008810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.878938, 17.883421, 23.512691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.233138, 17.950838, 23.685886>,  <15.445659, 17.991289, 23.789804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.233138, 17.950838, 23.685886>,  <14.878938, 17.883421, 23.512691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.233138, 17.950838, 23.685886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456252, -0.139181, -0.878898,
		-0.087870, 0.975818, -0.200144,
		0.885501, 0.168545, 0.432989,
		15.498789, 18.001402, 23.815783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103651, 18.357635, 23.072739>,  <14.878938, 17.883421, 23.512691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103651, 18.357635, 23.072739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.430446, 18.257607, 23.280584>,  <15.626522, 18.197590, 23.405293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.430446, 18.257607, 23.280584>,  <15.103651, 18.357635, 23.072739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.430446, 18.257607, 23.280584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525966, -0.046283, -0.849245,
		0.236421, 0.967121, 0.093717,
		0.816985, -0.250071, 0.519614,
		15.675541, 18.182585, 23.436468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684931, 18.795956, 22.742056>,  <15.103651, 18.357635, 23.072739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684931, 18.795956, 22.742056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.892837, 18.500036, 22.912954>,  <16.017580, 18.322485, 23.015493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.892837, 18.500036, 22.912954>,  <15.684931, 18.795956, 22.742056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.892837, 18.500036, 22.912954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621949, -0.015178, -0.782910,
		0.585682, 0.672656, 0.452229,
		0.519765, -0.739800, 0.427247,
		16.048765, 18.278097, 23.041128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.309822, 19.041471, 22.622839>,  <15.684931, 18.795956, 22.742056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.309822, 19.041471, 22.622839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.346464, 18.650627, 22.699636>,  <16.368450, 18.416121, 22.745714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.346464, 18.650627, 22.699636>,  <16.309822, 19.041471, 22.622839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.346464, 18.650627, 22.699636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560678, -0.108729, -0.820865,
		0.822952, 0.182842, 0.537885,
		0.091605, -0.977112, 0.191994,
		16.373945, 18.357494, 22.757235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<11.282412, 25.705078, 16.837679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.293845, 25.644569, 17.232910>,  <11.300705, 25.608263, 17.470049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.293845, 25.644569, 17.232910>,  <11.282412, 25.705078, 16.837679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.293845, 25.644569, 17.232910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850191, -0.523535, -0.055558,
		0.525698, -0.838467, -0.143576,
		0.028583, -0.151274, 0.988078,
		11.302420, 25.599188, 17.529333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.264579, 24.945515, 16.951878>,  <11.282412, 25.705078, 16.837679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.264579, 24.945515, 16.951878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.100258, 25.143164, 17.258364>,  <11.001665, 25.261753, 17.442255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.100258, 25.143164, 17.258364>,  <11.264579, 24.945515, 16.951878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.100258, 25.143164, 17.258364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853781, -0.503314, -0.133169,
		0.319844, -0.708884, 0.628636,
		-0.410802, 0.494124, 0.766213,
		10.977017, 25.291401, 17.488228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.954891, 24.473240, 17.572483>,  <11.264579, 24.945515, 16.951878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.954891, 24.473240, 17.572483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.753301, 24.808731, 17.489979>,  <10.632346, 25.010025, 17.440475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.753301, 24.808731, 17.489979>,  <10.954891, 24.473240, 17.572483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.753301, 24.808731, 17.489979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783152, -0.544457, -0.300399,
		-0.364253, 0.010139, 0.931245,
		-0.503977, 0.838727, -0.206261,
		10.602108, 25.060349, 17.428101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.243130, 24.529760, 17.931408>,  <10.954891, 24.473240, 17.572483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.243130, 24.529760, 17.931408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.298801, 24.722427, 17.585316>,  <10.332205, 24.838028, 17.377661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.298801, 24.722427, 17.585316>,  <10.243130, 24.529760, 17.931408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.298801, 24.722427, 17.585316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571983, -0.674142, -0.467299,
		-0.808371, 0.559936, 0.181679,
		0.139180, 0.481668, -0.865231,
		10.340555, 24.866928, 17.325747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.572760, 24.958382, 17.597912>,  <10.243130, 24.529760, 17.931408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.572760, 24.958382, 17.597912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.795513, 24.753942, 17.336023>,  <9.929165, 24.631279, 17.178890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.795513, 24.753942, 17.336023>,  <9.572760, 24.958382, 17.597912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.795513, 24.753942, 17.336023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759183, -0.632972, -0.151616,
		-0.336931, 0.581487, -0.740507,
		0.556883, -0.511096, -0.654723,
		9.962578, 24.600615, 17.139606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.215917, 24.872393, 17.045479>,  <9.572760, 24.958382, 17.597912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.215917, 24.872393, 17.045479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.473900, 24.567692, 17.070009>,  <9.628690, 24.384871, 17.084728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.473900, 24.567692, 17.070009>,  <9.215917, 24.872393, 17.045479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.473900, 24.567692, 17.070009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633491, -0.577793, -0.514631,
		0.427457, 0.293064, -0.855215,
		0.644957, -0.761754, 0.061328,
		9.667387, 24.339165, 17.088408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.977215, 24.556900, 16.495741>,  <9.215917, 24.872393, 17.045479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.977215, 24.556900, 16.495741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.291072, 24.333534, 16.603453>,  <9.479386, 24.199514, 16.668079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.291072, 24.333534, 16.603453>,  <8.977215, 24.556900, 16.495741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.291072, 24.333534, 16.603453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390008, -0.782257, -0.485766,
		0.481902, 0.276132, -0.831578,
		0.784643, -0.558413, 0.269277,
		9.526464, 24.166010, 16.684237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.456776, 24.290590, 15.852486>,  <8.977215, 24.556900, 16.495741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.456776, 24.290590, 15.852486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.436382, 24.066252, 16.183025>,  <9.424147, 23.931648, 16.381350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.436382, 24.066252, 16.183025>,  <9.456776, 24.290590, 15.852486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.436382, 24.066252, 16.183025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377231, -0.755313, -0.535909,
		0.924715, -0.339046, -0.173061,
		-0.050983, -0.560847, 0.826348,
		9.421087, 23.897997, 16.430929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.772704, 23.639402, 15.786632>,  <9.456776, 24.290590, 15.852486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.772704, 23.639402, 15.786632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.537938, 23.573568, 16.103729>,  <9.397079, 23.534067, 16.293987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.537938, 23.573568, 16.103729>,  <9.772704, 23.639402, 15.786632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.537938, 23.573568, 16.103729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369996, -0.816381, -0.443424,
		0.720163, -0.553564, 0.418249,
		-0.586914, -0.164587, 0.792743,
		9.361864, 23.524193, 16.341553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.868957, 23.056902, 16.271255>,  <9.772704, 23.639402, 15.786632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.868957, 23.056902, 16.271255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.486522, 23.160330, 16.216064>,  <9.257061, 23.222385, 16.182949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.486522, 23.160330, 16.216064>,  <9.868957, 23.056902, 16.271255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.486522, 23.160330, 16.216064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109923, -0.752790, -0.649018,
		-0.271685, -0.605352, 0.748156,
		-0.956088, 0.258568, -0.137979,
		9.199696, 23.237900, 16.174671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.638108, 22.406960, 16.481195>,  <9.868957, 23.056902, 16.271255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.638108, 22.406960, 16.481195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.349326, 22.650930, 16.611898>,  <9.176057, 22.797314, 16.690321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.349326, 22.650930, 16.611898>,  <9.638108, 22.406960, 16.481195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.349326, 22.650930, 16.611898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562174, -0.792357, 0.236921,
		0.403412, -0.012648, 0.914931,
		-0.721955, 0.609927, 0.326757,
		9.132740, 22.833908, 16.709925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.453231, 22.223030, 17.161488>,  <9.638108, 22.406960, 16.481195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.453231, 22.223030, 17.161488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.130526, 22.400419, 17.005301>,  <8.936902, 22.506853, 16.911589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.130526, 22.400419, 17.005301>,  <9.453231, 22.223030, 17.161488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.130526, 22.400419, 17.005301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586857, -0.678319, 0.442134,
		-0.068785, 0.585845, 0.807499,
		-0.806764, 0.443474, -0.390466,
		8.888496, 22.533461, 16.888161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.946899, 22.311647, 17.650063>,  <9.453231, 22.223030, 17.161488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.946899, 22.311647, 17.650063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.751143, 22.346626, 17.302996>,  <8.633689, 22.367613, 17.094755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.751143, 22.346626, 17.302996>,  <8.946899, 22.311647, 17.650063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.751143, 22.346626, 17.302996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623497, -0.730721, 0.278027,
		-0.609711, 0.677053, 0.412131,
		-0.489391, 0.087446, -0.867669,
		8.604325, 22.372860, 17.042694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.300660, 22.147730, 17.858337>,  <8.946899, 22.311647, 17.650063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.300660, 22.147730, 17.858337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.294036, 22.100170, 17.461229>,  <8.290061, 22.071634, 17.222965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.294036, 22.100170, 17.461229>,  <8.300660, 22.147730, 17.858337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.294036, 22.100170, 17.461229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470372, -0.875246, 0.112672,
		-0.882313, 0.468836, -0.041433,
		-0.016560, -0.118901, -0.992768,
		8.289068, 22.064501, 17.163399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.598884, 21.766243, 17.747087>,  <8.300660, 22.147730, 17.858337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.598884, 21.766243, 17.747087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.826024, 21.731165, 17.419708>,  <7.962308, 21.710117, 17.223282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.826024, 21.731165, 17.419708>,  <7.598884, 21.766243, 17.747087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.826024, 21.731165, 17.419708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334713, -0.932992, -0.132260,
		-0.752006, 0.349049, -0.559153,
		0.567851, -0.087696, -0.818447,
		7.996379, 21.704857, 17.174173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.132251, 21.714199, 17.232218>,  <7.598884, 21.766243, 17.747087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.132251, 21.714199, 17.232218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.471591, 21.533567, 17.121672>,  <7.675194, 21.425188, 17.055344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.471591, 21.533567, 17.121672>,  <7.132251, 21.714199, 17.232218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.471591, 21.533567, 17.121672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489578, -0.867824, -0.084818,
		-0.201535, 0.207259, -0.957302,
		0.848349, -0.451580, -0.276367,
		7.726095, 21.398094, 17.038761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.874063, 21.203421, 16.736540>,  <7.132251, 21.714199, 17.232218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.874063, 21.203421, 16.736540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.242159, 21.067513, 16.814220>,  <7.463017, 20.985968, 16.860828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.242159, 21.067513, 16.814220>,  <6.874063, 21.203421, 16.736540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.242159, 21.067513, 16.814220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297362, -0.929671, -0.217459,
		0.254431, 0.142366, -0.956555,
		0.920239, -0.339772, 0.194203,
		7.518231, 20.965582, 16.872480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.068223, 20.812483, 16.122768>,  <6.874063, 21.203421, 16.736540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.068223, 20.812483, 16.122768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.299228, 20.696230, 16.427927>,  <7.437832, 20.626478, 16.611021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.299228, 20.696230, 16.427927>,  <7.068223, 20.812483, 16.122768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.299228, 20.696230, 16.427927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259699, -0.951344, -0.165831,
		0.773972, -0.102354, -0.624893,
		0.577515, -0.290633, 0.762895,
		7.472483, 20.609039, 16.656796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.453931, 20.252539, 15.951859>,  <7.068223, 20.812483, 16.122768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.453931, 20.252539, 15.951859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.469951, 20.199154, 16.347956>,  <7.479563, 20.167122, 16.585615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.469951, 20.199154, 16.347956>,  <7.453931, 20.252539, 15.951859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.469951, 20.199154, 16.347956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323419, -0.939420, -0.113533,
		0.945408, -0.315717, -0.080789,
		0.040050, -0.133464, 0.990244,
		7.481966, 20.159115, 16.645029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.759880, 19.681316, 16.083939>,  <7.453931, 20.252539, 15.951859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.759880, 19.681316, 16.083939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.589981, 19.713078, 16.444668>,  <7.488042, 19.732134, 16.661106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.589981, 19.713078, 16.444668>,  <7.759880, 19.681316, 16.083939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.589981, 19.713078, 16.444668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299048, -0.952535, -0.056981,
		0.854494, -0.293891, 0.428332,
		-0.424747, 0.079402, 0.901823,
		7.462557, 19.736898, 16.715216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.881130, 19.016182, 16.489117>,  <7.759880, 19.681316, 16.083939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.881130, 19.016182, 16.489117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.551634, 19.186712, 16.638620>,  <7.353937, 19.289030, 16.728323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.551634, 19.186712, 16.638620>,  <7.881130, 19.016182, 16.489117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.551634, 19.186712, 16.638620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394926, -0.904448, 0.161266,
		0.406800, -0.014767, 0.913398,
		-0.823740, 0.426328, 0.373761,
		7.304513, 19.314611, 16.750750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.711404, 18.646338, 17.073187>,  <7.881130, 19.016182, 16.489117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.711404, 18.646338, 17.073187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.366306, 18.818792, 16.967512>,  <7.159248, 18.922266, 16.904108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.366306, 18.818792, 16.967512>,  <7.711404, 18.646338, 17.073187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.366306, 18.818792, 16.967512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449273, -0.893346, 0.009284,
		-0.232006, 0.126701, 0.964427,
		-0.862744, 0.431137, -0.264185,
		7.107483, 18.948133, 16.888256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.270109, 18.456554, 17.554680>,  <7.711404, 18.646338, 17.073187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.270109, 18.456554, 17.554680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.059488, 18.559536, 17.230591>,  <6.933116, 18.621325, 17.036137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.059488, 18.559536, 17.230591>,  <7.270109, 18.456554, 17.554680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.059488, 18.559536, 17.230591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608627, -0.779565, 0.147825,
		-0.593563, 0.570961, 0.567175,
		-0.526552, 0.257454, -0.810223,
		6.901523, 18.636772, 16.987524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.575385, 18.272308, 17.712118>,  <7.270109, 18.456554, 17.554680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.575385, 18.272308, 17.712118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.537327, 18.327774, 17.317814>,  <6.514493, 18.361053, 17.081232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.537327, 18.327774, 17.317814>,  <6.575385, 18.272308, 17.712118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.537327, 18.327774, 17.317814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595105, -0.801740, -0.055339,
		-0.797996, 0.581365, 0.158801,
		-0.095145, 0.138664, -0.985759,
		6.508784, 18.369373, 17.022087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.886393, 18.279882, 17.656826>,  <6.575385, 18.272308, 17.712118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.886393, 18.279882, 17.656826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.015535, 18.213886, 17.284044>,  <6.093020, 18.174288, 17.060375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.015535, 18.213886, 17.284044>,  <5.886393, 18.279882, 17.656826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.015535, 18.213886, 17.284044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699006, -0.705436, -0.117266,
		-0.638087, 0.689303, -0.343084,
		0.322855, -0.164992, -0.931956,
		6.112391, 18.164389, 17.004457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.271534, 18.317640, 17.184303>,  <5.886393, 18.279882, 17.656826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.271534, 18.317640, 17.184303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.543789, 18.106363, 16.981228>,  <5.707142, 17.979597, 16.859383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.543789, 18.106363, 16.981228>,  <5.271534, 18.317640, 17.184303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.543789, 18.106363, 16.981228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678601, -0.715695, -0.165174,
		-0.276107, 0.456941, -0.845559,
		0.680637, -0.528191, -0.507689,
		5.747980, 17.947906, 16.828920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.922544, 18.066792, 16.625177>,  <5.271534, 18.317640, 17.184303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.922544, 18.066792, 16.625177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.248508, 17.836031, 16.647451>,  <5.444088, 17.697575, 16.660816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.248508, 17.836031, 16.647451>,  <4.922544, 18.066792, 16.625177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.248508, 17.836031, 16.647451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518340, -0.768415, -0.375316,
		0.259310, 0.276987, -0.925223,
		0.814913, -0.576903, 0.055685,
		5.492982, 17.662960, 16.664156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.896363, 17.598454, 15.956152>,  <4.922544, 18.066792, 16.625177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.896363, 17.598454, 15.956152> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.159362, 17.412025, 16.192957>,  <5.317161, 17.300169, 16.335039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.159362, 17.412025, 16.192957>,  <4.896363, 17.598454, 15.956152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.159362, 17.412025, 16.192957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222883, -0.870873, -0.438068,
		0.719737, 0.156079, -0.676475,
		0.657497, -0.466068, 0.592012,
		5.356611, 17.272205, 16.370560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.322128, 17.162682, 15.469739>,  <4.896363, 17.598454, 15.956152>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.322128, 17.162682, 15.469739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.364289, 17.024527, 15.842749>,  <5.389585, 16.941633, 16.066555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.364289, 17.024527, 15.842749>,  <5.322128, 17.162682, 15.469739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.364289, 17.024527, 15.842749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255126, -0.915752, -0.310338,
		0.961146, -0.205201, -0.184638,
		0.105401, -0.345386, 0.932523,
		5.395909, 16.920912, 16.122505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.719875, 16.628754, 15.343366>,  <5.322128, 17.162682, 15.469739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.719875, 16.628754, 15.343366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.540362, 16.587488, 15.698432>,  <5.432654, 16.562729, 15.911472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.540362, 16.587488, 15.698432>,  <5.719875, 16.628754, 15.343366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.540362, 16.587488, 15.698432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312187, -0.912631, -0.263900,
		0.837337, -0.395551, 0.377367,
		-0.448783, -0.103164, 0.887666,
		5.405727, 16.556540, 15.964732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.085041, 16.064564, 15.598963>,  <5.719875, 16.628754, 15.343366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.085041, 16.064564, 15.598963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.717024, 16.101883, 15.751184>,  <5.496215, 16.124273, 15.842518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.717024, 16.101883, 15.751184>,  <6.085041, 16.064564, 15.598963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.717024, 16.101883, 15.751184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228270, -0.917021, -0.327057,
		0.318464, -0.387775, 0.864992,
		-0.920040, 0.093296, 0.380555,
		5.441012, 16.129871, 15.865351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.525487, 16.618612, 15.416970>,  <6.085041, 16.064564, 15.598963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.525487, 16.618612, 15.416970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.850873, 16.484278, 15.227028>,  <7.046104, 16.403677, 15.113062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.850873, 16.484278, 15.227028>,  <6.525487, 16.618612, 15.416970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.850873, 16.484278, 15.227028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184223, 0.923186, -0.337328,
		0.551668, 0.186924, 0.812848,
		0.813464, -0.335838, -0.474857,
		7.094912, 16.383526, 15.084571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.136881, 17.015833, 15.725123>,  <6.525487, 16.618612, 15.416970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.136881, 17.015833, 15.725123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.238116, 16.877718, 15.363632>,  <7.298857, 16.794849, 15.146738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.238116, 16.877718, 15.363632>,  <7.136881, 17.015833, 15.725123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.238116, 16.877718, 15.363632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270495, 0.922139, -0.276571,
		0.928859, -0.174457, 0.326780,
		0.253087, -0.345288, -0.903727,
		7.314043, 16.774132, 15.092514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.658336, 17.358438, 15.574934>,  <7.136881, 17.015833, 15.725123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.658336, 17.358438, 15.574934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.586423, 17.227560, 15.203856>,  <7.543275, 17.149033, 14.981208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.586423, 17.227560, 15.203856>,  <7.658336, 17.358438, 15.574934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.586423, 17.227560, 15.203856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352679, 0.858931, -0.371288,
		0.918311, -0.393931, -0.039026,
		-0.179783, -0.327194, -0.927698,
		7.532488, 17.129402, 14.925547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.209223, 17.533937, 15.280603>,  <7.658336, 17.358438, 15.574934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.209223, 17.533937, 15.280603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.976651, 17.465847, 14.962368>,  <7.837108, 17.424992, 14.771426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.976651, 17.465847, 14.962368>,  <8.209223, 17.533937, 15.280603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.976651, 17.465847, 14.962368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368514, 0.816705, -0.444062,
		0.725353, -0.551376, -0.412124,
		-0.581429, -0.170228, -0.795590,
		7.802222, 17.414778, 14.723691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.576310, 17.577351, 14.615888>,  <8.209223, 17.533937, 15.280603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.576310, 17.577351, 14.615888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.198753, 17.675814, 14.527820>,  <7.972219, 17.734892, 14.474978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.198753, 17.675814, 14.527820>,  <8.576310, 17.577351, 14.615888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.198753, 17.675814, 14.527820> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298711, 0.920672, -0.251268,
		0.140853, -0.302937, -0.942544,
		-0.943892, 0.246156, -0.220170,
		7.915586, 17.749660, 14.461768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.624687, 17.947010, 14.050367>,  <8.576310, 17.577351, 14.615888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.624687, 17.947010, 14.050367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.253450, 18.046867, 14.160874>,  <8.030708, 18.106781, 14.227179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.253450, 18.046867, 14.160874>,  <8.624687, 17.947010, 14.050367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.253450, 18.046867, 14.160874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137493, 0.919285, -0.368796,
		-0.346037, -0.304292, -0.887505,
		-0.928092, 0.249643, 0.276269,
		7.975023, 18.121759, 14.243755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.263348, 18.327948, 13.465705>,  <8.624687, 17.947010, 14.050367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.263348, 18.327948, 13.465705> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.104028, 18.407618, 13.823853>,  <8.008436, 18.455420, 14.038741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.104028, 18.407618, 13.823853>,  <8.263348, 18.327948, 13.465705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.104028, 18.407618, 13.823853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019145, 0.977732, -0.208982,
		-0.917055, -0.066095, -0.393244,
		-0.398300, 0.199177, 0.895369,
		7.984538, 18.467371, 14.092463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.840615, 18.917383, 13.343604>,  <8.263348, 18.327948, 13.465705>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.840615, 18.917383, 13.343604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.892075, 18.932150, 13.740005>,  <7.922951, 18.941010, 13.977846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.892075, 18.932150, 13.740005>,  <7.840615, 18.917383, 13.343604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.892075, 18.932150, 13.740005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117349, 0.991719, -0.052179,
		-0.984722, 0.123006, 0.123252,
		0.128650, 0.036918, 0.991003,
		7.930670, 18.943226, 14.037306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.488664, 19.546206, 13.663995>,  <7.840615, 18.917383, 13.343604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.488664, 19.546206, 13.663995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.765176, 19.440556, 13.933028>,  <7.931083, 19.377167, 14.094448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.765176, 19.440556, 13.933028>,  <7.488664, 19.546206, 13.663995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.765176, 19.440556, 13.933028> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180669, 0.964415, 0.193034,
		-0.699635, -0.011925, 0.714401,
		0.691281, -0.264124, 0.672584,
		7.972560, 19.361319, 14.134804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.326967, 19.963312, 14.070448>,  <7.488664, 19.546206, 13.663995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.326967, 19.963312, 14.070448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.703065, 19.863281, 14.162881>,  <7.928724, 19.803263, 14.218341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.703065, 19.863281, 14.162881>,  <7.326967, 19.963312, 14.070448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.703065, 19.863281, 14.162881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238371, 0.968059, 0.077730,
		-0.243140, -0.018002, 0.969824,
		0.940246, -0.250077, 0.231083,
		7.985139, 19.788258, 14.232205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.630826, 20.479610, 14.586889>,  <7.326967, 19.963312, 14.070448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.630826, 20.479610, 14.586889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.959659, 20.294827, 14.453761>,  <8.156960, 20.183956, 14.373884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.959659, 20.294827, 14.453761>,  <7.630826, 20.479610, 14.586889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.959659, 20.294827, 14.453761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514799, 0.852795, 0.087884,
		0.243228, -0.243583, 0.938886,
		0.822084, -0.461962, -0.332820,
		8.206285, 20.156239, 14.353915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.126526, 20.660837, 15.045365>,  <7.630826, 20.479610, 14.586889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.126526, 20.660837, 15.045365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.329959, 20.542122, 14.722067>,  <8.452019, 20.470894, 14.528088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.329959, 20.542122, 14.722067>,  <8.126526, 20.660837, 15.045365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.329959, 20.542122, 14.722067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574840, 0.815904, 0.062115,
		0.641017, -0.496204, 0.585559,
		0.508582, -0.296786, -0.808246,
		8.482533, 20.453087, 14.479593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.817682, 20.802740, 15.227505>,  <8.126526, 20.660837, 15.045365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.817682, 20.802740, 15.227505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.834492, 20.750624, 14.831271>,  <8.844578, 20.719353, 14.593531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.834492, 20.750624, 14.831271>,  <8.817682, 20.802740, 15.227505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.834492, 20.750624, 14.831271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724768, 0.686416, -0.059537,
		0.687711, -0.715442, 0.123278,
		0.042025, -0.130292, -0.990585,
		8.847099, 20.711536, 14.534096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.493558, 20.638012, 15.109504>,  <8.817682, 20.802740, 15.227505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.493558, 20.638012, 15.109504> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.335089, 20.803469, 14.781614>,  <9.240007, 20.902742, 14.584881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.335089, 20.803469, 14.781614>,  <9.493558, 20.638012, 15.109504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.335089, 20.803469, 14.781614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654753, 0.753162, 0.063611,
		0.643697, -0.511516, -0.569215,
		-0.396173, 0.413642, -0.819724,
		9.216237, 20.927561, 14.535697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.054178, 20.757534, 14.682571>,  <9.493558, 20.638012, 15.109504>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.054178, 20.757534, 14.682571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.773945, 21.016098, 14.561685>,  <9.605804, 21.171236, 14.489153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.773945, 21.016098, 14.561685>,  <10.054178, 20.757534, 14.682571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.773945, 21.016098, 14.561685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689669, 0.722087, -0.054288,
		0.183134, -0.246462, -0.951692,
		-0.700585, 0.646411, -0.302216,
		9.563769, 21.210022, 14.471020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.404963, 21.148058, 14.259571>,  <10.054178, 20.757534, 14.682571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.404963, 21.148058, 14.259571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.068594, 21.361822, 14.293645>,  <9.866773, 21.490082, 14.314089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.068594, 21.361822, 14.293645>,  <10.404963, 21.148058, 14.259571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.068594, 21.361822, 14.293645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509659, 0.835021, -0.207334,
		-0.181932, -0.130937, -0.974554,
		-0.840921, 0.534411, 0.085184,
		9.816318, 21.522146, 14.319201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.443977, 21.541618, 13.748036>,  <10.404963, 21.148058, 14.259571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.443977, 21.541618, 13.748036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.206863, 21.735928, 14.004982>,  <10.064595, 21.852512, 14.159149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.206863, 21.735928, 14.004982>,  <10.443977, 21.541618, 13.748036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.206863, 21.735928, 14.004982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500915, 0.846946, -0.178229,
		-0.630627, 0.216119, -0.745387,
		-0.592785, 0.485772, 0.642365,
		10.029028, 21.881659, 14.197691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.340341, 22.176456, 13.475168>,  <10.443977, 21.541618, 13.748036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.340341, 22.176456, 13.475168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.257213, 22.232750, 13.862365>,  <10.207335, 22.266525, 14.094683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.257213, 22.232750, 13.862365>,  <10.340341, 22.176456, 13.475168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.257213, 22.232750, 13.862365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501518, 0.864958, -0.018080,
		-0.839816, 0.481707, -0.250336,
		-0.207821, 0.140731, 0.967990,
		10.194866, 22.274969, 14.152761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.027829, 22.851437, 13.524404>,  <10.340341, 22.176456, 13.475168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.027829, 22.851437, 13.524404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.189218, 22.729576, 13.869518>,  <10.286051, 22.656460, 14.076587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.189218, 22.729576, 13.869518>,  <10.027829, 22.851437, 13.524404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.189218, 22.729576, 13.869518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598900, 0.800819, 0.002703,
		-0.691759, 0.515632, 0.505562,
		0.403470, -0.304651, 0.862786,
		10.310259, 22.638182, 14.128354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.883325, 23.388638, 14.045074>,  <10.027829, 22.851437, 13.524404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.883325, 23.388638, 14.045074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.208684, 23.171837, 14.129566>,  <10.403899, 23.041756, 14.180262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.208684, 23.171837, 14.129566>,  <9.883325, 23.388638, 14.045074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.208684, 23.171837, 14.129566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564650, 0.822943, -0.062726,
		-0.139833, 0.170292, 0.975422,
		0.813398, -0.542001, 0.211230,
		10.452703, 23.009237, 14.192935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.310287, 23.552944, 14.708341>,  <9.883325, 23.388638, 14.045074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.310287, 23.552944, 14.708341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.526888, 23.425241, 14.397252>,  <10.656849, 23.348619, 14.210599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.526888, 23.425241, 14.397252>,  <10.310287, 23.552944, 14.708341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.526888, 23.425241, 14.397252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425683, 0.901856, -0.073825,
		0.724961, -0.291086, 0.624260,
		0.541503, -0.319257, -0.777721,
		10.689339, 23.329464, 14.163936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<17.612007, 18.950640, 28.988979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.227806, 18.874102, 28.908163>,  <16.997286, 18.828178, 28.859674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.227806, 18.874102, 28.908163>,  <17.612007, 18.950640, 28.988979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.227806, 18.874102, 28.908163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269589, 0.459961, 0.846025,
		-0.068954, 0.867077, -0.493379,
		-0.960503, -0.191347, -0.202038,
		16.939655, 18.816698, 28.847551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.229115, 19.500431, 29.231255>,  <17.612007, 18.950640, 28.988979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.229115, 19.500431, 29.231255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.906099, 19.268665, 29.187136>,  <16.712290, 19.129606, 29.160666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.906099, 19.268665, 29.187136>,  <17.229115, 19.500431, 29.231255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.906099, 19.268665, 29.187136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405627, 0.409800, 0.817025,
		-0.428196, 0.704517, -0.565954,
		-0.807536, -0.579414, -0.110296,
		16.663839, 19.094841, 29.154047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.632767, 19.966299, 29.341311>,  <17.229115, 19.500431, 29.231255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.632767, 19.966299, 29.341311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.488840, 19.594076, 29.368433>,  <16.402485, 19.370743, 29.384706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.488840, 19.594076, 29.368433>,  <16.632767, 19.966299, 29.341311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.488840, 19.594076, 29.368433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597569, 0.285655, 0.749208,
		-0.716550, 0.229057, -0.658855,
		-0.359816, -0.930556, 0.067809,
		16.380896, 19.314909, 29.388775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906271, 20.018257, 29.311878>,  <16.632767, 19.966299, 29.341311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906271, 20.018257, 29.311878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.990641, 19.682663, 29.512524>,  <16.041264, 19.481306, 29.632912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.990641, 19.682663, 29.512524>,  <15.906271, 20.018257, 29.311878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.990641, 19.682663, 29.512524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614981, 0.284980, 0.735245,
		-0.759809, -0.463564, -0.455849,
		0.210925, -0.838984, 0.501614,
		16.053919, 19.430967, 29.663008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219344, 19.867277, 29.536703>,  <15.906271, 20.018257, 29.311878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.219344, 19.867277, 29.536703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.474786, 19.647524, 29.752245>,  <15.628051, 19.515673, 29.881569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.474786, 19.647524, 29.752245>,  <15.219344, 19.867277, 29.536703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.474786, 19.647524, 29.752245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619890, 0.047665, 0.783240,
		-0.455984, -0.834209, -0.310118,
		0.638604, -0.549384, 0.538853,
		15.666368, 19.482708, 29.913900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.839874, 19.228144, 29.917511>,  <15.219344, 19.867277, 29.536703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.839874, 19.228144, 29.917511> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.173306, 19.310411, 30.122585>,  <15.373364, 19.359772, 30.245630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.173306, 19.310411, 30.122585>,  <14.839874, 19.228144, 29.917511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.173306, 19.310411, 30.122585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483396, -0.177588, 0.857199,
		0.267349, -0.962373, -0.048613,
		0.833579, 0.205672, 0.512685,
		15.423379, 19.372112, 30.276390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.802932, 18.826250, 30.621063>,  <14.839874, 19.228144, 29.917511>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.802932, 18.826250, 30.621063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.106580, 19.074770, 30.698755>,  <15.288769, 19.223881, 30.745371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.106580, 19.074770, 30.698755>,  <14.802932, 18.826250, 30.621063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.106580, 19.074770, 30.698755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116950, -0.163353, 0.979611,
		0.640360, -0.766357, -0.051343,
		0.759119, 0.621299, 0.194230,
		15.334315, 19.261160, 30.757025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.156179, 18.413284, 31.102459>,  <14.802932, 18.826250, 30.621063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.156179, 18.413284, 31.102459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.220556, 18.807684, 31.119919>,  <15.259183, 19.044323, 31.130394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.220556, 18.807684, 31.119919>,  <15.156179, 18.413284, 31.102459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.220556, 18.807684, 31.119919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129612, -0.022726, 0.991304,
		0.978416, -0.165201, 0.124140,
		0.160943, 0.985998, 0.043648,
		15.268839, 19.103483, 31.133013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.701415, 18.476479, 31.551319>,  <15.156179, 18.413284, 31.102459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.701415, 18.476479, 31.551319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.545815, 18.844957, 31.547823>,  <15.452456, 19.066044, 31.545725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.545815, 18.844957, 31.547823>,  <15.701415, 18.476479, 31.551319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.545815, 18.844957, 31.547823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124947, -0.043356, 0.991216,
		0.912726, 0.386674, 0.131966,
		-0.388999, 0.921197, -0.008742,
		15.429115, 19.121317, 31.545200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.891145, 18.762712, 32.220573>,  <15.701415, 18.476479, 31.551319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.891145, 18.762712, 32.220573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.574041, 18.974691, 32.100117>,  <15.383780, 19.101879, 32.027843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.574041, 18.974691, 32.100117>,  <15.891145, 18.762712, 32.220573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574041, 18.974691, 32.100117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216736, 0.216688, 0.951878,
		0.569701, 0.819879, -0.056922,
		-0.792759, 0.529949, -0.301144,
		15.336214, 19.133677, 32.009773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.033804, 19.294600, 32.639290>,  <15.891145, 18.762712, 32.220573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.033804, 19.294600, 32.639290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.664149, 19.288572, 32.486584>,  <15.442356, 19.284956, 32.394962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.664149, 19.288572, 32.486584>,  <16.033804, 19.294600, 32.639290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.664149, 19.288572, 32.486584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380242, -0.061123, 0.922865,
		-0.037239, 0.998016, 0.050757,
		-0.924137, -0.015067, -0.381764,
		15.386909, 19.284052, 32.372055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.677355, 19.917505, 32.968426>,  <16.033804, 19.294600, 32.639290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.677355, 19.917505, 32.968426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.423889, 19.633593, 32.845345>,  <15.271810, 19.463245, 32.771496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.423889, 19.633593, 32.845345>,  <15.677355, 19.917505, 32.968426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.423889, 19.633593, 32.845345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449874, 0.014512, 0.892974,
		-0.629352, 0.704271, -0.328509,
		-0.633663, -0.709783, -0.307700,
		15.233790, 19.420658, 32.753033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.059699, 20.069216, 33.393120>,  <15.677355, 19.917505, 32.968426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.059699, 20.069216, 33.393120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.034278, 19.685936, 33.281536>,  <15.019025, 19.455969, 33.214584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.034278, 19.685936, 33.281536>,  <15.059699, 20.069216, 33.393120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.034278, 19.685936, 33.281536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488144, -0.213956, 0.846131,
		-0.870446, 0.189946, -0.454141,
		-0.063553, -0.958198, -0.278958,
		15.015212, 19.398476, 33.197849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.271207, 19.774122, 33.402073>,  <15.059699, 20.069216, 33.393120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.271207, 19.774122, 33.402073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.536310, 19.479017, 33.453388>,  <14.695373, 19.301954, 33.484177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.536310, 19.479017, 33.453388>,  <14.271207, 19.774122, 33.402073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.536310, 19.479017, 33.453388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487208, -0.294732, 0.822047,
		-0.568666, -0.607321, -0.554780,
		0.662758, -0.737763, 0.128287,
		14.735138, 19.257689, 33.491875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.736341, 19.968811, 33.018162>,  <14.271207, 19.774122, 33.402073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.736341, 19.968811, 33.018162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.408815, 20.184189, 32.938538>,  <13.212300, 20.313416, 32.890762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.408815, 20.184189, 32.938538>,  <13.736341, 19.968811, 33.018162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.408815, 20.184189, 32.938538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064231, -0.430510, -0.900297,
		-0.570458, -0.724388, 0.387091,
		-0.818812, 0.538445, -0.199060,
		13.163172, 20.345722, 32.878819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.181615, 19.491186, 32.673683>,  <13.736341, 19.968811, 33.018162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.181615, 19.491186, 32.673683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.124213, 19.866405, 32.547523>,  <13.089772, 20.091537, 32.471828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.124213, 19.866405, 32.547523>,  <13.181615, 19.491186, 32.673683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.124213, 19.866405, 32.547523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252257, -0.342838, -0.904891,
		-0.956960, -0.050294, 0.285827,
		-0.143503, 0.938047, -0.315395,
		13.081162, 20.147820, 32.452904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.665798, 19.340733, 32.265026>,  <13.181615, 19.491186, 32.673683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.665798, 19.340733, 32.265026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.825979, 19.688017, 32.147827>,  <12.922088, 19.896387, 32.077507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.825979, 19.688017, 32.147827>,  <12.665798, 19.340733, 32.265026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.825979, 19.688017, 32.147827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165975, -0.245741, -0.955020,
		-0.901160, 0.431072, 0.045693,
		0.400453, 0.868210, -0.292999,
		12.946115, 19.948481, 32.059929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.261949, 19.489111, 31.707855>,  <12.665798, 19.340733, 32.265026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.261949, 19.489111, 31.707855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.551930, 19.758139, 31.648407>,  <12.725920, 19.919556, 31.612738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.551930, 19.758139, 31.648407>,  <12.261949, 19.489111, 31.707855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.551930, 19.758139, 31.648407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005857, -0.209741, -0.977740,
		-0.688771, 0.709688, -0.148114,
		0.724955, 0.672571, -0.148620,
		12.769417, 19.959909, 31.603821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.022958, 19.956833, 31.172510>,  <12.261949, 19.489111, 31.707855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.022958, 19.956833, 31.172510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.422544, 19.972502, 31.181778>,  <12.662294, 19.981903, 31.187338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.422544, 19.972502, 31.181778>,  <12.022958, 19.956833, 31.172510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.422544, 19.972502, 31.181778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028532, -0.142434, -0.989393,
		-0.035457, 0.989029, -0.143405,
		0.998964, 0.039173, 0.023169,
		12.722233, 19.984253, 31.188728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.227077, 20.545441, 30.729452>,  <12.022958, 19.956833, 31.172510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.227077, 20.545441, 30.729452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.526729, 20.280783, 30.742294>,  <12.706520, 20.121988, 30.750000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.526729, 20.280783, 30.742294>,  <12.227077, 20.545441, 30.729452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.526729, 20.280783, 30.742294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076845, 0.038659, -0.996293,
		0.657951, 0.748820, 0.079804,
		0.749129, -0.661645, 0.032108,
		12.751468, 20.082289, 30.751926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.638522, 20.776253, 30.103212>,  <12.227077, 20.545441, 30.729452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.638522, 20.776253, 30.103212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.780766, 20.419970, 30.216480>,  <12.866112, 20.206200, 30.284441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.780766, 20.419970, 30.216480>,  <12.638522, 20.776253, 30.103212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.780766, 20.419970, 30.216480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336993, -0.160400, -0.927743,
		0.871767, 0.425339, 0.243123,
		0.355609, -0.890707, 0.283168,
		12.887448, 20.152758, 30.301430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.394059, 20.678434, 29.945436>,  <12.638522, 20.776253, 30.103212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.394059, 20.678434, 29.945436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.206097, 20.325842, 29.964098>,  <13.093319, 20.114286, 29.975296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.206097, 20.325842, 29.964098>,  <13.394059, 20.678434, 29.945436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.206097, 20.325842, 29.964098> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319666, -0.219201, -0.921827,
		0.822801, -0.418259, 0.384784,
		-0.469907, -0.881482, 0.046655,
		13.065125, 20.061398, 29.978094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.910310, 20.266811, 29.534868>,  <13.394059, 20.678434, 29.945436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.910310, 20.266811, 29.534868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.586991, 20.034456, 29.573290>,  <13.393001, 19.895042, 29.596344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.586991, 20.034456, 29.573290>,  <13.910310, 20.266811, 29.534868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.586991, 20.034456, 29.573290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177270, -0.395677, -0.901119,
		0.561457, -0.711342, 0.422798,
		-0.808295, -0.580889, 0.096056,
		13.344502, 19.860189, 29.602106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.129095, 19.564760, 29.482569>,  <13.910310, 20.266811, 29.534868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.129095, 19.564760, 29.482569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.742974, 19.590168, 29.381252>,  <13.511302, 19.605413, 29.320461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.742974, 19.590168, 29.381252>,  <14.129095, 19.564760, 29.482569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.742974, 19.590168, 29.381252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192782, -0.480924, -0.855305,
		-0.176144, -0.874458, 0.451991,
		-0.965302, 0.063521, -0.253292,
		13.453383, 19.609224, 29.305265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920038, 18.923569, 29.374546>,  <14.129095, 19.564760, 29.482569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920038, 18.923569, 29.374546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.661625, 19.162592, 29.184570>,  <13.506577, 19.306005, 29.070585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.661625, 19.162592, 29.184570>,  <13.920038, 18.923569, 29.374546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.661625, 19.162592, 29.184570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224771, -0.445695, -0.866507,
		-0.729465, -0.666544, 0.153620,
		-0.646033, 0.597558, -0.474939,
		13.467815, 19.341860, 29.042089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.461697, 18.489647, 28.979364>,  <13.920038, 18.923569, 29.374546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.461697, 18.489647, 28.979364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.449015, 18.841516, 28.789557>,  <13.441405, 19.052639, 28.675673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.449015, 18.841516, 28.789557>,  <13.461697, 18.489647, 28.979364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.449015, 18.841516, 28.789557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018086, -0.474175, -0.880245,
		-0.999334, -0.036490, -0.000876,
		-0.031704, 0.879674, -0.474519,
		13.439504, 19.105419, 28.647202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.187735, 18.367241, 28.353716>,  <13.461697, 18.489647, 28.979364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.187735, 18.367241, 28.353716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.328069, 18.731222, 28.265263>,  <13.412269, 18.949612, 28.212191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.328069, 18.731222, 28.265263>,  <13.187735, 18.367241, 28.353716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.328069, 18.731222, 28.265263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036178, -0.249137, -0.967792,
		-0.935738, 0.331535, -0.120326,
		0.350834, 0.909954, -0.221133,
		13.433319, 19.004208, 28.198923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.023074, 18.386908, 27.657431>,  <13.187735, 18.367241, 28.353716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.023074, 18.386908, 27.657431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.302938, 18.671394, 27.684692>,  <13.470858, 18.842087, 27.701050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.302938, 18.671394, 27.684692>,  <13.023074, 18.386908, 27.657431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.302938, 18.671394, 27.684692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210015, -0.113547, -0.971082,
		-0.682911, 0.693742, -0.228810,
		0.699661, 0.711217, 0.068154,
		13.512836, 18.884760, 27.705139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.329026, 18.472273, 27.682625>,  <13.023074, 18.386908, 27.657431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.329026, 18.472273, 27.682625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.960019, 18.328905, 27.625357>,  <11.738615, 18.242884, 27.590996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.960019, 18.328905, 27.625357>,  <12.329026, 18.472273, 27.682625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.960019, 18.328905, 27.625357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193545, 0.108667, 0.975055,
		-0.333920, 0.927215, -0.169618,
		-0.922517, -0.358419, -0.143172,
		11.683264, 18.221380, 27.582405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.891729, 18.996117, 27.950457>,  <12.329026, 18.472273, 27.682625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.891729, 18.996117, 27.950457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.674667, 18.660868, 27.928278>,  <11.544430, 18.459719, 27.914970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.674667, 18.660868, 27.928278>,  <11.891729, 18.996117, 27.950457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.674667, 18.660868, 27.928278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239139, 0.090879, 0.966723,
		-0.805194, 0.537856, -0.249744,
		-0.542655, -0.838124, -0.055447,
		11.511871, 18.409431, 27.911644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.308781, 19.203577, 28.177378>,  <11.891729, 18.996117, 27.950457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.308781, 19.203577, 28.177378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.290542, 18.807568, 28.230709>,  <11.279598, 18.569962, 28.262709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.290542, 18.807568, 28.230709>,  <11.308781, 19.203577, 28.177378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.290542, 18.807568, 28.230709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320293, 0.140911, 0.936780,
		-0.946220, 0.000010, -0.323523,
		-0.045597, -0.990022, 0.133330,
		11.276863, 18.510561, 28.270708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.734128, 19.096731, 28.521303>,  <11.308781, 19.203577, 28.177378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.734128, 19.096731, 28.521303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.919246, 18.749266, 28.592005>,  <11.030316, 18.540787, 28.634426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.919246, 18.749266, 28.592005>,  <10.734128, 19.096731, 28.521303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.919246, 18.749266, 28.592005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277658, 0.047311, 0.959514,
		-0.841860, -0.493134, -0.219297,
		0.462794, -0.868666, 0.176752,
		11.058084, 18.488667, 28.645031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.253441, 18.696997, 28.647871>,  <10.734128, 19.096731, 28.521303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.253441, 18.696997, 28.647871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.565142, 18.535810, 28.839865>,  <10.752162, 18.439098, 28.955061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.565142, 18.535810, 28.839865>,  <10.253441, 18.696997, 28.647871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.565142, 18.535810, 28.839865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537850, -0.036876, 0.842234,
		-0.321691, -0.914472, -0.245470,
		0.779251, -0.402965, 0.479986,
		10.798917, 18.414921, 28.983860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.941337, 18.126799, 29.005161>,  <10.253441, 18.696997, 28.647871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.941337, 18.126799, 29.005161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.295091, 18.200336, 29.176773>,  <10.507343, 18.244459, 29.279739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.295091, 18.200336, 29.176773>,  <9.941337, 18.126799, 29.005161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.295091, 18.200336, 29.176773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430291, -0.035057, 0.902009,
		0.180868, -0.982330, 0.048102,
		0.884385, 0.183842, 0.429029,
		10.560406, 18.255489, 29.305481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.993562, 17.587385, 29.612238>,  <9.941337, 18.126799, 29.005161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.993562, 17.587385, 29.612238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.256042, 17.880301, 29.685074>,  <10.413529, 18.056049, 29.728775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.256042, 17.880301, 29.685074>,  <9.993562, 17.587385, 29.612238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.256042, 17.880301, 29.685074> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367283, 0.099160, 0.924809,
		0.659170, -0.673738, 0.334025,
		0.656200, 0.732288, 0.182089,
		10.452902, 18.099987, 29.739700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.334762, 16.953476, 30.014650>,  <9.993562, 17.587385, 29.612238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.334762, 16.953476, 30.014650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.121094, 16.616802, 30.046230>,  <9.992893, 16.414799, 30.065178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.121094, 16.616802, 30.046230>,  <10.334762, 16.953476, 30.014650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.121094, 16.616802, 30.046230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507113, -0.393752, -0.766678,
		0.676387, -0.369498, 0.637159,
		-0.534169, -0.841683, 0.078952,
		9.960843, 16.364298, 30.069916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.785410, 16.341574, 29.913908>,  <10.334762, 16.953476, 30.014650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.785410, 16.341574, 29.913908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.424483, 16.189995, 29.831715>,  <10.207928, 16.099047, 29.782398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.424483, 16.189995, 29.831715>,  <10.785410, 16.341574, 29.913908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.424483, 16.189995, 29.831715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343459, -0.343929, -0.873927,
		0.260501, -0.859134, 0.440486,
		-0.902317, -0.378948, -0.205484,
		10.153789, 16.076311, 29.770069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.866771, 15.614649, 29.630728>,  <10.785410, 16.341574, 29.913908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.866771, 15.614649, 29.630728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.503304, 15.750194, 29.533159>,  <10.285225, 15.831520, 29.474617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.503304, 15.750194, 29.533159>,  <10.866771, 15.614649, 29.630728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.503304, 15.750194, 29.533159> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092050, -0.407250, -0.908666,
		-0.407250, -0.848127, 0.338862,
		0.908666, -0.338862, 0.243923,
		10.230704, 15.851852, 29.459982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.531548, 15.135536, 29.243076>,  <10.866771, 15.614649, 29.630728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.531548, 15.135536, 29.243076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.294744, 15.439861, 29.136726>,  <10.152662, 15.622457, 29.072916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.294744, 15.439861, 29.136726>,  <10.531548, 15.135536, 29.243076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.294744, 15.439861, 29.136726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116518, -0.245635, -0.962334,
		-0.797465, -0.600689, 0.056769,
		-0.592008, 0.760813, -0.265876,
		10.117142, 15.668105, 29.056963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.020089, 14.836240, 28.913076>,  <10.531548, 15.135536, 29.243076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.020089, 14.836240, 28.913076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.017368, 15.217021, 28.790609>,  <10.015736, 15.445490, 28.717129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.017368, 15.217021, 28.790609>,  <10.020089, 14.836240, 28.913076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.017368, 15.217021, 28.790609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032147, -0.306227, -0.951416,
		-0.999460, 0.003372, 0.032685,
		-0.006801, 0.951953, -0.306170,
		10.015328, 15.502606, 28.698759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.673943, 14.799409, 28.284061>,  <10.020089, 14.836240, 28.913076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.673943, 14.799409, 28.284061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.860449, 15.152225, 28.256939>,  <9.972353, 15.363915, 28.240665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.860449, 15.152225, 28.256939>,  <9.673943, 14.799409, 28.284061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.860449, 15.152225, 28.256939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173524, -0.166349, -0.970679,
		-0.867459, 0.440828, -0.230618,
		0.466266, 0.882042, -0.067807,
		10.000328, 15.416839, 28.236597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.394647, 15.271379, 27.693316>,  <9.673943, 14.799409, 28.284061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.394647, 15.271379, 27.693316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.766890, 15.398927, 27.765196>,  <9.990235, 15.475456, 27.808323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<9.766890, 15.398927, 27.765196>,  <9.394647, 15.271379, 27.693316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<9.766890, 15.398927, 27.765196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234286, -0.141739, -0.961780,
		-0.281213, 0.937140, -0.206610,
		0.930607, 0.318871, 0.179700,
		10.046072, 15.494588, 27.819105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<14.257579, 16.825888, 33.380772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.143096, 17.143105, 33.165672>,  <14.074406, 17.333435, 33.036613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.143096, 17.143105, 33.165672>,  <14.257579, 16.825888, 33.380772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.143096, 17.143105, 33.165672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124569, -0.525661, -0.841524,
		-0.950036, -0.307837, 0.051659,
		-0.286207, 0.793043, -0.537744,
		14.057234, 17.381018, 33.004349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.543206, 16.822405, 32.835964>,  <14.257579, 16.825888, 33.380772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.543206, 16.822405, 32.835964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.826003, 17.064486, 32.689598>,  <13.995682, 17.209734, 32.601780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.826003, 17.064486, 32.689598>,  <13.543206, 16.822405, 32.835964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.826003, 17.064486, 32.689598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037034, -0.485006, -0.873726,
		-0.706250, 0.631269, -0.320483,
		0.706993, 0.605201, -0.365914,
		14.038101, 17.246046, 32.579823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.325418, 17.163706, 32.195999>,  <13.543206, 16.822405, 32.835964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.325418, 17.163706, 32.195999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.725158, 17.150537, 32.201900>,  <13.965001, 17.142637, 32.205441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.725158, 17.150537, 32.201900>,  <13.325418, 17.163706, 32.195999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.725158, 17.150537, 32.201900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001415, -0.372782, -0.927918,
		0.036045, 0.927335, -0.372493,
		0.999349, -0.032919, 0.014749,
		14.024962, 17.140661, 32.206326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.546919, 17.222822, 31.511366>,  <13.325418, 17.163706, 32.195999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.546919, 17.222822, 31.511366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.861099, 17.071140, 31.707027>,  <14.049607, 16.980131, 31.824425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.861099, 17.071140, 31.707027>,  <13.546919, 17.222822, 31.511366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.861099, 17.071140, 31.707027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244674, -0.535707, -0.808178,
		0.568509, 0.754467, -0.327989,
		0.785450, -0.379206, 0.489153,
		14.096734, 16.957378, 31.853773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.210793, 17.469526, 31.177973>,  <13.546919, 17.222822, 31.511366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.210793, 17.469526, 31.177973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.234925, 17.122475, 31.375389>,  <14.249405, 16.914244, 31.493839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.234925, 17.122475, 31.375389>,  <14.210793, 17.469526, 31.177973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.234925, 17.122475, 31.375389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344630, -0.445932, -0.826060,
		0.936798, 0.219928, 0.272106,
		0.060332, -0.867627, 0.493542,
		14.253025, 16.862186, 31.523451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.842042, 17.194979, 30.899149>,  <14.210793, 17.469526, 31.177973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.842042, 17.194979, 30.899149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.660801, 16.871101, 31.048332>,  <14.552056, 16.676775, 31.137842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.660801, 16.871101, 31.048332>,  <14.842042, 17.194979, 30.899149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.660801, 16.871101, 31.048332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259046, -0.519905, -0.813999,
		0.852990, -0.272212, 0.445318,
		-0.453103, -0.809691, 0.372958,
		14.524870, 16.628195, 31.160219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.279489, 16.587955, 30.952553>,  <14.842042, 17.194979, 30.899149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.279489, 16.587955, 30.952553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.919143, 16.415920, 30.976107>,  <14.702935, 16.312698, 30.990238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.919143, 16.415920, 30.976107>,  <15.279489, 16.587955, 30.952553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.919143, 16.415920, 30.976107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173587, -0.481235, -0.859232,
		0.397883, -0.763830, 0.508186,
		-0.900864, -0.430089, 0.058884,
		14.648884, 16.286894, 30.993773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415390, 15.884387, 30.871243>,  <15.279489, 16.587955, 30.952553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.415390, 15.884387, 30.871243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.029576, 15.941204, 30.782249>,  <14.798088, 15.975294, 30.728853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.029576, 15.941204, 30.782249>,  <15.415390, 15.884387, 30.871243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.029576, 15.941204, 30.782249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082972, -0.636998, -0.766387,
		-0.250580, -0.757666, 0.602621,
		-0.964534, 0.142041, -0.222484,
		14.740216, 15.983816, 30.715504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.298697, 15.267139, 30.639244>,  <15.415390, 15.884387, 30.871243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.298697, 15.267139, 30.639244> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.973308, 15.472707, 30.530321>,  <14.778074, 15.596047, 30.464968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.973308, 15.472707, 30.530321>,  <15.298697, 15.267139, 30.639244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973308, 15.472707, 30.530321> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014816, -0.486363, -0.873631,
		-0.581417, -0.706639, 0.403256,
		-0.813471, 0.513919, -0.272310,
		14.729266, 15.626883, 30.448627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.800311, 14.806522, 30.338629>,  <15.298697, 15.267139, 30.639244>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.800311, 14.806522, 30.338629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.724968, 15.172462, 30.195761>,  <14.679762, 15.392027, 30.110041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.724968, 15.172462, 30.195761>,  <14.800311, 14.806522, 30.338629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.724968, 15.172462, 30.195761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099293, -0.379556, -0.919825,
		-0.977068, -0.137792, 0.162330,
		-0.188358, 0.914850, -0.357170,
		14.668461, 15.446918, 30.088610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.331716, 14.713510, 29.824583>,  <14.800311, 14.806522, 30.338629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.331716, 14.713510, 29.824583> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.489808, 15.071589, 29.742208>,  <14.584663, 15.286437, 29.692783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.489808, 15.071589, 29.742208>,  <14.331716, 14.713510, 29.824583>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.489808, 15.071589, 29.742208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072366, -0.253837, -0.964536,
		-0.915726, 0.366313, -0.165106,
		0.395232, 0.895199, -0.205937,
		14.608377, 15.340149, 29.680428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.036799, 14.988639, 29.159279>,  <14.331716, 14.713510, 29.824583>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.036799, 14.988639, 29.159279> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.348351, 15.239084, 29.173876>,  <14.535281, 15.389351, 29.182634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.348351, 15.239084, 29.173876>,  <14.036799, 14.988639, 29.159279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.348351, 15.239084, 29.173876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106387, -0.074556, -0.991526,
		-0.618086, 0.776160, -0.124680,
		0.778878, 0.626113, 0.036491,
		14.582014, 15.426918, 29.184824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.469175, 15.252672, 28.722584>,  <14.036799, 14.988639, 29.159279>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.469175, 15.252672, 28.722584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.211740, 14.969403, 28.606459>,  <13.057278, 14.799441, 28.536783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.211740, 14.969403, 28.606459>,  <13.469175, 15.252672, 28.722584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.211740, 14.969403, 28.606459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455678, 0.049780, 0.888751,
		-0.614938, 0.704282, -0.354737,
		-0.643590, -0.708173, -0.290314,
		13.018662, 14.756951, 28.519365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.792336, 15.491446, 29.012486>,  <13.469175, 15.252672, 28.722584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.792336, 15.491446, 29.012486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.772383, 15.100576, 28.929886>,  <12.760410, 14.866055, 28.880325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.772383, 15.100576, 28.929886>,  <12.792336, 15.491446, 29.012486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.772383, 15.100576, 28.929886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552142, -0.145308, 0.820990,
		-0.832256, 0.154973, -0.532291,
		-0.049885, -0.977174, -0.206501,
		12.757418, 14.807425, 28.867935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.089295, 15.235817, 29.082109>,  <12.792336, 15.491446, 29.012486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.089295, 15.235817, 29.082109> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.313298, 14.907146, 29.124516>,  <12.447701, 14.709944, 29.149960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.313298, 14.907146, 29.124516>,  <12.089295, 15.235817, 29.082109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.313298, 14.907146, 29.124516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469925, -0.209642, 0.857450,
		-0.682321, -0.529998, -0.503528,
		0.560008, -0.821676, 0.106016,
		12.481300, 14.660644, 29.156321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.618032, 14.703256, 29.278095>,  <12.089295, 15.235817, 29.082109>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.618032, 14.703256, 29.278095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.984808, 14.605771, 29.404476>,  <12.204873, 14.547280, 29.480305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.984808, 14.605771, 29.404476>,  <11.618032, 14.703256, 29.278095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.984808, 14.605771, 29.404476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390674, -0.387141, 0.835162,
		-0.081219, -0.889228, -0.450197,
		0.916939, -0.243711, 0.315955,
		12.259890, 14.532658, 29.499262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.542410, 14.088134, 29.627333>,  <11.618032, 14.703256, 29.278095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.542410, 14.088134, 29.627333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.889388, 14.242725, 29.752663>,  <12.097575, 14.335481, 29.827862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.889388, 14.242725, 29.752663>,  <11.542410, 14.088134, 29.627333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.889388, 14.242725, 29.752663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167910, -0.365406, 0.915579,
		0.468343, -0.846825, -0.252076,
		0.867445, 0.386479, 0.313326,
		12.149622, 14.358669, 29.846661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.704133, 13.562765, 30.072683>,  <11.542410, 14.088134, 29.627333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.704133, 13.562765, 30.072683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.956440, 13.859328, 30.164288>,  <12.107824, 14.037266, 30.219250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.956440, 13.859328, 30.164288>,  <11.704133, 13.562765, 30.072683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.956440, 13.859328, 30.164288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195054, -0.134162, 0.971573,
		0.751057, -0.657506, 0.059990,
		0.630767, 0.741408, 0.229012,
		12.145670, 14.081751, 30.232992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.056315, 13.320931, 30.555038>,  <11.704133, 13.562765, 30.072683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.056315, 13.320931, 30.555038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.074150, 13.719121, 30.588608>,  <12.084851, 13.958035, 30.608749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.074150, 13.719121, 30.588608>,  <12.056315, 13.320931, 30.555038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.074150, 13.719121, 30.588608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196252, -0.073643, 0.977784,
		0.979539, -0.060067, 0.192080,
		0.044588, 0.995474, 0.083925,
		12.087526, 14.017763, 30.613785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.168147, 13.499645, 31.287132>,  <12.056315, 13.320931, 30.555038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.168147, 13.499645, 31.287132> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.139949, 13.886685, 31.190153>,  <12.123030, 14.118910, 31.131966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.139949, 13.886685, 31.190153>,  <12.168147, 13.499645, 31.287132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.139949, 13.886685, 31.190153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339489, 0.205268, 0.917939,
		0.937964, 0.147019, 0.314019,
		-0.070496, 0.967600, -0.242446,
		12.118800, 14.176966, 31.117420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.444490, 13.915416, 31.786634>,  <12.168147, 13.499645, 31.287132>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.444490, 13.915416, 31.786634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.209396, 14.186641, 31.610090>,  <12.068340, 14.349376, 31.504164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.209396, 14.186641, 31.610090>,  <12.444490, 13.915416, 31.786634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.209396, 14.186641, 31.610090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298100, 0.325653, 0.897266,
		0.752133, 0.658924, 0.010733,
		-0.587735, 0.678063, -0.441360,
		12.033076, 14.390059, 31.477682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.545193, 14.486733, 32.140495>,  <12.444490, 13.915416, 31.786634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.545193, 14.486733, 32.140495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.192874, 14.526687, 31.955359>,  <11.981483, 14.550658, 31.844276>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.192874, 14.526687, 31.955359>,  <12.545193, 14.486733, 32.140495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.192874, 14.526687, 31.955359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395346, 0.382806, 0.834962,
		0.260576, 0.918413, -0.297686,
		-0.880796, 0.099882, -0.462841,
		11.928635, 14.556651, 31.816505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.305786, 15.137874, 32.385811>,  <12.545193, 14.486733, 32.140495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.305786, 15.137874, 32.385811> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.985404, 14.953655, 32.232777>,  <11.793175, 14.843124, 32.140957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.985404, 14.953655, 32.232777>,  <12.305786, 15.137874, 32.385811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.985404, 14.953655, 32.232777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574394, 0.410756, 0.708061,
		-0.168947, 0.786878, -0.593532,
		-0.800954, -0.460546, -0.382583,
		11.745117, 14.815492, 32.118000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.791012, 15.657842, 32.371880>,  <12.305786, 15.137874, 32.385811>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.791012, 15.657842, 32.371880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.608204, 15.302093, 32.376766>,  <11.498519, 15.088643, 32.379700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.608204, 15.302093, 32.376766>,  <11.791012, 15.657842, 32.371880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.608204, 15.302093, 32.376766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735826, 0.385763, 0.556549,
		-0.499693, 0.245363, -0.830725,
		-0.457020, -0.889373, 0.012219,
		11.471098, 15.035281, 32.380432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.055815, 15.799453, 32.336330>,  <11.791012, 15.657842, 32.371880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.055815, 15.799453, 32.336330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.071556, 15.420604, 32.463711>,  <11.081000, 15.193295, 32.540138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.071556, 15.420604, 32.463711>,  <11.055815, 15.799453, 32.336330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.071556, 15.420604, 32.463711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712486, 0.196849, 0.673509,
		-0.700582, -0.253395, -0.667065,
		0.039352, -0.947123, 0.318449,
		11.083362, 15.136467, 32.559246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.360702, 15.473577, 32.347057>,  <11.055815, 15.799453, 32.336330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.360702, 15.473577, 32.347057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.587137, 15.280091, 32.614059>,  <10.722999, 15.164001, 32.774261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.587137, 15.280091, 32.614059>,  <10.360702, 15.473577, 32.347057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.587137, 15.280091, 32.614059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721970, 0.099902, 0.684674,
		-0.397871, -0.869507, -0.292673,
		0.566090, -0.483713, 0.667506,
		10.756964, 15.134977, 32.814312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.926676, 15.809423, 32.869431>,  <10.360702, 15.473577, 32.347057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.926676, 15.809423, 32.869431> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.745658, 16.157518, 32.791569>,  <9.637048, 16.366375, 32.744850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.745658, 16.157518, 32.791569>,  <9.926676, 15.809423, 32.869431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.745658, 16.157518, 32.791569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042016, -0.238853, -0.970147,
		-0.890752, -0.430855, 0.144655,
		-0.452544, 0.870238, -0.194655,
		9.609895, 16.418591, 32.733173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.291448, 15.619739, 32.608486>,  <9.926676, 15.809423, 32.869431>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.291448, 15.619739, 32.608486> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.323867, 15.998730, 32.484734>,  <9.343318, 16.226124, 32.410480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.323867, 15.998730, 32.484734>,  <9.291448, 15.619739, 32.608486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.323867, 15.998730, 32.484734> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385637, -0.256421, -0.886303,
		-0.919084, 0.191144, 0.344600,
		0.081049, 0.947477, -0.309384,
		9.348182, 16.282972, 32.391918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.814373, 15.652796, 32.161087>,  <9.291448, 15.619739, 32.608486>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.814373, 15.652796, 32.161087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.041321, 15.967999, 32.065472>,  <9.177489, 16.157120, 32.008102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.041321, 15.967999, 32.065472>,  <8.814373, 15.652796, 32.161087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.041321, 15.967999, 32.065472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114723, -0.211809, -0.970554,
		-0.815433, 0.578086, -0.029771,
		0.567369, 0.788006, -0.239036,
		9.211532, 16.204401, 31.993761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.405785, 16.095205, 31.613203>,  <8.814373, 15.652796, 32.161087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.405785, 16.095205, 31.613203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.799522, 16.163881, 31.597261>,  <9.035765, 16.205088, 31.587696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.799522, 16.163881, 31.597261>,  <8.405785, 16.095205, 31.613203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.799522, 16.163881, 31.597261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015265, -0.142226, -0.989716,
		-0.175593, 0.974830, -0.137379,
		0.984344, 0.171690, -0.039855,
		9.094826, 16.215389, 31.585304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.509239, 16.445202, 31.005259>,  <8.405785, 16.095205, 31.613203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.509239, 16.445202, 31.005259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.891138, 16.353668, 31.081249>,  <9.120277, 16.298748, 31.126842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<8.891138, 16.353668, 31.081249>,  <8.509239, 16.445202, 31.005259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<8.891138, 16.353668, 31.081249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161881, -0.136012, -0.977392,
		0.249499, 0.963917, -0.092813,
		0.954749, -0.228834, 0.189975,
		9.177563, 16.285019, 31.138243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.787480, 16.862549, 30.563286>,  <8.509239, 16.445202, 31.005259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.787480, 16.862549, 30.563286> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.038728, 16.567190, 30.661461>,  <9.189476, 16.389975, 30.720366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.038728, 16.567190, 30.661461>,  <8.787480, 16.862549, 30.563286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.038728, 16.567190, 30.661461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222028, -0.132233, -0.966032,
		0.745768, 0.661277, 0.080886,
		0.628119, -0.738395, 0.245437,
		9.227163, 16.345673, 30.735092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.360096, 17.119255, 30.395189>,  <8.787480, 16.862549, 30.563286>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.360096, 17.119255, 30.395189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.370524, 16.719397, 30.397327>,  <9.376781, 16.479481, 30.398609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.370524, 16.719397, 30.397327>,  <9.360096, 17.119255, 30.395189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.370524, 16.719397, 30.397327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208904, 0.000221, -0.977936,
		0.977589, 0.026612, 0.208835,
		0.026071, -0.999646, 0.005344,
		9.378345, 16.419502, 30.398930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.036398, 17.471350, 30.409252>,  <9.360096, 17.119255, 30.395189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.036398, 17.471350, 30.409252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.230553, 17.806858, 30.310570>,  <10.347046, 18.008163, 30.251360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.230553, 17.806858, 30.310570>,  <10.036398, 17.471350, 30.409252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.230553, 17.806858, 30.310570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007822, 0.277999, 0.960550,
		0.874264, -0.468168, 0.128377,
		0.485387, 0.838770, -0.246707,
		10.376169, 18.058489, 30.236557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.708605, 17.455971, 30.807028>,  <10.036398, 17.471350, 30.409252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.708605, 17.455971, 30.807028> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.616807, 17.830627, 30.701176>,  <10.561728, 18.055422, 30.637665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.616807, 17.830627, 30.701176>,  <10.708605, 17.455971, 30.807028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.616807, 17.830627, 30.701176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225377, 0.315639, 0.921725,
		0.946857, 0.151888, -0.283535,
		-0.229494, 0.936644, -0.264633,
		10.547958, 18.111620, 30.621786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.232718, 17.912617, 31.032715>,  <10.708605, 17.455971, 30.807028>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.232718, 17.912617, 31.032715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.909863, 18.145281, 30.992308>,  <10.716151, 18.284880, 30.968063>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.909863, 18.145281, 30.992308>,  <11.232718, 17.912617, 31.032715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.909863, 18.145281, 30.992308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179013, 0.404190, 0.896986,
		0.562571, 0.705906, -0.430361,
		-0.807135, 0.581659, -0.101019,
		10.667723, 18.319778, 30.962002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.501876, 18.535570, 31.166330>,  <11.232718, 17.912617, 31.032715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.501876, 18.535570, 31.166330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.112288, 18.566711, 31.251490>,  <10.878536, 18.585396, 31.302586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.112288, 18.566711, 31.251490>,  <11.501876, 18.535570, 31.166330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.112288, 18.566711, 31.251490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225966, 0.408195, 0.884486,
		-0.018044, 0.909569, -0.415161,
		-0.973968, 0.077853, 0.212897,
		10.820098, 18.590067, 31.315359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.457542, 19.185734, 31.465458>,  <11.501876, 18.535570, 31.166330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.457542, 19.185734, 31.465458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.096024, 19.066425, 31.588217>,  <10.879112, 18.994841, 31.661871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.096024, 19.066425, 31.588217>,  <11.457542, 19.185734, 31.465458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.096024, 19.066425, 31.588217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088793, 0.570812, 0.816265,
		-0.418649, 0.764988, -0.489414,
		-0.903797, -0.298272, 0.306895,
		10.824884, 18.976944, 31.680285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.050002, 19.725666, 31.656479>,  <11.457542, 19.185734, 31.465458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.050002, 19.725666, 31.656479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.880757, 19.428198, 31.863527>,  <10.779210, 19.249716, 31.987757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.880757, 19.428198, 31.863527>,  <11.050002, 19.725666, 31.656479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.880757, 19.428198, 31.863527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059000, 0.592675, 0.803278,
		-0.904155, 0.309337, -0.294644,
		-0.423112, -0.743672, 0.517619,
		10.753824, 19.205097, 32.018814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.344708, 19.953526, 31.951998>,  <11.050002, 19.725666, 31.656479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.344708, 19.953526, 31.951998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.514277, 19.662378, 32.167591>,  <10.616017, 19.487690, 32.296947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.514277, 19.662378, 32.167591>,  <10.344708, 19.953526, 31.951998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.514277, 19.662378, 32.167591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209567, 0.500120, 0.840216,
		-0.881121, -0.469136, 0.059473,
		0.423919, -0.727868, 0.538981,
		10.641452, 19.444017, 32.329285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.058969, 20.144798, 32.554852>,  <10.344708, 19.953526, 31.951998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.058969, 20.144798, 32.554852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.295876, 19.846457, 32.676785>,  <10.438020, 19.667452, 32.749943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.295876, 19.846457, 32.676785>,  <10.058969, 20.144798, 32.554852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.295876, 19.846457, 32.676785> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012172, 0.386565, 0.922182,
		-0.805650, -0.542468, 0.238028,
		0.592267, -0.745853, 0.304833,
		10.473556, 19.622700, 32.768234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.613497, 19.868835, 33.108131>,  <10.058969, 20.144798, 32.554852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.613497, 19.868835, 33.108131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.992454, 19.750134, 33.156105>,  <10.219828, 19.678911, 33.184891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<9.992454, 19.750134, 33.156105>,  <9.613497, 19.868835, 33.108131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<9.992454, 19.750134, 33.156105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033461, 0.464488, 0.884947,
		-0.318324, -0.834378, 0.449982,
		0.947391, -0.296756, 0.119939,
		10.276671, 19.661106, 33.192085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<14.087448, 15.505525, 18.184025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.427804, 15.715633, 18.187515>,  <14.632017, 15.841699, 18.189610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.427804, 15.715633, 18.187515>,  <14.087448, 15.505525, 18.184025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.427804, 15.715633, 18.187515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083804, 0.119318, 0.989313,
		0.518617, -0.842528, 0.145546,
		0.850890, 0.525272, 0.008727,
		14.683071, 15.873215, 18.190134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.631476, 15.213511, 18.693932>,  <14.087448, 15.505525, 18.184025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.631476, 15.213511, 18.693932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.719742, 15.596667, 18.620449>,  <14.772701, 15.826562, 18.576359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.719742, 15.596667, 18.620449>,  <14.631476, 15.213511, 18.693932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.719742, 15.596667, 18.620449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073714, 0.204191, 0.976152,
		0.972561, -0.201859, 0.115668,
		0.220663, 0.957893, -0.183708,
		14.785941, 15.884035, 18.565336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.147158, 15.431274, 19.182894>,  <14.631476, 15.213511, 18.693932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.147158, 15.431274, 19.182894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.005205, 15.785041, 19.061653>,  <14.920033, 15.997300, 18.988909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.005205, 15.785041, 19.061653>,  <15.147158, 15.431274, 19.182894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.005205, 15.785041, 19.061653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046840, 0.306976, 0.950564,
		0.933737, 0.351534, -0.067514,
		-0.354881, 0.884415, -0.303100,
		14.898741, 16.050365, 18.970722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.306302, 15.909934, 19.711264>,  <15.147158, 15.431274, 19.182894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.306302, 15.909934, 19.711264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.062115, 16.174301, 19.536671>,  <14.915603, 16.332922, 19.431915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.062115, 16.174301, 19.536671>,  <15.306302, 15.909934, 19.711264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.062115, 16.174301, 19.536671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260558, 0.352835, 0.898675,
		0.747957, 0.662341, -0.043187,
		-0.610468, 0.660917, -0.436483,
		14.878974, 16.372576, 19.405725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.562753, 16.513449, 19.993240>,  <15.306302, 15.909934, 19.711264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.562753, 16.513449, 19.993240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.188715, 16.577848, 19.866953>,  <14.964293, 16.616488, 19.791182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.188715, 16.577848, 19.866953>,  <15.562753, 16.513449, 19.993240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.188715, 16.577848, 19.866953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221312, 0.430522, 0.875027,
		0.276801, 0.888105, -0.366948,
		-0.935095, 0.160998, -0.315717,
		14.908187, 16.626148, 19.772238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.415790, 17.024807, 20.376238>,  <15.562753, 16.513449, 19.993240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.415790, 17.024807, 20.376238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.058366, 16.893719, 20.253504>,  <14.843911, 16.815065, 20.179863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.058366, 16.893719, 20.253504>,  <15.415790, 17.024807, 20.376238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.058366, 16.893719, 20.253504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398087, 0.262418, 0.879013,
		-0.207552, 0.907598, -0.364948,
		-0.893560, -0.327722, -0.306837,
		14.790298, 16.795403, 20.161453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.872923, 17.605297, 20.322077>,  <15.415790, 17.024807, 20.376238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.872923, 17.605297, 20.322077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.692725, 17.253962, 20.386045>,  <14.584606, 17.043159, 20.424427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.692725, 17.253962, 20.386045>,  <14.872923, 17.605297, 20.322077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.692725, 17.253962, 20.386045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611529, 0.434093, 0.661509,
		-0.650451, 0.200209, -0.732687,
		-0.450495, -0.878339, 0.159923,
		14.557577, 16.990459, 20.434023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.274174, 17.862759, 20.544430>,  <14.872923, 17.605297, 20.322077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.274174, 17.862759, 20.544430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.256982, 17.472322, 20.629658>,  <14.246667, 17.238060, 20.680796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.256982, 17.472322, 20.629658>,  <14.274174, 17.862759, 20.544430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.256982, 17.472322, 20.629658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742388, 0.173924, 0.647001,
		-0.668590, -0.130374, -0.732113,
		-0.042980, -0.976091, 0.213071,
		14.244088, 17.179495, 20.693579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.629224, 17.651943, 20.470242>,  <14.274174, 17.862759, 20.544430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.629224, 17.651943, 20.470242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.747297, 17.359051, 20.715746>,  <13.818141, 17.183315, 20.863049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.747297, 17.359051, 20.715746>,  <13.629224, 17.651943, 20.470242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.747297, 17.359051, 20.715746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763232, 0.205721, 0.612499,
		-0.574755, -0.649243, -0.498137,
		0.295184, -0.732231, 0.613763,
		13.835853, 17.139381, 20.899876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.046862, 17.259836, 20.626986>,  <13.629224, 17.651943, 20.470242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.046862, 17.259836, 20.626986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.303686, 17.172333, 20.920897>,  <13.457781, 17.119831, 21.097244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.303686, 17.172333, 20.920897>,  <13.046862, 17.259836, 20.626986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.303686, 17.172333, 20.920897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658451, 0.333558, 0.674671,
		-0.392684, -0.916996, 0.070121,
		0.642061, -0.218761, 0.734780,
		13.496305, 17.106705, 21.141331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.765536, 16.783369, 21.049591>,  <13.046862, 17.259836, 20.626986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.765536, 16.783369, 21.049591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.049346, 16.943420, 21.281616>,  <13.219632, 17.039452, 21.420832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.049346, 16.943420, 21.281616>,  <12.765536, 16.783369, 21.049591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.049346, 16.943420, 21.281616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636888, 0.011841, 0.770865,
		0.301578, -0.916382, 0.263240,
		0.709524, 0.400130, 0.580061,
		13.262203, 17.063459, 21.455635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.516662, 16.715490, 21.753817>,  <12.765536, 16.783369, 21.049591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.516662, 16.715490, 21.753817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.827281, 16.958111, 21.822016>,  <13.013653, 17.103683, 21.862936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.827281, 16.958111, 21.822016>,  <12.516662, 16.715490, 21.753817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.827281, 16.958111, 21.822016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391430, 0.252393, 0.884918,
		0.493715, -0.753920, 0.433417,
		0.776549, 0.606550, 0.170497,
		13.060246, 17.140076, 21.873165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.529851, 15.907698, 21.913721>,  <12.516662, 16.715490, 21.753817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.529851, 15.907698, 21.913721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.262636, 15.640318, 22.044504>,  <12.102307, 15.479890, 22.122974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.262636, 15.640318, 22.044504>,  <12.529851, 15.907698, 21.913721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.262636, 15.640318, 22.044504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029461, -0.462798, -0.885974,
		0.743544, -0.582232, 0.328859,
		-0.668038, -0.668450, 0.326958,
		12.062225, 15.439783, 22.142591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.844279, 15.200477, 21.898472>,  <12.529851, 15.907698, 21.913721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.844279, 15.200477, 21.898472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.451672, 15.228372, 21.827188>,  <12.216107, 15.245109, 21.784418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.451672, 15.228372, 21.827188>,  <12.844279, 15.200477, 21.898472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.451672, 15.228372, 21.827188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154736, -0.258726, -0.953476,
		-0.112600, -0.963430, 0.243154,
		-0.981518, 0.069737, -0.178210,
		12.157216, 15.249292, 21.773726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.679222, 14.602902, 21.534786>,  <12.844279, 15.200477, 21.898472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.679222, 14.602902, 21.534786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.348575, 14.821362, 21.480494>,  <12.150186, 14.952437, 21.447918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.348575, 14.821362, 21.480494>,  <12.679222, 14.602902, 21.534786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.348575, 14.821362, 21.480494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022567, -0.273167, -0.961702,
		-0.562309, -0.791898, 0.238130,
		-0.826619, 0.546148, -0.135733,
		12.100589, 14.985206, 21.439774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.192162, 14.199829, 21.161425>,  <12.679222, 14.602902, 21.534786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.192162, 14.199829, 21.161425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.100848, 14.586129, 21.112085>,  <12.046061, 14.817909, 21.082481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.100848, 14.586129, 21.112085>,  <12.192162, 14.199829, 21.161425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.100848, 14.586129, 21.112085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127783, -0.155319, -0.979565,
		-0.965173, -0.207855, 0.158863,
		-0.228282, 0.965749, -0.123350,
		12.032363, 14.875854, 21.075081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.548997, 14.209824, 20.737507>,  <12.192162, 14.199829, 21.161425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.548997, 14.209824, 20.737507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.682649, 14.582705, 20.681866>,  <11.762840, 14.806435, 20.648481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.682649, 14.582705, 20.681866>,  <11.548997, 14.209824, 20.737507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.682649, 14.582705, 20.681866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101959, -0.110971, -0.988580,
		-0.936996, 0.344497, 0.057968,
		0.334130, 0.932205, -0.139104,
		11.782887, 14.862368, 20.640135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.073524, 14.459641, 20.247147>,  <11.548997, 14.209824, 20.737507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.073524, 14.459641, 20.247147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.417091, 14.664353, 20.239735>,  <11.623232, 14.787180, 20.235289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.417091, 14.664353, 20.239735>,  <11.073524, 14.459641, 20.247147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.417091, 14.664353, 20.239735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053201, -0.125155, -0.990710,
		-0.509343, 0.849952, -0.134725,
		0.858917, 0.511779, -0.018529,
		11.674767, 14.817887, 20.234177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.077541, 14.933794, 19.683268>,  <11.073524, 14.459641, 20.247147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.077541, 14.933794, 19.683268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.469518, 14.887210, 19.747957>,  <11.704703, 14.859260, 19.786770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.469518, 14.887210, 19.747957>,  <11.077541, 14.933794, 19.683268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.469518, 14.887210, 19.747957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153462, -0.076761, -0.985169,
		0.127147, 0.990225, -0.057349,
		0.979940, -0.116461, 0.161722,
		11.763500, 14.852272, 19.796474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.365862, 15.400690, 19.151661>,  <11.077541, 14.933794, 19.683268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.365862, 15.400690, 19.151661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.659257, 15.154791, 19.267647>,  <11.835294, 15.007252, 19.337238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.659257, 15.154791, 19.267647>,  <11.365862, 15.400690, 19.151661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.659257, 15.154791, 19.267647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410217, 0.060225, -0.909997,
		0.541956, 0.786421, 0.296355,
		0.733489, -0.614748, 0.289964,
		11.879304, 14.970366, 19.354635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.996964, 15.799598, 18.953773>,  <11.365862, 15.400690, 19.151661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.996964, 15.799598, 18.953773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.089311, 15.412251, 18.991640>,  <12.144719, 15.179842, 19.014360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.089311, 15.412251, 18.991640>,  <11.996964, 15.799598, 18.953773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.089311, 15.412251, 18.991640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552868, 0.050499, -0.831738,
		0.800648, 0.244358, 0.547039,
		0.230867, -0.968369, 0.094665,
		12.158570, 15.121739, 19.020041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.716767, 15.813444, 18.648975>,  <11.996964, 15.799598, 18.953773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.716767, 15.813444, 18.648975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.601936, 15.430284, 18.647467>,  <12.533038, 15.200387, 18.646563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.601936, 15.430284, 18.647467>,  <12.716767, 15.813444, 18.648975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.601936, 15.430284, 18.647467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500747, -0.146714, -0.853069,
		0.816602, -0.246783, 0.521784,
		-0.287076, -0.957900, -0.003769,
		12.515814, 15.142914, 18.646336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.374704, 15.334185, 18.505039>,  <12.716767, 15.813444, 18.648975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.374704, 15.334185, 18.505039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.063485, 15.105000, 18.401999>,  <12.876754, 14.967490, 18.340174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.063485, 15.105000, 18.401999>,  <13.374704, 15.334185, 18.505039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.063485, 15.105000, 18.401999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441825, -0.207588, -0.872753,
		0.446578, -0.792858, 0.414661,
		-0.778048, -0.572959, -0.257600,
		12.830070, 14.933113, 18.324718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.661175, 14.657937, 18.283464>,  <13.374704, 15.334185, 18.505039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.661175, 14.657937, 18.283464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.297599, 14.687362, 18.119308>,  <13.079453, 14.705016, 18.020815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.297599, 14.687362, 18.119308>,  <13.661175, 14.657937, 18.283464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.297599, 14.687362, 18.119308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392071, -0.183983, -0.901349,
		-0.141807, -0.980173, 0.138389,
		-0.908940, 0.073559, -0.410387,
		13.024917, 14.709430, 17.996193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.679283, 14.037090, 17.834641>,  <13.661175, 14.657937, 18.283464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.679283, 14.037090, 17.834641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418923, 14.317556, 17.718231>,  <13.262708, 14.485836, 17.648386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.418923, 14.317556, 17.718231>,  <13.679283, 14.037090, 17.834641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.418923, 14.317556, 17.718231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461981, 0.061641, -0.884745,
		-0.602415, -0.710328, -0.364048,
		-0.650900, 0.701167, -0.291025,
		13.223654, 14.527906, 17.630924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.174502, 13.874129, 17.262972>,  <13.679283, 14.037090, 17.834641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.174502, 13.874129, 17.262972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296770, 14.253257, 17.299210>,  <13.370131, 14.480733, 17.320953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.296770, 14.253257, 17.299210>,  <13.174502, 13.874129, 17.262972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.296770, 14.253257, 17.299210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552682, -0.099146, -0.827474,
		-0.775312, 0.303004, -0.554147,
		0.305669, 0.947818, 0.090596,
		13.388471, 14.537602, 17.326387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.151590, 13.249513, 17.742859>,  <13.174502, 13.874129, 17.262972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.151590, 13.249513, 17.742859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.796464, 13.433332, 17.733074>,  <12.583388, 13.543624, 17.727203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.796464, 13.433332, 17.733074>,  <13.151590, 13.249513, 17.742859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.796464, 13.433332, 17.733074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408100, 0.761627, -0.503367,
		-0.212691, -0.456880, -0.863726,
		-0.887815, 0.459549, -0.024462,
		12.530119, 13.571198, 17.725737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.827711, 13.340453, 17.605145>,  <13.151590, 13.249513, 17.742859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.827711, 13.340453, 17.605145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.202537, 13.470166, 17.656919>,  <14.427432, 13.547994, 17.687984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.202537, 13.470166, 17.656919>,  <13.827711, 13.340453, 17.605145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.202537, 13.470166, 17.656919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040396, -0.267531, 0.962702,
		0.346816, -0.907341, -0.237594,
		0.937063, 0.324282, 0.129437,
		14.483656, 13.567451, 17.695751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.155282, 12.825647, 17.949228>,  <13.827711, 13.340453, 17.605145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.155282, 12.825647, 17.949228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.377874, 13.146871, 18.034481>,  <14.511430, 13.339604, 18.085632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.377874, 13.146871, 18.034481>,  <14.155282, 12.825647, 17.949228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.377874, 13.146871, 18.034481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106577, -0.185408, 0.976865,
		0.823997, -0.566322, -0.017588,
		0.556481, 0.803059, 0.213132,
		14.544819, 13.387788, 18.098421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.543581, 12.535652, 18.437534>,  <14.155282, 12.825647, 17.949228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.543581, 12.535652, 18.437534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.594133, 12.928501, 18.493338>,  <14.624465, 13.164210, 18.526819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.594133, 12.928501, 18.493338>,  <14.543581, 12.535652, 18.437534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.594133, 12.928501, 18.493338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060479, -0.148003, 0.987136,
		0.990137, -0.116317, -0.078102,
		0.126380, 0.982123, 0.139508,
		14.632048, 13.223138, 18.535191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.002524, 12.551517, 19.008383>,  <14.543581, 12.535652, 18.437534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.002524, 12.551517, 19.008383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.827336, 12.910897, 18.995960>,  <14.722223, 13.126526, 18.988506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.827336, 12.910897, 18.995960>,  <15.002524, 12.551517, 19.008383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.827336, 12.910897, 18.995960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185368, -0.056452, 0.981046,
		0.879670, 0.435427, 0.191269,
		-0.437971, 0.898452, -0.031055,
		14.695945, 13.180433, 18.986645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.291263, 12.988889, 19.551342>,  <15.002524, 12.551517, 19.008383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.291263, 12.988889, 19.551342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926477, 13.133380, 19.473537>,  <14.707606, 13.220075, 19.426855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.926477, 13.133380, 19.473537>,  <15.291263, 12.988889, 19.551342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.926477, 13.133380, 19.473537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158570, 0.126924, 0.979156,
		0.378388, 0.923799, -0.058470,
		-0.911964, 0.361229, -0.194514,
		14.652888, 13.241749, 19.415184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.248708, 13.586664, 19.975710>,  <15.291263, 12.988889, 19.551342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.248708, 13.586664, 19.975710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864726, 13.524848, 19.882240>,  <14.634336, 13.487758, 19.826159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.864726, 13.524848, 19.882240>,  <15.248708, 13.586664, 19.975710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.864726, 13.524848, 19.882240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258883, 0.170522, 0.950737,
		-0.107081, 0.973159, -0.203702,
		-0.959955, -0.154541, -0.233675,
		14.576739, 13.478486, 19.812138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.867772, 14.075563, 20.305916>,  <15.248708, 13.586664, 19.975710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.867772, 14.075563, 20.305916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.605100, 13.780694, 20.242237>,  <14.447496, 13.603772, 20.204029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.605100, 13.780694, 20.242237>,  <14.867772, 14.075563, 20.305916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.605100, 13.780694, 20.242237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362606, 0.123527, 0.923720,
		-0.661277, 0.664315, -0.348422,
		-0.656681, -0.737174, -0.159199,
		14.408095, 13.559542, 20.194477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.408786, 14.331500, 20.601494>,  <14.867772, 14.075563, 20.305916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.408786, 14.331500, 20.601494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.304684, 13.945971, 20.578474>,  <14.242222, 13.714653, 20.564663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.304684, 13.945971, 20.578474>,  <14.408786, 14.331500, 20.601494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.304684, 13.945971, 20.578474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302372, 0.024754, 0.952869,
		-0.916972, 0.265391, -0.297875,
		-0.260256, -0.963823, -0.057548,
		14.226606, 13.656823, 20.561209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806075, 14.287677, 20.885469>,  <14.408786, 14.331500, 20.601494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806075, 14.287677, 20.885469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.933351, 13.909898, 20.918398>,  <14.009716, 13.683230, 20.938154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.933351, 13.909898, 20.918398>,  <13.806075, 14.287677, 20.885469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.933351, 13.909898, 20.918398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332754, -0.029951, 0.942538,
		-0.887711, -0.327297, -0.323798,
		0.318188, -0.944447, 0.082322,
		14.028807, 13.626564, 20.943094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.242360, 14.001187, 21.226118>,  <13.806075, 14.287677, 20.885469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.242360, 14.001187, 21.226118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.569560, 13.773599, 21.259939>,  <13.765880, 13.637046, 21.280231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.569560, 13.773599, 21.259939>,  <13.242360, 14.001187, 21.226118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.569560, 13.773599, 21.259939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162309, -0.087291, 0.982871,
		-0.551845, -0.817711, -0.163753,
		0.817999, -0.568971, 0.084551,
		13.814960, 13.602907, 21.285305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.124811, 13.542748, 21.714924>,  <13.242360, 14.001187, 21.226118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.124811, 13.542748, 21.714924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.524304, 13.526628, 21.702869>,  <13.764000, 13.516956, 21.695637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.524304, 13.526628, 21.702869>,  <13.124811, 13.542748, 21.714924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.524304, 13.526628, 21.702869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023376, -0.158756, 0.987041,
		-0.044561, -0.986495, -0.157613,
		0.998733, -0.040299, -0.030134,
		13.823924, 13.514538, 21.693829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.267571, 12.953414, 22.301331>,  <13.124811, 13.542748, 21.714924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.267571, 12.953414, 22.301331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.601415, 13.169492, 22.258217>,  <13.801721, 13.299138, 22.232347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.601415, 13.169492, 22.258217>,  <13.267571, 12.953414, 22.301331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.601415, 13.169492, 22.258217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118443, 0.015108, 0.992846,
		0.537959, -0.841404, -0.051373,
		0.834609, 0.540195, -0.107786,
		13.851797, 13.331551, 22.225882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.827417, 12.671828, 22.705704>,  <13.267571, 12.953414, 22.301331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.827417, 12.671828, 22.705704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.992941, 13.032540, 22.655815>,  <14.092256, 13.248967, 22.625881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.992941, 13.032540, 22.655815>,  <13.827417, 12.671828, 22.705704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.992941, 13.032540, 22.655815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254505, 0.016944, 0.966923,
		0.874064, -0.431865, -0.222495,
		0.413810, 0.901779, -0.124722,
		14.117084, 13.303074, 22.618399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.440067, 12.686733, 23.118793>,  <13.827417, 12.671828, 22.705704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.440067, 12.686733, 23.118793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.334517, 13.068583, 23.063568>,  <14.271188, 13.297692, 23.030432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.334517, 13.068583, 23.063568>,  <14.440067, 12.686733, 23.118793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.334517, 13.068583, 23.063568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231682, 0.201678, 0.951656,
		0.936319, 0.219131, -0.274387,
		-0.263875, 0.954624, -0.138066,
		14.255355, 13.354970, 23.022148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.854437, 13.008688, 23.537149>,  <14.440067, 12.686733, 23.118793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.854437, 13.008688, 23.537149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.579314, 13.294614, 23.486609>,  <14.414241, 13.466169, 23.456284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.579314, 13.294614, 23.486609>,  <14.854437, 13.008688, 23.537149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.579314, 13.294614, 23.486609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125275, 0.288339, 0.949298,
		0.715003, 0.637104, -0.287870,
		-0.687806, 0.714814, -0.126350,
		14.372972, 13.509058, 23.448704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.119692, 13.642520, 23.903736>,  <14.854437, 13.008688, 23.537149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.119692, 13.642520, 23.903736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.723557, 13.689373, 23.874043>,  <14.485875, 13.717484, 23.856226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.723557, 13.689373, 23.874043>,  <15.119692, 13.642520, 23.903736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.723557, 13.689373, 23.874043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029510, 0.345035, 0.938126,
		0.135497, 0.931252, -0.338245,
		-0.990338, 0.117132, -0.074232,
		14.426455, 13.724513, 23.851772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.080387, 14.215325, 24.304245>,  <15.119692, 13.642520, 23.903736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.080387, 14.215325, 24.304245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.711020, 14.062069, 24.295256>,  <14.489401, 13.970115, 24.289862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.711020, 14.062069, 24.295256>,  <15.080387, 14.215325, 24.304245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.711020, 14.062069, 24.295256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155034, 0.318802, 0.935056,
		-0.351094, 0.866930, -0.353787,
		-0.923416, -0.383142, -0.022474,
		14.433995, 13.947126, 24.288513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.733112, 14.630034, 24.758015>,  <15.080387, 14.215325, 24.304245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.733112, 14.630034, 24.758015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468184, 14.332335, 24.723537>,  <14.309228, 14.153716, 24.702850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468184, 14.332335, 24.723537>,  <14.733112, 14.630034, 24.758015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.468184, 14.332335, 24.723537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339833, 0.195893, 0.919858,
		-0.667717, 0.638532, -0.382663,
		-0.662320, -0.744247, -0.086194,
		14.269488, 14.109061, 24.697680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.070967, 14.902995, 24.853477>,  <14.733112, 14.630034, 24.758015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.070967, 14.902995, 24.853477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.030157, 14.514622, 24.940083>,  <14.005672, 14.281597, 24.992046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.030157, 14.514622, 24.940083>,  <14.070967, 14.902995, 24.853477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.030157, 14.514622, 24.940083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451973, 0.239129, 0.859382,
		-0.886178, -0.010179, -0.463234,
		-0.102025, -0.970934, 0.216512,
		13.999550, 14.223341, 25.005035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.407549, 14.841455, 25.010818>,  <14.070967, 14.902995, 24.853477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.407549, 14.841455, 25.010818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.599146, 14.534459, 25.181242>,  <13.714104, 14.350262, 25.283495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.599146, 14.534459, 25.181242>,  <13.407549, 14.841455, 25.010818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.599146, 14.534459, 25.181242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360034, 0.270892, 0.892745,
		-0.800589, -0.581012, -0.146568,
		0.478991, -0.767491, 0.426057,
		13.742844, 14.304212, 25.309059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.900021, 14.665346, 25.425819>,  <13.407549, 14.841455, 25.010818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.900021, 14.665346, 25.425819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.239430, 14.502000, 25.560427>,  <13.443076, 14.403993, 25.641191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.239430, 14.502000, 25.560427>,  <12.900021, 14.665346, 25.425819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.239430, 14.502000, 25.560427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340464, 0.065506, 0.937973,
		-0.405079, -0.910465, -0.083450,
		0.848525, -0.408365, 0.336516,
		13.493988, 14.379491, 25.661381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.718755, 14.069431, 25.843935>,  <12.900021, 14.665346, 25.425819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.718755, 14.069431, 25.843935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.088437, 14.139411, 25.979721>,  <13.310246, 14.181398, 26.061193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.088437, 14.139411, 25.979721>,  <12.718755, 14.069431, 25.843935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.088437, 14.139411, 25.979721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367441, 0.165124, 0.915271,
		0.104066, -0.970633, 0.216890,
		0.924206, 0.174943, 0.339467,
		13.365699, 14.191895, 26.081560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.902010, 13.548650, 26.367750>,  <12.718755, 14.069431, 25.843935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.902010, 13.548650, 26.367750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.140985, 13.860790, 26.441639>,  <13.284369, 14.048075, 26.485973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.140985, 13.860790, 26.441639>,  <12.902010, 13.548650, 26.367750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.140985, 13.860790, 26.441639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458616, 0.143522, 0.876968,
		0.657830, -0.608650, 0.443627,
		0.597437, 0.780350, 0.184724,
		13.320215, 14.094895, 26.497057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.181904, 13.350182, 26.971724>,  <12.902010, 13.548650, 26.367750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.181904, 13.350182, 26.971724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.231216, 13.745997, 27.001694>,  <13.260804, 13.983487, 27.019676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.231216, 13.745997, 27.001694>,  <13.181904, 13.350182, 26.971724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.231216, 13.745997, 27.001694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421847, -0.016085, 0.906524,
		0.898246, -0.143366, 0.415452,
		0.123282, 0.989539, 0.074927,
		13.268201, 14.042859, 27.024172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.437190, 13.463199, 27.619097>,  <13.181904, 13.350182, 26.971724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.437190, 13.463199, 27.619097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.309995, 13.819859, 27.490198>,  <13.233677, 14.033854, 27.412859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.309995, 13.819859, 27.490198>,  <13.437190, 13.463199, 27.619097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.309995, 13.819859, 27.490198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208541, 0.265784, 0.941207,
		0.924875, 0.366495, 0.101430,
		-0.317989, 0.891650, -0.322246,
		13.214598, 14.087354, 27.393524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.920609, 13.922359, 28.002491>,  <13.437190, 13.463199, 27.619097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.920609, 13.922359, 28.002491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.576480, 14.091783, 27.889042>,  <13.370002, 14.193437, 27.820972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.576480, 14.091783, 27.889042>,  <13.920609, 13.922359, 28.002491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.576480, 14.091783, 27.889042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192334, 0.245544, 0.950114,
		0.472069, 0.871956, -0.129783,
		-0.860325, 0.423557, -0.283620,
		13.318382, 14.218850, 27.803955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.826484, 14.514820, 28.368013>,  <13.920609, 13.922359, 28.002491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.826484, 14.514820, 28.368013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455681, 14.490318, 28.220011>,  <13.233199, 14.475617, 28.131210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.455681, 14.490318, 28.220011>,  <13.826484, 14.514820, 28.368013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.455681, 14.490318, 28.220011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375041, 0.149413, 0.914888,
		-0.000758, 0.986876, -0.161480,
		-0.927008, -0.061255, -0.370006,
		13.177578, 14.471942, 28.109009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
