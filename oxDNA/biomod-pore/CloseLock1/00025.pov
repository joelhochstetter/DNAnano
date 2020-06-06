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
	<24.499264, 34.995052, 35.180248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343008, 35.152039, 34.847172>,  <24.249254, 35.246231, 34.647327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.343008, 35.152039, 34.847172>,  <24.499264, 34.995052, 35.180248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.343008, 35.152039, 34.847172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864168, 0.468038, -0.184811,
		0.317200, -0.791780, -0.521986,
		-0.390638, 0.392461, -0.832692,
		24.225817, 35.269775, 34.597363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.025818, 35.063774, 34.813679>,  <24.499264, 34.995052, 35.180248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.025818, 35.063774, 34.813679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764423, 35.339218, 34.687965>,  <24.607586, 35.504482, 34.612537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.764423, 35.339218, 34.687965>,  <25.025818, 35.063774, 34.813679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.764423, 35.339218, 34.687965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756502, 0.608245, -0.240296,
		0.025694, -0.394789, -0.918413,
		-0.653486, 0.688607, -0.314287,
		24.568378, 35.545799, 34.593678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457047, 35.371746, 34.330814>,  <25.025818, 35.063774, 34.813679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457047, 35.371746, 34.330814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139343, 35.608231, 34.386837>,  <24.948721, 35.750122, 34.420448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.139343, 35.608231, 34.386837>,  <25.457047, 35.371746, 34.330814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139343, 35.608231, 34.386837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570043, 0.804889, -0.164936,
		-0.210240, -0.051166, -0.976310,
		-0.794261, 0.591215, 0.140053,
		24.901066, 35.785595, 34.428852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.489408, 35.085220, 33.551750>,  <25.457047, 35.371746, 34.330814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.489408, 35.085220, 33.551750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214979, 35.303482, 33.359264>,  <25.050322, 35.434441, 33.243774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.214979, 35.303482, 33.359264>,  <25.489408, 35.085220, 33.551750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.214979, 35.303482, 33.359264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235318, 0.792310, 0.562912,
		0.688426, 0.272960, -0.671984,
		-0.686073, 0.545653, -0.481214,
		25.009157, 35.467178, 33.214901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.702703, 35.624004, 33.073231>,  <25.489408, 35.085220, 33.551750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.702703, 35.624004, 33.073231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365326, 35.716747, 33.267075>,  <25.162899, 35.772392, 33.383381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365326, 35.716747, 33.267075>,  <25.702703, 35.624004, 33.073231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365326, 35.716747, 33.267075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508679, 0.634779, 0.581637,
		-0.172762, 0.737088, -0.653341,
		-0.843445, 0.231856, 0.484607,
		25.112293, 35.786304, 33.412457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454456, 35.515186, 32.949032>,  <25.702703, 35.624004, 33.073231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454456, 35.515186, 32.949032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753988, 35.337448, 32.752335>,  <26.933706, 35.230804, 32.634315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.753988, 35.337448, 32.752335>,  <26.454456, 35.515186, 32.949032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.753988, 35.337448, 32.752335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507435, 0.861670, -0.005899,
		0.426342, -0.245110, 0.870720,
		0.748827, -0.444349, -0.491743,
		26.978636, 35.204144, 32.604813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.116915, 35.788147, 33.134113>,  <26.454456, 35.515186, 32.949032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.116915, 35.788147, 33.134113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293444, 35.572353, 32.847282>,  <27.399361, 35.442879, 32.675186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293444, 35.572353, 32.847282>,  <27.116915, 35.788147, 33.134113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293444, 35.572353, 32.847282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693211, 0.712395, -0.109328,
		0.569821, -0.448835, 0.688369,
		0.441320, -0.539482, -0.717075,
		27.425840, 35.410507, 32.632160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827480, 35.708076, 33.271465>,  <27.116915, 35.788147, 33.134113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827480, 35.708076, 33.271465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767420, 35.676109, 32.877293>,  <27.731384, 35.656929, 32.640789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.767420, 35.676109, 32.877293>,  <27.827480, 35.708076, 33.271465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.767420, 35.676109, 32.877293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708865, 0.686097, -0.163649,
		0.689177, -0.723108, -0.046370,
		-0.150150, -0.079913, -0.985428,
		27.722376, 35.652134, 32.581665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499266, 35.659420, 32.943485>,  <27.827480, 35.708076, 33.271465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499266, 35.659420, 32.943485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239227, 35.757294, 32.655735>,  <28.083204, 35.816017, 32.483086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.239227, 35.757294, 32.655735>,  <28.499266, 35.659420, 32.943485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.239227, 35.757294, 32.655735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659348, 0.652212, -0.374005,
		0.377674, -0.717460, -0.585332,
		-0.650095, 0.244686, -0.719379,
		28.044199, 35.830700, 32.439922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901827, 35.745426, 32.318474>,  <28.499266, 35.659420, 32.943485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901827, 35.745426, 32.318474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566204, 35.955494, 32.261658>,  <28.364830, 36.081535, 32.227566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.566204, 35.955494, 32.261658>,  <28.901827, 35.745426, 32.318474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566204, 35.955494, 32.261658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538538, 0.764719, -0.353810,
		-0.077188, -0.373362, -0.924469,
		-0.839059, 0.525171, -0.142043,
		28.314487, 36.113045, 32.219044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898460, 36.014896, 31.592281>,  <28.901827, 35.745426, 32.318474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898460, 36.014896, 31.592281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627081, 36.246990, 31.772522>,  <28.464254, 36.386246, 31.880667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.627081, 36.246990, 31.772522>,  <28.898460, 36.014896, 31.592281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.627081, 36.246990, 31.772522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427768, 0.810661, -0.399804,
		-0.597263, -0.078493, -0.798195,
		-0.678447, 0.580231, 0.450601,
		28.423546, 36.421059, 31.907701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655800, 36.448204, 31.116814>,  <28.898460, 36.014896, 31.592281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655800, 36.448204, 31.116814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575735, 36.641922, 31.457493>,  <28.527697, 36.758152, 31.661901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575735, 36.641922, 31.457493>,  <28.655800, 36.448204, 31.116814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575735, 36.641922, 31.457493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248012, 0.866024, -0.434156,
		-0.947853, 0.124330, -0.293457,
		-0.200162, 0.484297, 0.851699,
		28.515686, 36.787212, 31.713003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368803, 37.026676, 30.875254>,  <28.655800, 36.448204, 31.116814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368803, 37.026676, 30.875254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463261, 37.106056, 31.255749>,  <28.519936, 37.153683, 31.484047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.463261, 37.106056, 31.255749>,  <28.368803, 37.026676, 30.875254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463261, 37.106056, 31.255749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216984, 0.943438, -0.250686,
		-0.947182, 0.265601, 0.179726,
		0.236143, 0.198448, 0.951239,
		28.534103, 37.165592, 31.541121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145576, 37.720875, 30.996685>,  <28.368803, 37.026676, 30.875254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145576, 37.720875, 30.996685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443550, 37.650982, 31.254225>,  <28.622334, 37.609047, 31.408749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443550, 37.650982, 31.254225>,  <28.145576, 37.720875, 30.996685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443550, 37.650982, 31.254225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412114, 0.879461, -0.238140,
		-0.524627, 0.442737, 0.727152,
		0.744935, -0.174735, 0.643848,
		28.667030, 37.598560, 31.447378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.303045, 38.380695, 31.457096>,  <28.145576, 37.720875, 30.996685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.303045, 38.380695, 31.457096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638735, 38.163605, 31.470629>,  <28.840149, 38.033348, 31.478748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.638735, 38.163605, 31.470629>,  <28.303045, 38.380695, 31.457096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.638735, 38.163605, 31.470629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535026, 0.812990, -0.229769,
		0.097197, 0.210930, 0.972657,
		0.839226, -0.542730, 0.033833,
		28.890503, 38.000786, 31.480778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816542, 38.908463, 31.601089>,  <28.303045, 38.380695, 31.457096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816542, 38.908463, 31.601089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029135, 38.590134, 31.485022>,  <29.156691, 38.399136, 31.415380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029135, 38.590134, 31.485022>,  <28.816542, 38.908463, 31.601089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029135, 38.590134, 31.485022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718397, 0.604978, -0.343374,
		0.448811, -0.025961, 0.893250,
		0.531483, -0.795819, -0.290171,
		29.188580, 38.351387, 31.397970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430664, 39.016159, 31.883249>,  <28.816542, 38.908463, 31.601089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430664, 39.016159, 31.883249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490955, 38.768597, 31.574902>,  <29.527130, 38.620060, 31.389893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490955, 38.768597, 31.574902>,  <29.430664, 39.016159, 31.883249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490955, 38.768597, 31.574902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681603, 0.629859, -0.372419,
		0.716030, -0.469293, 0.516783,
		0.150727, -0.618904, -0.770869,
		29.536173, 38.582924, 31.343641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181637, 39.137321, 31.692154>,  <29.430664, 39.016159, 31.883249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181637, 39.137321, 31.692154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040609, 38.941349, 31.373240>,  <29.955994, 38.823765, 31.181890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040609, 38.941349, 31.373240>,  <30.181637, 39.137321, 31.692154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040609, 38.941349, 31.373240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536152, 0.592532, -0.601205,
		0.766967, -0.639430, 0.053772,
		-0.352567, -0.489934, -0.797284,
		29.934839, 38.794369, 31.134054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757431, 38.950035, 31.294395>,  <30.181637, 39.137321, 31.692154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757431, 38.950035, 31.294395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437136, 38.957314, 31.054899>,  <30.244959, 38.961681, 30.911201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.437136, 38.957314, 31.054899>,  <30.757431, 38.950035, 31.294395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437136, 38.957314, 31.054899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511255, 0.541632, -0.667273,
		0.312152, -0.840419, -0.443010,
		-0.800737, 0.018201, -0.598740,
		30.196915, 38.962772, 30.875277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028440, 38.729595, 30.622904>,  <30.757431, 38.950035, 31.294395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028440, 38.729595, 30.622904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690895, 38.923958, 30.531870>,  <30.488369, 39.040573, 30.477249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690895, 38.923958, 30.531870>,  <31.028440, 38.729595, 30.622904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690895, 38.923958, 30.531870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512907, 0.605962, -0.608060,
		-0.157552, -0.629848, -0.760572,
		-0.843863, 0.485904, -0.227583,
		30.437737, 39.069729, 30.463594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.146709, 38.913876, 29.937649>,  <31.028440, 38.729595, 30.622904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.146709, 38.913876, 29.937649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850994, 39.164528, 30.036272>,  <30.673565, 39.314919, 30.095446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850994, 39.164528, 30.036272>,  <31.146709, 38.913876, 29.937649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850994, 39.164528, 30.036272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432878, 0.722707, -0.538805,
		-0.515820, -0.291602, -0.805542,
		-0.739288, 0.626628, 0.246559,
		30.629208, 39.352516, 30.110239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907858, 39.264076, 29.249943>,  <31.146709, 38.913876, 29.937649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907858, 39.264076, 29.249943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795452, 39.522602, 29.533718>,  <30.728008, 39.677719, 29.703983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.795452, 39.522602, 29.533718>,  <30.907858, 39.264076, 29.249943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795452, 39.522602, 29.533718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165163, 0.760767, -0.627659,
		-0.945385, -0.059208, -0.320534,
		-0.281014, 0.646319, 0.709438,
		30.711147, 39.716499, 29.746550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471876, 39.716202, 28.900152>,  <30.907858, 39.264076, 29.249943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471876, 39.716202, 28.900152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629286, 39.898899, 29.219282>,  <30.723732, 40.008518, 29.410759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629286, 39.898899, 29.219282>,  <30.471876, 39.716202, 28.900152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629286, 39.898899, 29.219282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164179, 0.818978, -0.549837,
		-0.904536, 0.347359, 0.247299,
		0.393523, 0.456746, 0.797824,
		30.747343, 40.035923, 29.458630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492165, 40.457989, 28.810879>,  <30.471876, 39.716202, 28.900152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492165, 40.457989, 28.810879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711569, 40.457813, 29.145336>,  <30.843212, 40.457710, 29.346010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711569, 40.457813, 29.145336>,  <30.492165, 40.457989, 28.810879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711569, 40.457813, 29.145336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527326, 0.776235, -0.345525,
		-0.648892, 0.630444, 0.426004,
		0.548513, -0.000435, 0.836142,
		30.876123, 40.457684, 29.396179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550716, 41.178387, 29.146141>,  <30.492165, 40.457989, 28.810879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550716, 41.178387, 29.146141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858936, 40.955635, 29.270166>,  <31.043867, 40.821983, 29.344582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.858936, 40.955635, 29.270166>,  <30.550716, 41.178387, 29.146141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858936, 40.955635, 29.270166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637215, 0.684209, -0.354705,
		-0.014621, 0.470895, 0.882068,
		0.770548, -0.556881, 0.310065,
		31.090101, 40.788570, 29.363186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100073, 41.610821, 29.287569>,  <30.550716, 41.178387, 29.146141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100073, 41.610821, 29.287569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288267, 41.262043, 29.233377>,  <31.401184, 41.052776, 29.200863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.288267, 41.262043, 29.233377>,  <31.100073, 41.610821, 29.287569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288267, 41.262043, 29.233377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723321, 0.469033, -0.506769,
		0.505419, 0.140433, 0.851370,
		0.470488, -0.871944, -0.135480,
		31.429413, 41.000462, 29.192734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669590, 41.753506, 29.057438>,  <31.100073, 41.610821, 29.287569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669590, 41.753506, 29.057438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737278, 41.362675, 29.005777>,  <31.777891, 41.128174, 28.974781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737278, 41.362675, 29.005777>,  <31.669590, 41.753506, 29.057438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737278, 41.362675, 29.005777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695075, 0.211217, -0.687211,
		0.698738, 0.026521, 0.714886,
		0.169222, -0.977079, -0.129151,
		31.788044, 41.069550, 28.967031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353687, 41.789494, 28.992998>,  <31.669590, 41.753506, 29.057438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353687, 41.789494, 28.992998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211117, 41.450211, 28.836283>,  <32.125576, 41.246639, 28.742254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.211117, 41.450211, 28.836283>,  <32.353687, 41.789494, 28.992998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211117, 41.450211, 28.836283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640109, 0.083774, -0.763703,
		0.680604, -0.522990, 0.513089,
		-0.356425, -0.848212, -0.391788,
		32.104191, 41.195747, 28.718746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851700, 41.177288, 28.851065>,  <32.353687, 41.789494, 28.992998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851700, 41.177288, 28.851065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562141, 41.140888, 28.577513>,  <32.388405, 41.119049, 28.413382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562141, 41.140888, 28.577513>,  <32.851700, 41.177288, 28.851065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562141, 41.140888, 28.577513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672765, 0.126501, -0.728962,
		0.152845, -0.987784, -0.030354,
		-0.723896, -0.090997, -0.683881,
		32.344971, 41.113590, 28.372349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071350, 40.668365, 28.329931>,  <32.851700, 41.177288, 28.851065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071350, 40.668365, 28.329931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823761, 40.949978, 28.190668>,  <32.675209, 41.118946, 28.107111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823761, 40.949978, 28.190668>,  <33.071350, 40.668365, 28.329931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823761, 40.949978, 28.190668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626068, 0.174607, -0.759968,
		-0.474251, -0.688369, -0.548848,
		-0.618971, 0.704032, -0.348158,
		32.638069, 41.161186, 28.086220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583858, 40.786621, 27.868484>,  <33.071350, 40.668365, 28.329931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583858, 40.786621, 27.868484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276863, 41.011955, 27.746099>,  <33.092667, 41.147156, 27.672668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276863, 41.011955, 27.746099>,  <33.583858, 40.786621, 27.868484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276863, 41.011955, 27.746099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421396, 0.083661, -0.903009,
		-0.483101, -0.821981, -0.301597,
		-0.767488, 0.563337, -0.305963,
		33.046616, 41.180958, 27.654310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073208, 40.472324, 27.429041>,  <33.583858, 40.786621, 27.868484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073208, 40.472324, 27.429041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090240, 40.861877, 27.339830>,  <33.100460, 41.095608, 27.286304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090240, 40.861877, 27.339830>,  <33.073208, 40.472324, 27.429041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090240, 40.861877, 27.339830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269109, -0.226157, -0.936180,
		-0.962168, -0.020155, -0.271710,
		0.042580, 0.973882, -0.223025,
		33.103016, 41.154041, 27.272923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323071, 39.868458, 26.872324>,  <33.073208, 40.472324, 27.429041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323071, 39.868458, 26.872324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349449, 39.687580, 26.516533>,  <33.365276, 39.579052, 26.303059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349449, 39.687580, 26.516533>,  <33.323071, 39.868458, 26.872324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349449, 39.687580, 26.516533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571061, -0.748102, 0.337982,
		-0.818254, 0.485658, -0.307565,
		0.065946, -0.452194, -0.889479,
		33.369232, 39.551922, 26.249689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697689, 39.752182, 26.680656>,  <33.323071, 39.868458, 26.872324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697689, 39.752182, 26.680656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929577, 39.459351, 26.537550>,  <33.068710, 39.283653, 26.451687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929577, 39.459351, 26.537550>,  <32.697689, 39.752182, 26.680656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929577, 39.459351, 26.537550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586182, -0.679676, 0.440942,
		-0.565966, -0.045907, -0.823149,
		0.579717, -0.732074, -0.357764,
		33.103493, 39.239727, 26.430220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186234, 39.213009, 26.357733>,  <32.697689, 39.752182, 26.680656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186234, 39.213009, 26.357733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543564, 39.046730, 26.426048>,  <32.757961, 38.946960, 26.467037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543564, 39.046730, 26.426048>,  <32.186234, 39.213009, 26.357733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543564, 39.046730, 26.426048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448220, -0.796395, 0.406022,
		-0.032766, -0.439261, -0.897762,
		0.893322, -0.415699, 0.170790,
		32.811562, 38.922020, 26.477285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.164204, 38.464699, 26.236078>,  <32.186234, 39.213009, 26.357733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.164204, 38.464699, 26.236078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496357, 38.497738, 26.456493>,  <32.695648, 38.517563, 26.588743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496357, 38.497738, 26.456493>,  <32.164204, 38.464699, 26.236078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496357, 38.497738, 26.456493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223408, -0.856623, 0.465066,
		0.510447, -0.509289, -0.692870,
		0.830381, 0.082599, 0.551040,
		32.745472, 38.522518, 26.621805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455246, 37.823811, 26.194849>,  <32.164204, 38.464699, 26.236078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455246, 37.823811, 26.194849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526031, 38.042831, 26.521988>,  <32.568504, 38.174244, 26.718271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526031, 38.042831, 26.521988>,  <32.455246, 37.823811, 26.194849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526031, 38.042831, 26.521988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337391, -0.746862, 0.573031,
		0.924582, -0.377340, 0.052571,
		0.176964, 0.547551, 0.817846,
		32.579121, 38.207096, 26.767342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691723, 37.321461, 26.652056>,  <32.455246, 37.823811, 26.194849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691723, 37.321461, 26.652056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571838, 37.626675, 26.881123>,  <32.499908, 37.809803, 27.018562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571838, 37.626675, 26.881123>,  <32.691723, 37.321461, 26.652056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571838, 37.626675, 26.881123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364400, -0.646311, 0.670444,
		0.881694, -0.007738, 0.471759,
		-0.299715, 0.763035, 0.572668,
		32.481922, 37.855587, 27.052923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674648, 37.007145, 27.152525>,  <32.691723, 37.321461, 26.652056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674648, 37.007145, 27.152525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498932, 37.343605, 27.278690>,  <32.393501, 37.545483, 27.354389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498932, 37.343605, 27.278690>,  <32.674648, 37.007145, 27.152525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498932, 37.343605, 27.278690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443973, -0.508513, 0.737769,
		0.780967, 0.184061, 0.596834,
		-0.439293, 0.841152, 0.315414,
		32.367146, 37.595951, 27.373314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887653, 37.212620, 27.911028>,  <32.674648, 37.007145, 27.152525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887653, 37.212620, 27.911028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538475, 37.386242, 27.821987>,  <32.328968, 37.490417, 27.768562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538475, 37.386242, 27.821987>,  <32.887653, 37.212620, 27.911028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538475, 37.386242, 27.821987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390048, -0.347046, 0.852890,
		0.292951, 0.831356, 0.472257,
		-0.872950, 0.434058, -0.222602,
		32.276588, 37.516460, 27.755207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.642647, 37.300301, 28.528030>,  <32.887653, 37.212620, 27.911028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.642647, 37.300301, 28.528030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323544, 37.320629, 28.287699>,  <32.132080, 37.332825, 28.143499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323544, 37.320629, 28.287699>,  <32.642647, 37.300301, 28.528030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323544, 37.320629, 28.287699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526294, -0.544972, 0.652702,
		-0.294267, 0.836913, 0.461501,
		-0.797760, 0.050817, -0.600830,
		32.084217, 37.335873, 28.107450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.002991, 37.470001, 28.984524>,  <32.642647, 37.300301, 28.528030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.002991, 37.470001, 28.984524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894814, 37.308926, 28.634735>,  <31.829906, 37.212280, 28.424862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894814, 37.308926, 28.634735>,  <32.002991, 37.470001, 28.984524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894814, 37.308926, 28.634735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580284, -0.656595, 0.481823,
		-0.768200, 0.637748, -0.056103,
		-0.270444, -0.402692, -0.874471,
		31.813681, 37.188118, 28.372395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290476, 37.520676, 28.891821>,  <32.002991, 37.470001, 28.984524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290476, 37.520676, 28.891821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401983, 37.221546, 28.650806>,  <31.468887, 37.042068, 28.506197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401983, 37.221546, 28.650806>,  <31.290476, 37.520676, 28.891821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401983, 37.221546, 28.650806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744715, -0.564479, 0.356037,
		-0.606372, 0.349469, -0.714271,
		0.278767, -0.747820, -0.602540,
		31.485613, 36.997200, 28.470045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.672293, 37.089493, 28.898930>,  <31.290476, 37.520676, 28.891821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.672293, 37.089493, 28.898930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934738, 36.845425, 28.721300>,  <31.092205, 36.698982, 28.614721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934738, 36.845425, 28.721300>,  <30.672293, 37.089493, 28.898930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934738, 36.845425, 28.721300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424304, -0.784892, 0.451565,
		-0.624084, -0.107854, -0.773877,
		0.656113, -0.610173, -0.444076,
		31.131573, 36.662373, 28.588078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350763, 36.486523, 28.503809>,  <30.672293, 37.089493, 28.898930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350763, 36.486523, 28.503809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729250, 36.366837, 28.553038>,  <30.956343, 36.295025, 28.582575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729250, 36.366837, 28.553038>,  <30.350763, 36.486523, 28.503809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729250, 36.366837, 28.553038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317201, -0.783043, 0.535002,
		-0.063710, -0.545265, -0.835839,
		0.946216, -0.299213, 0.123071,
		31.013115, 36.277073, 28.589958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392872, 35.830372, 28.063782>,  <30.350763, 36.486523, 28.503809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392872, 35.830372, 28.063782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636339, 35.855667, 28.380142>,  <30.782419, 35.870846, 28.569958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.636339, 35.855667, 28.380142>,  <30.392872, 35.830372, 28.063782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636339, 35.855667, 28.380142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507628, -0.735061, 0.449442,
		0.609782, -0.675045, -0.415307,
		0.608670, 0.063240, 0.790899,
		30.818939, 35.874638, 28.617413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467373, 35.125031, 28.218164>,  <30.392872, 35.830372, 28.063782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467373, 35.125031, 28.218164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590645, 35.328022, 28.540030>,  <30.664608, 35.449818, 28.733149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590645, 35.328022, 28.540030>,  <30.467373, 35.125031, 28.218164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590645, 35.328022, 28.540030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468194, -0.655400, 0.592660,
		0.828142, -0.559385, 0.035620,
		0.308180, 0.507483, 0.804665,
		30.683100, 35.480267, 28.781429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713531, 34.621445, 28.724695>,  <30.467373, 35.125031, 28.218164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713531, 34.621445, 28.724695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625902, 34.938934, 28.951675>,  <30.573324, 35.129429, 29.087864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.625902, 34.938934, 28.951675>,  <30.713531, 34.621445, 28.724695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.625902, 34.938934, 28.951675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544247, -0.582105, 0.604110,
		0.809816, -0.176489, 0.559509,
		-0.219075, 0.793729, 0.567451,
		30.560181, 35.177052, 29.121910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654669, 34.351158, 29.316874>,  <30.713531, 34.621445, 28.724695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654669, 34.351158, 29.316874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457279, 34.692398, 29.384640>,  <30.338846, 34.897144, 29.425299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.457279, 34.692398, 29.384640>,  <30.654669, 34.351158, 29.316874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.457279, 34.692398, 29.384640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511836, -0.442321, 0.736461,
		0.703212, 0.276712, 0.654923,
		-0.493474, 0.853102, 0.169415,
		30.309237, 34.948330, 29.435465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626040, 34.420181, 30.059980>,  <30.654669, 34.351158, 29.316874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626040, 34.420181, 30.059980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346550, 34.680428, 29.940992>,  <30.178856, 34.836575, 29.869600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.346550, 34.680428, 29.940992>,  <30.626040, 34.420181, 30.059980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.346550, 34.680428, 29.940992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617018, -0.337636, 0.710838,
		0.362045, 0.680222, 0.637355,
		-0.698722, 0.650615, -0.297470,
		30.136934, 34.875610, 29.851751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421881, 34.906956, 30.654778>,  <30.626040, 34.420181, 30.059980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421881, 34.906956, 30.654778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113169, 34.891426, 30.400898>,  <29.927940, 34.882107, 30.248569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113169, 34.891426, 30.400898>,  <30.421881, 34.906956, 30.654778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113169, 34.891426, 30.400898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600814, -0.282386, 0.747851,
		-0.208266, 0.958515, 0.194613,
		-0.771782, -0.038826, -0.634701,
		29.881634, 34.879780, 30.210487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903090, 35.121704, 31.076305>,  <30.421881, 34.906956, 30.654778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903090, 35.121704, 31.076305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708361, 34.967400, 30.762823>,  <29.591524, 34.874817, 30.574734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708361, 34.967400, 30.762823>,  <29.903090, 35.121704, 31.076305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708361, 34.967400, 30.762823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777679, -0.217153, 0.589966,
		-0.397770, 0.896679, -0.194283,
		-0.486821, -0.385760, -0.783705,
		29.562315, 34.851673, 30.527712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318844, 35.570942, 30.938478>,  <29.903090, 35.121704, 31.076305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318844, 35.570942, 30.938478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270477, 35.191582, 30.821230>,  <29.241457, 34.963966, 30.750881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270477, 35.191582, 30.821230>,  <29.318844, 35.570942, 30.938478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270477, 35.191582, 30.821230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767191, -0.098098, 0.633873,
		-0.629918, 0.301529, -0.715740,
		-0.120919, -0.948397, -0.293123,
		29.234201, 34.907063, 30.733294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670435, 35.552299, 31.076885>,  <29.318844, 35.570942, 30.938478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670435, 35.552299, 31.076885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771662, 35.173332, 30.998543>,  <28.832397, 34.945953, 30.951538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771662, 35.173332, 30.998543>,  <28.670435, 35.552299, 31.076885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771662, 35.173332, 30.998543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823317, -0.317217, 0.470662,
		-0.508042, 0.042143, -0.860301,
		0.253067, -0.947416, -0.195856,
		28.847582, 34.889107, 30.939787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006664, 35.120049, 30.795830>,  <28.670435, 35.552299, 31.076885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006664, 35.120049, 30.795830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274269, 34.863186, 30.945526>,  <28.434832, 34.709068, 31.035345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274269, 34.863186, 30.945526>,  <28.006664, 35.120049, 30.795830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274269, 34.863186, 30.945526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705291, -0.389632, 0.592243,
		-0.234496, -0.660167, -0.713576,
		0.669012, -0.642157, 0.374243,
		28.474972, 34.670540, 31.057798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636232, 34.425304, 30.652782>,  <28.006664, 35.120049, 30.795830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636232, 34.425304, 30.652782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928516, 34.347904, 30.914658>,  <28.103888, 34.301464, 31.071783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.928516, 34.347904, 30.914658>,  <27.636232, 34.425304, 30.652782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.928516, 34.347904, 30.914658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660113, -0.444837, 0.605286,
		0.174106, -0.874458, -0.452780,
		0.730711, -0.193502, 0.654690,
		28.147730, 34.289852, 31.111065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744543, 33.684158, 30.795074>,  <27.636232, 34.425304, 30.652782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744543, 33.684158, 30.795074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910866, 33.863235, 31.111727>,  <28.010660, 33.970680, 31.301718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910866, 33.863235, 31.111727>,  <27.744543, 33.684158, 30.795074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910866, 33.863235, 31.111727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695672, -0.404087, 0.593931,
		0.585784, -0.797676, 0.143423,
		0.415809, 0.447691, 0.791629,
		28.035608, 33.997543, 31.349215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.820107, 33.180080, 31.393986>,  <27.744543, 33.684158, 30.795074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.820107, 33.180080, 31.393986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773365, 33.566242, 31.487223>,  <27.745319, 33.797939, 31.543165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.773365, 33.566242, 31.487223>,  <27.820107, 33.180080, 31.393986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773365, 33.566242, 31.487223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828638, -0.224148, 0.512949,
		0.547452, -0.133207, 0.826167,
		-0.116856, 0.965409, 0.233091,
		27.738308, 33.855865, 31.557150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.572325, 33.261696, 32.199898>,  <27.820107, 33.180080, 31.393986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.572325, 33.261696, 32.199898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457613, 33.574005, 31.977854>,  <27.388786, 33.761391, 31.844627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.457613, 33.574005, 31.977854>,  <27.572325, 33.261696, 32.199898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457613, 33.574005, 31.977854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925664, -0.076570, 0.370518,
		0.246786, 0.620104, 0.744693,
		-0.286781, 0.780774, -0.555111,
		27.371578, 33.808239, 31.811321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.825773, 32.792786, 32.635815>,  <27.572325, 33.261696, 32.199898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.825773, 32.792786, 32.635815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085709, 32.737793, 32.934830>,  <28.241671, 32.704800, 33.114239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085709, 32.737793, 32.934830>,  <27.825773, 32.792786, 32.635815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085709, 32.737793, 32.934830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215302, 0.976518, -0.007572,
		-0.728940, 0.165866, 0.664180,
		0.649840, -0.137480, 0.747534,
		28.280661, 32.696548, 33.159088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754654, 33.425934, 33.002151>,  <27.825773, 32.792786, 32.635815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754654, 33.425934, 33.002151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099449, 33.270977, 33.132938>,  <28.306326, 33.178005, 33.211411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099449, 33.270977, 33.132938>,  <27.754654, 33.425934, 33.002151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099449, 33.270977, 33.132938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439992, 0.892071, -0.103041,
		-0.251757, 0.232681, 0.939403,
		0.861989, -0.387388, 0.326963,
		28.358046, 33.154762, 33.231026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109987, 33.753948, 33.624111>,  <27.754654, 33.425934, 33.002151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109987, 33.753948, 33.624111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365654, 33.590435, 33.363537>,  <28.519054, 33.492329, 33.207191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365654, 33.590435, 33.363537>,  <28.109987, 33.753948, 33.624111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365654, 33.590435, 33.363537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580387, 0.812140, 0.059828,
		0.504598, -0.416323, 0.756344,
		0.639165, -0.408784, -0.651433,
		28.557404, 33.467800, 33.168106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408674, 34.255119, 33.853706>,  <28.109987, 33.753948, 33.624111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408674, 34.255119, 33.853706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614546, 34.032375, 33.592934>,  <28.738068, 33.898731, 33.436470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614546, 34.032375, 33.592934>,  <28.408674, 34.255119, 33.853706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614546, 34.032375, 33.592934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750709, 0.660000, 0.028911,
		0.414177, -0.504293, 0.757724,
		0.514677, -0.556857, -0.651934,
		28.768950, 33.865318, 33.397354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.984470, 34.177555, 34.235966>,  <28.408674, 34.255119, 33.853706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.984470, 34.177555, 34.235966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071444, 34.110943, 33.851261>,  <29.123629, 34.070976, 33.620438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071444, 34.110943, 33.851261>,  <28.984470, 34.177555, 34.235966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071444, 34.110943, 33.851261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756544, 0.651343, 0.058256,
		0.616736, -0.740283, 0.267614,
		0.217434, -0.166533, -0.961764,
		29.136673, 34.060982, 33.562733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659510, 33.821064, 34.084862>,  <28.984470, 34.177555, 34.235966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659510, 33.821064, 34.084862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019243, 33.833076, 34.259354>,  <30.235083, 33.840282, 34.364048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.019243, 33.833076, 34.259354>,  <29.659510, 33.821064, 34.084862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019243, 33.833076, 34.259354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397369, -0.360194, 0.844013,
		0.182474, -0.932394, -0.312002,
		0.899334, 0.030031, 0.436231,
		30.289043, 33.842087, 34.390224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772017, 33.166622, 34.496407>,  <29.659510, 33.821064, 34.084862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772017, 33.166622, 34.496407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006971, 33.451851, 34.649509>,  <30.147943, 33.622990, 34.741371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.006971, 33.451851, 34.649509>,  <29.772017, 33.166622, 34.496407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.006971, 33.451851, 34.649509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135980, -0.379269, 0.915240,
		0.797801, -0.589648, -0.125815,
		0.587387, 0.713071, 0.382762,
		30.183187, 33.665771, 34.764339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077152, 32.799759, 34.943241>,  <29.772017, 33.166622, 34.496407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077152, 32.799759, 34.943241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094809, 33.181778, 35.060497>,  <30.105402, 33.410992, 35.130852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094809, 33.181778, 35.060497>,  <30.077152, 32.799759, 34.943241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094809, 33.181778, 35.060497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267797, -0.271376, 0.924467,
		0.962464, -0.119309, 0.243781,
		0.044141, 0.955050, 0.293140,
		30.108051, 33.468292, 35.148438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892195, 32.653366, 35.587879>,  <30.077152, 32.799759, 34.943241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892195, 32.653366, 35.587879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948149, 33.049183, 35.601929>,  <29.981722, 33.286674, 35.610359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.948149, 33.049183, 35.601929>,  <29.892195, 32.653366, 35.587879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948149, 33.049183, 35.601929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076733, -0.046198, 0.995981,
		0.987190, -0.136628, -0.082393,
		0.139885, 0.989545, 0.035122,
		29.990114, 33.346046, 35.612465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517815, 32.861607, 35.883511>,  <29.892195, 32.653366, 35.587879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517815, 32.861607, 35.883511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252071, 33.154438, 35.943764>,  <30.092625, 33.330135, 35.979916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.252071, 33.154438, 35.943764>,  <30.517815, 32.861607, 35.883511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252071, 33.154438, 35.943764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107582, -0.293106, 0.950008,
		0.739630, 0.614941, 0.273486,
		-0.664360, 0.732077, 0.150633,
		30.052763, 33.374062, 35.988953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790342, 33.300724, 36.341492>,  <30.517815, 32.861607, 35.883511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790342, 33.300724, 36.341492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394941, 33.355148, 36.367867>,  <30.157700, 33.387802, 36.383690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394941, 33.355148, 36.367867>,  <30.790342, 33.300724, 36.341492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394941, 33.355148, 36.367867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010636, -0.372426, 0.928001,
		0.150818, 0.918034, 0.366697,
		-0.988504, 0.136060, 0.065933,
		30.098391, 33.395966, 36.387646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767178, 33.659504, 36.853271>,  <30.790342, 33.300724, 36.341492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.767178, 33.659504, 36.853271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390381, 33.526539, 36.834732>,  <30.164303, 33.446758, 36.823608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.390381, 33.526539, 36.834732>,  <30.767178, 33.659504, 36.853271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.390381, 33.526539, 36.834732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036858, -0.239721, 0.970142,
		-0.333602, 0.912159, 0.238068,
		-0.941993, -0.332417, -0.046351,
		30.107782, 33.426815, 36.820827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396744, 34.036892, 37.370235>,  <30.767178, 33.659504, 36.853271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396744, 34.036892, 37.370235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181681, 33.705616, 37.306950>,  <30.052643, 33.506851, 37.268978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181681, 33.705616, 37.306950>,  <30.396744, 34.036892, 37.370235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181681, 33.705616, 37.306950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054485, -0.221378, 0.973665,
		-0.841401, 0.514879, 0.164149,
		-0.537658, -0.828186, -0.158214,
		30.020384, 33.457161, 37.259487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792175, 34.195526, 37.818825>,  <30.396744, 34.036892, 37.370235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792175, 34.195526, 37.818825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820189, 33.805740, 37.733486>,  <29.836996, 33.571869, 37.682281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820189, 33.805740, 37.733486>,  <29.792175, 34.195526, 37.818825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820189, 33.805740, 37.733486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008758, -0.213265, 0.976955,
		-0.997506, -0.070287, -0.006401,
		0.070032, -0.974463, -0.213349,
		29.841198, 33.513401, 37.669483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368956, 33.891788, 38.270531>,  <29.792175, 34.195526, 37.818825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368956, 33.891788, 38.270531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587025, 33.573410, 38.165268>,  <29.717867, 33.382381, 38.102112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587025, 33.573410, 38.165268>,  <29.368956, 33.891788, 38.270531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587025, 33.573410, 38.165268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093471, -0.369666, 0.924451,
		-0.833095, -0.479390, -0.275931,
		0.545175, -0.795947, -0.263158,
		29.750578, 33.334625, 38.086319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996195, 33.260803, 38.574051>,  <29.368956, 33.891788, 38.270531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996195, 33.260803, 38.574051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357821, 33.114048, 38.486362>,  <29.574797, 33.025993, 38.433750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357821, 33.114048, 38.486362>,  <28.996195, 33.260803, 38.574051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357821, 33.114048, 38.486362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028655, -0.563806, 0.825410,
		-0.426434, -0.739942, -0.520231,
		0.904065, -0.366890, -0.219223,
		29.629040, 33.003983, 38.420597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921907, 32.516350, 38.780930>,  <28.996195, 33.260803, 38.574051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921907, 32.516350, 38.780930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308840, 32.609818, 38.741608>,  <29.541000, 32.665897, 38.718014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308840, 32.609818, 38.741608>,  <28.921907, 32.516350, 38.780930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308840, 32.609818, 38.741608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216885, -0.562050, 0.798161,
		0.131256, -0.793408, -0.594370,
		0.967333, 0.233673, -0.098306,
		29.599039, 32.679920, 38.712116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226944, 31.912605, 38.786896>,  <28.921907, 32.516350, 38.780930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226944, 31.912605, 38.786896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517992, 32.165363, 38.893688>,  <29.692621, 32.317020, 38.957764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517992, 32.165363, 38.893688>,  <29.226944, 31.912605, 38.786896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517992, 32.165363, 38.893688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265008, -0.617906, 0.740246,
		0.632725, -0.467866, -0.617058,
		0.727619, 0.631897, 0.266976,
		29.736279, 32.354931, 38.973782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790562, 31.554411, 38.876324>,  <29.226944, 31.912605, 38.786896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790562, 31.554411, 38.876324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878469, 31.889078, 39.076996>,  <29.931213, 32.089878, 39.197399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878469, 31.889078, 39.076996>,  <29.790562, 31.554411, 38.876324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878469, 31.889078, 39.076996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185382, -0.540703, 0.820533,
		0.957776, -0.087325, -0.273934,
		0.219770, 0.836669, 0.501683,
		29.944401, 32.140079, 39.227501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420195, 31.322369, 39.267456>,  <29.790562, 31.554411, 38.876324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420195, 31.322369, 39.267456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250998, 31.646877, 39.428905>,  <30.149479, 31.841583, 39.525776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250998, 31.646877, 39.428905>,  <30.420195, 31.322369, 39.267456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250998, 31.646877, 39.428905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080356, -0.477266, 0.875077,
		0.902564, 0.337716, 0.267070,
		-0.422991, 0.811274, 0.403626,
		30.124100, 31.890259, 39.549992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726667, 31.331993, 39.948544>,  <30.420195, 31.322369, 39.267456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726667, 31.331993, 39.948544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419352, 31.586403, 39.977390>,  <30.234962, 31.739050, 39.994698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.419352, 31.586403, 39.977390>,  <30.726667, 31.331993, 39.948544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419352, 31.586403, 39.977390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090568, -0.219542, 0.971390,
		0.633662, 0.739779, 0.226276,
		-0.768291, 0.636026, 0.072114,
		30.188864, 31.777210, 39.999023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873461, 31.731655, 40.578896>,  <30.726667, 31.331993, 39.948544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873461, 31.731655, 40.578896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483202, 31.746723, 40.492462>,  <30.249046, 31.755764, 40.440601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483202, 31.746723, 40.492462>,  <30.873461, 31.731655, 40.578896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483202, 31.746723, 40.492462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219196, -0.203926, 0.954132,
		-0.008122, 0.978261, 0.207218,
		-0.975647, 0.037671, -0.216087,
		30.190508, 31.758024, 40.427635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429403, 31.989382, 41.189487>,  <30.873461, 31.731655, 40.578896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429403, 31.989382, 41.189487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162043, 31.790890, 40.967861>,  <30.001625, 31.671795, 40.834885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.162043, 31.790890, 40.967861>,  <30.429403, 31.989382, 41.189487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162043, 31.790890, 40.967861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264909, -0.537250, 0.800740,
		-0.695025, 0.681996, 0.227644,
		-0.668403, -0.496230, -0.554069,
		29.961521, 31.642021, 40.801640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.841833, 32.063305, 41.480976>,  <30.429403, 31.989382, 41.189487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.841833, 32.063305, 41.480976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768532, 31.738880, 41.258770>,  <29.724550, 31.544226, 41.125446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768532, 31.738880, 41.258770>,  <29.841833, 32.063305, 41.480976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768532, 31.738880, 41.258770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393490, -0.457324, 0.797509,
		-0.900879, 0.364736, -0.235338,
		-0.183254, -0.811062, -0.555514,
		29.713556, 31.495562, 41.092117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138828, 31.918217, 41.689846>,  <29.841833, 32.063305, 41.480976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138828, 31.918217, 41.689846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290590, 31.594324, 41.510788>,  <29.381647, 31.399988, 41.403355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290590, 31.594324, 41.510788>,  <29.138828, 31.918217, 41.689846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290590, 31.594324, 41.510788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317136, -0.568324, 0.759232,
		-0.869183, -0.146090, -0.472418,
		0.379403, -0.809732, -0.447647,
		29.404411, 31.351404, 41.376495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589527, 31.440514, 41.620487>,  <29.138828, 31.918217, 41.689846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589527, 31.440514, 41.620487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919395, 31.214705, 41.606445>,  <29.117315, 31.079218, 41.598019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.919395, 31.214705, 41.606445>,  <28.589527, 31.440514, 41.620487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919395, 31.214705, 41.606445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393437, -0.617121, 0.681446,
		-0.406358, -0.548156, -0.731026,
		0.824670, -0.564524, -0.035108,
		29.166796, 31.045347, 41.595913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345781, 30.665632, 41.603405>,  <28.589527, 31.440514, 41.620487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345781, 30.665632, 41.603405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718634, 30.656805, 41.747986>,  <28.942345, 30.651508, 41.834736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.718634, 30.656805, 41.747986>,  <28.345781, 30.665632, 41.603405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.718634, 30.656805, 41.747986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317224, -0.531157, 0.785647,
		0.174650, -0.846986, -0.502107,
		0.932130, -0.022067, 0.361452,
		28.998272, 30.650185, 41.856422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482000, 29.984003, 41.814583>,  <28.345781, 30.665632, 41.603405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482000, 29.984003, 41.814583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783779, 30.167452, 42.002403>,  <28.964846, 30.277521, 42.115097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783779, 30.167452, 42.002403>,  <28.482000, 29.984003, 41.814583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783779, 30.167452, 42.002403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098394, -0.628273, 0.771746,
		0.648946, -0.628441, -0.428872,
		0.754446, 0.458623, 0.469550,
		29.010113, 30.305038, 42.143269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910532, 29.330463, 41.975353>,  <28.482000, 29.984003, 41.814583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910532, 29.330463, 41.975353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974499, 29.644419, 42.214813>,  <29.012878, 29.832792, 42.358490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.974499, 29.644419, 42.214813>,  <28.910532, 29.330463, 41.975353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974499, 29.644419, 42.214813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052524, -0.598826, 0.799155,
		0.985732, -0.159242, -0.054537,
		0.159917, 0.784888, 0.598646,
		29.022474, 29.879885, 42.394405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282856, 29.066109, 42.538597>,  <28.910532, 29.330463, 41.975353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282856, 29.066109, 42.538597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164913, 29.422314, 42.677189>,  <29.094147, 29.636036, 42.760342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.164913, 29.422314, 42.677189>,  <29.282856, 29.066109, 42.538597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164913, 29.422314, 42.677189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047277, -0.348558, 0.936094,
		0.954371, 0.292396, 0.060674,
		-0.294859, 0.890512, 0.346477,
		29.076456, 29.689466, 42.781132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.638767, 29.183266, 43.234089>,  <29.282856, 29.066109, 42.538597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.638767, 29.183266, 43.234089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365034, 29.472824, 43.269096>,  <29.200794, 29.646559, 43.290100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.365034, 29.472824, 43.269096>,  <29.638767, 29.183266, 43.234089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.365034, 29.472824, 43.269096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023569, -0.098007, 0.994907,
		0.728787, 0.682912, 0.050008,
		-0.684335, 0.723896, 0.087522,
		29.159733, 29.689993, 43.295353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941740, 29.644377, 43.731670>,  <29.638767, 29.183266, 43.234089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941740, 29.644377, 43.731670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544945, 29.671839, 43.689247>,  <29.306868, 29.688316, 43.663792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.544945, 29.671839, 43.689247>,  <29.941740, 29.644377, 43.731670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544945, 29.671839, 43.689247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112116, -0.091396, 0.989483,
		0.058239, 0.993445, 0.098361,
		-0.991987, 0.068654, -0.106059,
		29.247349, 29.692434, 43.657429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680042, 30.270548, 44.139271>,  <29.941740, 29.644377, 43.731670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680042, 30.270548, 44.139271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366282, 30.024149, 44.110268>,  <29.178024, 29.876308, 44.092865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366282, 30.024149, 44.110268>,  <29.680042, 30.270548, 44.139271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366282, 30.024149, 44.110268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144080, 0.067256, 0.987278,
		-0.603285, 0.784871, -0.141509,
		-0.784403, -0.615999, -0.072510,
		29.130960, 29.839350, 44.088516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252161, 30.478920, 44.585934>,  <29.680042, 30.270548, 44.139271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252161, 30.478920, 44.585934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127289, 30.101608, 44.540733>,  <29.052364, 29.875221, 44.513615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127289, 30.101608, 44.540733>,  <29.252161, 30.478920, 44.585934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127289, 30.101608, 44.540733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000035, -0.118929, 0.992903,
		-0.950022, 0.309971, 0.037095,
		-0.312182, -0.943278, -0.112996,
		29.033634, 29.818624, 44.506836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713377, 30.437256, 45.036297>,  <29.252161, 30.478920, 44.585934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713377, 30.437256, 45.036297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843832, 30.065258, 44.968475>,  <28.922106, 29.842060, 44.927784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843832, 30.065258, 44.968475>,  <28.713377, 30.437256, 45.036297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843832, 30.065258, 44.968475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122054, -0.219285, 0.967996,
		-0.937410, -0.295006, -0.185027,
		0.326138, -0.929992, -0.169553,
		28.941673, 29.786261, 44.917610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.518780, 30.090124, 45.623745>,  <28.713377, 30.437256, 45.036297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.518780, 30.090124, 45.623745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744839, 29.801607, 45.463573>,  <28.880474, 29.628496, 45.367470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744839, 29.801607, 45.463573>,  <28.518780, 30.090124, 45.623745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744839, 29.801607, 45.463573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158713, -0.381248, 0.910747,
		-0.809579, -0.578260, -0.100982,
		0.565148, -0.721294, -0.400428,
		28.914383, 29.585218, 45.343445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176655, 29.493120, 45.749851>,  <28.518780, 30.090124, 45.623745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176655, 29.493120, 45.749851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555664, 29.381371, 45.687687>,  <28.783070, 29.314322, 45.650391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.555664, 29.381371, 45.687687>,  <28.176655, 29.493120, 45.749851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555664, 29.381371, 45.687687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001368, -0.489663, 0.871911,
		-0.319687, -0.825942, -0.464349,
		0.947522, -0.279373, -0.155409,
		28.839920, 29.297558, 45.641064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174837, 28.680017, 45.739761>,  <28.176655, 29.493120, 45.749851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174837, 28.680017, 45.739761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535156, 28.816753, 45.846874>,  <28.751348, 28.898794, 45.911140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.535156, 28.816753, 45.846874>,  <28.174837, 28.680017, 45.739761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535156, 28.816753, 45.846874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059683, -0.708287, 0.703397,
		0.430116, -0.617637, -0.658426,
		0.900799, 0.341839, 0.267783,
		28.805395, 28.919306, 45.927208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476097, 28.098385, 45.985779>,  <28.174837, 28.680017, 45.739761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476097, 28.098385, 45.985779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704205, 28.394772, 46.127632>,  <28.841068, 28.572603, 46.212742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.704205, 28.394772, 46.127632>,  <28.476097, 28.098385, 45.985779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.704205, 28.394772, 46.127632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244486, -0.565239, 0.787865,
		0.784234, -0.362591, -0.503493,
		0.570266, 0.740968, 0.354631,
		28.875284, 28.617062, 46.234020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123411, 27.938335, 46.045567>,  <28.476097, 28.098385, 45.985779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123411, 27.938335, 46.045567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012318, 28.196562, 46.330132>,  <28.945662, 28.351498, 46.500870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.012318, 28.196562, 46.330132>,  <29.123411, 27.938335, 46.045567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012318, 28.196562, 46.330132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258010, -0.663211, 0.702554,
		0.925362, 0.378674, 0.017633,
		-0.277734, 0.645567, 0.711412,
		28.928997, 28.390232, 46.543556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653812, 27.970095, 46.387077>,  <29.123411, 27.938335, 46.045567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653812, 27.970095, 46.387077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363085, 28.072639, 46.641953>,  <29.188648, 28.134167, 46.794876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363085, 28.072639, 46.641953>,  <29.653812, 27.970095, 46.387077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363085, 28.072639, 46.641953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263674, -0.752492, 0.603517,
		0.634199, 0.606658, 0.479330,
		-0.726820, 0.256363, 0.637189,
		29.145039, 28.149548, 46.833111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003443, 28.079596, 46.986656>,  <29.653812, 27.970095, 46.387077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003443, 28.079596, 46.986656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626247, 28.031158, 47.110661>,  <29.399929, 28.002096, 47.185062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626247, 28.031158, 47.110661>,  <30.003443, 28.079596, 46.986656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626247, 28.031158, 47.110661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307705, -0.672183, 0.673415,
		0.126839, 0.730415, 0.671122,
		-0.942990, -0.121092, 0.310012,
		29.343351, 27.994831, 47.203663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984173, 28.023809, 47.778442>,  <30.003443, 28.079596, 46.986656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984173, 28.023809, 47.778442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641668, 27.855124, 47.659130>,  <29.436165, 27.753912, 47.587543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.641668, 27.855124, 47.659130>,  <29.984173, 28.023809, 47.778442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641668, 27.855124, 47.659130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149371, -0.754937, 0.638560,
		-0.494470, 0.502222, 0.709417,
		-0.856264, -0.421715, -0.298276,
		29.384789, 27.728609, 47.569649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628906, 27.821589, 48.389744>,  <29.984173, 28.023809, 47.778442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628906, 27.821589, 48.389744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468922, 27.607317, 48.092266>,  <29.372931, 27.478754, 47.913780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468922, 27.607317, 48.092266>,  <29.628906, 27.821589, 48.389744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468922, 27.607317, 48.092266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257714, -0.844415, 0.469625,
		-0.879553, -0.003828, 0.475785,
		-0.399962, -0.535677, -0.743694,
		29.348932, 27.446613, 47.869160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105957, 27.394499, 48.671124>,  <29.628906, 27.821589, 48.389744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105957, 27.394499, 48.671124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210979, 27.194078, 48.341270>,  <29.273993, 27.073826, 48.143360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210979, 27.194078, 48.341270>,  <29.105957, 27.394499, 48.671124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210979, 27.194078, 48.341270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152743, -0.822254, 0.548241,
		-0.952750, -0.269901, -0.139358,
		0.262558, -0.501051, -0.824628,
		29.289747, 27.043764, 48.093884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724985, 26.772524, 48.703278>,  <29.105957, 27.394499, 48.671124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724985, 26.772524, 48.703278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037868, 26.714453, 48.460930>,  <29.225599, 26.679611, 48.315521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037868, 26.714453, 48.460930>,  <28.724985, 26.772524, 48.703278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037868, 26.714453, 48.460930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128420, -0.914018, 0.384811,
		-0.609639, -0.378808, -0.696308,
		0.782208, -0.145176, -0.605867,
		29.272532, 26.670900, 48.279171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573997, 26.209318, 48.221695>,  <28.724985, 26.772524, 48.703278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573997, 26.209318, 48.221695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932253, 26.269680, 48.389053>,  <29.147205, 26.305897, 48.489468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932253, 26.269680, 48.389053>,  <28.573997, 26.209318, 48.221695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932253, 26.269680, 48.389053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104523, -0.842934, 0.527767,
		0.432326, -0.516421, -0.739191,
		0.895639, 0.150905, 0.418400,
		29.200945, 26.314951, 48.514572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.935537, 25.607264, 48.172592>,  <28.573997, 26.209318, 48.221695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.935537, 25.607264, 48.172592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145388, 25.796719, 48.455559>,  <29.271297, 25.910391, 48.625340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145388, 25.796719, 48.455559>,  <28.935537, 25.607264, 48.172592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145388, 25.796719, 48.455559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051713, -0.811687, 0.581799,
		0.849762, -0.341808, -0.401338,
		0.524624, 0.473636, 0.707417,
		29.302774, 25.938808, 48.667786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.148096, 24.998613, 48.517124>,  <28.935537, 25.607264, 48.172592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.148096, 24.998613, 48.517124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210794, 24.608334, 48.578369>,  <29.248413, 24.374166, 48.615116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.210794, 24.608334, 48.578369>,  <29.148096, 24.998613, 48.517124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210794, 24.608334, 48.578369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499511, 0.212052, 0.839954,
		-0.852010, -0.055179, 0.520610,
		0.156744, -0.975699, 0.153108,
		29.257818, 24.315624, 48.624302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918043, 24.784239, 49.200829>,  <29.148096, 24.998613, 48.517124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918043, 24.784239, 49.200829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234627, 24.585812, 49.057999>,  <29.424578, 24.466755, 48.972301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.234627, 24.585812, 49.057999>,  <28.918043, 24.784239, 49.200829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.234627, 24.585812, 49.057999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506346, 0.204917, 0.837629,
		-0.342351, -0.843755, 0.413367,
		0.791460, -0.496070, -0.357079,
		29.472065, 24.436991, 48.950874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.257940, 24.236193, 49.772945>,  <28.918043, 24.784239, 49.200829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.257940, 24.236193, 49.772945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529991, 24.370996, 49.512527>,  <29.693222, 24.451878, 49.356277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.529991, 24.370996, 49.512527>,  <29.257940, 24.236193, 49.772945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529991, 24.370996, 49.512527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547517, 0.357044, 0.756799,
		0.487498, -0.871174, 0.058317,
		0.680125, 0.337009, -0.651041,
		29.734030, 24.472099, 49.317215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851944, 23.978891, 49.884041>,  <29.257940, 24.236193, 49.772945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851944, 23.978891, 49.884041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910652, 24.365980, 49.802090>,  <29.945877, 24.598232, 49.752918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910652, 24.365980, 49.802090>,  <29.851944, 23.978891, 49.884041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910652, 24.365980, 49.802090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610498, 0.074350, 0.788520,
		0.778300, -0.240809, -0.579880,
		0.146768, 0.967721, -0.204880,
		29.954683, 24.656296, 49.740627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583969, 24.293755, 49.616329>,  <29.851944, 23.978891, 49.884041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583969, 24.293755, 49.616329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374622, 24.523130, 49.868443>,  <30.249014, 24.660755, 50.019711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.374622, 24.523130, 49.868443>,  <30.583969, 24.293755, 49.616329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.374622, 24.523130, 49.868443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795404, 0.063448, 0.602749,
		0.305648, 0.816788, -0.489322,
		-0.523365, 0.573438, 0.630284,
		30.217613, 24.695162, 50.057529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043285, 24.847910, 49.610191>,  <30.583969, 24.293755, 49.616329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043285, 24.847910, 49.610191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797224, 24.811670, 49.923466>,  <30.649588, 24.789927, 50.111431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.797224, 24.811670, 49.923466>,  <31.043285, 24.847910, 49.610191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.797224, 24.811670, 49.923466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780091, 0.073973, 0.621277,
		-0.114221, 0.993136, 0.025170,
		-0.615151, -0.090598, 0.783186,
		30.612679, 24.784491, 50.158421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942577, 24.980553, 48.785320>,  <31.043285, 24.847910, 49.610191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942577, 24.980553, 48.785320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624989, 24.794962, 48.628178>,  <30.434435, 24.683607, 48.533894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.624989, 24.794962, 48.628178>,  <30.942577, 24.980553, 48.785320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624989, 24.794962, 48.628178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105443, 0.531305, -0.840593,
		0.598742, -0.708831, -0.372918,
		-0.793971, -0.463976, -0.392855,
		30.386797, 24.655769, 48.510323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165960, 24.561255, 48.236137>,  <30.942577, 24.980553, 48.785320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165960, 24.561255, 48.236137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779594, 24.661282, 48.209389>,  <30.547775, 24.721298, 48.193340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.779594, 24.661282, 48.209389>,  <31.165960, 24.561255, 48.236137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.779594, 24.661282, 48.209389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162009, 0.382549, -0.909621,
		-0.201886, -0.889451, -0.410023,
		-0.965917, 0.250067, -0.066868,
		30.489819, 24.736301, 48.189327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705221, 24.057394, 47.897549>,  <31.165960, 24.561255, 48.236137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705221, 24.057394, 47.897549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627638, 24.445637, 47.840553>,  <30.581089, 24.678583, 47.806355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627638, 24.445637, 47.840553>,  <30.705221, 24.057394, 47.897549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627638, 24.445637, 47.840553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293519, -0.081181, -0.952500,
		-0.936070, -0.226567, -0.269146,
		-0.193956, 0.970606, -0.142493,
		30.569450, 24.736818, 47.797806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332396, 24.033300, 47.295197>,  <30.705221, 24.057394, 47.897549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332396, 24.033300, 47.295197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485538, 24.400606, 47.335613>,  <30.577425, 24.620989, 47.359863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485538, 24.400606, 47.335613>,  <30.332396, 24.033300, 47.295197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485538, 24.400606, 47.335613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186271, 0.030399, -0.982028,
		-0.904833, 0.394799, -0.159408,
		0.382858, 0.918264, 0.101046,
		30.600395, 24.676086, 47.365929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048353, 24.429428, 46.825260>,  <30.332396, 24.033300, 47.295197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048353, 24.429428, 46.825260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387651, 24.616631, 46.924419>,  <30.591230, 24.728952, 46.983913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387651, 24.616631, 46.924419>,  <30.048353, 24.429428, 46.825260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387651, 24.616631, 46.924419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161777, 0.216734, -0.962733,
		-0.504293, 0.856736, 0.108130,
		0.848243, 0.468007, 0.247897,
		30.642124, 24.757032, 46.998787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986500, 25.086531, 46.599373>,  <30.048353, 24.429428, 46.825260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986500, 25.086531, 46.599373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381685, 25.038568, 46.638458>,  <30.618797, 25.009790, 46.661911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381685, 25.038568, 46.638458>,  <29.986500, 25.086531, 46.599373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381685, 25.038568, 46.638458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119897, 0.194499, -0.973547,
		0.097728, 0.973546, 0.206535,
		0.987964, -0.119906, 0.097717,
		30.678074, 25.002596, 46.667774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309776, 25.594835, 46.252224>,  <29.986500, 25.086531, 46.599373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309776, 25.594835, 46.252224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597815, 25.321039, 46.297714>,  <30.770638, 25.156761, 46.325008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597815, 25.321039, 46.297714>,  <30.309776, 25.594835, 46.252224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597815, 25.321039, 46.297714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204010, 0.052201, -0.977576,
		0.663207, 0.727149, 0.177233,
		0.720095, -0.684492, 0.113725,
		30.813843, 25.115692, 46.331833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978909, 25.824436, 46.094265>,  <30.309776, 25.594835, 46.252224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978909, 25.824436, 46.094265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970242, 25.432119, 46.016724>,  <30.965040, 25.196730, 45.970200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.970242, 25.432119, 46.016724>,  <30.978909, 25.824436, 46.094265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.970242, 25.432119, 46.016724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413822, 0.167714, -0.894776,
		0.910100, -0.099611, 0.402239,
		-0.021668, -0.980791, -0.193858,
		30.963741, 25.137882, 45.958565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340492, 25.868786, 45.498028>,  <30.978909, 25.824436, 46.094265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340492, 25.868786, 45.498028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230963, 25.484385, 45.513470>,  <31.165245, 25.253744, 45.522736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230963, 25.484385, 45.513470>,  <31.340492, 25.868786, 45.498028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230963, 25.484385, 45.513470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386589, -0.146732, -0.910504,
		0.880664, -0.234394, 0.411693,
		-0.273826, -0.961004, 0.038608,
		31.148815, 25.196083, 45.525051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920652, 25.644274, 45.210228>,  <31.340492, 25.868786, 45.498028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920652, 25.644274, 45.210228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636295, 25.366179, 45.167755>,  <31.465681, 25.199322, 45.142273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636295, 25.366179, 45.167755>,  <31.920652, 25.644274, 45.210228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636295, 25.366179, 45.167755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204000, -0.059353, -0.977170,
		0.673065, -0.716323, 0.184022,
		-0.710892, -0.695240, -0.106181,
		31.423027, 25.157606, 45.135902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225132, 25.229359, 44.843269>,  <31.920652, 25.644274, 45.210228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225132, 25.229359, 44.843269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840103, 25.152794, 44.766521>,  <31.609085, 25.106855, 44.720470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.840103, 25.152794, 44.766521>,  <32.225132, 25.229359, 44.843269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840103, 25.152794, 44.766521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184802, 0.054307, -0.981274,
		0.198249, -0.980006, -0.016901,
		-0.962572, -0.191413, -0.191873,
		31.551331, 25.095371, 44.708958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199730, 24.799437, 44.307369>,  <32.225132, 25.229359, 44.843269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199730, 24.799437, 44.307369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838305, 24.970812, 44.305931>,  <31.621449, 25.073637, 44.305069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838305, 24.970812, 44.305931>,  <32.199730, 24.799437, 44.307369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838305, 24.970812, 44.305931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100900, 0.204626, -0.973626,
		-0.416404, -0.880095, -0.228122,
		-0.903564, 0.428439, -0.003595,
		31.567236, 25.099344, 44.304852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913702, 24.676867, 43.644497>,  <32.199730, 24.799437, 44.307369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913702, 24.676867, 43.644497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659439, 24.957649, 43.772999>,  <31.506882, 25.126118, 43.850098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659439, 24.957649, 43.772999>,  <31.913702, 24.676867, 43.644497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659439, 24.957649, 43.772999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158528, 0.288579, -0.944241,
		-0.755520, -0.651139, -0.072157,
		-0.635655, 0.701955, 0.321251,
		31.468742, 25.168236, 43.869373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559553, 24.721889, 43.104790>,  <31.913702, 24.676867, 43.644497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559553, 24.721889, 43.104790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470459, 25.061085, 43.297169>,  <31.417004, 25.264603, 43.412594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470459, 25.061085, 43.297169>,  <31.559553, 24.721889, 43.104790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470459, 25.061085, 43.297169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045573, 0.483740, -0.874025,
		-0.973814, -0.216592, -0.069100,
		-0.222733, 0.847988, 0.480943,
		31.403639, 25.315481, 43.441452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.009972, 24.955421, 42.777176>,  <31.559553, 24.721889, 43.104790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.009972, 24.955421, 42.777176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177732, 25.264507, 42.967758>,  <31.278389, 25.449959, 43.082108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177732, 25.264507, 42.967758>,  <31.009972, 24.955421, 42.777176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177732, 25.264507, 42.967758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243525, 0.601379, -0.760946,
		-0.874527, 0.203114, 0.440395,
		0.419403, 0.772715, 0.476459,
		31.303553, 25.496323, 43.110695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543486, 25.475681, 42.548275>,  <31.009972, 24.955421, 42.777176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543486, 25.475681, 42.548275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873657, 25.656298, 42.683792>,  <31.071760, 25.764668, 42.765102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873657, 25.656298, 42.683792>,  <30.543486, 25.475681, 42.548275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873657, 25.656298, 42.683792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118772, 0.725637, -0.677749,
		-0.551869, 0.519195, 0.652592,
		0.825429, 0.451539, 0.338791,
		31.121286, 25.791759, 42.785431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354036, 26.081186, 42.852707>,  <30.543486, 25.475681, 42.548275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354036, 26.081186, 42.852707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740192, 26.124668, 42.757881>,  <30.971886, 26.150757, 42.700985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740192, 26.124668, 42.757881>,  <30.354036, 26.081186, 42.852707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740192, 26.124668, 42.757881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217427, 0.837445, -0.501408,
		0.144027, 0.535601, 0.832098,
		0.965392, 0.108705, -0.237069,
		31.029810, 26.157280, 42.686760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517038, 26.816902, 42.860737>,  <30.354036, 26.081186, 42.852707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517038, 26.816902, 42.860737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792912, 26.646971, 42.626179>,  <30.958435, 26.545012, 42.485443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792912, 26.646971, 42.626179>,  <30.517038, 26.816902, 42.860737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792912, 26.646971, 42.626179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063046, 0.771509, -0.633087,
		0.721364, 0.473598, 0.505311,
		0.689681, -0.424828, -0.586397,
		30.999815, 26.519522, 42.450260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012783, 27.379370, 42.573891>,  <30.517038, 26.816902, 42.860737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012783, 27.379370, 42.573891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037205, 27.056349, 42.339237>,  <31.051857, 26.862537, 42.198444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037205, 27.056349, 42.339237>,  <31.012783, 27.379370, 42.573891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037205, 27.056349, 42.339237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180463, 0.586971, -0.789239,
		0.981685, -0.057680, 0.181569,
		0.061052, -0.807551, -0.586629,
		31.055521, 26.814083, 42.163250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576267, 27.516609, 42.172150>,  <31.012783, 27.379370, 42.573891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576267, 27.516609, 42.172150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362925, 27.256966, 41.955193>,  <31.234919, 27.101179, 41.825020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362925, 27.256966, 41.955193>,  <31.576267, 27.516609, 42.172150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362925, 27.256966, 41.955193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058815, 0.611196, -0.789291,
		0.843844, -0.452874, -0.287808,
		-0.533356, -0.649111, -0.542389,
		31.202917, 27.062233, 41.792477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864687, 27.646915, 41.554203>,  <31.576267, 27.516609, 42.172150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864687, 27.646915, 41.554203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531395, 27.452446, 41.448856>,  <31.331419, 27.335764, 41.385647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531395, 27.452446, 41.448856>,  <31.864687, 27.646915, 41.554203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531395, 27.452446, 41.448856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002767, 0.472641, -0.881251,
		0.552923, -0.735011, -0.392472,
		-0.833228, -0.486178, -0.263368,
		31.281425, 27.306593, 41.369846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964535, 27.353197, 40.835667>,  <31.864687, 27.646915, 41.554203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964535, 27.353197, 40.835667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572016, 27.374704, 40.909595>,  <31.336504, 27.387609, 40.953953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572016, 27.374704, 40.909595>,  <31.964535, 27.353197, 40.835667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572016, 27.374704, 40.909595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144335, 0.429732, -0.891346,
		-0.127351, -0.901354, -0.413935,
		-0.981300, 0.053768, 0.184824,
		31.277626, 27.390835, 40.965042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641029, 27.034851, 40.285263>,  <31.964535, 27.353197, 40.835667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641029, 27.034851, 40.285263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341656, 27.247953, 40.443260>,  <31.162031, 27.375814, 40.538059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.341656, 27.247953, 40.443260>,  <31.641029, 27.034851, 40.285263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341656, 27.247953, 40.443260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050649, 0.547924, -0.834993,
		-0.661273, -0.644943, -0.383101,
		-0.748433, 0.532755, 0.394993,
		31.117126, 27.407780, 40.561760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924227, 27.068579, 39.856819>,  <31.641029, 27.034851, 40.285263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924227, 27.068579, 39.856819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937056, 27.396902, 40.084938>,  <30.944754, 27.593897, 40.221809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937056, 27.396902, 40.084938>,  <30.924227, 27.068579, 39.856819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937056, 27.396902, 40.084938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139631, 0.568680, -0.810621,
		-0.989684, -0.053632, 0.132850,
		0.032074, 0.820809, 0.570302,
		30.946678, 27.643145, 40.256027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344330, 27.463888, 39.576645>,  <30.924227, 27.068579, 39.856819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344330, 27.463888, 39.576645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557013, 27.746042, 39.764141>,  <30.684622, 27.915335, 39.876640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.557013, 27.746042, 39.764141>,  <30.344330, 27.463888, 39.576645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557013, 27.746042, 39.764141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271876, 0.666328, -0.694327,
		-0.802103, 0.241740, 0.546070,
		0.531708, 0.705385, 0.468740,
		30.716526, 27.957659, 39.904762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955799, 28.093718, 39.411072>,  <30.344330, 27.463888, 39.576645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955799, 28.093718, 39.411072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304230, 28.233856, 39.548759>,  <30.513288, 28.317940, 39.631371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304230, 28.233856, 39.548759>,  <29.955799, 28.093718, 39.411072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304230, 28.233856, 39.548759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036845, 0.652257, -0.757102,
		-0.489766, 0.672175, 0.555256,
		0.871075, 0.350345, 0.344219,
		30.565552, 28.338959, 39.652027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.810995, 28.752254, 39.521969>,  <29.955799, 28.093718, 39.411072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.810995, 28.752254, 39.521969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205050, 28.723083, 39.459751>,  <30.441483, 28.705582, 39.422421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.205050, 28.723083, 39.459751>,  <29.810995, 28.752254, 39.521969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205050, 28.723083, 39.459751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091710, 0.542348, -0.835134,
		0.145261, 0.836983, 0.527597,
		0.985134, -0.072927, -0.155542,
		30.500589, 28.701206, 39.413090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985336, 29.454088, 39.409328>,  <29.810995, 28.752254, 39.521969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985336, 29.454088, 39.409328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270725, 29.214325, 39.264187>,  <30.441959, 29.070467, 39.177101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270725, 29.214325, 39.264187>,  <29.985336, 29.454088, 39.409328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270725, 29.214325, 39.264187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090322, 0.592219, -0.800698,
		0.694836, 0.538503, 0.476673,
		0.713473, -0.599408, -0.362857,
		30.484768, 29.034502, 39.155331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497419, 29.914268, 39.122448>,  <29.985336, 29.454088, 39.409328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497419, 29.914268, 39.122448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548214, 29.559696, 38.944408>,  <30.578691, 29.346952, 38.837585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.548214, 29.559696, 38.944408>,  <30.497419, 29.914268, 39.122448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.548214, 29.559696, 38.944408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031616, 0.452119, -0.891397,
		0.991400, 0.099124, 0.085439,
		0.126987, -0.886433, -0.445097,
		30.586309, 29.293766, 38.810879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124407, 29.991421, 38.741665>,  <30.497419, 29.914268, 39.122448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124407, 29.991421, 38.741665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883936, 29.719217, 38.574097>,  <30.739655, 29.555895, 38.473557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883936, 29.719217, 38.574097>,  <31.124407, 29.991421, 38.741665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883936, 29.719217, 38.574097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090224, 0.463076, -0.881715,
		0.794008, -0.567862, -0.216991,
		-0.601175, -0.680510, -0.418921,
		30.703583, 29.515064, 38.448421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358545, 29.880140, 38.191929>,  <31.124407, 29.991421, 38.741665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358545, 29.880140, 38.191929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999138, 29.724487, 38.110703>,  <30.783493, 29.631096, 38.061966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999138, 29.724487, 38.110703>,  <31.358545, 29.880140, 38.191929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999138, 29.724487, 38.110703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072406, 0.324904, -0.942971,
		0.432918, -0.861983, -0.263757,
		-0.898521, -0.389132, -0.203069,
		30.729582, 29.607748, 38.049782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429098, 29.627775, 37.500221>,  <31.358545, 29.880140, 38.191929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429098, 29.627775, 37.500221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030222, 29.602690, 37.516594>,  <30.790895, 29.587639, 37.526417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030222, 29.602690, 37.516594>,  <31.429098, 29.627775, 37.500221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030222, 29.602690, 37.516594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051810, 0.183070, -0.981734,
		0.054073, -0.981098, -0.185805,
		-0.997192, -0.062712, 0.040932,
		30.731064, 29.583876, 37.528873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246973, 29.195772, 36.974361>,  <31.429098, 29.627775, 37.500221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246973, 29.195772, 36.974361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955786, 29.454067, 37.066525>,  <30.781073, 29.609043, 37.121822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955786, 29.454067, 37.066525>,  <31.246973, 29.195772, 36.974361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955786, 29.454067, 37.066525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081366, 0.252319, -0.964217,
		-0.680766, -0.720667, -0.131140,
		-0.727968, 0.645736, 0.230408,
		30.737394, 29.647787, 37.135647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716034, 29.069105, 36.432575>,  <31.246973, 29.195772, 36.974361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716034, 29.069105, 36.432575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659117, 29.428743, 36.598167>,  <30.624966, 29.644526, 36.697521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659117, 29.428743, 36.598167>,  <30.716034, 29.069105, 36.432575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659117, 29.428743, 36.598167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196265, 0.384305, -0.902103,
		-0.970171, -0.209613, 0.121777,
		-0.142293, 0.899095, 0.413982,
		30.616428, 29.698471, 36.722363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274324, 29.400322, 35.984974>,  <30.716034, 29.069105, 36.432575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274324, 29.400322, 35.984974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400063, 29.709679, 36.205173>,  <30.475506, 29.895292, 36.337296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.400063, 29.709679, 36.205173>,  <30.274324, 29.400322, 35.984974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400063, 29.709679, 36.205173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089543, 0.553158, -0.828250,
		-0.945076, 0.309650, 0.104631,
		0.314346, 0.773391, 0.550503,
		30.494366, 29.941696, 36.370323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.808048, 30.003004, 35.842941>,  <30.274324, 29.400322, 35.984974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.808048, 30.003004, 35.842941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164415, 30.138241, 35.964241>,  <30.378235, 30.219383, 36.037022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.164415, 30.138241, 35.964241>,  <29.808048, 30.003004, 35.842941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164415, 30.138241, 35.964241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071710, 0.554611, -0.829015,
		-0.448467, 0.760330, 0.469868,
		0.890918, 0.338092, 0.303248,
		30.431690, 30.239668, 36.055214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842276, 30.660526, 35.472664>,  <29.808048, 30.003004, 35.842941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842276, 30.660526, 35.472664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193213, 30.640306, 35.663544>,  <30.403774, 30.628174, 35.778072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.193213, 30.640306, 35.663544>,  <29.842276, 30.660526, 35.472664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193213, 30.640306, 35.663544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364846, 0.716214, -0.594916,
		-0.311702, 0.696048, 0.646807,
		0.877342, -0.050549, 0.477196,
		30.456415, 30.625141, 35.806702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.047577, 31.353958, 35.859222>,  <29.842276, 30.660526, 35.472664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.047577, 31.353958, 35.859222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342363, 31.121248, 35.721573>,  <30.519236, 30.981623, 35.638985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342363, 31.121248, 35.721573>,  <30.047577, 31.353958, 35.859222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342363, 31.121248, 35.721573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387670, 0.780851, -0.489882,
		0.553710, 0.227620, 0.800996,
		0.736965, -0.581774, -0.344123,
		30.563454, 30.946716, 35.618336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601368, 31.785686, 35.872787>,  <30.047577, 31.353958, 35.859222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601368, 31.785686, 35.872787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768150, 31.496956, 35.651836>,  <30.868219, 31.323717, 35.519268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768150, 31.496956, 35.651836>,  <30.601368, 31.785686, 35.872787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768150, 31.496956, 35.651836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381062, 0.690555, -0.614756,
		0.825191, 0.045837, 0.562991,
		0.416955, -0.721825, -0.552374,
		30.893236, 31.280409, 35.486126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237185, 31.973890, 35.721024>,  <30.601368, 31.785686, 35.872787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237185, 31.973890, 35.721024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173885, 31.699171, 35.437260>,  <31.135906, 31.534340, 35.267002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173885, 31.699171, 35.437260>,  <31.237185, 31.973890, 35.721024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173885, 31.699171, 35.437260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273903, 0.659735, -0.699805,
		0.948649, -0.305052, 0.083716,
		-0.158246, -0.686799, -0.709411,
		31.126411, 31.493132, 35.224438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824266, 31.933813, 35.207298>,  <31.237185, 31.973890, 35.721024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824266, 31.933813, 35.207298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502272, 31.804029, 35.008614>,  <31.309074, 31.726158, 34.889404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502272, 31.804029, 35.008614>,  <31.824266, 31.933813, 35.207298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502272, 31.804029, 35.008614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178048, 0.666505, -0.723927,
		0.565944, -0.671190, -0.478760,
		-0.804988, -0.324460, -0.496708,
		31.260775, 31.706692, 34.859600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986498, 32.016804, 34.494701>,  <31.824266, 31.933813, 35.207298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986498, 32.016804, 34.494701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587662, 32.012169, 34.524834>,  <31.348360, 32.009388, 34.542912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587662, 32.012169, 34.524834>,  <31.986498, 32.016804, 34.494701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587662, 32.012169, 34.524834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057987, 0.756759, -0.651117,
		-0.049464, -0.653591, -0.755230,
		-0.997091, -0.011587, 0.075332,
		31.288534, 32.008694, 34.547432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729305, 31.747746, 34.670139>,  <31.986498, 32.016804, 34.494701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729305, 31.747746, 34.670139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048485, 31.988768, 34.664299>,  <33.239990, 32.133381, 34.660797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.048485, 31.988768, 34.664299>,  <32.729305, 31.747746, 34.670139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048485, 31.988768, 34.664299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398802, -0.509651, 0.762374,
		0.451932, -0.614153, -0.646973,
		0.797944, 0.602555, -0.014598,
		33.287868, 32.169533, 34.659920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384632, 31.360777, 34.543671>,  <32.729305, 31.747746, 34.670139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384632, 31.360777, 34.543671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466866, 31.707623, 34.725151>,  <33.516205, 31.915730, 34.834042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466866, 31.707623, 34.725151>,  <33.384632, 31.360777, 34.543671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466866, 31.707623, 34.725151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420179, -0.496912, 0.759295,
		0.883846, 0.034537, -0.466501,
		0.205586, 0.867114, 0.453705,
		33.528542, 31.967756, 34.861263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066177, 31.314627, 34.817688>,  <33.384632, 31.360777, 34.543671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066177, 31.314627, 34.817688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888935, 31.598356, 35.036968>,  <33.782589, 31.768593, 35.168537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888935, 31.598356, 35.036968>,  <34.066177, 31.314627, 34.817688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888935, 31.598356, 35.036968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422279, -0.374267, 0.825593,
		0.790784, 0.597316, -0.133693,
		-0.443103, 0.709322, 0.548199,
		33.756004, 31.811153, 35.201427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555485, 31.436693, 35.362431>,  <34.066177, 31.314627, 34.817688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555485, 31.436693, 35.362431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226665, 31.622572, 35.494061>,  <34.029373, 31.734098, 35.573036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226665, 31.622572, 35.494061>,  <34.555485, 31.436693, 35.362431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226665, 31.622572, 35.494061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185961, -0.327130, 0.926501,
		0.538191, 0.822827, 0.182502,
		-0.822052, 0.464696, 0.329072,
		33.980049, 31.761980, 35.592781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670235, 31.948231, 36.031967>,  <34.555485, 31.436693, 35.362431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670235, 31.948231, 36.031967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299561, 31.797935, 36.035343>,  <34.077156, 31.707758, 36.037369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299561, 31.797935, 36.035343>,  <34.670235, 31.948231, 36.031967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299561, 31.797935, 36.035343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144955, -0.336607, 0.930421,
		-0.346752, 0.863434, 0.366395,
		-0.926688, -0.375736, 0.008440,
		34.021553, 31.685215, 36.037876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434357, 32.209309, 36.642281>,  <34.670235, 31.948231, 36.031967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434357, 32.209309, 36.642281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202312, 31.896927, 36.549690>,  <34.063087, 31.709497, 36.494137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202312, 31.896927, 36.549690>,  <34.434357, 32.209309, 36.642281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202312, 31.896927, 36.549690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138060, -0.374343, 0.916955,
		-0.802752, 0.499978, 0.324979,
		-0.580111, -0.780954, -0.231478,
		34.028278, 31.662642, 36.480247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864502, 32.172348, 37.186855>,  <34.434357, 32.209309, 36.642281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864502, 32.172348, 37.186855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867130, 31.816624, 37.003948>,  <33.868706, 31.603189, 36.894203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867130, 31.816624, 37.003948>,  <33.864502, 32.172348, 37.186855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867130, 31.816624, 37.003948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084696, -0.456125, 0.885876,
		-0.996385, 0.032907, -0.078318,
		0.006572, -0.889307, -0.457263,
		33.869102, 31.549831, 36.866768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450325, 31.722139, 37.633068>,  <33.864502, 32.172348, 37.186855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450325, 31.722139, 37.633068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647419, 31.461430, 37.402451>,  <33.765675, 31.305004, 37.264080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647419, 31.461430, 37.402451>,  <33.450325, 31.722139, 37.633068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647419, 31.461430, 37.402451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153868, -0.586855, 0.794938,
		-0.856466, -0.480408, -0.188878,
		0.492738, -0.651775, -0.576540,
		33.795242, 31.265898, 37.229488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050220, 31.187424, 37.629627>,  <33.450325, 31.722139, 37.633068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050220, 31.187424, 37.629627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404179, 31.043236, 37.511627>,  <33.616554, 30.956722, 37.440826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404179, 31.043236, 37.511627>,  <33.050220, 31.187424, 37.629627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404179, 31.043236, 37.511627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057484, -0.712995, 0.698808,
		-0.462233, -0.601413, -0.651646,
		0.884893, -0.360471, -0.294998,
		33.669647, 30.935095, 37.423126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003891, 30.463825, 37.886158>,  <33.050220, 31.187424, 37.629627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003891, 30.463825, 37.886158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391407, 30.521008, 37.805145>,  <33.623917, 30.555317, 37.756538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391407, 30.521008, 37.805145>,  <33.003891, 30.463825, 37.886158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391407, 30.521008, 37.805145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235981, -0.782085, 0.576764,
		-0.075944, -0.606554, -0.791407,
		0.968786, 0.142955, -0.202530,
		33.682041, 30.563894, 37.744385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253967, 29.846655, 37.684982>,  <33.003891, 30.463825, 37.886158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253967, 29.846655, 37.684982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578720, 30.050911, 37.798191>,  <33.773571, 30.173464, 37.866116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.578720, 30.050911, 37.798191>,  <33.253967, 29.846655, 37.684982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578720, 30.050911, 37.798191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207277, -0.705298, 0.677932,
		0.545795, -0.491734, -0.678459,
		0.811877, 0.510641, 0.283023,
		33.822285, 30.204103, 37.883099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889549, 29.346931, 37.753220>,  <33.253967, 29.846655, 37.684982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889549, 29.346931, 37.753220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969769, 29.666588, 37.979900>,  <34.017899, 29.858381, 38.115910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969769, 29.666588, 37.979900>,  <33.889549, 29.346931, 37.753220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969769, 29.666588, 37.979900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337520, -0.599401, 0.725809,
		0.919708, 0.045717, -0.389933,
		0.200544, 0.799143, 0.566704,
		34.029930, 29.906330, 38.149910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407619, 29.084726, 38.111179>,  <33.889549, 29.346931, 37.753220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407619, 29.084726, 38.111179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308029, 29.416315, 38.311504>,  <34.248276, 29.615269, 38.431702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308029, 29.416315, 38.311504>,  <34.407619, 29.084726, 38.111179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308029, 29.416315, 38.311504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232987, -0.450650, 0.861761,
		0.940068, 0.331242, -0.080938,
		-0.248977, 0.828971, 0.500817,
		34.233337, 29.665007, 38.461750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971333, 29.236277, 38.580124>,  <34.407619, 29.084726, 38.111179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971333, 29.236277, 38.580124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655083, 29.429983, 38.730003>,  <34.465332, 29.546207, 38.819931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655083, 29.429983, 38.730003>,  <34.971333, 29.236277, 38.580124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655083, 29.429983, 38.730003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174115, -0.408874, 0.895827,
		0.587025, 0.773502, 0.238948,
		-0.790624, 0.484269, 0.374698,
		34.417896, 29.575264, 38.842411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.109104, 29.442640, 39.157406>,  <34.971333, 29.236277, 38.580124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.109104, 29.442640, 39.157406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714912, 29.444958, 39.225285>,  <34.478397, 29.446348, 39.266010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714912, 29.444958, 39.225285>,  <35.109104, 29.442640, 39.157406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714912, 29.444958, 39.225285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139793, -0.539564, 0.830258,
		0.096373, 0.841925, 0.530919,
		-0.985479, 0.005796, 0.169695,
		34.419270, 29.446697, 39.276192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040905, 29.463343, 39.844337>,  <35.109104, 29.442640, 39.157406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040905, 29.463343, 39.844337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679459, 29.334375, 39.731541>,  <34.462589, 29.256994, 39.663864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679459, 29.334375, 39.731541>,  <35.040905, 29.463343, 39.844337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679459, 29.334375, 39.731541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090533, -0.499703, 0.861453,
		-0.418658, 0.803955, 0.422352,
		-0.903620, -0.322418, -0.281989,
		34.408371, 29.237650, 39.646942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486599, 29.695639, 40.341228>,  <35.040905, 29.463343, 39.844337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486599, 29.695639, 40.341228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366943, 29.354347, 40.170341>,  <34.295151, 29.149572, 40.067810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366943, 29.354347, 40.170341>,  <34.486599, 29.695639, 40.341228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366943, 29.354347, 40.170341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132614, -0.406201, 0.904110,
		-0.944949, 0.327110, 0.008361,
		-0.299140, -0.853229, -0.427219,
		34.277203, 29.098379, 40.042175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122215, 29.414043, 40.759228>,  <34.486599, 29.695639, 40.341228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122215, 29.414043, 40.759228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150097, 29.068890, 40.558998>,  <34.166824, 28.861797, 40.438862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150097, 29.068890, 40.558998>,  <34.122215, 29.414043, 40.759228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150097, 29.068890, 40.558998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111985, -0.505388, 0.855595,
		-0.991262, -0.003580, -0.131857,
		0.069702, -0.862885, -0.500571,
		34.171009, 28.810024, 40.408825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502911, 28.948212, 40.871353>,  <34.122215, 29.414043, 40.759228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502911, 28.948212, 40.871353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766285, 28.685303, 40.724682>,  <33.924309, 28.527557, 40.636681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766285, 28.685303, 40.724682>,  <33.502911, 28.948212, 40.871353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766285, 28.685303, 40.724682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145981, -0.589470, 0.794491,
		-0.738343, -0.469594, -0.484078,
		0.658437, -0.657272, -0.366679,
		33.963818, 28.488121, 40.614677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182705, 28.240749, 40.866112>,  <33.502911, 28.948212, 40.871353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182705, 28.240749, 40.866112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573772, 28.162708, 40.834896>,  <33.808414, 28.115883, 40.816166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.573772, 28.162708, 40.834896>,  <33.182705, 28.240749, 40.866112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573772, 28.162708, 40.834896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069120, -0.649314, 0.757373,
		-0.198438, -0.735069, -0.648302,
		0.977673, -0.195102, -0.078040,
		33.867073, 28.104177, 40.811485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197998, 27.511328, 40.869030>,  <33.182705, 28.240749, 40.866112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197998, 27.511328, 40.869030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577396, 27.619375, 40.935242>,  <33.805035, 27.684204, 40.974968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577396, 27.619375, 40.935242>,  <33.197998, 27.511328, 40.869030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577396, 27.619375, 40.935242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047488, -0.637825, 0.768716,
		0.313225, -0.721260, -0.617798,
		0.948491, 0.270119, 0.165531,
		33.861942, 27.700411, 40.984901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564137, 26.894611, 40.853188>,  <33.197998, 27.511328, 40.869030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564137, 26.894611, 40.853188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757027, 27.165276, 41.075752>,  <33.872761, 27.327673, 41.209290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757027, 27.165276, 41.075752>,  <33.564137, 26.894611, 40.853188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757027, 27.165276, 41.075752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117573, -0.579403, 0.806517,
		0.868122, -0.454341, -0.199845,
		0.482225, 0.676659, 0.556411,
		33.901695, 27.368273, 41.242676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925426, 26.481943, 41.293846>,  <33.564137, 26.894611, 40.853188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925426, 26.481943, 41.293846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919376, 26.840660, 41.470726>,  <33.915745, 27.055889, 41.576855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.919376, 26.840660, 41.470726>,  <33.925426, 26.481943, 41.293846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919376, 26.840660, 41.470726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214542, -0.434858, 0.874568,
		0.976598, -0.081643, 0.198976,
		-0.015124, 0.896790, 0.442197,
		33.914841, 27.109697, 41.603386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381290, 26.364044, 41.861504>,  <33.925426, 26.481943, 41.293846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381290, 26.364044, 41.861504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169624, 26.691429, 41.951038>,  <34.042625, 26.887859, 42.004757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169624, 26.691429, 41.951038>,  <34.381290, 26.364044, 41.861504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169624, 26.691429, 41.951038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035733, -0.242064, 0.969602,
		0.847764, 0.521082, 0.098846,
		-0.529169, 0.818461, 0.223833,
		34.010872, 26.936968, 42.018188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698360, 26.621798, 42.510841>,  <34.381290, 26.364044, 41.861504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698360, 26.621798, 42.510841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338837, 26.793467, 42.475178>,  <34.123123, 26.896469, 42.453781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.338837, 26.793467, 42.475178>,  <34.698360, 26.621798, 42.510841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338837, 26.793467, 42.475178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107731, -0.019117, 0.993996,
		0.424893, 0.903019, 0.063418,
		-0.898810, 0.429174, -0.089160,
		34.069195, 26.922218, 42.448429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685036, 27.347782, 42.974064>,  <34.698360, 26.621798, 42.510841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685036, 27.347782, 42.974064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315453, 27.198416, 42.940914>,  <34.093704, 27.108797, 42.921024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315453, 27.198416, 42.940914>,  <34.685036, 27.347782, 42.974064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315453, 27.198416, 42.940914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104708, 0.038542, 0.993756,
		-0.367888, 0.926864, -0.074711,
		-0.923956, -0.373414, -0.082871,
		34.038265, 27.086391, 42.916054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277935, 27.763309, 43.489655>,  <34.685036, 27.347782, 42.974064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277935, 27.763309, 43.489655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021275, 27.465618, 43.415459>,  <33.867279, 27.287003, 43.370941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021275, 27.465618, 43.415459>,  <34.277935, 27.763309, 43.489655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021275, 27.465618, 43.415459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184322, -0.085125, 0.979173,
		-0.744518, 0.662478, -0.082557,
		-0.641652, -0.744229, -0.185486,
		33.828777, 27.242350, 43.359814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667404, 28.030140, 43.756042>,  <34.277935, 27.763309, 43.489655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667404, 28.030140, 43.756042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653290, 27.631254, 43.729744>,  <33.644821, 27.391924, 43.713963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653290, 27.631254, 43.729744>,  <33.667404, 28.030140, 43.756042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653290, 27.631254, 43.729744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229139, -0.055967, 0.971784,
		-0.972754, 0.049354, -0.226525,
		-0.035283, -0.997212, -0.065751,
		33.642704, 27.332090, 43.710018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072784, 27.851217, 43.991756>,  <33.667404, 28.030140, 43.756042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072784, 27.851217, 43.991756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269260, 27.503731, 44.017246>,  <33.387146, 27.295238, 44.032539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269260, 27.503731, 44.017246>,  <33.072784, 27.851217, 43.991756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269260, 27.503731, 44.017246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101788, 0.015410, 0.994687,
		-0.865084, -0.495068, -0.080856,
		0.491192, -0.868718, 0.063723,
		33.416618, 27.243116, 44.036362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.664810, 27.434631, 44.425323>,  <33.072784, 27.851217, 43.991756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.664810, 27.434631, 44.425323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035046, 27.283585, 44.435822>,  <33.257187, 27.192957, 44.442120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035046, 27.283585, 44.435822>,  <32.664810, 27.434631, 44.425323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035046, 27.283585, 44.435822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054067, -0.063276, 0.996530,
		-0.374648, -0.923796, -0.078984,
		0.925589, -0.377619, 0.026241,
		33.312721, 27.170300, 44.443695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553127, 26.711309, 44.684593>,  <32.664810, 27.434631, 44.425323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553127, 26.711309, 44.684593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939884, 26.782019, 44.758205>,  <33.171940, 26.824444, 44.802372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939884, 26.782019, 44.758205>,  <32.553127, 26.711309, 44.684593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939884, 26.782019, 44.758205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109000, -0.365981, 0.924217,
		0.230728, -0.913679, -0.334596,
		0.966894, 0.176772, 0.184033,
		33.229954, 26.835051, 44.813416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794781, 26.094881, 44.927792>,  <32.553127, 26.711309, 44.684593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794781, 26.094881, 44.927792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035236, 26.384378, 45.063332>,  <33.179512, 26.558077, 45.144657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.035236, 26.384378, 45.063332>,  <32.794781, 26.094881, 44.927792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035236, 26.384378, 45.063332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026217, -0.405932, 0.913527,
		0.798712, -0.558043, -0.225048,
		0.601141, 0.723746, 0.338853,
		33.215580, 26.601501, 45.164989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085381, 25.812674, 45.468712>,  <32.794781, 26.094881, 44.927792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085381, 25.812674, 45.468712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186462, 26.194885, 45.529510>,  <33.247112, 26.424213, 45.565990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186462, 26.194885, 45.529510>,  <33.085381, 25.812674, 45.468712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186462, 26.194885, 45.529510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134615, -0.120842, 0.983502,
		0.958133, -0.268995, 0.098092,
		0.252704, 0.955530, 0.151994,
		33.262272, 26.481544, 45.575108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.581860, 25.836792, 45.914612>,  <33.085381, 25.812674, 45.468712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.581860, 25.836792, 45.914612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400166, 26.192030, 45.942780>,  <33.291149, 26.405172, 45.959679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400166, 26.192030, 45.942780>,  <33.581860, 25.836792, 45.914612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400166, 26.192030, 45.942780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212680, -0.184860, 0.959476,
		0.865122, 0.420853, 0.272850,
		-0.454237, 0.888093, 0.070420,
		33.263893, 26.458458, 45.963905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796772, 26.183523, 46.569847>,  <33.581860, 25.836792, 45.914612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796772, 26.183523, 46.569847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454639, 26.377640, 46.497292>,  <33.249359, 26.494110, 46.453758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454639, 26.377640, 46.497292>,  <33.796772, 26.183523, 46.569847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454639, 26.377640, 46.497292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168173, 0.071075, 0.983192,
		0.490027, 0.871459, 0.020821,
		-0.855331, 0.485292, -0.181385,
		33.198040, 26.523228, 46.442875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713974, 26.732056, 47.043148>,  <33.796772, 26.183523, 46.569847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713974, 26.732056, 47.043148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336685, 26.683428, 46.919502>,  <33.110310, 26.654251, 46.845314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.336685, 26.683428, 46.919502>,  <33.713974, 26.732056, 47.043148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336685, 26.683428, 46.919502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322994, 0.118610, 0.938939,
		-0.077485, 0.985470, -0.151142,
		-0.943224, -0.121572, -0.309110,
		33.053719, 26.646955, 46.826771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363304, 27.237768, 47.397850>,  <33.713974, 26.732056, 47.043148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363304, 27.237768, 47.397850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095486, 26.968216, 47.272892>,  <32.934795, 26.806484, 47.197918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.095486, 26.968216, 47.272892>,  <33.363304, 27.237768, 47.397850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095486, 26.968216, 47.272892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386637, -0.042916, 0.921233,
		-0.634206, 0.737595, -0.231812,
		-0.669548, -0.673878, -0.312399,
		32.894623, 26.766052, 47.179173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732933, 27.500761, 47.618233>,  <33.363304, 27.237768, 47.397850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732933, 27.500761, 47.618233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650238, 27.121651, 47.521088>,  <32.600620, 26.894184, 47.462799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650238, 27.121651, 47.521088>,  <32.732933, 27.500761, 47.618233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650238, 27.121651, 47.521088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742927, -0.009455, 0.669305,
		-0.636646, 0.318804, -0.702172,
		-0.206738, -0.947774, -0.242867,
		32.588215, 26.837318, 47.448227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328205, 27.636845, 48.106129>,  <32.732933, 27.500761, 47.618233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328205, 27.636845, 48.106129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374760, 27.952847, 48.346909>,  <32.402695, 28.142448, 48.491375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374760, 27.952847, 48.346909>,  <32.328205, 27.636845, 48.106129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374760, 27.952847, 48.346909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153197, 0.613095, -0.775013,
		-0.981317, -0.002012, 0.192385,
		0.116391, 0.790007, 0.601949,
		32.409676, 28.189848, 48.527493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790915, 27.969917, 48.027309>,  <32.328205, 27.636845, 48.106129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790915, 27.969917, 48.027309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042690, 28.254711, 48.151814>,  <32.193756, 28.425589, 48.226517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.042690, 28.254711, 48.151814>,  <31.790915, 27.969917, 48.027309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.042690, 28.254711, 48.151814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150559, 0.504718, -0.850054,
		-0.762324, 0.488196, 0.424885,
		0.629440, 0.711987, 0.311256,
		32.231522, 28.468307, 48.245190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489353, 28.596149, 48.008339>,  <31.790915, 27.969917, 48.027309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489353, 28.596149, 48.008339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882526, 28.648289, 47.956406>,  <32.118431, 28.679573, 47.925247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882526, 28.648289, 47.956406>,  <31.489353, 28.596149, 48.008339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882526, 28.648289, 47.956406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181376, 0.568366, -0.802535,
		-0.030817, 0.812385, 0.582307,
		0.982931, 0.130348, -0.129832,
		32.177406, 28.687393, 47.917458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653391, 29.348673, 47.870060>,  <31.489353, 28.596149, 48.008339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653391, 29.348673, 47.870060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997488, 29.179749, 47.755772>,  <32.203945, 29.078394, 47.687199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997488, 29.179749, 47.755772>,  <31.653391, 29.348673, 47.870060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997488, 29.179749, 47.755772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003417, 0.555577, -0.831458,
		0.509872, 0.716233, 0.476489,
		0.860244, -0.422309, -0.285720,
		32.255562, 29.053057, 47.670055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043758, 29.858437, 47.606365>,  <31.653391, 29.348673, 47.870060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043758, 29.858437, 47.606365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212772, 29.524303, 47.465691>,  <32.314182, 29.323824, 47.381287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212772, 29.524303, 47.465691>,  <32.043758, 29.858437, 47.606365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212772, 29.524303, 47.465691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090563, 0.424995, -0.900654,
		0.901811, 0.348707, 0.255225,
		0.422534, -0.835334, -0.351685,
		32.339531, 29.273703, 47.360184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568756, 30.064997, 47.158253>,  <32.043758, 29.858437, 47.606365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568756, 30.064997, 47.158253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519894, 29.681963, 47.053860>,  <32.490574, 29.452143, 46.991226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519894, 29.681963, 47.053860>,  <32.568756, 30.064997, 47.158253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519894, 29.681963, 47.053860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184579, 0.236441, -0.953953,
		0.975196, -0.164706, 0.147867,
		-0.122160, -0.957584, -0.260978,
		32.483246, 29.394688, 46.975567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102226, 29.881462, 46.737896>,  <32.568756, 30.064997, 47.158253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102226, 29.881462, 46.737896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798370, 29.632963, 46.660950>,  <32.616058, 29.483864, 46.614780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798370, 29.632963, 46.660950>,  <33.102226, 29.881462, 46.737896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798370, 29.632963, 46.660950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048262, 0.241125, -0.969293,
		0.648555, -0.745594, -0.153184,
		-0.759636, -0.621247, -0.192367,
		32.570480, 29.446589, 46.603241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252865, 29.722357, 46.060333>,  <33.102226, 29.881462, 46.737896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252865, 29.722357, 46.060333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906864, 29.521935, 46.071068>,  <32.699265, 29.401682, 46.077507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906864, 29.521935, 46.071068>,  <33.252865, 29.722357, 46.060333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906864, 29.521935, 46.071068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003590, -0.059656, -0.998213,
		0.501760, -0.863357, 0.053401,
		-0.864999, -0.501055, 0.026833,
		32.647366, 29.371618, 46.079117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260349, 29.205555, 45.708801>,  <33.252865, 29.722357, 46.060333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260349, 29.205555, 45.708801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862503, 29.246704, 45.703857>,  <32.623795, 29.271393, 45.700890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862503, 29.246704, 45.703857>,  <33.260349, 29.205555, 45.708801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862503, 29.246704, 45.703857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004440, -0.076889, -0.997030,
		-0.103530, -0.991717, 0.076018,
		-0.994616, 0.102885, -0.012363,
		32.564117, 29.277565, 45.700150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.962120, 28.583029, 45.472675>,  <33.260349, 29.205555, 45.708801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.962120, 28.583029, 45.472675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694530, 28.875177, 45.417496>,  <32.533978, 29.050467, 45.384388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694530, 28.875177, 45.417496>,  <32.962120, 28.583029, 45.472675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694530, 28.875177, 45.417496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003684, -0.182328, -0.983231,
		-0.743275, -0.658266, 0.119282,
		-0.668976, 0.730371, -0.137945,
		32.493839, 29.094288, 45.376114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638382, 28.368404, 44.819355>,  <32.962120, 28.583029, 45.472675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638382, 28.368404, 44.819355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531929, 28.752167, 44.856697>,  <32.468056, 28.982424, 44.879101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531929, 28.752167, 44.856697>,  <32.638382, 28.368404, 44.819355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531929, 28.752167, 44.856697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107983, 0.125912, -0.986147,
		-0.957868, -0.252367, -0.137109,
		-0.266134, 0.959404, 0.093356,
		32.452087, 29.039988, 44.884705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178288, 28.524017, 44.160816>,  <32.638382, 28.368404, 44.819355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178288, 28.524017, 44.160816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275322, 28.876493, 44.323128>,  <32.333542, 29.087978, 44.420513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.275322, 28.876493, 44.323128>,  <32.178288, 28.524017, 44.160816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275322, 28.876493, 44.323128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245318, 0.348957, -0.904460,
		-0.938600, 0.318954, -0.131519,
		0.242587, 0.881191, 0.405776,
		32.348099, 29.140850, 44.444862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673357, 29.156326, 44.015808>,  <32.178288, 28.524017, 44.160816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673357, 29.156326, 44.015808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047569, 29.282633, 44.079151>,  <32.272095, 29.358418, 44.117157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047569, 29.282633, 44.079151>,  <31.673357, 29.156326, 44.015808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047569, 29.282633, 44.079151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064996, 0.286770, -0.955792,
		-0.347220, 0.904464, 0.247758,
		0.935529, 0.315767, 0.158358,
		32.328228, 29.377363, 44.126659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596395, 29.817339, 43.873859>,  <31.673357, 29.156326, 44.015808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596395, 29.817339, 43.873859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989416, 29.743999, 43.861366>,  <32.225227, 29.699995, 43.853870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989416, 29.743999, 43.861366>,  <31.596395, 29.817339, 43.873859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989416, 29.743999, 43.861366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043265, 0.388650, -0.920369,
		0.180890, 0.902958, 0.389801,
		0.982551, -0.183350, -0.031237,
		32.284180, 29.688993, 43.851994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905327, 30.486555, 43.766068>,  <31.596395, 29.817339, 43.873859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905327, 30.486555, 43.766068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150875, 30.210615, 43.612564>,  <32.298203, 30.045052, 43.520462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150875, 30.210615, 43.612564>,  <31.905327, 30.486555, 43.766068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150875, 30.210615, 43.612564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156683, 0.582936, -0.797268,
		0.773702, 0.429290, 0.465934,
		0.613869, -0.689852, -0.383757,
		32.335037, 30.003660, 43.497437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394608, 30.800797, 43.429852>,  <31.905327, 30.486555, 43.766068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394608, 30.800797, 43.429852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474613, 30.443344, 43.269146>,  <32.522617, 30.228872, 43.172722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.474613, 30.443344, 43.269146>,  <32.394608, 30.800797, 43.429852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.474613, 30.443344, 43.269146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225498, 0.441032, -0.868701,
		0.953490, 0.083157, 0.289726,
		0.200017, -0.893631, -0.401768,
		32.534618, 30.175255, 43.148617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154617, 30.795614, 43.149853>,  <32.394608, 30.800797, 43.429852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154617, 30.795614, 43.149853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941536, 30.515530, 42.959724>,  <32.813686, 30.347479, 42.845646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941536, 30.515530, 42.959724>,  <33.154617, 30.795614, 43.149853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941536, 30.515530, 42.959724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373637, 0.309358, -0.874467,
		0.759356, -0.643430, 0.096828,
		-0.532704, -0.700211, -0.475323,
		32.781723, 30.305466, 42.817127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547283, 30.611233, 42.632458>,  <33.154617, 30.795614, 43.149853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547283, 30.611233, 42.632458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190727, 30.475283, 42.512516>,  <32.976795, 30.393713, 42.440552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190727, 30.475283, 42.512516>,  <33.547283, 30.611233, 42.632458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190727, 30.475283, 42.512516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234671, 0.219909, -0.946873,
		0.387759, -0.914399, -0.116266,
		-0.891388, -0.339874, -0.299855,
		32.923309, 30.373320, 42.422558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718658, 30.247116, 42.058571>,  <33.547283, 30.611233, 42.632458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718658, 30.247116, 42.058571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326771, 30.322794, 42.032158>,  <33.091640, 30.368200, 42.016308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.326771, 30.322794, 42.032158>,  <33.718658, 30.247116, 42.058571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326771, 30.322794, 42.032158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129895, 0.348662, -0.928204,
		-0.152586, -0.917955, -0.366165,
		-0.979717, 0.189194, -0.066036,
		33.032856, 30.379553, 42.012348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423008, 29.937708, 41.420845>,  <33.718658, 30.247116, 42.058571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423008, 29.937708, 41.420845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199600, 30.260191, 41.498917>,  <33.065556, 30.453680, 41.545757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199600, 30.260191, 41.498917>,  <33.423008, 29.937708, 41.420845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199600, 30.260191, 41.498917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189750, 0.353230, -0.916092,
		-0.807500, -0.474617, -0.350262,
		-0.558515, 0.806206, 0.195174,
		33.032047, 30.502052, 41.557468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260628, 30.047665, 40.795135>,  <33.423008, 29.937708, 41.420845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260628, 30.047665, 40.795135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131668, 30.358707, 41.011055>,  <33.054291, 30.545332, 41.140606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131668, 30.358707, 41.011055>,  <33.260628, 30.047665, 40.795135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131668, 30.358707, 41.011055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448516, 0.627665, -0.636294,
		-0.833601, 0.036967, -0.551129,
		-0.322402, 0.777605, 0.539803,
		33.034946, 30.591990, 41.172997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873287, 30.461332, 40.371281>,  <33.260628, 30.047665, 40.795135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873287, 30.461332, 40.371281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013485, 30.696272, 40.663082>,  <33.097603, 30.837236, 40.838161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013485, 30.696272, 40.663082>,  <32.873287, 30.461332, 40.371281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013485, 30.696272, 40.663082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336882, 0.647715, -0.683356,
		-0.873879, 0.485269, 0.029154,
		0.350495, 0.587349, 0.729503,
		33.118633, 30.872477, 40.881931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686577, 31.217796, 40.187798>,  <32.873287, 30.461332, 40.371281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686577, 31.217796, 40.187798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987152, 31.227921, 40.451527>,  <33.167496, 31.233995, 40.609764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.987152, 31.227921, 40.451527>,  <32.686577, 31.217796, 40.187798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987152, 31.227921, 40.451527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476861, 0.669788, -0.569199,
		-0.456013, 0.742120, 0.491232,
		0.751436, 0.025313, 0.659321,
		33.212582, 31.235514, 40.649323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.884403, 31.891144, 40.148758>,  <32.686577, 31.217796, 40.187798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.884403, 31.891144, 40.148758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186813, 31.715261, 40.342701>,  <33.368259, 31.609732, 40.459068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186813, 31.715261, 40.342701>,  <32.884403, 31.891144, 40.148758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186813, 31.715261, 40.342701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622757, 0.711252, -0.326028,
		-0.201501, 0.548434, 0.811553,
		0.756023, -0.439706, 0.484859,
		33.413620, 31.583349, 40.488159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298882, 32.457455, 40.623615>,  <32.884403, 31.891144, 40.148758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298882, 32.457455, 40.623615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540768, 32.145149, 40.560703>,  <33.685898, 31.957767, 40.522957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540768, 32.145149, 40.560703>,  <33.298882, 32.457455, 40.623615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540768, 32.145149, 40.560703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698685, 0.614833, -0.365813,
		0.382313, 0.111322, 0.917303,
		0.604711, -0.780761, -0.157280,
		33.722179, 31.910921, 40.513519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901352, 32.717445, 40.781105>,  <33.298882, 32.457455, 40.623615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901352, 32.717445, 40.781105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965389, 32.415028, 40.527248>,  <34.003811, 32.233578, 40.374935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965389, 32.415028, 40.527248>,  <33.901352, 32.717445, 40.781105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965389, 32.415028, 40.527248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778767, 0.491801, -0.389428,
		0.606541, -0.431893, 0.667515,
		0.160094, -0.756043, -0.634641,
		34.013416, 32.188213, 40.336857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644123, 32.664673, 40.661533>,  <33.901352, 32.717445, 40.781105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644123, 32.664673, 40.661533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482861, 32.466228, 40.353939>,  <34.386101, 32.347164, 40.169384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482861, 32.466228, 40.353939>,  <34.644123, 32.664673, 40.661533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482861, 32.466228, 40.353939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653341, 0.432355, -0.621462,
		0.640787, -0.752958, 0.149820,
		-0.403159, -0.496109, -0.768986,
		34.361912, 32.317394, 40.123241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270744, 32.432549, 40.289028>,  <34.644123, 32.664673, 40.661533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270744, 32.432549, 40.289028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958168, 32.438652, 40.039509>,  <34.770622, 32.442314, 39.889797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.958168, 32.438652, 40.039509>,  <35.270744, 32.432549, 40.289028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.958168, 32.438652, 40.039509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617557, 0.161992, -0.769664,
		0.089307, -0.986674, -0.136009,
		-0.781440, 0.015257, -0.623794,
		34.723736, 32.443230, 39.852371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468559, 31.911667, 39.965393>,  <35.270744, 32.432549, 40.289028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468559, 31.911667, 39.965393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213703, 32.104252, 39.724648>,  <35.060787, 32.219803, 39.580200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213703, 32.104252, 39.724648>,  <35.468559, 31.911667, 39.965393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213703, 32.104252, 39.724648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717492, 0.085280, -0.691327,
		-0.281522, -0.872307, -0.399783,
		-0.637142, 0.481464, -0.601865,
		35.022560, 32.248692, 39.544086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526291, 31.614161, 39.226990>,  <35.468559, 31.911667, 39.965393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526291, 31.614161, 39.226990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333759, 31.961535, 39.179405>,  <35.218243, 32.169960, 39.150856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333759, 31.961535, 39.179405>,  <35.526291, 31.614161, 39.226990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333759, 31.961535, 39.179405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735061, 0.325970, -0.594499,
		-0.477506, -0.373588, -0.795248,
		-0.481324, 0.868433, -0.118957,
		35.189362, 32.222065, 39.143719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535816, 31.614361, 38.569256>,  <35.526291, 31.614161, 39.226990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535816, 31.614361, 38.569256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476074, 31.995365, 38.675400>,  <35.440228, 32.223969, 38.739086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476074, 31.995365, 38.675400>,  <35.535816, 31.614361, 38.569256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476074, 31.995365, 38.675400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496012, 0.304334, -0.813236,
		-0.855374, 0.010158, -0.517912,
		-0.149358, 0.952511, 0.265358,
		35.431267, 32.281120, 38.755009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453346, 31.940617, 37.954418>,  <35.535816, 31.614361, 38.569256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453346, 31.940617, 37.954418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533367, 32.228973, 38.219837>,  <35.581379, 32.401989, 38.379089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533367, 32.228973, 38.219837>,  <35.453346, 31.940617, 37.954418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533367, 32.228973, 38.219837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633434, 0.421515, -0.648912,
		-0.747490, 0.550128, -0.372314,
		0.200048, 0.720892, 0.663548,
		35.593380, 32.445240, 38.418903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400673, 32.528019, 37.585106>,  <35.453346, 31.940617, 37.954418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400673, 32.528019, 37.585106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629749, 32.634312, 37.895309>,  <35.767197, 32.698086, 38.081432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629749, 32.634312, 37.895309>,  <35.400673, 32.528019, 37.585106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629749, 32.634312, 37.895309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494955, 0.642026, -0.585510,
		-0.653484, 0.719158, 0.236159,
		0.572695, 0.265733, 0.775504,
		35.801559, 32.714031, 38.127960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416897, 33.241570, 37.624664>,  <35.400673, 32.528019, 37.585106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416897, 33.241570, 37.624664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746010, 33.115917, 37.814125>,  <35.943478, 33.040527, 37.927803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746010, 33.115917, 37.814125>,  <35.416897, 33.241570, 37.624664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746010, 33.115917, 37.814125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534353, 0.711473, -0.456369,
		-0.193635, 0.628593, 0.753244,
		0.822783, -0.314129, 0.473657,
		35.992844, 33.021679, 37.956223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635593, 33.831192, 37.701656>,  <35.416897, 33.241570, 37.624664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635593, 33.831192, 37.701656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962864, 33.615883, 37.782497>,  <36.159225, 33.486698, 37.831001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962864, 33.615883, 37.782497>,  <35.635593, 33.831192, 37.701656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962864, 33.615883, 37.782497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574932, 0.762155, -0.297611,
		0.006167, 0.359692, 0.933051,
		0.818178, -0.538276, 0.202098,
		36.208317, 33.454399, 37.843128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089287, 34.281822, 38.067780>,  <35.635593, 33.831192, 37.701656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089287, 34.281822, 38.067780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318127, 33.995792, 37.907097>,  <36.455429, 33.824173, 37.810688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318127, 33.995792, 37.907097>,  <36.089287, 34.281822, 38.067780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318127, 33.995792, 37.907097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682083, 0.686794, -0.251152,
		0.455481, -0.130312, 0.880656,
		0.572101, -0.715075, -0.401705,
		36.489758, 33.781269, 37.786587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707954, 34.492634, 38.244228>,  <36.089287, 34.281822, 38.067780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707954, 34.492634, 38.244228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781712, 34.260525, 37.926918>,  <36.825966, 34.121262, 37.736530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781712, 34.260525, 37.926918>,  <36.707954, 34.492634, 38.244228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781712, 34.260525, 37.926918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727078, 0.623614, -0.287162,
		0.661330, -0.523824, 0.536890,
		0.184390, -0.580270, -0.793276,
		36.837029, 34.086445, 37.688934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367760, 34.621944, 38.210018>,  <36.707954, 34.492634, 38.244228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367760, 34.621944, 38.210018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237144, 34.465858, 37.865669>,  <37.158775, 34.372208, 37.659058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237144, 34.465858, 37.865669>,  <37.367760, 34.621944, 38.210018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237144, 34.465858, 37.865669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511254, 0.693142, -0.508107,
		0.794978, -0.606044, -0.026842,
		-0.326540, -0.390211, -0.860876,
		37.139183, 34.348797, 37.607407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926666, 34.690826, 37.704868>,  <37.367760, 34.621944, 38.210018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926666, 34.690826, 37.704868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613037, 34.626606, 37.465050>,  <37.424858, 34.588074, 37.321159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613037, 34.626606, 37.465050>,  <37.926666, 34.690826, 37.704868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613037, 34.626606, 37.465050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219118, 0.832167, -0.509397,
		0.580704, -0.530776, -0.617301,
		-0.784073, -0.160548, -0.599545,
		37.377815, 34.578442, 37.285187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206936, 34.649475, 37.093201>,  <37.926666, 34.690826, 37.704868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206936, 34.649475, 37.093201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825253, 34.735245, 37.009769>,  <37.596241, 34.786709, 36.959709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825253, 34.735245, 37.009769>,  <38.206936, 34.649475, 37.093201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825253, 34.735245, 37.009769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293287, 0.807867, -0.511209,
		0.058887, -0.548974, -0.833763,
		-0.954209, 0.214428, -0.208579,
		37.538990, 34.799572, 36.947197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158062, 34.622570, 36.384575>,  <38.206936, 34.649475, 37.093201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158062, 34.622570, 36.384575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921165, 34.874676, 36.585377>,  <37.779026, 35.025940, 36.705856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921165, 34.874676, 36.585377>,  <38.158062, 34.622570, 36.384575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921165, 34.874676, 36.585377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267794, 0.741571, -0.615109,
		-0.759956, -0.229861, -0.607973,
		-0.592245, 0.630267, 0.502006,
		37.743492, 35.063755, 36.735977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847931, 34.868809, 36.212891>,  <38.158062, 34.622570, 36.384575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847931, 34.868809, 36.212891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882629, 34.784264, 36.602310>,  <38.903450, 34.733536, 36.835960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.882629, 34.784264, 36.602310>,  <38.847931, 34.868809, 36.212891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882629, 34.784264, 36.602310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770171, 0.634090, 0.069042,
		-0.631911, 0.743811, 0.217793,
		0.086746, -0.211366, 0.973550,
		38.908653, 34.720852, 36.894375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785255, 35.427841, 36.640949>,  <38.847931, 34.868809, 36.212891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785255, 35.427841, 36.640949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032974, 35.152752, 36.792477>,  <39.181606, 34.987698, 36.883392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032974, 35.152752, 36.792477>,  <38.785255, 35.427841, 36.640949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032974, 35.152752, 36.792477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758179, 0.649196, -0.060906,
		-0.204041, 0.324932, 0.923464,
		0.619299, -0.687724, 0.378819,
		39.218765, 34.946434, 36.906124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249573, 35.785664, 37.018173>,  <38.785255, 35.427841, 36.640949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249573, 35.785664, 37.018173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418961, 35.440750, 36.907078>,  <39.520596, 35.233803, 36.840420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.418961, 35.440750, 36.907078>,  <39.249573, 35.785664, 37.018173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.418961, 35.440750, 36.907078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868304, 0.473762, -0.146959,
		0.258301, -0.178926, 0.949350,
		0.423471, -0.862285, -0.277736,
		39.546001, 35.182064, 36.823757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703407, 35.665939, 37.538879>,  <39.249573, 35.785664, 37.018173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703407, 35.665939, 37.538879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825451, 35.515179, 37.189056>,  <39.898678, 35.424725, 36.979160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825451, 35.515179, 37.189056>,  <39.703407, 35.665939, 37.538879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825451, 35.515179, 37.189056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736743, 0.675318, -0.034006,
		0.603423, -0.633951, 0.483721,
		0.305107, -0.376898, -0.874561,
		39.916985, 35.402111, 36.926689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478352, 35.425713, 37.540623>,  <39.703407, 35.665939, 37.538879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478352, 35.425713, 37.540623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336624, 35.565128, 37.193523>,  <40.251587, 35.648777, 36.985264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336624, 35.565128, 37.193523>,  <40.478352, 35.425713, 37.540623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336624, 35.565128, 37.193523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787075, 0.612222, -0.075479,
		0.504945, -0.709723, -0.491247,
		-0.354322, 0.348535, -0.867744,
		40.230328, 35.669689, 36.933201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937904, 35.490570, 37.026703>,  <40.478352, 35.425713, 37.540623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937904, 35.490570, 37.026703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716301, 35.774067, 36.851997>,  <40.583340, 35.944164, 36.747173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716301, 35.774067, 36.851997>,  <40.937904, 35.490570, 37.026703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716301, 35.774067, 36.851997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826198, 0.532557, -0.183792,
		0.102341, -0.462676, -0.880601,
		-0.554006, 0.708742, -0.436764,
		40.550098, 35.986691, 36.720966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508110, 35.096954, 36.575237>,  <40.937904, 35.490570, 37.026703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508110, 35.096954, 36.575237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266605, 34.875164, 36.804333>,  <41.121704, 34.742088, 36.941788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266605, 34.875164, 36.804333>,  <41.508110, 35.096954, 36.575237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266605, 34.875164, 36.804333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220718, -0.574101, -0.788474,
		0.766001, -0.602462, 0.224235,
		-0.603760, -0.554480, 0.572736,
		41.085476, 34.708820, 36.976154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.105377, 35.212368, 36.127926>,  <41.508110, 35.096954, 36.575237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.105377, 35.212368, 36.127926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373028, 35.077248, 36.392700>,  <42.533619, 34.996174, 36.551563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373028, 35.077248, 36.392700>,  <42.105377, 35.212368, 36.127926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373028, 35.077248, 36.392700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664724, -0.126201, -0.736353,
		0.332279, 0.932718, 0.140101,
		0.669129, -0.337804, 0.661933,
		42.573765, 34.975906, 36.591282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856525, 35.135403, 36.104141>,  <42.105377, 35.212368, 36.127926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856525, 35.135403, 36.104141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239326, 35.055214, 36.020267>,  <43.469006, 35.007103, 35.969944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239326, 35.055214, 36.020267>,  <42.856525, 35.135403, 36.104141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239326, 35.055214, 36.020267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101825, -0.444677, 0.889884,
		-0.271634, -0.872969, -0.405142,
		0.956998, -0.200469, -0.209679,
		43.526424, 34.995071, 35.957363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026951, 34.405499, 36.246128>,  <42.856525, 35.135403, 36.104141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026951, 34.405499, 36.246128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349987, 34.637905, 36.286552>,  <43.543808, 34.777348, 36.310806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349987, 34.637905, 36.286552>,  <43.026951, 34.405499, 36.246128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349987, 34.637905, 36.286552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143576, -0.359908, 0.921874,
		0.571996, -0.729990, -0.374079,
		0.807593, 0.581017, 0.101057,
		43.592266, 34.812210, 36.316868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.470695, 33.954830, 36.520576>,  <43.026951, 34.405499, 36.246128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.470695, 33.954830, 36.520576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622875, 34.315369, 36.603359>,  <43.714184, 34.531693, 36.653030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622875, 34.315369, 36.603359>,  <43.470695, 33.954830, 36.520576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622875, 34.315369, 36.603359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182139, -0.292436, 0.938780,
		0.906687, -0.319466, -0.275428,
		0.380453, 0.901345, 0.206961,
		43.737011, 34.585773, 36.665447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054256, 33.813953, 36.978222>,  <43.470695, 33.954830, 36.520576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054256, 33.813953, 36.978222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967922, 34.198936, 37.044071>,  <43.916122, 34.429924, 37.083580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967922, 34.198936, 37.044071>,  <44.054256, 33.813953, 36.978222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967922, 34.198936, 37.044071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091420, -0.147936, 0.984762,
		0.972142, 0.227592, -0.056058,
		-0.215831, 0.962453, 0.164622,
		43.903172, 34.487671, 37.093456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490955, 33.973011, 37.550644>,  <44.054256, 33.813953, 36.978222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490955, 33.973011, 37.550644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205593, 34.253307, 37.551819>,  <44.034374, 34.421486, 37.552525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205593, 34.253307, 37.551819>,  <44.490955, 33.973011, 37.550644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205593, 34.253307, 37.551819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047366, -0.052399, 0.997502,
		0.699145, 0.711488, 0.070573,
		-0.713409, 0.700741, 0.002934,
		43.991570, 34.463531, 37.552700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573689, 34.222713, 38.133312>,  <44.490955, 33.973011, 37.550644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573689, 34.222713, 38.133312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224731, 34.397350, 38.045391>,  <44.015358, 34.502132, 37.992638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.224731, 34.397350, 38.045391>,  <44.573689, 34.222713, 38.133312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224731, 34.397350, 38.045391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172549, 0.145657, 0.974172,
		0.457331, 0.887791, -0.051737,
		-0.872397, 0.436591, -0.219801,
		43.963013, 34.528328, 37.979450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463135, 34.830280, 38.580524>,  <44.573689, 34.222713, 38.133312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463135, 34.830280, 38.580524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093620, 34.725834, 38.468494>,  <43.871910, 34.663166, 38.401276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093620, 34.725834, 38.468494>,  <44.463135, 34.830280, 38.580524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093620, 34.725834, 38.468494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292862, 0.010587, 0.956096,
		-0.246684, 0.965250, -0.086250,
		-0.923785, -0.261113, -0.280073,
		43.816486, 34.647499, 38.384472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.937202, 35.239285, 38.960762>,  <44.463135, 34.830280, 38.580524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.937202, 35.239285, 38.960762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716625, 34.920639, 38.861713>,  <43.584278, 34.729450, 38.802284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716625, 34.920639, 38.861713>,  <43.937202, 35.239285, 38.960762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716625, 34.920639, 38.861713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304794, -0.083912, 0.948714,
		-0.776536, 0.598638, -0.196529,
		-0.551445, -0.796612, -0.247622,
		43.551193, 34.681656, 38.787426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226780, 35.318981, 39.071568>,  <43.937202, 35.239285, 38.960762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226780, 35.318981, 39.071568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239647, 34.919846, 39.048618>,  <43.247368, 34.680367, 39.034851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.239647, 34.919846, 39.048618>,  <43.226780, 35.318981, 39.071568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239647, 34.919846, 39.048618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456838, -0.065730, 0.887118,
		-0.888968, -0.002328, -0.457963,
		0.032167, -0.997835, -0.057369,
		43.249298, 34.620495, 39.031406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606754, 35.162254, 39.096409>,  <43.226780, 35.318981, 39.071568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606754, 35.162254, 39.096409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772350, 34.810997, 39.192310>,  <42.871708, 34.600243, 39.249851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.772350, 34.810997, 39.192310>,  <42.606754, 35.162254, 39.096409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.772350, 34.810997, 39.192310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489189, 0.007496, 0.872145,
		-0.767663, -0.478344, -0.426474,
		0.413989, -0.878140, 0.239755,
		42.896545, 34.547554, 39.264236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061897, 34.754963, 39.439846>,  <42.606754, 35.162254, 39.096409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061897, 34.754963, 39.439846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407650, 34.605091, 39.573982>,  <42.615101, 34.515167, 39.654465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.407650, 34.605091, 39.573982>,  <42.061897, 34.754963, 39.439846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.407650, 34.605091, 39.573982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429665, -0.203927, 0.879660,
		-0.261214, -0.904446, -0.337261,
		0.864382, -0.374688, 0.335340,
		42.666965, 34.492687, 39.674583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964470, 34.142181, 39.785301>,  <42.061897, 34.754963, 39.439846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964470, 34.142181, 39.785301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308655, 34.274670, 39.940170>,  <42.515163, 34.354164, 40.033092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.308655, 34.274670, 39.940170>,  <41.964470, 34.142181, 39.785301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308655, 34.274670, 39.940170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329133, -0.218737, 0.918600,
		0.388949, -0.917849, -0.079198,
		0.860459, 0.331222, 0.387172,
		42.566792, 34.374035, 40.056320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884068, 33.959599, 40.429180>,  <41.964470, 34.142181, 39.785301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884068, 33.959599, 40.429180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220055, 34.170017, 40.482449>,  <42.421646, 34.296268, 40.514408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220055, 34.170017, 40.482449>,  <41.884068, 33.959599, 40.429180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220055, 34.170017, 40.482449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197123, 0.067160, 0.978076,
		0.505572, -0.847798, 0.160108,
		0.839964, 0.526049, 0.133167,
		42.472042, 34.327831, 40.522400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337490, 33.646385, 40.948174>,  <41.884068, 33.959599, 40.429180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337490, 33.646385, 40.948174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445892, 34.031406, 40.945194>,  <42.510933, 34.262417, 40.943405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445892, 34.031406, 40.945194>,  <42.337490, 33.646385, 40.948174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445892, 34.031406, 40.945194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163400, 0.053627, 0.985101,
		0.948608, -0.265750, 0.171814,
		0.271004, 0.962549, -0.007447,
		42.527195, 34.320171, 40.942959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.757000, 33.737183, 41.546280>,  <42.337490, 33.646385, 40.948174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.757000, 33.737183, 41.546280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617146, 34.100517, 41.454479>,  <42.533234, 34.318520, 41.399399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617146, 34.100517, 41.454479>,  <42.757000, 33.737183, 41.546280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617146, 34.100517, 41.454479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106954, 0.204663, 0.972971,
		0.930761, 0.364732, 0.025593,
		-0.349636, 0.908341, -0.229502,
		42.512253, 34.373020, 41.385628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100479, 34.155537, 42.017944>,  <42.757000, 33.737183, 41.546280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100479, 34.155537, 42.017944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798141, 34.376369, 41.877140>,  <42.616737, 34.508869, 41.792660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.798141, 34.376369, 41.877140>,  <43.100479, 34.155537, 42.017944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798141, 34.376369, 41.877140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205286, 0.310689, 0.928079,
		0.621738, 0.773744, -0.121498,
		-0.755844, 0.552080, -0.352006,
		42.571388, 34.541992, 41.771538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.227764, 34.793140, 42.369625>,  <43.100479, 34.155537, 42.017944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.227764, 34.793140, 42.369625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846806, 34.751469, 42.255016>,  <42.618233, 34.726467, 42.186253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.846806, 34.751469, 42.255016>,  <43.227764, 34.793140, 42.369625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.846806, 34.751469, 42.255016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304372, 0.271005, 0.913189,
		-0.017484, 0.956924, -0.289812,
		-0.952393, -0.104177, -0.286522,
		42.561089, 34.720215, 42.169060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933437, 35.120548, 42.909344>,  <43.227764, 34.793140, 42.369625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933437, 35.120548, 42.909344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621536, 34.941833, 42.733906>,  <42.434395, 34.834606, 42.628643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621536, 34.941833, 42.733906>,  <42.933437, 35.120548, 42.909344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621536, 34.941833, 42.733906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448079, -0.091037, 0.889347,
		-0.437277, 0.889996, -0.129210,
		-0.779753, -0.446787, -0.438597,
		42.387611, 34.807796, 42.602325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485626, 35.192913, 43.408310>,  <42.933437, 35.120548, 42.909344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485626, 35.192913, 43.408310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332001, 34.928509, 43.150455>,  <42.239826, 34.769867, 42.995743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332001, 34.928509, 43.150455>,  <42.485626, 35.192913, 43.408310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332001, 34.928509, 43.150455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596742, -0.355057, 0.719606,
		-0.704553, 0.661055, -0.258091,
		-0.384062, -0.661014, -0.644636,
		42.216782, 34.730206, 42.957066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658211, 35.179081, 43.310871>,  <42.485626, 35.192913, 43.408310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658211, 35.179081, 43.310871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893967, 34.857185, 43.282562>,  <42.035419, 34.664047, 43.265579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.893967, 34.857185, 43.282562>,  <41.658211, 35.179081, 43.310871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.893967, 34.857185, 43.282562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394368, -0.363071, 0.844188,
		-0.705049, -0.469647, -0.531355,
		0.589390, -0.804743, -0.070769,
		42.070786, 34.615761, 43.261333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288269, 34.619492, 43.597294>,  <41.658211, 35.179081, 43.310871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288269, 34.619492, 43.597294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678402, 34.533859, 43.618797>,  <41.912483, 34.482479, 43.631699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678402, 34.533859, 43.618797>,  <41.288269, 34.619492, 43.597294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678402, 34.533859, 43.618797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145589, -0.440887, 0.885677,
		-0.165903, -0.871659, -0.461180,
		0.975336, -0.214079, 0.053759,
		41.971004, 34.469635, 43.634926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388309, 33.980404, 43.880611>,  <41.288269, 34.619492, 43.597294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388309, 33.980404, 43.880611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721905, 34.185318, 43.962620>,  <41.922062, 34.308266, 44.011826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721905, 34.185318, 43.962620>,  <41.388309, 33.980404, 43.880611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721905, 34.185318, 43.962620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064083, -0.279130, 0.958113,
		0.548052, -0.812191, -0.199962,
		0.833986, 0.512282, 0.205025,
		41.972099, 34.339001, 44.024128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967827, 33.581806, 44.126263>,  <41.388309, 33.980404, 43.880611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967827, 33.581806, 44.126263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979618, 33.941891, 44.300045>,  <41.986694, 34.157940, 44.404316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979618, 33.941891, 44.300045>,  <41.967827, 33.581806, 44.126263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979618, 33.941891, 44.300045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179623, -0.422803, 0.888242,
		0.983294, -0.104224, 0.149234,
		0.029479, 0.900208, 0.434461,
		41.988461, 34.211952, 44.430382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624817, 33.515472, 44.520679>,  <41.967827, 33.581806, 44.126263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624817, 33.515472, 44.520679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281651, 33.679657, 44.644295>,  <42.075752, 33.778168, 44.718464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.281651, 33.679657, 44.644295>,  <42.624817, 33.515472, 44.520679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281651, 33.679657, 44.644295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070875, -0.501193, 0.862428,
		0.508879, 0.761794, 0.400890,
		-0.857916, 0.410458, 0.309039,
		42.024277, 33.802795, 44.737007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750889, 33.697945, 45.233116>,  <42.624817, 33.515472, 44.520679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750889, 33.697945, 45.233116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351608, 33.699158, 45.209190>,  <42.112038, 33.699886, 45.194836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.351608, 33.699158, 45.209190>,  <42.750889, 33.697945, 45.233116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351608, 33.699158, 45.209190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054216, -0.470118, 0.880937,
		-0.025448, 0.882598, 0.469438,
		-0.998205, 0.003032, -0.059814,
		42.052147, 33.700066, 45.191246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.062199, 32.969872, 45.086872>,  <42.750889, 33.697945, 45.233116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.062199, 32.969872, 45.086872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448505, 32.877769, 45.134655>,  <43.680290, 32.822506, 45.163326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448505, 32.877769, 45.134655>,  <43.062199, 32.969872, 45.086872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448505, 32.877769, 45.134655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223988, 0.507934, -0.831764,
		0.130843, 0.830050, 0.542123,
		0.965769, -0.230260, 0.119461,
		43.738235, 32.808693, 45.170494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385841, 33.547153, 44.836178>,  <43.062199, 32.969872, 45.086872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385841, 33.547153, 44.836178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638489, 33.237297, 44.823605>,  <43.790077, 33.051384, 44.816059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638489, 33.237297, 44.823605>,  <43.385841, 33.547153, 44.836178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638489, 33.237297, 44.823605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345535, 0.317574, -0.883036,
		0.694016, 0.546884, 0.468252,
		0.631623, -0.774638, -0.031434,
		43.827976, 33.004906, 44.814175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046055, 33.796612, 44.654640>,  <43.385841, 33.547153, 44.836178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046055, 33.796612, 44.654640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018764, 33.417534, 44.529922>,  <44.002392, 33.190086, 44.455093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018764, 33.417534, 44.529922>,  <44.046055, 33.796612, 44.654640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018764, 33.417534, 44.529922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256350, 0.285376, -0.923496,
		0.964173, -0.142931, 0.223474,
		-0.068222, -0.947698, -0.311792,
		43.998299, 33.133224, 44.436386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636795, 33.657650, 44.367359>,  <44.046055, 33.796612, 44.654640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636795, 33.657650, 44.367359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380585, 33.393738, 44.210175>,  <44.226860, 33.235390, 44.115864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380585, 33.393738, 44.210175>,  <44.636795, 33.657650, 44.367359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380585, 33.393738, 44.210175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361066, 0.192877, -0.912376,
		0.677761, -0.726284, 0.114683,
		-0.640524, -0.659781, -0.392961,
		44.188427, 33.195805, 44.092285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966015, 33.068237, 44.019035>,  <44.636795, 33.657650, 44.367359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966015, 33.068237, 44.019035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618778, 33.185982, 43.859150>,  <44.410435, 33.256626, 43.763218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618778, 33.185982, 43.859150>,  <44.966015, 33.068237, 44.019035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618778, 33.185982, 43.859150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485510, 0.335669, -0.807221,
		-0.103441, -0.894807, -0.434306,
		-0.868090, 0.294359, -0.399715,
		44.358353, 33.274288, 43.739235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.213192, 32.977551, 43.446190>,  <44.966015, 33.068237, 44.019035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.213192, 32.977551, 43.446190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863647, 33.164295, 43.391918>,  <44.653923, 33.276344, 43.359356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.863647, 33.164295, 43.391918>,  <45.213192, 32.977551, 43.446190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.863647, 33.164295, 43.391918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274667, 0.243792, -0.930120,
		-0.401163, -0.850060, -0.341272,
		-0.873857, 0.466865, -0.135683,
		44.601490, 33.304356, 43.351212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996952, 32.775063, 42.845783>,  <45.213192, 32.977551, 43.446190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996952, 32.775063, 42.845783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766090, 33.099331, 42.885174>,  <44.627575, 33.293892, 42.908810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.766090, 33.099331, 42.885174>,  <44.996952, 32.775063, 42.845783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.766090, 33.099331, 42.885174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202676, 0.259012, -0.944370,
		-0.791084, -0.525089, -0.313795,
		-0.577155, 0.810675, 0.098478,
		44.592945, 33.342533, 42.914719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.569191, 32.845459, 42.242695>,  <44.996952, 32.775063, 42.845783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.569191, 32.845459, 42.242695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605816, 33.217873, 42.383999>,  <44.627792, 33.441322, 42.468781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605816, 33.217873, 42.383999>,  <44.569191, 32.845459, 42.242695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605816, 33.217873, 42.383999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161309, 0.336194, -0.927876,
		-0.982647, 0.141942, -0.119402,
		0.091563, 0.931035, 0.353256,
		44.633286, 33.497185, 42.489975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.220749, 33.182388, 41.804890>,  <44.569191, 32.845459, 42.242695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.220749, 33.182388, 41.804890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420437, 33.478020, 41.985794>,  <44.540249, 33.655399, 42.094337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.420437, 33.478020, 41.985794>,  <44.220749, 33.182388, 41.804890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420437, 33.478020, 41.985794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129706, 0.452334, -0.882366,
		-0.856712, 0.499157, 0.129952,
		0.499220, 0.739078, 0.452264,
		44.570202, 33.699741, 42.121471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.003540, 33.751621, 41.483292>,  <44.220749, 33.182388, 41.804890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.003540, 33.751621, 41.483292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358974, 33.857327, 41.633270>,  <44.572235, 33.920750, 41.723255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.358974, 33.857327, 41.633270>,  <44.003540, 33.751621, 41.483292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358974, 33.857327, 41.633270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191232, 0.529557, -0.826438,
		-0.416952, 0.806061, 0.420020,
		0.888584, 0.264264, 0.374944,
		44.625549, 33.936607, 41.745754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077747, 34.405838, 41.362225>,  <44.003540, 33.751621, 41.483292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077747, 34.405838, 41.362225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449116, 34.265324, 41.410618>,  <44.671936, 34.181015, 41.439655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449116, 34.265324, 41.410618>,  <44.077747, 34.405838, 41.362225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449116, 34.265324, 41.410618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282566, 0.456169, -0.843840,
		0.241240, 0.817623, 0.522777,
		0.928418, -0.351287, 0.120986,
		44.727642, 34.159939, 41.446915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433674, 34.846180, 41.062977>,  <44.077747, 34.405838, 41.362225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433674, 34.846180, 41.062977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700886, 34.548965, 41.079140>,  <44.861214, 34.370636, 41.088837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700886, 34.548965, 41.079140>,  <44.433674, 34.846180, 41.062977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700886, 34.548965, 41.079140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470011, 0.379214, -0.797049,
		0.576916, 0.551441, 0.602562,
		0.668025, -0.743041, 0.040409,
		44.901295, 34.326054, 41.091263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028275, 35.173985, 40.929039>,  <44.433674, 34.846180, 41.062977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028275, 35.173985, 40.929039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138882, 34.792088, 40.885220>,  <45.205246, 34.562950, 40.858929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138882, 34.792088, 40.885220>,  <45.028275, 35.173985, 40.929039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138882, 34.792088, 40.885220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626096, 0.265455, -0.733169,
		0.729069, 0.134150, 0.671165,
		0.276519, -0.954745, -0.109545,
		45.221836, 34.505665, 40.852356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763828, 35.127979, 40.810272>,  <45.028275, 35.173985, 40.929039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763828, 35.127979, 40.810272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635956, 34.784042, 40.651039>,  <45.559231, 34.577679, 40.555500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.635956, 34.784042, 40.651039>,  <45.763828, 35.127979, 40.810272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.635956, 34.784042, 40.651039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577634, 0.156183, -0.801215,
		0.751094, -0.486081, 0.446747,
		-0.319681, -0.859844, -0.398085,
		45.540051, 34.526089, 40.531612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.379040, 34.706150, 40.700260>,  <45.763828, 35.127979, 40.810272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.379040, 34.706150, 40.700260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082973, 34.567993, 40.469486>,  <45.905334, 34.485100, 40.331020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082973, 34.567993, 40.469486>,  <46.379040, 34.706150, 40.700260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082973, 34.567993, 40.469486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584926, 0.092499, -0.805795,
		0.331681, -0.933889, 0.133564,
		-0.740168, -0.345392, -0.576936,
		45.860924, 34.464375, 40.296406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.705910, 34.246990, 40.207458>,  <46.379040, 34.706150, 40.700260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.705910, 34.246990, 40.207458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.351387, 34.311169, 40.033688>,  <46.138676, 34.349674, 39.929424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.351387, 34.311169, 40.033688>,  <46.705910, 34.246990, 40.207458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.351387, 34.311169, 40.033688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459967, 0.195916, -0.866053,
		-0.053841, -0.967406, -0.247439,
		-0.886302, 0.160443, -0.434426,
		46.085495, 34.359303, 39.903358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.808628, 33.972004, 39.581913>,  <46.705910, 34.246990, 40.207458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.808628, 33.972004, 39.581913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495045, 34.215370, 39.532532>,  <46.306892, 34.361389, 39.502903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495045, 34.215370, 39.532532>,  <46.808628, 33.972004, 39.581913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495045, 34.215370, 39.532532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361883, 0.286287, -0.887176,
		-0.504427, -0.740185, -0.444612,
		-0.783961, 0.608413, -0.123449,
		46.259857, 34.397892, 39.495499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.544506, 33.802822, 38.925117>,  <46.808628, 33.972004, 39.581913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.544506, 33.802822, 38.925117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378510, 34.156136, 39.012383>,  <46.278912, 34.368122, 39.064743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.378510, 34.156136, 39.012383>,  <46.544506, 33.802822, 38.925117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.378510, 34.156136, 39.012383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211897, 0.327023, -0.920954,
		-0.884807, -0.335958, -0.322877,
		-0.414990, 0.883283, 0.218163,
		46.254013, 34.421120, 39.077831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068031, 33.967136, 38.356567>,  <46.544506, 33.802822, 38.925117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068031, 33.967136, 38.356567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.202507, 34.298862, 38.535103>,  <46.283192, 34.497898, 38.642223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.202507, 34.298862, 38.535103>,  <46.068031, 33.967136, 38.356567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.202507, 34.298862, 38.535103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289799, 0.359832, -0.886870,
		-0.896099, 0.427502, -0.119364,
		0.336188, 0.829315, 0.446335,
		46.303364, 34.547657, 38.669003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.792778, 34.425007, 37.966515>,  <46.068031, 33.967136, 38.356567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.792778, 34.425007, 37.966515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067883, 34.658249, 38.139477>,  <46.232944, 34.798195, 38.243252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.067883, 34.658249, 38.139477>,  <45.792778, 34.425007, 37.966515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.067883, 34.658249, 38.139477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174009, 0.445860, -0.878026,
		-0.704771, 0.679116, 0.205181,
		0.687764, 0.583104, 0.432402,
		46.274212, 34.833179, 38.269196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.629620, 35.124424, 37.757755>,  <45.792778, 34.425007, 37.966515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.629620, 35.124424, 37.757755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015553, 35.086842, 37.855949>,  <46.247112, 35.064293, 37.914867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015553, 35.086842, 37.855949>,  <45.629620, 35.124424, 37.757755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015553, 35.086842, 37.855949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258690, 0.504912, -0.823495,
		-0.046579, 0.858043, 0.511462,
		0.964837, -0.093952, 0.245485,
		46.305004, 35.058655, 37.929596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.970451, 35.741760, 37.518887>,  <45.629620, 35.124424, 37.757755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.970451, 35.741760, 37.518887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.297565, 35.517513, 37.570946>,  <46.493835, 35.382965, 37.602180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.297565, 35.517513, 37.570946>,  <45.970451, 35.741760, 37.518887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.297565, 35.517513, 37.570946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354896, 0.313202, -0.880882,
		0.453076, 0.766559, 0.455093,
		0.817784, -0.560617, 0.130144,
		46.542900, 35.349327, 37.609989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566055, 36.089741, 37.337440>,  <45.970451, 35.741760, 37.518887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566055, 36.089741, 37.337440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.700562, 35.713764, 37.314003>,  <46.781265, 35.488178, 37.299942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.700562, 35.713764, 37.314003>,  <46.566055, 36.089741, 37.337440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700562, 35.713764, 37.314003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388373, 0.195079, -0.900617,
		0.857958, 0.280091, 0.430647,
		0.336265, -0.939943, -0.058590,
		46.801441, 35.431782, 37.296425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.263153, 36.149559, 37.094395>,  <46.566055, 36.089741, 37.337440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.263153, 36.149559, 37.094395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.126064, 35.779922, 37.026764>,  <47.043812, 35.558140, 36.986187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.126064, 35.779922, 37.026764>,  <47.263153, 36.149559, 37.094395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.126064, 35.779922, 37.026764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438282, 0.001906, -0.898835,
		0.830932, -0.382156, 0.404362,
		-0.342725, -0.924096, -0.169076,
		47.023247, 35.502693, 36.976040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.818947, 35.839417, 36.962566>,  <47.263153, 36.149559, 37.094395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.818947, 35.839417, 36.962566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498085, 35.665329, 36.799038>,  <47.305569, 35.560875, 36.700920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.498085, 35.665329, 36.799038>,  <47.818947, 35.839417, 36.962566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.498085, 35.665329, 36.799038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437210, 0.038217, -0.898547,
		0.406689, -0.899513, 0.159626,
		-0.802154, -0.435220, -0.408819,
		47.257439, 35.534763, 36.676392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.043499, 35.258308, 36.556625>,  <47.818947, 35.839417, 36.962566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.043499, 35.258308, 36.556625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.706318, 35.432785, 36.430660>,  <47.504009, 35.537472, 36.355083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.706318, 35.432785, 36.430660>,  <48.043499, 35.258308, 36.556625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.706318, 35.432785, 36.430660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456073, 0.268903, -0.848345,
		-0.285363, -0.858735, -0.425608,
		-0.842951, 0.436194, -0.314911,
		47.453434, 35.563644, 36.336185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.848240, 34.834946, 36.095409>,  <48.043499, 35.258308, 36.556625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.848240, 34.834946, 36.095409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.790642, 35.227333, 36.043297>,  <47.756081, 35.462765, 36.012028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.790642, 35.227333, 36.043297>,  <47.848240, 34.834946, 36.095409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.790642, 35.227333, 36.043297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419068, -0.058820, -0.906047,
		-0.896463, -0.185069, -0.402621,
		-0.143999, 0.980964, -0.130286,
		47.747440, 35.521622, 36.004211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.411266, 35.010288, 35.540710>,  <47.848240, 34.834946, 36.095409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.411266, 35.010288, 35.540710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636463, 35.337765, 35.585941>,  <47.771584, 35.534248, 35.613079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.636463, 35.337765, 35.585941>,  <47.411266, 35.010288, 35.540710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.636463, 35.337765, 35.585941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369579, -0.127015, -0.920477,
		-0.739222, 0.560014, -0.374079,
		0.562994, 0.818689, 0.113078,
		47.805363, 35.583370, 35.619865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.843868, 35.103306, 35.098019>,  <47.411266, 35.010288, 35.540710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.843868, 35.103306, 35.098019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.543957, 35.169491, 34.841755>,  <47.364010, 35.209202, 34.687996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.543957, 35.169491, 34.841755>,  <47.843868, 35.103306, 35.098019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.543957, 35.169491, 34.841755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640091, -0.063959, -0.765632,
		-0.167662, -0.984140, -0.057958,
		-0.749782, 0.165466, -0.640662,
		47.319023, 35.219131, 34.649555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.371925, 32.902355, 44.104836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.029648, 32.699127, 44.065536>,  <30.824282, 32.577190, 44.041958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.029648, 32.699127, 44.065536>,  <31.371925, 32.902355, 44.104836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029648, 32.699127, 44.065536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016938, 0.217248, -0.975969,
		0.517204, -0.833468, -0.194503,
		-0.855694, -0.508070, -0.098244,
		30.772940, 32.546707, 44.036064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568941, 32.366714, 43.630280>,  <31.371925, 32.902355, 44.104836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568941, 32.366714, 43.630280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.173985, 32.427242, 43.611687>,  <30.937010, 32.463558, 43.600533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.173985, 32.427242, 43.611687>,  <31.568941, 32.366714, 43.630280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173985, 32.427242, 43.611687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054204, 0.047327, -0.997408,
		-0.148729, -0.987351, -0.054933,
		-0.987391, 0.151321, -0.046479,
		30.877768, 32.472637, 43.597744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333340, 31.958530, 43.100918>,  <31.568941, 32.366714, 43.630280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333340, 31.958530, 43.100918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.053423, 32.239048, 43.155289>,  <30.885473, 32.407360, 43.187912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.053423, 32.239048, 43.155289>,  <31.333340, 31.958530, 43.100918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053423, 32.239048, 43.155289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052488, 0.240245, -0.969292,
		-0.712416, -0.671168, -0.204931,
		-0.699791, 0.701296, 0.135926,
		30.843485, 32.449436, 43.196068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.867319, 31.950323, 42.501881>,  <31.333340, 31.958530, 43.100918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.867319, 31.950323, 42.501881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.799089, 32.305511, 42.672718>,  <30.758152, 32.518623, 42.775219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.799089, 32.305511, 42.672718>,  <30.867319, 31.950323, 42.501881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799089, 32.305511, 42.672718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024804, 0.437176, -0.899034,
		-0.985032, -0.142761, -0.096597,
		-0.170576, 0.887973, 0.427092,
		30.747917, 32.571903, 42.800846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351288, 32.229824, 42.098618>,  <30.867319, 31.950323, 42.501881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351288, 32.229824, 42.098618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.524080, 32.533646, 42.293129>,  <30.627756, 32.715939, 42.409836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.524080, 32.533646, 42.293129>,  <30.351288, 32.229824, 42.098618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.524080, 32.533646, 42.293129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037853, 0.553975, -0.831672,
		-0.901089, 0.340858, 0.268058,
		0.431979, 0.759557, 0.486278,
		30.653673, 32.761513, 42.439011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031118, 32.817871, 41.767841>,  <30.351288, 32.229824, 42.098618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031118, 32.817871, 41.767841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.344378, 32.951466, 41.977654>,  <30.532333, 33.031620, 42.103542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.344378, 32.951466, 41.977654>,  <30.031118, 32.817871, 41.767841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344378, 32.951466, 41.977654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273584, 0.572439, -0.772959,
		-0.558419, 0.748845, 0.356931,
		0.783148, 0.333984, 0.524533,
		30.579321, 33.051662, 42.135014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019051, 33.604599, 41.796917>,  <30.031118, 32.817871, 41.767841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019051, 33.604599, 41.796917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.398529, 33.489712, 41.849808>,  <30.626215, 33.420780, 41.881542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.398529, 33.489712, 41.849808>,  <30.019051, 33.604599, 41.796917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.398529, 33.489712, 41.849808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291435, 0.632063, -0.718026,
		0.122654, 0.719723, 0.683341,
		0.948695, -0.287219, 0.132227,
		30.683138, 33.403545, 41.889477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304972, 34.197773, 41.753395>,  <30.019051, 33.604599, 41.796917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304972, 34.197773, 41.753395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.582747, 33.924191, 41.663982>,  <30.749413, 33.760040, 41.610336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.582747, 33.924191, 41.663982>,  <30.304972, 34.197773, 41.753395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.582747, 33.924191, 41.663982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383397, 0.614589, -0.689410,
		0.608902, 0.393052, 0.689020,
		0.694438, -0.683952, -0.223530,
		30.791079, 33.719006, 41.596924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936018, 34.546490, 41.651882>,  <30.304972, 34.197773, 41.753395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936018, 34.546490, 41.651882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.996775, 34.199001, 41.463306>,  <31.033230, 33.990509, 41.350163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.996775, 34.199001, 41.463306>,  <30.936018, 34.546490, 41.651882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996775, 34.199001, 41.463306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562600, 0.468153, -0.681407,
		0.812656, -0.161728, 0.559852,
		0.151893, -0.868722, -0.471435,
		31.042343, 33.938385, 41.321877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664898, 34.646172, 41.470459>,  <30.936018, 34.546490, 41.651882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664898, 34.646172, 41.470459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.511461, 34.382046, 41.212208>,  <31.419399, 34.223568, 41.057255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.511461, 34.382046, 41.212208>,  <31.664898, 34.646172, 41.470459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511461, 34.382046, 41.212208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449150, 0.477462, -0.755178,
		0.806921, -0.579666, 0.113431,
		-0.383592, -0.660317, -0.645631,
		31.396383, 34.183952, 41.018520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184517, 34.201824, 41.245747>,  <31.664898, 34.646172, 41.470459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184517, 34.201824, 41.245747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.890081, 34.181496, 40.975758>,  <31.713419, 34.169300, 40.813763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.890081, 34.181496, 40.975758>,  <32.184517, 34.201824, 41.245747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890081, 34.181496, 40.975758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585695, 0.452045, -0.672768,
		0.339308, -0.890546, -0.302982,
		-0.736093, -0.050820, -0.674971,
		31.669254, 34.166248, 40.773266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521637, 34.076313, 40.610153>,  <32.184517, 34.201824, 41.245747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521637, 34.076313, 40.610153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.173206, 34.211788, 40.467876>,  <31.964148, 34.293072, 40.382511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.173206, 34.211788, 40.467876>,  <32.521637, 34.076313, 40.610153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.173206, 34.211788, 40.467876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484618, 0.475036, -0.734497,
		-0.079796, -0.812178, -0.577926,
		-0.871079, 0.338684, -0.355690,
		31.911882, 34.313393, 40.361168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.473080, 33.942211, 39.801998>,  <32.521637, 34.076313, 40.610153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.473080, 33.942211, 39.801998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.220375, 34.242741, 39.878300>,  <32.068752, 34.423058, 39.924080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.220375, 34.242741, 39.878300>,  <32.473080, 33.942211, 39.801998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220375, 34.242741, 39.878300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404776, 0.529620, -0.745425,
		-0.661085, -0.393717, -0.638712,
		-0.631762, 0.751325, 0.190757,
		32.030846, 34.468140, 39.935528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383198, 34.145790, 39.141029>,  <32.473080, 33.942211, 39.801998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383198, 34.145790, 39.141029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.205090, 34.448185, 39.332954>,  <32.098225, 34.629623, 39.448109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.205090, 34.448185, 39.332954>,  <32.383198, 34.145790, 39.141029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205090, 34.448185, 39.332954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263161, 0.622690, -0.736887,
		-0.855852, -0.201844, -0.476210,
		-0.445267, 0.755987, 0.479813,
		32.071510, 34.674980, 39.476898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006447, 34.456814, 38.660278>,  <32.383198, 34.145790, 39.141029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006447, 34.456814, 38.660278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.058434, 34.739929, 38.938026>,  <32.089626, 34.909798, 39.104675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.058434, 34.739929, 38.938026>,  <32.006447, 34.456814, 38.660278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058434, 34.739929, 38.938026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380455, 0.611107, -0.694120,
		-0.915622, 0.354387, -0.189859,
		0.129963, 0.707784, 0.694371,
		32.097424, 34.952263, 39.146339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.885450, 35.032558, 38.245724>,  <32.006447, 34.456814, 38.660278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.885450, 35.032558, 38.245724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.040653, 35.159851, 38.591713>,  <32.133774, 35.236225, 38.799309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.040653, 35.159851, 38.591713>,  <31.885450, 35.032558, 38.245724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040653, 35.159851, 38.591713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452057, 0.752146, -0.479500,
		-0.803177, 0.577068, 0.147982,
		0.388008, 0.318227, 0.864975,
		32.157055, 35.255318, 38.851204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807268, 35.670277, 38.213898>,  <31.885450, 35.032558, 38.245724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807268, 35.670277, 38.213898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.104076, 35.627930, 38.478683>,  <32.282162, 35.602520, 38.637554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.104076, 35.627930, 38.478683>,  <31.807268, 35.670277, 38.213898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104076, 35.627930, 38.478683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584363, 0.586051, -0.561305,
		-0.328521, 0.803328, 0.496728,
		0.742020, -0.105869, 0.661965,
		32.326683, 35.596169, 38.677273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192661, 36.343708, 38.304100>,  <31.807268, 35.670277, 38.213898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192661, 36.343708, 38.304100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.467964, 36.091568, 38.447742>,  <32.633144, 35.940285, 38.533928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.467964, 36.091568, 38.447742>,  <32.192661, 36.343708, 38.304100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467964, 36.091568, 38.447742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706019, 0.468152, -0.531386,
		0.166847, 0.619264, 0.767251,
		0.688259, -0.630354, 0.359102,
		32.674442, 35.902462, 38.555473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879532, 36.758766, 38.429535>,  <32.192661, 36.343708, 38.304100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879532, 36.758766, 38.429535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.995090, 36.375824, 38.430542>,  <33.064426, 36.146057, 38.431145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.995090, 36.375824, 38.430542>,  <32.879532, 36.758766, 38.429535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995090, 36.375824, 38.430542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812204, 0.243697, -0.530034,
		0.506819, 0.155168, 0.847972,
		0.288893, -0.957358, 0.002518,
		33.081757, 36.088615, 38.431297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575935, 36.861191, 38.483940>,  <32.879532, 36.758766, 38.429535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575935, 36.861191, 38.483940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.531338, 36.475868, 38.386272>,  <33.504581, 36.244675, 38.327671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.531338, 36.475868, 38.386272>,  <33.575935, 36.861191, 38.483940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531338, 36.475868, 38.386272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909359, 0.000199, -0.416011,
		0.400793, -0.268418, 0.875966,
		-0.111490, -0.963303, -0.244168,
		33.497890, 36.186878, 38.313023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165321, 36.540314, 38.591782>,  <33.575935, 36.861191, 38.483940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165321, 36.540314, 38.591782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.971447, 36.368797, 38.286831>,  <33.855122, 36.265888, 38.103859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.971447, 36.368797, 38.286831>,  <34.165321, 36.540314, 38.591782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971447, 36.368797, 38.286831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827621, 0.057243, -0.558361,
		0.283060, -0.901589, 0.327130,
		-0.484686, -0.428789, -0.762378,
		33.826042, 36.240162, 38.058117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497261, 35.982986, 38.410408>,  <34.165321, 36.540314, 38.591782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497261, 35.982986, 38.410408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.277409, 36.071819, 38.088268>,  <34.145496, 36.125118, 37.894985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.277409, 36.071819, 38.088268>,  <34.497261, 35.982986, 38.410408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277409, 36.071819, 38.088268> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829758, 0.033200, -0.557134,
		-0.096994, -0.974462, -0.202525,
		-0.549630, 0.222086, -0.805347,
		34.112518, 36.138443, 37.846664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702591, 35.777348, 37.789291>,  <34.497261, 35.982986, 38.410408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702591, 35.777348, 37.789291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078300, 35.702316, 37.904240>,  <35.303726, 35.657299, 37.973209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078300, 35.702316, 37.904240>,  <34.702591, 35.777348, 37.789291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078300, 35.702316, 37.904240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317516, -0.792712, 0.520375,
		0.130195, -0.580020, -0.804131,
		0.939272, -0.187574, 0.287373,
		35.360081, 35.646046, 37.990452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914463, 35.004635, 37.676983>,  <34.702591, 35.777348, 37.789291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914463, 35.004635, 37.676983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.127327, 35.151657, 37.982063>,  <35.255047, 35.239872, 38.165112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.127327, 35.151657, 37.982063>,  <34.914463, 35.004635, 37.676983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127327, 35.151657, 37.982063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411745, -0.674787, 0.612478,
		0.739780, -0.639972, -0.207754,
		0.532158, 0.367557, 0.762699,
		35.286976, 35.261925, 38.210873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150852, 34.426044, 38.036888>,  <34.914463, 35.004635, 37.676983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150852, 34.426044, 38.036888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231194, 34.701462, 38.315617>,  <35.279400, 34.866711, 38.482853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.231194, 34.701462, 38.315617>,  <35.150852, 34.426044, 38.036888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231194, 34.701462, 38.315617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356882, -0.611007, 0.706615,
		0.912300, -0.390613, 0.123004,
		0.200857, 0.688543, 0.696825,
		35.291451, 34.908024, 38.524666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562946, 34.105556, 38.548328>,  <35.150852, 34.426044, 38.036888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562946, 34.105556, 38.548328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.423969, 34.439663, 38.718796>,  <35.340584, 34.640125, 38.821075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.423969, 34.439663, 38.718796>,  <35.562946, 34.105556, 38.548328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423969, 34.439663, 38.718796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301332, -0.529831, 0.792766,
		0.887967, 0.147019, 0.435776,
		-0.347439, 0.835263, 0.426171,
		35.319736, 34.690243, 38.846645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952129, 34.256435, 39.179195>,  <35.562946, 34.105556, 38.548328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952129, 34.256435, 39.179195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614769, 34.466103, 39.226387>,  <35.412354, 34.591904, 39.254704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614769, 34.466103, 39.226387>,  <35.952129, 34.256435, 39.179195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614769, 34.466103, 39.226387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079830, -0.339406, 0.937246,
		0.531319, 0.781057, 0.328100,
		-0.843402, 0.524169, 0.117981,
		35.361748, 34.623352, 39.261780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953236, 34.639225, 39.796261>,  <35.952129, 34.256435, 39.179195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953236, 34.639225, 39.796261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561344, 34.615589, 39.719700>,  <35.326210, 34.601410, 39.673763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.561344, 34.615589, 39.719700>,  <35.953236, 34.639225, 39.796261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561344, 34.615589, 39.719700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177207, -0.189902, 0.965678,
		-0.093407, 0.980023, 0.175582,
		-0.979731, -0.059087, -0.191405,
		35.267426, 34.597862, 39.662277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615131, 35.141613, 40.198135>,  <35.953236, 34.639225, 39.796261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615131, 35.141613, 40.198135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.323391, 34.885075, 40.102875>,  <35.148346, 34.731152, 40.045719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.323391, 34.885075, 40.102875>,  <35.615131, 35.141613, 40.198135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323391, 34.885075, 40.102875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120605, -0.222123, 0.967531,
		-0.673421, 0.734396, 0.084657,
		-0.729355, -0.641345, -0.238155,
		35.104584, 34.692673, 40.031429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022343, 35.303188, 40.577530>,  <35.615131, 35.141613, 40.198135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022343, 35.303188, 40.577530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.982029, 34.922218, 40.462475>,  <34.957840, 34.693638, 40.393440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.982029, 34.922218, 40.462475>,  <35.022343, 35.303188, 40.577530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982029, 34.922218, 40.462475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218083, -0.260930, 0.940402,
		-0.970712, 0.157506, -0.181410,
		-0.100784, -0.952422, -0.287637,
		34.951794, 34.636490, 40.376183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353642, 35.100441, 40.899818>,  <35.022343, 35.303188, 40.577530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353642, 35.100441, 40.899818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552818, 34.767708, 40.801754>,  <34.672325, 34.568069, 40.742916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.552818, 34.767708, 40.801754>,  <34.353642, 35.100441, 40.899818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552818, 34.767708, 40.801754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238439, -0.403134, 0.883532,
		-0.833786, -0.381493, -0.399080,
		0.497944, -0.831833, -0.245165,
		34.702202, 34.518158, 40.728203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939793, 34.598976, 41.079021>,  <34.353642, 35.100441, 40.899818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939793, 34.598976, 41.079021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.298229, 34.424694, 41.045147>,  <34.513290, 34.320126, 41.024822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.298229, 34.424694, 41.045147>,  <33.939793, 34.598976, 41.079021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298229, 34.424694, 41.045147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205550, -0.576455, 0.790853,
		-0.393399, -0.691273, -0.606118,
		0.896095, -0.435708, -0.084686,
		34.567059, 34.293980, 41.019741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.750099, 34.012585, 41.316643>,  <33.939793, 34.598976, 41.079021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.750099, 34.012585, 41.316643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.148815, 34.042713, 41.327492>,  <34.388046, 34.060791, 41.334000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.148815, 34.042713, 41.327492>,  <33.750099, 34.012585, 41.316643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148815, 34.042713, 41.327492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023671, -0.600935, 0.798948,
		0.076481, -0.795741, -0.600789,
		0.996790, 0.075326, 0.027124,
		34.447853, 34.065311, 41.335629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033813, 33.329956, 41.361984>,  <33.750099, 34.012585, 41.316643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033813, 33.329956, 41.361984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.294571, 33.582191, 41.530457>,  <34.451027, 33.733532, 41.631538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.294571, 33.582191, 41.530457>,  <34.033813, 33.329956, 41.361984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294571, 33.582191, 41.530457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055146, -0.593366, 0.803042,
		0.756303, -0.500271, -0.421586,
		0.651893, 0.630591, 0.421176,
		34.490139, 33.771370, 41.656811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414856, 32.884693, 41.729794>,  <34.033813, 33.329956, 41.361984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414856, 32.884693, 41.729794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.486351, 33.223175, 41.930588>,  <34.529247, 33.426266, 42.051064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.486351, 33.223175, 41.930588>,  <34.414856, 32.884693, 41.729794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486351, 33.223175, 41.930588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223499, -0.461943, 0.858287,
		0.958176, -0.265599, 0.106561,
		0.178734, 0.846206, 0.501984,
		34.539970, 33.477036, 42.081184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926910, 32.801586, 42.253323>,  <34.414856, 32.884693, 41.729794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926910, 32.801586, 42.253323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.636185, 33.060295, 42.345783>,  <34.461750, 33.215519, 42.401260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.636185, 33.060295, 42.345783>,  <34.926910, 32.801586, 42.253323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636185, 33.060295, 42.345783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134702, -0.464232, 0.875411,
		0.673499, 0.605122, 0.424531,
		-0.726811, 0.646773, 0.231148,
		34.418140, 33.254326, 42.415127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084164, 32.841442, 42.922707>,  <34.926910, 32.801586, 42.253323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084164, 32.841442, 42.922707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.714931, 32.984730, 42.866699>,  <34.493393, 33.070702, 42.833096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.714931, 32.984730, 42.866699>,  <35.084164, 32.841442, 42.922707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714931, 32.984730, 42.866699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297083, -0.432872, 0.851095,
		0.244265, 0.827226, 0.505995,
		-0.923079, 0.358216, -0.140019,
		34.438007, 33.092194, 42.824692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849098, 33.075523, 43.623562>,  <35.084164, 32.841442, 42.922707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849098, 33.075523, 43.623562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.502739, 33.052727, 43.424774>,  <34.294926, 33.039051, 43.305500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.502739, 33.052727, 43.424774>,  <34.849098, 33.075523, 43.623562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502739, 33.052727, 43.424774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473677, -0.225947, 0.851222,
		-0.160799, 0.972471, 0.168651,
		-0.865895, -0.056990, -0.496969,
		34.242970, 33.035629, 43.275684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383251, 33.400787, 44.019375>,  <34.849098, 33.075523, 43.623562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383251, 33.400787, 44.019375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.158878, 33.173504, 43.778545>,  <34.024254, 33.037132, 43.634048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.158878, 33.173504, 43.778545>,  <34.383251, 33.400787, 44.019375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158878, 33.173504, 43.778545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549345, -0.288602, 0.784174,
		-0.619334, 0.770616, -0.150256,
		-0.560932, -0.568208, -0.602075,
		33.990597, 33.003040, 43.597923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757332, 33.757786, 44.078541>,  <34.383251, 33.400787, 44.019375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757332, 33.757786, 44.078541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.698284, 33.375248, 43.977646>,  <33.662857, 33.145725, 43.917110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.698284, 33.375248, 43.977646>,  <33.757332, 33.757786, 44.078541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698284, 33.375248, 43.977646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557652, -0.130148, 0.819808,
		-0.816843, 0.261678, -0.514093,
		-0.147617, -0.956340, -0.252236,
		33.653999, 33.088345, 43.901974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.009228, 33.573513, 44.190670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.175064, 33.211952, 44.148582>,  <33.274567, 32.995014, 44.123329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.175064, 33.211952, 44.148582>,  <33.009228, 33.573513, 44.190670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175064, 33.211952, 44.148582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506421, -0.325243, 0.798596,
		-0.756075, -0.277808, -0.592599,
		0.414595, -0.903903, -0.105220,
		33.299442, 32.940781, 44.117016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503574, 33.123795, 44.246841>,  <33.009228, 33.573513, 44.190670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503574, 33.123795, 44.246841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823769, 32.894539, 44.316963>,  <33.015884, 32.756985, 44.359035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.823769, 32.894539, 44.316963>,  <32.503574, 33.123795, 44.246841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823769, 32.894539, 44.316963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431609, -0.348307, 0.832103,
		-0.415854, -0.741749, -0.526188,
		0.800487, -0.573141, 0.175301,
		33.063915, 32.722595, 44.369553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226139, 32.446281, 44.407475>,  <32.503574, 33.123795, 44.246841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226139, 32.446281, 44.407475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591576, 32.464527, 44.569103>,  <32.810837, 32.475475, 44.666080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591576, 32.464527, 44.569103>,  <32.226139, 32.446281, 44.407475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591576, 32.464527, 44.569103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343828, -0.443895, 0.827490,
		0.217115, -0.894917, -0.389853,
		0.913588, 0.045618, 0.404073,
		32.865654, 32.478214, 44.690327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492039, 31.777283, 44.605000>,  <32.226139, 32.446281, 44.407475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492039, 31.777283, 44.605000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.692165, 32.028343, 44.843575>,  <32.812241, 32.178978, 44.986721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.692165, 32.028343, 44.843575>,  <32.492039, 31.777283, 44.605000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692165, 32.028343, 44.843575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425211, -0.421954, 0.800719,
		0.754241, -0.654224, 0.055774,
		0.500316, 0.627651, 0.596438,
		32.842258, 32.216637, 45.022507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549046, 31.404160, 45.269623>,  <32.492039, 31.777283, 44.605000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549046, 31.404160, 45.269623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661373, 31.776037, 45.364964>,  <32.728767, 31.999165, 45.422169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.661373, 31.776037, 45.364964>,  <32.549046, 31.404160, 45.269623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661373, 31.776037, 45.364964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345336, -0.133838, 0.928887,
		0.895481, -0.343158, 0.283473,
		0.280815, 0.929693, 0.238354,
		32.745617, 32.054947, 45.436470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862495, 31.404911, 45.966900>,  <32.549046, 31.404160, 45.269623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862495, 31.404911, 45.966900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770950, 31.789715, 45.907349>,  <32.716022, 32.020596, 45.871620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770950, 31.789715, 45.907349>,  <32.862495, 31.404911, 45.966900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770950, 31.789715, 45.907349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209244, 0.100743, 0.972660,
		0.950704, 0.253756, 0.178238,
		-0.228863, 0.962007, -0.148874,
		32.702293, 32.078316, 45.862686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279053, 31.849232, 46.381248>,  <32.862495, 31.404911, 45.966900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279053, 31.849232, 46.381248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962448, 32.074341, 46.285923>,  <32.772484, 32.209408, 46.228729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.962448, 32.074341, 46.285923>,  <33.279053, 31.849232, 46.381248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962448, 32.074341, 46.285923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199285, 0.130956, 0.971152,
		0.577747, 0.816172, 0.008498,
		-0.791514, 0.562774, -0.238310,
		32.724995, 32.243172, 46.214432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332390, 32.382816, 46.906853>,  <33.279053, 31.849232, 46.381248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332390, 32.382816, 46.906853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964104, 32.365196, 46.751755>,  <32.743134, 32.354626, 46.658695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.964104, 32.365196, 46.751755>,  <33.332390, 32.382816, 46.906853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964104, 32.365196, 46.751755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375959, -0.166229, 0.911605,
		-0.104612, 0.985103, 0.136488,
		-0.920712, -0.044051, -0.387748,
		32.687889, 32.351982, 46.635429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886024, 32.613235, 47.432308>,  <33.332390, 32.382816, 46.906853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886024, 32.613235, 47.432308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597019, 32.457413, 47.203842>,  <32.423618, 32.363918, 47.066765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.597019, 32.457413, 47.203842>,  <32.886024, 32.613235, 47.432308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597019, 32.457413, 47.203842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523514, -0.231332, 0.820012,
		-0.451568, 0.891478, -0.036798,
		-0.722510, -0.389555, -0.571163,
		32.380268, 32.340546, 47.032494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293732, 32.836987, 47.753426>,  <32.886024, 32.613235, 47.432308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293732, 32.836987, 47.753426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211723, 32.511940, 47.535210>,  <32.162518, 32.316914, 47.404278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211723, 32.511940, 47.535210>,  <32.293732, 32.836987, 47.753426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211723, 32.511940, 47.535210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470810, -0.406779, 0.782859,
		-0.858081, 0.417353, -0.299188,
		-0.205025, -0.812618, -0.545543,
		32.150215, 32.268154, 47.371548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657045, 32.624371, 47.986610>,  <32.293732, 32.836987, 47.753426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657045, 32.624371, 47.986610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.737436, 32.295898, 47.772968>,  <31.785671, 32.098816, 47.644783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.737436, 32.295898, 47.772968>,  <31.657045, 32.624371, 47.986610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737436, 32.295898, 47.772968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696703, -0.503107, 0.511359,
		-0.688631, 0.269343, -0.673232,
		0.200976, -0.821181, -0.534107,
		31.797729, 32.049545, 47.612736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997751, 32.273872, 47.923904>,  <31.657045, 32.624371, 47.986610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997751, 32.273872, 47.923904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.271196, 31.992514, 47.846024>,  <31.435263, 31.823698, 47.799294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.271196, 31.992514, 47.846024>,  <30.997751, 32.273872, 47.923904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271196, 31.992514, 47.846024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530984, -0.662349, 0.528536,
		-0.500729, -0.257931, -0.826282,
		0.683613, -0.703396, -0.194700,
		31.476280, 31.781494, 47.787613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.613663, 31.610863, 47.730545>,  <30.997751, 32.273872, 47.923904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.613663, 31.610863, 47.730545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.983154, 31.518478, 47.852779>,  <31.204849, 31.463047, 47.926121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.983154, 31.518478, 47.852779>,  <30.613663, 31.610863, 47.730545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983154, 31.518478, 47.852779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383050, -0.556653, 0.737163,
		-0.000148, -0.797994, -0.602665,
		0.923727, -0.230960, 0.305589,
		31.260273, 31.449190, 47.944454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698122, 30.861891, 47.796944>,  <30.613663, 31.610863, 47.730545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698122, 30.861891, 47.796944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.989286, 31.007788, 48.029190>,  <31.163984, 31.095325, 48.168537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.989286, 31.007788, 48.029190>,  <30.698122, 30.861891, 47.796944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989286, 31.007788, 48.029190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347730, -0.533441, 0.771054,
		0.590957, -0.763155, -0.261466,
		0.727910, 0.364740, 0.580613,
		31.207659, 31.117210, 48.203373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954649, 30.252951, 48.012112>,  <30.698122, 30.861891, 47.796944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954649, 30.252951, 48.012112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.115879, 30.535223, 48.245193>,  <31.212618, 30.704586, 48.385040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.115879, 30.535223, 48.245193>,  <30.954649, 30.252951, 48.012112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115879, 30.535223, 48.245193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054808, -0.616961, 0.785083,
		0.913524, -0.348385, -0.210005,
		0.403076, 0.705682, 0.582703,
		31.236801, 30.746927, 48.420006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491909, 30.008940, 48.422371>,  <30.954649, 30.252951, 48.012112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491909, 30.008940, 48.422371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.400503, 30.321247, 48.654984>,  <31.345659, 30.508633, 48.794552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.400503, 30.321247, 48.654984>,  <31.491909, 30.008940, 48.422371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400503, 30.321247, 48.654984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231427, -0.623779, 0.746553,
		0.945633, 0.036017, 0.323234,
		-0.228515, 0.780770, 0.581531,
		31.331949, 30.555479, 48.829441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633493, 29.830225, 49.093876>,  <31.491909, 30.008940, 48.422371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633493, 29.830225, 49.093876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426819, 30.156738, 49.197197>,  <31.302814, 30.352646, 49.259190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.426819, 30.156738, 49.197197>,  <31.633493, 29.830225, 49.093876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426819, 30.156738, 49.197197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302137, -0.456119, 0.837060,
		0.801091, 0.354457, 0.482300,
		-0.516688, 0.816282, 0.258298,
		31.271812, 30.401623, 49.274685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786659, 30.106350, 49.865734>,  <31.633493, 29.830225, 49.093876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786659, 30.106350, 49.865734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.418875, 30.209206, 49.746761>,  <31.198204, 30.270918, 49.675377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.418875, 30.209206, 49.746761>,  <31.786659, 30.106350, 49.865734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.418875, 30.209206, 49.746761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389072, -0.486050, 0.782547,
		0.056654, 0.835246, 0.546950,
		-0.919464, 0.257137, -0.297434,
		31.143036, 30.286346, 49.657532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486292, 30.561224, 50.342735>,  <31.786659, 30.106350, 49.865734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486292, 30.561224, 50.342735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.184467, 30.384281, 50.148846>,  <31.003372, 30.278116, 50.032513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.184467, 30.384281, 50.148846>,  <31.486292, 30.561224, 50.342735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184467, 30.384281, 50.148846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333518, -0.377635, 0.863804,
		-0.565157, 0.813458, 0.137415,
		-0.754562, -0.442355, -0.484726,
		30.958099, 30.251575, 50.003429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828508, 30.664772, 50.781113>,  <31.486292, 30.561224, 50.342735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828508, 30.664772, 50.781113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.710108, 30.380316, 50.526031>,  <30.639069, 30.209642, 50.372982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.710108, 30.380316, 50.526031>,  <30.828508, 30.664772, 50.781113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710108, 30.380316, 50.526031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369201, -0.530554, 0.763022,
		-0.880951, 0.461295, -0.105510,
		-0.295999, -0.711140, -0.637703,
		30.621307, 30.166973, 50.334721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198000, 30.400002, 51.038395>,  <30.828508, 30.664772, 50.781113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198000, 30.400002, 51.038395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.277559, 30.096748, 50.789982>,  <30.325294, 29.914797, 50.640934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.277559, 30.096748, 50.789982>,  <30.198000, 30.400002, 51.038395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277559, 30.096748, 50.789982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429803, -0.636977, 0.639945,
		-0.880743, 0.139635, -0.452542,
		0.198900, -0.758131, -0.621029,
		30.337229, 29.869308, 50.603672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.675903, 29.983421, 51.138176>,  <30.198000, 30.400002, 51.038395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.675903, 29.983421, 51.138176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.982653, 29.775013, 50.988274>,  <30.166702, 29.649967, 50.898331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.982653, 29.775013, 50.988274>,  <29.675903, 29.983421, 51.138176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982653, 29.775013, 50.988274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200936, -0.749473, 0.630805,
		-0.609531, -0.408446, -0.679443,
		0.766874, -0.521020, -0.374755,
		30.212715, 29.618708, 50.875847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330524, 29.310287, 50.986656>,  <29.675903, 29.983421, 51.138176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330524, 29.310287, 50.986656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.726330, 29.252571, 50.984104>,  <29.963814, 29.217941, 50.982571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.726330, 29.252571, 50.984104>,  <29.330524, 29.310287, 50.986656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726330, 29.252571, 50.984104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117365, -0.829051, 0.546718,
		-0.084180, -0.540236, -0.837292,
		0.989515, -0.144292, -0.006384,
		30.023184, 29.209284, 50.982189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425745, 28.667698, 50.816013>,  <29.330524, 29.310287, 50.986656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425745, 28.667698, 50.816013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.767801, 28.761497, 51.000942>,  <29.973036, 28.817778, 51.111900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.767801, 28.761497, 51.000942>,  <29.425745, 28.667698, 50.816013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.767801, 28.761497, 51.000942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046624, -0.853435, 0.519111,
		0.516296, -0.465468, -0.718873,
		0.855140, 0.234498, 0.462327,
		30.024343, 28.831846, 51.139641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937149, 28.203444, 50.497307>,  <29.425745, 28.667698, 50.816013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937149, 28.203444, 50.497307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.607271, 28.065811, 50.317760>,  <28.409344, 27.983231, 50.210033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.607271, 28.065811, 50.317760>,  <28.937149, 28.203444, 50.497307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.607271, 28.065811, 50.317760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202960, 0.560737, -0.802734,
		0.527895, -0.753118, -0.392607,
		-0.824702, -0.344075, -0.448863,
		28.359861, 27.962585, 50.183102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065577, 27.870531, 49.818764>,  <28.937149, 28.203444, 50.497307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065577, 27.870531, 49.818764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.684404, 27.991594, 49.811623>,  <28.455700, 28.064232, 49.807339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.684404, 27.991594, 49.811623>,  <29.065577, 27.870531, 49.818764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684404, 27.991594, 49.811623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189158, 0.547494, -0.815150,
		-0.236941, -0.780158, -0.578975,
		-0.952931, 0.302660, -0.017849,
		28.398525, 28.082392, 49.806267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947910, 28.065474, 49.092781>,  <29.065577, 27.870531, 49.818764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947910, 28.065474, 49.092781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.628901, 28.224752, 49.274063>,  <28.437494, 28.320320, 49.382832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.628901, 28.224752, 49.274063>,  <28.947910, 28.065474, 49.092781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628901, 28.224752, 49.274063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007507, 0.744616, -0.667451,
		-0.603239, -0.535711, -0.590860,
		-0.797525, 0.398197, 0.453203,
		28.389643, 28.344212, 49.410023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346191, 27.993395, 48.634514>,  <28.947910, 28.065474, 49.092781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346191, 27.993395, 48.634514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.293272, 28.297621, 48.888771>,  <28.261520, 28.480156, 49.041325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.293272, 28.297621, 48.888771>,  <28.346191, 27.993395, 48.634514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.293272, 28.297621, 48.888771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153231, 0.649259, -0.744972,
		-0.979294, -0.001159, -0.202438,
		-0.132298, 0.760566, 0.635638,
		28.253582, 28.525791, 49.079464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916994, 28.349298, 48.361706>,  <28.346191, 27.993395, 48.634514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916994, 28.349298, 48.361706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.099072, 28.610519, 48.603806>,  <28.208319, 28.767252, 48.749065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.099072, 28.610519, 48.603806>,  <27.916994, 28.349298, 48.361706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099072, 28.610519, 48.603806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063685, 0.654132, -0.753695,
		-0.888112, 0.381622, 0.256167,
		0.455193, 0.653051, 0.605246,
		28.235630, 28.806435, 48.785378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699406, 29.012722, 48.165936>,  <27.916994, 28.349298, 48.361706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699406, 29.012722, 48.165936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.030615, 29.092604, 48.375504>,  <28.229342, 29.140533, 48.501244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.030615, 29.092604, 48.375504>,  <27.699406, 29.012722, 48.165936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030615, 29.092604, 48.375504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311944, 0.612369, -0.726426,
		-0.465904, 0.764933, 0.444760,
		0.828024, 0.199704, 0.523922,
		28.279022, 29.152515, 48.532681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714731, 29.715605, 48.101200>,  <27.699406, 29.012722, 48.165936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714731, 29.715605, 48.101200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.091825, 29.606594, 48.178120>,  <28.318083, 29.541187, 48.224270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.091825, 29.606594, 48.178120>,  <27.714731, 29.715605, 48.101200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091825, 29.606594, 48.178120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320155, 0.577714, -0.750831,
		0.093529, 0.769401, 0.631882,
		0.942737, -0.272525, 0.192295,
		28.374647, 29.524837, 48.235809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102741, 30.328995, 48.261391>,  <27.714731, 29.715605, 48.101200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102741, 30.328995, 48.261391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.368004, 30.047768, 48.158691>,  <28.527161, 29.879032, 48.097073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.368004, 30.047768, 48.158691>,  <28.102741, 30.328995, 48.261391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368004, 30.047768, 48.158691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416552, 0.631669, -0.653818,
		0.621857, 0.326635, 0.711760,
		0.663157, -0.703067, -0.256748,
		28.566952, 29.836847, 48.081669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578758, 30.713665, 48.194515>,  <28.102741, 30.328995, 48.261391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578758, 30.713665, 48.194515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.742973, 30.399689, 48.008900>,  <28.841503, 30.211304, 47.897530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.742973, 30.399689, 48.008900>,  <28.578758, 30.713665, 48.194515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742973, 30.399689, 48.008900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535024, 0.619447, -0.574487,
		0.738383, -0.012421, 0.674267,
		0.410537, -0.784940, -0.464034,
		28.866135, 30.164207, 47.869690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.328655, 30.871492, 48.162132>,  <28.578758, 30.713665, 48.194515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.328655, 30.871492, 48.162132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248581, 30.602470, 47.877148>,  <29.200537, 30.441057, 47.706158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.248581, 30.602470, 47.877148>,  <29.328655, 30.871492, 48.162132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248581, 30.602470, 47.877148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640308, 0.460589, -0.614706,
		0.741573, -0.579249, 0.338438,
		-0.200186, -0.672554, -0.712458,
		29.188524, 30.400703, 47.663410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.007055, 30.679399, 47.798981>,  <29.328655, 30.871492, 48.162132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.007055, 30.679399, 47.798981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.697121, 30.613127, 47.554955>,  <29.511160, 30.573364, 47.408539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.697121, 30.613127, 47.554955>,  <30.007055, 30.679399, 47.798981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697121, 30.613127, 47.554955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442725, 0.546641, -0.710759,
		0.451244, -0.820813, -0.350207,
		-0.774838, -0.165680, -0.610063,
		29.464670, 30.563423, 47.371937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379936, 30.731424, 47.164108>,  <30.007055, 30.679399, 47.798981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379936, 30.731424, 47.164108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.993282, 30.709988, 47.063915>,  <29.761290, 30.697126, 47.003799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.993282, 30.709988, 47.063915>,  <30.379936, 30.731424, 47.164108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993282, 30.709988, 47.063915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190101, 0.505326, -0.841729,
		0.171683, -0.861263, -0.478279,
		-0.966636, -0.053589, -0.250483,
		29.703291, 30.693911, 46.988770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.406986, 30.387114, 46.541973>,  <30.379936, 30.731424, 47.164108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.406986, 30.387114, 46.541973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.062967, 30.588917, 46.572411>,  <29.856556, 30.709999, 46.590672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.062967, 30.588917, 46.572411>,  <30.406986, 30.387114, 46.541973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.062967, 30.588917, 46.572411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189546, 0.454400, -0.870398,
		-0.473698, -0.734161, -0.486433,
		-0.860048, 0.504507, 0.076091,
		29.804953, 30.740269, 46.595238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885052, 30.294264, 45.889297>,  <30.406986, 30.387114, 46.541973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885052, 30.294264, 45.889297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.808994, 30.645832, 46.064270>,  <29.763361, 30.856773, 46.169254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.808994, 30.645832, 46.064270>,  <29.885052, 30.294264, 45.889297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.808994, 30.645832, 46.064270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091863, 0.459532, -0.883398,
		-0.977449, -0.127787, -0.168117,
		-0.190142, 0.878920, 0.437430,
		29.751951, 30.909508, 46.195499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603788, 30.674236, 45.324379>,  <29.885052, 30.294264, 45.889297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603788, 30.674236, 45.324379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.712900, 30.947443, 45.595402>,  <29.778368, 31.111366, 45.758015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.712900, 30.947443, 45.595402>,  <29.603788, 30.674236, 45.324379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.712900, 30.947443, 45.595402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307215, 0.605553, -0.734115,
		-0.911707, 0.408407, -0.044650,
		0.272780, 0.683015, 0.677555,
		29.794735, 31.152348, 45.798668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347588, 31.446320, 45.023071>,  <29.603788, 30.674236, 45.324379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347588, 31.446320, 45.023071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.616455, 31.529383, 45.307343>,  <29.777777, 31.579222, 45.477905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.616455, 31.529383, 45.307343>,  <29.347588, 31.446320, 45.023071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616455, 31.529383, 45.307343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488747, 0.596568, -0.636580,
		-0.556160, 0.775232, 0.299502,
		0.672171, 0.207659, 0.710679,
		29.818106, 31.591681, 45.520546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399940, 32.184631, 45.161564>,  <29.347588, 31.446320, 45.023071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399940, 32.184631, 45.161564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.745676, 32.012722, 45.266033>,  <29.953117, 31.909576, 45.328716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.745676, 32.012722, 45.266033>,  <29.399940, 32.184631, 45.161564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.745676, 32.012722, 45.266033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498398, 0.662610, -0.559059,
		0.067214, 0.613385, 0.786919,
		0.864339, -0.429776, 0.261173,
		30.004978, 31.883789, 45.344383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768694, 32.765560, 45.220890>,  <29.399940, 32.184631, 45.161564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768694, 32.765560, 45.220890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004063, 32.450783, 45.146610>,  <30.145285, 32.261917, 45.102043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.004063, 32.450783, 45.146610>,  <29.768694, 32.765560, 45.220890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004063, 32.450783, 45.146610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454140, 0.511686, -0.729339,
		0.668965, 0.344826, 0.658468,
		0.588424, -0.786939, -0.185701,
		30.180590, 32.214703, 45.090900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322216, 33.091515, 45.047966>,  <29.768694, 32.765560, 45.220890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322216, 33.091515, 45.047966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.408827, 32.713741, 44.949043>,  <30.460794, 32.487076, 44.889690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.408827, 32.713741, 44.949043>,  <30.322216, 33.091515, 45.047966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.408827, 32.713741, 44.949043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305777, 0.306177, -0.901530,
		0.927154, 0.119587, 0.355082,
		0.216529, -0.944433, -0.247306,
		30.473785, 32.430412, 44.874851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.057486, 33.041809, 44.802490>,  <30.322216, 33.091515, 45.047966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.057486, 33.041809, 44.802490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816753, 32.767803, 44.638271>,  <30.672314, 32.603397, 44.539742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.816753, 32.767803, 44.638271>,  <31.057486, 33.041809, 44.802490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816753, 32.767803, 44.638271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271517, 0.307940, -0.911840,
		0.751050, -0.660244, 0.000666,
		-0.601832, -0.685019, -0.410546,
		30.636204, 32.562298, 44.515106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.823330, 33.705246, 42.623734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.817417, 34.094570, 42.715343>,  <41.813869, 34.328163, 42.770309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.817417, 34.094570, 42.715343>,  <41.823330, 33.705246, 42.623734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817417, 34.094570, 42.715343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328150, 0.221089, -0.918388,
		-0.944510, 0.061583, -0.322658,
		-0.014779, 0.973307, 0.229029,
		41.812984, 34.386562, 42.784054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441498, 34.027859, 42.125767>,  <41.823330, 33.705246, 42.623734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441498, 34.027859, 42.125767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.714546, 34.288433, 42.258228>,  <41.878376, 34.444778, 42.337708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.714546, 34.288433, 42.258228>,  <41.441498, 34.027859, 42.125767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714546, 34.288433, 42.258228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319859, 0.141105, -0.936899,
		-0.657056, 0.745469, -0.112046,
		0.682618, 0.651434, 0.331158,
		41.919331, 34.483864, 42.357574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315525, 34.658001, 41.817902>,  <41.441498, 34.027859, 42.125767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315525, 34.658001, 41.817902> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.701511, 34.678127, 41.920906>,  <41.933102, 34.690201, 41.982708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.701511, 34.678127, 41.920906>,  <41.315525, 34.658001, 41.817902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701511, 34.678127, 41.920906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234566, 0.274316, -0.932593,
		-0.117560, 0.960322, 0.252904,
		0.964966, 0.050313, 0.257507,
		41.991001, 34.693222, 41.998158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520100, 35.216755, 41.459396>,  <41.315525, 34.658001, 41.817902>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520100, 35.216755, 41.459396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.856560, 35.022152, 41.553871>,  <42.058434, 34.905392, 41.610558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.856560, 35.022152, 41.553871>,  <41.520100, 35.216755, 41.459396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.856560, 35.022152, 41.553871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320893, 0.097444, -0.942089,
		0.435314, 0.868228, 0.238080,
		0.841148, -0.486503, 0.236189,
		42.108906, 34.876202, 41.624729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.191074, 35.663982, 41.324760>,  <41.520100, 35.216755, 41.459396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.191074, 35.663982, 41.324760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.281799, 35.274410, 41.325974>,  <42.336235, 35.040665, 41.326702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.281799, 35.274410, 41.325974>,  <42.191074, 35.663982, 41.324760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.281799, 35.274410, 41.325974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469889, 0.106704, -0.876253,
		0.853089, 0.200167, 0.481842,
		0.226812, -0.973934, 0.003028,
		42.349842, 34.982231, 41.326881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701710, 35.594009, 40.902260>,  <42.191074, 35.663982, 41.324760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701710, 35.594009, 40.902260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.643459, 35.198330, 40.908836>,  <42.608509, 34.960922, 40.912781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.643459, 35.198330, 40.908836>,  <42.701710, 35.594009, 40.902260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643459, 35.198330, 40.908836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411481, -0.075671, -0.908272,
		0.899709, -0.125502, 0.418058,
		-0.145625, -0.989203, 0.016440,
		42.599773, 34.901569, 40.913769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392895, 35.258202, 40.549538>,  <42.701710, 35.594009, 40.902260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392895, 35.258202, 40.549538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112263, 34.973511, 40.535503>,  <42.943886, 34.802696, 40.527081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112263, 34.973511, 40.535503>,  <43.392895, 35.258202, 40.549538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112263, 34.973511, 40.535503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383702, -0.335820, -0.860231,
		0.600469, -0.616982, 0.508696,
		-0.701577, -0.711729, -0.035087,
		42.901791, 34.759991, 40.524979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772942, 34.495430, 40.415703>,  <43.392895, 35.258202, 40.549538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772942, 34.495430, 40.415703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.389057, 34.481243, 40.304211>,  <43.158726, 34.472729, 40.237316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.389057, 34.481243, 40.304211>,  <43.772942, 34.495430, 40.415703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389057, 34.481243, 40.304211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271428, -0.373427, -0.887062,
		-0.072620, -0.926982, 0.368011,
		-0.959715, -0.035470, -0.278727,
		43.101143, 34.470604, 40.220592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.754341, 33.929733, 40.126606>,  <43.772942, 34.495430, 40.415703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.754341, 33.929733, 40.126606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.448166, 34.130424, 39.965424>,  <43.264462, 34.250839, 39.868713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.448166, 34.130424, 39.965424>,  <43.754341, 33.929733, 40.126606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448166, 34.130424, 39.965424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269495, -0.318697, -0.908738,
		-0.584364, -0.804174, 0.108728,
		-0.765435, 0.501732, -0.402957,
		43.218536, 34.280945, 39.844536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572845, 33.474377, 39.572327>,  <43.754341, 33.929733, 40.126606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572845, 33.474377, 39.572327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369087, 33.810516, 39.498219>,  <43.246834, 34.012199, 39.453754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.369087, 33.810516, 39.498219>,  <43.572845, 33.474377, 39.572327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369087, 33.810516, 39.498219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139122, -0.132045, -0.981432,
		-0.849214, -0.525710, -0.049649,
		-0.509393, 0.840353, -0.185272,
		43.216270, 34.062622, 39.442638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392227, 33.325901, 38.924957>,  <43.572845, 33.474377, 39.572327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392227, 33.325901, 38.924957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.352459, 33.722019, 38.963806>,  <43.328598, 33.959690, 38.987118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.352459, 33.722019, 38.963806>,  <43.392227, 33.325901, 38.924957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.352459, 33.722019, 38.963806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168374, 0.112944, -0.979231,
		-0.980697, -0.080999, -0.177969,
		-0.099417, 0.990294, 0.097125,
		43.322636, 34.019108, 38.992943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946201, 33.665615, 38.358147>,  <43.392227, 33.325901, 38.924957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946201, 33.665615, 38.358147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.141342, 33.995975, 38.471207>,  <43.258427, 34.194191, 38.539043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.141342, 33.995975, 38.471207>,  <42.946201, 33.665615, 38.358147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141342, 33.995975, 38.471207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065263, 0.288384, -0.955288,
		-0.870485, 0.484483, 0.086787,
		0.487849, 0.825900, 0.282653,
		43.287697, 34.243744, 38.556004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598270, 34.278397, 38.107491>,  <42.946201, 33.665615, 38.358147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598270, 34.278397, 38.107491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977276, 34.382694, 38.181499>,  <43.204678, 34.445271, 38.225903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977276, 34.382694, 38.181499>,  <42.598270, 34.278397, 38.107491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977276, 34.382694, 38.181499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117544, 0.254072, -0.960016,
		-0.297325, 0.931376, 0.210088,
		0.947513, 0.260742, 0.185020,
		43.261528, 34.460918, 38.237007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740513, 34.833099, 37.613865>,  <42.598270, 34.278397, 38.107491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740513, 34.833099, 37.613865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.116879, 34.766247, 37.731678>,  <43.342697, 34.726135, 37.802364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.116879, 34.766247, 37.731678>,  <42.740513, 34.833099, 37.613865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116879, 34.766247, 37.731678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333089, 0.299808, -0.893961,
		0.061105, 0.939246, 0.337763,
		0.940913, -0.167131, 0.294532,
		43.399151, 34.716106, 37.820038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094872, 35.453506, 37.542545>,  <42.740513, 34.833099, 37.613865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094872, 35.453506, 37.542545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.365917, 35.159386, 37.537292>,  <43.528545, 34.982914, 37.534142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.365917, 35.159386, 37.537292>,  <43.094872, 35.453506, 37.542545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365917, 35.159386, 37.537292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298202, 0.291044, -0.909048,
		0.672245, 0.612069, 0.416484,
		0.677615, -0.735299, -0.013133,
		43.569202, 34.938797, 37.533352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676285, 35.719677, 37.355419>,  <43.094872, 35.453506, 37.542545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676285, 35.719677, 37.355419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.741489, 35.334831, 37.268002>,  <43.780613, 35.103924, 37.215553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.741489, 35.334831, 37.268002>,  <43.676285, 35.719677, 37.355419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741489, 35.334831, 37.268002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456970, 0.269937, -0.847533,
		0.874418, 0.038290, 0.483660,
		0.163010, -0.962116, -0.218541,
		43.790394, 35.046196, 37.202438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.257305, 35.770042, 36.888931>,  <43.676285, 35.719677, 37.355419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.257305, 35.770042, 36.888931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.114716, 35.400436, 36.833618>,  <44.029160, 35.178673, 36.800430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.114716, 35.400436, 36.833618>,  <44.257305, 35.770042, 36.888931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114716, 35.400436, 36.833618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010390, 0.151920, -0.988338,
		0.934247, -0.350881, -0.063756,
		-0.356475, -0.924014, -0.138285,
		44.007774, 35.123234, 36.792133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715446, 35.510445, 36.485329>,  <44.257305, 35.770042, 36.888931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.715446, 35.510445, 36.485329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.369278, 35.319481, 36.424496>,  <44.161575, 35.204903, 36.387997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.369278, 35.319481, 36.424496>,  <44.715446, 35.510445, 36.485329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369278, 35.319481, 36.424496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002506, 0.307654, -0.951495,
		0.501042, -0.823061, -0.267446,
		-0.865419, -0.477409, -0.152084,
		44.109653, 35.176258, 36.378872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902756, 35.128239, 37.113239>,  <44.715446, 35.510445, 36.485329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902756, 35.128239, 37.113239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.200119, 34.908195, 37.265411>,  <45.378536, 34.776169, 37.356712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.200119, 34.908195, 37.265411>,  <44.902756, 35.128239, 37.113239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.200119, 34.908195, 37.265411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150948, -0.692105, -0.705837,
		0.651585, 0.467298, -0.597553,
		0.743405, -0.550113, 0.380428,
		45.423141, 34.743160, 37.379539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.604198, 35.069031, 36.714405>,  <44.902756, 35.128239, 37.113239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.604198, 35.069031, 36.714405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.470074, 34.754738, 36.922321>,  <45.389599, 34.566162, 37.047073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.470074, 34.754738, 36.922321>,  <45.604198, 35.069031, 36.714405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470074, 34.754738, 36.922321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052554, -0.535277, -0.843040,
		0.940641, -0.309998, 0.138190,
		-0.335311, -0.785735, 0.519795,
		45.369480, 34.519016, 37.078259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043957, 35.275692, 36.022209>,  <45.604198, 35.069031, 36.714405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043957, 35.275692, 36.022209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.442387, 35.307800, 36.037140>,  <46.681446, 35.327065, 36.046097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.442387, 35.307800, 36.037140>,  <46.043957, 35.275692, 36.022209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.442387, 35.307800, 36.037140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017093, -0.239282, 0.970800,
		0.086857, -0.967626, -0.236970,
		0.996074, 0.080270, 0.037323,
		46.741207, 35.331882, 36.048336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.229313, 34.732304, 36.444664>,  <46.043957, 35.275692, 36.022209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.229313, 34.732304, 36.444664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.542805, 34.977985, 36.481575>,  <46.730900, 35.125393, 36.503723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.542805, 34.977985, 36.481575>,  <46.229313, 34.732304, 36.444664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.542805, 34.977985, 36.481575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204093, -0.395003, 0.895723,
		0.586607, -0.683174, -0.434931,
		0.783733, 0.614204, 0.092281,
		46.777924, 35.162247, 36.509258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.684902, 34.303062, 36.783394>,  <46.229313, 34.732304, 36.444664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.684902, 34.303062, 36.783394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.781120, 34.685204, 36.852013>,  <46.838852, 34.914490, 36.893185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.781120, 34.685204, 36.852013>,  <46.684902, 34.303062, 36.783394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.781120, 34.685204, 36.852013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064258, -0.192026, 0.979284,
		0.968507, -0.224543, -0.107581,
		0.240549, 0.955356, 0.171550,
		46.853287, 34.971809, 36.903477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.176376, 34.205944, 37.229515>,  <46.684902, 34.303062, 36.783394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.176376, 34.205944, 37.229515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.069427, 34.590427, 37.256645>,  <47.005260, 34.821117, 37.272923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.069427, 34.590427, 37.256645>,  <47.176376, 34.205944, 37.229515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.069427, 34.590427, 37.256645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102118, -0.098255, 0.989908,
		0.958168, 0.257746, 0.124427,
		-0.267370, 0.961204, 0.067824,
		46.989216, 34.878788, 37.276993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.571583, 34.519932, 37.849346>,  <47.176376, 34.205944, 37.229515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.571583, 34.519932, 37.849346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.252998, 34.748909, 37.771420>,  <47.061848, 34.886295, 37.724663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.252998, 34.748909, 37.771420>,  <47.571583, 34.519932, 37.849346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.252998, 34.748909, 37.771420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214585, 0.033635, 0.976126,
		0.565333, 0.819252, 0.096050,
		-0.796462, 0.572447, -0.194814,
		47.014061, 34.920643, 37.712975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.516026, 35.031075, 38.354370>,  <47.571583, 34.519932, 37.849346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.516026, 35.031075, 38.354370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.144318, 35.020756, 38.206970>,  <46.921291, 35.014565, 38.118530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.144318, 35.020756, 38.206970>,  <47.516026, 35.031075, 38.354370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.144318, 35.020756, 38.206970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368563, 0.131884, 0.920200,
		0.024864, 0.990929, -0.132063,
		-0.929270, -0.025794, -0.368499,
		46.865536, 35.013016, 38.096420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.248997, 35.406170, 38.880650>,  <47.516026, 35.031075, 38.354370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.248997, 35.406170, 38.880650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.927452, 35.254787, 38.697094>,  <46.734524, 35.163956, 38.586960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.927452, 35.254787, 38.697094>,  <47.248997, 35.406170, 38.880650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.927452, 35.254787, 38.697094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421130, -0.182712, 0.888406,
		-0.420069, 0.907406, -0.012505,
		-0.803860, -0.378458, -0.458888,
		46.686295, 35.141251, 38.559429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632561, 35.666912, 39.235298>,  <47.248997, 35.406170, 38.880650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632561, 35.666912, 39.235298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.525120, 35.324013, 39.059582>,  <46.460655, 35.118271, 38.954151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.525120, 35.324013, 39.059582>,  <46.632561, 35.666912, 39.235298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525120, 35.324013, 39.059582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498064, -0.266754, 0.825091,
		-0.824492, 0.440413, -0.355316,
		-0.268598, -0.857251, -0.439290,
		46.444542, 35.066837, 38.927795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.834152, 35.655598, 39.245388>,  <46.632561, 35.666912, 39.235298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.834152, 35.655598, 39.245388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.996777, 35.290981, 39.220760>,  <46.094353, 35.072212, 39.205986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.996777, 35.290981, 39.220760>,  <45.834152, 35.655598, 39.245388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.996777, 35.290981, 39.220760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625129, -0.326696, 0.708861,
		-0.666272, -0.249711, -0.702656,
		0.406565, -0.911545, -0.061567,
		46.118748, 35.017517, 39.202290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.239929, 35.178032, 39.390385>,  <45.834152, 35.655598, 39.245388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.239929, 35.178032, 39.390385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.572945, 34.959492, 39.427021>,  <45.772755, 34.828369, 39.449001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.572945, 34.959492, 39.427021>,  <45.239929, 35.178032, 39.390385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572945, 34.959492, 39.427021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429636, -0.532418, 0.729344,
		-0.349709, -0.646557, -0.677988,
		0.832536, -0.546347, 0.091593,
		45.822704, 34.795589, 39.454498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.959755, 34.598682, 39.302467>,  <45.239929, 35.178032, 39.390385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.959755, 34.598682, 39.302467> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.307816, 34.535225, 39.489090>,  <45.516651, 34.497150, 39.601063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.307816, 34.535225, 39.489090>,  <44.959755, 34.598682, 39.302467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.307816, 34.535225, 39.489090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479169, -0.493450, 0.725882,
		0.115063, -0.855183, -0.505393,
		0.870148, -0.158646, 0.466555,
		45.568859, 34.487633, 39.629055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934856, 33.883671, 39.535194>,  <44.959755, 34.598682, 39.302467>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934856, 33.883671, 39.535194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.205971, 34.078442, 39.755558>,  <45.368641, 34.195305, 39.887775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.205971, 34.078442, 39.755558>,  <44.934856, 33.883671, 39.535194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205971, 34.078442, 39.755558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423416, -0.354069, 0.833879,
		0.601101, -0.798457, -0.033809,
		0.677788, 0.486931, 0.550911,
		45.409306, 34.224522, 39.920830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.101467, 33.365318, 39.997154>,  <44.934856, 33.883671, 39.535194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.101467, 33.365318, 39.997154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245636, 33.698757, 40.164585>,  <45.332138, 33.898823, 40.265041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.245636, 33.698757, 40.164585>,  <45.101467, 33.365318, 39.997154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245636, 33.698757, 40.164585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320491, -0.310748, 0.894830,
		0.876003, -0.456667, 0.155161,
		0.360423, 0.833601, 0.418574,
		45.353764, 33.948837, 40.290157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.326073, 33.179234, 40.648136>,  <45.101467, 33.365318, 39.997154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.326073, 33.179234, 40.648136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.306759, 33.576385, 40.691685>,  <45.295170, 33.814678, 40.717815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.306759, 33.576385, 40.691685>,  <45.326073, 33.179234, 40.648136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.306759, 33.576385, 40.691685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408234, -0.119100, 0.905075,
		0.911599, -0.000745, 0.411079,
		-0.048285, 0.992882, 0.108875,
		45.292274, 33.874249, 40.724346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.779385, 33.329979, 41.181263>,  <45.326073, 33.179234, 40.648136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.779385, 33.329979, 41.181263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.539421, 33.649239, 41.159100>,  <45.395443, 33.840794, 41.145802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.539421, 33.649239, 41.159100>,  <45.779385, 33.329979, 41.181263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.539421, 33.649239, 41.159100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228370, -0.104449, 0.967955,
		0.766783, 0.593339, 0.244933,
		-0.599909, 0.798147, -0.055412,
		45.359447, 33.888683, 41.142475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.937111, 33.777142, 41.708950>,  <45.779385, 33.329979, 41.181263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.937111, 33.777142, 41.708950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559753, 33.866951, 41.611301>,  <45.333340, 33.920837, 41.552711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559753, 33.866951, 41.611301>,  <45.937111, 33.777142, 41.708950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559753, 33.866951, 41.611301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280506, -0.147379, 0.948470,
		0.176974, 0.963260, 0.202017,
		-0.943396, 0.224521, -0.244117,
		45.276733, 33.934307, 41.538067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.780720, 34.124054, 42.281784>,  <45.937111, 33.777142, 41.708950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.780720, 34.124054, 42.281784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426830, 34.052670, 42.109547>,  <45.214497, 34.009838, 42.006203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.426830, 34.052670, 42.109547>,  <45.780720, 34.124054, 42.281784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426830, 34.052670, 42.109547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431607, -0.035155, 0.901377,
		-0.175995, 0.983319, -0.045921,
		-0.884727, -0.178458, -0.430594,
		45.161411, 33.999130, 41.980370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313538, 34.627968, 42.687130>,  <45.780720, 34.124054, 42.281784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313538, 34.627968, 42.687130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088448, 34.341087, 42.522709>,  <44.953396, 34.168961, 42.424057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.088448, 34.341087, 42.522709>,  <45.313538, 34.627968, 42.687130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088448, 34.341087, 42.522709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458259, -0.143206, 0.877206,
		-0.688000, 0.681992, -0.248080,
		-0.562721, -0.717203, -0.411054,
		44.919632, 34.125927, 42.399391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664959, 34.742378, 42.971996>,  <45.313538, 34.627968, 42.687130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664959, 34.742378, 42.971996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.665653, 34.362637, 42.846310>,  <44.666069, 34.134792, 42.770897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.665653, 34.362637, 42.846310>,  <44.664959, 34.742378, 42.971996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665653, 34.362637, 42.846310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603728, -0.251485, 0.756484,
		-0.797189, 0.188385, -0.573586,
		0.001739, -0.949351, -0.314214,
		44.666176, 34.077831, 42.752045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.979965, 34.454838, 43.036694>,  <44.664959, 34.742378, 42.971996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.979965, 34.454838, 43.036694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.189636, 34.114929, 43.014351>,  <44.315437, 33.910984, 43.000946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.189636, 34.114929, 43.014351>,  <43.979965, 34.454838, 43.036694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.189636, 34.114929, 43.014351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552109, -0.389041, 0.737443,
		-0.648393, -0.355709, -0.673095,
		0.524177, -0.849775, -0.055861,
		44.346889, 33.859997, 42.997593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441406, 34.007324, 43.134605>,  <43.979965, 34.454838, 43.036694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441406, 34.007324, 43.134605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773682, 33.797150, 43.208225>,  <43.973045, 33.671043, 43.252396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.773682, 33.797150, 43.208225>,  <43.441406, 34.007324, 43.134605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773682, 33.797150, 43.208225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455341, -0.450980, 0.767647,
		-0.320347, -0.721481, -0.613876,
		0.830688, -0.525436, 0.184049,
		44.022888, 33.639519, 43.263439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174313, 33.296047, 43.155537>,  <43.441406, 34.007324, 43.134605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174313, 33.296047, 43.155537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.526848, 33.331608, 43.341156>,  <43.738369, 33.352943, 43.452526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.526848, 33.331608, 43.341156>,  <43.174313, 33.296047, 43.155537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526848, 33.331608, 43.341156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438845, -0.209938, 0.873694,
		0.175098, -0.973664, -0.146010,
		0.881338, 0.088907, 0.464048,
		43.791248, 33.358280, 43.480370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.482170, 34.502937, 42.116570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176178, 34.285465, 41.978458>,  <34.992584, 34.154984, 41.895592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176178, 34.285465, 41.978458>,  <35.482170, 34.502937, 42.116570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176178, 34.285465, 41.978458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162476, 0.355856, -0.920309,
		0.623221, -0.760118, -0.183889,
		-0.764982, -0.543679, -0.345278,
		34.946682, 34.122360, 41.874874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776306, 34.156143, 41.573425>,  <35.482170, 34.502937, 42.116570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776306, 34.156143, 41.573425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383190, 34.144753, 41.500408>,  <35.147320, 34.137920, 41.456600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383190, 34.144753, 41.500408>,  <35.776306, 34.156143, 41.573425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383190, 34.144753, 41.500408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169066, 0.259733, -0.950766,
		0.074483, -0.965261, -0.250448,
		-0.982786, -0.028474, -0.182538,
		35.088356, 34.136211, 41.445648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706455, 33.597404, 41.058437>,  <35.776306, 34.156143, 41.573425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706455, 33.597404, 41.058437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385040, 33.835140, 41.045288>,  <35.192192, 33.977783, 41.037399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385040, 33.835140, 41.045288>,  <35.706455, 33.597404, 41.058437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385040, 33.835140, 41.045288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093473, 0.071444, -0.993055,
		-0.587864, -0.801034, -0.112962,
		-0.803541, 0.594341, -0.032876,
		35.143978, 34.013443, 41.035427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322742, 33.415291, 40.433769>,  <35.706455, 33.597404, 41.058437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322742, 33.415291, 40.433769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174252, 33.773029, 40.533638>,  <35.085159, 33.987671, 40.593559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174252, 33.773029, 40.533638>,  <35.322742, 33.415291, 40.433769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174252, 33.773029, 40.533638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134931, 0.214077, -0.967453,
		-0.918687, -0.392832, 0.041204,
		-0.371226, 0.894346, 0.249675,
		35.062885, 34.041332, 40.608540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714478, 33.397530, 40.049435>,  <35.322742, 33.415291, 40.433769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714478, 33.397530, 40.049435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817982, 33.772503, 40.142609>,  <34.880085, 33.997486, 40.198513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817982, 33.772503, 40.142609>,  <34.714478, 33.397530, 40.049435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817982, 33.772503, 40.142609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154066, 0.278119, -0.948111,
		-0.953577, 0.209442, 0.216392,
		0.258757, 0.937435, 0.232940,
		34.895607, 34.053734, 40.212490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167088, 33.883354, 39.691093>,  <34.714478, 33.397530, 40.049435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167088, 33.883354, 39.691093> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467392, 34.125927, 39.795860>,  <34.647575, 34.271469, 39.858719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467392, 34.125927, 39.795860>,  <34.167088, 33.883354, 39.691093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467392, 34.125927, 39.795860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038439, 0.435927, -0.899161,
		-0.659455, 0.664987, 0.350588,
		0.750761, 0.606432, 0.261913,
		34.692619, 34.307858, 39.874435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996513, 34.588024, 39.345898>,  <34.167088, 33.883354, 39.691093>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996513, 34.588024, 39.345898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383312, 34.589088, 39.447807>,  <34.615391, 34.589725, 39.508953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383312, 34.589088, 39.447807>,  <33.996513, 34.588024, 39.345898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383312, 34.589088, 39.447807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182922, 0.688837, -0.701458,
		-0.177364, 0.724912, 0.665616,
		0.966996, 0.002658, 0.254777,
		34.673412, 34.589886, 39.524239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193588, 35.244232, 39.257183>,  <33.996513, 34.588024, 39.345898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193588, 35.244232, 39.257183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538685, 35.042545, 39.272316>,  <34.745743, 34.921532, 39.281395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538685, 35.042545, 39.272316>,  <34.193588, 35.244232, 39.257183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538685, 35.042545, 39.272316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362685, 0.564961, -0.741134,
		0.352319, 0.653132, 0.670291,
		0.862746, -0.504220, 0.037835,
		34.797508, 34.891281, 39.283665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708038, 35.757465, 39.394337>,  <34.193588, 35.244232, 39.257183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708038, 35.757465, 39.394337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905811, 35.450935, 39.230251>,  <35.024475, 35.267017, 39.131802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905811, 35.450935, 39.230251>,  <34.708038, 35.757465, 39.394337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905811, 35.450935, 39.230251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385521, 0.616316, -0.686680,
		0.779044, 0.181371, 0.600163,
		0.494434, -0.766329, -0.410215,
		35.054142, 35.221035, 39.107185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461388, 35.918694, 39.331299>,  <34.708038, 35.757465, 39.394337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461388, 35.918694, 39.331299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423065, 35.606667, 39.083973>,  <35.400074, 35.419449, 38.935577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423065, 35.606667, 39.083973>,  <35.461388, 35.918694, 39.331299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423065, 35.606667, 39.083973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482510, 0.506924, -0.714292,
		0.870635, -0.366777, 0.327824,
		-0.095804, -0.780066, -0.618319,
		35.394325, 35.372646, 38.898476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046177, 35.862083, 39.101925>,  <35.461388, 35.918694, 39.331299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046177, 35.862083, 39.101925> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821712, 35.659966, 38.839695>,  <35.687035, 35.538692, 38.682358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821712, 35.659966, 38.839695>,  <36.046177, 35.862083, 39.101925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821712, 35.659966, 38.839695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323253, 0.595345, -0.735576,
		0.761975, -0.624692, -0.170746,
		-0.561161, -0.505297, -0.655571,
		35.653362, 35.508377, 38.643024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491810, 35.662636, 38.573250>,  <36.046177, 35.862083, 39.101925>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491810, 35.662636, 38.573250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127888, 35.646763, 38.408001>,  <35.909534, 35.637238, 38.308849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127888, 35.646763, 38.408001>,  <36.491810, 35.662636, 38.573250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127888, 35.646763, 38.408001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330816, 0.531743, -0.779621,
		0.250618, -0.845975, -0.470656,
		-0.909809, -0.039686, -0.413127,
		35.854946, 35.634857, 38.284061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.417034, 35.161541, 37.946880>,  <36.491810, 35.662636, 38.573250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.417034, 35.161541, 37.946880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188927, 35.489330, 37.924076>,  <36.052063, 35.686005, 37.910393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188927, 35.489330, 37.924076>,  <36.417034, 35.161541, 37.946880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188927, 35.489330, 37.924076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560143, 0.337163, -0.756677,
		-0.600858, -0.463444, -0.651299,
		-0.570271, 0.819476, -0.057008,
		36.017845, 35.735172, 37.906975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974621, 35.309036, 37.294228>,  <36.417034, 35.161541, 37.946880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974621, 35.309036, 37.294228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079460, 35.649616, 37.475925>,  <36.142365, 35.853966, 37.584942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079460, 35.649616, 37.475925>,  <35.974621, 35.309036, 37.294228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079460, 35.649616, 37.475925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492701, 0.286664, -0.821626,
		-0.829788, 0.439155, -0.344375,
		0.262101, 0.851450, 0.454243,
		36.158089, 35.905052, 37.612198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348309, 35.157120, 36.666088>,  <35.974621, 35.309036, 37.294228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348309, 35.157120, 36.666088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719067, 35.042473, 36.763016>,  <36.941521, 34.973682, 36.821175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719067, 35.042473, 36.763016>,  <36.348309, 35.157120, 36.666088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719067, 35.042473, 36.763016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373451, -0.768791, 0.519129,
		0.037503, -0.571672, -0.819625,
		0.926892, -0.286621, 0.242323,
		36.997135, 34.956486, 36.835712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280621, 34.447155, 36.524033>,  <36.348309, 35.157120, 36.666088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280621, 34.447155, 36.524033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598568, 34.488346, 36.763222>,  <36.789337, 34.513062, 36.906734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598568, 34.488346, 36.763222>,  <36.280621, 34.447155, 36.524033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598568, 34.488346, 36.763222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277202, -0.815019, 0.508825,
		0.539757, -0.570211, -0.619292,
		0.794872, 0.102973, 0.597975,
		36.837029, 34.519238, 36.942616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738361, 33.902042, 36.409870>,  <36.280621, 34.447155, 36.524033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738361, 33.902042, 36.409870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847179, 34.051010, 36.764790>,  <36.912472, 34.140388, 36.977741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847179, 34.051010, 36.764790>,  <36.738361, 33.902042, 36.409870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847179, 34.051010, 36.764790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170324, -0.888880, 0.425301,
		0.947090, -0.266830, -0.178387,
		0.272048, 0.372415, 0.887297,
		36.928795, 34.162735, 37.030979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189102, 33.342995, 36.680435>,  <36.738361, 33.902042, 36.409870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189102, 33.342995, 36.680435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075546, 33.568333, 36.990803>,  <37.007412, 33.703537, 37.177021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075546, 33.568333, 36.990803>,  <37.189102, 33.342995, 36.680435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075546, 33.568333, 36.990803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257223, -0.824292, 0.504360,
		0.923712, -0.056401, 0.378914,
		-0.283889, 0.563349, 0.775916,
		36.990379, 33.737339, 37.223576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224159, 32.819515, 37.200279>,  <37.189102, 33.342995, 36.680435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224159, 32.819515, 37.200279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009621, 33.107136, 37.377052>,  <36.880898, 33.279709, 37.483116>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009621, 33.107136, 37.377052>,  <37.224159, 32.819515, 37.200279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009621, 33.107136, 37.377052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346769, -0.665118, 0.661339,
		0.769471, 0.201459, 0.606077,
		-0.536345, 0.719050, 0.441929,
		36.848717, 33.322849, 37.509632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301163, 32.795387, 37.923954>,  <37.224159, 32.819515, 37.200279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301163, 32.795387, 37.923954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958988, 33.002274, 37.913174>,  <36.753685, 33.126404, 37.906704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958988, 33.002274, 37.913174>,  <37.301163, 32.795387, 37.923954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958988, 33.002274, 37.913174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399030, -0.625007, 0.670925,
		0.330165, 0.584686, 0.741035,
		-0.855433, 0.517212, -0.026952,
		36.702358, 33.157436, 37.905087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073757, 32.917740, 38.580795>,  <37.301163, 32.795387, 37.923954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073757, 32.917740, 38.580795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725876, 32.946987, 38.385544>,  <36.517147, 32.964535, 38.268394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725876, 32.946987, 38.385544>,  <37.073757, 32.917740, 38.580795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725876, 32.946987, 38.385544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471966, -0.412627, 0.779094,
		-0.144447, 0.907961, 0.393374,
		-0.869703, 0.073122, -0.488129,
		36.464966, 32.968925, 38.239105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561157, 33.160061, 39.141388>,  <37.073757, 32.917740, 38.580795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561157, 33.160061, 39.141388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322124, 33.032070, 38.847309>,  <36.178707, 32.955276, 38.670860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322124, 33.032070, 38.847309>,  <36.561157, 33.160061, 39.141388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322124, 33.032070, 38.847309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637727, -0.366107, 0.677694,
		-0.486009, 0.873830, 0.014718,
		-0.597578, -0.319980, -0.735196,
		36.142853, 32.936077, 38.626751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875278, 33.411839, 39.370922>,  <36.561157, 33.160061, 39.141388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875278, 33.411839, 39.370922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785793, 33.140976, 39.090519>,  <35.732101, 32.978458, 38.922279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785793, 33.140976, 39.090519>,  <35.875278, 33.411839, 39.370922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785793, 33.140976, 39.090519> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751090, -0.338585, 0.566768,
		-0.621141, 0.653312, -0.432860,
		-0.223716, -0.677159, -0.701005,
		35.718678, 32.937828, 38.880219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232761, 33.553989, 39.200623>,  <35.875278, 33.411839, 39.370922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232761, 33.553989, 39.200623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277752, 33.174091, 39.083778>,  <35.304749, 32.946152, 39.013672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277752, 33.174091, 39.083778>,  <35.232761, 33.553989, 39.200623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277752, 33.174091, 39.083778> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827259, -0.252359, 0.501954,
		-0.550447, 0.185196, -0.814070,
		0.112478, -0.949746, -0.292115,
		35.311497, 32.889168, 38.996143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622383, 33.315277, 38.875065>,  <35.232761, 33.553989, 39.200623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622383, 33.315277, 38.875065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801857, 32.969299, 38.965008>,  <34.909542, 32.761715, 39.018974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801857, 32.969299, 38.965008>,  <34.622383, 33.315277, 38.875065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801857, 32.969299, 38.965008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844190, -0.327620, 0.424274,
		-0.293301, -0.380193, -0.877170,
		0.448685, -0.864938, 0.224864,
		34.936462, 32.709816, 39.032467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105862, 32.893223, 38.808487>,  <34.622383, 33.315277, 38.875065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105862, 32.893223, 38.808487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376717, 32.694809, 39.025902>,  <34.539230, 32.575760, 39.156349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376717, 32.694809, 39.025902>,  <34.105862, 32.893223, 38.808487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376717, 32.694809, 39.025902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726829, -0.335523, 0.599286,
		-0.114896, -0.800860, -0.587726,
		0.677140, -0.496032, 0.543538,
		34.579857, 32.545998, 39.188965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754852, 32.398361, 39.091797>,  <34.105862, 32.893223, 38.808487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754852, 32.398361, 39.091797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078590, 32.357807, 39.323204>,  <34.272835, 32.333473, 39.462048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078590, 32.357807, 39.323204>,  <33.754852, 32.398361, 39.091797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078590, 32.357807, 39.323204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527864, -0.557448, 0.640789,
		0.257523, -0.823997, -0.504689,
		0.809347, -0.101389, 0.578514,
		34.321396, 32.327389, 39.496758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949486, 31.635626, 39.088181>,  <33.754852, 32.398361, 39.091797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949486, 31.635626, 39.088181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074123, 31.851147, 39.401257>,  <34.148907, 31.980459, 39.589104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074123, 31.851147, 39.401257>,  <33.949486, 31.635626, 39.088181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074123, 31.851147, 39.401257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249615, -0.748353, 0.614540,
		0.916843, -0.386858, -0.098689,
		0.311594, 0.538802, 0.782688,
		34.167603, 32.012787, 39.636063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268520, 31.026684, 38.737804>,  <33.949486, 31.635626, 39.088181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268520, 31.026684, 38.737804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201588, 30.679506, 38.550755>,  <34.161427, 30.471199, 38.438526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201588, 30.679506, 38.550755>,  <34.268520, 31.026684, 38.737804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201588, 30.679506, 38.550755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074724, 0.461781, -0.883841,
		0.983065, -0.182839, -0.012415,
		-0.167333, -0.867945, -0.467623,
		34.151386, 30.419123, 38.410469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836903, 30.901131, 38.288876>,  <34.268520, 31.026684, 38.737804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836903, 30.901131, 38.288876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522305, 30.687729, 38.164421>,  <34.333546, 30.559687, 38.089748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522305, 30.687729, 38.164421>,  <34.836903, 30.901131, 38.288876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522305, 30.687729, 38.164421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030534, 0.469571, -0.882367,
		0.616847, -0.703473, -0.353023,
		-0.786490, -0.533506, -0.311133,
		34.286358, 30.527678, 38.071083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935051, 30.682436, 37.651424>,  <34.836903, 30.901131, 38.288876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935051, 30.682436, 37.651424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537800, 30.635666, 37.653748>,  <34.299450, 30.607605, 37.655140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537800, 30.635666, 37.653748>,  <34.935051, 30.682436, 37.651424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537800, 30.635666, 37.653748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044040, 0.327192, -0.943931,
		0.108468, -0.937696, -0.330091,
		-0.993124, -0.116924, 0.005806,
		34.239864, 30.600590, 37.655491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795231, 30.422249, 37.048248>,  <34.935051, 30.682436, 37.651424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795231, 30.422249, 37.048248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456100, 30.590424, 37.177513>,  <34.252625, 30.691328, 37.255070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456100, 30.590424, 37.177513>,  <34.795231, 30.422249, 37.048248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456100, 30.590424, 37.177513> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158542, 0.380563, -0.911063,
		-0.506025, -0.823654, -0.255994,
		-0.847822, 0.420435, 0.323158,
		34.201752, 30.716555, 37.274460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344471, 30.343988, 36.481155>,  <34.795231, 30.422249, 37.048248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344471, 30.343988, 36.481155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178246, 30.631021, 36.704720>,  <34.078510, 30.803242, 36.838860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178246, 30.631021, 36.704720>,  <34.344471, 30.343988, 36.481155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178246, 30.631021, 36.704720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399011, 0.408382, -0.820984,
		-0.817375, -0.564180, 0.116616,
		-0.415559, 0.717583, 0.558915,
		34.053577, 30.846296, 36.872395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739197, 30.472298, 36.124298>,  <34.344471, 30.343988, 36.481155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739197, 30.472298, 36.124298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748798, 30.768711, 36.392712>,  <33.754559, 30.946560, 36.553761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748798, 30.768711, 36.392712>,  <33.739197, 30.472298, 36.124298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748798, 30.768711, 36.392712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268808, 0.651295, -0.709617,
		-0.962895, -0.163344, 0.214832,
		0.024008, 0.741035, 0.671037,
		33.756001, 30.991022, 36.594021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077324, 30.825621, 36.099720>,  <33.739197, 30.472298, 36.124298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077324, 30.825621, 36.099720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358387, 31.074841, 36.237171>,  <33.527023, 31.224373, 36.319641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358387, 31.074841, 36.237171>,  <33.077324, 30.825621, 36.099720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358387, 31.074841, 36.237171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277946, 0.684919, -0.673522,
		-0.654993, 0.377747, 0.654439,
		0.702659, 0.623051, 0.343624,
		33.569183, 31.261757, 36.340260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771023, 31.477333, 36.122715>,  <33.077324, 30.825621, 36.099720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771023, 31.477333, 36.122715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164257, 31.545492, 36.095856>,  <33.400196, 31.586388, 36.079742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164257, 31.545492, 36.095856>,  <32.771023, 31.477333, 36.122715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164257, 31.545492, 36.095856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150076, 0.539328, -0.828615,
		-0.104982, 0.824676, 0.555778,
		0.983085, 0.170399, -0.067145,
		33.459183, 31.596611, 36.075714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836422, 32.188797, 36.043209>,  <32.771023, 31.477333, 36.122715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836422, 32.188797, 36.043209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181252, 32.040977, 35.904491>,  <33.388149, 31.952286, 35.821262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181252, 32.040977, 35.904491>,  <32.836422, 32.188797, 36.043209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181252, 32.040977, 35.904491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056219, 0.610342, -0.790141,
		0.503657, 0.700655, 0.505383,
		0.862073, -0.369548, -0.346793,
		33.439873, 31.930113, 35.800453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268116, 32.835354, 35.886902>,  <32.836422, 32.188797, 36.043209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268116, 32.835354, 35.886902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412601, 32.528755, 35.674488>,  <33.499294, 32.344795, 35.547039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412601, 32.528755, 35.674488>,  <33.268116, 32.835354, 35.886902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412601, 32.528755, 35.674488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040507, 0.581851, -0.812286,
		0.931601, 0.271902, 0.241224,
		0.361218, -0.766498, -0.531039,
		33.520966, 32.298805, 35.515175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613419, 33.154339, 35.390236>,  <33.268116, 32.835354, 35.886902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613419, 33.154339, 35.390236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605381, 32.793880, 35.217014>,  <33.600559, 32.577606, 35.113083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605381, 32.793880, 35.217014>,  <33.613419, 33.154339, 35.390236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605381, 32.793880, 35.217014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142609, 0.431296, -0.890868,
		0.989575, 0.043856, -0.137178,
		-0.020094, -0.901144, -0.433055,
		33.599354, 32.523537, 35.087097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117973, 33.385098, 34.841118>,  <33.613419, 33.154339, 35.390236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117973, 33.385098, 34.841118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893196, 33.061493, 34.772167>,  <33.758331, 32.867329, 34.730797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893196, 33.061493, 34.772167>,  <34.117973, 33.385098, 34.841118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893196, 33.061493, 34.772167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034807, 0.185078, -0.982107,
		0.826443, -0.557889, -0.075844,
		-0.561944, -0.809016, -0.172374,
		33.724613, 32.818787, 34.720455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.038101, 28.031683, 41.315029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.662815, 27.937258, 41.213818>,  <34.437641, 27.880602, 41.153091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.662815, 27.937258, 41.213818>,  <35.038101, 28.031683, 41.315029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662815, 27.937258, 41.213818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135664, 0.421744, -0.896508,
		0.318345, -0.875446, -0.363663,
		-0.938218, -0.236063, -0.253026,
		34.381351, 27.866438, 41.137909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153217, 27.775829, 40.654594>,  <35.038101, 28.031683, 41.315029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153217, 27.775829, 40.654594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.773415, 27.894993, 40.693974>,  <34.545532, 27.966492, 40.717602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.773415, 27.894993, 40.693974>,  <35.153217, 27.775829, 40.654594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773415, 27.894993, 40.693974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076832, 0.524989, -0.847634,
		-0.304204, -0.797267, -0.521368,
		-0.949503, 0.297911, 0.098448,
		34.488564, 27.984365, 40.723507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754322, 27.671350, 40.016010>,  <35.153217, 27.775829, 40.654594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754322, 27.671350, 40.016010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.517578, 27.934280, 40.202614>,  <34.375534, 28.092039, 40.314575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.517578, 27.934280, 40.202614>,  <34.754322, 27.671350, 40.016010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517578, 27.934280, 40.202614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210304, 0.432787, -0.876623,
		-0.778125, -0.616943, -0.117909,
		-0.591856, 0.657325, 0.466508,
		34.340023, 28.131477, 40.342567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372292, 27.879889, 39.502903>,  <34.754322, 27.671350, 40.016010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372292, 27.879889, 39.502903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.292027, 28.154308, 39.782635>,  <34.243866, 28.318960, 39.950474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.292027, 28.154308, 39.782635>,  <34.372292, 27.879889, 39.502903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292027, 28.154308, 39.782635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250998, 0.654022, -0.713621,
		-0.946960, -0.318731, 0.040957,
		-0.200667, 0.686051, 0.699333,
		34.231827, 28.360123, 39.992435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768608, 28.046343, 39.385109>,  <34.372292, 27.879889, 39.502903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768608, 28.046343, 39.385109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.918015, 28.364641, 39.575802>,  <34.007656, 28.555620, 39.690220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.918015, 28.364641, 39.575802>,  <33.768608, 28.046343, 39.385109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918015, 28.364641, 39.575802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266476, 0.584312, -0.766531,
		-0.888526, 0.159270, 0.430296,
		0.373513, 0.795746, 0.476735,
		34.030067, 28.603365, 39.718822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318428, 28.615522, 39.265026>,  <33.768608, 28.046343, 39.385109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318428, 28.615522, 39.265026> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.649162, 28.807165, 39.382870>,  <33.847603, 28.922152, 39.453575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.649162, 28.807165, 39.382870>,  <33.318428, 28.615522, 39.265026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649162, 28.807165, 39.382870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125916, 0.668188, -0.733259,
		-0.548164, 0.569192, 0.612811,
		0.826839, 0.479109, 0.294606,
		33.897213, 28.950897, 39.471252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152939, 29.361122, 39.279049>,  <33.318428, 28.615522, 39.265026>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152939, 29.361122, 39.279049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.551807, 29.391182, 39.279530>,  <33.791130, 29.409218, 39.279816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.551807, 29.391182, 39.279530>,  <33.152939, 29.361122, 39.279049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551807, 29.391182, 39.279530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062655, 0.839990, -0.538973,
		-0.041510, 0.537373, 0.842322,
		0.997172, 0.075148, 0.001199,
		33.850960, 29.413727, 39.279888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389141, 30.042225, 39.455612>,  <33.152939, 29.361122, 39.279049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389141, 30.042225, 39.455612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.674980, 29.881973, 39.226231>,  <33.846481, 29.785822, 39.088600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.674980, 29.881973, 39.226231>,  <33.389141, 30.042225, 39.455612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674980, 29.881973, 39.226231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147579, 0.887648, -0.436235,
		0.683793, 0.227102, 0.693434,
		0.714596, -0.400631, -0.573452,
		33.889359, 29.761784, 39.054195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808334, 30.619555, 39.190166>,  <33.389141, 30.042225, 39.455612>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808334, 30.619555, 39.190166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946381, 30.327444, 38.954338>,  <34.029209, 30.152178, 38.812843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946381, 30.327444, 38.954338>,  <33.808334, 30.619555, 39.190166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946381, 30.327444, 38.954338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134553, 0.660172, -0.738964,
		0.928864, 0.175702, 0.326099,
		0.345119, -0.730275, -0.589569,
		34.049915, 30.108362, 38.777466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272137, 31.071192, 39.539757>,  <33.808334, 30.619555, 39.190166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272137, 31.071192, 39.539757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.223858, 31.397177, 39.766479>,  <34.194889, 31.592768, 39.902512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.223858, 31.397177, 39.766479>,  <34.272137, 31.071192, 39.539757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.223858, 31.397177, 39.766479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292946, -0.574794, 0.764064,
		0.948480, -0.073824, 0.308115,
		-0.120696, 0.814961, 0.566808,
		34.187649, 31.641665, 39.936523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436081, 30.839617, 40.232655>,  <34.272137, 31.071192, 39.539757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436081, 30.839617, 40.232655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.224453, 31.174723, 40.286671>,  <34.097477, 31.375786, 40.319080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.224453, 31.174723, 40.286671>,  <34.436081, 30.839617, 40.232655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224453, 31.174723, 40.286671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494893, -0.433896, 0.752871,
		0.689323, 0.331491, 0.644165,
		-0.529070, 0.837764, 0.135042,
		34.065731, 31.426052, 40.327183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.478718, 30.988987, 40.918343>,  <34.436081, 30.839617, 40.232655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.478718, 30.988987, 40.918343> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.144226, 31.180904, 40.812115>,  <33.943531, 31.296055, 40.748379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.144226, 31.180904, 40.812115>,  <34.478718, 30.988987, 40.918343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144226, 31.180904, 40.812115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437234, -0.291042, 0.850953,
		0.330989, 0.827704, 0.453158,
		-0.836225, 0.479792, -0.265568,
		33.893360, 31.324842, 40.732445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.143898, 31.287403, 41.579491>,  <34.478718, 30.988987, 40.918343>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.143898, 31.287403, 41.579491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.862720, 31.270178, 41.295517>,  <33.694012, 31.259842, 41.125134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.862720, 31.270178, 41.295517>,  <34.143898, 31.287403, 41.579491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862720, 31.270178, 41.295517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684901, -0.228150, 0.691996,
		-0.191773, 0.972673, 0.130883,
		-0.702947, -0.043065, -0.709938,
		33.651836, 31.257259, 41.082535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498562, 31.610889, 41.851482>,  <34.143898, 31.287403, 41.579491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498562, 31.610889, 41.851482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.369102, 31.378372, 41.552860>,  <33.291428, 31.238861, 41.373688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.369102, 31.378372, 41.552860>,  <33.498562, 31.610889, 41.851482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369102, 31.378372, 41.552860> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758137, -0.312763, 0.572195,
		-0.566109, 0.751184, -0.339474,
		-0.323649, -0.581293, -0.746559,
		33.272007, 31.203985, 41.328892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663250, 31.657219, 41.801620>,  <33.498562, 31.610889, 41.851482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663250, 31.657219, 41.801620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.778606, 31.320707, 41.618717>,  <32.847820, 31.118801, 41.508976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.778606, 31.320707, 41.618717>,  <32.663250, 31.657219, 41.801620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778606, 31.320707, 41.618717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618547, -0.528215, 0.581712,
		-0.730910, 0.115070, -0.672703,
		0.288395, -0.841277, -0.457254,
		32.865124, 31.068325, 41.481541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066399, 31.256437, 41.920918>,  <32.663250, 31.657219, 41.801620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066399, 31.256437, 41.920918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.366459, 31.013973, 41.815205>,  <32.546494, 30.868494, 41.751778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.366459, 31.013973, 41.815205>,  <32.066399, 31.256437, 41.920918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366459, 31.013973, 41.815205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442803, -0.757285, 0.480046,
		-0.491119, -0.243083, -0.836488,
		0.750151, -0.606160, -0.264279,
		32.591503, 30.832125, 41.735920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.774874, 30.641981, 41.747757>,  <32.066399, 31.256437, 41.920918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.774874, 30.641981, 41.747757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.155109, 30.550388, 41.831608>,  <32.383251, 30.495432, 41.881920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.155109, 30.550388, 41.831608>,  <31.774874, 30.641981, 41.747757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155109, 30.550388, 41.831608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310319, -0.681457, 0.662812,
		-0.008918, -0.695114, -0.718844,
		0.950591, -0.228982, 0.209629,
		32.440285, 30.481693, 41.894497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807808, 29.908199, 41.893177>,  <31.774874, 30.641981, 41.747757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807808, 29.908199, 41.893177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.124550, 30.075771, 42.070927>,  <32.314594, 30.176315, 42.177574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.124550, 30.075771, 42.070927>,  <31.807808, 29.908199, 41.893177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124550, 30.075771, 42.070927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053147, -0.677597, 0.733510,
		0.608393, -0.604450, -0.514293,
		0.791854, 0.418930, 0.444371,
		32.362106, 30.201450, 42.204239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118153, 29.332415, 42.282909>,  <31.807808, 29.908199, 41.893177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118153, 29.332415, 42.282909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.338661, 29.624193, 42.444904>,  <32.470966, 29.799261, 42.542099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.338661, 29.624193, 42.444904>,  <32.118153, 29.332415, 42.282909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338661, 29.624193, 42.444904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097937, -0.538620, 0.836837,
		0.828560, -0.421660, -0.368364,
		0.551269, 0.729446, 0.404983,
		32.504044, 29.843027, 42.566399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689423, 28.993469, 42.632542>,  <32.118153, 29.332415, 42.282909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689423, 28.993469, 42.632542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.689796, 29.368103, 42.772720>,  <32.690022, 29.592884, 42.856827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.689796, 29.368103, 42.772720>,  <32.689423, 28.993469, 42.632542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689796, 29.368103, 42.772720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216692, -0.342306, 0.914260,
		0.976239, 0.075085, -0.203270,
		0.000933, 0.936584, 0.350443,
		32.690075, 29.649078, 42.877853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300468, 29.146011, 43.080315>,  <32.689423, 28.993469, 42.632542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300468, 29.146011, 43.080315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.037949, 29.414808, 43.217545>,  <32.880436, 29.576086, 43.299885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.037949, 29.414808, 43.217545>,  <33.300468, 29.146011, 43.080315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037949, 29.414808, 43.217545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112464, -0.362502, 0.925172,
		0.746074, 0.645772, 0.162335,
		-0.656297, 0.671990, 0.343079,
		32.841061, 29.616405, 43.320469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593998, 29.600878, 43.682293>,  <33.300468, 29.146011, 43.080315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593998, 29.600878, 43.682293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.200142, 29.627237, 43.746971>,  <32.963829, 29.643053, 43.785778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.200142, 29.627237, 43.746971>,  <33.593998, 29.600878, 43.682293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200142, 29.627237, 43.746971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123002, -0.395488, 0.910197,
		0.123929, 0.916104, 0.381307,
		-0.984638, 0.065899, 0.161695,
		32.904751, 29.647007, 43.795479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522388, 29.868883, 44.399254>,  <33.593998, 29.600878, 43.682293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522388, 29.868883, 44.399254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.169327, 29.703220, 44.310356>,  <32.957489, 29.603823, 44.257019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.169327, 29.703220, 44.310356>,  <33.522388, 29.868883, 44.399254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169327, 29.703220, 44.310356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079466, -0.334544, 0.939024,
		-0.463253, 0.846496, 0.262376,
		-0.882656, -0.414156, -0.222246,
		32.904530, 29.578974, 44.243683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.965160, 29.912102, 43.713902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.355516, 29.835176, 43.672619>,  <28.589731, 29.789021, 43.647850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.355516, 29.835176, 43.672619>,  <27.965160, 29.912102, 43.713902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.355516, 29.835176, 43.672619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040276, 0.623422, -0.780848,
		0.214508, 0.757866, 0.616138,
		0.975892, -0.192313, -0.103205,
		28.648283, 29.777483, 43.641659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.219124, 30.472500, 43.551483>,  <27.965160, 29.912102, 43.713902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.219124, 30.472500, 43.551483> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.520231, 30.229647, 43.449715>,  <28.700895, 30.083935, 43.388653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.520231, 30.229647, 43.449715>,  <28.219124, 30.472500, 43.551483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520231, 30.229647, 43.449715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086378, 0.474242, -0.876147,
		0.652594, 0.637559, 0.409437,
		0.752768, -0.607135, -0.254417,
		28.746061, 30.047506, 43.373390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599409, 30.843475, 43.177677>,  <28.219124, 30.472500, 43.551483>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599409, 30.843475, 43.177677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.749390, 30.490025, 43.065521>,  <28.839378, 30.277954, 42.998226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.749390, 30.490025, 43.065521>,  <28.599409, 30.843475, 43.177677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749390, 30.490025, 43.065521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347962, 0.414486, -0.840907,
		0.859263, 0.217736, 0.462881,
		0.374953, -0.883625, -0.280388,
		28.861876, 30.224937, 42.981403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449196, 30.928188, 43.160858>,  <28.599409, 30.843475, 43.177677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449196, 30.928188, 43.160858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.341446, 30.621866, 42.927284>,  <29.276796, 30.438072, 42.787140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.341446, 30.621866, 42.927284>,  <29.449196, 30.928188, 43.160858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341446, 30.621866, 42.927284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465317, 0.427370, -0.775136,
		0.843159, -0.480515, 0.241221,
		-0.269374, -0.765807, -0.583933,
		29.260633, 30.392124, 42.752106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988041, 30.973795, 42.702236>,  <29.449196, 30.928188, 43.160858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988041, 30.973795, 42.702236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.709351, 30.734959, 42.543213>,  <29.542135, 30.591656, 42.447800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.709351, 30.734959, 42.543213>,  <29.988041, 30.973795, 42.702236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709351, 30.734959, 42.543213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289110, 0.273473, -0.917403,
		0.656496, -0.754117, -0.017911,
		-0.696728, -0.597093, -0.397557,
		29.500332, 30.555830, 42.423946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292702, 30.593716, 42.165871>,  <29.988041, 30.973795, 42.702236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292702, 30.593716, 42.165871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.901720, 30.630894, 42.090031>,  <29.667131, 30.653200, 42.044529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.901720, 30.630894, 42.090031>,  <30.292702, 30.593716, 42.165871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901720, 30.630894, 42.090031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211152, 0.430890, -0.877353,
		0.000149, -0.897605, -0.440800,
		-0.977453, 0.092945, -0.189595,
		29.608484, 30.658777, 42.033154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277332, 30.375870, 41.501965>,  <30.292702, 30.593716, 42.165871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277332, 30.375870, 41.501965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.935751, 30.581900, 41.531517>,  <29.730803, 30.705517, 41.549248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.935751, 30.581900, 41.531517>,  <30.277332, 30.375870, 41.501965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935751, 30.581900, 41.531517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134615, 0.355839, -0.924801,
		-0.502632, -0.779793, -0.373208,
		-0.853956, 0.515074, 0.073884,
		29.679564, 30.736422, 41.553680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842531, 30.209835, 40.894527>,  <30.277332, 30.375870, 41.501965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842531, 30.209835, 40.894527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.702389, 30.557154, 41.034992>,  <29.618303, 30.765545, 41.119270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.702389, 30.557154, 41.034992>,  <29.842531, 30.209835, 40.894527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702389, 30.557154, 41.034992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088486, 0.403930, -0.910501,
		-0.932427, -0.287928, -0.218352,
		-0.350357, 0.868296, 0.351157,
		29.597282, 30.817642, 41.140339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482927, 30.443491, 40.390469>,  <29.842531, 30.209835, 40.894527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482927, 30.443491, 40.390469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.530224, 30.772602, 40.612839>,  <29.558601, 30.970070, 40.746262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.530224, 30.772602, 40.612839>,  <29.482927, 30.443491, 40.390469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530224, 30.772602, 40.612839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285618, 0.508012, -0.812617,
		-0.951021, 0.254868, -0.174932,
		0.118242, 0.822779, 0.555925,
		29.565697, 31.019436, 40.779617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.127216, 30.924421, 40.125996>,  <29.482927, 30.443491, 40.390469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.127216, 30.924421, 40.125996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.390768, 31.150036, 40.325089>,  <29.548899, 31.285404, 40.444546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.390768, 31.150036, 40.325089>,  <29.127216, 30.924421, 40.125996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390768, 31.150036, 40.325089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191280, 0.514293, -0.836011,
		-0.727524, 0.646036, 0.230967,
		0.658878, 0.564039, 0.497734,
		29.588432, 31.319248, 40.474407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932369, 31.729570, 40.169746>,  <29.127216, 30.924421, 40.125996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932369, 31.729570, 40.169746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.321156, 31.724653, 40.263664>,  <29.554428, 31.721703, 40.320015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.321156, 31.724653, 40.263664>,  <28.932369, 31.729570, 40.169746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321156, 31.724653, 40.263664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192554, 0.614659, -0.764930,
		-0.134914, 0.788698, 0.599795,
		0.971968, -0.012293, 0.234792,
		29.612745, 31.720964, 40.334103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089642, 32.424389, 40.213158>,  <28.932369, 31.729570, 40.169746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089642, 32.424389, 40.213158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.424753, 32.221241, 40.132965>,  <29.625820, 32.099354, 40.084850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.424753, 32.221241, 40.132965>,  <29.089642, 32.424389, 40.213158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424753, 32.221241, 40.132965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225458, 0.656188, -0.720129,
		0.497287, 0.558109, 0.664244,
		0.837780, -0.507870, -0.200484,
		29.676086, 32.068878, 40.072819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622627, 32.920845, 40.078949>,  <29.089642, 32.424389, 40.213158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622627, 32.920845, 40.078949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.785522, 32.588497, 39.927258>,  <29.883261, 32.389088, 39.836243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.785522, 32.588497, 39.927258>,  <29.622627, 32.920845, 40.078949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.785522, 32.588497, 39.927258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382172, 0.532141, -0.755494,
		0.829518, 0.162737, 0.534244,
		0.407240, -0.830869, -0.379227,
		29.907694, 32.339237, 39.813488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287363, 33.197388, 39.892479>,  <29.622627, 32.920845, 40.078949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287363, 33.197388, 39.892479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.175127, 32.865002, 39.700329>,  <30.107786, 32.665569, 39.585037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.175127, 32.865002, 39.700329>,  <30.287363, 33.197388, 39.892479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175127, 32.865002, 39.700329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067751, 0.482089, -0.873498,
		0.957434, -0.277641, -0.078970,
		-0.280589, -0.830966, -0.480379,
		30.090950, 32.615711, 39.556213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907310, 33.230602, 40.320370>,  <30.287363, 33.197388, 39.892479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907310, 33.230602, 40.320370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.079144, 33.537888, 40.510235>,  <31.182243, 33.722260, 40.624153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.079144, 33.537888, 40.510235>,  <30.907310, 33.230602, 40.320370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.079144, 33.537888, 40.510235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041797, -0.508161, 0.860247,
		0.902059, -0.389388, -0.186190,
		0.429584, 0.768211, 0.474667,
		31.208019, 33.768353, 40.652634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380344, 32.804367, 40.850048>,  <30.907310, 33.230602, 40.320370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380344, 32.804367, 40.850048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.327229, 33.166309, 41.011837>,  <31.295359, 33.383476, 41.108910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.327229, 33.166309, 41.011837>,  <31.380344, 32.804367, 40.850048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327229, 33.166309, 41.011837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046251, -0.413302, 0.909419,
		0.990065, 0.102053, 0.096732,
		-0.132789, 0.904857, 0.404476,
		31.287392, 33.437767, 41.133179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818499, 32.848957, 41.449413>,  <31.380344, 32.804367, 40.850048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818499, 32.848957, 41.449413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.523094, 33.115368, 41.491398>,  <31.345852, 33.275215, 41.516590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.523094, 33.115368, 41.491398>,  <31.818499, 32.848957, 41.449413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523094, 33.115368, 41.491398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178209, -0.342951, 0.922294,
		0.650266, 0.662418, 0.371964,
		-0.738509, 0.666023, 0.104960,
		31.301542, 33.315174, 41.522884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965136, 33.156849, 42.096516>,  <31.818499, 32.848957, 41.449413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965136, 33.156849, 42.096516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.575880, 33.211895, 42.022694>,  <31.342327, 33.244923, 41.978401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.575880, 33.211895, 42.022694>,  <31.965136, 33.156849, 42.096516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575880, 33.211895, 42.022694> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222685, -0.359334, 0.906251,
		0.058395, 0.923007, 0.380327,
		-0.973140, 0.137614, -0.184557,
		31.283937, 33.253178, 41.967327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712231, 33.463261, 42.655499>,  <31.965136, 33.156849, 42.096516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712231, 33.463261, 42.655499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.365187, 33.327824, 42.509838>,  <31.156960, 33.246563, 42.422440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.365187, 33.327824, 42.509838>,  <31.712231, 33.463261, 42.655499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365187, 33.327824, 42.509838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324501, -0.169356, 0.930601,
		-0.376766, 0.925567, 0.037062,
		-0.867610, -0.338592, -0.364155,
		31.104904, 33.226246, 42.400593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223492, 33.769684, 43.128464>,  <31.712231, 33.463261, 42.655499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223492, 33.769684, 43.128464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.073744, 33.453392, 42.934723>,  <30.983894, 33.263618, 42.818478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.073744, 33.453392, 42.934723>,  <31.223492, 33.769684, 43.128464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073744, 33.453392, 42.934723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502745, -0.265818, 0.822550,
		-0.779163, 0.551442, -0.298021,
		-0.374370, -0.790729, -0.484350,
		30.961433, 33.216175, 42.789417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522264, 33.711353, 43.258881>,  <31.223492, 33.769684, 43.128464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522264, 33.711353, 43.258881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.608753, 33.344963, 43.123688>,  <30.660646, 33.125130, 43.042572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.608753, 33.344963, 43.123688>,  <30.522264, 33.711353, 43.258881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608753, 33.344963, 43.123688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501422, -0.401210, 0.766555,
		-0.837749, 0.003723, -0.546043,
		0.216224, -0.915979, -0.337980,
		30.673620, 33.070171, 43.022293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915752, 33.325481, 43.411419>,  <30.522264, 33.711353, 43.258881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915752, 33.325481, 43.411419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.179358, 33.034431, 43.335239>,  <30.337521, 32.859802, 43.289532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.179358, 33.034431, 43.335239>,  <29.915752, 33.325481, 43.411419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179358, 33.034431, 43.335239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273641, -0.467804, 0.840405,
		-0.700588, -0.501724, -0.507396,
		0.659013, -0.727622, -0.190445,
		30.377062, 32.816147, 43.278107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648108, 32.679623, 43.501499>,  <29.915752, 33.325481, 43.411419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648108, 32.679623, 43.501499> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.035627, 32.607422, 43.569431>,  <30.268139, 32.564102, 43.610191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.035627, 32.607422, 43.569431>,  <29.648108, 32.679623, 43.501499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035627, 32.607422, 43.569431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242236, -0.544752, 0.802849,
		-0.052395, -0.818942, -0.571480,
		0.968802, -0.180498, 0.169835,
		30.326267, 32.553272, 43.620380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619869, 32.061413, 43.749344>,  <29.648108, 32.679623, 43.501499>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619869, 32.061413, 43.749344> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.980497, 32.194256, 43.860252>,  <30.196875, 32.273960, 43.926796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.980497, 32.194256, 43.860252>,  <29.619869, 32.061413, 43.749344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980497, 32.194256, 43.860252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067452, -0.525147, 0.848334,
		0.427345, -0.783534, -0.451055,
		0.901569, 0.332107, 0.277271,
		30.250969, 32.293888, 43.943432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033670, 31.511992, 44.038891>,  <29.619869, 32.061413, 43.749344>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033670, 31.511992, 44.038891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.212530, 31.844629, 44.170654>,  <30.319847, 32.044212, 44.249710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.212530, 31.844629, 44.170654>,  <30.033670, 31.511992, 44.038891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212530, 31.844629, 44.170654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134204, -0.426479, 0.894486,
		0.884334, -0.355762, -0.302303,
		0.447150, 0.831594, 0.329405,
		30.346676, 32.094109, 44.269474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600212, 31.187784, 44.375385>,  <30.033670, 31.511992, 44.038891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600212, 31.187784, 44.375385> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.561222, 31.557116, 44.523956>,  <30.537828, 31.778715, 44.613098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.561222, 31.557116, 44.523956>,  <30.600212, 31.187784, 44.375385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561222, 31.557116, 44.523956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067925, -0.378509, 0.923102,
		0.992917, 0.064749, 0.099612,
		-0.097474, 0.923330, 0.371430,
		30.531981, 31.834114, 44.635384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036943, 31.228470, 44.963142>,  <30.600212, 31.187784, 44.375385>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036943, 31.228470, 44.963142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.768858, 31.522940, 45.000801>,  <30.608007, 31.699621, 45.023396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.768858, 31.522940, 45.000801>,  <31.036943, 31.228470, 44.963142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768858, 31.522940, 45.000801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258420, -0.350392, 0.900247,
		0.695725, 0.579029, 0.425079,
		-0.670214, 0.736173, 0.094144,
		30.567795, 31.743792, 45.029045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151146, 31.653486, 45.739796>,  <31.036943, 31.228470, 44.963142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151146, 31.653486, 45.739796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.775972, 31.694336, 45.607224>,  <30.550867, 31.718845, 45.527679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.775972, 31.694336, 45.607224>,  <31.151146, 31.653486, 45.739796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775972, 31.694336, 45.607224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345989, -0.341210, 0.873995,
		-0.023834, 0.934424, 0.355366,
		-0.937936, 0.102122, -0.331432,
		30.494591, 31.724972, 45.507793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483299, 32.290806, 46.024185>,  <31.151146, 31.653486, 45.739796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483299, 32.290806, 46.024185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.832941, 32.287556, 46.218456>,  <32.042725, 32.285606, 46.335018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.832941, 32.287556, 46.218456>,  <31.483299, 32.290806, 46.024185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832941, 32.287556, 46.218456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428510, 0.483758, -0.763124,
		-0.228745, 0.875164, 0.426337,
		0.874102, -0.008129, 0.485674,
		32.095173, 32.285118, 46.364159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708082, 32.993473, 45.990780>,  <31.483299, 32.290806, 46.024185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708082, 32.993473, 45.990780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018002, 32.748329, 46.052860>,  <32.203953, 32.601242, 46.090107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.018002, 32.748329, 46.052860>,  <31.708082, 32.993473, 45.990780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018002, 32.748329, 46.052860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461974, 0.381254, -0.800765,
		0.431586, 0.692132, 0.578521,
		0.774799, -0.612861, 0.155202,
		32.250443, 32.564472, 46.099422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344917, 33.329521, 45.756397>,  <31.708082, 32.993473, 45.990780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344917, 33.329521, 45.756397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.455040, 32.945396, 45.774319>,  <32.521114, 32.714920, 45.785072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.455040, 32.945396, 45.774319>,  <32.344917, 33.329521, 45.756397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455040, 32.945396, 45.774319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466377, 0.092663, -0.879719,
		0.840652, 0.263092, 0.473378,
		0.275311, -0.960310, 0.044803,
		32.537632, 32.657303, 45.787758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047607, 33.324924, 45.696732>,  <32.344917, 33.329521, 45.756397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047607, 33.324924, 45.696732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979958, 32.936497, 45.629303>,  <32.939365, 32.703442, 45.588844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.979958, 32.936497, 45.629303>,  <33.047607, 33.324924, 45.696732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979958, 32.936497, 45.629303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735678, -0.010562, -0.677250,
		0.655877, -0.238559, 0.716181,
		-0.169128, -0.971071, -0.168576,
		32.929218, 32.645176, 45.578732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714664, 33.041573, 45.590145>,  <33.047607, 33.324924, 45.696732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714664, 33.041573, 45.590145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479412, 32.758400, 45.433716>,  <33.338261, 32.588497, 45.339859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.479412, 32.758400, 45.433716>,  <33.714664, 33.041573, 45.590145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479412, 32.758400, 45.433716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531300, 0.026389, -0.846773,
		0.609777, -0.705788, 0.360604,
		-0.588126, -0.707931, -0.391076,
		33.302975, 32.546021, 45.316391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071018, 32.471600, 45.185894>,  <33.714664, 33.041573, 45.590145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071018, 32.471600, 45.185894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708622, 32.453350, 45.017559>,  <33.491184, 32.442398, 44.916557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708622, 32.453350, 45.017559>,  <34.071018, 32.471600, 45.185894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708622, 32.453350, 45.017559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422205, -0.025933, -0.906129,
		0.030428, -0.998622, 0.042758,
		-0.905989, -0.045624, -0.420834,
		33.436825, 32.439663, 44.891308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052933, 31.927731, 44.716743>,  <34.071018, 32.471600, 45.185894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052933, 31.927731, 44.716743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751328, 32.163517, 44.600819>,  <33.570362, 32.304989, 44.531265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751328, 32.163517, 44.600819>,  <34.052933, 31.927731, 44.716743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751328, 32.163517, 44.600819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314969, -0.062712, -0.947028,
		-0.576414, -0.805357, -0.138377,
		-0.754017, 0.589464, -0.289810,
		33.525124, 32.340355, 44.513874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925198, 31.792810, 43.985985>,  <34.052933, 31.927731, 44.716743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925198, 31.792810, 43.985985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723602, 32.133801, 44.041527>,  <33.602646, 32.338394, 44.074852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723602, 32.133801, 44.041527>,  <33.925198, 31.792810, 43.985985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723602, 32.133801, 44.041527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273997, 0.310261, -0.910310,
		-0.819096, -0.420744, -0.389944,
		-0.503992, 0.852474, 0.138851,
		33.572403, 32.389542, 44.083183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402485, 31.863626, 43.425594>,  <33.925198, 31.792810, 43.985985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402485, 31.863626, 43.425594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504730, 32.223843, 43.566269>,  <33.566078, 32.439972, 43.650673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504730, 32.223843, 43.566269>,  <33.402485, 31.863626, 43.425594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504730, 32.223843, 43.566269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266172, 0.284158, -0.921090,
		-0.929415, 0.329056, -0.167063,
		0.255618, 0.900542, 0.351686,
		33.581417, 32.494007, 43.671776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141422, 32.386089, 42.885521>,  <33.402485, 31.863626, 43.425594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141422, 32.386089, 42.885521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.395256, 32.592548, 43.115616>,  <33.547554, 32.716423, 43.253674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.395256, 32.592548, 43.115616>,  <33.141422, 32.386089, 42.885521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395256, 32.592548, 43.115616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260282, 0.558088, -0.787903,
		-0.727708, 0.649712, 0.219808,
		0.634582, 0.516151, 0.575234,
		33.585632, 32.747395, 43.288185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075485, 33.094250, 42.700657>,  <33.141422, 32.386089, 42.885521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075485, 33.094250, 42.700657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.432899, 33.079636, 42.879658>,  <33.647346, 33.070869, 42.987061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.432899, 33.079636, 42.879658>,  <33.075485, 33.094250, 42.700657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432899, 33.079636, 42.879658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387605, 0.565822, -0.727741,
		-0.226622, 0.823718, 0.519742,
		0.893535, -0.036532, 0.447505,
		33.700958, 33.068676, 43.013908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262875, 33.745018, 42.770237>,  <33.075485, 33.094250, 42.700657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262875, 33.745018, 42.770237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.608650, 33.544651, 42.787319>,  <33.816116, 33.424431, 42.797569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.608650, 33.544651, 42.787319>,  <33.262875, 33.745018, 42.770237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608650, 33.544651, 42.787319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406734, 0.646918, -0.645030,
		0.295481, 0.574960, 0.762963,
		0.864441, -0.500917, 0.042704,
		33.867981, 33.394375, 42.800129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735657, 34.255276, 42.780640>,  <33.262875, 33.745018, 42.770237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735657, 34.255276, 42.780640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.962837, 33.942944, 42.676537>,  <34.099144, 33.755543, 42.614075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.962837, 33.942944, 42.676537>,  <33.735657, 34.255276, 42.780640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962837, 33.942944, 42.676537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546279, 0.594133, -0.590410,
		0.615639, 0.193151, 0.763991,
		0.567951, -0.780832, -0.260257,
		34.133221, 33.708694, 42.598461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456818, 34.431171, 42.880741>,  <33.735657, 34.255276, 42.780640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456818, 34.431171, 42.880741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424763, 34.144974, 42.603142>,  <34.405529, 33.973255, 42.436581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.424763, 34.144974, 42.603142>,  <34.456818, 34.431171, 42.880741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424763, 34.144974, 42.603142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460223, 0.591030, -0.662479,
		0.884179, -0.372485, 0.281925,
		-0.080138, -0.715499, -0.694003,
		34.400723, 33.930325, 42.394939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.020313, 40.118732, 29.910435> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737978, 40.354164, 29.752768>,  <31.568577, 40.495422, 29.658167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.737978, 40.354164, 29.752768>,  <32.020313, 40.118732, 29.910435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737978, 40.354164, 29.752768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708362, -0.583387, 0.397345,
		0.003916, 0.559675, 0.828703,
		-0.705839, 0.588577, -0.394168,
		31.526226, 40.530739, 29.634518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690844, 40.354740, 30.419773>,  <32.020313, 40.118732, 29.910435>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690844, 40.354740, 30.419773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.433546, 40.360474, 30.113562>,  <31.279167, 40.363914, 29.929834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.433546, 40.360474, 30.113562>,  <31.690844, 40.354740, 30.419773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433546, 40.360474, 30.113562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561379, -0.688729, 0.458810,
		-0.520665, 0.724877, 0.451066,
		-0.643243, 0.014332, -0.765528,
		31.240574, 40.364773, 29.883904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099232, 40.442749, 30.757256>,  <31.690844, 40.354740, 30.419773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099232, 40.442749, 30.757256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.005413, 40.324989, 30.386673>,  <30.949121, 40.254333, 30.164324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.005413, 40.324989, 30.386673>,  <31.099232, 40.442749, 30.757256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005413, 40.324989, 30.386673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692560, -0.618181, 0.371769,
		-0.682164, 0.728824, -0.058893,
		-0.234547, -0.294395, -0.926455,
		30.935049, 40.236671, 30.108736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410067, 40.511723, 30.678587>,  <31.099232, 40.442749, 30.757256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410067, 40.511723, 30.678587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500305, 40.250851, 30.389099>,  <30.554449, 40.094330, 30.215406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.500305, 40.250851, 30.389099>,  <30.410067, 40.511723, 30.678587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500305, 40.250851, 30.389099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619060, -0.669575, 0.410408,
		-0.752243, 0.355440, -0.554790,
		0.225598, -0.652175, -0.723722,
		30.567986, 40.055199, 30.171982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742233, 40.155014, 30.590801>,  <30.410067, 40.511723, 30.678587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742233, 40.155014, 30.590801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.008245, 39.899006, 30.436865>,  <30.167852, 39.745399, 30.344503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.008245, 39.899006, 30.436865>,  <29.742233, 40.155014, 30.590801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008245, 39.899006, 30.436865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486111, -0.762176, 0.427533,
		-0.566949, -0.097246, -0.817993,
		0.665030, -0.640024, -0.384843,
		30.207754, 39.706997, 30.321411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306847, 39.635689, 30.243576>,  <29.742233, 40.155014, 30.590801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306847, 39.635689, 30.243576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.655621, 39.459229, 30.328539>,  <29.864885, 39.353352, 30.379517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.655621, 39.459229, 30.328539>,  <29.306847, 39.635689, 30.243576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655621, 39.459229, 30.328539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486502, -0.731692, 0.477433,
		-0.055204, -0.519627, -0.852608,
		0.871933, -0.441152, 0.212407,
		29.917200, 39.326881, 30.392262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.162933, 38.924915, 30.091105>,  <29.306847, 39.635689, 30.243576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.162933, 38.924915, 30.091105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.491030, 38.912189, 30.319559>,  <29.687887, 38.904552, 30.456633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.491030, 38.912189, 30.319559>,  <29.162933, 38.924915, 30.091105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491030, 38.912189, 30.319559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368264, -0.793384, 0.484690,
		0.437710, -0.607890, -0.662480,
		0.820239, -0.031814, 0.571136,
		29.737101, 38.902645, 30.490900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268209, 38.234814, 30.162636>,  <29.162933, 38.924915, 30.091105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268209, 38.234814, 30.162636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.484226, 38.411663, 30.449099>,  <29.613836, 38.517773, 30.620975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.484226, 38.411663, 30.449099>,  <29.268209, 38.234814, 30.162636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484226, 38.411663, 30.449099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218113, -0.748319, 0.626455,
		0.812885, -0.494515, -0.307691,
		0.540042, 0.442124, 0.716157,
		29.646238, 38.544300, 30.663946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875511, 37.785473, 30.420891>,  <29.268209, 38.234814, 30.162636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875511, 37.785473, 30.420891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.747709, 38.034302, 30.706810>,  <29.671028, 38.183601, 30.878363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.747709, 38.034302, 30.706810>,  <29.875511, 37.785473, 30.420891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.747709, 38.034302, 30.706810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150919, -0.778116, 0.609721,
		0.935489, 0.086933, 0.342495,
		-0.319506, 0.622076, 0.714799,
		29.651857, 38.220924, 30.921249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055525, 37.528141, 31.063559>,  <29.875511, 37.785473, 30.420891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055525, 37.528141, 31.063559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756378, 37.777336, 31.155281>,  <29.576891, 37.926853, 31.210314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.756378, 37.777336, 31.155281>,  <30.055525, 37.528141, 31.063559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756378, 37.777336, 31.155281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389012, -0.691167, 0.609063,
		0.537930, 0.366294, 0.759250,
		-0.747864, 0.622991, 0.229306,
		29.532019, 37.964233, 31.224073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925554, 37.313477, 31.718348>,  <30.055525, 37.528141, 31.063559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925554, 37.313477, 31.718348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.589560, 37.507492, 31.621059>,  <29.387962, 37.623901, 31.562687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.589560, 37.507492, 31.621059>,  <29.925554, 37.313477, 31.718348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589560, 37.507492, 31.621059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526267, -0.619091, 0.582897,
		0.132156, 0.617624, 0.775290,
		-0.839987, 0.485043, -0.243219,
		29.337563, 37.653004, 31.548094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560762, 37.530617, 32.355541>,  <29.925554, 37.313477, 31.718348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560762, 37.530617, 32.355541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282188, 37.530025, 32.068493>,  <29.115044, 37.529671, 31.896265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.282188, 37.530025, 32.068493>,  <29.560762, 37.530617, 32.355541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282188, 37.530025, 32.068493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498064, -0.718931, 0.484840,
		-0.516632, 0.695080, 0.499956,
		-0.696436, -0.001474, -0.717617,
		29.073257, 37.529583, 31.853209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922464, 37.433376, 32.731213>,  <29.560762, 37.530617, 32.355541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922464, 37.433376, 32.731213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.806475, 37.348709, 32.357880>,  <28.736881, 37.297909, 32.133881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.806475, 37.348709, 32.357880>,  <28.922464, 37.433376, 32.731213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806475, 37.348709, 32.357880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756650, -0.546438, 0.359006,
		-0.585999, 0.810310, -0.001706,
		-0.289974, -0.211668, -0.933334,
		28.719482, 37.285210, 32.077881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214310, 37.416470, 32.757729>,  <28.922464, 37.433376, 32.731213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214310, 37.416470, 32.757729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286015, 37.224136, 32.414410>,  <28.329037, 37.108738, 32.208420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.286015, 37.224136, 32.414410>,  <28.214310, 37.416470, 32.757729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.286015, 37.224136, 32.414410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710548, -0.666680, 0.225079,
		-0.680432, 0.569511, -0.461162,
		0.179263, -0.480829, -0.858294,
		28.339794, 37.079887, 32.156921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554668, 37.214848, 32.500866>,  <28.214310, 37.416470, 32.757729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554668, 37.214848, 32.500866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821384, 36.968460, 32.333069>,  <27.981415, 36.820629, 32.232391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821384, 36.968460, 32.333069>,  <27.554668, 37.214848, 32.500866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821384, 36.968460, 32.333069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631177, -0.766052, 0.121574,
		-0.396241, 0.183711, -0.899580,
		0.666790, -0.615966, -0.419495,
		28.021421, 36.783669, 32.207222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154856, 36.690800, 32.014744>,  <27.554668, 37.214848, 32.500866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154856, 36.690800, 32.014744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.515383, 36.535007, 32.090569>,  <27.731699, 36.441532, 32.136063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.515383, 36.535007, 32.090569>,  <27.154856, 36.690800, 32.014744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515383, 36.535007, 32.090569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421759, -0.888844, 0.179095,
		0.098738, -0.241371, -0.965397,
		0.901316, -0.389481, 0.189563,
		27.785778, 36.418163, 32.147438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.278267, 36.258205, 31.473719>,  <27.154856, 36.690800, 32.014744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.278267, 36.258205, 31.473719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514660, 36.133675, 31.771395>,  <27.656496, 36.058956, 31.950001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514660, 36.133675, 31.771395>,  <27.278267, 36.258205, 31.473719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514660, 36.133675, 31.771395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485246, -0.874157, 0.019651,
		0.644420, -0.372728, -0.667680,
		0.590982, -0.311325, 0.744189,
		27.691954, 36.040276, 31.994652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517473, 35.616501, 31.256214>,  <27.278267, 36.258205, 31.473719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517473, 35.616501, 31.256214> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.557362, 35.649628, 31.652840>,  <27.581295, 35.669502, 31.890816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.557362, 35.649628, 31.652840>,  <27.517473, 35.616501, 31.256214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557362, 35.649628, 31.652840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361901, -0.925260, 0.113675,
		0.926868, -0.370183, -0.062295,
		0.099719, 0.082817, 0.991563,
		27.587278, 35.674473, 31.950308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.470215, 34.954758, 31.405327>,  <27.517473, 35.616501, 31.256214>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.470215, 34.954758, 31.405327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449162, 35.104572, 31.775614>,  <27.436529, 35.194462, 31.997786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.449162, 35.104572, 31.775614>,  <27.470215, 34.954758, 31.405327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449162, 35.104572, 31.775614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300580, -0.889953, 0.342980,
		0.952303, -0.260199, 0.159422,
		-0.052635, 0.374540, 0.925716,
		27.433371, 35.216934, 32.053329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.932661, 34.694393, 31.938246>,  <27.470215, 34.954758, 31.405327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.932661, 34.694393, 31.938246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.611530, 34.837559, 32.128979>,  <27.418852, 34.923458, 32.243420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.611530, 34.837559, 32.128979>,  <27.932661, 34.694393, 31.938246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.611530, 34.837559, 32.128979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184585, -0.909681, 0.372033,
		0.566922, 0.210660, 0.796380,
		-0.802825, 0.357914, 0.476834,
		27.370684, 34.944931, 32.272030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566713, 34.645119, 32.314552>,  <27.932661, 34.694393, 31.938246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566713, 34.645119, 32.314552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404207, 34.427151, 32.021156>,  <28.306704, 34.296368, 31.845119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.404207, 34.427151, 32.021156>,  <28.566713, 34.645119, 32.314552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404207, 34.427151, 32.021156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771018, 0.226366, -0.595222,
		0.490387, -0.807352, 0.328180,
		-0.406265, -0.544922, -0.733491,
		28.282328, 34.263676, 31.801109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056345, 34.193954, 32.151295>,  <28.566713, 34.645119, 32.314552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056345, 34.193954, 32.151295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807449, 34.202057, 31.838266>,  <28.658112, 34.206917, 31.650450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.807449, 34.202057, 31.838266>,  <29.056345, 34.193954, 32.151295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.807449, 34.202057, 31.838266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772812, 0.175302, -0.609943,
		0.124833, -0.984306, -0.124730,
		-0.622236, 0.020252, -0.782567,
		28.620779, 34.208134, 31.603497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298223, 33.814831, 31.555462>,  <29.056345, 34.193954, 32.151295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298223, 33.814831, 31.555462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.042646, 34.073074, 31.388157>,  <28.889299, 34.228020, 31.287773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.042646, 34.073074, 31.388157>,  <29.298223, 33.814831, 31.555462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042646, 34.073074, 31.388157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592636, 0.066465, -0.802723,
		-0.490443, -0.760773, -0.425077,
		-0.638943, 0.645606, -0.418264,
		28.850964, 34.266758, 31.262678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132578, 33.565868, 30.834436>,  <29.298223, 33.814831, 31.555462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132578, 33.565868, 30.834436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049162, 33.955208, 30.872599>,  <28.999113, 34.188812, 30.895496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049162, 33.955208, 30.872599>,  <29.132578, 33.565868, 30.834436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049162, 33.955208, 30.872599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607637, 0.205384, -0.767200,
		-0.766348, -0.102020, -0.634274,
		-0.208540, 0.973350, 0.095405,
		28.986601, 34.247211, 30.901220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968317, 33.746094, 30.174929>,  <29.132578, 33.565868, 30.834436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968317, 33.746094, 30.174929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051340, 34.094582, 30.352873>,  <29.101154, 34.303673, 30.459641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051340, 34.094582, 30.352873>,  <28.968317, 33.746094, 30.174929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051340, 34.094582, 30.352873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387895, 0.344184, -0.855029,
		-0.898029, 0.350028, -0.266502,
		0.207559, 0.871216, 0.444861,
		29.113607, 34.355946, 30.486332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962708, 34.207897, 29.616314>,  <28.968317, 33.746094, 30.174929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962708, 34.207897, 29.616314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095934, 34.464325, 29.892893>,  <29.175871, 34.618183, 30.058840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.095934, 34.464325, 29.892893>,  <28.962708, 34.207897, 29.616314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095934, 34.464325, 29.892893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520811, 0.486223, -0.701672,
		-0.786017, 0.593816, -0.171931,
		0.333068, 0.641069, 0.691445,
		29.195854, 34.656647, 30.100327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953762, 34.843910, 29.311327>,  <28.962708, 34.207897, 29.616314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953762, 34.843910, 29.311327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228476, 34.860210, 29.601614>,  <29.393303, 34.869991, 29.775785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228476, 34.860210, 29.601614>,  <28.953762, 34.843910, 29.311327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228476, 34.860210, 29.601614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618895, 0.490808, -0.613251,
		-0.381177, 0.870315, 0.311861,
		0.686784, 0.040748, 0.725718,
		29.434511, 34.872437, 29.819330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216661, 35.653614, 29.472916>,  <28.953762, 34.843910, 29.311327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216661, 35.653614, 29.472916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498835, 35.381298, 29.551792>,  <29.668139, 35.217907, 29.599119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498835, 35.381298, 29.551792>,  <29.216661, 35.653614, 29.472916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498835, 35.381298, 29.551792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678504, 0.568206, -0.465591,
		0.204924, 0.462241, 0.862751,
		0.705435, -0.680791, 0.197193,
		29.710464, 35.177059, 29.610950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757757, 36.061722, 29.682917>,  <29.216661, 35.653614, 29.472916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757757, 36.061722, 29.682917> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.948862, 35.718174, 29.609072>,  <30.063524, 35.512043, 29.564766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.948862, 35.718174, 29.609072>,  <29.757757, 36.061722, 29.682917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.948862, 35.718174, 29.609072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698453, 0.498827, -0.513162,
		0.532830, 0.116227, 0.838203,
		0.477762, -0.858873, -0.184611,
		30.092190, 35.460510, 29.553688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477598, 36.107437, 29.974560>,  <29.757757, 36.061722, 29.682917>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477598, 36.107437, 29.974560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.473890, 35.808407, 29.708916>,  <30.471666, 35.628990, 29.549528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.473890, 35.808407, 29.708916>,  <30.477598, 36.107437, 29.974560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473890, 35.808407, 29.708916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679831, 0.482330, -0.552438,
		0.733310, -0.456605, 0.503755,
		-0.009270, -0.747576, -0.664111,
		30.471109, 35.584133, 29.509682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258396, 35.976936, 29.856110>,  <30.477598, 36.107437, 29.974560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258396, 35.976936, 29.856110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.083879, 35.822041, 29.531223>,  <30.979170, 35.729103, 29.336290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.083879, 35.822041, 29.531223>,  <31.258396, 35.976936, 29.856110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083879, 35.822041, 29.531223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739541, 0.359879, -0.568829,
		0.512571, -0.848844, 0.129365,
		-0.436292, -0.387236, -0.812218,
		30.952991, 35.705872, 29.287558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826197, 35.824127, 29.427259>,  <31.258396, 35.976936, 29.856110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826197, 35.824127, 29.427259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.513622, 35.841709, 29.178284>,  <31.326078, 35.852257, 29.028898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.513622, 35.841709, 29.178284>,  <31.826197, 35.824127, 29.427259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513622, 35.841709, 29.178284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563261, 0.478929, -0.673323,
		0.268511, -0.876753, -0.399008,
		-0.781434, 0.043951, -0.622438,
		31.279192, 35.854893, 28.991552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169724, 35.749706, 28.769297>,  <31.826197, 35.824127, 29.427259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169724, 35.749706, 28.769297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.807604, 35.904453, 28.699144>,  <31.590332, 35.997303, 28.657053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.807604, 35.904453, 28.699144>,  <32.169724, 35.749706, 28.769297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.807604, 35.904453, 28.699144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395154, 0.615585, -0.681842,
		-0.155823, -0.686575, -0.710164,
		-0.905302, 0.386871, -0.175381,
		31.536013, 36.020515, 28.646530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074200, 35.918594, 28.065149>,  <32.169724, 35.749706, 28.769297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074200, 35.918594, 28.065149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.789825, 36.150028, 28.225056>,  <31.619202, 36.288891, 28.320999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.789825, 36.150028, 28.225056>,  <32.074200, 35.918594, 28.065149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789825, 36.150028, 28.225056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218384, 0.721974, -0.656553,
		-0.668495, -0.379461, -0.639628,
		-0.710931, 0.578587, 0.399768,
		31.576546, 36.323605, 28.344986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586222, 36.125088, 27.575899>,  <32.074200, 35.918594, 28.065149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586222, 36.125088, 27.575899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.591963, 36.398430, 27.867878>,  <31.595407, 36.562435, 28.043064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.591963, 36.398430, 27.867878>,  <31.586222, 36.125088, 27.575899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591963, 36.398430, 27.867878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248446, 0.704690, -0.664595,
		-0.968539, 0.190891, -0.159662,
		0.014353, 0.683354, 0.729946,
		31.596268, 36.603436, 28.086863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.363907, 36.734303, 27.235769>,  <31.586222, 36.125088, 27.575899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.363907, 36.734303, 27.235769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.517811, 36.860966, 27.582567>,  <31.610153, 36.936966, 27.790646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.517811, 36.860966, 27.582567>,  <31.363907, 36.734303, 27.235769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517811, 36.860966, 27.582567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363993, 0.811132, -0.457793,
		-0.848215, 0.491721, 0.196829,
		0.384761, 0.316663, 0.866997,
		31.633240, 36.955963, 27.842667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054598, 37.413498, 27.326788>,  <31.363907, 36.734303, 27.235769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054598, 37.413498, 27.326788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.369181, 37.382763, 27.571926>,  <31.557930, 37.364323, 27.719009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.369181, 37.382763, 27.571926>,  <31.054598, 37.413498, 27.326788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369181, 37.382763, 27.571926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431428, 0.778390, -0.456047,
		-0.441990, 0.623060, 0.645322,
		0.786457, -0.076842, 0.612846,
		31.605118, 37.359711, 27.755779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169191, 38.101273, 27.399561>,  <31.054598, 37.413498, 27.326788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169191, 38.101273, 27.399561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.507515, 37.923050, 27.516924>,  <31.710508, 37.816116, 27.587341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.507515, 37.923050, 27.516924>,  <31.169191, 38.101273, 27.399561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507515, 37.923050, 27.516924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533238, 0.722846, -0.439490,
		-0.016270, 0.528180, 0.848977,
		0.845809, -0.445556, 0.293406,
		31.761257, 37.789383, 27.604946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630850, 38.580040, 27.738981>,  <31.169191, 38.101273, 27.399561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630850, 38.580040, 27.738981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.863970, 38.274738, 27.627420>,  <32.003841, 38.091557, 27.560484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.863970, 38.274738, 27.627420>,  <31.630850, 38.580040, 27.738981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863970, 38.274738, 27.627420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595221, 0.634615, -0.492926,
		0.553225, 0.121267, 0.824158,
		0.582798, -0.763255, -0.278904,
		32.038811, 38.045761, 27.543749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233540, 38.811794, 27.904257>,  <31.630850, 38.580040, 27.738981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233540, 38.811794, 27.904257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.316326, 38.526634, 27.636248>,  <32.365997, 38.355537, 27.475441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.316326, 38.526634, 27.636248>,  <32.233540, 38.811794, 27.904257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316326, 38.526634, 27.636248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754109, 0.552553, -0.354970,
		0.623283, -0.431803, 0.651969,
		0.206971, -0.712903, -0.670024,
		32.378418, 38.312763, 27.435240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911465, 38.883057, 27.895342>,  <32.233540, 38.811794, 27.904257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911465, 38.883057, 27.895342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.802872, 38.695274, 27.559267>,  <32.737717, 38.582607, 27.357622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.802872, 38.695274, 27.559267>,  <32.911465, 38.883057, 27.895342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802872, 38.695274, 27.559267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692246, 0.511246, -0.509335,
		0.668650, -0.719891, 0.186182,
		-0.271481, -0.469451, -0.840187,
		32.721428, 38.554440, 27.307211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493088, 38.708698, 27.611734>,  <32.911465, 38.883057, 27.895342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493088, 38.708698, 27.611734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.240631, 38.687336, 27.302204>,  <33.089157, 38.674519, 27.116486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.240631, 38.687336, 27.302204>,  <33.493088, 38.708698, 27.611734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240631, 38.687336, 27.302204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648342, 0.511330, -0.564087,
		0.425807, -0.857724, -0.288095,
		-0.631142, -0.053409, -0.773826,
		33.051289, 38.671314, 27.070057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.800728, 30.360106, 44.865051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650799, 30.008608, 44.746857>,  <32.560841, 29.797709, 44.675941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.650799, 30.008608, 44.746857>,  <32.800728, 30.360106, 44.865051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650799, 30.008608, 44.746857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285272, -0.193938, 0.938620,
		-0.882113, 0.436115, -0.177988,
		-0.374827, -0.878745, -0.295487,
		32.538349, 29.744984, 44.658211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189041, 30.267508, 45.236710>,  <32.800728, 30.360106, 44.865051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189041, 30.267508, 45.236710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.261765, 29.897602, 45.102989>,  <32.305397, 29.675659, 45.022755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.261765, 29.897602, 45.102989>,  <32.189041, 30.267508, 45.236710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261765, 29.897602, 45.102989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179891, -0.365511, 0.913258,
		-0.966740, -0.105896, -0.232809,
		0.181805, -0.924764, -0.334304,
		32.316307, 29.620173, 45.002697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585976, 29.976635, 45.370342>,  <32.189041, 30.267508, 45.236710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585976, 29.976635, 45.370342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.857485, 29.685156, 45.333973>,  <32.020390, 29.510267, 45.312149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.857485, 29.685156, 45.333973>,  <31.585976, 29.976635, 45.370342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857485, 29.685156, 45.333973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220246, -0.320129, 0.921417,
		-0.700544, -0.605404, -0.377788,
		0.678771, -0.728699, -0.090927,
		32.061115, 29.466547, 45.306694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291613, 29.506853, 45.728561>,  <31.585976, 29.976635, 45.370342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291613, 29.506853, 45.728561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.683544, 29.427954, 45.715748>,  <31.918703, 29.380615, 45.708061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.683544, 29.427954, 45.715748>,  <31.291613, 29.506853, 45.728561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683544, 29.427954, 45.715748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006920, -0.193696, 0.981037,
		-0.199734, -0.961024, -0.191153,
		0.979826, -0.197270, -0.032037,
		31.977493, 29.368780, 45.706139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440407, 28.904604, 46.111542>,  <31.291613, 29.506853, 45.728561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440407, 28.904604, 46.111542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.809364, 29.058716, 46.100613>,  <32.030739, 29.151182, 46.094055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.809364, 29.058716, 46.100613>,  <31.440407, 28.904604, 46.111542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.809364, 29.058716, 46.100613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133629, -0.251957, 0.958468,
		0.362395, -0.887737, -0.283889,
		0.922395, 0.385279, -0.027319,
		32.086082, 29.174299, 46.092419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.870642, 28.409063, 46.358524>,  <31.440407, 28.904604, 46.111542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.870642, 28.409063, 46.358524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065334, 28.749920, 46.435406>,  <32.182152, 28.954433, 46.481533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065334, 28.749920, 46.435406>,  <31.870642, 28.409063, 46.358524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065334, 28.749920, 46.435406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228967, -0.336784, 0.913318,
		0.843009, -0.400534, -0.359037,
		0.486733, 0.852143, 0.192203,
		32.211353, 29.005564, 46.493065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378105, 28.134560, 46.688587>,  <31.870642, 28.409063, 46.358524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378105, 28.134560, 46.688587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384731, 28.523499, 46.781765>,  <32.388706, 28.756863, 46.837673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.384731, 28.523499, 46.781765>,  <32.378105, 28.134560, 46.688587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384731, 28.523499, 46.781765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332268, -0.225093, 0.915932,
		0.943039, 0.062225, -0.326810,
		0.016568, 0.972348, 0.232947,
		32.389702, 28.815203, 46.851650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997463, 28.197544, 46.884872>,  <32.378105, 28.134560, 46.688587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997463, 28.197544, 46.884872> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803989, 28.521353, 47.017975>,  <32.687904, 28.715639, 47.097836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803989, 28.521353, 47.017975>,  <32.997463, 28.197544, 46.884872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803989, 28.521353, 47.017975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337100, -0.178550, 0.924383,
		0.807723, 0.559278, -0.186529,
		-0.483682, 0.809524, 0.332751,
		32.658886, 28.764210, 47.117802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.410099, 28.670223, 47.271843>,  <32.997463, 28.197544, 46.884872>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.410099, 28.670223, 47.271843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041317, 28.759014, 47.398788>,  <32.820045, 28.812288, 47.474957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.041317, 28.759014, 47.398788>,  <33.410099, 28.670223, 47.271843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041317, 28.759014, 47.398788> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299030, -0.112761, 0.947558,
		0.246123, 0.968510, 0.037583,
		-0.921957, 0.221978, 0.317367,
		32.764729, 28.825607, 47.493999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495468, 28.820240, 47.901833>,  <33.410099, 28.670223, 47.271843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495468, 28.820240, 47.901833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096397, 28.802885, 47.922810>,  <32.856953, 28.792471, 47.935398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.096397, 28.802885, 47.922810>,  <33.495468, 28.820240, 47.901833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096397, 28.802885, 47.922810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060105, -0.199913, 0.977968,
		-0.031948, 0.978852, 0.202058,
		-0.997681, -0.043389, 0.052447,
		32.797092, 28.789867, 47.938545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295727, 29.103962, 48.564320>,  <33.495468, 28.820240, 47.901833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295727, 29.103962, 48.564320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.940861, 28.946257, 48.468407>,  <32.727940, 28.851633, 48.410858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.940861, 28.946257, 48.468407>,  <33.295727, 29.103962, 48.564320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940861, 28.946257, 48.468407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164845, -0.214553, 0.962701,
		-0.431003, 0.893602, 0.125352,
		-0.887165, -0.394263, -0.239779,
		32.674709, 28.827978, 48.396473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782883, 29.259008, 49.169193>,  <33.295727, 29.103962, 48.564320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782883, 29.259008, 49.169193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656536, 28.925013, 48.988960>,  <32.580727, 28.724615, 48.880821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.656536, 28.925013, 48.988960>,  <32.782883, 29.259008, 49.169193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656536, 28.925013, 48.988960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268223, -0.376937, 0.886552,
		-0.910100, 0.400890, -0.104900,
		-0.315870, -0.834988, -0.450578,
		32.561775, 28.674517, 48.853786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984549, 28.977709, 49.298634>,  <32.782883, 29.259008, 49.169193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984549, 28.977709, 49.298634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.232803, 28.670412, 49.235878>,  <32.381756, 28.486034, 49.198223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.232803, 28.670412, 49.235878>,  <31.984549, 28.977709, 49.298634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232803, 28.670412, 49.235878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259826, -0.390289, 0.883269,
		-0.739797, -0.507426, -0.441837,
		0.620638, -0.768240, -0.156892,
		32.418995, 28.439939, 49.188808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740793, 28.299631, 49.235409>,  <31.984549, 28.977709, 49.298634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740793, 28.299631, 49.235409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.091125, 28.206638, 49.404583>,  <32.301323, 28.150843, 49.506088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.091125, 28.206638, 49.404583>,  <31.740793, 28.299631, 49.235409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091125, 28.206638, 49.404583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481314, -0.356345, 0.800846,
		-0.035471, -0.904970, -0.423995,
		0.875830, -0.232481, 0.422935,
		32.353874, 28.136894, 49.531464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162155, 28.730646, 49.236786>,  <31.740793, 28.299631, 49.235409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162155, 28.730646, 49.236786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.775085, 28.643625, 49.185753>,  <30.542843, 28.591412, 49.155132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.775085, 28.643625, 49.185753>,  <31.162155, 28.730646, 49.236786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775085, 28.643625, 49.185753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057233, 0.682105, -0.729011,
		0.245626, -0.698143, -0.672506,
		-0.967673, -0.217554, -0.127586,
		30.484783, 28.578360, 49.147476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718412, 28.927828, 49.826340>,  <31.162155, 28.730646, 49.236786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718412, 28.927828, 49.826340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.568939, 29.217482, 50.058197>,  <30.479256, 29.391273, 50.197311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.568939, 29.217482, 50.058197>,  <30.718412, 28.927828, 49.826340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568939, 29.217482, 50.058197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074919, 0.646438, -0.759279,
		-0.924526, -0.240303, -0.295815,
		-0.373683, 0.724135, 0.579646,
		30.456835, 29.434723, 50.232090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176731, 29.254810, 49.432278>,  <30.718412, 28.927828, 49.826340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176731, 29.254810, 49.432278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.303556, 29.513792, 49.709484>,  <30.379652, 29.669180, 49.875809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.303556, 29.513792, 49.709484>,  <30.176731, 29.254810, 49.432278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303556, 29.513792, 49.709484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051819, 0.717804, -0.694315,
		-0.946988, 0.256052, 0.194038,
		0.317062, 0.647453, 0.693020,
		30.398676, 29.708029, 49.917389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.926514, 29.907675, 49.306942>,  <30.176731, 29.254810, 49.432278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.926514, 29.907675, 49.306942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.246761, 30.025814, 49.515469>,  <30.438910, 30.096697, 49.640587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.246761, 30.025814, 49.515469>,  <29.926514, 29.907675, 49.306942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246761, 30.025814, 49.515469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134917, 0.758863, -0.637122,
		-0.583783, 0.580429, 0.567714,
		0.800621, 0.295347, 0.521321,
		30.486948, 30.114418, 49.671864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.914907, 30.569624, 49.415524>,  <29.926514, 29.907675, 49.306942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.914907, 30.569624, 49.415524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.300386, 30.493809, 49.490742>,  <30.531673, 30.448320, 49.535873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.300386, 30.493809, 49.490742>,  <29.914907, 30.569624, 49.415524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300386, 30.493809, 49.490742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263239, 0.792169, -0.550611,
		-0.044600, 0.580124, 0.813306,
		0.963699, -0.189537, 0.188042,
		30.589497, 30.436947, 49.547153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.283201, 31.138912, 49.550858>,  <29.914907, 30.569624, 49.415524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.283201, 31.138912, 49.550858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.589678, 30.904743, 49.444855>,  <30.773563, 30.764242, 49.381252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.589678, 30.904743, 49.444855>,  <30.283201, 31.138912, 49.550858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589678, 30.904743, 49.444855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309077, 0.697279, -0.646741,
		0.563403, 0.413619, 0.715190,
		0.766191, -0.585425, -0.265008,
		30.819534, 30.729116, 49.365353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907888, 31.590731, 49.418468>,  <30.283201, 31.138912, 49.550858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907888, 31.590731, 49.418468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060459, 31.263412, 49.246468>,  <31.152002, 31.067022, 49.143265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.060459, 31.263412, 49.246468>,  <30.907888, 31.590731, 49.418468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.060459, 31.263412, 49.246468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429848, 0.568830, -0.701187,
		0.818379, 0.082615, 0.568710,
		0.381427, -0.818296, -0.430006,
		31.174887, 31.017923, 49.117466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615961, 31.685171, 49.270885>,  <30.907888, 31.590731, 49.418468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615961, 31.685171, 49.270885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.495136, 31.393513, 49.025249>,  <31.422642, 31.218517, 48.877869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.495136, 31.393513, 49.025249>,  <31.615961, 31.685171, 49.270885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495136, 31.393513, 49.025249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559314, 0.386096, -0.733552,
		0.771963, -0.565046, 0.291198,
		-0.302060, -0.729146, -0.614090,
		31.404518, 31.174768, 48.841022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238407, 31.520752, 48.877075>,  <31.615961, 31.685171, 49.270885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238407, 31.520752, 48.877075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915630, 31.383966, 48.684448>,  <31.721964, 31.301895, 48.568871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.915630, 31.383966, 48.684448>,  <32.238407, 31.520752, 48.877075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915630, 31.383966, 48.684448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440291, 0.195195, -0.876381,
		0.393690, -0.919217, -0.006947,
		-0.806940, -0.341964, -0.481569,
		31.673548, 31.281378, 48.539978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483646, 31.143963, 48.348087>,  <32.238407, 31.520752, 48.877075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483646, 31.143963, 48.348087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118057, 31.216160, 48.202717>,  <31.898705, 31.259478, 48.115494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.118057, 31.216160, 48.202717>,  <32.483646, 31.143963, 48.348087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118057, 31.216160, 48.202717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405481, 0.371887, -0.835036,
		-0.015566, -0.910561, -0.413081,
		-0.913971, 0.180495, -0.363426,
		31.843866, 31.270308, 48.093689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551777, 31.005100, 47.670982>,  <32.483646, 31.143963, 48.348087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551777, 31.005100, 47.670982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229435, 31.238670, 47.710232>,  <32.036030, 31.378813, 47.733780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229435, 31.238670, 47.710232>,  <32.551777, 31.005100, 47.670982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229435, 31.238670, 47.710232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253016, 0.489414, -0.834540,
		-0.535330, -0.647693, -0.542140,
		-0.805857, 0.583924, 0.098122,
		31.987679, 31.413847, 47.739670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358814, 31.025627, 47.014130>,  <32.551777, 31.005100, 47.670982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358814, 31.025627, 47.014130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.200565, 31.333666, 47.214306>,  <32.105618, 31.518488, 47.334412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.200565, 31.333666, 47.214306>,  <32.358814, 31.025627, 47.014130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200565, 31.333666, 47.214306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320951, 0.626465, -0.710304,
		-0.860509, -0.120394, -0.495005,
		-0.395619, 0.770095, 0.500438,
		32.081879, 31.564693, 47.364437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040024, 31.308214, 46.530060>,  <32.358814, 31.025627, 47.014130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040024, 31.308214, 46.530060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056126, 31.589645, 46.813850>,  <32.065788, 31.758505, 46.984123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.056126, 31.589645, 46.813850>,  <32.040024, 31.308214, 46.530060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056126, 31.589645, 46.813850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348248, 0.655651, -0.669959,
		-0.936538, 0.274044, -0.218626,
		0.040256, 0.703578, 0.709477,
		32.068203, 31.800718, 47.026695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.470314, 31.687403, 46.403915>,  <32.040024, 31.308214, 46.530060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.470314, 31.687403, 46.403915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.762917, 31.889429, 46.587135>,  <31.938478, 32.010643, 46.697067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.762917, 31.889429, 46.587135>,  <31.470314, 31.687403, 46.403915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762917, 31.889429, 46.587135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212511, 0.469444, -0.857007,
		-0.647873, 0.724246, 0.236069,
		0.731505, 0.505064, 0.458050,
		31.982368, 32.040947, 46.724552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725157, 31.765211, 46.407402>,  <31.470314, 31.687403, 46.403915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725157, 31.765211, 46.407402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.441557, 31.723463, 46.128426>,  <30.271397, 31.698414, 45.961040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.441557, 31.723463, 46.128426>,  <30.725157, 31.765211, 46.407402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441557, 31.723463, 46.128426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626559, -0.360649, 0.690909,
		-0.323644, 0.926843, 0.190304,
		-0.708998, -0.104372, -0.697445,
		30.228857, 31.692152, 45.919193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150351, 32.049915, 46.663612>,  <30.725157, 31.765211, 46.407402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150351, 32.049915, 46.663612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.010857, 31.768723, 46.415676>,  <29.927160, 31.600008, 46.266914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.010857, 31.768723, 46.415676>,  <30.150351, 32.049915, 46.663612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.010857, 31.768723, 46.415676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637460, -0.306911, 0.706718,
		-0.687045, 0.641582, -0.341090,
		-0.348733, -0.702978, -0.619844,
		29.906237, 31.557829, 46.229721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580053, 31.947990, 46.902107>,  <30.150351, 32.049915, 46.663612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580053, 31.947990, 46.902107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.608896, 31.632242, 46.658241>,  <29.626202, 31.442793, 46.511921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.608896, 31.632242, 46.658241>,  <29.580053, 31.947990, 46.902107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.608896, 31.632242, 46.658241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493935, -0.559300, 0.665741,
		-0.866504, 0.253130, -0.430229,
		0.072108, -0.789372, -0.609665,
		29.630529, 31.395430, 46.475342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835833, 31.592051, 46.806141>,  <29.580053, 31.947990, 46.902107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835833, 31.592051, 46.806141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.132862, 31.329399, 46.753345>,  <29.311079, 31.171808, 46.721668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.132862, 31.329399, 46.753345>,  <28.835833, 31.592051, 46.806141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132862, 31.329399, 46.753345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428810, -0.617490, 0.659414,
		-0.514494, -0.433064, -0.740102,
		0.742575, -0.656628, -0.131993,
		29.355635, 31.132410, 46.713749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533735, 30.844452, 46.547329>,  <28.835833, 31.592051, 46.806141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533735, 30.844452, 46.547329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.891930, 30.820871, 46.723797>,  <29.106846, 30.806723, 46.829678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.891930, 30.820871, 46.723797>,  <28.533735, 30.844452, 46.547329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.891930, 30.820871, 46.723797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361882, -0.673494, 0.644552,
		0.259127, -0.736838, -0.624438,
		0.895486, -0.058952, 0.441169,
		29.160576, 30.803186, 46.856148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757061, 30.145037, 46.488674>,  <28.533735, 30.844452, 46.547329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757061, 30.145037, 46.488674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.019024, 30.245186, 46.773884>,  <29.176203, 30.305275, 46.945011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.019024, 30.245186, 46.773884>,  <28.757061, 30.145037, 46.488674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019024, 30.245186, 46.773884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365577, -0.720812, 0.588884,
		0.661399, -0.646331, -0.380536,
		0.654909, 0.250372, 0.713028,
		29.215496, 30.320297, 46.987793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.021635, 29.518887, 46.743156>,  <28.757061, 30.145037, 46.488674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.021635, 29.518887, 46.743156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.100180, 29.784666, 47.031586>,  <29.147306, 29.944134, 47.204643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.100180, 29.784666, 47.031586>,  <29.021635, 29.518887, 46.743156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100180, 29.784666, 47.031586> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385442, -0.623886, 0.679853,
		0.901596, -0.411431, 0.133599,
		0.196363, 0.664448, 0.721076,
		29.159088, 29.984001, 47.247910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617952, 29.641792, 46.696724>,  <29.021635, 29.518887, 46.743156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617952, 29.641792, 46.696724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.416834, 29.325520, 46.556995>,  <29.296164, 29.135756, 46.473160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.416834, 29.325520, 46.556995>,  <29.617952, 29.641792, 46.696724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416834, 29.325520, 46.556995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085157, 0.356838, -0.930277,
		0.860201, -0.497485, -0.112085,
		-0.502795, -0.790680, -0.349317,
		29.265995, 29.088316, 46.452202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109823, 29.266855, 46.162384>,  <29.617952, 29.641792, 46.696724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109823, 29.266855, 46.162384> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.728773, 29.162519, 46.099819>,  <29.500143, 29.099918, 46.062279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.728773, 29.162519, 46.099819>,  <30.109823, 29.266855, 46.162384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728773, 29.162519, 46.099819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063576, 0.332145, -0.941083,
		0.297418, -0.906447, -0.299828,
		-0.952629, -0.260833, -0.156414,
		29.442986, 29.084269, 46.052895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.096983, 29.120003, 45.507854>,  <30.109823, 29.266855, 46.162384>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.096983, 29.120003, 45.507854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.702297, 29.164450, 45.555271>,  <29.465487, 29.191118, 45.583721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.702297, 29.164450, 45.555271>,  <30.096983, 29.120003, 45.507854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702297, 29.164450, 45.555271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083857, 0.276634, -0.957310,
		-0.139166, -0.954530, -0.263640,
		-0.986712, 0.111117, 0.118542,
		29.406284, 29.197784, 45.590836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837364, 28.847761, 44.900764>,  <30.096983, 29.120003, 45.507854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837364, 28.847761, 44.900764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.521626, 29.052603, 45.036224>,  <29.332182, 29.175508, 45.117500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.521626, 29.052603, 45.036224>,  <29.837364, 28.847761, 44.900764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521626, 29.052603, 45.036224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291810, 0.172361, -0.940818,
		-0.540167, -0.841451, 0.013385,
		-0.789346, 0.512105, 0.338648,
		29.284822, 29.206234, 45.137817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214331, 28.508545, 44.655159>,  <29.837364, 28.847761, 44.900764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214331, 28.508545, 44.655159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.121744, 28.891401, 44.724789>,  <29.066193, 29.121115, 44.766567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.121744, 28.891401, 44.724789>,  <29.214331, 28.508545, 44.655159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121744, 28.891401, 44.724789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240415, 0.117110, -0.963580,
		-0.942668, -0.264888, 0.203004,
		-0.231467, 0.957142, 0.174079,
		29.052303, 29.178543, 44.777012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519827, 28.663250, 44.352798>,  <29.214331, 28.508545, 44.655159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519827, 28.663250, 44.352798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.710016, 29.013363, 44.388138>,  <28.824129, 29.223431, 44.409340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.710016, 29.013363, 44.388138>,  <28.519827, 28.663250, 44.352798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710016, 29.013363, 44.388138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179352, 0.194760, -0.964314,
		-0.861254, 0.442660, 0.249587,
		0.475473, 0.875283, 0.088346,
		28.852657, 29.275948, 44.414642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079918, 29.198750, 43.961956>,  <28.519827, 28.663250, 44.352798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079918, 29.198750, 43.961956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.444054, 29.359297, 44.002323>,  <28.662535, 29.455626, 44.026543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.444054, 29.359297, 44.002323>,  <28.079918, 29.198750, 43.961956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444054, 29.359297, 44.002323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013920, 0.273408, -0.961798,
		-0.413626, 0.874159, 0.254481,
		0.910341, 0.401367, 0.100920,
		28.717155, 29.479708, 44.032600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.684528, 25.598104, 46.337921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.503914, 25.947449, 46.410976>,  <31.395546, 26.157055, 46.454807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.503914, 25.947449, 46.410976>,  <31.684528, 25.598104, 46.337921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503914, 25.947449, 46.410976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666156, 0.193805, 0.720192,
		0.593592, 0.446855, -0.669305,
		-0.451536, 0.873361, 0.182634,
		31.368454, 26.209457, 46.465767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806040, 26.078482, 46.910908>,  <31.684528, 25.598104, 46.337921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806040, 26.078482, 46.910908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.127789, 26.312603, 46.951714>,  <32.320839, 26.453075, 46.976196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.127789, 26.312603, 46.951714>,  <31.806040, 26.078482, 46.910908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127789, 26.312603, 46.951714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172061, -0.065149, -0.982930,
		-0.568666, 0.808193, -0.153112,
		0.804372, 0.585303, 0.102011,
		32.369099, 26.488194, 46.982315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907719, 26.545279, 46.271046>,  <31.806040, 26.078482, 46.910908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907719, 26.545279, 46.271046> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.264244, 26.587137, 46.447502>,  <32.478161, 26.612253, 46.553375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.264244, 26.587137, 46.447502>,  <31.907719, 26.545279, 46.271046>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264244, 26.587137, 46.447502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430287, 0.111347, -0.895798,
		-0.142863, 0.988256, 0.054216,
		0.891315, 0.104647, 0.441142,
		32.531639, 26.618532, 46.579845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177311, 27.064333, 45.918289>,  <31.907719, 26.545279, 46.271046>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177311, 27.064333, 45.918289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.500957, 26.907774, 46.093624>,  <32.695145, 26.813839, 46.198826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.500957, 26.907774, 46.093624>,  <32.177311, 27.064333, 45.918289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500957, 26.907774, 46.093624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530178, 0.164493, -0.831777,
		0.253452, 0.905401, 0.340604,
		0.809119, -0.391397, 0.438333,
		32.743694, 26.790356, 46.225124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771206, 27.667933, 45.916298>,  <32.177311, 27.064333, 45.918289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771206, 27.667933, 45.916298> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.916756, 27.296644, 45.947277>,  <33.004086, 27.073872, 45.965862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.916756, 27.296644, 45.947277>,  <32.771206, 27.667933, 45.916298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916756, 27.296644, 45.947277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450959, 0.102810, -0.886604,
		0.815003, 0.357540, 0.456000,
		0.363877, -0.928222, 0.077445,
		33.025917, 27.018177, 45.970512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421631, 27.717415, 45.672054>,  <32.771206, 27.667933, 45.916298>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421631, 27.717415, 45.672054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356880, 27.323282, 45.650440>,  <33.318031, 27.086803, 45.637470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.356880, 27.323282, 45.650440>,  <33.421631, 27.717415, 45.672054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356880, 27.323282, 45.650440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449468, -0.024871, -0.892950,
		0.878508, -0.168831, 0.446901,
		-0.161872, -0.985331, -0.054035,
		33.308319, 27.027683, 45.634232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022591, 27.547356, 45.393555>,  <33.421631, 27.717415, 45.672054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022591, 27.547356, 45.393555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.776993, 27.241053, 45.316998>,  <33.629635, 27.057270, 45.271061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.776993, 27.241053, 45.316998>,  <34.022591, 27.547356, 45.393555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776993, 27.241053, 45.316998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368443, -0.063606, -0.927472,
		0.698045, -0.639977, 0.321191,
		-0.613990, -0.765757, -0.191395,
		33.592796, 27.011326, 45.259579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.492023, 27.120060, 44.991875>,  <34.022591, 27.547356, 45.393555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.492023, 27.120060, 44.991875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.110493, 27.014727, 44.934101>,  <33.881573, 26.951527, 44.899437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.110493, 27.014727, 44.934101>,  <34.492023, 27.120060, 44.991875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110493, 27.014727, 44.934101> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151535, -0.006747, -0.988429,
		0.259312, -0.964681, 0.046340,
		-0.953831, -0.263334, -0.144433,
		33.824345, 26.935726, 44.890770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464542, 26.539881, 44.528145>,  <34.492023, 27.120060, 44.991875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464542, 26.539881, 44.528145> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.106644, 26.713915, 44.487881>,  <33.891903, 26.818335, 44.463722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.106644, 26.713915, 44.487881>,  <34.464542, 26.539881, 44.528145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106644, 26.713915, 44.487881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095892, -0.032956, -0.994846,
		-0.436159, -0.899786, -0.012234,
		-0.894746, 0.435085, -0.100656,
		33.838219, 26.844440, 44.457684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106743, 26.148359, 43.943848>,  <34.464542, 26.539881, 44.528145>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106743, 26.148359, 43.943848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.883450, 26.477537, 43.986061>,  <33.749474, 26.675043, 44.011391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.883450, 26.477537, 43.986061>,  <34.106743, 26.148359, 43.943848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883450, 26.477537, 43.986061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047625, 0.095205, -0.994318,
		-0.828315, -0.560089, -0.013954,
		-0.558235, 0.822944, 0.105534,
		33.715981, 26.724421, 44.017723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389946, 26.026564, 43.593975>,  <34.106743, 26.148359, 43.943848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389946, 26.026564, 43.593975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.490936, 26.412516, 43.622997>,  <33.551529, 26.644087, 43.640411>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.490936, 26.412516, 43.622997>,  <33.389946, 26.026564, 43.593975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490936, 26.412516, 43.622997> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098454, 0.100209, -0.990083,
		-0.962581, 0.242829, 0.120297,
		0.252476, 0.964879, 0.072552,
		33.566681, 26.701979, 43.644764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967670, 26.291594, 43.151649>,  <33.389946, 26.026564, 43.593975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967670, 26.291594, 43.151649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.253445, 26.565144, 43.210842>,  <33.424908, 26.729273, 43.246357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.253445, 26.565144, 43.210842>,  <32.967670, 26.291594, 43.151649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253445, 26.565144, 43.210842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003027, 0.208472, -0.978024,
		-0.699695, 0.699183, 0.146870,
		0.714436, 0.683873, 0.147983,
		33.467777, 26.770306, 43.255238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.285942, 26.344587, 43.077759>,  <32.967670, 26.291594, 43.151649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.285942, 26.344587, 43.077759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.930595, 26.175974, 43.004967>,  <31.717388, 26.074806, 42.961292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.930595, 26.175974, 43.004967>,  <32.285942, 26.344587, 43.077759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930595, 26.175974, 43.004967> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091727, -0.551298, 0.829250,
		-0.449879, 0.719986, 0.528421,
		-0.888366, -0.421533, -0.181975,
		31.664085, 26.049515, 42.950375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922222, 26.463894, 43.701408>,  <32.285942, 26.344587, 43.077759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922222, 26.463894, 43.701408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732286, 26.173122, 43.502975>,  <31.618324, 25.998659, 43.383915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.732286, 26.173122, 43.502975>,  <31.922222, 26.463894, 43.701408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732286, 26.173122, 43.502975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296481, -0.398607, 0.867877,
		-0.828629, 0.559183, -0.026245,
		-0.474841, -0.726929, -0.496085,
		31.589834, 25.955044, 43.354149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253000, 26.482481, 44.052742>,  <31.922222, 26.463894, 43.701408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253000, 26.482481, 44.052742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.293447, 26.131075, 43.865986>,  <31.317717, 25.920231, 43.753933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.293447, 26.131075, 43.865986>,  <31.253000, 26.482481, 44.052742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293447, 26.131075, 43.865986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356258, -0.470153, 0.807488,
		-0.928900, 0.084682, -0.360519,
		0.101119, -0.878513, -0.466893,
		31.323784, 25.867521, 43.725918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633738, 26.107134, 44.213436>,  <31.253000, 26.482481, 44.052742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633738, 26.107134, 44.213436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.900372, 25.826038, 44.113976>,  <31.060352, 25.657381, 44.054298>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.900372, 25.826038, 44.113976>,  <30.633738, 26.107134, 44.213436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900372, 25.826038, 44.113976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304596, -0.561222, 0.769579,
		-0.680359, -0.437251, -0.588152,
		0.666583, -0.702738, -0.248648,
		31.100348, 25.615217, 44.039383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315872, 25.506977, 44.264599>,  <30.633738, 26.107134, 44.213436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315872, 25.506977, 44.264599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.707668, 25.429983, 44.288422>,  <30.942745, 25.383787, 44.302715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.707668, 25.429983, 44.288422>,  <30.315872, 25.506977, 44.264599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.707668, 25.429983, 44.288422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163461, -0.586296, 0.793434,
		-0.117804, -0.786897, -0.605735,
		0.979491, -0.192484, 0.059559,
		31.001516, 25.372238, 44.306290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275486, 24.833839, 44.483692>,  <30.315872, 25.506977, 44.264599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275486, 24.833839, 44.483692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.656963, 24.925543, 44.561573>,  <30.885849, 24.980564, 44.608303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.656963, 24.925543, 44.561573>,  <30.275486, 24.833839, 44.483692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656963, 24.925543, 44.561573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112021, -0.330029, 0.937300,
		0.279142, -0.915708, -0.289065,
		0.953693, 0.229258, 0.194704,
		30.943071, 24.994320, 44.619984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527420, 24.250231, 44.843575>,  <30.275486, 24.833839, 44.483692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527420, 24.250231, 44.843575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.803883, 24.520311, 44.946651>,  <30.969761, 24.682360, 45.008495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.803883, 24.520311, 44.946651>,  <30.527420, 24.250231, 44.843575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803883, 24.520311, 44.946651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092938, -0.270561, 0.958206,
		0.716704, -0.686219, -0.124248,
		0.691156, 0.675204, 0.257688,
		31.011230, 24.722872, 45.023956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011862, 23.931543, 45.351189>,  <30.527420, 24.250231, 44.843575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011862, 23.931543, 45.351189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.049126, 24.321095, 45.434017>,  <31.071484, 24.554825, 45.483715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.049126, 24.321095, 45.434017>,  <31.011862, 23.931543, 45.351189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049126, 24.321095, 45.434017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072716, -0.214076, 0.974107,
		0.992992, -0.075691, -0.090760,
		0.093161, 0.973880, 0.207072,
		31.077074, 24.613258, 45.496140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381659, 23.942894, 45.931423>,  <31.011862, 23.931543, 45.351189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381659, 23.942894, 45.931423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.232771, 24.314066, 45.939430>,  <31.143438, 24.536770, 45.944233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.232771, 24.314066, 45.939430>,  <31.381659, 23.942894, 45.931423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232771, 24.314066, 45.939430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089805, -0.057474, 0.994300,
		0.923791, 0.368298, 0.104726,
		-0.372217, 0.927930, 0.020019,
		31.121105, 24.592445, 45.945435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828926, 24.295074, 46.492870>,  <31.381659, 23.942894, 45.931423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828926, 24.295074, 46.492870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.500914, 24.519083, 46.445675>,  <31.304106, 24.653488, 46.417358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.500914, 24.519083, 46.445675>,  <31.828926, 24.295074, 46.492870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500914, 24.519083, 46.445675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121265, 0.031459, 0.992122,
		0.559323, 0.827880, 0.042114,
		-0.820032, 0.560023, -0.117988,
		31.254904, 24.687090, 46.410278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.913313, 24.774244, 47.017284>,  <31.828926, 24.295074, 46.492870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.913313, 24.774244, 47.017284> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.546480, 24.853323, 46.878792>,  <31.326380, 24.900770, 46.795696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.546480, 24.853323, 46.878792>,  <31.913313, 24.774244, 47.017284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546480, 24.853323, 46.878792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324581, 0.134101, 0.936303,
		0.231534, 0.971047, -0.058813,
		-0.917082, 0.197696, -0.346233,
		31.271355, 24.912632, 46.774921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750214, 25.321163, 47.374130>,  <31.913313, 24.774244, 47.017284>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750214, 25.321163, 47.374130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.411522, 25.138294, 47.265289>,  <31.208307, 25.028572, 47.199986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.411522, 25.138294, 47.265289>,  <31.750214, 25.321163, 47.374130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411522, 25.138294, 47.265289> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396910, 0.202238, 0.895300,
		-0.354278, 0.866078, -0.352698,
		-0.846728, -0.457175, -0.272107,
		31.157503, 25.001143, 47.183659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.174931, 25.827961, 47.509697>,  <31.750214, 25.321163, 47.374130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.174931, 25.827961, 47.509697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.002815, 25.470118, 47.461491>,  <30.899546, 25.255411, 47.432568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.002815, 25.470118, 47.461491>,  <31.174931, 25.827961, 47.509697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002815, 25.470118, 47.461491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511348, 0.131540, 0.849247,
		-0.743891, 0.427049, -0.514057,
		-0.430289, -0.894610, -0.120519,
		30.873728, 25.201735, 47.425335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535892, 25.971149, 47.648228>,  <31.174931, 25.827961, 47.509697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535892, 25.971149, 47.648228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.578554, 25.580551, 47.723141>,  <30.604151, 25.346191, 47.768089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.578554, 25.580551, 47.723141>,  <30.535892, 25.971149, 47.648228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578554, 25.580551, 47.723141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373753, 0.135174, 0.917626,
		-0.921376, -0.167867, -0.350552,
		0.106654, -0.976498, 0.187287,
		30.610550, 25.287601, 47.779327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006458, 26.415190, 47.361050>,  <30.535892, 25.971149, 47.648228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006458, 26.415190, 47.361050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.693115, 26.454140, 47.606609>,  <29.505110, 26.477510, 47.753944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.693115, 26.454140, 47.606609>,  <30.006458, 26.415190, 47.361050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693115, 26.454140, 47.606609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230238, 0.871941, -0.432099,
		-0.577359, -0.479830, -0.660621,
		-0.783356, 0.097376, 0.613898,
		29.458109, 26.483353, 47.790779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569876, 26.679243, 46.958935>,  <30.006458, 26.415190, 47.361050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569876, 26.679243, 46.958935> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.401022, 26.755486, 47.313442>,  <29.299709, 26.801231, 47.526146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.401022, 26.755486, 47.313442>,  <29.569876, 26.679243, 46.958935>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.401022, 26.755486, 47.313442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331007, 0.877735, -0.346433,
		-0.843941, -0.439602, -0.307431,
		-0.422135, 0.190607, 0.886268,
		29.274382, 26.812668, 47.579323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848469, 26.728027, 46.871582>,  <29.569876, 26.679243, 46.958935>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848469, 26.728027, 46.871582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.970156, 26.951439, 47.180256>,  <29.043167, 27.085485, 47.365459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.970156, 26.951439, 47.180256>,  <28.848469, 26.728027, 46.871582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970156, 26.951439, 47.180256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456612, 0.796453, -0.396445,
		-0.836037, -0.231755, 0.497325,
		0.304218, 0.558527, 0.771686,
		29.061420, 27.118998, 47.411762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.265003, 27.230721, 47.227325>,  <28.848469, 26.728027, 46.871582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.265003, 27.230721, 47.227325> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.626774, 27.385126, 47.299995>,  <28.843836, 27.477770, 47.343597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.626774, 27.385126, 47.299995>,  <28.265003, 27.230721, 47.227325>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626774, 27.385126, 47.299995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353036, 0.916258, -0.189307,
		-0.239540, 0.107075, 0.964964,
		0.904426, 0.386013, 0.181679,
		28.898102, 27.500931, 47.354500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054892, 27.871801, 47.510899>,  <28.265003, 27.230721, 47.227325>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054892, 27.871801, 47.510899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.441648, 27.900581, 47.412964>,  <28.673702, 27.917849, 47.354202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.441648, 27.900581, 47.412964>,  <28.054892, 27.871801, 47.510899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.441648, 27.900581, 47.412964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171220, 0.894326, -0.413359,
		0.189219, 0.441594, 0.877036,
		0.966892, 0.071950, -0.244833,
		28.731716, 27.922167, 47.339516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321106, 28.527517, 47.771152>,  <28.054892, 27.871801, 47.510899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321106, 28.527517, 47.771152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.546083, 28.403078, 47.464722>,  <28.681070, 28.328415, 47.280865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.546083, 28.403078, 47.464722>,  <28.321106, 28.527517, 47.771152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546083, 28.403078, 47.464722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181939, 0.857242, -0.481699,
		0.806570, 0.410308, 0.425550,
		0.562444, -0.311100, -0.766077,
		28.714817, 28.309748, 47.234898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630386, 29.070402, 47.569706>,  <28.321106, 28.527517, 47.771152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630386, 29.070402, 47.569706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.717808, 28.851137, 47.246780>,  <28.770262, 28.719578, 47.053024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.717808, 28.851137, 47.246780>,  <28.630386, 29.070402, 47.569706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717808, 28.851137, 47.246780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169404, 0.793438, -0.584601,
		0.961008, 0.264530, 0.080550,
		0.218556, -0.548161, -0.807312,
		28.783375, 28.686689, 47.004585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320892, 29.099100, 47.280537>,  <28.630386, 29.070402, 47.569706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320892, 29.099100, 47.280537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.189520, 29.425741, 47.470398>,  <29.110697, 29.621725, 47.584316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.189520, 29.425741, 47.470398>,  <29.320892, 29.099100, 47.280537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189520, 29.425741, 47.470398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105499, -0.531100, 0.840716,
		0.938617, 0.226044, 0.260582,
		-0.328433, 0.816601, 0.474652,
		29.090990, 29.670721, 47.612793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545851, 28.986504, 47.969452>,  <29.320892, 29.099100, 47.280537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545851, 28.986504, 47.969452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.259233, 29.264389, 47.994560>,  <29.087263, 29.431120, 48.009624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.259233, 29.264389, 47.994560>,  <29.545851, 28.986504, 47.969452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259233, 29.264389, 47.994560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167717, -0.258938, 0.951221,
		0.677081, 0.671062, 0.302056,
		-0.716542, 0.694713, 0.062773,
		29.044271, 29.472803, 48.013393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560030, 29.264063, 48.582912>,  <29.545851, 28.986504, 47.969452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.560030, 29.264063, 48.582912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.182322, 29.361679, 48.494553>,  <28.955696, 29.420248, 48.441536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.182322, 29.361679, 48.494553>,  <29.560030, 29.264063, 48.582912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182322, 29.361679, 48.494553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297967, -0.348505, 0.888685,
		0.139889, 0.904980, 0.401799,
		-0.944270, 0.244040, -0.220902,
		28.899040, 29.434891, 48.428284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322193, 29.478109, 49.184998>,  <29.560030, 29.264063, 48.582912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322193, 29.478109, 49.184998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.998114, 29.377672, 48.973137>,  <28.803667, 29.317410, 48.846020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.998114, 29.377672, 48.973137>,  <29.322193, 29.478109, 49.184998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.998114, 29.377672, 48.973137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353201, -0.512002, 0.783009,
		-0.467791, 0.821466, 0.326137,
		-0.810197, -0.251093, -0.529653,
		28.755054, 29.302345, 48.814240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702761, 29.607872, 49.685726>,  <29.322193, 29.478109, 49.184998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702761, 29.607872, 49.685726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.584267, 29.356752, 49.397808>,  <28.513170, 29.206079, 49.225056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.584267, 29.356752, 49.397808>,  <28.702761, 29.607872, 49.685726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584267, 29.356752, 49.397808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237200, -0.681658, 0.692155,
		-0.925192, 0.375778, 0.053018,
		-0.296237, -0.627800, -0.719799,
		28.495396, 29.168413, 49.181870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067877, 29.457441, 50.007023>,  <28.702761, 29.607872, 49.685726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067877, 29.457441, 50.007023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.134737, 29.182461, 49.724331>,  <28.174854, 29.017473, 49.554714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.134737, 29.182461, 49.724331>,  <28.067877, 29.457441, 50.007023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134737, 29.182461, 49.724331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215889, -0.724942, 0.654103,
		-0.962004, 0.043241, -0.269588,
		0.167152, -0.687451, -0.706733,
		28.184883, 28.976225, 49.512310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428097, 28.986845, 49.991352>,  <28.067877, 29.457441, 50.007023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428097, 28.986845, 49.991352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.730490, 28.778799, 49.832371>,  <27.911926, 28.653971, 49.736980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.730490, 28.778799, 49.832371>,  <27.428097, 28.986845, 49.991352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730490, 28.778799, 49.832371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378449, -0.842696, 0.382936,
		-0.534104, -0.139077, -0.833901,
		0.755982, -0.520116, -0.397454,
		27.957285, 28.622765, 49.713135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.192570, 28.460299, 49.678314>,  <27.428097, 28.986845, 49.991352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.192570, 28.460299, 49.678314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.569475, 28.347212, 49.750103>,  <27.795618, 28.279360, 49.793179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.569475, 28.347212, 49.750103>,  <27.192570, 28.460299, 49.678314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.569475, 28.347212, 49.750103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334873, -0.794569, 0.506479,
		-0.000584, -0.537338, -0.843367,
		0.942263, -0.282717, 0.179476,
		27.852154, 28.262396, 49.803947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296652, 27.689917, 49.622849>,  <27.192570, 28.460299, 49.678314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296652, 27.689917, 49.622849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.558537, 27.846584, 49.881443>,  <27.715668, 27.940586, 50.036602>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.558537, 27.846584, 49.881443>,  <27.296652, 27.689917, 49.622849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.558537, 27.846584, 49.881443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316819, -0.634335, 0.705156,
		0.686279, -0.666493, -0.291217,
		0.654711, 0.391671, 0.646489,
		27.754950, 27.964085, 50.075390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.454971, 36.154240, 36.761463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662540, 36.152466, 37.103386>,  <33.787083, 36.151402, 37.308540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662540, 36.152466, 37.103386>,  <33.454971, 36.154240, 36.761463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662540, 36.152466, 37.103386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853024, -0.067490, 0.517489,
		0.055394, -0.997710, -0.038809,
		0.518924, -0.004439, 0.854809,
		33.818218, 36.151134, 37.359829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234398, 35.667500, 37.042484>,  <33.454971, 36.154240, 36.761463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234398, 35.667500, 37.042484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419975, 35.833733, 37.355419>,  <33.531322, 35.933472, 37.543179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419975, 35.833733, 37.355419>,  <33.234398, 35.667500, 37.042484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419975, 35.833733, 37.355419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752798, -0.280559, 0.595468,
		0.466956, -0.865204, 0.182684,
		0.463948, 0.415582, 0.782333,
		33.559158, 35.958408, 37.590118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150356, 35.152000, 37.575279>,  <33.234398, 35.667500, 37.042484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150356, 35.152000, 37.575279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276550, 35.451241, 37.808800>,  <33.352264, 35.630783, 37.948914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276550, 35.451241, 37.808800>,  <33.150356, 35.152000, 37.575279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276550, 35.451241, 37.808800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600201, -0.319213, 0.733391,
		0.735003, -0.581769, 0.348302,
		0.315482, 0.748096, 0.583801,
		33.371193, 35.675671, 37.983940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548061, 34.894779, 38.271435>,  <33.150356, 35.152000, 37.575279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548061, 34.894779, 38.271435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385273, 35.254978, 38.332714>,  <33.287598, 35.471100, 38.369484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385273, 35.254978, 38.332714>,  <33.548061, 34.894779, 38.271435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385273, 35.254978, 38.332714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603198, -0.390891, 0.695238,
		0.685947, 0.190534, 0.702263,
		-0.406975, 0.900501, 0.153201,
		33.263180, 35.525127, 38.378674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548595, 35.049168, 38.949387>,  <33.548061, 34.894779, 38.271435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548595, 35.049168, 38.949387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274456, 35.314087, 38.828285>,  <33.109970, 35.473038, 38.755627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274456, 35.314087, 38.828285>,  <33.548595, 35.049168, 38.949387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274456, 35.314087, 38.828285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595743, -0.270836, 0.756134,
		0.418788, 0.698579, 0.580176,
		-0.685351, 0.662296, -0.302751,
		33.068851, 35.512775, 38.737461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380131, 35.494549, 39.472919>,  <33.548595, 35.049168, 38.949387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380131, 35.494549, 39.472919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043701, 35.512913, 39.257332>,  <32.841843, 35.523930, 39.127979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043701, 35.512913, 39.257332>,  <33.380131, 35.494549, 39.472919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043701, 35.512913, 39.257332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536022, -0.204496, 0.819061,
		-0.072613, 0.977790, 0.196606,
		-0.841075, 0.045910, -0.538966,
		32.791378, 35.526688, 39.095642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826649, 35.649944, 39.923782>,  <33.380131, 35.494549, 39.472919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826649, 35.649944, 39.923782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613430, 35.545017, 39.602024>,  <32.485497, 35.482059, 39.408970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613430, 35.545017, 39.602024>,  <32.826649, 35.649944, 39.923782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613430, 35.545017, 39.602024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656162, -0.472036, 0.588756,
		-0.534145, 0.841648, 0.079494,
		-0.533050, -0.262320, -0.804392,
		32.453514, 35.466320, 39.360706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245705, 35.866966, 40.046120>,  <32.826649, 35.649944, 39.923782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245705, 35.866966, 40.046120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196278, 35.571487, 39.781075>,  <32.166622, 35.394199, 39.622047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.196278, 35.571487, 39.781075>,  <32.245705, 35.866966, 40.046120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.196278, 35.571487, 39.781075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501660, -0.529626, 0.683984,
		-0.856194, 0.416925, -0.305130,
		-0.123565, -0.738695, -0.662617,
		32.159206, 35.349880, 39.582291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582916, 35.689247, 40.113087>,  <32.245705, 35.866966, 40.046120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582916, 35.689247, 40.113087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751741, 35.369106, 39.942772>,  <31.853037, 35.177021, 39.840584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751741, 35.369106, 39.942772>,  <31.582916, 35.689247, 40.113087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751741, 35.369106, 39.942772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381566, -0.582873, 0.717403,
		-0.822357, -0.140323, -0.551397,
		0.422062, -0.800356, -0.425787,
		31.878361, 35.128998, 39.815037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031687, 35.259712, 40.112820>,  <31.582916, 35.689247, 40.113087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031687, 35.259712, 40.112820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347771, 35.024246, 40.044655>,  <31.537420, 34.882965, 40.003754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347771, 35.024246, 40.044655>,  <31.031687, 35.259712, 40.112820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347771, 35.024246, 40.044655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349528, -0.661326, 0.663686,
		-0.503389, -0.464886, -0.728341,
		0.790208, -0.588668, -0.170413,
		31.584833, 34.847645, 39.993530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677753, 34.570946, 39.826733>,  <31.031687, 35.259712, 40.112820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677753, 34.570946, 39.826733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038568, 34.499645, 39.983986>,  <31.255058, 34.456863, 40.078339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.038568, 34.499645, 39.983986>,  <30.677753, 34.570946, 39.826733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038568, 34.499645, 39.983986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372234, -0.782365, 0.499347,
		0.218567, -0.596768, -0.772073,
		0.902037, -0.178251, 0.393136,
		31.309179, 34.446171, 40.101929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786928, 33.827076, 39.844532>,  <30.677753, 34.570946, 39.826733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786928, 33.827076, 39.844532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055407, 33.939911, 40.118736>,  <31.216494, 34.007614, 40.283257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055407, 33.939911, 40.118736>,  <30.786928, 33.827076, 39.844532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055407, 33.939911, 40.118736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261699, -0.775044, 0.575170,
		0.693550, -0.565448, -0.446382,
		0.671195, 0.282091, 0.685509,
		31.256765, 34.024540, 40.324390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687439, 33.184574, 39.281185>,  <30.786928, 33.827076, 39.844532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687439, 33.184574, 39.281185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409567, 32.914577, 39.181740>,  <30.242844, 32.752579, 39.122074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409567, 32.914577, 39.181740>,  <30.687439, 33.184574, 39.281185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409567, 32.914577, 39.181740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084686, 0.266469, -0.960116,
		0.714318, -0.688025, -0.127949,
		-0.694678, -0.674992, -0.248610,
		30.201162, 32.712078, 39.107159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848328, 32.951645, 38.634563>,  <30.687439, 33.184574, 39.281185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848328, 32.951645, 38.634563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459196, 32.870682, 38.679535>,  <30.225718, 32.822105, 38.706516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.459196, 32.870682, 38.679535>,  <30.848328, 32.951645, 38.634563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459196, 32.870682, 38.679535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135823, 0.105646, -0.985084,
		0.187513, -0.973586, -0.130267,
		-0.972826, -0.202409, 0.112425,
		30.167349, 32.809959, 38.713261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717106, 32.402313, 38.144722>,  <30.848328, 32.951645, 38.634563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717106, 32.402313, 38.144722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388163, 32.611561, 38.234230>,  <30.190796, 32.737110, 38.287937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.388163, 32.611561, 38.234230>,  <30.717106, 32.402313, 38.144722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.388163, 32.611561, 38.234230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162421, 0.161094, -0.973483,
		-0.545295, -0.836897, -0.047512,
		-0.822358, 0.523118, 0.223773,
		30.141455, 32.768497, 38.301361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170570, 32.150108, 37.814602>,  <30.717106, 32.402313, 38.144722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170570, 32.150108, 37.814602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072266, 32.534676, 37.864029>,  <30.013283, 32.765415, 37.893684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.072266, 32.534676, 37.864029>,  <30.170570, 32.150108, 37.814602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072266, 32.534676, 37.864029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236543, 0.064144, -0.969501,
		-0.940026, -0.267497, 0.211653,
		-0.245762, 0.961421, 0.123572,
		29.998537, 32.823101, 37.901100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544537, 32.203041, 37.485313>,  <30.170570, 32.150108, 37.814602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544537, 32.203041, 37.485313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654404, 32.584980, 37.530628>,  <29.720324, 32.814144, 37.557816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654404, 32.584980, 37.530628>,  <29.544537, 32.203041, 37.485313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654404, 32.584980, 37.530628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246992, 0.183927, -0.951402,
		-0.929276, 0.233337, 0.286357,
		0.274666, 0.954843, 0.113286,
		29.736803, 32.871433, 37.564613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232761, 32.515591, 36.959927>,  <29.544537, 32.203041, 37.485313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232761, 32.515591, 36.959927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457275, 32.829628, 37.064686>,  <29.591984, 33.018051, 37.127541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457275, 32.829628, 37.064686>,  <29.232761, 32.515591, 36.959927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457275, 32.829628, 37.064686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029285, 0.335083, -0.941734,
		-0.827105, 0.520911, 0.211068,
		0.561284, 0.785093, 0.261894,
		29.625660, 33.065155, 37.143253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.851856, 33.152416, 36.875549>,  <29.232761, 32.515591, 36.959927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.851856, 33.152416, 36.875549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236788, 33.260742, 36.865902>,  <29.467747, 33.325737, 36.860111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236788, 33.260742, 36.865902>,  <28.851856, 33.152416, 36.875549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236788, 33.260742, 36.865902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128514, 0.374901, -0.918114,
		-0.239593, 0.886629, 0.395582,
		0.962330, 0.270811, -0.024120,
		29.525486, 33.341984, 36.858665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868456, 33.731434, 36.373444>,  <28.851856, 33.152416, 36.875549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868456, 33.731434, 36.373444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254629, 33.642830, 36.428391>,  <29.486334, 33.589668, 36.461361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.254629, 33.642830, 36.428391>,  <28.868456, 33.731434, 36.373444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254629, 33.642830, 36.428391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228814, 0.467848, -0.853676,
		0.124832, 0.855599, 0.502361,
		0.965433, -0.221513, 0.137371,
		29.544258, 33.576374, 36.469601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251781, 34.314594, 36.191986>,  <28.868456, 33.731434, 36.373444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251781, 34.314594, 36.191986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510315, 34.019135, 36.115410>,  <29.665434, 33.841858, 36.069466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510315, 34.019135, 36.115410>,  <29.251781, 34.314594, 36.191986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510315, 34.019135, 36.115410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288187, 0.468602, -0.835081,
		0.706544, 0.484568, 0.515742,
		0.646331, -0.738651, -0.191442,
		29.704214, 33.797539, 36.057976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779367, 34.603256, 35.781380>,  <29.251781, 34.314594, 36.191986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779367, 34.603256, 35.781380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885029, 34.221893, 35.723095>,  <29.948425, 33.993076, 35.688126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885029, 34.221893, 35.723095>,  <29.779367, 34.603256, 35.781380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885029, 34.221893, 35.723095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371685, 0.240039, -0.896790,
		0.889984, 0.182733, 0.417775,
		0.264155, -0.953410, -0.145712,
		29.964275, 33.935871, 35.679382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330523, 34.690342, 35.408070>,  <29.779367, 34.603256, 35.781380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330523, 34.690342, 35.408070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276981, 34.299065, 35.344551>,  <30.244858, 34.064297, 35.306438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276981, 34.299065, 35.344551>,  <30.330523, 34.690342, 35.408070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276981, 34.299065, 35.344551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559737, 0.057609, -0.826665,
		0.817789, -0.199536, 0.539822,
		-0.133851, -0.978195, -0.158799,
		30.236826, 34.005608, 35.296913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007652, 34.492229, 35.257965>,  <30.330523, 34.690342, 35.408070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007652, 34.492229, 35.257965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767729, 34.209141, 35.108639>,  <30.623775, 34.039288, 35.019043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.767729, 34.209141, 35.108639>,  <31.007652, 34.492229, 35.257965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767729, 34.209141, 35.108639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461908, 0.074701, -0.883776,
		0.653354, -0.702531, 0.282096,
		-0.599808, -0.707722, -0.373311,
		30.587786, 33.996826, 34.996647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423302, 34.205826, 34.785698>,  <31.007652, 34.492229, 35.257965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423302, 34.205826, 34.785698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050776, 34.114052, 34.672554>,  <30.827259, 34.058987, 34.604668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050776, 34.114052, 34.672554>,  <31.423302, 34.205826, 34.785698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050776, 34.114052, 34.672554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299261, -0.039409, -0.953357,
		0.207588, -0.972525, 0.105364,
		-0.931316, -0.229437, -0.282858,
		30.771381, 34.045219, 34.587696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.320873, 33.493416, 34.560276>,  <31.423302, 34.205826, 34.785698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.320873, 33.493416, 34.560276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099821, 33.782436, 34.394138>,  <30.967190, 33.955849, 34.294456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.099821, 33.782436, 34.394138>,  <31.320873, 33.493416, 34.560276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.099821, 33.782436, 34.394138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615636, 0.017992, -0.787825,
		-0.561773, -0.691080, -0.454773,
		-0.552632, 0.722554, -0.415347,
		30.934031, 33.999203, 34.269535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548431, 32.799294, 34.471653>,  <31.320873, 33.493416, 34.560276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548431, 32.799294, 34.471653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428488, 32.610146, 34.140236>,  <31.356522, 32.496655, 33.941387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428488, 32.610146, 34.140236>,  <31.548431, 32.799294, 34.471653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428488, 32.610146, 34.140236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166935, -0.829095, 0.533605,
		-0.939265, 0.298318, 0.169672,
		-0.299858, -0.472872, -0.828539,
		31.338530, 32.468285, 33.891674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781359, 32.596622, 34.433964>,  <31.548431, 32.799294, 34.471653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781359, 32.596622, 34.433964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998075, 32.339748, 34.217052>,  <31.128105, 32.185623, 34.086906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998075, 32.339748, 34.217052>,  <30.781359, 32.596622, 34.433964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998075, 32.339748, 34.217052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297278, -0.749879, 0.591023,
		-0.786188, -0.159002, -0.597182,
		0.541788, -0.642184, -0.542278,
		31.160614, 32.147095, 34.054371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297419, 31.990625, 34.223335>,  <30.781359, 32.596622, 34.433964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297419, 31.990625, 34.223335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677942, 31.869638, 34.247082>,  <30.906256, 31.797047, 34.261330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677942, 31.869638, 34.247082>,  <30.297419, 31.990625, 34.223335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677942, 31.869638, 34.247082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264138, -0.700668, 0.662794,
		-0.158877, -0.646203, -0.746445,
		0.951309, -0.302467, 0.059367,
		30.963335, 31.778898, 34.264893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305382, 31.188749, 34.175888>,  <30.297419, 31.990625, 34.223335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305382, 31.188749, 34.175888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622417, 31.341837, 34.365765>,  <30.812639, 31.433689, 34.479691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622417, 31.341837, 34.365765>,  <30.305382, 31.188749, 34.175888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622417, 31.341837, 34.365765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056590, -0.728962, 0.682211,
		0.607125, -0.567575, -0.556109,
		0.792588, 0.382717, 0.474690,
		30.860193, 31.456652, 34.508171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785753, 30.665411, 34.282845>,  <30.305382, 31.188749, 34.175888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785753, 30.665411, 34.282845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846947, 30.925985, 34.580093>,  <30.883663, 31.082331, 34.758442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846947, 30.925985, 34.580093>,  <30.785753, 30.665411, 34.282845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846947, 30.925985, 34.580093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061168, -0.756771, 0.650812,
		0.986334, -0.054109, -0.155621,
		0.152984, 0.651437, 0.743119,
		30.892841, 31.121416, 34.803028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299852, 30.365871, 34.655586>,  <30.785753, 30.665411, 34.282845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299852, 30.365871, 34.655586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152548, 30.622925, 34.924332>,  <31.064165, 30.777157, 35.085579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152548, 30.622925, 34.924332>,  <31.299852, 30.365871, 34.655586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152548, 30.622925, 34.924332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044251, -0.733949, 0.677761,
		0.928668, 0.219863, 0.298722,
		-0.368262, 0.642634, 0.671867,
		31.042068, 30.815716, 35.125893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612127, 30.184629, 35.272209>,  <31.299852, 30.365871, 34.655586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612127, 30.184629, 35.272209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316252, 30.419756, 35.403252>,  <31.138725, 30.560833, 35.481876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316252, 30.419756, 35.403252>,  <31.612127, 30.184629, 35.272209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316252, 30.419756, 35.403252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160244, -0.626680, 0.762623,
		0.653590, 0.511608, 0.557743,
		-0.739691, 0.587818, 0.327609,
		31.094345, 30.596102, 35.501534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715010, 30.354902, 36.001289>,  <31.612127, 30.184629, 35.272209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715010, 30.354902, 36.001289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327505, 30.448254, 35.967739>,  <31.095003, 30.504265, 35.947609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327505, 30.448254, 35.967739>,  <31.715010, 30.354902, 36.001289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327505, 30.448254, 35.967739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158869, -0.324323, 0.932510,
		0.190425, 0.916706, 0.351268,
		-0.968762, 0.233379, -0.083877,
		31.036877, 30.518267, 35.942577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490696, 30.741982, 36.611446>,  <31.715010, 30.354902, 36.001289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490696, 30.741982, 36.611446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159983, 30.595438, 36.440704>,  <30.961554, 30.507511, 36.338257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159983, 30.595438, 36.440704>,  <31.490696, 30.741982, 36.611446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159983, 30.595438, 36.440704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298808, -0.356884, 0.885069,
		-0.476592, 0.859311, 0.185595,
		-0.826785, -0.366360, -0.426857,
		30.911947, 30.485531, 36.312649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.928528, 30.930651, 36.997692>,  <31.490696, 30.741982, 36.611446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.928528, 30.930651, 36.997692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804474, 30.610569, 36.792366>,  <30.730042, 30.418520, 36.669170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804474, 30.610569, 36.792366>,  <30.928528, 30.930651, 36.997692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804474, 30.610569, 36.792366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353340, -0.404237, 0.843649,
		-0.882592, 0.443017, -0.157377,
		-0.310133, -0.800205, -0.513312,
		30.711433, 30.370508, 36.638374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329359, 30.825447, 37.391659>,  <30.928528, 30.930651, 36.997692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329359, 30.825447, 37.391659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416912, 30.487226, 37.196877>,  <30.469444, 30.284294, 37.080006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416912, 30.487226, 37.196877>,  <30.329359, 30.825447, 37.391659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416912, 30.487226, 37.196877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407373, -0.532675, 0.741825,
		-0.886644, 0.036002, -0.461048,
		0.218882, -0.845554, -0.486959,
		30.482576, 30.233561, 37.050789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.751921, 30.336935, 37.518944>,  <30.329359, 30.825447, 37.391659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.751921, 30.336935, 37.518944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059723, 30.117624, 37.387947>,  <30.244404, 29.986038, 37.309349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.059723, 30.117624, 37.387947>,  <29.751921, 30.336935, 37.518944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059723, 30.117624, 37.387947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079583, -0.591126, 0.802644,
		-0.633664, -0.591574, -0.498508,
		0.769504, -0.548279, -0.327496,
		30.290575, 29.953140, 37.289700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465740, 29.677246, 37.708378>,  <29.751921, 30.336935, 37.518944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465740, 29.677246, 37.708378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860376, 29.635237, 37.658401>,  <30.097158, 29.610031, 37.628418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.860376, 29.635237, 37.658401>,  <29.465740, 29.677246, 37.708378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860376, 29.635237, 37.658401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051163, -0.527892, 0.847769,
		-0.154990, -0.842793, -0.515439,
		0.986590, -0.105024, -0.124938,
		30.156353, 29.603729, 37.620918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649446, 28.941845, 37.834225>,  <29.465740, 29.677246, 37.708378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649446, 28.941845, 37.834225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998110, 29.132235, 37.880978>,  <30.207308, 29.246469, 37.909027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998110, 29.132235, 37.880978>,  <29.649446, 28.941845, 37.834225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998110, 29.132235, 37.880978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297828, -0.703790, 0.644964,
		0.389245, -0.527378, -0.755223,
		0.871657, 0.475976, 0.116879,
		30.259607, 29.275026, 37.916042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187559, 28.458441, 37.883633>,  <29.649446, 28.941845, 37.834225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187559, 28.458441, 37.883633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355509, 28.778046, 38.055813>,  <30.456278, 28.969809, 38.159122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355509, 28.778046, 38.055813>,  <30.187559, 28.458441, 37.883633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355509, 28.778046, 38.055813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244500, -0.556329, 0.794178,
		0.874029, -0.228209, -0.428945,
		0.419873, 0.799011, 0.430451,
		30.481470, 29.017750, 38.184948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915766, 28.315920, 38.010181>,  <30.187559, 28.458441, 37.883633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915766, 28.315920, 38.010181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804886, 28.598310, 38.270874>,  <30.738358, 28.767744, 38.427292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804886, 28.598310, 38.270874>,  <30.915766, 28.315920, 38.010181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804886, 28.598310, 38.270874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225001, -0.611759, 0.758371,
		0.934096, 0.356861, 0.010735,
		-0.277200, 0.705976, 0.651735,
		30.721725, 28.810102, 38.466396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424761, 28.328899, 38.650005>,  <30.915766, 28.315920, 38.010181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424761, 28.328899, 38.650005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106747, 28.517075, 38.803162>,  <30.915937, 28.629980, 38.895054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.106747, 28.517075, 38.803162>,  <31.424761, 28.328899, 38.650005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106747, 28.517075, 38.803162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230553, -0.349496, 0.908129,
		0.561038, 0.810271, 0.169400,
		-0.795035, 0.470439, 0.382891,
		30.868237, 28.658207, 38.918030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758152, 28.596256, 39.284641>,  <31.424761, 28.328899, 38.650005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758152, 28.596256, 39.284641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359144, 28.617525, 39.303082>,  <31.119740, 28.630287, 39.314148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359144, 28.617525, 39.303082>,  <31.758152, 28.596256, 39.284641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359144, 28.617525, 39.303082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019865, -0.415724, 0.909274,
		0.067514, 0.907935, 0.413637,
		-0.997521, 0.053172, 0.046103,
		31.059889, 28.633476, 39.316914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690668, 28.962139, 39.932281>,  <31.758152, 28.596256, 39.284641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690668, 28.962139, 39.932281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359106, 28.749741, 39.861904>,  <31.160170, 28.622301, 39.819675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.359106, 28.749741, 39.861904>,  <31.690668, 28.962139, 39.932281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359106, 28.749741, 39.861904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034001, -0.361775, 0.931645,
		-0.558355, 0.766263, 0.317932,
		-0.828905, -0.530998, -0.175945,
		31.110434, 28.590441, 39.809120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419991, 28.803230, 40.631981>,  <31.690668, 28.962139, 39.932281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419991, 28.803230, 40.631981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186823, 28.557562, 40.419189>,  <31.046923, 28.410160, 40.291515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.186823, 28.557562, 40.419189>,  <31.419991, 28.803230, 40.631981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186823, 28.557562, 40.419189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180473, -0.540495, 0.821763,
		-0.792233, 0.575029, 0.204225,
		-0.582921, -0.614171, -0.531975,
		31.011948, 28.373310, 40.259598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687548, 28.640900, 40.975090>,  <31.419991, 28.803230, 40.631981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687548, 28.640900, 40.975090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786421, 28.332850, 40.739868>,  <30.845745, 28.148020, 40.598736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.786421, 28.332850, 40.739868>,  <30.687548, 28.640900, 40.975090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786421, 28.332850, 40.739868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085038, -0.621787, 0.778556,
		-0.965230, -0.142437, -0.219184,
		0.247181, -0.770125, -0.588055,
		30.860575, 28.101812, 40.563450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214188, 28.071257, 41.217754>,  <30.687548, 28.640900, 40.975090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214188, 28.071257, 41.217754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497591, 27.890011, 41.001347>,  <30.667633, 27.781263, 40.871502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.497591, 27.890011, 41.001347>,  <30.214188, 28.071257, 41.217754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.497591, 27.890011, 41.001347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014334, -0.757241, 0.652978,
		-0.705555, -0.470397, -0.530018,
		0.708510, -0.453115, -0.541018,
		30.710144, 27.754076, 40.839043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976719, 27.385458, 41.184498>,  <30.214188, 28.071257, 41.217754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976719, 27.385458, 41.184498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371643, 27.389309, 41.121098>,  <30.608599, 27.391619, 41.083057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371643, 27.389309, 41.121098>,  <29.976719, 27.385458, 41.184498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371643, 27.389309, 41.121098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111614, -0.752076, 0.649556,
		-0.112954, -0.659006, -0.743608,
		0.987311, 0.009627, -0.158504,
		30.667837, 27.392197, 41.073547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109400, 26.681952, 41.130310>,  <29.976719, 27.385458, 41.184498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109400, 26.681952, 41.130310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458475, 26.863976, 41.201115>,  <30.667921, 26.973190, 41.243599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458475, 26.863976, 41.201115>,  <30.109400, 26.681952, 41.130310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458475, 26.863976, 41.201115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300356, -0.786128, 0.540175,
		0.384968, -0.418238, -0.822725,
		0.872689, 0.455061, 0.177014,
		30.720282, 27.000494, 41.254219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636787, 26.088631, 41.146427>,  <30.109400, 26.681952, 41.130310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636787, 26.088631, 41.146427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806068, 26.386497, 41.352871>,  <30.907637, 26.565218, 41.476738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.806068, 26.386497, 41.352871>,  <30.636787, 26.088631, 41.146427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806068, 26.386497, 41.352871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232517, -0.639823, 0.732504,
		0.875692, -0.189993, -0.443922,
		0.423202, 0.744667, 0.516111,
		30.933029, 26.609898, 41.507706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347576, 25.850296, 41.363605>,  <30.636787, 26.088631, 41.146427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347576, 25.850296, 41.363605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247938, 26.148220, 41.611221>,  <31.188156, 26.326975, 41.759789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.247938, 26.148220, 41.611221>,  <31.347576, 25.850296, 41.363605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.247938, 26.148220, 41.611221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407763, -0.499112, 0.764602,
		0.878453, 0.442879, -0.179380,
		-0.249096, 0.744812, 0.619037,
		31.173210, 26.371664, 41.796932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945492, 26.133209, 41.721775>,  <31.347576, 25.850296, 41.363605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945492, 26.133209, 41.721775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645632, 26.250187, 41.959263>,  <31.465715, 26.320374, 42.101753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.645632, 26.250187, 41.959263>,  <31.945492, 26.133209, 41.721775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645632, 26.250187, 41.959263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319008, -0.626326, 0.711301,
		0.579876, 0.722628, 0.376235,
		-0.749652, 0.292444, 0.593716,
		31.420736, 26.337921, 42.137379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323257, 26.225370, 42.360912>,  <31.945492, 26.133209, 41.721775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323257, 26.225370, 42.360912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935873, 26.212526, 42.459751>,  <31.703444, 26.204821, 42.519054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935873, 26.212526, 42.459751>,  <32.323257, 26.225370, 42.360912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935873, 26.212526, 42.459751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223392, -0.551199, 0.803913,
		0.110389, 0.833756, 0.540986,
		-0.968458, -0.032108, 0.247101,
		31.645336, 26.202894, 42.533882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750679, 26.829525, 42.693024>,  <32.323257, 26.225370, 42.360912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750679, 26.829525, 42.693024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135254, 26.904057, 42.773945>,  <33.365997, 26.948776, 42.822498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135254, 26.904057, 42.773945>,  <32.750679, 26.829525, 42.693024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135254, 26.904057, 42.773945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145197, 0.280848, -0.948706,
		-0.233588, 0.941491, 0.242962,
		0.961434, 0.186329, 0.202305,
		33.423683, 26.959955, 42.834637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916103, 27.481092, 42.400990>,  <32.750679, 26.829525, 42.693024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916103, 27.481092, 42.400990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284225, 27.328852, 42.437180>,  <33.505096, 27.237507, 42.458893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284225, 27.328852, 42.437180>,  <32.916103, 27.481092, 42.400990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284225, 27.328852, 42.437180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221371, 0.315955, -0.922587,
		0.322552, 0.869088, 0.375028,
		0.920302, -0.380603, 0.090479,
		33.560314, 27.214670, 42.464325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300896, 28.049149, 42.287384>,  <32.916103, 27.481092, 42.400990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300896, 28.049149, 42.287384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522724, 27.724493, 42.213963>,  <33.655819, 27.529699, 42.169910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522724, 27.724493, 42.213963>,  <33.300896, 28.049149, 42.287384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522724, 27.724493, 42.213963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301367, 0.401506, -0.864853,
		0.775650, 0.424302, 0.467264,
		0.554568, -0.811641, -0.183558,
		33.689095, 27.481001, 42.158894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924061, 28.307434, 42.121750>,  <33.300896, 28.049149, 42.287384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924061, 28.307434, 42.121750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939220, 27.941114, 41.961811>,  <33.948318, 27.721323, 41.865849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939220, 27.941114, 41.961811>,  <33.924061, 28.307434, 42.121750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939220, 27.941114, 41.961811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351533, 0.386776, -0.852543,
		0.935408, -0.108245, 0.336594,
		0.037903, -0.915799, -0.399845,
		33.950592, 27.666374, 41.841858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568821, 28.299931, 41.891029>,  <33.924061, 28.307434, 42.121750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568821, 28.299931, 41.891029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377728, 28.012211, 41.689285>,  <34.263073, 27.839579, 41.568237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377728, 28.012211, 41.689285>,  <34.568821, 28.299931, 41.891029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377728, 28.012211, 41.689285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319910, 0.392254, -0.862435,
		0.818189, -0.573360, 0.042721,
		-0.477729, -0.719302, -0.504361,
		34.234409, 27.796421, 41.537975>
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
