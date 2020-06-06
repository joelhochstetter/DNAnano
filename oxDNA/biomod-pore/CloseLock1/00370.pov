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
	<24.386013, 34.869370, 34.840183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326794, 34.970303, 35.222683>,  <24.291262, 35.030861, 35.452183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.326794, 34.970303, 35.222683>,  <24.386013, 34.869370, 34.840183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.326794, 34.970303, 35.222683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756436, -0.593980, 0.273848,
		0.637092, 0.763883, -0.102935,
		-0.148047, 0.252330, 0.956249,
		24.282379, 35.046001, 35.509556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.995739, 34.956898, 34.181210>,  <24.386013, 34.869370, 34.840183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.995739, 34.956898, 34.181210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.104515, 34.633121, 33.973034>,  <24.169781, 34.438854, 33.848129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.104515, 34.633121, 33.973034>,  <23.995739, 34.956898, 34.181210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.104515, 34.633121, 33.973034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569011, 0.571398, -0.591380,
		0.776063, -0.135313, 0.615968,
		0.271942, -0.809441, -0.520436,
		24.186098, 34.390289, 33.816902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804255, 34.782848, 34.211781>,  <23.995739, 34.956898, 34.181210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804255, 34.782848, 34.211781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.591061, 34.688782, 33.886665>,  <24.463144, 34.632339, 33.691597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.591061, 34.688782, 33.886665>,  <24.804255, 34.782848, 34.211781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.591061, 34.688782, 33.886665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711685, 0.394952, -0.580963,
		0.457637, -0.888092, -0.043137,
		-0.532986, -0.235170, -0.812786,
		24.431166, 34.618233, 33.642830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.091627, 34.214821, 34.609833>,  <24.804255, 34.782848, 34.211781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.091627, 34.214821, 34.609833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476925, 34.164356, 34.704697>,  <25.708103, 34.134075, 34.761616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476925, 34.164356, 34.704697>,  <25.091627, 34.214821, 34.609833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476925, 34.164356, 34.704697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264743, 0.595543, -0.758445,
		-0.045552, 0.793354, 0.607054,
		0.963242, -0.126165, 0.237163,
		25.765898, 34.126507, 34.775845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.483118, 34.885571, 34.642979>,  <25.091627, 34.214821, 34.609833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.483118, 34.885571, 34.642979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719074, 34.580017, 34.538288>,  <25.860649, 34.396683, 34.475471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719074, 34.580017, 34.538288>,  <25.483118, 34.885571, 34.642979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719074, 34.580017, 34.538288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033661, 0.347113, -0.937219,
		0.806780, 0.544049, 0.230472,
		0.589892, -0.763887, -0.261731,
		25.896042, 34.350849, 34.459770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841234, 35.152737, 34.076202>,  <25.483118, 34.885571, 34.642979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841234, 35.152737, 34.076202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924664, 34.764576, 34.027512>,  <25.974722, 34.531681, 33.998299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924664, 34.764576, 34.027512>,  <25.841234, 35.152737, 34.076202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924664, 34.764576, 34.027512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080700, 0.106964, -0.990982,
		0.974672, 0.216515, -0.056001,
		0.208573, -0.970402, -0.121727,
		25.987236, 34.473454, 33.990993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397068, 35.108002, 33.528965>,  <25.841234, 35.152737, 34.076202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397068, 35.108002, 33.528965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227575, 34.745705, 33.525356>,  <26.125879, 34.528328, 33.523190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227575, 34.745705, 33.525356>,  <26.397068, 35.108002, 33.528965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227575, 34.745705, 33.525356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138110, -0.054762, -0.988902,
		0.895198, -0.420273, 0.148296,
		-0.423729, -0.905744, -0.009021,
		26.100456, 34.473980, 33.522652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912195, 34.815929, 33.265987>,  <26.397068, 35.108002, 33.528965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912195, 34.815929, 33.265987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586725, 34.594357, 33.195450>,  <26.391443, 34.461414, 33.153130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.586725, 34.594357, 33.195450>,  <26.912195, 34.815929, 33.265987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586725, 34.594357, 33.195450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274999, -0.099521, -0.956280,
		0.512164, -0.826593, 0.233308,
		-0.813673, -0.553931, -0.176341,
		26.342623, 34.428177, 33.142548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.172674, 34.254375, 32.907703>,  <26.912195, 34.815929, 33.265987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.172674, 34.254375, 32.907703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784586, 34.261986, 32.811115>,  <26.551733, 34.266552, 32.753162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.784586, 34.261986, 32.811115>,  <27.172674, 34.254375, 32.907703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784586, 34.261986, 32.811115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235144, -0.165228, -0.957814,
		-0.058117, -0.986072, 0.155835,
		-0.970221, 0.019022, -0.241472,
		26.493519, 34.267693, 32.738674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.186678, 33.772682, 32.405235>,  <27.172674, 34.254375, 32.907703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.186678, 33.772682, 32.405235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843937, 33.967728, 32.338261>,  <26.638292, 34.084755, 32.298077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.843937, 33.967728, 32.338261>,  <27.186678, 33.772682, 32.405235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843937, 33.967728, 32.338261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147482, -0.079363, -0.985876,
		-0.494015, -0.869445, -0.003913,
		-0.856854, 0.487615, -0.167434,
		26.586882, 34.114014, 32.288029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743925, 33.400837, 31.989788>,  <27.186678, 33.772682, 32.405235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743925, 33.400837, 31.989788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645325, 33.784336, 31.933161>,  <26.586164, 34.014435, 31.899183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.645325, 33.784336, 31.933161>,  <26.743925, 33.400837, 31.989788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.645325, 33.784336, 31.933161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159408, -0.103978, -0.981722,
		-0.955943, -0.264563, -0.127202,
		-0.246501, 0.958747, -0.141570,
		26.571375, 34.071960, 31.890690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472038, 33.424374, 31.367548>,  <26.743925, 33.400837, 31.989788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472038, 33.424374, 31.367548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497986, 33.821365, 31.409075>,  <26.513554, 34.059559, 31.433990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497986, 33.821365, 31.409075>,  <26.472038, 33.424374, 31.367548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497986, 33.821365, 31.409075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148096, 0.093308, -0.984561,
		-0.986843, 0.079243, -0.140930,
		0.064870, 0.992479, 0.103816,
		26.517447, 34.119110, 31.440220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103357, 33.688313, 30.851543>,  <26.472038, 33.424374, 31.367548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103357, 33.688313, 30.851543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368853, 33.972870, 30.943953>,  <26.528149, 34.143604, 30.999399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.368853, 33.972870, 30.943953>,  <26.103357, 33.688313, 30.851543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.368853, 33.972870, 30.943953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160231, 0.166464, -0.972942,
		-0.730602, 0.682795, -0.003499,
		0.663737, 0.711393, 0.231024,
		26.567974, 34.186287, 31.013260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965111, 34.339783, 30.453003>,  <26.103357, 33.688313, 30.851543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965111, 34.339783, 30.453003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353279, 34.338673, 30.549568>,  <26.586180, 34.338005, 30.607508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.353279, 34.338673, 30.549568>,  <25.965111, 34.339783, 30.453003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.353279, 34.338673, 30.549568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241423, 0.016788, -0.970275,
		-0.001361, 0.999855, 0.016961,
		0.970419, -0.002774, 0.241411,
		26.644405, 34.337841, 30.621992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.255459, 34.830688, 30.003319>,  <25.965111, 34.339783, 30.453003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.255459, 34.830688, 30.003319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566492, 34.616596, 30.135315>,  <26.753111, 34.488140, 30.214512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566492, 34.616596, 30.135315>,  <26.255459, 34.830688, 30.003319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566492, 34.616596, 30.135315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302542, -0.141590, -0.942561,
		0.551212, 0.832754, 0.051833,
		0.777582, -0.535232, 0.329989,
		26.799767, 34.456028, 30.234312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891005, 35.145012, 29.660536>,  <26.255459, 34.830688, 30.003319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891005, 35.145012, 29.660536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918491, 34.761242, 29.769924>,  <26.934982, 34.530979, 29.835558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918491, 34.761242, 29.769924>,  <26.891005, 35.145012, 29.660536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918491, 34.761242, 29.769924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294135, -0.242453, -0.924501,
		0.953291, 0.143965, 0.265539,
		0.068715, -0.959422, 0.273473,
		26.939106, 34.473415, 29.851967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210115, 34.799503, 29.122118>,  <26.891005, 35.145012, 29.660536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210115, 34.799503, 29.122118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092684, 34.461353, 29.300627>,  <27.022224, 34.258465, 29.407732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092684, 34.461353, 29.300627>,  <27.210115, 34.799503, 29.122118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092684, 34.461353, 29.300627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248529, -0.518289, -0.818297,
		0.923063, -0.129321, 0.362257,
		-0.293577, -0.845371, 0.446273,
		27.004610, 34.207741, 29.434509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.640396, 34.257599, 28.828167>,  <27.210115, 34.799503, 29.122118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.640396, 34.257599, 28.828167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317289, 34.079926, 28.983192>,  <27.123425, 33.973320, 29.076208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317289, 34.079926, 28.983192>,  <27.640396, 34.257599, 28.828167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317289, 34.079926, 28.983192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081233, -0.567303, -0.819493,
		0.583876, -0.693444, 0.422167,
		-0.807769, -0.444188, 0.387566,
		27.074959, 33.946671, 29.099463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815517, 33.672993, 28.771967>,  <27.640396, 34.257599, 28.828167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815517, 33.672993, 28.771967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419090, 33.656410, 28.822668>,  <27.181234, 33.646461, 28.853088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.419090, 33.656410, 28.822668>,  <27.815517, 33.672993, 28.771967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.419090, 33.656410, 28.822668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065507, -0.676552, -0.733476,
		0.116160, -0.735227, 0.667794,
		-0.991068, -0.041455, 0.126751,
		27.121769, 33.643974, 28.860693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458561, 32.951492, 28.795336>,  <27.815517, 33.672993, 28.771967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458561, 32.951492, 28.795336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159189, 33.187115, 28.673435>,  <26.979567, 33.328487, 28.600294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159189, 33.187115, 28.673435>,  <27.458561, 32.951492, 28.795336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159189, 33.187115, 28.673435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185239, -0.626881, -0.756774,
		-0.636829, -0.509934, 0.578288,
		-0.748422, 0.589056, -0.304756,
		26.934660, 33.363831, 28.582010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.891781, 32.481335, 28.610727>,  <27.458561, 32.951492, 28.795336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.891781, 32.481335, 28.610727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766239, 32.822678, 28.444220>,  <26.690914, 33.027485, 28.344315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766239, 32.822678, 28.444220>,  <26.891781, 32.481335, 28.610727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766239, 32.822678, 28.444220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494283, -0.521177, -0.695744,
		-0.810666, -0.012608, 0.585373,
		-0.313855, 0.853356, -0.416268,
		26.672083, 33.078686, 28.319340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256218, 32.297794, 28.405920>,  <26.891781, 32.481335, 28.610727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256218, 32.297794, 28.405920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360537, 32.624519, 28.200083>,  <26.423128, 32.820553, 28.076580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360537, 32.624519, 28.200083>,  <26.256218, 32.297794, 28.405920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360537, 32.624519, 28.200083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268096, -0.450797, -0.851415,
		-0.927421, 0.360006, 0.101417,
		0.260796, 0.816810, -0.514594,
		26.438776, 32.869564, 28.045704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.738220, 32.192436, 27.832470>,  <26.256218, 32.297794, 28.405920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.738220, 32.192436, 27.832470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969591, 32.496578, 27.714300>,  <26.108414, 32.679066, 27.643398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969591, 32.496578, 27.714300>,  <25.738220, 32.192436, 27.832470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969591, 32.496578, 27.714300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083756, -0.304886, -0.948699,
		-0.811423, 0.573497, -0.112670,
		0.578427, 0.760359, -0.295426,
		26.143120, 32.724686, 27.625673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324486, 32.636250, 27.348459>,  <25.738220, 32.192436, 27.832470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324486, 32.636250, 27.348459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718267, 32.629158, 27.278559>,  <25.954536, 32.624901, 27.236618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.718267, 32.629158, 27.278559>,  <25.324486, 32.636250, 27.348459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718267, 32.629158, 27.278559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162746, -0.466364, -0.869493,
		-0.066082, 0.884415, -0.461999,
		0.984453, -0.017731, -0.174754,
		26.013603, 32.623840, 27.226133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.394754, 32.870487, 26.718718>,  <25.324486, 32.636250, 27.348459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.394754, 32.870487, 26.718718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753971, 32.700840, 26.765434>,  <25.969501, 32.599052, 26.793465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.753971, 32.700840, 26.765434>,  <25.394754, 32.870487, 26.718718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.753971, 32.700840, 26.765434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042023, -0.346984, -0.936929,
		0.437898, 0.836494, -0.329429,
		0.898042, -0.424122, 0.116792,
		26.023384, 32.573605, 26.800472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787323, 32.990444, 26.208950>,  <25.394754, 32.870487, 26.718718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787323, 32.990444, 26.208950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.937592, 32.652905, 26.362200>,  <26.027754, 32.450378, 26.454149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.937592, 32.652905, 26.362200>,  <25.787323, 32.990444, 26.208950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.937592, 32.652905, 26.362200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025268, -0.403923, -0.914444,
		0.926408, 0.353212, -0.130420,
		0.375672, -0.843853, 0.383122,
		26.050293, 32.399750, 26.477137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.501694, 32.937149, 25.963871>,  <25.787323, 32.990444, 26.208950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.501694, 32.937149, 25.963871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327421, 32.583302, 26.030352>,  <26.222857, 32.370991, 26.070240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327421, 32.583302, 26.030352>,  <26.501694, 32.937149, 25.963871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327421, 32.583302, 26.030352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170360, -0.262351, -0.949816,
		0.883832, -0.385504, 0.265006,
		-0.435683, -0.884623, 0.166199,
		26.196716, 32.317913, 26.080212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.830292, 32.182156, 25.757196>,  <26.501694, 32.937149, 25.963871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.830292, 32.182156, 25.757196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431160, 32.156979, 25.764980>,  <26.191681, 32.141872, 25.769651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.431160, 32.156979, 25.764980>,  <26.830292, 32.182156, 25.757196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431160, 32.156979, 25.764980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003831, -0.350291, -0.936633,
		0.065774, -0.934523, 0.349771,
		-0.997827, -0.062946, 0.019460,
		26.131811, 32.138096, 25.770819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.509470, 31.511795, 25.553719>,  <26.830292, 32.182156, 25.757196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.509470, 31.511795, 25.553719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253790, 31.795444, 25.434677>,  <26.100382, 31.965633, 25.363253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253790, 31.795444, 25.434677>,  <26.509470, 31.511795, 25.553719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253790, 31.795444, 25.434677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051017, -0.425226, -0.903648,
		-0.767346, -0.562430, 0.307982,
		-0.639201, 0.709123, -0.297602,
		26.062029, 32.008183, 25.345396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.223810, 30.767298, 25.766888>,  <26.509470, 31.511795, 25.553719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.223810, 30.767298, 25.766888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133766, 30.412806, 25.928839>,  <26.079741, 30.200111, 26.026009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.133766, 30.412806, 25.928839>,  <26.223810, 30.767298, 25.766888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.133766, 30.412806, 25.928839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844294, 0.029978, 0.535041,
		-0.486306, 0.462276, 0.741490,
		-0.225108, -0.886229, 0.404876,
		26.066235, 30.146936, 26.050301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.005426, 30.803719, 26.477255>,  <26.223810, 30.767298, 25.766888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.005426, 30.803719, 26.477255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183659, 30.462379, 26.368994>,  <26.290598, 30.257576, 26.304037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183659, 30.462379, 26.368994>,  <26.005426, 30.803719, 26.477255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183659, 30.462379, 26.368994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743610, 0.184446, 0.642669,
		-0.498499, -0.487623, 0.716744,
		0.445581, -0.853348, -0.270655,
		26.317333, 30.206375, 26.287798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.017159, 30.087248, 27.008886>,  <26.005426, 30.803719, 26.477255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.017159, 30.087248, 27.008886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340927, 30.173220, 26.790295>,  <26.535189, 30.224802, 26.659140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340927, 30.173220, 26.790295>,  <26.017159, 30.087248, 27.008886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340927, 30.173220, 26.790295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483090, 0.285360, 0.827764,
		0.333856, -0.934010, 0.127146,
		0.809422, 0.214930, -0.546480,
		26.583754, 30.237698, 26.626350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617313, 29.748312, 27.253386>,  <26.017159, 30.087248, 27.008886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617313, 29.748312, 27.253386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701824, 30.102814, 27.088501>,  <26.752531, 30.315514, 26.989571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.701824, 30.102814, 27.088501>,  <26.617313, 29.748312, 27.253386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.701824, 30.102814, 27.088501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345533, 0.326779, 0.879672,
		0.914314, -0.328286, -0.237189,
		0.211276, 0.886253, -0.412212,
		26.765207, 30.368690, 26.964838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.282059, 29.887297, 27.173622>,  <26.617313, 29.748312, 27.253386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.282059, 29.887297, 27.173622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030096, 30.185616, 27.260340>,  <26.878918, 30.364607, 27.312370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030096, 30.185616, 27.260340>,  <27.282059, 29.887297, 27.173622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030096, 30.185616, 27.260340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498802, 0.174507, 0.848966,
		0.595325, 0.642909, -0.481929,
		-0.629909, 0.745798, 0.216796,
		26.841124, 30.409355, 27.325378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698997, 30.413965, 27.361534>,  <27.282059, 29.887297, 27.173622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698997, 30.413965, 27.361534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347521, 30.461388, 27.546509>,  <27.136635, 30.489841, 27.657494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347521, 30.461388, 27.546509>,  <27.698997, 30.413965, 27.361534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347521, 30.461388, 27.546509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461986, 0.455263, 0.761120,
		-0.120294, 0.882428, -0.454807,
		-0.878691, 0.118557, 0.462435,
		27.083914, 30.496954, 27.685240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.511059, 31.173937, 27.606972>,  <27.698997, 30.413965, 27.361534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.511059, 31.173937, 27.606972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365841, 30.891573, 27.850248>,  <27.278711, 30.722155, 27.996214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365841, 30.891573, 27.850248>,  <27.511059, 31.173937, 27.606972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365841, 30.891573, 27.850248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519532, 0.388488, 0.761028,
		-0.773490, 0.592259, 0.225704,
		-0.363043, -0.705908, 0.608189,
		27.256927, 30.679800, 28.032705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.087830, 31.442253, 28.218468>,  <27.511059, 31.173937, 27.606972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.087830, 31.442253, 28.218468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205271, 31.083712, 28.351343>,  <27.275736, 30.868587, 28.431068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205271, 31.083712, 28.351343>,  <27.087830, 31.442253, 28.218468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205271, 31.083712, 28.351343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272554, 0.411574, 0.869667,
		-0.916249, -0.164796, 0.365143,
		0.293601, -0.896353, 0.332189,
		27.293350, 30.814806, 28.451000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.804876, 31.431704, 28.989527>,  <27.087830, 31.442253, 28.218468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.804876, 31.431704, 28.989527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100523, 31.170095, 28.925076>,  <27.277912, 31.013130, 28.886404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100523, 31.170095, 28.925076>,  <26.804876, 31.431704, 28.989527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100523, 31.170095, 28.925076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486551, 0.352968, 0.799176,
		-0.465804, -0.669082, 0.579099,
		0.739118, -0.654020, -0.161129,
		27.322258, 30.973890, 28.876738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.755939, 31.208328, 29.601755>,  <26.804876, 31.431704, 28.989527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.755939, 31.208328, 29.601755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120333, 31.103956, 29.473991>,  <27.338968, 31.041334, 29.397333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.120333, 31.103956, 29.473991>,  <26.755939, 31.208328, 29.601755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.120333, 31.103956, 29.473991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404529, 0.414331, 0.815283,
		-0.080389, -0.871921, 0.483003,
		0.910985, -0.260929, -0.319409,
		27.393629, 31.025677, 29.378168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089544, 30.839277, 30.198074>,  <26.755939, 31.208328, 29.601755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089544, 30.839277, 30.198074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381618, 30.956089, 29.950994>,  <27.556862, 31.026176, 29.802748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.381618, 30.956089, 29.950994>,  <27.089544, 30.839277, 30.198074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.381618, 30.956089, 29.950994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479831, 0.424432, 0.767867,
		0.486412, -0.857074, 0.169787,
		0.730182, 0.292031, -0.617699,
		27.600674, 31.043697, 29.765684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.691832, 30.600630, 30.481920>,  <27.089544, 30.839277, 30.198074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.691832, 30.600630, 30.481920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806273, 30.902691, 30.245993>,  <27.874937, 31.083927, 30.104437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.806273, 30.902691, 30.245993>,  <27.691832, 30.600630, 30.481920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.806273, 30.902691, 30.245993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468422, 0.426756, 0.773602,
		0.835898, -0.497615, -0.231634,
		0.286105, 0.755155, -0.589818,
		27.892103, 31.129238, 30.069048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.473288, 30.624216, 30.620882>,  <27.691832, 30.600630, 30.481920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.473288, 30.624216, 30.620882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365553, 30.964214, 30.439789>,  <28.300913, 31.168213, 30.331133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365553, 30.964214, 30.439789>,  <28.473288, 30.624216, 30.620882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365553, 30.964214, 30.439789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639020, 0.509439, 0.576303,
		0.720494, -0.134086, -0.680374,
		-0.269335, 0.849996, -0.452732,
		28.284752, 31.219213, 30.303968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077675, 30.963160, 30.543077>,  <28.473288, 30.624216, 30.620882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077675, 30.963160, 30.543077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800571, 31.251389, 30.531355>,  <28.634310, 31.424326, 30.524321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.800571, 31.251389, 30.531355>,  <29.077675, 30.963160, 30.543077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.800571, 31.251389, 30.531355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541251, 0.546356, 0.639174,
		0.476584, 0.426930, -0.768504,
		-0.692759, 0.720573, -0.029308,
		28.592743, 31.467560, 30.522562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.425423, 31.527508, 30.558699>,  <29.077675, 30.963160, 30.543077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.425423, 31.527508, 30.558699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059700, 31.612938, 30.696354>,  <28.840267, 31.664196, 30.778948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.059700, 31.612938, 30.696354>,  <29.425423, 31.527508, 30.558699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.059700, 31.612938, 30.696354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397920, 0.632141, 0.664874,
		-0.075544, 0.744837, -0.662956,
		-0.914305, 0.213576, 0.344140,
		28.785408, 31.677011, 30.799597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465687, 32.228771, 30.729494>,  <29.425423, 31.527508, 30.558699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465687, 32.228771, 30.729494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123371, 32.132988, 30.912922>,  <28.917982, 32.075520, 31.022980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123371, 32.132988, 30.912922>,  <29.465687, 32.228771, 30.729494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123371, 32.132988, 30.912922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110165, 0.781739, 0.613797,
		-0.505461, 0.575799, -0.642623,
		-0.855788, -0.239457, 0.458572,
		28.866634, 32.061150, 31.050493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.964140, 32.789051, 30.784794>,  <29.465687, 32.228771, 30.729494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.964140, 32.789051, 30.784794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879187, 32.545116, 31.090210>,  <28.828215, 32.398754, 31.273460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.879187, 32.545116, 31.090210>,  <28.964140, 32.789051, 30.784794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.879187, 32.545116, 31.090210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044680, 0.786608, 0.615834,
		-0.976165, 0.096676, -0.194309,
		-0.212382, -0.609837, 0.763540,
		28.815472, 32.362164, 31.319271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300962, 33.018326, 31.136326>,  <28.964140, 32.789051, 30.784794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300962, 33.018326, 31.136326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539019, 32.823578, 31.392067>,  <28.681852, 32.706730, 31.545511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.539019, 32.823578, 31.392067>,  <28.300962, 33.018326, 31.136326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539019, 32.823578, 31.392067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123075, 0.730983, 0.671205,
		-0.794143, -0.478148, 0.375115,
		0.595138, -0.486865, 0.639353,
		28.717560, 32.677517, 31.583874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072285, 33.307945, 31.849298>,  <28.300962, 33.018326, 31.136326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072285, 33.307945, 31.849298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378822, 33.070606, 31.947807>,  <28.562746, 32.928204, 32.006912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.378822, 33.070606, 31.947807>,  <28.072285, 33.307945, 31.849298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.378822, 33.070606, 31.947807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013820, 0.398484, 0.917071,
		-0.642281, -0.699389, 0.313577,
		0.766345, -0.593350, 0.246273,
		28.608727, 32.892601, 32.021690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948055, 33.027676, 32.463181>,  <28.072285, 33.307945, 31.849298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948055, 33.027676, 32.463181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347078, 33.004398, 32.447720>,  <28.586493, 32.990433, 32.438442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.347078, 33.004398, 32.447720>,  <27.948055, 33.027676, 32.463181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.347078, 33.004398, 32.447720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058974, 0.404908, 0.912453,
		-0.037449, -0.912504, 0.407351,
		0.997557, -0.058193, -0.038651,
		28.646345, 32.986942, 32.436123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080721, 32.745777, 33.085018>,  <27.948055, 33.027676, 32.463181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080721, 32.745777, 33.085018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414415, 32.934196, 32.970364>,  <28.614632, 33.047249, 32.901569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.414415, 32.934196, 32.970364>,  <28.080721, 32.745777, 33.085018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414415, 32.934196, 32.970364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099340, 0.382937, 0.918417,
		0.542384, -0.794652, 0.272666,
		0.834237, 0.471048, -0.286640,
		28.664686, 33.075512, 32.884373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512903, 32.653378, 33.592007>,  <28.080721, 32.745777, 33.085018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512903, 32.653378, 33.592007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659346, 32.974434, 33.403652>,  <28.747211, 33.167068, 33.290638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659346, 32.974434, 33.403652>,  <28.512903, 32.653378, 33.592007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659346, 32.974434, 33.403652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208601, 0.422353, 0.882102,
		0.906892, -0.421168, -0.012808,
		0.366103, 0.802643, -0.470885,
		28.769176, 33.215225, 33.262386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.122032, 32.788143, 33.956970>,  <28.512903, 32.653378, 33.592007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.122032, 32.788143, 33.956970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030127, 33.132530, 33.775448>,  <28.974983, 33.339161, 33.666534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030127, 33.132530, 33.775448>,  <29.122032, 32.788143, 33.956970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030127, 33.132530, 33.775448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303972, 0.506439, 0.806920,
		0.924559, 0.047455, -0.378071,
		-0.229762, 0.860969, -0.453808,
		28.961199, 33.390820, 33.639305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.623461, 33.291557, 34.196964>,  <29.122032, 32.788143, 33.956970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.623461, 33.291557, 34.196964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314037, 33.498447, 34.050495>,  <29.128384, 33.622581, 33.962612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314037, 33.498447, 34.050495>,  <29.623461, 33.291557, 34.196964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314037, 33.498447, 34.050495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052194, 0.627849, 0.776583,
		0.631569, 0.581622, -0.512676,
		-0.773560, 0.517225, -0.366173,
		29.081968, 33.653614, 33.940643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794605, 33.938309, 34.076103>,  <29.623461, 33.291557, 34.196964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794605, 33.938309, 34.076103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399046, 33.974167, 34.123512>,  <29.161711, 33.995682, 34.151958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399046, 33.974167, 34.123512>,  <29.794605, 33.938309, 34.076103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399046, 33.974167, 34.123512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148606, 0.600721, 0.785526,
		-0.000779, 0.794417, -0.607373,
		-0.988896, 0.089647, 0.118523,
		29.102377, 34.001060, 34.159069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740242, 34.593845, 34.249062>,  <29.794605, 33.938309, 34.076103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740242, 34.593845, 34.249062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379786, 34.454342, 34.352066>,  <29.163511, 34.370640, 34.413868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379786, 34.454342, 34.352066>,  <29.740242, 34.593845, 34.249062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379786, 34.454342, 34.352066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028459, 0.545130, 0.837868,
		-0.432591, 0.762366, -0.481314,
		-0.901141, -0.348757, 0.257515,
		29.109444, 34.349716, 34.429321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.204496, 35.141354, 34.404621>,  <29.740242, 34.593845, 34.249062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.204496, 35.141354, 34.404621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094866, 34.810547, 34.600956>,  <29.029087, 34.612061, 34.718758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.094866, 34.810547, 34.600956>,  <29.204496, 35.141354, 34.404621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094866, 34.810547, 34.600956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089067, 0.530013, 0.843299,
		-0.957575, 0.187411, -0.218924,
		-0.274076, -0.827021, 0.490834,
		29.012644, 34.562439, 34.748207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739868, 35.583103, 34.641678>,  <29.204496, 35.141354, 34.404621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739868, 35.583103, 34.641678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895596, 35.921387, 34.495689>,  <29.989033, 36.124359, 34.408096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895596, 35.921387, 34.495689>,  <29.739868, 35.583103, 34.641678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895596, 35.921387, 34.495689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651518, 0.027258, 0.758144,
		0.651119, -0.532944, -0.540384,
		0.389318, 0.845711, -0.364970,
		30.012390, 36.175098, 34.386200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388964, 35.466084, 34.522884>,  <29.739868, 35.583103, 34.641678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388964, 35.466084, 34.522884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354870, 35.855316, 34.608528>,  <30.334414, 36.088856, 34.659912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.354870, 35.855316, 34.608528>,  <30.388964, 35.466084, 34.522884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.354870, 35.855316, 34.608528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687063, -0.098224, 0.719928,
		0.721581, 0.208468, -0.660198,
		-0.085234, 0.973084, 0.214107,
		30.329300, 36.147240, 34.672760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.002172, 35.592720, 34.919903>,  <30.388964, 35.466084, 34.522884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.002172, 35.592720, 34.919903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328009, 35.386692, 34.813210>,  <31.523510, 35.263077, 34.749195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328009, 35.386692, 34.813210>,  <31.002172, 35.592720, 34.919903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328009, 35.386692, 34.813210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314562, 0.005929, 0.949218,
		-0.487333, -0.857127, 0.166851,
		0.814590, -0.515071, -0.266731,
		31.572386, 35.232170, 34.733189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.138546, 35.032204, 35.455112>,  <31.002172, 35.592720, 34.919903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.138546, 35.032204, 35.455112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481571, 35.069302, 35.252731>,  <31.687386, 35.091560, 35.131302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481571, 35.069302, 35.252731>,  <31.138546, 35.032204, 35.455112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481571, 35.069302, 35.252731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510802, -0.037711, 0.858871,
		0.060582, -0.994975, -0.079717,
		0.857561, 0.092752, -0.505950,
		31.738840, 35.097126, 35.100945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610010, 34.455601, 35.656090>,  <31.138546, 35.032204, 35.455112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610010, 34.455601, 35.656090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804689, 34.777870, 35.521023>,  <31.921497, 34.971230, 35.439983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804689, 34.777870, 35.521023>,  <31.610010, 34.455601, 35.656090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804689, 34.777870, 35.521023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621186, -0.047406, 0.782228,
		0.614210, -0.590464, -0.523544,
		0.486696, 0.805671, -0.337671,
		31.950699, 35.019573, 35.419720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126839, 34.614304, 36.181107>,  <31.610010, 34.455601, 35.656090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126839, 34.614304, 36.181107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256664, 34.899548, 35.932545>,  <32.334560, 35.070694, 35.783409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256664, 34.899548, 35.932545>,  <32.126839, 34.614304, 36.181107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256664, 34.899548, 35.932545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685084, 0.275744, 0.674258,
		0.652166, -0.644550, -0.399042,
		0.324560, 0.713106, -0.621402,
		32.354031, 35.113480, 35.746124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855587, 34.655090, 35.850574>,  <32.126839, 34.614304, 36.181107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855587, 34.655090, 35.850574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726276, 35.025208, 35.929897>,  <32.648689, 35.247276, 35.977493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726276, 35.025208, 35.929897>,  <32.855587, 34.655090, 35.850574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726276, 35.025208, 35.929897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677941, 0.080244, 0.730723,
		0.660220, 0.370666, -0.653235,
		-0.323273, 0.925293, 0.198311,
		32.629295, 35.302795, 35.989391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466228, 35.062538, 36.111382>,  <32.855587, 34.655090, 35.850574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466228, 35.062538, 36.111382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128010, 35.225666, 36.249210>,  <32.925079, 35.323544, 36.331909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128010, 35.225666, 36.249210>,  <33.466228, 35.062538, 36.111382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128010, 35.225666, 36.249210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359730, -0.041731, 0.932123,
		0.394514, 0.912110, -0.111418,
		-0.845549, 0.407816, 0.344577,
		32.874344, 35.348011, 36.352585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638210, 34.452301, 36.407658>,  <33.466228, 35.062538, 36.111382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638210, 34.452301, 36.407658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984818, 34.436584, 36.606697>,  <34.192780, 34.427155, 36.726120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984818, 34.436584, 36.606697>,  <33.638210, 34.452301, 36.407658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984818, 34.436584, 36.606697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483178, 0.184152, 0.855936,
		-0.125267, -0.982112, 0.140585,
		0.866514, -0.039293, 0.497603,
		34.244770, 34.424797, 36.755978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406517, 34.331654, 37.102390>,  <33.638210, 34.452301, 36.407658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406517, 34.331654, 37.102390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792637, 34.428249, 37.142151>,  <34.024307, 34.486206, 37.166008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792637, 34.428249, 37.142151>,  <33.406517, 34.331654, 37.102390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792637, 34.428249, 37.142151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152443, 0.212036, 0.965299,
		0.212036, -0.946955, 0.241492,
		-0.965299, -0.241492, -0.099398,
		34.082226, 34.500698, 37.171970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654449, 33.896481, 37.628254>,  <33.406517, 34.331654, 37.102390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654449, 33.896481, 37.628254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872791, 34.230164, 37.596905>,  <34.003796, 34.430374, 37.578094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872791, 34.230164, 37.596905>,  <33.654449, 33.896481, 37.628254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872791, 34.230164, 37.596905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141995, 0.184288, 0.972561,
		0.825762, -0.519746, 0.219047,
		0.545852, 0.834208, -0.078376,
		34.036549, 34.480427, 37.573391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086704, 33.836262, 38.155769>,  <33.654449, 33.896481, 37.628254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086704, 33.836262, 38.155769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088985, 34.226562, 38.068256>,  <34.090355, 34.460743, 38.015747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088985, 34.226562, 38.068256>,  <34.086704, 33.836262, 38.155769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088985, 34.226562, 38.068256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114227, 0.217994, 0.969243,
		0.993438, 0.019463, 0.112701,
		0.005703, 0.975756, -0.218786,
		34.090698, 34.519291, 38.002621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382969, 34.082630, 38.844524>,  <34.086704, 33.836262, 38.155769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382969, 34.082630, 38.844524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214149, 34.383446, 38.642014>,  <34.112858, 34.563934, 38.520508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214149, 34.383446, 38.642014>,  <34.382969, 34.082630, 38.844524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214149, 34.383446, 38.642014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228484, 0.452190, 0.862159,
		0.877309, 0.479548, -0.019017,
		-0.422046, 0.752035, -0.506280,
		34.087536, 34.609055, 38.490131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779675, 34.679901, 39.104393>,  <34.382969, 34.082630, 38.844524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779675, 34.679901, 39.104393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423668, 34.797684, 38.965157>,  <34.210064, 34.868355, 38.881615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.423668, 34.797684, 38.965157>,  <34.779675, 34.679901, 39.104393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423668, 34.797684, 38.965157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215091, 0.402010, 0.890014,
		0.402010, 0.866996, -0.294459,
		-0.890014, 0.294459, -0.348095,
		34.156662, 34.886021, 38.860729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693287, 35.422787, 39.254734>,  <34.779675, 34.679901, 39.104393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693287, 35.422787, 39.254734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308014, 35.330936, 39.198799>,  <34.076851, 35.275826, 39.165237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.308014, 35.330936, 39.198799>,  <34.693287, 35.422787, 39.254734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308014, 35.330936, 39.198799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198470, 0.256405, 0.945974,
		-0.181367, 0.938897, -0.292538,
		-0.963180, -0.229629, -0.139840,
		34.019058, 35.262047, 39.156849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336105, 35.969276, 39.538227>,  <34.693287, 35.422787, 39.254734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336105, 35.969276, 39.538227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068909, 35.673061, 39.508881>,  <33.908592, 35.495331, 39.491272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068909, 35.673061, 39.508881>,  <34.336105, 35.969276, 39.538227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068909, 35.673061, 39.508881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278795, 0.157626, 0.947327,
		-0.689971, 0.653262, -0.311752,
		-0.667993, -0.740542, -0.073369,
		33.868511, 35.450897, 39.486870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797379, 36.347111, 39.811901>,  <34.336105, 35.969276, 39.538227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797379, 36.347111, 39.811901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740574, 35.952785, 39.847691>,  <33.706490, 35.716190, 39.869164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.740574, 35.952785, 39.847691>,  <33.797379, 36.347111, 39.811901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.740574, 35.952785, 39.847691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358433, 0.135472, 0.923674,
		-0.922690, 0.099104, -0.372586,
		-0.142015, -0.985812, 0.089476,
		33.697968, 35.657043, 39.874535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.059410, 36.170097, 40.051373>,  <33.797379, 36.347111, 39.811901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.059410, 36.170097, 40.051373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284142, 35.850491, 40.137096>,  <33.418980, 35.658726, 40.188530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.284142, 35.850491, 40.137096>,  <33.059410, 36.170097, 40.051373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284142, 35.850491, 40.137096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300396, 0.044331, 0.952784,
		-0.770788, -0.599676, -0.215114,
		0.561825, -0.799014, 0.214310,
		33.452690, 35.610786, 40.201389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596531, 35.701580, 40.612034>,  <33.059410, 36.170097, 40.051373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596531, 35.701580, 40.612034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966457, 35.552708, 40.643513>,  <33.188412, 35.463383, 40.662399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966457, 35.552708, 40.643513>,  <32.596531, 35.701580, 40.612034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966457, 35.552708, 40.643513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126283, -0.105211, 0.986399,
		-0.358840, -0.922177, -0.144302,
		0.924817, -0.372182, 0.078702,
		33.243904, 35.441051, 40.667122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633266, 35.013165, 41.094479>,  <32.596531, 35.701580, 40.612034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633266, 35.013165, 41.094479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026981, 35.078884, 41.068611>,  <33.263210, 35.118317, 41.053089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026981, 35.078884, 41.068611>,  <32.633266, 35.013165, 41.094479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026981, 35.078884, 41.068611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110716, -0.289013, 0.950901,
		0.137540, -0.943121, -0.302663,
		0.984289, 0.164297, -0.064668,
		33.322269, 35.128174, 41.049210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110302, 34.431370, 41.292381>,  <32.633266, 35.013165, 41.094479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110302, 34.431370, 41.292381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258327, 34.794952, 41.369171>,  <33.347141, 35.013103, 41.415245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.258327, 34.794952, 41.369171>,  <33.110302, 34.431370, 41.292381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258327, 34.794952, 41.369171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215754, -0.285085, 0.933904,
		0.903607, -0.304181, -0.301610,
		0.370061, 0.908955, 0.191977,
		33.369347, 35.067638, 41.426765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770229, 34.333561, 41.456501>,  <33.110302, 34.431370, 41.292381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770229, 34.333561, 41.456501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657562, 34.680988, 41.619595>,  <33.589962, 34.889446, 41.717453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657562, 34.680988, 41.619595>,  <33.770229, 34.333561, 41.456501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657562, 34.680988, 41.619595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184460, -0.367998, 0.911346,
		0.941614, 0.331909, -0.056563,
		-0.281669, 0.868570, 0.407736,
		33.573063, 34.941559, 41.741917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934483, 34.265244, 42.146427>,  <33.770229, 34.333561, 41.456501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934483, 34.265244, 42.146427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730309, 34.608913, 42.160728>,  <33.607803, 34.815113, 42.169308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730309, 34.608913, 42.160728>,  <33.934483, 34.265244, 42.146427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730309, 34.608913, 42.160728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237585, -0.180860, 0.954381,
		0.826443, 0.478658, 0.296444,
		-0.510437, 0.859172, 0.035749,
		33.577179, 34.866665, 42.171452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243279, 34.743065, 42.628441>,  <33.934483, 34.265244, 42.146427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243279, 34.743065, 42.628441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865341, 34.872383, 42.607487>,  <33.638577, 34.949974, 42.594913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.865341, 34.872383, 42.607487>,  <34.243279, 34.743065, 42.628441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865341, 34.872383, 42.607487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111006, -0.165636, 0.979920,
		0.308127, 0.931689, 0.192388,
		-0.944847, 0.323296, -0.052386,
		33.581886, 34.969372, 42.591770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094849, 35.021248, 43.332874>,  <34.243279, 34.743065, 42.628441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094849, 35.021248, 43.332874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733215, 34.988979, 43.165005>,  <33.516235, 34.969620, 43.064281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733215, 34.988979, 43.165005>,  <34.094849, 35.021248, 43.332874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733215, 34.988979, 43.165005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370053, -0.343423, 0.863204,
		-0.213763, 0.935710, 0.280630,
		-0.904083, -0.080673, -0.419673,
		33.461990, 34.964779, 43.039104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647068, 35.490131, 43.672791>,  <34.094849, 35.021248, 43.332874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647068, 35.490131, 43.672791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420670, 35.205608, 43.506088>,  <33.284828, 35.034893, 43.406067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420670, 35.205608, 43.506088>,  <33.647068, 35.490131, 43.672791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420670, 35.205608, 43.506088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340299, -0.258864, 0.903983,
		-0.750893, 0.653476, -0.095540,
		-0.566000, -0.711307, -0.416757,
		33.250870, 34.992218, 43.381062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031170, 35.621212, 43.993294>,  <33.647068, 35.490131, 43.672791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031170, 35.621212, 43.993294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037514, 35.243996, 43.860374>,  <33.041321, 35.017666, 43.780624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037514, 35.243996, 43.860374>,  <33.031170, 35.621212, 43.993294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037514, 35.243996, 43.860374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184758, -0.329382, 0.925944,
		-0.982656, 0.046714, -0.179457,
		0.015855, -0.943040, -0.332300,
		33.042271, 34.961082, 43.760685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530449, 35.369019, 44.325039>,  <33.031170, 35.621212, 43.993294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530449, 35.369019, 44.325039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713074, 35.043274, 44.181728>,  <32.822651, 34.847828, 44.095741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713074, 35.043274, 44.181728>,  <32.530449, 35.369019, 44.325039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713074, 35.043274, 44.181728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274637, -0.512032, 0.813878,
		-0.846240, -0.273194, -0.457430,
		0.456566, -0.814364, -0.358273,
		32.850044, 34.798965, 44.074245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989199, 34.861496, 44.268242>,  <32.530449, 35.369019, 44.325039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989199, 34.861496, 44.268242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344589, 34.680531, 44.299049>,  <32.557823, 34.571953, 44.317535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344589, 34.680531, 44.299049>,  <31.989199, 34.861496, 44.268242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344589, 34.680531, 44.299049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258753, -0.355227, 0.898254,
		-0.379019, -0.818009, -0.432674,
		0.888477, -0.452411, 0.077025,
		32.611134, 34.544807, 44.322155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824726, 34.226688, 44.590103>,  <31.989199, 34.861496, 44.268242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824726, 34.226688, 44.590103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212139, 34.279922, 44.674232>,  <32.444588, 34.311863, 44.724709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212139, 34.279922, 44.674232>,  <31.824726, 34.226688, 44.590103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212139, 34.279922, 44.674232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164484, -0.291959, 0.942181,
		0.186794, -0.947127, -0.260882,
		0.968532, 0.133083, 0.210323,
		32.502697, 34.319847, 44.737328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012474, 33.579472, 44.894054>,  <31.824726, 34.226688, 44.590103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012474, 33.579472, 44.894054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284008, 33.855892, 44.993359>,  <32.446930, 34.021744, 45.052940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.284008, 33.855892, 44.993359>,  <32.012474, 33.579472, 44.894054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284008, 33.855892, 44.993359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036353, -0.369308, 0.928596,
		0.733387, -0.621341, -0.275822,
		0.678838, 0.691047, 0.248258,
		32.487659, 34.063206, 45.067837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508137, 33.157574, 45.286247>,  <32.012474, 33.579472, 44.894054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508137, 33.157574, 45.286247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576519, 33.539551, 45.383297>,  <32.617550, 33.768738, 45.441528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576519, 33.539551, 45.383297>,  <32.508137, 33.157574, 45.286247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576519, 33.539551, 45.383297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070628, -0.233740, 0.969730,
		0.982744, -0.182916, 0.027486,
		0.170954, 0.954938, 0.242625,
		32.627804, 33.826031, 45.456085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900623, 33.127125, 45.746143>,  <32.508137, 33.157574, 45.286247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900623, 33.127125, 45.746143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766659, 33.495022, 45.828030>,  <32.686279, 33.715759, 45.877163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766659, 33.495022, 45.828030>,  <32.900623, 33.127125, 45.746143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766659, 33.495022, 45.828030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028836, -0.227165, 0.973429,
		0.941808, 0.320110, 0.102602,
		-0.334912, 0.919742, 0.204715,
		32.666183, 33.770943, 45.889442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239494, 33.330082, 46.388607>,  <32.900623, 33.127125, 45.746143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239494, 33.330082, 46.388607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955597, 33.611225, 46.369598>,  <32.785259, 33.779911, 46.358192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955597, 33.611225, 46.369598>,  <33.239494, 33.330082, 46.388607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955597, 33.611225, 46.369598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069810, -0.003044, 0.997556,
		0.700992, 0.711326, 0.051227,
		-0.709744, 0.702855, -0.047524,
		32.742672, 33.822083, 46.355343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470646, 33.817173, 46.846420>,  <33.239494, 33.330082, 46.388607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470646, 33.817173, 46.846420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075695, 33.849464, 46.791901>,  <32.838726, 33.868839, 46.759190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075695, 33.849464, 46.791901>,  <33.470646, 33.817173, 46.846420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075695, 33.849464, 46.791901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147091, -0.147721, 0.978030,
		0.058819, 0.985729, 0.157730,
		-0.987373, 0.080727, -0.136303,
		32.779484, 33.873684, 46.751011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.284176, 34.292313, 47.343929>,  <33.470646, 33.817173, 46.846420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.284176, 34.292313, 47.343929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948689, 34.095531, 47.250530>,  <32.747395, 33.977463, 47.194489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.948689, 34.095531, 47.250530>,  <33.284176, 34.292313, 47.343929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948689, 34.095531, 47.250530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235863, -0.058300, 0.970036,
		-0.490830, 0.868665, -0.067137,
		-0.838722, -0.491957, -0.233501,
		32.697071, 33.947945, 47.180481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.713028, 34.683231, 47.523281>,  <33.284176, 34.292313, 47.343929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.713028, 34.683231, 47.523281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602249, 34.298958, 47.531113>,  <32.535782, 34.068394, 47.535812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.602249, 34.298958, 47.531113>,  <32.713028, 34.683231, 47.523281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602249, 34.298958, 47.531113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386874, 0.130136, 0.912904,
		-0.879563, 0.245245, -0.407705,
		-0.276942, -0.960687, 0.019584,
		32.519165, 34.010754, 47.536987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072292, 34.707424, 47.794590>,  <32.713028, 34.683231, 47.523281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072292, 34.707424, 47.794590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204052, 34.333252, 47.845901>,  <32.283108, 34.108749, 47.876686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204052, 34.333252, 47.845901>,  <32.072292, 34.707424, 47.794590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204052, 34.333252, 47.845901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268295, 0.037525, 0.962606,
		-0.905269, -0.351501, -0.238611,
		0.329403, -0.935435, 0.128276,
		32.302872, 34.052620, 47.884384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524094, 34.368187, 48.179104>,  <32.072292, 34.707424, 47.794590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524094, 34.368187, 48.179104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814556, 34.097061, 48.225174>,  <31.988834, 33.934387, 48.252815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814556, 34.097061, 48.225174>,  <31.524094, 34.368187, 48.179104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814556, 34.097061, 48.225174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266358, -0.122907, 0.956006,
		-0.633838, -0.724888, -0.269790,
		0.726157, -0.677813, 0.115177,
		32.032402, 33.893719, 48.259727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179123, 33.730129, 48.399357>,  <31.524094, 34.368187, 48.179104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179123, 33.730129, 48.399357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556248, 33.694740, 48.527905>,  <31.782522, 33.673508, 48.605034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.556248, 33.694740, 48.527905>,  <31.179123, 33.730129, 48.399357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556248, 33.694740, 48.527905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327292, -0.063127, 0.942812,
		-0.063127, -0.994076, -0.088474,
		-0.942812, 0.088474, -0.321368,
		31.839092, 33.668198, 48.624313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189203, 33.233265, 48.854580>,  <31.179123, 33.730129, 48.399357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189203, 33.233265, 48.854580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540092, 33.399876, 48.950066>,  <31.750626, 33.499844, 49.007359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.540092, 33.399876, 48.950066>,  <31.189203, 33.233265, 48.854580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540092, 33.399876, 48.950066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210550, -0.113083, 0.971021,
		0.431450, -0.902063, -0.011499,
		0.877223, 0.416526, 0.238719,
		31.803259, 33.524834, 49.021683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081659, 33.233456, 49.585644>,  <31.189203, 33.233265, 48.854580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.081659, 33.233456, 49.585644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469110, 33.313343, 49.526489>,  <31.701582, 33.361275, 49.490997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.469110, 33.313343, 49.526489>,  <31.081659, 33.233456, 49.585644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469110, 33.313343, 49.526489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175940, -0.130825, 0.975669,
		0.175512, -0.971080, -0.161860,
		0.968628, 0.199719, -0.147891,
		31.759699, 33.373257, 49.482121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468075, 32.758381, 49.761566>,  <31.081659, 33.233456, 49.585644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468075, 32.758381, 49.761566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690823, 33.086193, 49.815624>,  <31.824471, 33.282879, 49.848061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.690823, 33.086193, 49.815624>,  <31.468075, 32.758381, 49.761566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690823, 33.086193, 49.815624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306678, -0.354080, 0.883502,
		0.771910, -0.450550, -0.448508,
		0.556870, 0.819532, 0.135144,
		31.857883, 33.332054, 49.856167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091599, 32.548019, 49.829388>,  <31.468075, 32.758381, 49.761566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091599, 32.548019, 49.829388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058170, 32.890358, 50.033558>,  <32.038113, 33.095760, 50.156059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.058170, 32.890358, 50.033558>,  <32.091599, 32.548019, 49.829388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.058170, 32.890358, 50.033558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339575, -0.457103, 0.822037,
		0.936859, 0.242026, -0.252426,
		-0.083570, 0.855850, 0.510427,
		32.033100, 33.147114, 50.186687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550243, 32.392563, 50.332371>,  <32.091599, 32.548019, 49.829388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550243, 32.392563, 50.332371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391178, 32.724857, 50.488186>,  <32.295738, 32.924232, 50.581676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391178, 32.724857, 50.488186>,  <32.550243, 32.392563, 50.332371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391178, 32.724857, 50.488186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329432, -0.266975, 0.905648,
		0.856353, 0.488469, -0.167506,
		-0.397661, 0.830736, 0.389542,
		32.271881, 32.974079, 50.605049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008575, 32.611710, 50.891491>,  <32.550243, 32.392563, 50.332371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008575, 32.611710, 50.891491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664654, 32.797379, 50.976604>,  <32.458302, 32.908779, 51.027672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664654, 32.797379, 50.976604>,  <33.008575, 32.611710, 50.891491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664654, 32.797379, 50.976604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117051, -0.226443, 0.966966,
		0.497023, 0.856309, 0.140365,
		-0.859806, 0.464175, 0.212779,
		32.406712, 32.936630, 51.040440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194183, 32.982327, 51.418388>,  <33.008575, 32.611710, 50.891491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194183, 32.982327, 51.418388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798805, 32.937988, 51.459743>,  <32.561577, 32.911385, 51.484558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798805, 32.937988, 51.459743>,  <33.194183, 32.982327, 51.418388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798805, 32.937988, 51.459743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139017, -0.391011, 0.909827,
		-0.060426, 0.913686, 0.401903,
		-0.988445, -0.110848, 0.103390,
		32.502274, 32.904736, 51.490761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137955, 33.142590, 52.037071>,  <33.194183, 32.982327, 51.418388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137955, 33.142590, 52.037071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784824, 32.969528, 51.963936>,  <32.572945, 32.865692, 51.920055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784824, 32.969528, 51.963936>,  <33.137955, 33.142590, 52.037071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784824, 32.969528, 51.963936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128322, -0.596621, 0.792198,
		-0.451834, 0.675909, 0.582231,
		-0.882825, -0.432655, -0.182840,
		32.519978, 32.839733, 51.909084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814301, 33.317581, 52.625401>,  <33.137955, 33.142590, 52.037071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814301, 33.317581, 52.625401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636665, 32.998474, 52.462254>,  <32.530087, 32.807011, 52.364365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636665, 32.998474, 52.462254>,  <32.814301, 33.317581, 52.625401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636665, 32.998474, 52.462254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320872, -0.566629, 0.758929,
		-0.836558, 0.206156, 0.507612,
		-0.444085, -0.797767, -0.407868,
		32.503441, 32.759144, 52.339893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437527, 33.021900, 53.216610>,  <32.814301, 33.317581, 52.625401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437527, 33.021900, 53.216610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469391, 32.748852, 52.926041>,  <32.488510, 32.585022, 52.751701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469391, 32.748852, 52.926041>,  <32.437527, 33.021900, 53.216610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469391, 32.748852, 52.926041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140981, -0.713697, 0.686120,
		-0.986802, -0.157066, 0.039384,
		0.079658, -0.682617, -0.726421,
		32.493290, 32.544067, 52.708115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826799, 32.491142, 53.187710>,  <32.437527, 33.021900, 53.216610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826799, 32.491142, 53.187710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178432, 32.347466, 53.062363>,  <32.389412, 32.261261, 52.987156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178432, 32.347466, 53.062363>,  <31.826799, 32.491142, 53.187710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178432, 32.347466, 53.062363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028318, -0.695599, 0.717872,
		-0.475829, -0.622194, -0.621660,
		0.879082, -0.359188, -0.313367,
		32.442158, 32.239708, 52.968353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823696, 31.760239, 52.702419>,  <31.826799, 32.491142, 53.187710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823696, 31.760239, 52.702419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128654, 31.822685, 52.953617>,  <32.311630, 31.860153, 53.104336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.128654, 31.822685, 52.953617>,  <31.823696, 31.760239, 52.702419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128654, 31.822685, 52.953617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461901, -0.548389, 0.697077,
		0.453214, -0.821520, -0.345978,
		0.762394, 0.156118, 0.627999,
		32.357372, 31.869520, 53.142017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298489, 31.403444, 52.257221>,  <31.823696, 31.760239, 52.702419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298489, 31.403444, 52.257221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234791, 31.373465, 51.863464>,  <31.196573, 31.355476, 51.627213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234791, 31.373465, 51.863464>,  <31.298489, 31.403444, 52.257221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234791, 31.373465, 51.863464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610944, -0.790731, -0.038627,
		-0.775492, -0.607559, 0.171709,
		-0.159243, -0.074950, -0.984390,
		31.187017, 31.350979, 51.568146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097847, 30.728197, 52.154419>,  <31.298489, 31.403444, 52.257221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097847, 30.728197, 52.154419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271801, 30.878038, 51.826870>,  <31.376173, 30.967943, 51.630341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.271801, 30.878038, 51.826870>,  <31.097847, 30.728197, 52.154419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.271801, 30.878038, 51.826870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572616, -0.816865, -0.069584,
		-0.694972, -0.438636, -0.569747,
		0.434885, 0.374605, -0.818869,
		31.402266, 30.990419, 51.581211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984285, 30.733242, 52.890038>,  <31.097847, 30.728197, 52.154419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984285, 30.733242, 52.890038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850931, 31.085117, 53.025688>,  <30.770920, 31.296242, 53.107079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.850931, 31.085117, 53.025688>,  <30.984285, 30.733242, 52.890038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850931, 31.085117, 53.025688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931440, 0.362972, -0.025878,
		-0.145857, 0.307246, -0.940386,
		-0.333383, 0.879688, 0.339124,
		30.750916, 31.349024, 53.127426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262123, 30.301628, 53.272099>,  <30.984285, 30.733242, 52.890038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262123, 30.301628, 53.272099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463337, 29.973619, 53.381294>,  <31.584064, 29.776814, 53.446812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463337, 29.973619, 53.381294>,  <31.262123, 30.301628, 53.272099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463337, 29.973619, 53.381294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217294, -0.185713, -0.958276,
		0.836506, 0.541362, 0.084767,
		0.503032, -0.820023, 0.272985,
		31.614246, 29.727613, 53.463188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016918, 30.444901, 53.099064>,  <31.262123, 30.301628, 53.272099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016918, 30.444901, 53.099064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860495, 30.076885, 53.089233>,  <31.766642, 29.856075, 53.083336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860495, 30.076885, 53.089233>,  <32.016918, 30.444901, 53.099064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860495, 30.076885, 53.089233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054986, 0.003296, -0.998482,
		0.918723, -0.391813, 0.049300,
		-0.391056, -0.920039, -0.024572,
		31.743177, 29.800873, 53.081863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490887, 29.999798, 52.755947>,  <32.016918, 30.444901, 53.099064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490887, 29.999798, 52.755947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108440, 29.885513, 52.729969>,  <31.878973, 29.816942, 52.714382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108440, 29.885513, 52.729969>,  <32.490887, 29.999798, 52.755947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108440, 29.885513, 52.729969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115096, -0.162412, -0.979987,
		0.269448, -0.944452, 0.188169,
		-0.956112, -0.285713, -0.064941,
		31.821608, 29.799799, 52.710487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338737, 29.275648, 52.558010>,  <32.490887, 29.999798, 52.755947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338737, 29.275648, 52.558010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065903, 29.545223, 52.444477>,  <31.902201, 29.706968, 52.376358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065903, 29.545223, 52.444477>,  <32.338737, 29.275648, 52.558010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065903, 29.545223, 52.444477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231678, -0.168984, -0.958003,
		-0.693597, -0.719202, -0.040874,
		-0.682091, 0.673938, -0.283830,
		31.861275, 29.747404, 52.359329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655342, 29.044895, 52.171925>,  <32.338737, 29.275648, 52.558010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655342, 29.044895, 52.171925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773230, 29.409567, 52.057392>,  <31.843962, 29.628370, 51.988674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773230, 29.409567, 52.057392>,  <31.655342, 29.044895, 52.171925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773230, 29.409567, 52.057392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162906, -0.343185, -0.925033,
		-0.941596, 0.225979, -0.249660,
		0.294718, 0.911678, -0.286328,
		31.861645, 29.683071, 51.971493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345284, 29.087910, 51.515759>,  <31.655342, 29.044895, 52.171925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345284, 29.087910, 51.515759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588940, 29.404697, 51.532387>,  <31.735134, 29.594770, 51.542362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588940, 29.404697, 51.532387>,  <31.345284, 29.087910, 51.515759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588940, 29.404697, 51.532387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319579, -0.197153, -0.926822,
		-0.725820, 0.577852, -0.373192,
		0.609142, 0.791971, 0.041572,
		31.771683, 29.642288, 51.544857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284777, 29.477726, 50.926941>,  <31.345284, 29.087910, 51.515759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284777, 29.477726, 50.926941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648355, 29.588118, 51.051937>,  <31.866503, 29.654352, 51.126934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.648355, 29.588118, 51.051937>,  <31.284777, 29.477726, 50.926941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.648355, 29.588118, 51.051937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370521, -0.191126, -0.908947,
		-0.191126, 0.941969, -0.275980,
		0.908947, 0.275980, 0.312490,
		31.921040, 29.670912, 51.145683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.679485, 30.044386, 50.360382>,  <31.284777, 29.477726, 50.926941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.679485, 30.044386, 50.360382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962370, 29.866299, 50.580067>,  <32.132099, 29.759447, 50.711880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962370, 29.866299, 50.580067>,  <31.679485, 30.044386, 50.360382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962370, 29.866299, 50.580067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520255, -0.198297, -0.830670,
		0.478735, 0.873190, 0.091388,
		0.707211, -0.445216, 0.549213,
		32.174534, 29.732735, 50.744831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314232, 30.463560, 50.310741>,  <31.679485, 30.044386, 50.360382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314232, 30.463560, 50.310741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412922, 30.086184, 50.399326>,  <32.472137, 29.859758, 50.452477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412922, 30.086184, 50.399326>,  <32.314232, 30.463560, 50.310741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412922, 30.086184, 50.399326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605698, -0.028267, -0.795193,
		0.756477, 0.330335, 0.564466,
		0.246724, -0.943440, 0.221466,
		32.486938, 29.803152, 50.465767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999466, 30.562788, 50.304920>,  <32.314232, 30.463560, 50.310741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999466, 30.562788, 50.304920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969624, 30.164482, 50.283432>,  <32.951717, 29.925499, 50.270538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969624, 30.164482, 50.283432>,  <32.999466, 30.562788, 50.304920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969624, 30.164482, 50.283432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768876, -0.023137, -0.638979,
		0.635030, -0.088980, 0.767346,
		-0.074610, -0.995765, -0.053722,
		32.947239, 29.865753, 50.267315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673294, 30.344906, 50.445835>,  <32.999466, 30.562788, 50.304920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673294, 30.344906, 50.445835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467422, 30.069786, 50.241077>,  <33.343899, 29.904715, 50.118221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.467422, 30.069786, 50.241077>,  <33.673294, 30.344906, 50.445835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467422, 30.069786, 50.241077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737141, -0.050064, -0.673882,
		0.437870, -0.724170, 0.532774,
		-0.514678, -0.687802, -0.511894,
		33.313019, 29.863445, 50.087509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160843, 29.819801, 50.277775>,  <33.673294, 30.344906, 50.445835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160843, 29.819801, 50.277775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849621, 29.791113, 50.028137>,  <33.662888, 29.773901, 49.878357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849621, 29.791113, 50.028137>,  <34.160843, 29.819801, 50.277775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849621, 29.791113, 50.028137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625078, 0.010517, -0.780492,
		0.062543, -0.997369, 0.036650,
		-0.778053, -0.071724, -0.624091,
		33.616203, 29.769596, 49.840908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352051, 29.312054, 49.740551>,  <34.160843, 29.819801, 50.277775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352051, 29.312054, 49.740551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053001, 29.546509, 49.615650>,  <33.873569, 29.687181, 49.540710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053001, 29.546509, 49.615650>,  <34.352051, 29.312054, 49.740551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053001, 29.546509, 49.615650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506824, 0.199726, -0.838593,
		-0.429166, -0.785209, -0.446388,
		-0.747626, 0.586137, -0.312248,
		33.828712, 29.722349, 49.521976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411270, 29.272448, 49.072300>,  <34.352051, 29.312054, 49.740551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411270, 29.272448, 49.072300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147022, 29.571051, 49.104065>,  <33.988472, 29.750214, 49.123123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147022, 29.571051, 49.104065>,  <34.411270, 29.272448, 49.072300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147022, 29.571051, 49.104065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367379, 0.413726, -0.832985,
		-0.654688, -0.521109, -0.547567,
		-0.660618, 0.746509, 0.079417,
		33.948837, 29.795004, 49.127892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250984, 29.400129, 48.357979>,  <34.411270, 29.272448, 49.072300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250984, 29.400129, 48.357979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119682, 29.724728, 48.551357>,  <34.040901, 29.919487, 48.667385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119682, 29.724728, 48.551357>,  <34.250984, 29.400129, 48.357979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119682, 29.724728, 48.551357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296024, 0.574402, -0.763172,
		-0.897006, -0.107400, -0.428772,
		-0.328252, 0.811497, 0.483449,
		34.021206, 29.968176, 48.696392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746517, 29.587378, 47.960785>,  <34.250984, 29.400129, 48.357979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746517, 29.587378, 47.960785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881187, 29.906343, 48.161098>,  <33.961990, 30.097723, 48.281284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881187, 29.906343, 48.161098>,  <33.746517, 29.587378, 47.960785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881187, 29.906343, 48.161098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262256, 0.431377, -0.863212,
		-0.904363, 0.421953, -0.063893,
		0.336673, 0.797414, 0.500782,
		33.982189, 30.145567, 48.311333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385677, 30.132330, 47.761051>,  <33.746517, 29.587378, 47.960785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385677, 30.132330, 47.761051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711258, 30.296368, 47.925640>,  <33.906605, 30.394791, 48.024395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711258, 30.296368, 47.925640>,  <33.385677, 30.132330, 47.761051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711258, 30.296368, 47.925640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228028, 0.425920, -0.875555,
		-0.534316, 0.806483, 0.253164,
		0.813947, 0.410094, 0.411476,
		33.955441, 30.419395, 48.049084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422272, 30.685946, 47.322235>,  <33.385677, 30.132330, 47.761051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422272, 30.685946, 47.322235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773445, 30.678476, 47.513599>,  <33.984150, 30.673994, 47.628418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773445, 30.678476, 47.513599>,  <33.422272, 30.685946, 47.322235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773445, 30.678476, 47.513599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433005, 0.457324, -0.776763,
		-0.204283, 0.889104, 0.409589,
		0.877938, -0.018674, 0.478410,
		34.036827, 30.672874, 47.657124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681736, 31.391958, 47.456055>,  <33.422272, 30.685946, 47.322235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681736, 31.391958, 47.456055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018379, 31.176571, 47.439362>,  <34.220367, 31.047338, 47.429344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018379, 31.176571, 47.439362>,  <33.681736, 31.391958, 47.456055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018379, 31.176571, 47.439362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228680, 0.425296, -0.875688,
		0.489279, 0.727445, 0.481071,
		0.841612, -0.538467, -0.041737,
		34.270863, 31.015030, 47.426842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130478, 31.823948, 46.996975>,  <33.681736, 31.391958, 47.456055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130478, 31.823948, 46.996975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276478, 31.453300, 47.033096>,  <34.364079, 31.230911, 47.054768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276478, 31.453300, 47.033096>,  <34.130478, 31.823948, 46.996975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276478, 31.453300, 47.033096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249965, 0.004106, -0.968246,
		0.896823, 0.375982, 0.233121,
		0.365001, -0.926618, 0.090300,
		34.385979, 31.175316, 47.060184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861057, 31.873341, 46.744984>,  <34.130478, 31.823948, 46.996975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861057, 31.873341, 46.744984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725769, 31.497818, 46.718903>,  <34.644596, 31.272505, 46.703255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725769, 31.497818, 46.718903>,  <34.861057, 31.873341, 46.744984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725769, 31.497818, 46.718903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193176, -0.001446, -0.981163,
		0.921026, -0.344448, 0.181844,
		-0.338222, -0.938805, -0.065207,
		34.624302, 31.216177, 46.699341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328876, 31.501495, 46.332878>,  <34.861057, 31.873341, 46.744984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.328876, 31.501495, 46.332878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976990, 31.311935, 46.317329>,  <34.765858, 31.198200, 46.308002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976990, 31.311935, 46.317329>,  <35.328876, 31.501495, 46.332878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976990, 31.311935, 46.317329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100900, -0.106169, -0.989216,
		0.464662, -0.874155, 0.141215,
		-0.879721, -0.473899, -0.038869,
		34.713074, 31.169765, 46.305668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435017, 31.088379, 45.782047>,  <35.328876, 31.501495, 46.332878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435017, 31.088379, 45.782047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038746, 31.067211, 45.832249>,  <34.800983, 31.054510, 45.862370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038746, 31.067211, 45.832249>,  <35.435017, 31.088379, 45.782047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038746, 31.067211, 45.832249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117662, -0.131603, -0.984295,
		0.068606, -0.989889, 0.124150,
		-0.990681, -0.052921, 0.125501,
		34.741543, 31.051334, 45.869900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271923, 30.590006, 45.395348>,  <35.435017, 31.088379, 45.782047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271923, 30.590006, 45.395348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915661, 30.762135, 45.454067>,  <34.701904, 30.865412, 45.489300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915661, 30.762135, 45.454067>,  <35.271923, 30.590006, 45.395348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915661, 30.762135, 45.454067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225742, -0.138250, -0.964327,
		-0.394678, -0.892024, 0.220276,
		-0.890657, 0.430324, 0.146803,
		34.648464, 30.891232, 45.498108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745441, 30.133617, 45.139988>,  <35.271923, 30.590006, 45.395348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745441, 30.133617, 45.139988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563740, 30.489901, 45.146828>,  <34.454720, 30.703671, 45.150932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563740, 30.489901, 45.146828>,  <34.745441, 30.133617, 45.139988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563740, 30.489901, 45.146828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232010, -0.099745, -0.967586,
		-0.860129, -0.443501, 0.251963,
		-0.454257, 0.890706, 0.017103,
		34.427464, 30.757113, 45.151958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083492, 30.079533, 44.822186>,  <34.745441, 30.133617, 45.139988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083492, 30.079533, 44.822186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133255, 30.475950, 44.802788>,  <34.163113, 30.713800, 44.791149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133255, 30.475950, 44.802788>,  <34.083492, 30.079533, 44.822186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133255, 30.475950, 44.802788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057387, -0.041608, -0.997484,
		-0.990570, 0.126875, 0.051697,
		0.124405, 0.991045, -0.048496,
		34.170578, 30.773264, 44.788239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620770, 30.296162, 44.308903>,  <34.083492, 30.079533, 44.822186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620770, 30.296162, 44.308903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855965, 30.616581, 44.353790>,  <33.997082, 30.808832, 44.380722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855965, 30.616581, 44.353790>,  <33.620770, 30.296162, 44.308903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855965, 30.616581, 44.353790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056584, 0.179132, -0.982197,
		-0.806890, 0.571168, 0.150654,
		0.587986, 0.801049, 0.112221,
		34.032360, 30.856895, 44.387455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167583, 30.798399, 44.029156>,  <33.620770, 30.296162, 44.308903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167583, 30.798399, 44.029156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538265, 30.947800, 44.012581>,  <33.760674, 31.037441, 44.002636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538265, 30.947800, 44.012581>,  <33.167583, 30.798399, 44.029156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538265, 30.947800, 44.012581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167340, 0.311406, -0.935427,
		-0.336480, 0.873797, 0.351083,
		0.926703, 0.373503, -0.041440,
		33.816277, 31.059851, 44.000149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150078, 31.323954, 43.532410>,  <33.167583, 30.798399, 44.029156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150078, 31.323954, 43.532410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546814, 31.275270, 43.547596>,  <33.784855, 31.246061, 43.556705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546814, 31.275270, 43.547596>,  <33.150078, 31.323954, 43.532410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546814, 31.275270, 43.547596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054444, 0.135089, -0.989336,
		0.115282, 0.983330, 0.140613,
		0.991840, -0.121709, 0.037963,
		33.844364, 31.238758, 43.558987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461758, 31.894558, 43.333893>,  <33.150078, 31.323954, 43.532410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461758, 31.894558, 43.333893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734509, 31.610909, 43.262135>,  <33.898159, 31.440720, 43.219078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734509, 31.610909, 43.262135>,  <33.461758, 31.894558, 43.333893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734509, 31.610909, 43.262135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003128, 0.242431, -0.970163,
		0.731458, 0.662096, 0.163091,
		0.681879, -0.709124, -0.179400,
		33.939072, 31.398170, 43.208313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062424, 32.246639, 42.938953>,  <33.461758, 31.894558, 43.333893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062424, 32.246639, 42.938953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083183, 31.852465, 42.874184>,  <34.095638, 31.615959, 42.835320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083183, 31.852465, 42.874184>,  <34.062424, 32.246639, 42.938953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083183, 31.852465, 42.874184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159427, 0.168243, -0.972768,
		0.985844, 0.024674, 0.165837,
		0.051903, -0.985437, -0.161928,
		34.098755, 31.556833, 42.825603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604931, 32.213955, 42.569145>,  <34.062424, 32.246639, 42.938953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604931, 32.213955, 42.569145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395645, 31.881119, 42.495533>,  <34.270073, 31.681416, 42.451366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395645, 31.881119, 42.495533>,  <34.604931, 32.213955, 42.569145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395645, 31.881119, 42.495533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012866, 0.223635, -0.974588,
		0.852105, -0.507549, -0.127714,
		-0.523212, -0.832095, -0.184030,
		34.238682, 31.631491, 42.440323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969704, 31.876654, 42.014725>,  <34.604931, 32.213955, 42.569145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969704, 31.876654, 42.014725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602367, 31.718891, 42.001511>,  <34.381966, 31.624233, 41.993584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602367, 31.718891, 42.001511>,  <34.969704, 31.876654, 42.014725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602367, 31.718891, 42.001511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024774, 0.140581, -0.989759,
		0.395014, -0.908118, -0.138873,
		-0.918341, -0.394409, -0.033034,
		34.326866, 31.600569, 41.991600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022362, 31.325075, 41.428375>,  <34.969704, 31.876654, 42.014725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022362, 31.325075, 41.428375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639591, 31.418766, 41.497005>,  <34.409931, 31.474979, 41.538185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639591, 31.418766, 41.497005>,  <35.022362, 31.325075, 41.428375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639591, 31.418766, 41.497005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171881, 0.019282, -0.984929,
		-0.234004, -0.971991, 0.021807,
		-0.956922, 0.234225, 0.171578,
		34.352516, 31.489033, 41.548477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671555, 30.930471, 40.993675>,  <35.022362, 31.325075, 41.428375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671555, 30.930471, 40.993675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415066, 31.226349, 41.075348>,  <34.261173, 31.403875, 41.124352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415066, 31.226349, 41.075348>,  <34.671555, 30.930471, 40.993675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415066, 31.226349, 41.075348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252733, 0.047659, -0.966362,
		-0.724543, -0.671254, 0.156385,
		-0.641221, 0.739694, 0.204179,
		34.222698, 31.448257, 41.136600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179085, 30.822678, 40.547855>,  <34.671555, 30.930471, 40.993675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179085, 30.822678, 40.547855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056461, 31.180790, 40.677158>,  <33.982887, 31.395657, 40.754742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056461, 31.180790, 40.677158>,  <34.179085, 30.822678, 40.547855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056461, 31.180790, 40.677158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286245, 0.237177, -0.928338,
		-0.907791, -0.377122, 0.183561,
		-0.306560, 0.895280, 0.323256,
		33.964493, 31.449373, 40.774136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481689, 31.066065, 40.242325>,  <34.179085, 30.822678, 40.547855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481689, 31.066065, 40.242325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704010, 31.394554, 40.293976>,  <33.837402, 31.591648, 40.324966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704010, 31.394554, 40.293976>,  <33.481689, 31.066065, 40.242325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704010, 31.394554, 40.293976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248247, 0.312197, -0.917010,
		-0.793383, 0.477621, 0.377386,
		0.555802, 0.821226, 0.129123,
		33.870750, 31.640923, 40.332714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174370, 31.621437, 39.855045>,  <33.481689, 31.066065, 40.242325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174370, 31.621437, 39.855045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535259, 31.781658, 39.918991>,  <33.751793, 31.877790, 39.957359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535259, 31.781658, 39.918991>,  <33.174370, 31.621437, 39.855045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535259, 31.781658, 39.918991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205241, 0.724785, -0.657694,
		-0.379308, 0.560575, 0.736126,
		0.902220, 0.400552, 0.159864,
		33.805923, 31.901823, 39.966949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077431, 32.331451, 39.756599>,  <33.174370, 31.621437, 39.855045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077431, 32.331451, 39.756599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476292, 32.314564, 39.731594>,  <33.715607, 32.304432, 39.716591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.476292, 32.314564, 39.731594>,  <33.077431, 32.331451, 39.756599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.476292, 32.314564, 39.731594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006315, 0.779130, -0.626831,
		0.075170, 0.625440, 0.776643,
		0.997151, -0.042214, -0.062517,
		33.775436, 32.301899, 39.712837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201469, 33.008305, 39.679359>,  <33.077431, 32.331451, 39.756599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201469, 33.008305, 39.679359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514278, 32.789783, 39.559361>,  <33.701962, 32.658672, 39.487362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514278, 32.789783, 39.559361>,  <33.201469, 33.008305, 39.679359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514278, 32.789783, 39.559361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098144, 0.583275, -0.806324,
		0.615479, 0.601118, 0.509748,
		0.782019, -0.546304, -0.299998,
		33.748882, 32.625893, 39.469360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761890, 33.582890, 39.503845>,  <33.201469, 33.008305, 39.679359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761890, 33.582890, 39.503845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849190, 33.230091, 39.336777>,  <33.901569, 33.018414, 39.236534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849190, 33.230091, 39.336777>,  <33.761890, 33.582890, 39.503845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849190, 33.230091, 39.336777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335210, 0.469701, -0.816710,
		0.916516, 0.038237, 0.398165,
		0.218247, -0.881997, -0.417671,
		33.914665, 32.965492, 39.211475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506920, 33.499805, 39.234543>,  <33.761890, 33.582890, 39.503845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506920, 33.499805, 39.234543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254356, 33.265278, 39.031544>,  <34.102821, 33.124561, 38.909744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254356, 33.265278, 39.031544>,  <34.506920, 33.499805, 39.234543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254356, 33.265278, 39.031544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383131, 0.333128, -0.861531,
		0.674196, -0.738414, 0.014298,
		-0.631404, -0.586319, -0.507502,
		34.064934, 33.089382, 38.879292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852047, 33.201389, 38.744259>,  <34.506920, 33.499805, 39.234543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852047, 33.201389, 38.744259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473354, 33.169476, 38.619461>,  <34.246140, 33.150326, 38.544582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.473354, 33.169476, 38.619461>,  <34.852047, 33.201389, 38.744259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473354, 33.169476, 38.619461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273131, 0.314298, -0.909184,
		0.170594, -0.945966, -0.275764,
		-0.946730, -0.079782, -0.311990,
		34.189335, 33.145542, 38.525864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619335, 33.195988, 38.754745>,  <34.852047, 33.201389, 38.744259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619335, 33.195988, 38.754745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857189, 32.995872, 38.502995>,  <35.999901, 32.875801, 38.351944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857189, 32.995872, 38.502995>,  <35.619335, 33.195988, 38.754745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857189, 32.995872, 38.502995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276762, -0.607599, 0.744464,
		-0.754857, -0.616874, -0.222840,
		0.594638, -0.500290, -0.629378,
		36.035580, 32.845787, 38.314182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.688854, 32.490658, 38.958836>,  <35.619335, 33.195988, 38.754745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.688854, 32.490658, 38.958836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013519, 32.539639, 38.730377>,  <36.208317, 32.569027, 38.593300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013519, 32.539639, 38.730377>,  <35.688854, 32.490658, 38.958836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013519, 32.539639, 38.730377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550705, -0.486416, 0.678324,
		-0.194756, -0.865105, -0.462238,
		0.811661, 0.122449, -0.571150,
		36.257019, 32.576374, 38.559032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051880, 31.812296, 38.843056>,  <35.688854, 32.490658, 38.958836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051880, 31.812296, 38.843056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318226, 32.106304, 38.791882>,  <36.478035, 32.282711, 38.761177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.318226, 32.106304, 38.791882>,  <36.051880, 31.812296, 38.843056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318226, 32.106304, 38.791882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620353, -0.450200, 0.642248,
		0.414471, -0.507014, -0.755745,
		0.665866, 0.735021, -0.127933,
		36.517986, 32.326809, 38.753502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731129, 31.436432, 38.777939>,  <36.051880, 31.812296, 38.843056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731129, 31.436432, 38.777939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829948, 31.802696, 38.904766>,  <36.889240, 32.022457, 38.980862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829948, 31.802696, 38.904766>,  <36.731129, 31.436432, 38.777939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829948, 31.802696, 38.904766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498258, -0.400674, 0.768895,
		0.831088, -0.031974, -0.555221,
		0.247047, 0.915663, 0.317064,
		36.904064, 32.077396, 38.999886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229298, 31.268511, 39.118076>,  <36.731129, 31.436432, 38.777939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229298, 31.268511, 39.118076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147499, 31.644247, 39.228218>,  <37.098419, 31.869690, 39.294304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147499, 31.644247, 39.228218>,  <37.229298, 31.268511, 39.118076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147499, 31.644247, 39.228218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331846, -0.198111, 0.922296,
		0.920901, 0.279982, -0.271203,
		-0.204497, 0.939341, 0.275352,
		37.086151, 31.926050, 39.310825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822136, 31.636765, 39.381252>,  <37.229298, 31.268511, 39.118076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.822136, 31.636765, 39.381252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523689, 31.842688, 39.550144>,  <37.344620, 31.966242, 39.651478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523689, 31.842688, 39.550144>,  <37.822136, 31.636765, 39.381252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523689, 31.842688, 39.550144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377148, -0.195816, 0.905216,
		0.548692, 0.834642, -0.048056,
		-0.746121, 0.514809, 0.422226,
		37.299854, 31.997131, 39.676811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031261, 32.105820, 39.836109>,  <37.822136, 31.636765, 39.381252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031261, 32.105820, 39.836109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655724, 32.065220, 39.967724>,  <37.430401, 32.040859, 40.046692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655724, 32.065220, 39.967724>,  <38.031261, 32.105820, 39.836109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655724, 32.065220, 39.967724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330741, 0.000030, 0.943721,
		-0.095797, 0.994835, 0.033542,
		-0.938847, -0.101500, 0.329036,
		37.374069, 32.034771, 40.066433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983463, 32.659061, 40.414608>,  <38.031261, 32.105820, 39.836109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983463, 32.659061, 40.414608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685184, 32.394352, 40.445553>,  <37.506218, 32.235527, 40.464119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685184, 32.394352, 40.445553>,  <37.983463, 32.659061, 40.414608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685184, 32.394352, 40.445553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166188, -0.072304, 0.983440,
		-0.645223, 0.746208, 0.163896,
		-0.745701, -0.661775, 0.077358,
		37.461475, 32.195820, 40.468761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687447, 32.872204, 40.967884>,  <37.983463, 32.659061, 40.414608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687447, 32.872204, 40.967884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556374, 32.496441, 40.927616>,  <37.477730, 32.270985, 40.903454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556374, 32.496441, 40.927616>,  <37.687447, 32.872204, 40.967884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556374, 32.496441, 40.927616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102925, -0.141419, 0.984585,
		-0.939164, 0.312273, 0.143030,
		-0.327687, -0.939407, -0.100675,
		37.458069, 32.214619, 40.897415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189041, 32.724186, 41.479088>,  <37.687447, 32.872204, 40.967884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189041, 32.724186, 41.479088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273308, 32.342216, 41.395428>,  <37.323868, 32.113037, 41.345230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273308, 32.342216, 41.395428>,  <37.189041, 32.724186, 41.479088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273308, 32.342216, 41.395428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066308, -0.227419, 0.971537,
		-0.975306, -0.190803, -0.111229,
		0.210668, -0.954921, -0.209152,
		37.336510, 32.055740, 41.332684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636372, 32.337395, 41.726910>,  <37.189041, 32.724186, 41.479088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636372, 32.337395, 41.726910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947109, 32.088188, 41.690315>,  <37.133553, 31.938665, 41.668358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947109, 32.088188, 41.690315>,  <36.636372, 32.337395, 41.726910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947109, 32.088188, 41.690315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013505, -0.161736, 0.986742,
		-0.629550, -0.765308, -0.134057,
		0.776843, -0.623013, -0.091486,
		37.180161, 31.901285, 41.662868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496185, 31.767483, 42.154144>,  <36.636372, 32.337395, 41.726910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496185, 31.767483, 42.154144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890667, 31.713280, 42.116112>,  <37.127357, 31.680758, 42.093292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890667, 31.713280, 42.116112>,  <36.496185, 31.767483, 42.154144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890667, 31.713280, 42.116112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054515, -0.276483, 0.959471,
		-0.156303, -0.951418, -0.265282,
		0.986204, -0.135506, -0.095082,
		37.186527, 31.672626, 42.087585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517807, 31.209263, 42.586670>,  <36.496185, 31.767483, 42.154144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517807, 31.209263, 42.586670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891537, 31.347795, 42.552963>,  <37.115772, 31.430916, 42.532742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891537, 31.347795, 42.552963>,  <36.517807, 31.209263, 42.586670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891537, 31.347795, 42.552963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210534, -0.345467, 0.914510,
		0.287613, -0.872185, -0.395691,
		0.934320, 0.346331, -0.084263,
		37.171833, 31.451694, 42.527683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992947, 30.599432, 42.770767>,  <36.517807, 31.209263, 42.586670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992947, 30.599432, 42.770767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165699, 30.955210, 42.830593>,  <37.269352, 31.168676, 42.866489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.165699, 30.955210, 42.830593>,  <36.992947, 30.599432, 42.770767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165699, 30.955210, 42.830593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271285, -0.286248, 0.918949,
		0.860165, -0.356302, -0.364917,
		0.431880, 0.889444, 0.149561,
		37.295261, 31.222042, 42.875462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606262, 30.433273, 43.033566>,  <36.992947, 30.599432, 42.770767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606262, 30.433273, 43.033566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582333, 30.817089, 43.143623>,  <37.567974, 31.047379, 43.209660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582333, 30.817089, 43.143623>,  <37.606262, 30.433273, 43.033566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582333, 30.817089, 43.143623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276053, -0.248987, 0.928332,
		0.959279, 0.131494, -0.249987,
		-0.059827, 0.959539, 0.275147,
		37.564384, 31.104950, 43.226166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173119, 30.598446, 43.552902>,  <37.606262, 30.433273, 43.033566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173119, 30.598446, 43.552902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893501, 30.877474, 43.615814>,  <37.725731, 31.044891, 43.653561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893501, 30.877474, 43.615814>,  <38.173119, 30.598446, 43.552902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893501, 30.877474, 43.615814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144721, -0.077391, 0.986441,
		0.700285, 0.712324, -0.046853,
		-0.699040, 0.697570, 0.157284,
		37.683788, 31.086744, 43.662998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449596, 31.050125, 44.130947>,  <38.173119, 30.598446, 43.552902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449596, 31.050125, 44.130947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058758, 31.125847, 44.092068>,  <37.824253, 31.171280, 44.068741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058758, 31.125847, 44.092068>,  <38.449596, 31.050125, 44.130947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058758, 31.125847, 44.092068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108742, -0.051542, 0.992733,
		0.182918, 0.980565, 0.070947,
		-0.977096, 0.189303, -0.097201,
		37.765629, 31.182638, 44.062908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258720, 31.430305, 44.706974>,  <38.449596, 31.050125, 44.130947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258720, 31.430305, 44.706974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883068, 31.318970, 44.626415>,  <37.657677, 31.252169, 44.578079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.883068, 31.318970, 44.626415>,  <38.258720, 31.430305, 44.706974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883068, 31.318970, 44.626415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175410, -0.115569, 0.977689,
		-0.295405, 0.953504, 0.059711,
		-0.939131, -0.278340, -0.201394,
		37.601330, 31.235468, 44.565998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.993069, 31.635702, 45.249928>,  <38.258720, 31.430305, 44.706974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.993069, 31.635702, 45.249928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717300, 31.385199, 45.104324>,  <37.551838, 31.234898, 45.016964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717300, 31.385199, 45.104324>,  <37.993069, 31.635702, 45.249928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717300, 31.385199, 45.104324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280744, -0.232232, 0.931263,
		-0.667744, 0.744225, -0.015712,
		-0.689421, -0.626257, -0.364008,
		37.510475, 31.197321, 44.995121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487301, 31.917210, 45.455753>,  <37.993069, 31.635702, 45.249928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487301, 31.917210, 45.455753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411709, 31.534225, 45.368523>,  <37.366352, 31.304436, 45.316185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411709, 31.534225, 45.368523>,  <37.487301, 31.917210, 45.455753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411709, 31.534225, 45.368523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149655, -0.191399, 0.970036,
		-0.970510, 0.215954, -0.107118,
		-0.188981, -0.957461, -0.218073,
		37.355015, 31.246986, 45.303101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867973, 31.736612, 45.712879>,  <37.487301, 31.917210, 45.455753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867973, 31.736612, 45.712879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060871, 31.387455, 45.683212>,  <37.176609, 31.177961, 45.665413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.060871, 31.387455, 45.683212>,  <36.867973, 31.736612, 45.712879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060871, 31.387455, 45.683212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267170, -0.227173, 0.936490,
		-0.834303, -0.431801, -0.342763,
		0.482243, -0.872892, -0.074167,
		37.205544, 31.125587, 45.660961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425209, 31.290581, 45.973907>,  <36.867973, 31.736612, 45.712879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425209, 31.290581, 45.973907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780521, 31.107368, 45.987579>,  <36.993710, 30.997440, 45.995785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780521, 31.107368, 45.987579>,  <36.425209, 31.290581, 45.973907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780521, 31.107368, 45.987579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166533, -0.251815, 0.953339,
		-0.428051, -0.852524, -0.299959,
		0.888279, -0.458031, 0.034184,
		37.047005, 30.969959, 45.997833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416004, 30.552429, 46.099388>,  <36.425209, 31.290581, 45.973907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416004, 30.552429, 46.099388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753731, 30.709078, 46.245686>,  <36.956367, 30.803066, 46.333466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753731, 30.709078, 46.245686>,  <36.416004, 30.552429, 46.099388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753731, 30.709078, 46.245686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203379, -0.397272, 0.894881,
		0.495754, -0.829944, -0.255774,
		0.844313, 0.391622, 0.365743,
		37.007023, 30.826565, 46.355408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729481, 30.072329, 46.438469>,  <36.416004, 30.552429, 46.099388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729481, 30.072329, 46.438469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891155, 30.401140, 46.598923>,  <36.988159, 30.598427, 46.695194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891155, 30.401140, 46.598923>,  <36.729481, 30.072329, 46.438469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891155, 30.401140, 46.598923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084839, -0.402967, 0.911274,
		0.910736, -0.402352, -0.093132,
		0.404182, 0.822028, 0.401132,
		37.012409, 30.647749, 46.719261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237774, 29.876377, 47.095894>,  <36.729481, 30.072329, 46.438469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237774, 29.876377, 47.095894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167927, 30.263737, 47.167130>,  <37.126019, 30.496153, 47.209869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.167927, 30.263737, 47.167130>,  <37.237774, 29.876377, 47.095894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167927, 30.263737, 47.167130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052149, -0.189711, 0.980454,
		0.983254, 0.161918, 0.083628,
		-0.174619, 0.968397, 0.178090,
		37.115540, 30.554256, 47.220558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657642, 30.144480, 47.701015>,  <37.237774, 29.876377, 47.095894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657642, 30.144480, 47.701015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354675, 30.404415, 47.675652>,  <37.172894, 30.560377, 47.660431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.354675, 30.404415, 47.675652>,  <37.657642, 30.144480, 47.701015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.354675, 30.404415, 47.675652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158409, -0.088670, 0.983384,
		0.633418, 0.754882, 0.170101,
		-0.757422, 0.649839, -0.063414,
		37.127449, 30.599367, 47.656628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733620, 30.559404, 48.221649>,  <37.657642, 30.144480, 47.701015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733620, 30.559404, 48.221649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352085, 30.645872, 48.138248>,  <37.123165, 30.697752, 48.088207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352085, 30.645872, 48.138248>,  <37.733620, 30.559404, 48.221649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352085, 30.645872, 48.138248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199259, 0.063951, 0.977858,
		0.224717, 0.974259, -0.017925,
		-0.953833, 0.216170, -0.208501,
		37.065933, 30.710724, 48.075699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586704, 31.179001, 48.514858>,  <37.733620, 30.559404, 48.221649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586704, 31.179001, 48.514858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245644, 30.973337, 48.477715>,  <37.041008, 30.849939, 48.455429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245644, 30.973337, 48.477715>,  <37.586704, 31.179001, 48.514858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245644, 30.973337, 48.477715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179127, 0.120716, 0.976392,
		-0.490812, 0.849157, -0.195029,
		-0.852653, -0.514160, -0.092858,
		36.989849, 30.819090, 48.449856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147514, 31.515234, 48.916176>,  <37.586704, 31.179001, 48.514858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147514, 31.515234, 48.916176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962578, 31.163193, 48.872990>,  <36.851616, 30.951967, 48.847076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962578, 31.163193, 48.872990>,  <37.147514, 31.515234, 48.916176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962578, 31.163193, 48.872990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427821, 0.114765, 0.896548,
		-0.776664, 0.460704, -0.429587,
		-0.462345, -0.880103, -0.107965,
		36.823875, 30.899162, 48.840599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474972, 31.646446, 49.109795>,  <37.147514, 31.515234, 48.916176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474972, 31.646446, 49.109795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565815, 31.257477, 49.131016>,  <36.620319, 31.024096, 49.143749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565815, 31.257477, 49.131016>,  <36.474972, 31.646446, 49.109795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565815, 31.257477, 49.131016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362861, -0.033943, 0.931225,
		-0.903744, -0.230740, -0.360563,
		0.227109, -0.972423, 0.053050,
		36.633949, 30.965750, 49.146931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863564, 31.353771, 49.328625>,  <36.474972, 31.646446, 49.109795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863564, 31.353771, 49.328625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150318, 31.085047, 49.403179>,  <36.322372, 30.923813, 49.447910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.150318, 31.085047, 49.403179>,  <35.863564, 31.353771, 49.328625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150318, 31.085047, 49.403179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338416, -0.101585, 0.935497,
		-0.609542, -0.733725, -0.300177,
		0.716891, -0.671810, 0.186384,
		36.365387, 30.883503, 49.459095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464470, 30.911795, 49.678722>,  <35.863564, 31.353771, 49.328625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464470, 30.911795, 49.678722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849770, 30.835512, 49.754391>,  <36.080948, 30.789743, 49.799789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849770, 30.835512, 49.754391>,  <35.464470, 30.911795, 49.678722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849770, 30.835512, 49.754391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209812, -0.094427, 0.973171,
		-0.167725, -0.977095, -0.130969,
		0.963248, -0.190704, 0.189169,
		36.138744, 30.778301, 49.811142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562595, 30.286224, 50.209167>,  <35.464470, 30.911795, 49.678722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562595, 30.286224, 50.209167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892189, 30.512781, 50.215508>,  <36.089947, 30.648714, 50.219311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892189, 30.512781, 50.215508>,  <35.562595, 30.286224, 50.209167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892189, 30.512781, 50.215508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065478, -0.122963, 0.990249,
		0.562816, -0.814913, -0.138405,
		0.823985, 0.566390, 0.015847,
		36.139385, 30.682697, 50.220261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940826, 29.901541, 50.634476>,  <35.562595, 30.286224, 50.209167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940826, 29.901541, 50.634476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133171, 30.252102, 50.623940>,  <36.248577, 30.462439, 50.617619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.133171, 30.252102, 50.623940>,  <35.940826, 29.901541, 50.634476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133171, 30.252102, 50.623940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125495, -0.039064, 0.991325,
		0.867770, -0.479994, -0.128768,
		0.480860, 0.876402, -0.026339,
		36.277428, 30.515022, 50.616039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591984, 29.857826, 51.064892>,  <35.940826, 29.901541, 50.634476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591984, 29.857826, 51.064892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490810, 30.244617, 51.052376>,  <36.430107, 30.476692, 51.044865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490810, 30.244617, 51.052376>,  <36.591984, 29.857826, 51.064892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490810, 30.244617, 51.052376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122336, 0.064049, 0.990420,
		0.959719, 0.246679, -0.134496,
		-0.252930, 0.966978, -0.031291,
		36.414932, 30.534712, 51.042988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100475, 30.074795, 51.452003>,  <36.591984, 29.857826, 51.064892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100475, 30.074795, 51.452003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825069, 30.364151, 51.431374>,  <36.659828, 30.537764, 51.418995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.825069, 30.364151, 51.431374>,  <37.100475, 30.074795, 51.452003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825069, 30.364151, 51.431374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181580, 0.240804, 0.953437,
		0.702126, 0.647087, -0.297150,
		-0.688512, 0.723389, -0.051576,
		36.618515, 30.581167, 51.415901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283447, 30.640713, 51.850639>,  <37.100475, 30.074795, 51.452003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283447, 30.640713, 51.850639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899597, 30.752941, 51.842602>,  <36.669289, 30.820278, 51.837780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.899597, 30.752941, 51.842602>,  <37.283447, 30.640713, 51.850639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899597, 30.752941, 51.842602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014653, 0.121202, 0.992520,
		0.280906, 0.952151, -0.120419,
		-0.959623, 0.280569, -0.020095,
		36.611710, 30.837112, 51.836575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204319, 31.196318, 52.276085>,  <37.283447, 30.640713, 51.850639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204319, 31.196318, 52.276085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835770, 31.043409, 52.247963>,  <36.614639, 30.951664, 52.231091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835770, 31.043409, 52.247963>,  <37.204319, 31.196318, 52.276085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835770, 31.043409, 52.247963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026754, -0.118071, 0.992645,
		-0.387762, 0.916475, 0.098560,
		-0.921371, -0.382273, -0.070302,
		36.559357, 30.928728, 52.226871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847324, 31.647484, 52.820934>,  <37.204319, 31.196318, 52.276085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847324, 31.647484, 52.820934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628654, 31.313000, 52.803516>,  <36.497452, 31.112309, 52.793064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.628654, 31.313000, 52.803516>,  <36.847324, 31.647484, 52.820934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.628654, 31.313000, 52.803516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137893, 0.038610, 0.989694,
		-0.825911, 0.547049, -0.136415,
		-0.546678, -0.836210, -0.043546,
		36.464649, 31.062138, 52.790451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517719, 31.948980, 52.487915>,  <36.847324, 31.647484, 52.820934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517719, 31.948980, 52.487915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644775, 32.287605, 52.658768>,  <37.721008, 32.490780, 52.761280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644775, 32.287605, 52.658768>,  <37.517719, 31.948980, 52.487915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644775, 32.287605, 52.658768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082431, 0.424099, -0.901856,
		-0.944620, 0.321677, 0.064929,
		0.317643, 0.846560, 0.427129,
		37.740067, 32.541573, 52.786907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234512, 32.460594, 52.088654>,  <37.517719, 31.948980, 52.487915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234512, 32.460594, 52.088654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519161, 32.657585, 52.289074>,  <37.689953, 32.775780, 52.409328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519161, 32.657585, 52.289074>,  <37.234512, 32.460594, 52.088654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519161, 32.657585, 52.289074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231839, 0.508625, -0.829187,
		-0.663206, 0.706234, 0.247774,
		0.711624, 0.492478, 0.501055,
		37.732647, 32.805328, 52.439392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090195, 33.244179, 51.947079>,  <37.234512, 32.460594, 52.088654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090195, 33.244179, 51.947079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470760, 33.158382, 52.035442>,  <37.699100, 33.106903, 52.088459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470760, 33.158382, 52.035442>,  <37.090195, 33.244179, 51.947079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470760, 33.158382, 52.035442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289117, 0.375516, -0.880568,
		0.105923, 0.901654, 0.419285,
		0.951416, -0.214495, 0.220907,
		37.756184, 33.094032, 52.101715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338501, 33.840355, 51.631775>,  <37.090195, 33.244179, 51.947079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338501, 33.840355, 51.631775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656921, 33.610401, 51.707470>,  <37.847973, 33.472431, 51.752888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656921, 33.610401, 51.707470>,  <37.338501, 33.840355, 51.631775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656921, 33.610401, 51.707470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443692, 0.341666, -0.828494,
		0.411627, 0.743490, 0.527054,
		0.796053, -0.574880, 0.189242,
		37.895737, 33.437939, 51.764244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038586, 34.253994, 51.533539>,  <37.338501, 33.840355, 51.631775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038586, 34.253994, 51.533539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120529, 33.868168, 51.467030>,  <38.169693, 33.636673, 51.427124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120529, 33.868168, 51.467030>,  <38.038586, 34.253994, 51.533539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120529, 33.868168, 51.467030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454901, 0.244238, -0.856395,
		0.866660, 0.099800, 0.488816,
		0.204855, -0.964566, -0.166272,
		38.181984, 33.578796, 51.417149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575954, 34.289108, 51.121880>,  <38.038586, 34.253994, 51.533539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575954, 34.289108, 51.121880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482975, 33.903759, 51.068390>,  <38.427189, 33.672550, 51.036297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.482975, 33.903759, 51.068390>,  <38.575954, 34.289108, 51.121880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482975, 33.903759, 51.068390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377546, 0.037332, -0.925238,
		0.896340, -0.265558, 0.355039,
		-0.232450, -0.963372, -0.133722,
		38.413239, 33.614746, 51.028275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222164, 33.988232, 50.920174>,  <38.575954, 34.289108, 51.121880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222164, 33.988232, 50.920174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897614, 33.788898, 50.797970>,  <38.702885, 33.669300, 50.724648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.897614, 33.788898, 50.797970>,  <39.222164, 33.988232, 50.920174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897614, 33.788898, 50.797970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361962, -0.017959, -0.932020,
		0.458970, -0.866799, 0.194949,
		-0.811376, -0.498334, -0.305506,
		38.654202, 33.639397, 50.706318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496277, 33.502995, 50.477715>,  <39.222164, 33.988232, 50.920174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496277, 33.502995, 50.477715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112049, 33.491005, 50.367149>,  <38.881512, 33.483810, 50.300812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112049, 33.491005, 50.367149>,  <39.496277, 33.502995, 50.477715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112049, 33.491005, 50.367149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274858, 0.047438, -0.960314,
		0.041879, -0.998425, -0.037334,
		-0.960572, -0.029955, -0.276412,
		38.823879, 33.482014, 50.284225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461987, 33.063438, 49.823978>,  <39.496277, 33.502995, 50.477715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461987, 33.063438, 49.823978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111446, 33.256096, 49.821766>,  <38.901123, 33.371689, 49.820438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111446, 33.256096, 49.821766>,  <39.461987, 33.063438, 49.823978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111446, 33.256096, 49.821766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003580, -0.018003, -0.999832,
		-0.481660, -0.876184, 0.017501,
		-0.876351, 0.481641, -0.005535,
		38.848541, 33.400589, 49.820107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985790, 32.676384, 49.566502>,  <39.461987, 33.063438, 49.823978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985790, 32.676384, 49.566502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849636, 33.045593, 49.494759>,  <38.767944, 33.267120, 49.451714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849636, 33.045593, 49.494759>,  <38.985790, 32.676384, 49.566502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849636, 33.045593, 49.494759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021219, -0.183161, -0.982854,
		-0.940048, -0.338350, 0.042759,
		-0.340380, 0.923023, -0.179360,
		38.747520, 33.322498, 49.440952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431801, 32.603916, 49.004074>,  <38.985790, 32.676384, 49.566502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431801, 32.603916, 49.004074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486889, 33.000088, 49.000397>,  <38.519943, 33.237789, 48.998192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.486889, 33.000088, 49.000397>,  <38.431801, 32.603916, 49.004074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486889, 33.000088, 49.000397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008671, -0.010484, -0.999907,
		-0.990433, 0.137631, -0.010032,
		0.137723, 0.990428, -0.009191,
		38.528206, 33.297215, 48.997639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956745, 32.824650, 48.490742>,  <38.431801, 32.603916, 49.004074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956745, 32.824650, 48.490742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238575, 33.105427, 48.532429>,  <38.407673, 33.273891, 48.557442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238575, 33.105427, 48.532429>,  <37.956745, 32.824650, 48.490742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238575, 33.105427, 48.532429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182945, -0.037775, -0.982397,
		-0.685647, 0.711233, -0.155031,
		0.704570, 0.701940, 0.104216,
		38.449947, 33.316010, 48.563694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804634, 33.518398, 48.154720>,  <37.956745, 32.824650, 48.490742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804634, 33.518398, 48.154720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200600, 33.479031, 48.195492>,  <38.438179, 33.455410, 48.219955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200600, 33.479031, 48.195492>,  <37.804634, 33.518398, 48.154720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200600, 33.479031, 48.195492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093204, -0.089547, -0.991612,
		0.106726, 0.991108, -0.079470,
		0.989910, -0.098424, 0.101932,
		38.497574, 33.449505, 48.226070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099937, 34.093533, 47.670792>,  <37.804634, 33.518398, 48.154720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099937, 34.093533, 47.670792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386162, 33.819881, 47.727283>,  <38.557896, 33.655693, 47.761177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386162, 33.819881, 47.727283>,  <38.099937, 34.093533, 47.670792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386162, 33.819881, 47.727283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167649, -0.028082, -0.985447,
		0.678135, 0.728824, 0.094599,
		0.715561, -0.684125, 0.141230,
		38.600830, 33.614643, 47.769653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684017, 34.438499, 47.398937>,  <38.099937, 34.093533, 47.670792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684017, 34.438499, 47.398937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722515, 34.040470, 47.408409>,  <38.745613, 33.801651, 47.414093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722515, 34.040470, 47.408409>,  <38.684017, 34.438499, 47.398937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722515, 34.040470, 47.408409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074175, -0.016554, -0.997108,
		0.992590, 0.097724, 0.072216,
		0.096246, -0.995076, 0.023680,
		38.751389, 33.741947, 47.415512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283852, 34.333942, 47.007938>,  <38.684017, 34.438499, 47.398937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283852, 34.333942, 47.007938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125095, 33.967075, 47.022274>,  <39.029842, 33.746956, 47.030876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.125095, 33.967075, 47.022274>,  <39.283852, 34.333942, 47.007938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.125095, 33.967075, 47.022274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175999, -0.114371, -0.977724,
		0.900834, -0.381742, 0.206813,
		-0.396891, -0.917166, 0.035843,
		39.006027, 33.691925, 47.033028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780514, 33.877800, 46.749043>,  <39.283852, 34.333942, 47.007938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780514, 33.877800, 46.749043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430744, 33.690407, 46.698612>,  <39.220882, 33.577969, 46.668354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430744, 33.690407, 46.698612>,  <39.780514, 33.877800, 46.749043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430744, 33.690407, 46.698612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250933, -0.214337, -0.943977,
		0.415220, -0.857076, 0.304982,
		-0.874429, -0.468488, -0.126071,
		39.168415, 33.549862, 46.660789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912506, 33.429150, 46.275696>,  <39.780514, 33.877800, 46.749043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912506, 33.429150, 46.275696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512547, 33.424522, 46.272423>,  <39.272572, 33.421745, 46.270458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512547, 33.424522, 46.272423>,  <39.912506, 33.429150, 46.275696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512547, 33.424522, 46.272423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011223, -0.294128, -0.955700,
		0.008651, -0.955696, 0.294228,
		-0.999900, -0.011570, -0.008181,
		39.212578, 33.421051, 46.269970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759571, 32.852085, 45.887093>,  <39.912506, 33.429150, 46.275696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759571, 32.852085, 45.887093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431419, 33.080601, 45.877197>,  <39.234528, 33.217709, 45.871262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.431419, 33.080601, 45.877197>,  <39.759571, 32.852085, 45.887093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.431419, 33.080601, 45.877197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056168, -0.123554, -0.990747,
		-0.569055, -0.811399, 0.133449,
		-0.820379, 0.571285, -0.024734,
		39.185307, 33.251987, 45.869778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095505, 32.472218, 45.496765>,  <39.759571, 32.852085, 45.887093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095505, 32.472218, 45.496765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031635, 32.866879, 45.484009>,  <38.993313, 33.103676, 45.476357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031635, 32.866879, 45.484009>,  <39.095505, 32.472218, 45.496765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031635, 32.866879, 45.484009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136716, -0.054097, -0.989132,
		-0.977656, -0.153582, 0.143529,
		-0.159678, 0.986654, -0.031891,
		38.983730, 33.162876, 45.474442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482693, 32.620071, 45.100380>,  <39.095505, 32.472218, 45.496765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482693, 32.620071, 45.100380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673531, 32.971603, 45.102718>,  <38.788033, 33.182522, 45.104122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673531, 32.971603, 45.102718>,  <38.482693, 32.620071, 45.100380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673531, 32.971603, 45.102718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087980, 0.054378, -0.994637,
		-0.874437, 0.474022, 0.103264,
		0.477095, 0.878832, 0.005845,
		38.816658, 33.235252, 45.104473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052563, 33.032486, 44.691406>,  <38.482693, 32.620071, 45.100380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052563, 33.032486, 44.691406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396923, 33.235123, 44.710247>,  <38.603539, 33.356705, 44.721550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396923, 33.235123, 44.710247>,  <38.052563, 33.032486, 44.691406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396923, 33.235123, 44.710247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059477, 0.192147, -0.979562,
		-0.505284, 0.840505, 0.195549,
		0.860901, 0.506588, 0.047098,
		38.655193, 33.387100, 44.724377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877300, 33.636845, 44.365734>,  <38.052563, 33.032486, 44.691406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877300, 33.636845, 44.365734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275562, 33.600414, 44.358063>,  <38.514519, 33.578556, 44.353458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275562, 33.600414, 44.358063>,  <37.877300, 33.636845, 44.365734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275562, 33.600414, 44.358063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000022, 0.205836, -0.978587,
		0.093076, 0.974339, 0.204940,
		0.995659, -0.091078, -0.019180,
		38.574261, 33.573090, 44.352310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189529, 34.176907, 43.976646>,  <37.877300, 33.636845, 44.365734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189529, 34.176907, 43.976646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476173, 33.898060, 43.967724>,  <38.648159, 33.730751, 43.962368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476173, 33.898060, 43.967724>,  <38.189529, 34.176907, 43.976646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476173, 33.898060, 43.967724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141202, 0.176326, -0.974152,
		0.683033, 0.694935, 0.224791,
		0.716609, -0.697118, -0.022310,
		38.691154, 33.688923, 43.961029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692287, 34.466972, 43.558083>,  <38.189529, 34.176907, 43.976646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692287, 34.466972, 43.558083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764854, 34.073784, 43.546345>,  <38.808395, 33.837872, 43.539303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764854, 34.073784, 43.546345>,  <38.692287, 34.466972, 43.558083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764854, 34.073784, 43.546345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297203, 0.083245, -0.951179,
		0.937422, 0.163838, 0.307243,
		0.181415, -0.982969, -0.029343,
		38.819279, 33.778893, 43.537540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184345, 34.500000, 43.020580>,  <38.692287, 34.466972, 43.558083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184345, 34.500000, 43.020580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077301, 34.118214, 43.073307>,  <39.013073, 33.889141, 43.104942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077301, 34.118214, 43.073307>,  <39.184345, 34.500000, 43.020580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077301, 34.118214, 43.073307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330106, -0.219352, -0.918104,
		0.905214, -0.202183, 0.373777,
		-0.267614, -0.954467, 0.131819,
		38.997017, 33.831875, 43.112854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647324, 34.126770, 42.840431>,  <39.184345, 34.500000, 43.020580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647324, 34.126770, 42.840431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356674, 33.857803, 42.784039>,  <39.182285, 33.696423, 42.750202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.356674, 33.857803, 42.784039>,  <39.647324, 34.126770, 42.840431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356674, 33.857803, 42.784039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323829, -0.154222, -0.933462,
		0.605935, -0.723926, 0.329809,
		-0.726621, -0.672419, -0.140980,
		39.138687, 33.656078, 42.741745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983776, 33.620590, 42.527210>,  <39.647324, 34.126770, 42.840431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983776, 33.620590, 42.527210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609684, 33.504391, 42.446266>,  <39.385227, 33.434673, 42.397697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609684, 33.504391, 42.446266>,  <39.983776, 33.620590, 42.527210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609684, 33.504391, 42.446266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290774, -0.304193, -0.907148,
		0.201966, -0.907237, 0.368960,
		-0.935233, -0.290497, -0.202364,
		39.329113, 33.417240, 42.385555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016853, 32.905033, 42.314548>,  <39.983776, 33.620590, 42.527210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016853, 32.905033, 42.314548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689960, 33.075882, 42.159782>,  <39.493824, 33.178391, 42.066925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689960, 33.075882, 42.159782>,  <40.016853, 32.905033, 42.314548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689960, 33.075882, 42.159782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268142, -0.312466, -0.911298,
		-0.510129, -0.848490, 0.140829,
		-0.817232, 0.427118, -0.386914,
		39.444790, 33.204018, 42.043709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788307, 32.360542, 41.855370>,  <40.016853, 32.905033, 42.314548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788307, 32.360542, 41.855370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634697, 32.709335, 41.733936>,  <39.542530, 32.918613, 41.661076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634697, 32.709335, 41.733936>,  <39.788307, 32.360542, 41.855370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634697, 32.709335, 41.733936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295230, -0.195566, -0.935197,
		-0.874850, -0.448768, -0.182334,
		-0.384028, 0.871987, -0.303581,
		39.519489, 32.970932, 41.642860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490120, 32.272289, 41.183880>,  <39.788307, 32.360542, 41.855370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490120, 32.272289, 41.183880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541477, 32.668671, 41.199535>,  <39.572292, 32.906498, 41.208927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541477, 32.668671, 41.199535>,  <39.490120, 32.272289, 41.183880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541477, 32.668671, 41.199535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437107, -0.021122, -0.899161,
		-0.890198, 0.132549, -0.435864,
		0.128389, 0.990951, 0.039136,
		39.579994, 32.965958, 41.211277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228889, 32.597263, 40.531670>,  <39.490120, 32.272289, 41.183880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228889, 32.597263, 40.531670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477760, 32.878971, 40.668427>,  <39.627083, 33.047997, 40.750481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477760, 32.878971, 40.668427>,  <39.228889, 32.597263, 40.531670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477760, 32.878971, 40.668427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488281, -0.007734, -0.872652,
		-0.611942, 0.709886, -0.348695,
		0.622181, 0.704274, 0.341891,
		39.664413, 33.090252, 40.770992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001766, 33.115971, 40.151524>,  <39.228889, 32.597263, 40.531670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001766, 33.115971, 40.151524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362389, 33.228886, 40.282681>,  <39.578762, 33.296635, 40.361374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.362389, 33.228886, 40.282681>,  <39.001766, 33.115971, 40.151524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362389, 33.228886, 40.282681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232777, 0.322352, -0.917553,
		-0.364713, 0.903549, 0.224907,
		0.901554, 0.282290, 0.327891,
		39.632854, 33.313572, 40.381046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219692, 33.639477, 39.646061>,  <39.001766, 33.115971, 40.151524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.219692, 33.639477, 39.646061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577484, 33.572857, 39.812031>,  <39.792160, 33.532883, 39.911613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577484, 33.572857, 39.812031>,  <39.219692, 33.639477, 39.646061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577484, 33.572857, 39.812031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440652, 0.171291, -0.881184,
		0.075690, 0.971041, 0.226608,
		0.894481, -0.166552, 0.414926,
		39.845829, 33.522892, 39.936508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722000, 34.145462, 39.388557>,  <39.219692, 33.639477, 39.646061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722000, 34.145462, 39.388557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905430, 33.802155, 39.480721>,  <40.015488, 33.596169, 39.536018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.905430, 33.802155, 39.480721>,  <39.722000, 34.145462, 39.388557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905430, 33.802155, 39.480721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565313, 0.081691, -0.820821,
		0.685662, 0.506658, 0.522651,
		0.458572, -0.858268, 0.230409,
		40.043003, 33.544674, 39.549843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395012, 34.256908, 39.271667>,  <39.722000, 34.145462, 39.388557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395012, 34.256908, 39.271667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406990, 33.858784, 39.308437>,  <40.414177, 33.619907, 39.330498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.406990, 33.858784, 39.308437>,  <40.395012, 34.256908, 39.271667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.406990, 33.858784, 39.308437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866115, -0.020069, -0.499442,
		0.498947, 0.094569, 0.861457,
		0.029943, -0.995316, 0.091921,
		40.415974, 33.560188, 39.336014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083378, 34.047874, 39.350506>,  <40.395012, 34.256908, 39.271667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083378, 34.047874, 39.350506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889843, 33.737984, 39.187683>,  <40.773724, 33.552048, 39.089989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.889843, 33.737984, 39.187683>,  <41.083378, 34.047874, 39.350506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889843, 33.737984, 39.187683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720170, -0.088188, -0.688170,
		0.497248, -0.626112, 0.600606,
		-0.483838, -0.774730, -0.407056,
		40.744690, 33.505566, 39.065567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617374, 33.538738, 39.336929>,  <41.083378, 34.047874, 39.350506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617374, 33.538738, 39.336929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322144, 33.458138, 39.079357>,  <41.145004, 33.409775, 38.924812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.322144, 33.458138, 39.079357>,  <41.617374, 33.538738, 39.336929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.322144, 33.458138, 39.079357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674670, -0.232186, -0.700650,
		-0.008327, -0.951570, 0.307320,
		-0.738073, -0.201505, -0.643929,
		41.100723, 33.397686, 38.886177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.893997, 32.916023, 39.078785>,  <41.617374, 33.538738, 39.336929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.893997, 32.916023, 39.078785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595871, 33.026905, 38.836246>,  <41.416996, 33.093433, 38.690723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595871, 33.026905, 38.836246>,  <41.893997, 32.916023, 39.078785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595871, 33.026905, 38.836246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601104, -0.114016, -0.790996,
		-0.288402, -0.954021, -0.081652,
		-0.745317, 0.277206, -0.606349,
		41.372276, 33.110065, 38.654343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951725, 32.523693, 38.510204>,  <41.893997, 32.916023, 39.078785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951725, 32.523693, 38.510204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737595, 32.829994, 38.367630>,  <41.609116, 33.013775, 38.282085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737595, 32.829994, 38.367630>,  <41.951725, 32.523693, 38.510204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737595, 32.829994, 38.367630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562877, 0.008788, -0.826494,
		-0.629757, -0.643076, -0.435729,
		-0.535327, 0.765752, -0.356438,
		41.576996, 33.059719, 38.260700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657021, 32.332886, 37.751678>,  <41.951725, 32.523693, 38.510204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657021, 32.332886, 37.751678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735378, 32.720402, 37.812431>,  <41.782394, 32.952911, 37.848881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.735378, 32.720402, 37.812431>,  <41.657021, 32.332886, 37.751678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735378, 32.720402, 37.812431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784739, -0.061998, -0.616717,
		-0.588054, 0.240000, -0.772394,
		0.195899, 0.968791, 0.151879,
		41.794147, 33.011040, 37.857994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647995, 32.709045, 37.168720>,  <41.657021, 32.332886, 37.751678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647995, 32.709045, 37.168720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931412, 32.822060, 37.427376>,  <42.101463, 32.889870, 37.582569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931412, 32.822060, 37.427376>,  <41.647995, 32.709045, 37.168720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931412, 32.822060, 37.427376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704227, -0.224568, -0.673523,
		-0.045080, 0.932600, -0.358085,
		0.708542, 0.282535, 0.646639,
		42.143974, 32.906818, 37.621368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.291130, 33.067799, 36.814884>,  <41.647995, 32.709045, 37.168720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.291130, 33.067799, 36.814884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412975, 32.978378, 37.185234>,  <42.486080, 32.924728, 37.407444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.412975, 32.978378, 37.185234>,  <42.291130, 33.067799, 36.814884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412975, 32.978378, 37.185234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902604, -0.242676, -0.355548,
		0.304169, 0.943999, 0.127854,
		0.304610, -0.223548, 0.925872,
		42.504360, 32.911312, 37.462997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.944736, 33.301609, 36.800137>,  <42.291130, 33.067799, 36.814884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.944736, 33.301609, 36.800137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946609, 33.056927, 37.116566>,  <42.947735, 32.910118, 37.306423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.946609, 33.056927, 37.116566>,  <42.944736, 33.301609, 36.800137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946609, 33.056927, 37.116566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805966, -0.465969, -0.365092,
		0.591944, 0.639286, 0.490832,
		0.004686, -0.611708, 0.791070,
		42.948013, 32.873413, 37.353886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617798, 33.385284, 37.100925>,  <42.944736, 33.301609, 36.800137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617798, 33.385284, 37.100925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467163, 33.026855, 37.194935>,  <43.376781, 32.811798, 37.251339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467163, 33.026855, 37.194935>,  <43.617798, 33.385284, 37.100925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467163, 33.026855, 37.194935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821794, -0.440245, -0.361715,
		0.427591, 0.056922, 0.902179,
		-0.376590, -0.896071, 0.235023,
		43.354187, 32.758034, 37.265442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718670, 32.841278, 37.616951>,  <43.617798, 33.385284, 37.100925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718670, 32.841278, 37.616951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111511, 32.799591, 37.679707>,  <44.347218, 32.774578, 37.717358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.111511, 32.799591, 37.679707>,  <43.718670, 32.841278, 37.616951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.111511, 32.799591, 37.679707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063407, 0.601400, 0.796428,
		-0.177352, -0.792122, 0.584028,
		0.982103, -0.104216, 0.156886,
		44.406143, 32.768326, 37.726772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.873730, 32.655819, 38.359341>,  <43.718670, 32.841278, 37.616951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.873730, 32.655819, 38.359341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203869, 32.827370, 38.212440>,  <44.401951, 32.930298, 38.124298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203869, 32.827370, 38.212440>,  <43.873730, 32.655819, 38.359341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203869, 32.827370, 38.212440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024946, 0.677494, 0.735105,
		0.564078, -0.597553, 0.569865,
		0.825345, 0.428872, -0.367254,
		44.451473, 32.956032, 38.102264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.450264, 32.741741, 38.932228>,  <43.873730, 32.655819, 38.359341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.450264, 32.741741, 38.932228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478226, 32.996769, 38.625343>,  <44.495003, 33.149784, 38.441212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.478226, 32.996769, 38.625343>,  <44.450264, 32.741741, 38.932228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478226, 32.996769, 38.625343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127144, 0.757128, 0.640774,
		0.989418, -0.142341, -0.028135,
		0.069907, 0.637570, -0.767214,
		44.499199, 33.188042, 38.395180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961945, 33.202793, 39.122135>,  <44.450264, 32.741741, 38.932228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961945, 33.202793, 39.122135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744896, 33.398682, 38.849155>,  <44.614666, 33.516212, 38.685368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.744896, 33.398682, 38.849155>,  <44.961945, 33.202793, 39.122135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.744896, 33.398682, 38.849155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050712, 0.791882, 0.608564,
		0.838446, 0.364828, -0.404856,
		-0.542620, 0.489717, -0.682452,
		44.582111, 33.545597, 38.644421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.195652, 33.880768, 39.225471>,  <44.961945, 33.202793, 39.122135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.195652, 33.880768, 39.225471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852760, 33.905464, 39.020985>,  <44.647026, 33.920280, 38.898293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.852760, 33.905464, 39.020985>,  <45.195652, 33.880768, 39.225471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852760, 33.905464, 39.020985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253584, 0.813443, 0.523456,
		0.448164, 0.578359, -0.681652,
		-0.857230, 0.061738, -0.511219,
		44.595592, 33.923985, 38.867619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163956, 34.562988, 38.988876>,  <45.195652, 33.880768, 39.225471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.163956, 34.562988, 38.988876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801331, 34.396049, 39.014065>,  <44.583755, 34.295887, 39.029179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.801331, 34.396049, 39.014065>,  <45.163956, 34.562988, 38.988876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801331, 34.396049, 39.014065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313109, 0.765046, 0.562732,
		-0.283034, 0.490433, -0.824237,
		-0.906562, -0.417348, 0.062975,
		44.529362, 34.270844, 39.032959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694031, 35.063282, 38.741161>,  <45.163956, 34.562988, 38.988876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694031, 35.063282, 38.741161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465530, 34.827820, 38.969952>,  <44.328430, 34.686543, 39.107227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465530, 34.827820, 38.969952>,  <44.694031, 35.063282, 38.741161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465530, 34.827820, 38.969952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489977, 0.803653, 0.337735,
		-0.658483, -0.087327, -0.747512,
		-0.571247, -0.588657, 0.571980,
		44.294155, 34.651222, 39.141544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020638, 35.347816, 38.669243>,  <44.694031, 35.063282, 38.741161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020638, 35.347816, 38.669243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010086, 35.124683, 39.001057>,  <44.003757, 34.990803, 39.200146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010086, 35.124683, 39.001057>,  <44.020638, 35.347816, 38.669243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010086, 35.124683, 39.001057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435079, 0.753510, 0.492879,
		-0.900006, -0.347912, -0.262576,
		-0.026375, -0.557836, 0.829532,
		44.002174, 34.957333, 39.249916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338005, 35.386795, 38.985802>,  <44.020638, 35.347816, 38.669243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338005, 35.386795, 38.985802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609158, 35.306774, 39.268772>,  <43.771851, 35.258762, 39.438553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609158, 35.306774, 39.268772>,  <43.338005, 35.386795, 38.985802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609158, 35.306774, 39.268772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308880, 0.795709, 0.521000,
		-0.667132, -0.571688, 0.477607,
		0.677885, -0.200052, 0.707425,
		43.812523, 35.246758, 39.480999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137352, 35.705803, 39.583969>,  <43.338005, 35.386795, 38.985802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137352, 35.705803, 39.583969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511276, 35.616001, 39.694042>,  <43.735630, 35.562119, 39.760086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.511276, 35.616001, 39.694042>,  <43.137352, 35.705803, 39.583969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.511276, 35.616001, 39.694042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039594, 0.835900, 0.547452,
		-0.352934, -0.500867, 0.790297,
		0.934810, -0.224506, 0.275187,
		43.791718, 35.548649, 39.776600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.115879, 35.951973, 40.242096>,  <43.137352, 35.705803, 39.583969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.115879, 35.951973, 40.242096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507732, 35.889141, 40.192070>,  <43.742844, 35.851444, 40.162056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507732, 35.889141, 40.192070>,  <43.115879, 35.951973, 40.242096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507732, 35.889141, 40.192070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198897, 0.844364, 0.497484,
		0.027455, -0.512228, 0.858411,
		0.979636, -0.157076, -0.125063,
		43.801624, 35.842018, 40.154552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431969, 36.100918, 40.920490>,  <43.115879, 35.951973, 40.242096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431969, 36.100918, 40.920490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.713890, 36.115337, 40.637096>,  <43.883041, 36.123989, 40.467060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.713890, 36.115337, 40.637096>,  <43.431969, 36.100918, 40.920490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713890, 36.115337, 40.637096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207920, 0.944353, 0.254885,
		0.678251, -0.326952, 0.658087,
		0.704802, 0.036047, -0.708488,
		43.925331, 36.126152, 40.424549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896637, 36.358364, 41.240471>,  <43.431969, 36.100918, 40.920490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896637, 36.358364, 41.240471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008690, 36.417618, 40.861088>,  <44.075924, 36.453171, 40.633457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.008690, 36.417618, 40.861088>,  <43.896637, 36.358364, 41.240471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.008690, 36.417618, 40.861088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197602, 0.957965, 0.207982,
		0.939403, -0.245681, 0.239087,
		0.280135, 0.148135, -0.948462,
		44.092731, 36.462059, 40.576550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416691, 36.728893, 41.325821>,  <43.896637, 36.358364, 41.240471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416691, 36.728893, 41.325821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361263, 36.820213, 40.940350>,  <44.328007, 36.875004, 40.709064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.361263, 36.820213, 40.940350>,  <44.416691, 36.728893, 41.325821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.361263, 36.820213, 40.940350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393893, 0.905496, 0.157876,
		0.908652, -0.357711, -0.215397,
		-0.138567, 0.228298, -0.963680,
		44.319695, 36.888702, 40.651245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.063686, 37.020279, 41.003105>,  <44.416691, 36.728893, 41.325821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.063686, 37.020279, 41.003105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753490, 37.164150, 40.795551>,  <44.567371, 37.250473, 40.671017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753490, 37.164150, 40.795551>,  <45.063686, 37.020279, 41.003105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753490, 37.164150, 40.795551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337629, 0.930726, 0.140558,
		0.533498, -0.066189, -0.843208,
		-0.775492, 0.359679, -0.518887,
		44.520844, 37.272053, 40.639885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.354561, 37.548126, 40.740398>,  <45.063686, 37.020279, 41.003105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.354561, 37.548126, 40.740398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962101, 37.616890, 40.705074>,  <44.726627, 37.658150, 40.683880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.962101, 37.616890, 40.705074>,  <45.354561, 37.548126, 40.740398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.962101, 37.616890, 40.705074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168337, 0.984634, 0.046475,
		0.094943, 0.030733, -0.995008,
		-0.981147, 0.171909, -0.088311,
		44.667755, 37.668461, 40.678581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.273438, 38.057487, 40.261646>,  <45.354561, 37.548126, 40.740398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.273438, 38.057487, 40.261646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.928871, 38.089813, 40.462219>,  <44.722130, 38.109207, 40.582561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.928871, 38.089813, 40.462219>,  <45.273438, 38.057487, 40.261646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928871, 38.089813, 40.462219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054227, 0.996252, -0.067398,
		-0.504998, -0.030866, -0.862568,
		-0.861416, 0.080810, 0.501431,
		44.670448, 38.114056, 40.612648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.853039, 38.544567, 39.908115>,  <45.273438, 38.057487, 40.261646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.853039, 38.544567, 39.908115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695820, 38.527225, 40.275513>,  <44.601490, 38.516823, 40.495953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695820, 38.527225, 40.275513>,  <44.853039, 38.544567, 39.908115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695820, 38.527225, 40.275513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087568, 0.996113, 0.009542,
		-0.915340, -0.076680, -0.395314,
		-0.393046, -0.043351, 0.918496,
		44.577908, 38.514221, 40.551064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.226646, 38.848782, 39.876591>,  <44.853039, 38.544567, 39.908115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.226646, 38.848782, 39.876591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354679, 38.868294, 40.255043>,  <44.431499, 38.880001, 40.482117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354679, 38.868294, 40.255043>,  <44.226646, 38.848782, 39.876591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354679, 38.868294, 40.255043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026791, 0.997808, -0.060506,
		-0.947012, 0.044714, 0.318071,
		0.320080, 0.048779, 0.946134,
		44.450703, 38.882927, 40.538883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807583, 39.452866, 40.105587>,  <44.226646, 38.848782, 39.876591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807583, 39.452866, 40.105587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095970, 39.405804, 40.378750>,  <44.269005, 39.377567, 40.542648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095970, 39.405804, 40.378750>,  <43.807583, 39.452866, 40.105587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095970, 39.405804, 40.378750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163188, 0.986592, -0.002312,
		-0.673477, 0.113109, 0.730503,
		0.720970, -0.117652, 0.682906,
		44.312260, 39.370506, 40.583622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659443, 39.974335, 40.531593>,  <43.807583, 39.452866, 40.105587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659443, 39.974335, 40.531593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036045, 39.900646, 40.644474>,  <44.262005, 39.856434, 40.712200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.036045, 39.900646, 40.644474>,  <43.659443, 39.974335, 40.531593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.036045, 39.900646, 40.644474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159147, 0.981160, 0.109537,
		-0.297060, -0.058218, 0.953082,
		0.941503, -0.184220, 0.282198,
		44.318497, 39.845379, 40.729134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795547, 40.439320, 41.078545>,  <43.659443, 39.974335, 40.531593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795547, 40.439320, 41.078545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150341, 40.332600, 40.927773>,  <44.363216, 40.268566, 40.837307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150341, 40.332600, 40.927773>,  <43.795547, 40.439320, 41.078545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150341, 40.332600, 40.927773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249798, 0.963694, -0.094316,
		0.388413, -0.010501, 0.921426,
		0.886982, -0.266803, -0.376934,
		44.416435, 40.252560, 40.814693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.453388, 40.694027, 41.396072>,  <43.795547, 40.439320, 41.078545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.453388, 40.694027, 41.396072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529449, 40.642887, 41.006714>,  <44.575085, 40.612206, 40.773098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529449, 40.642887, 41.006714>,  <44.453388, 40.694027, 41.396072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529449, 40.642887, 41.006714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228013, 0.970125, -0.082875,
		0.954910, -0.206187, 0.213624,
		0.190154, -0.127847, -0.973394,
		44.586494, 40.604534, 40.714695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040508, 41.089314, 41.195858>,  <44.453388, 40.694027, 41.396072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040508, 41.089314, 41.195858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779079, 41.050537, 40.895607>,  <44.622223, 41.027271, 40.715454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.779079, 41.050537, 40.895607>,  <45.040508, 41.089314, 41.195858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.779079, 41.050537, 40.895607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175955, 0.945128, -0.275268,
		0.736127, -0.311985, -0.600652,
		-0.653572, -0.096945, -0.750630,
		44.583008, 41.021454, 40.670418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.302589, 41.179790, 40.495945>,  <45.040508, 41.089314, 41.195858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.302589, 41.179790, 40.495945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.914295, 41.275303, 40.485645>,  <44.681320, 41.332611, 40.479465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.914295, 41.275303, 40.485645>,  <45.302589, 41.179790, 40.495945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.914295, 41.275303, 40.485645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229443, 0.890381, -0.393162,
		-0.070953, -0.387563, -0.919108,
		-0.970732, 0.238779, -0.025748,
		44.623074, 41.346935, 40.477921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023365, 41.461922, 39.894230>,  <45.302589, 41.179790, 40.495945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023365, 41.461922, 39.894230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798756, 41.627384, 40.180885>,  <44.663990, 41.726662, 40.352879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798756, 41.627384, 40.180885>,  <45.023365, 41.461922, 39.894230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798756, 41.627384, 40.180885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298786, 0.909004, -0.290584,
		-0.771635, 0.050954, -0.634022,
		-0.561522, 0.413661, 0.716643,
		44.630299, 41.751484, 40.395878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422546, 41.991318, 39.577385>,  <45.023365, 41.461922, 39.894230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422546, 41.991318, 39.577385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569775, 42.041729, 39.945869>,  <44.658112, 42.071976, 40.166962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.569775, 42.041729, 39.945869>,  <44.422546, 41.991318, 39.577385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569775, 42.041729, 39.945869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453145, 0.840828, -0.296087,
		-0.811900, 0.526426, 0.252378,
		0.368074, 0.126029, 0.921216,
		44.680199, 42.079536, 40.222233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.421413, 42.799629, 39.704659>,  <44.422546, 41.991318, 39.577385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.421413, 42.799629, 39.704659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662395, 42.611431, 39.962551>,  <44.806984, 42.498512, 40.117287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.662395, 42.611431, 39.962551>,  <44.421413, 42.799629, 39.704659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.662395, 42.611431, 39.962551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591452, 0.805572, 0.035194,
		-0.535936, 0.360125, 0.763599,
		0.602459, -0.470494, 0.644731,
		44.843132, 42.470284, 40.155972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949913, 42.830917, 39.173367>,  <44.421413, 42.799629, 39.704659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949913, 42.830917, 39.173367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139973, 42.777882, 39.521309>,  <45.254009, 42.746059, 39.730076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139973, 42.777882, 39.521309>,  <44.949913, 42.830917, 39.173367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139973, 42.777882, 39.521309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027708, 0.990346, 0.135820,
		-0.879471, -0.040432, 0.474232,
		0.475146, -0.132589, 0.869860,
		45.282516, 42.738106, 39.782269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.322739, 43.343704, 38.661816>,  <44.949913, 42.830917, 39.173367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.322739, 43.343704, 38.661816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563965, 43.401703, 38.348053>,  <45.708702, 43.436501, 38.159798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.563965, 43.401703, 38.348053>,  <45.322739, 43.343704, 38.661816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.563965, 43.401703, 38.348053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040511, -0.987639, -0.151418,
		-0.796663, 0.059537, -0.601483,
		0.603064, 0.144996, -0.784404,
		45.744884, 43.445202, 38.112732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.748039, 43.083553, 38.079994>,  <45.322739, 43.343704, 38.661816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.748039, 43.083553, 38.079994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141598, 43.012138, 38.076672>,  <45.377735, 42.969288, 38.074677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141598, 43.012138, 38.076672>,  <44.748039, 43.083553, 38.079994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141598, 43.012138, 38.076672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178545, -0.979698, -0.091174,
		0.008141, 0.091189, -0.995800,
		0.983898, -0.178537, -0.008305,
		45.436768, 42.958576, 38.074181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863758, 42.504169, 37.527260>,  <44.748039, 43.083553, 38.079994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863758, 42.504169, 37.527260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171223, 42.529423, 37.781876>,  <45.355701, 42.544575, 37.934643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171223, 42.529423, 37.781876>,  <44.863758, 42.504169, 37.527260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171223, 42.529423, 37.781876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166980, -0.980417, -0.104405,
		0.617480, 0.186541, -0.764147,
		0.768658, 0.063130, 0.636536,
		45.401821, 42.548363, 37.972836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.304585, 42.144043, 37.100800>,  <44.863758, 42.504169, 37.527260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.304585, 42.144043, 37.100800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377956, 42.170502, 37.493122>,  <45.421978, 42.186378, 37.728516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377956, 42.170502, 37.493122>,  <45.304585, 42.144043, 37.100800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377956, 42.170502, 37.493122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135946, -0.989854, 0.041334,
		0.973588, 0.125755, -0.190557,
		0.183425, 0.066147, 0.980806,
		45.432983, 42.190346, 37.787365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989693, 41.789295, 37.195770>,  <45.304585, 42.144043, 37.100800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989693, 41.789295, 37.195770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770645, 41.773052, 37.530067>,  <45.639217, 41.763306, 37.730644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770645, 41.773052, 37.530067>,  <45.989693, 41.789295, 37.195770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770645, 41.773052, 37.530067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206400, -0.974513, 0.087888,
		0.810872, 0.220626, 0.542042,
		-0.547617, -0.040611, 0.835743,
		45.606361, 41.760868, 37.780788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.353779, 41.523018, 37.754444>,  <45.989693, 41.789295, 37.195770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.353779, 41.523018, 37.754444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966576, 41.423229, 37.765171>,  <45.734253, 41.363358, 37.771606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.966576, 41.423229, 37.765171>,  <46.353779, 41.523018, 37.754444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.966576, 41.423229, 37.765171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250830, -0.959458, 0.128549,
		-0.006337, 0.131163, 0.991341,
		-0.968010, -0.249472, 0.026819,
		45.676174, 41.348389, 37.773216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408447, 40.970509, 38.274590>,  <46.353779, 41.523018, 37.754444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408447, 40.970509, 38.274590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054607, 40.937485, 38.090992>,  <45.842304, 40.917671, 37.980835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054607, 40.937485, 38.090992>,  <46.408447, 40.970509, 38.274590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054607, 40.937485, 38.090992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104867, -0.994214, -0.023271,
		-0.454417, -0.068718, 0.888135,
		-0.884595, -0.082561, -0.458994,
		45.789230, 40.912716, 37.953293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124077, 40.445042, 38.550030>,  <46.408447, 40.970509, 38.274590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124077, 40.445042, 38.550030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.908852, 40.471447, 38.213905>,  <45.779716, 40.487289, 38.012230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.908852, 40.471447, 38.213905>,  <46.124077, 40.445042, 38.550030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.908852, 40.471447, 38.213905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032075, -0.994603, -0.098674,
		-0.842294, -0.080046, 0.533042,
		-0.538063, 0.066015, -0.840315,
		45.747433, 40.491253, 37.961811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.606503, 39.834324, 38.581127>,  <46.124077, 40.445042, 38.550030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.606503, 39.834324, 38.581127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664215, 39.969486, 38.209106>,  <45.698841, 40.050583, 37.985893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664215, 39.969486, 38.209106>,  <45.606503, 39.834324, 38.581127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664215, 39.969486, 38.209106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238006, -0.924147, -0.298840,
		-0.960488, -0.178242, -0.213761,
		0.144281, 0.337908, -0.930054,
		45.707500, 40.070858, 37.930092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171066, 39.480442, 38.168415>,  <45.606503, 39.834324, 38.581127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171066, 39.480442, 38.168415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468517, 39.585705, 37.922562>,  <45.646988, 39.648861, 37.775051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468517, 39.585705, 37.922562>,  <45.171066, 39.480442, 38.168415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468517, 39.585705, 37.922562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138629, -0.959995, -0.243295,
		-0.654069, 0.095713, -0.750355,
		0.743624, 0.263153, -0.614634,
		45.691605, 39.664650, 37.738171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.004467, 39.139641, 37.600693>,  <45.171066, 39.480442, 38.168415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.004467, 39.139641, 37.600693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390335, 39.242691, 37.578609>,  <45.621857, 39.304523, 37.565361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.390335, 39.242691, 37.578609>,  <45.004467, 39.139641, 37.600693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.390335, 39.242691, 37.578609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232407, -0.930734, -0.282349,
		-0.124125, 0.259541, -0.957722,
		0.964666, 0.257628, -0.055208,
		45.679733, 39.319981, 37.562046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183281, 38.920288, 36.952122>,  <45.004467, 39.139641, 37.600693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183281, 38.920288, 36.952122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525604, 38.926880, 37.158932>,  <45.730999, 38.930836, 37.283016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525604, 38.926880, 37.158932>,  <45.183281, 38.920288, 36.952122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525604, 38.926880, 37.158932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176975, -0.948505, -0.262712,
		0.486070, 0.316333, -0.814659,
		0.855813, 0.016478, 0.517023,
		45.782349, 38.931824, 37.314037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.597466, 38.495201, 36.457340>,  <45.183281, 38.920288, 36.952122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.597466, 38.495201, 36.457340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808762, 38.512348, 36.796547>,  <45.935539, 38.522636, 37.000069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.808762, 38.512348, 36.796547>,  <45.597466, 38.495201, 36.457340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.808762, 38.512348, 36.796547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235133, -0.967053, -0.097578,
		0.815892, 0.250941, -0.520912,
		0.528235, 0.042870, 0.848015,
		45.967232, 38.525208, 37.050953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.140266, 38.043808, 36.326324>,  <45.597466, 38.495201, 36.457340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.140266, 38.043808, 36.326324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144123, 38.076088, 36.725002>,  <46.146439, 38.095455, 36.964207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.144123, 38.076088, 36.725002>,  <46.140266, 38.043808, 36.326324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.144123, 38.076088, 36.725002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164868, -0.983225, 0.078015,
		0.986269, 0.163570, -0.022784,
		0.009641, 0.080700, 0.996692,
		46.147015, 38.100300, 37.024010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.664322, 37.574604, 36.475533>,  <46.140266, 38.043808, 36.326324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.664322, 37.574604, 36.475533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.441978, 37.616814, 36.805355>,  <46.308575, 37.642139, 37.003246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.441978, 37.616814, 36.805355>,  <46.664322, 37.574604, 36.475533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441978, 37.616814, 36.805355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000416, -0.991945, 0.126671,
		0.831280, 0.070067, 0.551421,
		-0.555854, 0.105528, 0.824554,
		46.275223, 37.648472, 37.052723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.929413, 37.147858, 36.873280>,  <46.664322, 37.574604, 36.475533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.929413, 37.147858, 36.873280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560467, 37.194466, 37.020607>,  <46.339096, 37.222431, 37.109005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560467, 37.194466, 37.020607>,  <46.929413, 37.147858, 36.873280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.560467, 37.194466, 37.020607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129939, -0.991452, -0.011761,
		0.363799, -0.058706, 0.929626,
		-0.922370, 0.116516, 0.368318,
		46.283756, 37.229420, 37.131104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.857399, 36.758923, 37.512314>,  <46.929413, 37.147858, 36.873280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.857399, 36.758923, 37.512314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495365, 36.803688, 37.348217>,  <46.278145, 36.830547, 37.249760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495365, 36.803688, 37.348217>,  <46.857399, 36.758923, 37.512314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495365, 36.803688, 37.348217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154592, -0.985331, 0.072270,
		-0.396134, 0.128831, 0.909109,
		-0.905085, 0.111913, -0.410240,
		46.223839, 36.837261, 37.225143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.575798, 36.172379, 37.810974>,  <46.857399, 36.758923, 37.512314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.575798, 36.172379, 37.810974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.301414, 36.271507, 37.537319>,  <46.136784, 36.330986, 37.373127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.301414, 36.271507, 37.537319>,  <46.575798, 36.172379, 37.810974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.301414, 36.271507, 37.537319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308344, -0.950624, -0.035187,
		-0.659079, 0.186813, 0.728502,
		-0.685958, 0.247821, -0.684139,
		46.095627, 36.345852, 37.332077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864300, 36.022945, 38.113266>,  <46.575798, 36.172379, 37.810974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864300, 36.022945, 38.113266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809246, 36.025997, 37.717083>,  <45.776215, 36.027828, 37.479374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809246, 36.025997, 37.717083>,  <45.864300, 36.022945, 38.113266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809246, 36.025997, 37.717083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446024, -0.893323, 0.055099,
		-0.884375, 0.449350, 0.126354,
		-0.137634, 0.007628, -0.990454,
		45.767956, 36.028286, 37.419949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151985, 35.711285, 38.023941>,  <45.864300, 36.022945, 38.113266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151985, 35.711285, 38.023941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350487, 35.658314, 37.680733>,  <45.469589, 35.626530, 37.474808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350487, 35.658314, 37.680733>,  <45.151985, 35.711285, 38.023941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350487, 35.658314, 37.680733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478366, -0.866448, -0.142944,
		-0.724498, 0.481383, -0.493328,
		0.496254, -0.132429, -0.858018,
		45.499363, 35.618584, 37.423328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626808, 35.474880, 37.507553>,  <45.151985, 35.711285, 38.023941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626808, 35.474880, 37.507553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991287, 35.375237, 37.376305>,  <45.209976, 35.315449, 37.297558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.991287, 35.375237, 37.376305>,  <44.626808, 35.474880, 37.507553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.991287, 35.375237, 37.376305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335751, -0.910581, -0.241067,
		-0.238724, 0.329825, -0.913360,
		0.911198, -0.249113, -0.328117,
		45.264648, 35.300503, 37.277870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490665, 35.158375, 36.822525>,  <44.626808, 35.474880, 37.507553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490665, 35.158375, 36.822525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865864, 35.041645, 36.897369>,  <45.090981, 34.971607, 36.942276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.865864, 35.041645, 36.897369>,  <44.490665, 35.158375, 36.822525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.865864, 35.041645, 36.897369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201808, -0.898550, -0.389719,
		0.281856, 0.327793, -0.901726,
		0.937993, -0.291820, 0.187111,
		45.147263, 34.954098, 36.953503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.582794, 34.678352, 36.276917>,  <44.490665, 35.158375, 36.822525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.582794, 34.678352, 36.276917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905994, 34.590603, 36.495644>,  <45.099915, 34.537952, 36.626881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.905994, 34.590603, 36.495644>,  <44.582794, 34.678352, 36.276917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905994, 34.590603, 36.495644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019703, -0.937638, -0.347054,
		0.588849, 0.269647, -0.761937,
		0.808003, -0.219375, 0.546814,
		45.148396, 34.524792, 36.659687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127522, 34.444893, 35.838600>,  <44.582794, 34.678352, 36.276917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127522, 34.444893, 35.838600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188793, 34.285629, 36.200375>,  <45.225555, 34.190071, 36.417439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188793, 34.285629, 36.200375>,  <45.127522, 34.444893, 35.838600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188793, 34.285629, 36.200375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019313, -0.916270, -0.400096,
		0.988010, 0.043818, -0.148041,
		0.153176, -0.398158, 0.904438,
		45.234745, 34.166183, 36.471706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.816536, 34.167946, 35.934341>,  <45.127522, 34.444893, 35.838600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.816536, 34.167946, 35.934341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548737, 33.977165, 36.162125>,  <45.388058, 33.862698, 36.298794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548737, 33.977165, 36.162125>,  <45.816536, 34.167946, 35.934341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548737, 33.977165, 36.162125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243668, -0.865221, -0.438198,
		0.701710, -0.154614, 0.695484,
		-0.669499, -0.476955, 0.569460,
		45.347885, 33.834080, 36.332962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.443485, 34.475285, 35.456730>,  <45.816536, 34.167946, 35.934341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.443485, 34.475285, 35.456730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.722527, 34.548717, 35.733757>,  <46.889954, 34.592777, 35.899971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.722527, 34.548717, 35.733757>,  <46.443485, 34.475285, 35.456730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.722527, 34.548717, 35.733757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488949, -0.828531, -0.272884,
		0.523714, 0.528994, -0.667750,
		0.697605, 0.183582, 0.692564,
		46.931808, 34.603794, 35.941525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.160240, 34.342014, 35.191395>,  <46.443485, 34.475285, 35.456730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.160240, 34.342014, 35.191395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.185692, 34.313206, 35.589542>,  <47.200962, 34.295921, 35.828430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.185692, 34.313206, 35.589542>,  <47.160240, 34.342014, 35.191395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.185692, 34.313206, 35.589542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517812, -0.850246, -0.094621,
		0.853125, 0.521436, -0.016806,
		0.063628, -0.072021, 0.995372,
		47.204781, 34.291599, 35.888153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.863876, 34.187054, 35.363331>,  <47.160240, 34.342014, 35.191395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.863876, 34.187054, 35.363331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658356, 34.096138, 35.694233>,  <47.535042, 34.041588, 35.892773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.658356, 34.096138, 35.694233>,  <47.863876, 34.187054, 35.363331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.658356, 34.096138, 35.694233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492409, -0.867749, 0.067423,
		0.702522, 0.441988, 0.557772,
		-0.513806, -0.227286, 0.827251,
		47.504215, 34.027950, 35.942410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.940567, 34.893288, 35.457447>,  <47.863876, 34.187054, 35.363331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.940567, 34.893288, 35.457447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622807, 35.028027, 35.255280>,  <47.432148, 35.108871, 35.133980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.622807, 35.028027, 35.255280>,  <47.940567, 34.893288, 35.457447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.622807, 35.028027, 35.255280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513193, -0.817345, 0.261877,
		-0.324892, 0.467416, 0.822173,
		-0.794404, 0.336852, -0.505423,
		47.384487, 35.129082, 35.103653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.995422, 37.316383, 46.239269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625298, 37.180420, 46.172016>,  <34.403225, 37.098843, 46.131664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.625298, 37.180420, 46.172016>,  <34.995422, 37.316383, 46.239269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625298, 37.180420, 46.172016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119903, 0.158391, -0.980069,
		0.359761, -0.927026, -0.105806,
		-0.925308, -0.339904, -0.168136,
		34.347706, 37.078449, 46.121574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042355, 36.812256, 45.649143>,  <34.995422, 37.316383, 46.239269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042355, 36.812256, 45.649143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.657082, 36.919785, 45.650898>,  <34.425919, 36.984303, 45.651951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.657082, 36.919785, 45.650898>,  <35.042355, 36.812256, 45.649143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657082, 36.919785, 45.650898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022609, 0.097261, -0.995002,
		-0.267906, -0.958267, -0.099757,
		-0.963180, 0.268823, 0.004391,
		34.368126, 37.000431, 45.652214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727463, 36.308800, 45.198368>,  <35.042355, 36.812256, 45.649143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727463, 36.308800, 45.198368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.486343, 36.626656, 45.227146>,  <34.341671, 36.817371, 45.244411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.486343, 36.626656, 45.227146>,  <34.727463, 36.308800, 45.198368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486343, 36.626656, 45.227146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104875, 0.010477, -0.994430,
		-0.790970, -0.606987, 0.077023,
		-0.602799, 0.794642, 0.071945,
		34.305504, 36.865047, 45.248730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060116, 36.130077, 44.718063>,  <34.727463, 36.308800, 45.198368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060116, 36.130077, 44.718063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.099052, 36.525738, 44.762085>,  <34.122414, 36.763134, 44.788498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.099052, 36.525738, 44.762085>,  <34.060116, 36.130077, 44.718063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099052, 36.525738, 44.762085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043729, 0.106220, -0.993381,
		-0.994290, 0.101512, -0.032915,
		0.097344, 0.989147, 0.110053,
		34.128254, 36.822483, 44.795101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596935, 36.343250, 44.274712>,  <34.060116, 36.130077, 44.718063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596935, 36.343250, 44.274712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.810963, 36.672287, 44.351688>,  <33.939381, 36.869709, 44.397877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.810963, 36.672287, 44.351688>,  <33.596935, 36.343250, 44.274712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810963, 36.672287, 44.351688> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116996, 0.297755, -0.947446,
		-0.836666, 0.484437, 0.255561,
		0.535072, 0.822595, 0.192444,
		33.971485, 36.919067, 44.409420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314014, 36.971500, 43.937729>,  <33.596935, 36.343250, 44.274712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314014, 36.971500, 43.937729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.702152, 37.060947, 43.974453>,  <33.935036, 37.114616, 43.996487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.702152, 37.060947, 43.974453>,  <33.314014, 36.971500, 43.937729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702152, 37.060947, 43.974453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001976, 0.387138, -0.922020,
		-0.241722, 0.894494, 0.376099,
		0.970344, 0.223615, 0.091813,
		33.993256, 37.128033, 44.001995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326225, 37.638241, 43.657970>,  <33.314014, 36.971500, 43.937729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326225, 37.638241, 43.657970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.694901, 37.483089, 43.660610>,  <33.916107, 37.389999, 43.662193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.694901, 37.483089, 43.660610>,  <33.326225, 37.638241, 43.657970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694901, 37.483089, 43.660610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125963, 0.283135, -0.950772,
		0.366911, 0.877147, 0.309820,
		0.921688, -0.387875, 0.006603,
		33.971409, 37.366726, 43.662590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678108, 38.151958, 43.365582>,  <33.326225, 37.638241, 43.657970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678108, 38.151958, 43.365582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850586, 37.793598, 43.322815>,  <33.954071, 37.578583, 43.297153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.850586, 37.793598, 43.322815>,  <33.678108, 38.151958, 43.365582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850586, 37.793598, 43.322815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124588, 0.176485, -0.976387,
		0.893617, 0.407689, 0.187718,
		0.431192, -0.895903, -0.106916,
		33.979942, 37.524826, 43.290741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.054626, 38.259216, 42.743118>,  <33.678108, 38.151958, 43.365582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.054626, 38.259216, 42.743118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.130848, 37.868938, 42.786396>,  <34.176582, 37.634773, 42.812363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.130848, 37.868938, 42.786396>,  <34.054626, 38.259216, 42.743118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130848, 37.868938, 42.786396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472414, -0.005472, -0.881360,
		0.860532, 0.219059, 0.459889,
		0.190554, -0.975696, 0.108196,
		34.188015, 37.576229, 42.818855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696609, 38.268574, 42.648800>,  <34.054626, 38.259216, 42.743118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696609, 38.268574, 42.648800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.575634, 37.893364, 42.581104>,  <34.503048, 37.668240, 42.540489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.575634, 37.893364, 42.581104>,  <34.696609, 38.268574, 42.648800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575634, 37.893364, 42.581104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485342, 0.001259, -0.874323,
		0.820350, -0.346567, 0.454882,
		-0.302439, -0.938024, -0.169236,
		34.484901, 37.611958, 42.530334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347179, 37.834641, 42.463043>,  <34.696609, 38.268574, 42.648800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347179, 37.834641, 42.463043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007988, 37.660126, 42.342651>,  <34.804474, 37.555416, 42.270416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.007988, 37.660126, 42.342651>,  <35.347179, 37.834641, 42.463043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007988, 37.660126, 42.342651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374476, -0.091264, -0.922735,
		0.375109, -0.895167, 0.240769,
		-0.847975, -0.436288, -0.300984,
		34.753597, 37.529240, 42.252357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704254, 37.354893, 42.040489>,  <35.347179, 37.834641, 42.463043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704254, 37.354893, 42.040489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.316601, 37.359379, 41.941978>,  <35.084007, 37.362072, 41.882874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.316601, 37.359379, 41.941978>,  <35.704254, 37.354893, 42.040489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.316601, 37.359379, 41.941978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237987, -0.218198, -0.946442,
		-0.064350, -0.975840, 0.208795,
		-0.969134, 0.011214, -0.246278,
		35.025860, 37.362743, 41.868095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495373, 36.648602, 41.805962>,  <35.704254, 37.354893, 42.040489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495373, 36.648602, 41.805962> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.248283, 36.921295, 41.649166>,  <35.100029, 37.084911, 41.555088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.248283, 36.921295, 41.649166>,  <35.495373, 36.648602, 41.805962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248283, 36.921295, 41.649166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293174, -0.262881, -0.919208,
		-0.729705, -0.682734, -0.037481,
		-0.617722, 0.681739, -0.391985,
		35.062965, 37.125816, 41.531570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072514, 36.277386, 41.201641>,  <35.495373, 36.648602, 41.805962>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072514, 36.277386, 41.201641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077339, 36.670506, 41.127922>,  <35.080235, 36.906376, 41.083691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.077339, 36.670506, 41.127922>,  <35.072514, 36.277386, 41.201641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077339, 36.670506, 41.127922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255249, -0.181231, -0.949739,
		-0.966800, -0.035587, -0.253043,
		0.012061, 0.982796, -0.184298,
		35.080959, 36.965343, 41.072632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778156, 36.350346, 40.598663>,  <35.072514, 36.277386, 41.201641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778156, 36.350346, 40.598663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991814, 36.687527, 40.624344>,  <35.120007, 36.889835, 40.639751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.991814, 36.687527, 40.624344>,  <34.778156, 36.350346, 40.598663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991814, 36.687527, 40.624344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315189, -0.128107, -0.940343,
		-0.784441, 0.522512, -0.334117,
		0.534143, 0.842953, 0.064197,
		35.152058, 36.940414, 40.643604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612453, 36.700687, 40.029797>,  <34.778156, 36.350346, 40.598663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612453, 36.700687, 40.029797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.963840, 36.844566, 40.155594>,  <35.174675, 36.930893, 40.231071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.963840, 36.844566, 40.155594>,  <34.612453, 36.700687, 40.029797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963840, 36.844566, 40.155594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266226, 0.178086, -0.947317,
		-0.396757, 0.915916, 0.060682,
		0.878469, 0.359699, 0.314497,
		35.227383, 36.952477, 40.249943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744061, 37.265472, 39.561668>,  <34.612453, 36.700687, 40.029797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744061, 37.265472, 39.561668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.095825, 37.205540, 39.742416>,  <35.306885, 37.169582, 39.850864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.095825, 37.205540, 39.742416>,  <34.744061, 37.265472, 39.561668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095825, 37.205540, 39.742416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450755, -0.043306, -0.891596,
		0.153154, 0.987763, 0.029452,
		0.879411, -0.149827, 0.451872,
		35.359650, 37.160591, 39.877979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269463, 37.715977, 39.128872>,  <34.744061, 37.265472, 39.561668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269463, 37.715977, 39.128872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492897, 37.469055, 39.350471>,  <35.626957, 37.320904, 39.483433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.492897, 37.469055, 39.350471>,  <35.269463, 37.715977, 39.128872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492897, 37.469055, 39.350471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658108, -0.076688, -0.749008,
		0.504851, 0.782977, 0.363417,
		0.558587, -0.617305, 0.553999,
		35.660473, 37.283863, 39.516670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034855, 37.956367, 39.064583>,  <35.269463, 37.715977, 39.128872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034855, 37.956367, 39.064583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.020779, 37.577393, 39.191780>,  <36.012333, 37.350006, 39.268101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.020779, 37.577393, 39.191780>,  <36.034855, 37.956367, 39.064583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020779, 37.577393, 39.191780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730376, -0.241569, -0.638901,
		0.682137, 0.209770, 0.700489,
		-0.035194, -0.947439, 0.317995,
		36.010220, 37.293159, 39.287178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716972, 37.734360, 39.356152>,  <36.034855, 37.956367, 39.064583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716972, 37.734360, 39.356152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526234, 37.411491, 39.216961>,  <36.411789, 37.217770, 39.133446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.526234, 37.411491, 39.216961>,  <36.716972, 37.734360, 39.356152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526234, 37.411491, 39.216961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791804, -0.222568, -0.568779,
		0.381655, -0.546749, 0.745255,
		-0.476849, -0.807173, -0.347974,
		36.383179, 37.169338, 39.112568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349022, 37.365814, 39.129444>,  <36.716972, 37.734360, 39.356152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349022, 37.365814, 39.129444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023811, 37.193817, 38.972420>,  <36.828686, 37.090618, 38.878204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.023811, 37.193817, 38.972420>,  <37.349022, 37.365814, 39.129444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023811, 37.193817, 38.972420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560743, -0.396787, -0.726723,
		0.156724, -0.810966, 0.563712,
		-0.813022, -0.429992, -0.392558,
		36.779903, 37.064819, 38.854652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566277, 36.672260, 38.944992>,  <37.349022, 37.365814, 39.129444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566277, 36.672260, 38.944992> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251888, 36.758621, 38.713257>,  <37.063255, 36.810440, 38.574215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.251888, 36.758621, 38.713257>,  <37.566277, 36.672260, 38.944992>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251888, 36.758621, 38.713257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396492, -0.542969, -0.740256,
		-0.474388, -0.811523, 0.341154,
		-0.785971, 0.215904, -0.579341,
		37.016098, 36.823395, 38.539455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920692, 36.001808, 38.998287>,  <37.566277, 36.672260, 38.944992>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920692, 36.001808, 38.998287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311115, 35.921921, 39.032764>,  <38.545368, 35.873989, 39.053452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311115, 35.921921, 39.032764>,  <37.920692, 36.001808, 38.998287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311115, 35.921921, 39.032764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098722, -0.053614, 0.993670,
		-0.193831, -0.978386, -0.072047,
		0.976055, -0.199717, 0.086196,
		38.603931, 35.862007, 39.058624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022179, 35.437309, 39.431492>,  <37.920692, 36.001808, 38.998287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022179, 35.437309, 39.431492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364548, 35.643166, 39.451653>,  <38.569969, 35.766678, 39.463749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364548, 35.643166, 39.451653>,  <38.022179, 35.437309, 39.431492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364548, 35.643166, 39.451653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010873, -0.115358, 0.993264,
		0.516987, -0.849611, -0.104334,
		0.855924, 0.514639, 0.050400,
		38.621326, 35.797558, 39.466774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344456, 35.143764, 39.988659>,  <38.022179, 35.437309, 39.431492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344456, 35.143764, 39.988659> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.532246, 35.491943, 39.929443>,  <38.644920, 35.700851, 39.893913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.532246, 35.491943, 39.929443>,  <38.344456, 35.143764, 39.988659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532246, 35.491943, 39.929443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155126, 0.083740, 0.984339,
		0.869211, -0.485089, -0.095715,
		0.469476, 0.870446, -0.148038,
		38.673088, 35.753078, 39.885033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972004, 35.094963, 40.462105>,  <38.344456, 35.143764, 39.988659>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972004, 35.094963, 40.462105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.878105, 35.477707, 40.393616>,  <38.821766, 35.707352, 40.352520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.878105, 35.477707, 40.393616>,  <38.972004, 35.094963, 40.462105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878105, 35.477707, 40.393616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072809, 0.158345, 0.984696,
		0.969325, 0.243623, 0.032496,
		-0.234749, 0.956857, -0.171226,
		38.807682, 35.764763, 40.342247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420570, 35.540840, 40.841969>,  <38.972004, 35.094963, 40.462105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420570, 35.540840, 40.841969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.104710, 35.774517, 40.766960>,  <38.915192, 35.914722, 40.721954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.104710, 35.774517, 40.766960>,  <39.420570, 35.540840, 40.841969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104710, 35.774517, 40.766960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050464, 0.366433, 0.929075,
		0.611471, 0.724187, -0.318837,
		-0.789656, 0.584192, -0.187518,
		38.867813, 35.949776, 40.710705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473442, 36.000942, 41.316807>,  <39.420570, 35.540840, 40.841969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473442, 36.000942, 41.316807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095371, 36.065067, 41.203003>,  <38.868530, 36.103542, 41.134720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.095371, 36.065067, 41.203003>,  <39.473442, 36.000942, 41.316807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095371, 36.065067, 41.203003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186631, 0.449760, 0.873433,
		0.267985, 0.878644, -0.395182,
		-0.945173, 0.160314, -0.284512,
		38.811821, 36.113163, 41.117649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346958, 36.746845, 41.368004>,  <39.473442, 36.000942, 41.316807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346958, 36.746845, 41.368004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993793, 36.561447, 41.398052>,  <38.781895, 36.450207, 41.416080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.993793, 36.561447, 41.398052>,  <39.346958, 36.746845, 41.368004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993793, 36.561447, 41.398052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115395, 0.369267, 0.922131,
		-0.455147, 0.805488, -0.379514,
		-0.882907, -0.463499, 0.075122,
		38.728920, 36.422398, 41.420589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056404, 37.208389, 41.674484>,  <39.346958, 36.746845, 41.368004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056404, 37.208389, 41.674484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810478, 36.900814, 41.744614>,  <38.662922, 36.716267, 41.786690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.810478, 36.900814, 41.744614>,  <39.056404, 37.208389, 41.674484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810478, 36.900814, 41.744614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247025, 0.398862, 0.883112,
		-0.748990, 0.499638, -0.435173,
		-0.614811, -0.768941, 0.175321,
		38.626034, 36.670132, 41.797211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543743, 37.499805, 41.992687>,  <39.056404, 37.208389, 41.674484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543743, 37.499805, 41.992687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561199, 37.113037, 42.093220>,  <38.571671, 36.880978, 42.153538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.561199, 37.113037, 42.093220>,  <38.543743, 37.499805, 41.992687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561199, 37.113037, 42.093220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071622, 0.247896, 0.966136,
		-0.996477, -0.060161, -0.058435,
		0.043637, -0.966917, 0.251331,
		38.574291, 36.822964, 42.168617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047909, 37.503487, 42.364315>,  <38.543743, 37.499805, 41.992687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047909, 37.503487, 42.364315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.270088, 37.187878, 42.469334>,  <38.403397, 36.998512, 42.532345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.270088, 37.187878, 42.469334>,  <38.047909, 37.503487, 42.364315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270088, 37.187878, 42.469334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141299, 0.221579, 0.964851,
		-0.819461, -0.573018, 0.011586,
		0.555444, -0.789021, 0.262542,
		38.436722, 36.951172, 42.548096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919228, 37.540550, 43.029472>,  <38.047909, 37.503487, 42.364315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919228, 37.540550, 43.029472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217445, 37.274548, 43.011906>,  <38.396374, 37.114944, 43.001366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.217445, 37.274548, 43.011906>,  <37.919228, 37.540550, 43.029472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217445, 37.274548, 43.011906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044883, -0.015650, 0.998870,
		-0.664947, -0.746669, 0.018180,
		0.745541, -0.665011, -0.043919,
		38.441109, 37.075043, 42.998730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731617, 36.921219, 43.444099>,  <37.919228, 37.540550, 43.029472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731617, 36.921219, 43.444099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.129902, 36.950169, 43.421040>,  <38.368874, 36.967537, 43.407204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.129902, 36.950169, 43.421040>,  <37.731617, 36.921219, 43.444099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129902, 36.950169, 43.421040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056725, 0.014711, 0.998281,
		0.073101, -0.997269, 0.010542,
		0.995710, 0.072378, -0.057646,
		38.428616, 36.971882, 43.403748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011936, 36.336617, 43.812344>,  <37.731617, 36.921219, 43.444099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011936, 36.336617, 43.812344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287529, 36.626389, 43.803371>,  <38.452885, 36.800251, 43.797989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287529, 36.626389, 43.803371>,  <38.011936, 36.336617, 43.812344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287529, 36.626389, 43.803371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032312, 0.000217, 0.999478,
		0.724058, -0.689347, -0.023259,
		0.688982, 0.724432, -0.022431,
		38.494225, 36.843719, 43.796642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620640, 36.086121, 44.179058>,  <38.011936, 36.336617, 43.812344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620640, 36.086121, 44.179058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533302, 36.476246, 44.192215>,  <38.480900, 36.710323, 44.200108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.533302, 36.476246, 44.192215>,  <38.620640, 36.086121, 44.179058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533302, 36.476246, 44.192215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232636, -0.084753, 0.968864,
		0.947737, 0.203897, 0.245400,
		-0.218347, 0.975317, 0.032890,
		38.467796, 36.768841, 44.202084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965847, 36.415810, 44.689426>,  <38.620640, 36.086121, 44.179058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965847, 36.415810, 44.689426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.606564, 36.589027, 44.659237>,  <38.390995, 36.692959, 44.641125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.606564, 36.589027, 44.659237>,  <38.965847, 36.415810, 44.689426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606564, 36.589027, 44.659237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203874, -0.258295, 0.944309,
		0.389437, 0.863570, 0.320289,
		-0.898206, 0.433047, -0.075469,
		38.337101, 36.718941, 44.636597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863293, 36.594971, 45.319500>,  <38.965847, 36.415810, 44.689426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863293, 36.594971, 45.319500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501049, 36.634075, 45.154419>,  <38.283703, 36.657536, 45.055370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.501049, 36.634075, 45.154419>,  <38.863293, 36.594971, 45.319500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501049, 36.634075, 45.154419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422865, -0.282899, 0.860902,
		-0.032593, 0.954155, 0.297533,
		-0.905606, 0.097757, -0.412700,
		38.229366, 36.663403, 45.030609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.607475, 36.903011, 45.842457>,  <38.863293, 36.594971, 45.319500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.607475, 36.903011, 45.842457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.281258, 36.780525, 45.646046>,  <38.085526, 36.707031, 45.528198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.281258, 36.780525, 45.646046>,  <38.607475, 36.903011, 45.842457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281258, 36.780525, 45.646046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494821, -0.070955, 0.866093,
		-0.300055, 0.949313, -0.093656,
		-0.815549, -0.306218, -0.491030,
		38.036594, 36.688660, 45.498737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007572, 37.355141, 46.047195>,  <38.607475, 36.903011, 45.842457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007572, 37.355141, 46.047195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864113, 37.019169, 45.884281>,  <37.778038, 36.817585, 45.786533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.864113, 37.019169, 45.884281>,  <38.007572, 37.355141, 46.047195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864113, 37.019169, 45.884281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685756, -0.058956, 0.725440,
		-0.633333, 0.539477, -0.554845,
		-0.358647, -0.839934, -0.407288,
		37.756519, 36.767189, 45.762096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.355644, 37.620377, 45.875263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.346638, 37.220547, 45.882729>,  <37.341232, 36.980648, 45.887207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.346638, 37.220547, 45.882729>,  <37.355644, 37.620377, 45.875263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346638, 37.220547, 45.882729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750627, 0.029232, 0.660079,
		-0.660342, 0.000857, -0.750964,
		-0.022518, -0.999572, 0.018660,
		37.339882, 36.920673, 45.888329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711521, 37.303585, 45.926456>,  <37.355644, 37.620377, 45.875263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711521, 37.303585, 45.926456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927010, 37.005199, 46.083080>,  <37.056305, 36.826168, 46.177055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.927010, 37.005199, 46.083080>,  <36.711521, 37.303585, 45.926456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927010, 37.005199, 46.083080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691601, -0.126170, 0.711174,
		-0.481108, -0.653926, -0.583880,
		0.538724, -0.745964, 0.391556,
		37.088627, 36.781410, 46.200546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164547, 36.877815, 46.029522>,  <36.711521, 37.303585, 45.926456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164547, 36.877815, 46.029522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.472164, 36.762459, 46.257698>,  <36.656734, 36.693245, 46.394604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.472164, 36.762459, 46.257698>,  <36.164547, 36.877815, 46.029522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472164, 36.762459, 46.257698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633540, -0.225423, 0.740143,
		-0.084856, -0.930601, -0.356065,
		0.769042, -0.288387, 0.570444,
		36.702877, 36.675941, 46.428833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941559, 36.299313, 46.415691>,  <36.164547, 36.877815, 46.029522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941559, 36.299313, 46.415691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258411, 36.410507, 46.633041>,  <36.448521, 36.477226, 46.763451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.258411, 36.410507, 46.633041>,  <35.941559, 36.299313, 46.415691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258411, 36.410507, 46.633041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481724, -0.261938, 0.836260,
		0.374802, -0.924181, -0.073573,
		0.792127, 0.277991, 0.543375,
		36.496048, 36.493904, 46.796055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948730, 35.696011, 46.933060>,  <35.941559, 36.299313, 46.415691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948730, 35.696011, 46.933060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168541, 36.001163, 47.069313>,  <36.300426, 36.184254, 47.151066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168541, 36.001163, 47.069313>,  <35.948730, 35.696011, 46.933060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168541, 36.001163, 47.069313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233261, -0.251405, 0.939353,
		0.802251, -0.595659, 0.039796,
		0.549529, 0.762880, 0.340634,
		36.333401, 36.230026, 47.171505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252033, 35.363762, 47.608452>,  <35.948730, 35.696011, 46.933060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252033, 35.363762, 47.608452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.297371, 35.761147, 47.613842>,  <36.324574, 35.999577, 47.617077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.297371, 35.761147, 47.613842>,  <36.252033, 35.363762, 47.608452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297371, 35.761147, 47.613842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142780, 0.002866, 0.989750,
		0.983243, -0.114111, 0.142172,
		0.113348, 0.993464, 0.013475,
		36.331375, 36.059185, 47.617886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685902, 35.470287, 48.096500>,  <36.252033, 35.363762, 47.608452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685902, 35.470287, 48.096500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486950, 35.816502, 48.072933>,  <36.367580, 36.024231, 48.058792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.486950, 35.816502, 48.072933>,  <36.685902, 35.470287, 48.096500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486950, 35.816502, 48.072933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157160, -0.023107, 0.987303,
		0.853180, 0.500322, 0.147519,
		-0.497378, 0.865531, -0.058916,
		36.337738, 36.076160, 48.055260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906399, 35.849216, 48.683254>,  <36.685902, 35.470287, 48.096500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906399, 35.849216, 48.683254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.564667, 36.033714, 48.587437>,  <36.359627, 36.144413, 48.529945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.564667, 36.033714, 48.587437>,  <36.906399, 35.849216, 48.683254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564667, 36.033714, 48.587437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212716, 0.110221, 0.970878,
		0.474211, 0.880402, 0.003948,
		-0.854328, 0.461241, -0.239543,
		36.308369, 36.172085, 48.515575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884052, 36.490639, 48.997349>,  <36.906399, 35.849216, 48.683254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884052, 36.490639, 48.997349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.504135, 36.394451, 48.917271>,  <36.276184, 36.336739, 48.869225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.504135, 36.394451, 48.917271>,  <36.884052, 36.490639, 48.997349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504135, 36.394451, 48.917271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244144, 0.169400, 0.954829,
		-0.195691, 0.955761, -0.219602,
		-0.949789, -0.240466, -0.200193,
		36.219200, 36.322311, 48.857212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530075, 36.968243, 49.424831>,  <36.884052, 36.490639, 48.997349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530075, 36.968243, 49.424831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291985, 36.661335, 49.329327>,  <36.149132, 36.477192, 49.272026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.291985, 36.661335, 49.329327>,  <36.530075, 36.968243, 49.424831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291985, 36.661335, 49.329327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191730, -0.152938, 0.969458,
		-0.780351, 0.622822, -0.056076,
		-0.595224, -0.767269, -0.238759,
		36.113419, 36.431152, 49.257698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968834, 37.032757, 49.933887>,  <36.530075, 36.968243, 49.424831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968834, 37.032757, 49.933887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970982, 36.665756, 49.774811>,  <35.972271, 36.445557, 49.679363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.970982, 36.665756, 49.774811>,  <35.968834, 37.032757, 49.933887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970982, 36.665756, 49.774811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135919, -0.394678, 0.908711,
		-0.990705, 0.049172, -0.126826,
		0.005372, -0.917503, -0.397693,
		35.972595, 36.390507, 49.655502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411346, 36.739086, 50.189659>,  <35.968834, 37.032757, 49.933887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411346, 36.739086, 50.189659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657089, 36.439163, 50.091385>,  <35.804535, 36.259209, 50.032421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.657089, 36.439163, 50.091385>,  <35.411346, 36.739086, 50.189659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657089, 36.439163, 50.091385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186705, -0.440682, 0.878033,
		-0.766621, -0.493554, -0.410727,
		0.614356, -0.749803, -0.245687,
		35.841396, 36.214222, 50.017677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089554, 36.163582, 50.380974>,  <35.411346, 36.739086, 50.189659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089554, 36.163582, 50.380974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471500, 36.046516, 50.360630>,  <35.700668, 35.976276, 50.348423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471500, 36.046516, 50.360630>,  <35.089554, 36.163582, 50.380974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471500, 36.046516, 50.360630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167219, -0.671105, 0.722258,
		-0.245509, -0.681152, -0.689752,
		0.954863, -0.292660, -0.050860,
		35.757957, 35.958717, 50.345371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958893, 35.490379, 50.496613>,  <35.089554, 36.163582, 50.380974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958893, 35.490379, 50.496613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.348351, 35.563240, 50.551510>,  <35.582024, 35.606956, 50.584450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.348351, 35.563240, 50.551510>,  <34.958893, 35.490379, 50.496613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348351, 35.563240, 50.551510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002126, -0.608996, 0.793170,
		0.228062, -0.771974, -0.593333,
		0.973644, 0.182154, 0.137248,
		35.640446, 35.617886, 50.592686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287079, 34.870041, 50.628834>,  <34.958893, 35.490379, 50.496613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287079, 34.870041, 50.628834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.560322, 35.134922, 50.752018>,  <35.724270, 35.293850, 50.825928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.560322, 35.134922, 50.752018>,  <35.287079, 34.870041, 50.628834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560322, 35.134922, 50.752018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165094, -0.550793, 0.818151,
		0.711409, -0.508045, -0.485579,
		0.683111, 0.662206, 0.307964,
		35.765255, 35.333584, 50.844406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891407, 34.524075, 50.883606>,  <35.287079, 34.870041, 50.628834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891407, 34.524075, 50.883606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.978245, 34.875122, 51.054562>,  <36.030346, 35.085751, 51.157135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.978245, 34.875122, 51.054562>,  <35.891407, 34.524075, 50.883606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978245, 34.875122, 51.054562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250409, -0.473249, 0.844589,
		0.943487, -0.076329, -0.322500,
		0.217090, 0.877616, 0.427390,
		36.043373, 35.138409, 51.182777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543850, 34.483891, 51.265961>,  <35.891407, 34.524075, 50.883606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543850, 34.483891, 51.265961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.378120, 34.808498, 51.430775>,  <36.278683, 35.003265, 51.529663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.378120, 34.808498, 51.430775>,  <36.543850, 34.483891, 51.265961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378120, 34.808498, 51.430775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294724, -0.308692, 0.904349,
		0.861089, 0.496127, -0.111277,
		-0.414322, 0.811521, 0.412032,
		36.253822, 35.051956, 51.554386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.035908, 34.772247, 51.699203>,  <36.543850, 34.483891, 51.265961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.035908, 34.772247, 51.699203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.689678, 34.925503, 51.828190>,  <36.481941, 35.017456, 51.905582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.689678, 34.925503, 51.828190>,  <37.035908, 34.772247, 51.699203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689678, 34.925503, 51.828190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282178, -0.158808, 0.946126,
		0.413707, 0.909937, 0.029347,
		-0.865576, 0.383138, 0.322464,
		36.430004, 35.040443, 51.924931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159279, 35.240574, 52.208233>,  <37.035908, 34.772247, 51.699203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159279, 35.240574, 52.208233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784286, 35.120144, 52.278080>,  <36.559292, 35.047886, 52.319988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784286, 35.120144, 52.278080>,  <37.159279, 35.240574, 52.208233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784286, 35.120144, 52.278080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263880, -0.287689, 0.920653,
		-0.226946, 0.909171, 0.349148,
		-0.937477, -0.301072, 0.174622,
		36.503044, 35.029823, 52.330467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044991, 35.415676, 52.972427>,  <37.159279, 35.240574, 52.208233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044991, 35.415676, 52.972427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791389, 35.131313, 52.850674>,  <36.639229, 34.960697, 52.777622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791389, 35.131313, 52.850674>,  <37.044991, 35.415676, 52.972427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791389, 35.131313, 52.850674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066686, -0.442397, 0.894337,
		-0.770447, 0.546718, 0.327890,
		-0.634007, -0.710904, -0.304385,
		36.601189, 34.918041, 52.759357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636719, 35.196846, 53.612946>,  <37.044991, 35.415676, 52.972427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636719, 35.196846, 53.612946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572994, 34.885853, 53.369591>,  <36.534760, 34.699257, 53.223579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572994, 34.885853, 53.369591>,  <36.636719, 35.196846, 53.612946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572994, 34.885853, 53.369591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044660, -0.609950, 0.791181,
		-0.986218, 0.153215, 0.062449,
		-0.159311, -0.777488, -0.608386,
		36.525200, 34.652607, 53.187077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985462, 34.950012, 53.619579>,  <36.636719, 35.196846, 53.612946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985462, 34.950012, 53.619579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.197533, 34.642353, 53.476852>,  <36.324776, 34.457756, 53.391216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.197533, 34.642353, 53.476852>,  <35.985462, 34.950012, 53.619579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197533, 34.642353, 53.476852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200657, -0.522697, 0.828568,
		-0.823803, -0.367688, -0.431456,
		0.530176, -0.769151, -0.356820,
		36.356586, 34.411610, 53.369808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.547901, 34.379787, 53.660152>,  <35.985462, 34.950012, 53.619579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.547901, 34.379787, 53.660152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929314, 34.261566, 53.683590>,  <36.158161, 34.190636, 53.697655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929314, 34.261566, 53.683590>,  <35.547901, 34.379787, 53.660152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929314, 34.261566, 53.683590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214855, -0.530624, 0.819924,
		-0.211236, -0.794410, -0.569466,
		0.953529, -0.295550, 0.058597,
		36.215374, 34.172901, 53.701168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676464, 33.694798, 53.611229>,  <35.547901, 34.379787, 53.660152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676464, 33.694798, 53.611229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964752, 33.854984, 53.837570>,  <36.137726, 33.951096, 53.973373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.964752, 33.854984, 53.837570>,  <35.676464, 33.694798, 53.611229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964752, 33.854984, 53.837570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415542, -0.403779, 0.815038,
		0.554874, -0.822551, -0.124602,
		0.720722, 0.400466, 0.565851,
		36.180969, 33.975124, 54.007324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964893, 33.848675, 53.514088>,  <35.676464, 33.694798, 53.611229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964893, 33.848675, 53.514088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.565006, 33.841919, 53.520870>,  <34.325073, 33.837864, 53.524940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.565006, 33.841919, 53.520870>,  <34.964893, 33.848675, 53.514088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565006, 33.841919, 53.520870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019787, 0.184748, -0.982587,
		0.013462, -0.982641, -0.185029,
		-0.999714, -0.016888, 0.016957,
		34.265091, 33.836853, 53.525959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797642, 33.745625, 52.810078>,  <34.964893, 33.848675, 53.514088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797642, 33.745625, 52.810078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472881, 33.895134, 52.989460>,  <34.278027, 33.984840, 53.097088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.472881, 33.895134, 52.989460>,  <34.797642, 33.745625, 52.810078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472881, 33.895134, 52.989460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252782, 0.467351, -0.847162,
		-0.526232, -0.801173, -0.284959,
		-0.811900, 0.373771, 0.448457,
		34.229313, 34.007267, 53.123997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315186, 33.553909, 52.288464>,  <34.797642, 33.745625, 52.810078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315186, 33.553909, 52.288464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.147373, 33.855980, 52.489937>,  <34.046688, 34.037224, 52.610821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.147373, 33.855980, 52.489937>,  <34.315186, 33.553909, 52.288464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147373, 33.855980, 52.489937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363907, 0.368420, -0.855475,
		-0.831606, -0.542191, 0.120252,
		-0.419528, 0.755179, 0.503688,
		34.021515, 34.082535, 52.641045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603561, 33.723343, 51.984379>,  <34.315186, 33.553909, 52.288464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603561, 33.723343, 51.984379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.688057, 34.064545, 52.175278>,  <33.738754, 34.269264, 52.289818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.688057, 34.064545, 52.175278>,  <33.603561, 33.723343, 51.984379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688057, 34.064545, 52.175278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276026, 0.520446, -0.808050,
		-0.937651, 0.038956, 0.345389,
		0.211235, 0.853005, 0.477244,
		33.751427, 34.320446, 52.318451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088230, 34.155769, 51.602379>,  <33.603561, 33.723343, 51.984379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088230, 34.155769, 51.602379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.339989, 34.401653, 51.792534>,  <33.491043, 34.549183, 51.906628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.339989, 34.401653, 51.792534>,  <33.088230, 34.155769, 51.602379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339989, 34.401653, 51.792534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108466, 0.675262, -0.729559,
		-0.769479, 0.407617, 0.491682,
		0.629395, 0.614711, 0.475387,
		33.528809, 34.586067, 51.935150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751308, 34.727581, 51.701771>,  <33.088230, 34.155769, 51.602379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751308, 34.727581, 51.701771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142818, 34.807823, 51.718506>,  <33.377724, 34.855968, 51.728546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142818, 34.807823, 51.718506>,  <32.751308, 34.727581, 51.701771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142818, 34.807823, 51.718506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122820, 0.737700, -0.663862,
		-0.164041, 0.644635, 0.746683,
		0.978778, 0.200608, 0.041839,
		33.436451, 34.868004, 51.731056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778229, 35.468910, 51.727875>,  <32.751308, 34.727581, 51.701771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778229, 35.468910, 51.727875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134464, 35.339729, 51.599785>,  <33.348206, 35.262218, 51.522930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134464, 35.339729, 51.599785>,  <32.778229, 35.468910, 51.727875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134464, 35.339729, 51.599785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028159, 0.741904, -0.669914,
		0.453928, 0.587604, 0.669829,
		0.890593, -0.322955, -0.320225,
		33.401642, 35.242844, 51.503719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160744, 36.100170, 51.535381>,  <32.778229, 35.468910, 51.727875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160744, 36.100170, 51.535381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322754, 35.785442, 51.349106>,  <33.419960, 35.596607, 51.237339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322754, 35.785442, 51.349106>,  <33.160744, 36.100170, 51.535381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322754, 35.785442, 51.349106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047638, 0.526804, -0.848651,
		0.913062, 0.321544, 0.250853,
		0.405029, -0.786821, -0.465687,
		33.444263, 35.549397, 51.209400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598537, 36.428951, 50.997498>,  <33.160744, 36.100170, 51.535381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598537, 36.428951, 50.997498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562366, 36.049786, 50.875328>,  <33.540665, 35.822285, 50.802029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.562366, 36.049786, 50.875328>,  <33.598537, 36.428951, 50.997498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562366, 36.049786, 50.875328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074922, 0.312283, -0.947030,
		0.993081, -0.062754, -0.099258,
		-0.090426, -0.947914, -0.305421,
		33.535240, 35.765411, 50.783703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057148, 36.355831, 50.471596>,  <33.598537, 36.428951, 50.997498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057148, 36.355831, 50.471596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.802418, 36.054546, 50.405720>,  <33.649582, 35.873775, 50.366196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.802418, 36.054546, 50.405720>,  <34.057148, 36.355831, 50.471596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802418, 36.054546, 50.405720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011019, 0.204692, -0.978764,
		0.770931, -0.625115, -0.122053,
		-0.636823, -0.753215, -0.164691,
		33.611370, 35.828583, 50.356312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254242, 35.995937, 49.939774>,  <34.057148, 36.355831, 50.471596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254242, 35.995937, 49.939774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.877747, 35.861351, 49.928040>,  <33.651848, 35.780602, 49.920998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.877747, 35.861351, 49.928040>,  <34.254242, 35.995937, 49.939774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877747, 35.861351, 49.928040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012341, 0.121059, -0.992569,
		0.337512, -0.933884, -0.118098,
		-0.941241, -0.336461, -0.029333,
		33.595375, 35.760414, 49.919239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240700, 35.399319, 49.534504>,  <34.254242, 35.995937, 49.939774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240700, 35.399319, 49.534504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873436, 35.557800, 49.534214>,  <33.653076, 35.652889, 49.534042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.873436, 35.557800, 49.534214>,  <34.240700, 35.399319, 49.534504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873436, 35.557800, 49.534214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059499, 0.136085, -0.988909,
		-0.391713, -0.908021, -0.148522,
		-0.918162, 0.396205, -0.000720,
		33.597988, 35.676662, 49.533997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010990, 35.044228, 49.001415>,  <34.240700, 35.399319, 49.534504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010990, 35.044228, 49.001415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793896, 35.376411, 49.051643>,  <33.663639, 35.575722, 49.081779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.793896, 35.376411, 49.051643>,  <34.010990, 35.044228, 49.001415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793896, 35.376411, 49.051643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077121, 0.198145, -0.977134,
		-0.836355, -0.520642, -0.171587,
		-0.542736, 0.830464, 0.125567,
		33.631073, 35.625549, 49.089314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569138, 35.111389, 48.341515>,  <34.010990, 35.044228, 49.001415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569138, 35.111389, 48.341515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.520996, 35.475784, 48.499302>,  <33.492111, 35.694424, 48.593975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.520996, 35.475784, 48.499302>,  <33.569138, 35.111389, 48.341515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520996, 35.475784, 48.499302> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128186, 0.408294, -0.903805,
		-0.984420, -0.058213, -0.165917,
		-0.120356, 0.910992, 0.394470,
		33.484890, 35.749081, 48.617641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997154, 35.484680, 47.982548>,  <33.569138, 35.111389, 48.341515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997154, 35.484680, 47.982548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208794, 35.777538, 48.154137>,  <33.335777, 35.953255, 48.257092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.208794, 35.777538, 48.154137>,  <32.997154, 35.484680, 47.982548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208794, 35.777538, 48.154137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014656, 0.497568, -0.867301,
		-0.848433, 0.465177, 0.252533,
		0.529100, 0.732145, 0.428971,
		33.367523, 35.997181, 48.282829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672279, 36.057583, 47.871727>,  <32.997154, 35.484680, 47.982548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672279, 36.057583, 47.871727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.045773, 36.180908, 47.944485>,  <33.269867, 36.254906, 47.988140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.045773, 36.180908, 47.944485>,  <32.672279, 36.057583, 47.871727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045773, 36.180908, 47.944485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040395, 0.595624, -0.802247,
		-0.355686, 0.741736, 0.568608,
		0.933732, 0.308317, 0.181892,
		33.325893, 36.273403, 47.999054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758999, 36.749729, 47.575630>,  <32.672279, 36.057583, 47.871727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758999, 36.749729, 47.575630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.147907, 36.660034, 47.602200>,  <33.381252, 36.606216, 47.618141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.147907, 36.660034, 47.602200>,  <32.758999, 36.749729, 47.575630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147907, 36.660034, 47.602200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184046, 0.558365, -0.808923,
		0.144302, 0.798715, 0.584150,
		0.972267, -0.224240, 0.066427,
		33.439587, 36.592762, 47.622128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075176, 37.396427, 47.433392>,  <32.758999, 36.749729, 47.575630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075176, 37.396427, 47.433392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.341335, 37.108635, 47.353794>,  <33.501030, 36.935959, 47.306038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.341335, 37.108635, 47.353794>,  <33.075176, 37.396427, 47.433392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341335, 37.108635, 47.353794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118363, 0.364884, -0.923499,
		0.737046, 0.590940, 0.327952,
		0.665397, -0.719479, -0.198991,
		33.540955, 36.892792, 47.294098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455902, 37.656311, 46.889637>,  <33.075176, 37.396427, 47.433392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455902, 37.656311, 46.889637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636868, 37.301422, 46.853500>,  <33.745449, 37.088490, 46.831818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.636868, 37.301422, 46.853500>,  <33.455902, 37.656311, 46.889637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636868, 37.301422, 46.853500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458135, 0.318131, -0.830003,
		0.765135, 0.334119, 0.550394,
		0.452417, -0.887219, -0.090342,
		33.772594, 37.035255, 46.826397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243362, 37.757694, 46.762772>,  <33.455902, 37.656311, 46.889637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243362, 37.757694, 46.762772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118355, 37.402740, 46.627197>,  <34.043350, 37.189770, 46.545853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.118355, 37.402740, 46.627197>,  <34.243362, 37.757694, 46.762772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118355, 37.402740, 46.627197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349068, 0.224565, -0.909792,
		0.883451, -0.402638, 0.239578,
		-0.312516, -0.887386, -0.338940,
		34.024601, 37.136524, 46.525517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.188610, 40.487770, 39.965469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.119225, 40.499035, 40.359245>,  <45.077595, 40.505795, 40.595509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.119225, 40.499035, 40.359245>,  <45.188610, 40.487770, 39.965469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.119225, 40.499035, 40.359245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009898, -0.999591, 0.026849,
		0.984791, -0.005086, 0.173669,
		-0.173462, 0.028159, 0.984438,
		45.067184, 40.507484, 40.654575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527447, 39.878166, 40.247097>,  <45.188610, 40.487770, 39.965469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527447, 39.878166, 40.247097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.232597, 39.984787, 40.495483>,  <45.055687, 40.048759, 40.644516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.232597, 39.984787, 40.495483>,  <45.527447, 39.878166, 40.247097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.232597, 39.984787, 40.495483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190735, -0.963621, 0.187228,
		0.648283, 0.019570, 0.761148,
		-0.737122, 0.266555, 0.620967,
		45.011459, 40.064754, 40.681774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.533047, 39.547863, 40.957809>,  <45.527447, 39.878166, 40.247097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.533047, 39.547863, 40.957809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.143513, 39.635437, 40.933434>,  <44.909794, 39.687981, 40.918808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.143513, 39.635437, 40.933434>,  <45.533047, 39.547863, 40.957809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.143513, 39.635437, 40.933434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227242, -0.940928, 0.251031,
		-0.002377, 0.258310, 0.966059,
		-0.973836, 0.218932, -0.060936,
		44.851360, 39.701118, 40.915154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.310143, 39.084141, 41.388119>,  <45.533047, 39.547863, 40.957809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.310143, 39.084141, 41.388119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.988529, 39.183197, 41.171894>,  <44.795563, 39.242630, 41.042160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.988529, 39.183197, 41.171894>,  <45.310143, 39.084141, 41.388119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988529, 39.183197, 41.171894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334194, -0.940164, 0.066375,
		-0.491779, 0.234020, 0.838682,
		-0.804032, 0.247641, -0.540562,
		44.747318, 39.257488, 41.009724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706921, 38.952023, 41.815090>,  <45.310143, 39.084141, 41.388119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706921, 38.952023, 41.815090> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.624229, 38.921825, 41.424896>,  <44.574615, 38.903709, 41.190781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.624229, 38.921825, 41.424896>,  <44.706921, 38.952023, 41.815090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.624229, 38.921825, 41.424896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204589, -0.971643, 0.118550,
		-0.956769, 0.224080, 0.185424,
		-0.206731, -0.075489, -0.975481,
		44.562210, 38.899178, 41.132252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.133549, 38.444267, 41.766270>,  <44.706921, 38.952023, 41.815090>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.133549, 38.444267, 41.766270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.285236, 38.459530, 41.396461>,  <44.376247, 38.468685, 41.174576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.285236, 38.459530, 41.396461>,  <44.133549, 38.444267, 41.766270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285236, 38.459530, 41.396461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240201, -0.960838, -0.138178,
		-0.893585, 0.274471, -0.355205,
		0.379221, 0.038153, -0.924519,
		44.399002, 38.470978, 41.119106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.570557, 38.044235, 41.329395>,  <44.133549, 38.444267, 41.766270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.570557, 38.044235, 41.329395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915649, 38.068962, 41.128643>,  <44.122704, 38.083797, 41.008194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.915649, 38.068962, 41.128643>,  <43.570557, 38.044235, 41.329395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.915649, 38.068962, 41.128643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094481, -0.955318, -0.280075,
		-0.496764, 0.289046, -0.818339,
		0.862728, 0.061813, -0.501876,
		44.174469, 38.087505, 40.978081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415100, 37.947323, 40.570343>,  <43.570557, 38.044235, 41.329395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415100, 37.947323, 40.570343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.803333, 37.857357, 40.604725>,  <44.036274, 37.803379, 40.625355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.803333, 37.857357, 40.604725>,  <43.415100, 37.947323, 40.570343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803333, 37.857357, 40.604725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146130, -0.833956, -0.532130,
		0.191363, 0.503915, -0.842288,
		0.970581, -0.224914, 0.085951,
		44.094509, 37.789883, 40.630508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547985, 37.777004, 39.959232>,  <43.415100, 37.947323, 40.570343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547985, 37.777004, 39.959232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837204, 37.601727, 40.172844>,  <44.010735, 37.496559, 40.301010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.837204, 37.601727, 40.172844>,  <43.547985, 37.777004, 39.959232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837204, 37.601727, 40.172844> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173009, -0.863290, -0.474129,
		0.668780, 0.250428, -0.700014,
		0.723050, -0.438197, 0.534025,
		44.054119, 37.470268, 40.333050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837860, 37.290161, 39.464916>,  <43.547985, 37.777004, 39.959232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837860, 37.290161, 39.464916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.972881, 37.169373, 39.821537>,  <44.053894, 37.096897, 40.035511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.972881, 37.169373, 39.821537>,  <43.837860, 37.290161, 39.464916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972881, 37.169373, 39.821537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008081, -0.948041, -0.318047,
		0.941271, 0.100154, -0.322455,
		0.337555, -0.301974, 0.891554,
		44.074146, 37.078781, 40.089005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283394, 36.813381, 39.310280>,  <43.837860, 37.290161, 39.464916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283394, 36.813381, 39.310280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.220314, 36.703091, 39.689564>,  <44.182468, 36.636917, 39.917133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.220314, 36.703091, 39.689564>,  <44.283394, 36.813381, 39.310280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220314, 36.703091, 39.689564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090860, -0.960206, -0.264101,
		0.983298, 0.044507, 0.176475,
		-0.157698, -0.275725, 0.948213,
		44.173004, 36.620373, 39.974026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763878, 36.370975, 39.418968>,  <44.283394, 36.813381, 39.310280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763878, 36.370975, 39.418968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.508709, 36.289818, 39.716125>,  <44.355606, 36.241123, 39.894421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.508709, 36.289818, 39.716125>,  <44.763878, 36.370975, 39.418968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508709, 36.289818, 39.716125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150259, -0.978922, -0.138325,
		0.755298, 0.023385, 0.654964,
		-0.637924, -0.202891, 0.742891,
		44.317333, 36.228951, 39.938992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.075748, 35.793045, 39.793850>,  <44.763878, 36.370975, 39.418968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.075748, 35.793045, 39.793850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.685101, 35.808144, 39.878498>,  <44.450710, 35.817204, 39.929287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.685101, 35.808144, 39.878498>,  <45.075748, 35.793045, 39.793850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685101, 35.808144, 39.878498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061048, -0.992632, -0.104667,
		0.206109, -0.115139, 0.971732,
		-0.976623, 0.037749, 0.211619,
		44.392113, 35.819469, 39.941982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976067, 35.221924, 40.220581>,  <45.075748, 35.793045, 39.793850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976067, 35.221924, 40.220581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.619118, 35.332451, 40.077854>,  <44.404949, 35.398766, 39.992218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.619118, 35.332451, 40.077854>,  <44.976067, 35.221924, 40.220581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619118, 35.332451, 40.077854> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214971, -0.955445, -0.202267,
		-0.396806, -0.103794, 0.912015,
		-0.892375, 0.276318, -0.356814,
		44.351406, 35.415348, 39.970810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.487190, 34.749138, 40.455956>,  <44.976067, 35.221924, 40.220581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.487190, 34.749138, 40.455956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.267841, 34.926285, 40.172222>,  <44.136230, 35.032574, 40.001984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.267841, 34.926285, 40.172222>,  <44.487190, 34.749138, 40.455956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.267841, 34.926285, 40.172222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239574, -0.895894, -0.374137,
		-0.801179, -0.035231, 0.597387,
		-0.548376, 0.442868, -0.709331,
		44.103329, 35.059147, 39.959423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899544, 34.217793, 40.324665>,  <44.487190, 34.749138, 40.455956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899544, 34.217793, 40.324665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.941296, 34.454510, 40.004944>,  <43.966347, 34.596539, 39.813110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.941296, 34.454510, 40.004944>,  <43.899544, 34.217793, 40.324665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941296, 34.454510, 40.004944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023113, -0.804922, -0.592930,
		-0.994269, 0.043417, -0.097698,
		0.104383, 0.591790, -0.799305,
		43.972610, 34.632046, 39.765152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.516327, 33.849716, 39.760750>,  <43.899544, 34.217793, 40.324665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.516327, 33.849716, 39.760750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750935, 34.106865, 39.563686>,  <43.891701, 34.261154, 39.445450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.750935, 34.106865, 39.563686>,  <43.516327, 33.849716, 39.760750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.750935, 34.106865, 39.563686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165142, -0.690412, -0.704315,
		-0.792920, 0.331737, -0.511105,
		0.586520, 0.642871, -0.492658,
		43.926891, 34.299725, 39.415890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.330112, 33.818752, 39.087891>,  <43.516327, 33.849716, 39.760750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.330112, 33.818752, 39.087891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696690, 33.976326, 39.059742>,  <43.916634, 34.070869, 39.042850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696690, 33.976326, 39.059742>,  <43.330112, 33.818752, 39.087891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696690, 33.976326, 39.059742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216021, -0.635042, -0.741658,
		-0.336856, 0.664483, -0.667077,
		0.916440, 0.393934, -0.070375,
		43.971622, 34.094505, 39.038628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456966, 34.035469, 38.286690>,  <43.330112, 33.818752, 39.087891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456966, 34.035469, 38.286690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.815395, 33.999550, 38.460583>,  <44.030453, 33.977997, 38.564919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.815395, 33.999550, 38.460583>,  <43.456966, 34.035469, 38.286690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815395, 33.999550, 38.460583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340327, -0.489796, -0.802669,
		0.285009, 0.867200, -0.408331,
		0.896073, -0.089802, 0.434728,
		44.084217, 33.972610, 38.591000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861214, 34.152199, 37.755795>,  <43.456966, 34.035469, 38.286690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861214, 34.152199, 37.755795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.062267, 33.934708, 38.024635>,  <44.182899, 33.804214, 38.185940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.062267, 33.934708, 38.024635>,  <43.861214, 34.152199, 37.755795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062267, 33.934708, 38.024635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292389, -0.624714, -0.724045,
		0.813555, 0.560444, -0.155022,
		0.502630, -0.543723, 0.672107,
		44.213055, 33.771591, 38.226269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328197, 33.908993, 37.337067>,  <43.861214, 34.152199, 37.755795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328197, 33.908993, 37.337067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389206, 33.685570, 37.663197>,  <44.425812, 33.551517, 37.858875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.389206, 33.685570, 37.663197>,  <44.328197, 33.908993, 37.337067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389206, 33.685570, 37.663197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271884, -0.769427, -0.577980,
		0.950166, 0.309829, 0.034506,
		0.152525, -0.558559, 0.815321,
		44.434963, 33.518002, 37.907791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.818039, 33.470551, 37.301708>,  <44.328197, 33.908993, 37.337067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.818039, 33.470551, 37.301708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125618, 33.543457, 37.056595>,  <45.310165, 33.587200, 36.909527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.125618, 33.543457, 37.056595>,  <44.818039, 33.470551, 37.301708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.125618, 33.543457, 37.056595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035406, 0.944889, 0.325470,
		0.638333, -0.271965, 0.720115,
		0.768945, 0.182262, -0.612783,
		45.356300, 33.598137, 36.872761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398075, 33.833618, 37.647301>,  <44.818039, 33.470551, 37.301708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398075, 33.833618, 37.647301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.403889, 33.926617, 37.258305>,  <45.407375, 33.982414, 37.024906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.403889, 33.926617, 37.258305>,  <45.398075, 33.833618, 37.647301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403889, 33.926617, 37.258305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100086, 0.967370, 0.232764,
		0.994873, -0.100716, -0.009208,
		0.014536, 0.232492, -0.972490,
		45.408249, 33.996365, 36.966557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.865993, 34.253269, 37.689457>,  <45.398075, 33.833618, 37.647301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.865993, 34.253269, 37.689457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.676979, 34.334957, 37.346527>,  <45.563572, 34.383972, 37.140770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.676979, 34.334957, 37.346527>,  <45.865993, 34.253269, 37.689457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.676979, 34.334957, 37.346527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282261, 0.956609, 0.072300,
		0.834889, -0.207825, -0.509676,
		-0.472535, 0.204224, -0.857323,
		45.535217, 34.396225, 37.089329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.346596, 34.554722, 37.277203>,  <45.865993, 34.253269, 37.689457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.346596, 34.554722, 37.277203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.978966, 34.670498, 37.170223>,  <45.758389, 34.739964, 37.106037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.978966, 34.670498, 37.170223>,  <46.346596, 34.554722, 37.277203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978966, 34.670498, 37.170223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255860, 0.954424, 0.153659,
		0.299731, 0.072795, -0.951242,
		-0.919074, 0.289441, -0.267445,
		45.703243, 34.757332, 37.089989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376068, 35.040478, 36.733879>,  <46.346596, 34.554722, 37.277203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376068, 35.040478, 36.733879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.020752, 35.117321, 36.900749>,  <45.807564, 35.163425, 37.000870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.020752, 35.117321, 36.900749>,  <46.376068, 35.040478, 36.733879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.020752, 35.117321, 36.900749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202542, 0.979078, -0.019590,
		-0.412209, 0.067093, -0.908615,
		-0.888291, 0.192108, 0.417174,
		45.754265, 35.174953, 37.025902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068584, 35.438869, 36.302608>,  <46.376068, 35.040478, 36.733879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068584, 35.438869, 36.302608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888248, 35.510021, 36.652489>,  <45.780048, 35.552711, 36.862419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888248, 35.510021, 36.652489>,  <46.068584, 35.438869, 36.302608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888248, 35.510021, 36.652489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356615, 0.934231, -0.006174,
		-0.818273, 0.309149, -0.484620,
		-0.450838, 0.177875, 0.874703,
		45.752998, 35.563385, 36.914898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.683922, 36.041180, 36.136501>,  <46.068584, 35.438869, 36.302608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.683922, 36.041180, 36.136501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.690556, 36.040085, 36.536446>,  <45.694534, 36.039429, 36.776413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.690556, 36.040085, 36.536446>,  <45.683922, 36.041180, 36.136501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.690556, 36.040085, 36.536446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139811, 0.990178, 0.000391,
		-0.990039, 0.139784, 0.016800,
		0.016580, -0.002736, 0.999859,
		45.695530, 36.039265, 36.836403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282337, 36.720360, 36.365452>,  <45.683922, 36.041180, 36.136501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282337, 36.720360, 36.365452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.506252, 36.577602, 36.664589>,  <45.640602, 36.491947, 36.844070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.506252, 36.577602, 36.664589>,  <45.282337, 36.720360, 36.365452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506252, 36.577602, 36.664589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131043, 0.929265, 0.345391,
		-0.818209, -0.095347, 0.566959,
		0.559787, -0.356898, 0.747838,
		45.674187, 36.470531, 36.888939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.022327, 37.212990, 36.962532>,  <45.282337, 36.720360, 36.365452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.022327, 37.212990, 36.962532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385948, 37.061691, 37.032444>,  <45.604122, 36.970913, 37.074390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385948, 37.061691, 37.032444>,  <45.022327, 37.212990, 36.962532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385948, 37.061691, 37.032444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235843, 0.812887, 0.532534,
		-0.343503, -0.442883, 0.828167,
		0.909057, -0.378245, 0.174778,
		45.658665, 36.948219, 37.084877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135319, 37.309982, 37.698242>,  <45.022327, 37.212990, 36.962532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135319, 37.309982, 37.698242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.492413, 37.314960, 37.518078>,  <45.706669, 37.317947, 37.409981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.492413, 37.314960, 37.518078>,  <45.135319, 37.309982, 37.698242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.492413, 37.314960, 37.518078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199006, 0.885950, 0.418914,
		0.404253, -0.463614, 0.788442,
		0.892735, 0.012442, -0.450410,
		45.760235, 37.318695, 37.382954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507534, 37.781910, 38.117344>,  <45.135319, 37.309982, 37.698242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507534, 37.781910, 38.117344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.742378, 37.743271, 37.795853>,  <45.883286, 37.720089, 37.602959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.742378, 37.743271, 37.795853>,  <45.507534, 37.781910, 38.117344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.742378, 37.743271, 37.795853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268262, 0.959969, 0.080586,
		0.763767, -0.262922, 0.589518,
		0.587107, -0.096597, -0.803725,
		45.918510, 37.714291, 37.554733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153622, 38.103035, 38.317673>,  <45.507534, 37.781910, 38.117344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153622, 38.103035, 38.317673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.160892, 38.111599, 37.917831>,  <46.165257, 38.116737, 37.677925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.160892, 38.111599, 37.917831>,  <46.153622, 38.103035, 38.317673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.160892, 38.111599, 37.917831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099955, 0.994723, 0.023125,
		0.994826, -0.100336, 0.015942,
		0.018178, 0.021412, -0.999605,
		46.166348, 38.118023, 37.617950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.735455, 38.438911, 38.109707>,  <46.153622, 38.103035, 38.317673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.735455, 38.438911, 38.109707> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.501629, 38.482372, 37.788090>,  <46.361336, 38.508450, 37.595119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.501629, 38.482372, 37.788090>,  <46.735455, 38.438911, 38.109707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501629, 38.482372, 37.788090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022573, 0.992787, 0.117742,
		0.811036, 0.050678, -0.582797,
		-0.584560, 0.108649, -0.804042,
		46.326260, 38.514969, 37.546879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.939114, 39.027000, 37.797993>,  <46.735455, 38.438911, 38.109707>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.939114, 39.027000, 37.797993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.566212, 39.010521, 37.654209>,  <46.342472, 39.000633, 37.567940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.566212, 39.010521, 37.654209>,  <46.939114, 39.027000, 37.797993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.566212, 39.010521, 37.654209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105416, 0.981320, 0.160931,
		0.346116, 0.187921, -0.919179,
		-0.932251, -0.041196, -0.359460,
		46.286537, 38.998161, 37.546371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.950924, 39.526695, 37.391434>,  <46.939114, 39.027000, 37.797993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.950924, 39.526695, 37.391434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.563129, 39.463623, 37.466507>,  <46.330452, 39.425781, 37.511551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.563129, 39.463623, 37.466507>,  <46.950924, 39.526695, 37.391434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.563129, 39.463623, 37.466507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182036, 0.975889, -0.120432,
		-0.164167, -0.150923, -0.974819,
		-0.969491, -0.157681, 0.187682,
		46.272282, 39.416317, 37.522812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.638004, 39.896313, 36.881908>,  <46.950924, 39.526695, 37.391434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.638004, 39.896313, 36.881908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.365398, 39.840622, 37.169285>,  <46.201836, 39.807205, 37.341709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.365398, 39.840622, 37.169285>,  <46.638004, 39.896313, 36.881908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.365398, 39.840622, 37.169285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309737, 0.944344, -0.110806,
		-0.663028, -0.298044, -0.686705,
		-0.681511, -0.139231, 0.718441,
		46.160946, 39.798851, 37.384819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.986176, 40.305141, 36.681953>,  <46.638004, 39.896313, 36.881908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.986176, 40.305141, 36.681953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.915272, 40.242439, 37.070595>,  <45.872730, 40.204819, 37.303780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.915272, 40.242439, 37.070595>,  <45.986176, 40.305141, 36.681953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.915272, 40.242439, 37.070595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521298, 0.852321, 0.042406,
		-0.834763, -0.498977, -0.232794,
		-0.177255, -0.156754, 0.971601,
		45.862095, 40.195412, 37.362076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.258419, 40.527618, 36.761616>,  <45.986176, 40.305141, 36.681953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.258419, 40.527618, 36.761616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.399406, 40.522507, 37.135910>,  <45.483997, 40.519440, 37.360485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.399406, 40.522507, 37.135910>,  <45.258419, 40.527618, 36.761616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399406, 40.522507, 37.135910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548977, 0.806961, 0.217805,
		-0.757885, -0.590467, 0.277414,
		0.352469, -0.012777, 0.935736,
		45.505146, 40.518673, 37.416630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.728588, 40.818005, 37.150982>,  <45.258419, 40.527618, 36.761616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.728588, 40.818005, 37.150982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.036041, 40.833378, 37.406395>,  <45.220512, 40.842602, 37.559643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.036041, 40.833378, 37.406395>,  <44.728588, 40.818005, 37.150982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036041, 40.833378, 37.406395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393625, 0.815256, 0.424755,
		-0.504247, -0.577824, 0.641758,
		0.768631, 0.038431, 0.638537,
		45.266632, 40.844906, 37.597958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.492657, 40.873138, 37.953346>,  <44.728588, 40.818005, 37.150982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.492657, 40.873138, 37.953346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.853233, 41.027325, 37.874542>,  <45.069580, 41.119839, 37.827259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.853233, 41.027325, 37.874542>,  <44.492657, 40.873138, 37.953346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.853233, 41.027325, 37.874542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338797, 0.911497, 0.233217,
		0.269468, -0.143487, 0.952260,
		0.901445, 0.385468, -0.197007,
		45.123669, 41.142963, 37.815441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764423, 41.261127, 38.544353>,  <44.492657, 40.873138, 37.953346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764423, 41.261127, 38.544353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.880623, 41.389473, 38.183762>,  <44.950344, 41.466480, 37.967407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.880623, 41.389473, 38.183762>,  <44.764423, 41.261127, 38.544353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.880623, 41.389473, 38.183762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301241, 0.924867, 0.232111,
		0.908220, 0.204133, 0.365330,
		0.290500, 0.320860, -0.901476,
		44.967773, 41.485729, 37.913319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.698051, 36.931519, 43.232193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306450, 36.936977, 43.313549>,  <39.071487, 36.940254, 43.362362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306450, 36.936977, 43.313549>,  <39.698051, 36.931519, 43.232193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306450, 36.936977, 43.313549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198376, -0.293400, -0.935181,
		0.046914, -0.955893, 0.289946,
		-0.979003, 0.013645, 0.203390,
		39.012749, 36.941071, 43.374565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466038, 36.220142, 43.067451>,  <39.698051, 36.931519, 43.232193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466038, 36.220142, 43.067451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149651, 36.462883, 43.036186>,  <38.959820, 36.608528, 43.017426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149651, 36.462883, 43.036186>,  <39.466038, 36.220142, 43.067451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149651, 36.462883, 43.036186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150247, -0.316478, -0.936626,
		-0.593128, -0.729094, 0.341500,
		-0.790965, 0.606848, -0.078168,
		38.912361, 36.644936, 43.012737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810474, 35.797997, 43.007717>,  <39.466038, 36.220142, 43.067451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810474, 35.797997, 43.007717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721973, 36.147182, 42.833832>,  <38.668873, 36.356693, 42.729500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721973, 36.147182, 42.833832>,  <38.810474, 35.797997, 43.007717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721973, 36.147182, 42.833832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125453, -0.467535, -0.875027,
		-0.967114, -0.139066, 0.212960,
		-0.221253, 0.872967, -0.434713,
		38.655598, 36.409073, 42.703419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252895, 35.747684, 42.665382>,  <38.810474, 35.797997, 43.007717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252895, 35.747684, 42.665382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391533, 36.070152, 42.473568>,  <38.474716, 36.263634, 42.358479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391533, 36.070152, 42.473568>,  <38.252895, 35.747684, 42.665382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391533, 36.070152, 42.473568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397826, -0.336636, -0.853470,
		-0.849474, 0.486582, 0.204040,
		0.346596, 0.806172, -0.479539,
		38.495510, 36.312004, 42.329708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813793, 35.773251, 42.160549>,  <38.252895, 35.747684, 42.665382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813793, 35.773251, 42.160549> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101234, 36.018326, 42.028954>,  <38.273697, 36.165371, 41.949997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101234, 36.018326, 42.028954>,  <37.813793, 35.773251, 42.160549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101234, 36.018326, 42.028954> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210859, -0.258841, -0.942624,
		-0.662686, 0.746739, -0.056813,
		0.718600, 0.612684, -0.328987,
		38.316814, 36.202129, 41.930256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555817, 35.995541, 41.499153>,  <37.813793, 35.773251, 42.160549>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555817, 35.995541, 41.499153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940956, 36.102974, 41.510334>,  <38.172039, 36.167435, 41.517044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940956, 36.102974, 41.510334>,  <37.555817, 35.995541, 41.499153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940956, 36.102974, 41.510334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064010, -0.126432, -0.989908,
		-0.262337, 0.954923, -0.138927,
		0.962851, 0.268582, 0.027957,
		38.229813, 36.183548, 41.518723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604374, 36.326027, 40.847904>,  <37.555817, 35.995541, 41.499153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604374, 36.326027, 40.847904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984879, 36.230553, 40.926003>,  <38.213181, 36.173267, 40.972862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984879, 36.230553, 40.926003>,  <37.604374, 36.326027, 40.847904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984879, 36.230553, 40.926003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216816, 0.067449, -0.973880,
		0.219285, 0.968751, 0.115914,
		0.951265, -0.238689, 0.195250,
		38.270260, 36.158947, 40.984577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972485, 36.819313, 40.417488>,  <37.604374, 36.326027, 40.847904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972485, 36.819313, 40.417488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274952, 36.567787, 40.489944>,  <38.456432, 36.416874, 40.533417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274952, 36.567787, 40.489944>,  <37.972485, 36.819313, 40.417488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274952, 36.567787, 40.489944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279007, 0.059422, -0.958449,
		0.591919, 0.775285, 0.220376,
		0.756166, -0.628810, 0.181137,
		38.501801, 36.379143, 40.544285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556419, 37.015858, 39.974571>,  <37.972485, 36.819313, 40.417488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556419, 37.015858, 39.974571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641392, 36.643723, 40.094128>,  <38.692375, 36.420441, 40.165859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641392, 36.643723, 40.094128>,  <38.556419, 37.015858, 39.974571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641392, 36.643723, 40.094128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283397, -0.234069, -0.929999,
		0.935178, 0.282267, 0.213932,
		0.212433, -0.930343, 0.298889,
		38.705120, 36.364620, 40.183796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151501, 36.949268, 39.794922>,  <38.556419, 37.015858, 39.974571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151501, 36.949268, 39.794922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995205, 36.581547, 39.813732>,  <38.901428, 36.360916, 39.825020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995205, 36.581547, 39.813732>,  <39.151501, 36.949268, 39.794922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995205, 36.581547, 39.813732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547189, -0.273051, -0.791219,
		0.740207, -0.283428, 0.609723,
		-0.390739, -0.919299, 0.047025,
		38.877983, 36.305756, 39.827839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698257, 36.457703, 39.595589>,  <39.151501, 36.949268, 39.794922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698257, 36.457703, 39.595589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354877, 36.257053, 39.552792>,  <39.148849, 36.136665, 39.527115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354877, 36.257053, 39.552792>,  <39.698257, 36.457703, 39.595589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354877, 36.257053, 39.552792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355712, -0.431970, -0.828777,
		0.369514, -0.749519, 0.549255,
		-0.858445, -0.501621, -0.106993,
		39.097343, 36.106567, 39.520695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844063, 35.835503, 39.327644>,  <39.698257, 36.457703, 39.595589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844063, 35.835503, 39.327644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460648, 35.851322, 39.214760>,  <39.230598, 35.860813, 39.147030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460648, 35.851322, 39.214760>,  <39.844063, 35.835503, 39.327644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460648, 35.851322, 39.214760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256494, -0.311757, -0.914887,
		-0.124164, -0.949338, 0.288686,
		-0.958537, 0.039550, -0.282209,
		39.173088, 35.863186, 39.130096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682838, 35.189625, 38.972218>,  <39.844063, 35.835503, 39.327644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682838, 35.189625, 38.972218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388779, 35.435352, 38.857563>,  <39.212341, 35.582790, 38.788769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388779, 35.435352, 38.857563>,  <39.682838, 35.189625, 38.972218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388779, 35.435352, 38.857563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016386, -0.438807, -0.898432,
		-0.677706, -0.655786, 0.332655,
		-0.735150, 0.614324, -0.286636,
		39.168232, 35.619648, 38.771572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727314, 34.733627, 38.391628>,  <39.682838, 35.189625, 38.972218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727314, 34.733627, 38.391628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017765, 34.902241, 38.174355>,  <40.192036, 35.003407, 38.043991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017765, 34.902241, 38.174355>,  <39.727314, 34.733627, 38.391628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017765, 34.902241, 38.174355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524730, 0.850250, -0.041634,
		0.444296, 0.315258, 0.838578,
		0.726126, 0.421530, -0.543188,
		40.235603, 35.028698, 38.011398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316299, 34.063992, 38.438499>,  <39.727314, 34.733627, 38.391628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316299, 34.063992, 38.438499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658241, 34.244480, 38.336033>,  <40.863407, 34.352772, 38.274555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658241, 34.244480, 38.336033>,  <40.316299, 34.063992, 38.438499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658241, 34.244480, 38.336033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166114, -0.229713, -0.958978,
		-0.491552, 0.862342, -0.121419,
		0.854858, 0.451218, -0.256164,
		40.914700, 34.379845, 38.259182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424889, 33.590981, 37.861588>,  <40.316299, 34.063992, 38.438499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424889, 33.590981, 37.861588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716602, 33.448196, 38.095074>,  <40.891628, 33.362526, 38.235165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716602, 33.448196, 38.095074>,  <40.424889, 33.590981, 37.861588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716602, 33.448196, 38.095074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647318, -0.083590, 0.757623,
		-0.221652, -0.930370, -0.292031,
		0.729281, -0.356966, 0.583717,
		40.935387, 33.341106, 38.270187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271133, 32.829029, 38.067196>,  <40.424889, 33.590981, 37.861588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271133, 32.829029, 38.067196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516109, 33.001190, 38.332424>,  <40.663094, 33.104488, 38.491562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516109, 33.001190, 38.332424>,  <40.271133, 32.829029, 38.067196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516109, 33.001190, 38.332424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605783, -0.283367, 0.743458,
		0.507881, -0.857004, 0.087186,
		0.612441, 0.430404, 0.663075,
		40.699841, 33.130310, 38.531345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283604, 32.399395, 38.630814>,  <40.271133, 32.829029, 38.067196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283604, 32.399395, 38.630814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398300, 32.761238, 38.756962>,  <40.467117, 32.978344, 38.832653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398300, 32.761238, 38.756962>,  <40.283604, 32.399395, 38.630814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398300, 32.761238, 38.756962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610783, -0.080992, 0.787645,
		0.738054, -0.418475, 0.529297,
		0.286741, 0.904610, 0.315374,
		40.484322, 33.032619, 38.851574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401882, 32.263672, 39.330254>,  <40.283604, 32.399395, 38.630814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401882, 32.263672, 39.330254> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404835, 32.663662, 39.329948>,  <40.406605, 32.903656, 39.329765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404835, 32.663662, 39.329948>,  <40.401882, 32.263672, 39.330254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404835, 32.663662, 39.329948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431845, 0.003874, 0.901940,
		0.901918, -0.006328, 0.431861,
		0.007380, 0.999973, -0.000761,
		40.407047, 32.963654, 39.329720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681473, 32.472725, 40.024437>,  <40.401882, 32.263672, 39.330254>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681473, 32.472725, 40.024437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495045, 32.799202, 39.887852>,  <40.383186, 32.995090, 39.805901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495045, 32.799202, 39.887852>,  <40.681473, 32.472725, 40.024437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495045, 32.799202, 39.887852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402128, 0.148354, 0.903485,
		0.788079, 0.558402, 0.259072,
		-0.466073, 0.816197, -0.341464,
		40.355221, 33.044060, 39.785412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785618, 32.965511, 40.584522>,  <40.681473, 32.472725, 40.024437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785618, 32.965511, 40.584522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510540, 33.162628, 40.371265>,  <40.345493, 33.280899, 40.243313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510540, 33.162628, 40.371265>,  <40.785618, 32.965511, 40.584522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510540, 33.162628, 40.371265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430760, 0.314162, 0.846019,
		0.584402, 0.811455, -0.003772,
		-0.687692, 0.492790, -0.533140,
		40.304234, 33.310467, 40.211323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769012, 33.659489, 40.871944>,  <40.785618, 32.965511, 40.584522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769012, 33.659489, 40.871944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416435, 33.551491, 40.716946>,  <40.204887, 33.486691, 40.623947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416435, 33.551491, 40.716946>,  <40.769012, 33.659489, 40.871944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416435, 33.551491, 40.716946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431915, 0.128913, 0.892654,
		-0.191062, 0.954192, -0.230246,
		-0.881445, -0.269999, -0.387500,
		40.152000, 33.470490, 40.600697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395248, 34.084095, 41.112862>,  <40.769012, 33.659489, 40.871944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395248, 34.084095, 41.112862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162071, 33.772091, 41.021851>,  <40.022163, 33.584888, 40.967243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162071, 33.772091, 41.021851>,  <40.395248, 34.084095, 41.112862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162071, 33.772091, 41.021851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574727, 0.197902, 0.794055,
		-0.574340, 0.593654, -0.563656,
		-0.582942, -0.780006, -0.227527,
		39.987190, 33.538090, 40.953594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663517, 34.287613, 41.112209>,  <40.395248, 34.084095, 41.112862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663517, 34.287613, 41.112209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622532, 33.891747, 41.152348>,  <39.597939, 33.654228, 41.176430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622532, 33.891747, 41.152348>,  <39.663517, 34.287613, 41.112209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622532, 33.891747, 41.152348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623112, 0.142489, 0.769044,
		-0.775392, 0.016274, -0.631271,
		-0.102465, -0.989662, 0.100344,
		39.591793, 33.594849, 41.182449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946674, 34.128666, 41.333900>,  <39.663517, 34.287613, 41.112209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946674, 34.128666, 41.333900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133049, 33.788322, 41.431011>,  <39.244873, 33.584118, 41.489277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133049, 33.788322, 41.431011>,  <38.946674, 34.128666, 41.333900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.133049, 33.788322, 41.431011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561179, -0.072031, 0.824554,
		-0.684090, -0.520435, -0.511046,
		0.465938, -0.850858, 0.242781,
		39.272831, 33.533066, 41.503845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348305, 33.556915, 41.465214>,  <38.946674, 34.128666, 41.333900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348305, 33.556915, 41.465214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693855, 33.471581, 41.647736>,  <38.901184, 33.420380, 41.757248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693855, 33.471581, 41.647736>,  <38.348305, 33.556915, 41.465214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693855, 33.471581, 41.647736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457620, 0.046168, 0.887949,
		-0.210497, -0.975888, -0.057743,
		0.863872, -0.213335, 0.456304,
		38.953018, 33.407581, 41.784626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125877, 33.262989, 42.048359>,  <38.348305, 33.556915, 41.465214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125877, 33.262989, 42.048359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505135, 33.327057, 42.158169>,  <38.732689, 33.365498, 42.224056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505135, 33.327057, 42.158169>,  <38.125877, 33.262989, 42.048359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505135, 33.327057, 42.158169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298176, 0.149177, 0.942781,
		0.110046, -0.975753, 0.189199,
		0.948146, 0.160164, 0.274530,
		38.789577, 33.375107, 42.240528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204304, 32.784115, 42.579796>,  <38.125877, 33.262989, 42.048359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204304, 32.784115, 42.579796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483173, 33.068073, 42.619793>,  <38.650494, 33.238449, 42.643791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483173, 33.068073, 42.619793>,  <38.204304, 32.784115, 42.579796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483173, 33.068073, 42.619793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063396, -0.077884, 0.994945,
		0.714093, -0.699989, -0.009295,
		0.697175, 0.709894, 0.099993,
		38.692326, 33.281040, 42.649792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280743, 32.035973, 42.565308>,  <38.204304, 32.784115, 42.579796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280743, 32.035973, 42.565308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941528, 31.825346, 42.541435>,  <37.737999, 31.698971, 42.527111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941528, 31.825346, 42.541435>,  <38.280743, 32.035973, 42.565308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941528, 31.825346, 42.541435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038396, 0.173367, -0.984108,
		0.528545, -0.832269, -0.167240,
		-0.848037, -0.526567, -0.059676,
		37.687119, 31.667376, 42.523533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451134, 31.500656, 42.103672>,  <38.280743, 32.035973, 42.565308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451134, 31.500656, 42.103672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056950, 31.566820, 42.088173>,  <37.820438, 31.606518, 42.078873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056950, 31.566820, 42.088173>,  <38.451134, 31.500656, 42.103672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056950, 31.566820, 42.088173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057744, 0.111605, -0.992074,
		-0.159774, -0.979890, -0.119534,
		-0.985464, 0.165410, -0.038751,
		37.761311, 31.616444, 42.076546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186150, 31.063566, 41.619625>,  <38.451134, 31.500656, 42.103672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186150, 31.063566, 41.619625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878529, 31.319059, 41.629208>,  <37.693954, 31.472355, 41.634956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878529, 31.319059, 41.629208>,  <38.186150, 31.063566, 41.619625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878529, 31.319059, 41.629208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094690, -0.076786, -0.992541,
		-0.632131, -0.765586, 0.119534,
		-0.769054, 0.638735, 0.023954,
		37.647812, 31.510679, 41.636395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679173, 30.856779, 41.072575>,  <38.186150, 31.063566, 41.619625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679173, 30.856779, 41.072575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564415, 31.230639, 41.156593>,  <37.495560, 31.454954, 41.207005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564415, 31.230639, 41.156593>,  <37.679173, 30.856779, 41.072575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564415, 31.230639, 41.156593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336939, 0.106804, -0.935449,
		-0.896751, -0.339151, 0.284278,
		-0.286896, 0.934649, 0.210050,
		37.478348, 31.511034, 41.219608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068668, 31.004803, 40.658630>,  <37.679173, 30.856779, 41.072575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068668, 31.004803, 40.658630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176003, 31.382315, 40.735859>,  <37.240402, 31.608822, 40.782196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176003, 31.382315, 40.735859>,  <37.068668, 31.004803, 40.658630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176003, 31.382315, 40.735859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402951, 0.292010, -0.867387,
		-0.875000, 0.154954, 0.458654,
		0.268337, 0.943779, 0.193070,
		37.256504, 31.665449, 40.793781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458679, 31.353022, 40.557137>,  <37.068668, 31.004803, 40.658630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458679, 31.353022, 40.557137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757816, 31.618258, 40.544182>,  <36.937298, 31.777399, 40.536407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757816, 31.618258, 40.544182>,  <36.458679, 31.353022, 40.557137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757816, 31.618258, 40.544182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362427, 0.366903, -0.856755,
		-0.556224, 0.652452, 0.514705,
		0.747838, 0.663090, -0.032386,
		36.982166, 31.817184, 40.534466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168877, 32.083111, 40.457035>,  <36.458679, 31.353022, 40.557137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168877, 32.083111, 40.457035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547184, 32.055828, 40.329994>,  <36.774170, 32.039459, 40.253769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547184, 32.055828, 40.329994>,  <36.168877, 32.083111, 40.457035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547184, 32.055828, 40.329994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221212, 0.580726, -0.783469,
		0.237879, 0.811237, 0.534143,
		0.945769, -0.068212, -0.317598,
		36.830914, 32.035366, 40.234715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315250, 32.685776, 40.147964>,  <36.168877, 32.083111, 40.457035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315250, 32.685776, 40.147964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589958, 32.433960, 40.002621>,  <36.754784, 32.282871, 39.915413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589958, 32.433960, 40.002621>,  <36.315250, 32.685776, 40.147964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589958, 32.433960, 40.002621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226926, 0.289216, -0.929978,
		0.690546, 0.721136, 0.055766,
		0.686768, -0.629538, -0.363362,
		36.795990, 32.245098, 39.893612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683041, 33.111008, 39.646526>,  <36.315250, 32.685776, 40.147964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683041, 33.111008, 39.646526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804241, 32.739937, 39.559258>,  <36.876961, 32.517292, 39.506897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804241, 32.739937, 39.559258>,  <36.683041, 33.111008, 39.646526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804241, 32.739937, 39.559258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118309, 0.190548, -0.974523,
		0.945619, 0.321091, -0.052018,
		0.302999, -0.927681, -0.218174,
		36.895142, 32.461632, 39.493805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250599, 33.251614, 39.359550>,  <36.683041, 33.111008, 39.646526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250599, 33.251614, 39.359550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099094, 32.898201, 39.249340>,  <37.008190, 32.686153, 39.183216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099094, 32.898201, 39.249340>,  <37.250599, 33.251614, 39.359550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099094, 32.898201, 39.249340> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151448, 0.352860, -0.923338,
		0.913019, -0.307997, -0.267458,
		-0.378761, -0.883531, -0.275523,
		36.985466, 32.633141, 39.166683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551109, 33.090710, 38.643463>,  <37.250599, 33.251614, 39.359550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551109, 33.090710, 38.643463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211491, 32.882687, 38.680687>,  <37.007721, 32.757874, 38.703022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211491, 32.882687, 38.680687>,  <37.551109, 33.090710, 38.643463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211491, 32.882687, 38.680687> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248205, 0.237148, -0.939231,
		0.466385, -0.820549, -0.330431,
		-0.849046, -0.520057, 0.093062,
		36.956776, 32.726669, 38.708607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380840, 32.780888, 37.962921>,  <37.551109, 33.090710, 38.643463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380840, 32.780888, 37.962921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038254, 32.800629, 38.168461>,  <36.832703, 32.812473, 38.291782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038254, 32.800629, 38.168461>,  <37.380840, 32.780888, 37.962921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038254, 32.800629, 38.168461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424581, 0.498809, -0.755592,
		-0.293604, -0.865305, -0.406256,
		-0.856462, 0.049356, 0.513845,
		36.781315, 32.815437, 38.322613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.295528, 30.600721, 45.933609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.912605, 30.704395, 45.984810>,  <37.682850, 30.766600, 46.015530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.912605, 30.704395, 45.984810>,  <38.295528, 30.600721, 45.933609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912605, 30.704395, 45.984810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133431, -0.003380, -0.991052,
		-0.256431, -0.965822, 0.037819,
		-0.957309, 0.259183, 0.128004,
		37.625412, 30.782150, 46.023212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829384, 30.015240, 45.509975>,  <38.295528, 30.600721, 45.933609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829384, 30.015240, 45.509975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.637814, 30.361282, 45.569607>,  <37.522873, 30.568909, 45.605385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.637814, 30.361282, 45.569607>,  <37.829384, 30.015240, 45.509975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637814, 30.361282, 45.569607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074366, 0.129226, -0.988823,
		-0.874702, -0.484655, 0.002446,
		-0.478922, 0.865107, 0.149076,
		37.494137, 30.620815, 45.614330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125191, 29.947939, 45.074104>,  <37.829384, 30.015240, 45.509975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125191, 29.947939, 45.074104> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190895, 30.335325, 45.149040>,  <37.230316, 30.567757, 45.194000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.190895, 30.335325, 45.149040>,  <37.125191, 29.947939, 45.074104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190895, 30.335325, 45.149040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231712, 0.222485, -0.947001,
		-0.958816, 0.112144, 0.260950,
		0.164258, 0.968465, 0.187337,
		37.240173, 30.625864, 45.205242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737705, 30.277468, 44.591087>,  <37.125191, 29.947939, 45.074104>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737705, 30.277468, 44.591087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983456, 30.574512, 44.697720>,  <37.130905, 30.752739, 44.761700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.983456, 30.574512, 44.697720>,  <36.737705, 30.277468, 44.591087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983456, 30.574512, 44.697720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058856, 0.293795, -0.954055,
		-0.786815, 0.601839, 0.136793,
		0.614376, 0.742613, 0.266584,
		37.167770, 30.797297, 44.777695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426662, 30.781754, 44.337299>,  <36.737705, 30.277468, 44.591087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426662, 30.781754, 44.337299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795616, 30.923155, 44.399582>,  <37.016987, 31.007996, 44.436951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.795616, 30.923155, 44.399582>,  <36.426662, 30.781754, 44.337299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795616, 30.923155, 44.399582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069487, 0.548375, -0.833340,
		-0.379975, 0.757839, 0.530376,
		0.922383, 0.353503, 0.155709,
		37.072330, 31.029205, 44.446293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455086, 31.463226, 44.103256>,  <36.426662, 30.781754, 44.337299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455086, 31.463226, 44.103256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846573, 31.381809, 44.092823>,  <37.081467, 31.332960, 44.086563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.846573, 31.381809, 44.092823>,  <36.455086, 31.463226, 44.103256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846573, 31.381809, 44.092823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012694, 0.186899, -0.982297,
		0.204812, 0.961062, 0.185505,
		0.978719, -0.203541, -0.026080,
		37.140190, 31.320747, 44.084999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761631, 31.976402, 43.766724>,  <36.455086, 31.463226, 44.103256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761631, 31.976402, 43.766724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055893, 31.705822, 43.752731>,  <37.232452, 31.543474, 43.744335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.055893, 31.705822, 43.752731>,  <36.761631, 31.976402, 43.766724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055893, 31.705822, 43.752731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152238, 0.215439, -0.964577,
		0.660022, 0.704275, 0.261470,
		0.735659, -0.676448, -0.034977,
		37.276592, 31.502888, 43.742237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302082, 32.372444, 43.576843>,  <36.761631, 31.976402, 43.766724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302082, 32.372444, 43.576843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385300, 31.995062, 43.473614>,  <37.435230, 31.768631, 43.411674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.385300, 31.995062, 43.473614>,  <37.302082, 32.372444, 43.576843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385300, 31.995062, 43.473614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035085, 0.270874, -0.961975,
		0.977490, 0.191080, 0.089456,
		0.208046, -0.943459, -0.258072,
		37.447712, 31.712025, 43.396191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828857, 32.384323, 43.053276>,  <37.302082, 32.372444, 43.576843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828857, 32.384323, 43.053276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686069, 32.015953, 42.990696>,  <37.600395, 31.794931, 42.953148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686069, 32.015953, 42.990696>,  <37.828857, 32.384323, 43.053276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686069, 32.015953, 42.990696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025121, 0.176890, -0.983910,
		0.933778, -0.347295, -0.086279,
		-0.356969, -0.920921, -0.156451,
		37.578979, 31.739677, 42.943760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589737, 32.596519, 43.213917>,  <37.828857, 32.384323, 43.053276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589737, 32.596519, 43.213917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.712723, 32.974400, 43.168285>,  <38.786514, 33.201126, 43.140907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.712723, 32.974400, 43.168285>,  <38.589737, 32.596519, 43.213917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712723, 32.974400, 43.168285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165862, 0.064846, 0.984015,
		0.936994, -0.321467, -0.136752,
		0.307460, 0.944698, -0.114079,
		38.804962, 33.257809, 43.134060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111202, 32.539165, 43.570213>,  <38.589737, 32.596519, 43.213917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111202, 32.539165, 43.570213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.041500, 32.932091, 43.542824>,  <38.999680, 33.167847, 43.526390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.041500, 32.932091, 43.542824>,  <39.111202, 32.539165, 43.570213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041500, 32.932091, 43.542824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128882, 0.091691, 0.987412,
		0.976230, 0.163233, -0.142581,
		-0.174252, 0.982318, -0.068474,
		38.989223, 33.226788, 43.522282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658844, 32.857391, 43.991909>,  <39.111202, 32.539165, 43.570213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658844, 32.857391, 43.991909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.361504, 33.124298, 43.973183>,  <39.183102, 33.284443, 43.961945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.361504, 33.124298, 43.973183>,  <39.658844, 32.857391, 43.991909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361504, 33.124298, 43.973183> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126703, 0.209187, 0.969633,
		0.656796, 0.714842, -0.240043,
		-0.743348, 0.667265, -0.046820,
		39.138500, 33.324478, 43.959137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861309, 33.487114, 44.311882>,  <39.658844, 32.857391, 43.991909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861309, 33.487114, 44.311882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.462540, 33.509583, 44.333733>,  <39.223278, 33.523064, 44.346844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.462540, 33.509583, 44.333733>,  <39.861309, 33.487114, 44.311882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462540, 33.509583, 44.333733> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064295, 0.188038, 0.980055,
		0.044778, 0.980554, -0.191072,
		-0.996926, 0.056169, 0.054625,
		39.163464, 33.526432, 44.350121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679764, 34.138264, 44.761116>,  <39.861309, 33.487114, 44.311882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679764, 34.138264, 44.761116> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.351845, 33.909592, 44.747723>,  <39.155094, 33.772388, 44.739689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.351845, 33.909592, 44.747723>,  <39.679764, 34.138264, 44.761116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351845, 33.909592, 44.747723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124261, 0.120507, 0.984905,
		-0.559016, 0.811578, -0.169828,
		-0.819793, -0.571681, -0.033482,
		39.105907, 33.738087, 44.737679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306446, 34.470367, 45.176540>,  <39.679764, 34.138264, 44.761116>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306446, 34.470367, 45.176540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.146011, 34.104774, 45.152008>,  <39.049751, 33.885418, 45.137291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.146011, 34.104774, 45.152008>,  <39.306446, 34.470367, 45.176540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146011, 34.104774, 45.152008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159458, 0.003733, 0.987198,
		-0.902057, 0.405727, -0.147240,
		-0.401082, -0.913987, -0.061329,
		39.025688, 33.830578, 45.133610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690281, 34.477177, 45.494110>,  <39.306446, 34.470367, 45.176540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690281, 34.477177, 45.494110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785908, 34.088879, 45.485191>,  <38.843285, 33.855900, 45.479839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.785908, 34.088879, 45.485191>,  <38.690281, 34.477177, 45.494110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785908, 34.088879, 45.485191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022889, -0.028588, 0.999329,
		-0.970734, -0.238393, -0.029054,
		0.239064, -0.970748, -0.022295,
		38.857628, 33.797653, 45.478504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234402, 34.104168, 45.905827>,  <38.690281, 34.477177, 45.494110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234402, 34.104168, 45.905827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527916, 33.833046, 45.887306>,  <38.704025, 33.670372, 45.876194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.527916, 33.833046, 45.887306>,  <38.234402, 34.104168, 45.905827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527916, 33.833046, 45.887306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167544, -0.246581, 0.954530,
		-0.658399, -0.692662, -0.294499,
		0.733784, -0.677803, -0.046297,
		38.748051, 33.629704, 45.873417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943588, 33.607281, 46.221004>,  <38.234402, 34.104168, 45.905827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943588, 33.607281, 46.221004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.340553, 33.562737, 46.241840>,  <38.578732, 33.536011, 46.254341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.340553, 33.562737, 46.241840>,  <37.943588, 33.607281, 46.221004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340553, 33.562737, 46.241840> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051318, 0.009776, 0.998634,
		-0.111718, -0.993732, 0.003987,
		0.992414, -0.111361, 0.052089,
		38.638279, 33.529327, 46.257465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001171, 32.984550, 46.635544>,  <37.943588, 33.607281, 46.221004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001171, 32.984550, 46.635544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357418, 33.166401, 46.631329>,  <38.571167, 33.275513, 46.628799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.357418, 33.166401, 46.631329>,  <38.001171, 32.984550, 46.635544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357418, 33.166401, 46.631329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083333, -0.140384, 0.986584,
		0.447048, -0.879549, -0.162914,
		0.890620, 0.454627, -0.010537,
		38.624603, 33.302788, 46.628166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542751, 32.528698, 46.978569>,  <38.001171, 32.984550, 46.635544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542751, 32.528698, 46.978569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648132, 32.913879, 47.001579>,  <38.711361, 33.144989, 47.015385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648132, 32.913879, 47.001579>,  <38.542751, 32.528698, 46.978569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648132, 32.913879, 47.001579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033335, -0.068680, 0.997082,
		0.964096, -0.260765, -0.050194,
		0.263452, 0.962956, 0.057521,
		38.727169, 33.202766, 47.018837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068626, 32.472782, 47.542717>,  <38.542751, 32.528698, 46.978569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068626, 32.472782, 47.542717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.952110, 32.854755, 47.519928>,  <38.882198, 33.083939, 47.506252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.952110, 32.854755, 47.519928>,  <39.068626, 32.472782, 47.542717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952110, 32.854755, 47.519928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169680, 0.110188, 0.979320,
		0.941465, 0.275601, -0.194131,
		-0.291293, 0.954936, -0.056974,
		38.864723, 33.141235, 47.502834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540005, 32.795021, 47.953888>,  <39.068626, 32.472782, 47.542717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540005, 32.795021, 47.953888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.247623, 33.063728, 47.905830>,  <39.072193, 33.224953, 47.876995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.247623, 33.063728, 47.905830>,  <39.540005, 32.795021, 47.953888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247623, 33.063728, 47.905830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065267, 0.106433, 0.992176,
		0.679299, 0.733076, -0.033953,
		-0.730954, 0.671767, -0.120145,
		39.028336, 33.265259, 47.869785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796741, 33.418484, 48.286186>,  <39.540005, 32.795021, 47.953888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.796741, 33.418484, 48.286186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.397049, 33.429031, 48.274601>,  <39.157234, 33.435360, 48.267651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.397049, 33.429031, 48.274601>,  <39.796741, 33.418484, 48.286186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397049, 33.429031, 48.274601> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019837, 0.296955, 0.954685,
		0.033779, 0.954527, -0.296204,
		-0.999232, 0.026373, -0.028966,
		39.097279, 33.436943, 48.265911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.473337, 33.952782, 46.463509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.860209, 33.943317, 46.564705>,  <32.092331, 33.937637, 46.625423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.860209, 33.943317, 46.564705>,  <31.473337, 33.952782, 46.463509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860209, 33.943317, 46.564705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232299, 0.485792, -0.842641,
		-0.102964, 0.873754, 0.475344,
		0.967179, -0.023661, 0.252991,
		32.150364, 33.936218, 46.640602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706127, 34.563099, 46.370155>,  <31.473337, 33.952782, 46.463509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706127, 34.563099, 46.370155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.048416, 34.356148, 46.367058>,  <32.253788, 34.231979, 46.365200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.048416, 34.356148, 46.367058>,  <31.706127, 34.563099, 46.370155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048416, 34.356148, 46.367058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231776, 0.396649, -0.888229,
		0.462620, 0.758283, 0.459337,
		0.855724, -0.517375, -0.007746,
		32.305134, 34.200935, 46.364735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166477, 34.960480, 45.973175>,  <31.706127, 34.563099, 46.370155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166477, 34.960480, 45.973175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.341091, 34.600834, 45.960346>,  <32.445858, 34.385048, 45.952648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.341091, 34.600834, 45.960346>,  <32.166477, 34.960480, 45.973175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341091, 34.600834, 45.960346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272584, 0.166151, -0.947677,
		0.857401, 0.404950, 0.317615,
		0.436534, -0.899116, -0.032075,
		32.472050, 34.331100, 45.950726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862877, 35.075882, 45.728256>,  <32.166477, 34.960480, 45.973175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862877, 35.075882, 45.728256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728531, 34.706356, 45.654758>,  <32.647923, 34.484642, 45.610661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.728531, 34.706356, 45.654758>,  <32.862877, 35.075882, 45.728256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728531, 34.706356, 45.654758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249158, 0.100990, -0.963183,
		0.908359, -0.369278, 0.196257,
		-0.335862, -0.923815, -0.183744,
		32.627773, 34.429211, 45.599636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459076, 34.784599, 45.410976>,  <32.862877, 35.075882, 45.728256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459076, 34.784599, 45.410976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.138573, 34.572838, 45.299469>,  <32.946270, 34.445778, 45.232563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.138573, 34.572838, 45.299469>,  <33.459076, 34.784599, 45.410976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138573, 34.572838, 45.299469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343773, -0.026015, -0.938692,
		0.489700, -0.847968, 0.202841,
		-0.801258, -0.529409, -0.278769,
		32.898193, 34.414017, 45.215839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792824, 34.441696, 44.901455>,  <33.459076, 34.784599, 45.410976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792824, 34.441696, 44.901455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.399197, 34.400665, 44.843365>,  <33.163021, 34.376049, 44.808510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.399197, 34.400665, 44.843365>,  <33.792824, 34.441696, 44.901455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399197, 34.400665, 44.843365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147205, -0.011974, -0.989034,
		0.099709, -0.994653, 0.026883,
		-0.984068, -0.102573, -0.145224,
		33.103977, 34.369892, 44.799797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794090, 34.049976, 44.327133>,  <33.792824, 34.441696, 44.901455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794090, 34.049976, 44.327133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.423622, 34.199986, 44.342949>,  <33.201340, 34.289989, 44.352436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.423622, 34.199986, 44.342949>,  <33.794090, 34.049976, 44.327133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423622, 34.199986, 44.342949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001385, 0.101460, -0.994839,
		-0.377100, -0.921446, -0.093450,
		-0.926172, 0.375024, 0.039537,
		33.145771, 34.312492, 44.354809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438801, 33.660278, 43.766754>,  <33.794090, 34.049976, 44.327133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438801, 33.660278, 43.766754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.225868, 33.991787, 43.835758>,  <33.098110, 34.190693, 43.877159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.225868, 33.991787, 43.835758>,  <33.438801, 33.660278, 43.766754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225868, 33.991787, 43.835758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127788, 0.280118, -0.951422,
		-0.836835, -0.484428, -0.255023,
		-0.532333, 0.828772, 0.172509,
		33.066170, 34.240417, 43.887512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954834, 33.777073, 43.217354>,  <33.438801, 33.660278, 43.766754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954834, 33.777073, 43.217354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.984344, 34.140514, 43.381794>,  <33.002048, 34.358578, 43.480457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.984344, 34.140514, 43.381794>,  <32.954834, 33.777073, 43.217354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984344, 34.140514, 43.381794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236640, 0.384501, -0.892278,
		-0.968792, 0.163110, -0.186645,
		0.073774, 0.908600, 0.411100,
		33.006477, 34.413094, 43.505123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582531, 34.146614, 42.772160>,  <32.954834, 33.777073, 43.217354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582531, 34.146614, 42.772160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.791809, 34.429844, 42.961853>,  <32.917377, 34.599781, 43.075668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.791809, 34.429844, 42.961853>,  <32.582531, 34.146614, 42.772160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791809, 34.429844, 42.961853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208096, 0.433481, -0.876807,
		-0.826415, 0.557428, 0.079448,
		0.523196, 0.708074, 0.474233,
		32.948769, 34.642265, 43.104122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245548, 34.756237, 42.600880>,  <32.582531, 34.146614, 42.772160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245548, 34.756237, 42.600880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624706, 34.820518, 42.710907>,  <32.852203, 34.859085, 42.776924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.624706, 34.820518, 42.710907>,  <32.245548, 34.756237, 42.600880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624706, 34.820518, 42.710907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137217, 0.573295, -0.807777,
		-0.287509, 0.803435, 0.521374,
		0.947898, 0.160702, 0.275072,
		32.909077, 34.868729, 42.793430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359539, 35.447834, 42.447426>,  <32.245548, 34.756237, 42.600880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359539, 35.447834, 42.447426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727238, 35.295288, 42.486511>,  <32.947857, 35.203762, 42.509964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727238, 35.295288, 42.486511>,  <32.359539, 35.447834, 42.447426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727238, 35.295288, 42.486511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310786, 0.550615, -0.774748,
		0.241653, 0.742555, 0.624673,
		0.919247, -0.381360, 0.097718,
		33.003014, 35.180882, 42.515827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874821, 35.953094, 42.264721>,  <32.359539, 35.447834, 42.447426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874821, 35.953094, 42.264721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092457, 35.618923, 42.233688>,  <33.223038, 35.418419, 42.215069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.092457, 35.618923, 42.233688>,  <32.874821, 35.953094, 42.264721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092457, 35.618923, 42.233688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402651, 0.341116, -0.849418,
		0.736097, 0.430920, 0.521986,
		0.544089, -0.835433, -0.077584,
		33.255684, 35.368294, 42.210415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494862, 36.169407, 42.079311>,  <32.874821, 35.953094, 42.264721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494862, 36.169407, 42.079311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.464798, 35.784492, 41.974735>,  <33.446758, 35.553543, 41.911991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.464798, 35.784492, 41.974735>,  <33.494862, 36.169407, 42.079311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464798, 35.784492, 41.974735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157185, 0.247467, -0.956061,
		0.984705, -0.112952, 0.132657,
		-0.075161, -0.962290, -0.261436,
		33.442249, 35.495804, 41.896305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041393, 36.420853, 42.304459>,  <33.494862, 36.169407, 42.079311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041393, 36.420853, 42.304459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161430, 36.797489, 42.365585>,  <34.233452, 37.023472, 42.402260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.161430, 36.797489, 42.365585>,  <34.041393, 36.420853, 42.304459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161430, 36.797489, 42.365585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053562, -0.143316, 0.988227,
		0.952406, -0.304744, 0.007425,
		0.300092, 0.941590, 0.152817,
		34.251457, 37.079967, 42.411430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474781, 36.333714, 42.872509>,  <34.041393, 36.420853, 42.304459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474781, 36.333714, 42.872509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416946, 36.729469, 42.878162>,  <34.382244, 36.966923, 42.881554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.416946, 36.729469, 42.878162>,  <34.474781, 36.333714, 42.872509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416946, 36.729469, 42.878162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081827, -0.026186, 0.996303,
		0.986102, 0.142900, 0.084745,
		-0.144591, 0.989391, 0.014129,
		34.373569, 37.026287, 42.882401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933273, 36.695290, 43.226257>,  <34.474781, 36.333714, 42.872509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933273, 36.695290, 43.226257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.617706, 36.940300, 43.245911>,  <34.428364, 37.087307, 43.257702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.617706, 36.940300, 43.245911>,  <34.933273, 36.695290, 43.226257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617706, 36.940300, 43.245911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058016, -0.005355, 0.998301,
		0.611750, 0.790432, -0.031312,
		-0.788921, 0.612527, 0.049134,
		34.381031, 37.124058, 43.260651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169369, 36.991879, 43.811115>,  <34.933273, 36.695290, 43.226257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169369, 36.991879, 43.811115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.790192, 37.108009, 43.758774>,  <34.562687, 37.177689, 43.727367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.790192, 37.108009, 43.758774>,  <35.169369, 36.991879, 43.811115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790192, 37.108009, 43.758774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111202, 0.083255, 0.990304,
		0.298408, 0.953298, -0.046635,
		-0.947938, 0.290329, -0.130853,
		34.505810, 37.195107, 43.719517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204449, 37.507568, 44.305717>,  <35.169369, 36.991879, 43.811115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204449, 37.507568, 44.305717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.830070, 37.400116, 44.214642>,  <34.605442, 37.335644, 44.159996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.830070, 37.400116, 44.214642>,  <35.204449, 37.507568, 44.305717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830070, 37.400116, 44.214642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230731, -0.020645, 0.972798,
		-0.266027, 0.963021, -0.042660,
		-0.935945, -0.268634, -0.227691,
		34.549286, 37.319527, 44.146336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791298, 37.941513, 44.738087>,  <35.204449, 37.507568, 44.305717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791298, 37.941513, 44.738087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.547436, 37.646660, 44.621494>,  <34.401119, 37.469749, 44.551540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.547436, 37.646660, 44.621494>,  <34.791298, 37.941513, 44.738087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547436, 37.646660, 44.621494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418491, -0.012974, 0.908128,
		-0.673191, 0.675626, -0.300573,
		-0.609655, -0.737130, -0.291478,
		34.364540, 37.425522, 44.534050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114117, 38.093937, 45.042618>,  <34.791298, 37.941513, 44.738087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114117, 38.093937, 45.042618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121716, 37.699409, 44.977116>,  <34.126274, 37.462692, 44.937813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.121716, 37.699409, 44.977116>,  <34.114117, 38.093937, 45.042618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121716, 37.699409, 44.977116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342232, -0.160307, 0.925840,
		-0.939424, 0.038455, -0.340594,
		0.018996, -0.986318, -0.163757,
		34.127415, 37.403515, 44.927990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493870, 37.865170, 45.374268>,  <34.114117, 38.093937, 45.042618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493870, 37.865170, 45.374268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728004, 37.544163, 45.328053>,  <33.868484, 37.351559, 45.300323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.728004, 37.544163, 45.328053>,  <33.493870, 37.865170, 45.374268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728004, 37.544163, 45.328053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243410, -0.309858, 0.919097,
		-0.773391, -0.509858, -0.376711,
		0.585336, -0.802517, -0.115537,
		33.903606, 37.303410, 45.293392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122856, 37.280655, 45.630299>,  <33.493870, 37.865170, 45.374268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122856, 37.280655, 45.630299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.515263, 37.205383, 45.649033>,  <33.750706, 37.160221, 45.660275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.515263, 37.205383, 45.649033>,  <33.122856, 37.280655, 45.630299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515263, 37.205383, 45.649033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121660, -0.409165, 0.904314,
		-0.151013, -0.892844, -0.424292,
		0.981016, -0.188182, 0.046834,
		33.809566, 37.148930, 45.663082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200726, 36.544010, 45.764137>,  <33.122856, 37.280655, 45.630299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200726, 36.544010, 45.764137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535191, 36.727474, 45.884449>,  <33.735870, 36.837551, 45.956635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.535191, 36.727474, 45.884449>,  <33.200726, 36.544010, 45.764137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535191, 36.727474, 45.884449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021390, -0.520691, 0.853477,
		0.548068, -0.720078, -0.425570,
		0.836160, 0.458660, 0.300776,
		33.786037, 36.865074, 45.974682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616756, 35.979931, 46.124416>,  <33.200726, 36.544010, 45.764137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616756, 35.979931, 46.124416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.763962, 36.328342, 46.254570>,  <33.852283, 36.537388, 46.332661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.763962, 36.328342, 46.254570>,  <33.616756, 35.979931, 46.124416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763962, 36.328342, 46.254570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021510, -0.357822, 0.933542,
		0.929572, -0.336557, -0.150419,
		0.368013, 0.871030, 0.325382,
		33.874367, 36.589653, 46.352184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969734, 35.786289, 46.679668>,  <33.616756, 35.979931, 46.124416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969734, 35.786289, 46.679668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.965000, 36.181469, 46.741405>,  <33.962162, 36.418575, 46.778446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.965000, 36.181469, 46.741405>,  <33.969734, 35.786289, 46.679668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965000, 36.181469, 46.741405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098191, -0.152460, 0.983420,
		0.995097, 0.026791, -0.095204,
		-0.011832, 0.987947, 0.154343,
		33.961452, 36.477852, 46.787708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482151, 35.953426, 47.190922>,  <33.969734, 35.786289, 46.679668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482151, 35.953426, 47.190922> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.210056, 36.244926, 47.222427>,  <34.046799, 36.419827, 47.241329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.210056, 36.244926, 47.222427>,  <34.482151, 35.953426, 47.190922>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210056, 36.244926, 47.222427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143839, -0.238073, 0.960537,
		0.718744, 0.642061, 0.266768,
		-0.680234, 0.728752, 0.078760,
		34.005985, 36.463551, 47.246056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686398, 36.341469, 47.815720>,  <34.482151, 35.953426, 47.190922>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686398, 36.341469, 47.815720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.298954, 36.422401, 47.757942>,  <34.066490, 36.470959, 47.723278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.298954, 36.422401, 47.757942>,  <34.686398, 36.341469, 47.815720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298954, 36.422401, 47.757942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193779, -0.250547, 0.948513,
		0.155724, 0.946725, 0.281889,
		-0.968607, 0.202330, -0.144439,
		34.008373, 36.483101, 47.714611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158623, 36.775707, 48.257881>,  <34.686398, 36.341469, 47.815720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158623, 36.775707, 48.257881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506077, 36.599144, 48.347893>,  <35.714550, 36.493206, 48.401901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.506077, 36.599144, 48.347893>,  <35.158623, 36.775707, 48.257881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506077, 36.599144, 48.347893> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352297, 0.230902, -0.906957,
		0.348374, 0.867091, 0.356075,
		0.868633, -0.441404, 0.225033,
		35.766666, 36.466724, 48.415401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730473, 37.239201, 48.046162>,  <35.158623, 36.775707, 48.257881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730473, 37.239201, 48.046162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899307, 36.876595, 48.042549>,  <36.000607, 36.659031, 48.040382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899307, 36.876595, 48.042549>,  <35.730473, 37.239201, 48.046162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899307, 36.876595, 48.042549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153376, 0.081224, -0.984824,
		0.893489, 0.414292, 0.173320,
		0.422082, -0.906513, -0.009031,
		36.025932, 36.604641, 48.039841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371399, 37.359211, 47.852886>,  <35.730473, 37.239201, 48.046162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371399, 37.359211, 47.852886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.360432, 36.970215, 47.760353>,  <36.353851, 36.736816, 47.704834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.360432, 36.970215, 47.760353>,  <36.371399, 37.359211, 47.852886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360432, 36.970215, 47.760353> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507905, 0.185767, -0.841144,
		0.860976, -0.140561, 0.488838,
		-0.027422, -0.972488, -0.231333,
		36.352203, 36.678467, 47.690952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033577, 37.244865, 47.612049>,  <36.371399, 37.359211, 47.852886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033577, 37.244865, 47.612049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.813404, 36.938694, 47.478699>,  <36.681301, 36.754993, 47.398689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.813404, 36.938694, 47.478699>,  <37.033577, 37.244865, 47.612049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813404, 36.938694, 47.478699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477524, 0.038907, -0.877756,
		0.684829, -0.642345, 0.344094,
		-0.550435, -0.765427, -0.333380,
		36.648273, 36.709064, 47.378685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513321, 36.692623, 47.473618>,  <37.033577, 37.244865, 47.612049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513321, 36.692623, 47.473618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.179340, 36.633354, 47.261620>,  <36.978951, 36.597794, 47.134418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.179340, 36.633354, 47.261620>,  <37.513321, 36.692623, 47.473618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179340, 36.633354, 47.261620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547685, -0.129581, -0.826589,
		0.053800, -0.980436, 0.189346,
		-0.834953, -0.148172, -0.529998,
		36.928856, 36.588902, 47.102619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670269, 36.120609, 47.134388>,  <37.513321, 36.692623, 47.473618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670269, 36.120609, 47.134388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.367424, 36.279991, 46.927307>,  <37.185719, 36.375618, 46.803059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.367424, 36.279991, 46.927307>,  <37.670269, 36.120609, 47.134388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367424, 36.279991, 46.927307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499265, -0.158176, -0.851889,
		-0.421325, -0.903447, -0.079176,
		-0.757112, 0.398452, -0.517704,
		37.140289, 36.399529, 46.771996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538418, 35.670830, 46.586258>,  <37.670269, 36.120609, 47.134388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538418, 35.670830, 46.586258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.386665, 36.016949, 46.455212>,  <37.295612, 36.224621, 46.376583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.386665, 36.016949, 46.455212>,  <37.538418, 35.670830, 46.586258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386665, 36.016949, 46.455212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470480, -0.124476, -0.873587,
		-0.796692, -0.485558, -0.359882,
		-0.379381, 0.865297, -0.327615,
		37.272850, 36.276539, 46.356926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280014, 35.595680, 45.880947>,  <37.538418, 35.670830, 46.586258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280014, 35.595680, 45.880947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.306255, 35.994656, 45.892311>,  <37.322002, 36.234043, 45.899128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.306255, 35.994656, 45.892311>,  <37.280014, 35.595680, 45.880947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306255, 35.994656, 45.892311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423792, -0.002076, -0.905757,
		-0.903380, 0.071465, -0.422844,
		0.065607, 0.997441, 0.028411,
		37.325939, 36.293888, 45.900833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221828, 35.671566, 45.194805>,  <37.280014, 35.595680, 45.880947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221828, 35.671566, 45.194805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376701, 36.002300, 45.357994>,  <37.469624, 36.200741, 45.455906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376701, 36.002300, 45.357994>,  <37.221828, 35.671566, 45.194805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376701, 36.002300, 45.357994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513577, 0.174074, -0.840201,
		-0.765722, 0.534834, -0.357244,
		0.387181, 0.826832, 0.407970,
		37.492855, 36.250351, 45.480385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058952, 36.167023, 44.770508>,  <37.221828, 35.671566, 45.194805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058952, 36.167023, 44.770508> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.335289, 36.364479, 44.981812>,  <37.501091, 36.482952, 45.108593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.335289, 36.364479, 44.981812>,  <37.058952, 36.167023, 44.770508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335289, 36.364479, 44.981812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446906, 0.282791, -0.848707,
		-0.568341, 0.822406, -0.025246,
		0.690842, 0.493638, 0.528260,
		37.542542, 36.512569, 45.140289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067448, 36.838600, 44.542908>,  <37.058952, 36.167023, 44.770508>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067448, 36.838600, 44.542908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.436226, 36.789627, 44.689888>,  <37.657494, 36.760242, 44.778076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.436226, 36.789627, 44.689888>,  <37.067448, 36.838600, 44.542908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436226, 36.789627, 44.689888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383394, 0.423087, -0.820979,
		-0.054953, 0.897780, 0.437003,
		0.921949, -0.122429, 0.367453,
		37.712811, 36.752899, 44.800125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341007, 37.507526, 44.468079>,  <37.067448, 36.838600, 44.542908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341007, 37.507526, 44.468079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.658413, 37.274273, 44.537693>,  <37.848858, 37.134319, 44.579460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.658413, 37.274273, 44.537693>,  <37.341007, 37.507526, 44.468079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658413, 37.274273, 44.537693> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521066, 0.503323, -0.689316,
		0.314368, 0.637666, 0.703246,
		0.793513, -0.583136, 0.174037,
		37.896465, 37.099331, 44.589905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876087, 37.917736, 44.565052>,  <37.341007, 37.507526, 44.468079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876087, 37.917736, 44.565052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.053738, 37.574821, 44.460884>,  <38.160328, 37.369072, 44.398384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.053738, 37.574821, 44.460884>,  <37.876087, 37.917736, 44.565052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053738, 37.574821, 44.460884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494775, 0.476993, -0.726412,
		0.746961, 0.193767, 0.636007,
		0.444125, -0.857282, -0.260424,
		38.186974, 37.317638, 44.382755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608009, 37.781372, 44.547478>,  <37.876087, 37.917736, 44.565052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608009, 37.781372, 44.547478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.553795, 37.565357, 44.215214>,  <38.521267, 37.435749, 44.015858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.553795, 37.565357, 44.215214>,  <38.608009, 37.781372, 44.547478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553795, 37.565357, 44.215214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703158, 0.538215, -0.464644,
		0.697997, -0.647056, 0.306788,
		-0.135532, -0.540040, -0.830655,
		38.513134, 37.403347, 43.966019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.207146, 32.080616, 27.073856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.852287, 32.232933, 26.969576>,  <26.639372, 32.324322, 26.907007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.852287, 32.232933, 26.969576>,  <27.207146, 32.080616, 27.073856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852287, 32.232933, 26.969576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002839, 0.569415, 0.822045,
		0.461476, 0.728536, -0.506237,
		-0.887148, 0.380792, -0.260703,
		26.586143, 32.347172, 26.891365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338753, 32.795933, 27.053373>,  <27.207146, 32.080616, 27.073856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338753, 32.795933, 27.053373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.951044, 32.720760, 27.116861>,  <26.718418, 32.675655, 27.154953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.951044, 32.720760, 27.116861>,  <27.338753, 32.795933, 27.053373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951044, 32.720760, 27.116861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002029, 0.651309, 0.758810,
		-0.245981, 0.735172, -0.631677,
		-0.969272, -0.187934, 0.158718,
		26.660263, 32.664379, 27.164476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.153917, 33.413544, 27.245962>,  <27.338753, 32.795933, 27.053373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.153917, 33.413544, 27.245962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831959, 33.206577, 27.362183>,  <26.638784, 33.082397, 27.431915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831959, 33.206577, 27.362183>,  <27.153917, 33.413544, 27.245962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831959, 33.206577, 27.362183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239395, 0.731140, 0.638846,
		-0.542987, 0.444646, -0.712359,
		-0.804894, -0.517420, 0.290553,
		26.590490, 33.051350, 27.449348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803173, 33.935497, 27.372522>,  <27.153917, 33.413544, 27.245962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803173, 33.935497, 27.372522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.681042, 33.611343, 27.572544>,  <26.607763, 33.416851, 27.692558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.681042, 33.611343, 27.572544>,  <26.803173, 33.935497, 27.372522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.681042, 33.611343, 27.572544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223170, 0.571405, 0.789741,
		-0.925726, 0.129534, -0.355320,
		-0.305330, -0.810381, 0.500057,
		26.589443, 33.368229, 27.722561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308792, 34.221260, 27.791918>,  <26.803173, 33.935497, 27.372522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308792, 34.221260, 27.791918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405596, 33.872700, 27.962608>,  <26.463678, 33.663563, 28.065023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.405596, 33.872700, 27.962608>,  <26.308792, 34.221260, 27.791918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.405596, 33.872700, 27.962608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022165, 0.444652, 0.895429,
		-0.970021, -0.207243, 0.126924,
		0.242009, -0.871398, 0.426728,
		26.478199, 33.611279, 28.090626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904682, 34.107769, 28.411114>,  <26.308792, 34.221260, 27.791918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904682, 34.107769, 28.411114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.225224, 33.874691, 28.465231>,  <26.417547, 33.734844, 28.497702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.225224, 33.874691, 28.465231>,  <25.904682, 34.107769, 28.411114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.225224, 33.874691, 28.465231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096168, 0.348722, 0.932279,
		-0.590413, -0.734072, 0.335485,
		0.801351, -0.582693, 0.135295,
		26.465630, 33.699883, 28.505819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849873, 33.593185, 28.918879>,  <25.904682, 34.107769, 28.411114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849873, 33.593185, 28.918879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.249008, 33.619423, 28.917391>,  <26.488489, 33.635166, 28.916498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.249008, 33.619423, 28.917391>,  <25.849873, 33.593185, 28.918879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249008, 33.619423, 28.917391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008333, 0.182497, 0.983171,
		0.065165, -0.981016, 0.182649,
		0.997840, 0.065590, -0.003718,
		26.548361, 33.639099, 28.916275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.071478, 33.257492, 29.540628>,  <25.849873, 33.593185, 28.918879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.071478, 33.257492, 29.540628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.363714, 33.500183, 29.415333>,  <26.539055, 33.645798, 29.340155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.363714, 33.500183, 29.415333>,  <26.071478, 33.257492, 29.540628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.363714, 33.500183, 29.415333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115784, 0.342023, 0.932531,
		0.672929, -0.717565, 0.179629,
		0.730589, 0.606730, -0.313240,
		26.582891, 33.682201, 29.321362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.680246, 33.068954, 29.909456>,  <26.071478, 33.257492, 29.540628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.680246, 33.068954, 29.909456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.757904, 33.435337, 29.768980>,  <26.804499, 33.655167, 29.684694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.757904, 33.435337, 29.768980>,  <26.680246, 33.068954, 29.909456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757904, 33.435337, 29.768980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311590, 0.281884, 0.907443,
		0.930172, -0.285604, -0.230675,
		0.194146, 0.915954, -0.351192,
		26.816149, 33.710125, 29.663622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244572, 33.321270, 30.358164>,  <26.680246, 33.068954, 29.909456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244572, 33.321270, 30.358164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117439, 33.663158, 30.193996>,  <27.041161, 33.868290, 30.095495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.117439, 33.663158, 30.193996>,  <27.244572, 33.321270, 30.358164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117439, 33.663158, 30.193996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131428, 0.468399, 0.873687,
		0.938995, 0.223744, -0.261205,
		-0.317830, 0.854717, -0.410418,
		27.022091, 33.919575, 30.070871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697195, 33.674229, 30.688856>,  <27.244572, 33.321270, 30.358164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697195, 33.674229, 30.688856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430502, 33.934395, 30.543293>,  <27.270487, 34.090492, 30.455956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.430502, 33.934395, 30.543293>,  <27.697195, 33.674229, 30.688856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430502, 33.934395, 30.543293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030854, 0.463768, 0.885419,
		0.744658, 0.601566, -0.289142,
		-0.666733, 0.650414, -0.363909,
		27.230482, 34.129520, 30.434120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917854, 34.386124, 30.903482>,  <27.697195, 33.674229, 30.688856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917854, 34.386124, 30.903482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.528318, 34.355789, 30.817797>,  <27.294598, 34.337589, 30.766384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.528318, 34.355789, 30.817797>,  <27.917854, 34.386124, 30.903482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.528318, 34.355789, 30.817797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226288, 0.410017, 0.883561,
		0.020822, 0.908919, -0.416452,
		-0.973838, -0.075841, -0.214215,
		27.236168, 34.333038, 30.753532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534044, 34.951004, 31.292582>,  <27.917854, 34.386124, 30.903482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534044, 34.951004, 31.292582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.225853, 34.717419, 31.190331>,  <27.040939, 34.577267, 31.128979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.225853, 34.717419, 31.190331>,  <27.534044, 34.951004, 31.292582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225853, 34.717419, 31.190331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379941, 0.098680, 0.919732,
		-0.511868, 0.805757, -0.297904,
		-0.770477, -0.583968, -0.255629,
		26.994709, 34.542229, 31.113642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.968246, 35.305088, 31.617933>,  <27.534044, 34.951004, 31.292582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.968246, 35.305088, 31.617933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836760, 34.933517, 31.549774>,  <26.757868, 34.710575, 31.508879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.836760, 34.933517, 31.549774>,  <26.968246, 35.305088, 31.617933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836760, 34.933517, 31.549774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578124, 0.055248, 0.814076,
		-0.746804, 0.366114, -0.555197,
		-0.328718, -0.928928, -0.170400,
		26.738144, 34.654839, 31.498653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177958, 35.257877, 31.718981>,  <26.968246, 35.305088, 31.617933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177958, 35.257877, 31.718981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.311375, 34.886539, 31.784611>,  <26.391426, 34.663738, 31.823990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.311375, 34.886539, 31.784611>,  <26.177958, 35.257877, 31.718981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311375, 34.886539, 31.784611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611380, -0.080527, 0.787229,
		-0.717609, -0.362889, -0.594432,
		0.333545, -0.928347, 0.164076,
		26.411438, 34.608036, 31.833834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608473, 35.011456, 32.134861>,  <26.177958, 35.257877, 31.718981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608473, 35.011456, 32.134861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.898586, 34.739479, 32.178017>,  <26.072655, 34.576294, 32.203911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.898586, 34.739479, 32.178017>,  <25.608473, 35.011456, 32.134861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.898586, 34.739479, 32.178017> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439936, -0.337205, 0.832315,
		-0.529546, -0.651129, -0.543702,
		0.725284, -0.679944, 0.107890,
		26.116171, 34.535496, 32.210384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.252874, 34.368378, 32.517719>,  <25.608473, 35.011456, 32.134861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.252874, 34.368378, 32.517719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.646654, 34.326641, 32.574249>,  <25.882921, 34.301601, 32.608166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.646654, 34.326641, 32.574249>,  <25.252874, 34.368378, 32.517719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646654, 34.326641, 32.574249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172441, -0.420518, 0.890746,
		-0.033508, -0.901265, -0.431970,
		0.984450, -0.104337, 0.141324,
		25.941990, 34.295341, 32.616646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.315470, 33.706783, 32.821644>,  <25.252874, 34.368378, 32.517719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.315470, 33.706783, 32.821644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.620373, 33.935936, 32.942158>,  <25.803314, 34.073429, 33.014465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.620373, 33.935936, 32.942158>,  <25.315470, 33.706783, 32.821644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620373, 33.935936, 32.942158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263787, -0.150111, 0.952829,
		0.591084, -0.805775, 0.036695,
		0.762257, 0.572882, 0.301282,
		25.849051, 34.107800, 33.032543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506306, 33.336155, 33.427952>,  <25.315470, 33.706783, 32.821644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506306, 33.336155, 33.427952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.719791, 33.673004, 33.458858>,  <25.847883, 33.875114, 33.477402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.719791, 33.673004, 33.458858>,  <25.506306, 33.336155, 33.427952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719791, 33.673004, 33.458858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157782, -0.188928, 0.969232,
		0.830814, -0.505103, -0.233706,
		0.533716, 0.842126, 0.077268,
		25.879906, 33.925644, 33.482040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202309, 33.193104, 33.745480>,  <25.506306, 33.336155, 33.427952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202309, 33.193104, 33.745480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.145906, 33.580395, 33.828083>,  <26.112066, 33.812771, 33.877647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.145906, 33.580395, 33.828083>,  <26.202309, 33.193104, 33.745480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145906, 33.580395, 33.828083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315546, -0.153764, 0.936369,
		0.938376, 0.197195, -0.283840,
		-0.141003, 0.968231, 0.206512,
		26.103605, 33.870865, 33.890038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776548, 33.468605, 34.138893>,  <26.202309, 33.193104, 33.745480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776548, 33.468605, 34.138893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504461, 33.741898, 34.245094>,  <26.341209, 33.905872, 34.308815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504461, 33.741898, 34.245094>,  <26.776548, 33.468605, 34.138893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504461, 33.741898, 34.245094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175143, -0.200226, 0.963968,
		0.711777, 0.702211, 0.016534,
		-0.680219, 0.683235, 0.265504,
		26.300396, 33.946869, 34.324745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.125166, 33.818771, 34.717354>,  <26.776548, 33.468605, 34.138893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.125166, 33.818771, 34.717354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.731869, 33.886459, 34.744476>,  <26.495892, 33.927074, 34.760750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.731869, 33.886459, 34.744476>,  <27.125166, 33.818771, 34.717354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731869, 33.886459, 34.744476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040672, -0.158968, 0.986445,
		0.177710, 0.972673, 0.149422,
		-0.983242, 0.169224, 0.067811,
		26.436895, 33.937225, 34.764820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945225, 33.841431, 34.741146>,  <27.125166, 33.818771, 34.717354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945225, 33.841431, 34.741146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.291698, 34.013397, 34.639244>,  <28.499582, 34.116577, 34.578102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.291698, 34.013397, 34.639244>,  <27.945225, 33.841431, 34.741146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291698, 34.013397, 34.639244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112194, -0.329472, -0.937476,
		-0.486967, 0.840609, -0.237150,
		0.866185, 0.429912, -0.254754,
		28.551554, 34.142372, 34.562817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855131, 34.211143, 34.112892>,  <27.945225, 33.841431, 34.741146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855131, 34.211143, 34.112892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.249004, 34.147648, 34.141735>,  <28.485329, 34.109550, 34.159039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.249004, 34.147648, 34.141735>,  <27.855131, 34.211143, 34.112892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249004, 34.147648, 34.141735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019951, -0.308252, -0.951096,
		0.173201, 0.937968, -0.300364,
		0.984684, -0.158738, 0.072103,
		28.544409, 34.100025, 34.163364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202690, 34.379147, 33.389336>,  <27.855131, 34.211143, 34.112892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202690, 34.379147, 33.389336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.489372, 34.156727, 33.557690>,  <28.661381, 34.023273, 33.658703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.489372, 34.156727, 33.557690>,  <28.202690, 34.379147, 33.389336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489372, 34.156727, 33.557690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163271, -0.452961, -0.876452,
		0.677995, 0.696876, -0.233853,
		0.716705, -0.556049, 0.420885,
		28.704384, 33.989914, 33.683956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640610, 34.464298, 32.943127>,  <28.202690, 34.379147, 33.389336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640610, 34.464298, 32.943127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765945, 34.152287, 33.159782>,  <28.841146, 33.965080, 33.289776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.765945, 34.152287, 33.159782>,  <28.640610, 34.464298, 32.943127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765945, 34.152287, 33.159782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350107, -0.435297, -0.829422,
		0.882748, 0.449522, 0.136698,
		0.313339, -0.780030, 0.541638,
		28.859947, 33.918278, 33.322273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300884, 34.232323, 32.608692>,  <28.640610, 34.464298, 32.943127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300884, 34.232323, 32.608692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.151360, 33.924923, 32.816414>,  <29.061646, 33.740482, 32.941048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.151360, 33.924923, 32.816414>,  <29.300884, 34.232323, 32.608692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.151360, 33.924923, 32.816414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041153, -0.573088, -0.818460,
		0.926591, -0.284579, 0.245853,
		-0.373812, -0.768495, 0.519307,
		29.039215, 33.694374, 32.972206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.725035, 33.712166, 32.451412>,  <29.300884, 34.232323, 32.608692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.725035, 33.712166, 32.451412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.406555, 33.514107, 32.590496>,  <29.215467, 33.395271, 32.673946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.406555, 33.514107, 32.590496>,  <29.725035, 33.712166, 32.451412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406555, 33.514107, 32.590496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068653, -0.644910, -0.761169,
		0.601130, -0.582169, 0.547469,
		-0.796197, -0.495147, 0.347707,
		29.167696, 33.365562, 32.694809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930655, 32.931973, 32.466343>,  <29.725035, 33.712166, 32.451412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930655, 32.931973, 32.466343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.531643, 32.956669, 32.452930>,  <29.292236, 32.971485, 32.444885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.531643, 32.956669, 32.452930>,  <29.930655, 32.931973, 32.466343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.531643, 32.956669, 32.452930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032663, -0.830060, -0.556717,
		-0.062203, -0.554246, 0.830025,
		-0.997529, 0.061740, -0.033529,
		29.232384, 32.975189, 32.442871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681662, 32.280525, 32.399727>,  <29.930655, 32.931973, 32.466343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681662, 32.280525, 32.399727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.344831, 32.475464, 32.307289>,  <29.142733, 32.592426, 32.251827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.344831, 32.475464, 32.307289>,  <29.681662, 32.280525, 32.399727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344831, 32.475464, 32.307289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282594, -0.763592, -0.580575,
		-0.459398, -0.423584, 0.780724,
		-0.842077, 0.487343, -0.231090,
		29.092209, 32.621666, 32.237961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198473, 31.749807, 32.359035>,  <29.681662, 32.280525, 32.399727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198473, 31.749807, 32.359035> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.032085, 32.046638, 32.148781>,  <28.932253, 32.224739, 32.022629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.032085, 32.046638, 32.148781>,  <29.198473, 31.749807, 32.359035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032085, 32.046638, 32.148781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405357, -0.668719, -0.623298,
		-0.814037, -0.046202, 0.578972,
		-0.415967, 0.742079, -0.525634,
		28.907295, 32.269260, 31.991091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440399, 31.529196, 32.189541>,  <29.198473, 31.749807, 32.359035>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440399, 31.529196, 32.189541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.563580, 31.805033, 31.927359>,  <28.637487, 31.970535, 31.770048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.563580, 31.805033, 31.927359>,  <28.440399, 31.529196, 32.189541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563580, 31.805033, 31.927359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387396, -0.538355, -0.748397,
		-0.868960, 0.484392, 0.101359,
		0.307951, 0.689593, -0.655460,
		28.655964, 32.011909, 31.730721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822048, 31.604176, 31.689426>,  <28.440399, 31.529196, 32.189541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822048, 31.604176, 31.689426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.142096, 31.765909, 31.512190>,  <28.334124, 31.862949, 31.405848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.142096, 31.765909, 31.512190>,  <27.822048, 31.604176, 31.689426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142096, 31.765909, 31.512190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292257, -0.382298, -0.876604,
		-0.523831, 0.830881, -0.187714,
		0.800116, 0.404332, -0.443091,
		28.382130, 31.887209, 31.379263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568272, 32.003002, 31.158245>,  <27.822048, 31.604176, 31.689426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568272, 32.003002, 31.158245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.940538, 31.900038, 31.054245>,  <28.163898, 31.838259, 30.991846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.940538, 31.900038, 31.054245>,  <27.568272, 32.003002, 31.158245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940538, 31.900038, 31.054245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342023, -0.359738, -0.868107,
		0.129932, 0.896842, -0.422837,
		0.930665, -0.257414, -0.259999,
		28.219738, 31.822813, 30.976246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601189, 32.241726, 30.458017>,  <27.568272, 32.003002, 31.158245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601189, 32.241726, 30.458017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.939852, 32.028957, 30.464172>,  <28.143049, 31.901297, 30.467865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.939852, 32.028957, 30.464172>,  <27.601189, 32.241726, 30.458017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939852, 32.028957, 30.464172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310978, -0.518038, -0.796825,
		0.431817, 0.669851, -0.604014,
		0.846656, -0.531918, 0.015389,
		28.193850, 31.869383, 30.468788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858574, 32.375370, 29.867695>,  <27.601189, 32.241726, 30.458017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858574, 32.375370, 29.867695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.989225, 32.020508, 29.998085>,  <28.067616, 31.807589, 30.076319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.989225, 32.020508, 29.998085>,  <27.858574, 32.375370, 29.867695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.989225, 32.020508, 29.998085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280098, -0.420258, -0.863092,
		0.902695, 0.190605, -0.385760,
		0.326628, -0.887160, 0.325977,
		28.087214, 31.754360, 30.095879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165636, 32.081688, 29.252714>,  <27.858574, 32.375370, 29.867695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165636, 32.081688, 29.252714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.089172, 31.777529, 29.500990>,  <28.043293, 31.595034, 29.649956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.089172, 31.777529, 29.500990>,  <28.165636, 32.081688, 29.252714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089172, 31.777529, 29.500990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295765, -0.558340, -0.775100,
		0.935938, -0.331747, -0.118165,
		-0.191161, -0.760395, 0.620691,
		28.031824, 31.549410, 29.687197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512014, 31.521914, 28.955151>,  <28.165636, 32.081688, 29.252714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512014, 31.521914, 28.955151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240892, 31.367350, 29.205357>,  <28.078218, 31.274611, 29.355480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.240892, 31.367350, 29.205357>,  <28.512014, 31.521914, 28.955151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.240892, 31.367350, 29.205357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237978, -0.689661, -0.683910,
		0.695662, -0.612417, 0.375499,
		-0.677805, -0.386410, 0.625513,
		28.037550, 31.251427, 29.393011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594517, 30.745523, 28.913193>,  <28.512014, 31.521914, 28.955151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594517, 30.745523, 28.913193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.224148, 30.825090, 29.041632>,  <28.001926, 30.872831, 29.118694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.224148, 30.825090, 29.041632>,  <28.594517, 30.745523, 28.913193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224148, 30.825090, 29.041632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371173, -0.636733, -0.675871,
		0.070010, -0.744985, 0.663397,
		-0.925921, 0.198917, 0.321096,
		27.946371, 30.884766, 29.137960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.280220, 30.069986, 28.900791>,  <28.594517, 30.745523, 28.913193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.280220, 30.069986, 28.900791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977592, 30.331371, 28.891050>,  <27.796017, 30.488201, 28.885206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.977592, 30.331371, 28.891050>,  <28.280220, 30.069986, 28.900791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977592, 30.331371, 28.891050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481235, -0.581607, -0.655856,
		-0.442737, -0.484483, 0.754494,
		-0.756569, 0.653460, -0.024349,
		27.750622, 30.527409, 28.883745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610619, 29.627352, 28.857935>,  <28.280220, 30.069986, 28.900791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610619, 29.627352, 28.857935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.523399, 29.993799, 28.723364>,  <27.471067, 30.213667, 28.642622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.523399, 29.993799, 28.723364>,  <27.610619, 29.627352, 28.857935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523399, 29.993799, 28.723364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512749, -0.400847, -0.759216,
		-0.830388, 0.006959, 0.557142,
		-0.218046, 0.916118, -0.336427,
		27.457985, 30.268635, 28.622437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870689, 29.789143, 28.864006>,  <27.610619, 29.627352, 28.857935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870689, 29.789143, 28.864006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020346, 30.039129, 28.589945>,  <27.110140, 30.189121, 28.425508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.020346, 30.039129, 28.589945>,  <26.870689, 29.789143, 28.864006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020346, 30.039129, 28.589945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519533, -0.470737, -0.713086,
		-0.768182, 0.622756, 0.148568,
		0.374142, 0.624966, -0.685154,
		27.132587, 30.226620, 28.384399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.490536, 34.079243, 48.864326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.179409, 33.846493, 48.769306>,  <38.992733, 33.706844, 48.712292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.179409, 33.846493, 48.769306>,  <39.490536, 34.079243, 48.864326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179409, 33.846493, 48.769306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436978, 0.229013, 0.869830,
		-0.451726, 0.780372, -0.432394,
		-0.777814, -0.581871, -0.237554,
		38.946064, 33.671932, 48.698040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768761, 34.527016, 48.804050>,  <39.490536, 34.079243, 48.864326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768761, 34.527016, 48.804050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.731209, 34.142174, 48.906460>,  <38.708679, 33.911270, 48.967907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.731209, 34.142174, 48.906460>,  <38.768761, 34.527016, 48.804050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.731209, 34.142174, 48.906460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419498, 0.271441, 0.866222,
		-0.902889, -0.026084, -0.429082,
		-0.093876, -0.962102, 0.256023,
		38.703045, 33.853542, 48.983269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208122, 34.499607, 49.361320>,  <38.768761, 34.527016, 48.804050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208122, 34.499607, 49.361320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.349308, 34.126026, 49.383789>,  <38.434021, 33.901878, 49.397270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.349308, 34.126026, 49.383789>,  <38.208122, 34.499607, 49.361320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349308, 34.126026, 49.383789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277034, -0.046978, 0.959711,
		-0.893682, -0.354307, -0.275317,
		0.352967, -0.933948, 0.056171,
		38.455196, 33.845840, 49.400642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796177, 34.129200, 49.793152>,  <38.208122, 34.499607, 49.361320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796177, 34.129200, 49.793152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.094185, 33.862411, 49.789402>,  <38.272991, 33.702339, 49.787151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.094185, 33.862411, 49.789402>,  <37.796177, 34.129200, 49.793152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094185, 33.862411, 49.789402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305525, -0.353700, 0.884053,
		-0.592953, -0.655778, -0.467292,
		0.745024, -0.666972, -0.009371,
		38.317692, 33.662319, 49.786591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550552, 33.537437, 50.065651>,  <37.796177, 34.129200, 49.793152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550552, 33.537437, 50.065651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947067, 33.532619, 50.118103>,  <38.184978, 33.529728, 50.149574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.947067, 33.532619, 50.118103>,  <37.550552, 33.537437, 50.065651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947067, 33.532619, 50.118103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130820, -0.204153, 0.970159,
		0.015084, -0.978865, -0.203951,
		0.991291, -0.012047, 0.131135,
		38.244453, 33.529007, 50.157444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703621, 32.847893, 50.369839>,  <37.550552, 33.537437, 50.065651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703621, 32.847893, 50.369839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.984829, 33.115234, 50.467049>,  <38.153553, 33.275639, 50.525375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.984829, 33.115234, 50.467049>,  <37.703621, 32.847893, 50.369839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984829, 33.115234, 50.467049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052584, -0.291943, 0.954989,
		0.709220, -0.684159, -0.170098,
		0.703024, 0.668353, 0.243027,
		38.195736, 33.315739, 50.539955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195835, 32.419586, 50.768284>,  <37.703621, 32.847893, 50.369839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195835, 32.419586, 50.768284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247505, 32.804356, 50.864628>,  <38.278507, 33.035217, 50.922432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.247505, 32.804356, 50.864628>,  <38.195835, 32.419586, 50.768284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247505, 32.804356, 50.864628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047092, -0.236666, 0.970449,
		0.990503, -0.136703, 0.014727,
		0.129178, 0.961926, 0.240856,
		38.286259, 33.092934, 50.936886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621693, 32.371315, 51.376457>,  <38.195835, 32.419586, 50.768284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621693, 32.371315, 51.376457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.477112, 32.743778, 51.395603>,  <38.390366, 32.967258, 51.407089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.477112, 32.743778, 51.395603>,  <38.621693, 32.371315, 51.376457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.477112, 32.743778, 51.395603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124878, -0.099215, 0.987199,
		0.923991, 0.350846, 0.152144,
		-0.361450, 0.931163, 0.047861,
		38.368675, 33.023129, 51.409962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873821, 32.620995, 52.036865>,  <38.621693, 32.371315, 51.376457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873821, 32.620995, 52.036865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.577263, 32.871532, 51.940510>,  <38.399330, 33.021854, 51.882698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.577263, 32.871532, 51.940510>,  <38.873821, 32.620995, 52.036865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577263, 32.871532, 51.940510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221283, 0.110702, 0.968906,
		0.633538, 0.771644, 0.056527,
		-0.741392, 0.626348, -0.240886,
		38.354847, 33.059437, 51.868244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932945, 33.260658, 52.482883>,  <38.873821, 32.620995, 52.036865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932945, 33.260658, 52.482883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.566723, 33.165169, 52.353413>,  <38.346989, 33.107876, 52.275730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.566723, 33.165169, 52.353413>,  <38.932945, 33.260658, 52.482883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566723, 33.165169, 52.353413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354841, 0.100646, 0.929494,
		-0.189313, 0.965859, -0.176855,
		-0.915559, -0.238720, -0.323673,
		38.292053, 33.093552, 52.256310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613026, 33.488873, 53.082752>,  <38.932945, 33.260658, 52.482883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613026, 33.488873, 53.082752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.370651, 33.239902, 52.884594>,  <38.225227, 33.090519, 52.765697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.370651, 33.239902, 52.884594>,  <38.613026, 33.488873, 53.082752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370651, 33.239902, 52.884594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470778, -0.221415, 0.854016,
		-0.641254, 0.750704, -0.158862,
		-0.605938, -0.622430, -0.495399,
		38.188869, 33.053173, 52.735973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018673, 33.705948, 53.191391>,  <38.613026, 33.488873, 53.082752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018673, 33.705948, 53.191391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.942162, 33.329887, 53.078590>,  <37.896255, 33.104252, 53.010910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.942162, 33.329887, 53.078590>,  <38.018673, 33.705948, 53.191391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942162, 33.329887, 53.078590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553490, -0.133950, 0.822013,
		-0.810592, 0.313318, -0.494744,
		-0.191281, -0.940154, -0.281998,
		37.884777, 33.047840, 52.993992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493595, 33.967632, 53.634998>,  <38.018673, 33.705948, 53.191391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493595, 33.967632, 53.634998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135963, 33.816925, 53.731884>,  <36.921383, 33.726501, 53.790016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135963, 33.816925, 53.731884>,  <37.493595, 33.967632, 53.634998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135963, 33.816925, 53.731884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397334, 0.417552, -0.817176,
		0.206750, -0.826859, -0.523028,
		-0.894081, -0.376767, 0.242210,
		36.867741, 33.703896, 53.804546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293880, 33.576485, 53.037563>,  <37.493595, 33.967632, 53.634998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293880, 33.576485, 53.037563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967773, 33.675945, 53.246754>,  <36.772110, 33.735622, 53.372269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967773, 33.675945, 53.246754>,  <37.293880, 33.576485, 53.037563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967773, 33.675945, 53.246754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366177, 0.478264, -0.798234,
		-0.448606, -0.842279, -0.298862,
		-0.815271, 0.248656, 0.522975,
		36.723190, 33.750542, 53.403645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601830, 33.318554, 52.779057>,  <37.293880, 33.576485, 53.037563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601830, 33.318554, 52.779057> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.542004, 33.663906, 52.971809>,  <36.506107, 33.871117, 53.087460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.542004, 33.663906, 52.971809>,  <36.601830, 33.318554, 52.779057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542004, 33.663906, 52.971809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320936, 0.418585, -0.849580,
		-0.935216, -0.281724, 0.214481,
		-0.149569, 0.863376, 0.481883,
		36.497131, 33.922920, 53.116375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033344, 33.648430, 52.459679>,  <36.601830, 33.318554, 52.779057>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033344, 33.648430, 52.459679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.198570, 33.958714, 52.650532>,  <36.297707, 34.144882, 52.765045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.198570, 33.958714, 52.650532>,  <36.033344, 33.648430, 52.459679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198570, 33.958714, 52.650532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086330, 0.554911, -0.827418,
		-0.906602, 0.300584, 0.296179,
		0.413062, 0.775708, 0.477134,
		36.322491, 34.191425, 52.793671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571796, 34.161137, 52.369572>,  <36.033344, 33.648430, 52.459679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571796, 34.161137, 52.369572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888405, 34.377296, 52.483734>,  <36.078369, 34.506992, 52.552231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.888405, 34.377296, 52.483734>,  <35.571796, 34.161137, 52.369572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888405, 34.377296, 52.483734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317384, 0.762574, -0.563691,
		-0.522261, 0.355593, 0.775111,
		0.791525, 0.540402, 0.285403,
		36.125862, 34.539417, 52.569355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291763, 34.733147, 52.610336>,  <35.571796, 34.161137, 52.369572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291763, 34.733147, 52.610336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666874, 34.831215, 52.511982>,  <35.891941, 34.890057, 52.452969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666874, 34.831215, 52.511982>,  <35.291763, 34.733147, 52.610336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666874, 34.831215, 52.511982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347002, 0.687464, -0.637951,
		0.012634, 0.683582, 0.729764,
		0.937779, 0.245170, -0.245890,
		35.948208, 34.904766, 52.438213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224457, 35.318516, 52.363609>,  <35.291763, 34.733147, 52.610336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224457, 35.318516, 52.363609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600437, 35.256985, 52.241741>,  <35.826027, 35.220066, 52.168621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600437, 35.256985, 52.241741>,  <35.224457, 35.318516, 52.363609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600437, 35.256985, 52.241741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140188, 0.639897, -0.755566,
		0.311183, 0.752908, 0.579909,
		0.939953, -0.153823, -0.304674,
		35.882423, 35.210838, 52.150337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492989, 35.881981, 52.147717>,  <35.224457, 35.318516, 52.363609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492989, 35.881981, 52.147717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711555, 35.615707, 51.944427>,  <35.842697, 35.455944, 51.822453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.711555, 35.615707, 51.944427>,  <35.492989, 35.881981, 52.147717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711555, 35.615707, 51.944427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072916, 0.566710, -0.820685,
		0.834332, 0.485496, 0.261122,
		0.546419, -0.665683, -0.508224,
		35.875481, 35.416004, 51.791962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028957, 36.268589, 51.778431>,  <35.492989, 35.881981, 52.147717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028957, 36.268589, 51.778431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009453, 35.911453, 51.599342>,  <35.997749, 35.697170, 51.491890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.009453, 35.911453, 51.599342>,  <36.028957, 36.268589, 51.778431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009453, 35.911453, 51.599342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047142, 0.449813, -0.891878,
		0.997697, -0.022386, -0.064026,
		-0.048765, -0.892842, -0.447721,
		35.994823, 35.643600, 51.465027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533886, 36.327740, 51.321110>,  <36.028957, 36.268589, 51.778431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533886, 36.327740, 51.321110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.312096, 36.018795, 51.197163>,  <36.179020, 35.833427, 51.122795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.312096, 36.018795, 51.197163>,  <36.533886, 36.327740, 51.321110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312096, 36.018795, 51.197163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179356, 0.252689, -0.950778,
		0.812644, -0.582759, -0.001582,
		-0.554474, -0.772360, -0.309867,
		36.145752, 35.787086, 51.104202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909447, 35.908905, 50.821033>,  <36.533886, 36.327740, 51.321110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909447, 35.908905, 50.821033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525391, 35.816036, 50.758774>,  <36.294956, 35.760315, 50.721420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.525391, 35.816036, 50.758774>,  <36.909447, 35.908905, 50.821033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525391, 35.816036, 50.758774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103924, 0.220404, -0.969857,
		0.259483, -0.947374, -0.187490,
		-0.960140, -0.232176, -0.155646,
		36.237347, 35.746384, 50.712082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939724, 35.614815, 50.197216>,  <36.909447, 35.908905, 50.821033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939724, 35.614815, 50.197216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545212, 35.673534, 50.227394>,  <36.308502, 35.708767, 50.245499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.545212, 35.673534, 50.227394>,  <36.939724, 35.614815, 50.197216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545212, 35.673534, 50.227394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039486, 0.233944, -0.971448,
		-0.160258, -0.961104, -0.224939,
		-0.986285, 0.146800, 0.075441,
		36.249325, 35.717575, 50.250027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693665, 35.383312, 49.576874>,  <36.939724, 35.614815, 50.197216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.693665, 35.383312, 49.576874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.401070, 35.616032, 49.719109>,  <36.225513, 35.755665, 49.804451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.401070, 35.616032, 49.719109>,  <36.693665, 35.383312, 49.576874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401070, 35.616032, 49.719109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270641, 0.230930, -0.934572,
		-0.625849, -0.779860, -0.011463,
		-0.731483, 0.581799, 0.355589,
		36.181625, 35.790569, 49.825787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998196, 35.180504, 49.182018>,  <36.693665, 35.383312, 49.576874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998196, 35.180504, 49.182018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969883, 35.547405, 49.338802>,  <35.952896, 35.767548, 49.432873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.969883, 35.547405, 49.338802>,  <35.998196, 35.180504, 49.182018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969883, 35.547405, 49.338802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266579, 0.361260, -0.893547,
		-0.961211, -0.167732, 0.218952,
		-0.070777, 0.917255, 0.391960,
		35.948650, 35.822582, 49.456390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339924, 35.399338, 48.954453>,  <35.998196, 35.180504, 49.182018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339924, 35.399338, 48.954453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.571789, 35.709583, 49.054386>,  <35.710907, 35.895729, 49.114346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.571789, 35.709583, 49.054386>,  <35.339924, 35.399338, 48.954453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.571789, 35.709583, 49.054386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125621, 0.387994, -0.913061,
		-0.805114, 0.497885, 0.322340,
		0.579665, 0.775610, 0.249835,
		35.745689, 35.942265, 49.129337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947811, 36.055164, 48.673828>,  <35.339924, 35.399338, 48.954453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.947811, 36.055164, 48.673828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339638, 36.125011, 48.713734>,  <35.574734, 36.166920, 48.737679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339638, 36.125011, 48.713734>,  <34.947811, 36.055164, 48.673828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339638, 36.125011, 48.713734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070513, 0.166359, -0.983541,
		-0.188340, 0.970481, 0.150647,
		0.979569, 0.174617, 0.099764,
		35.633507, 36.177395, 48.743664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419991, 36.650536, 48.426861>,  <34.947811, 36.055164, 48.673828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419991, 36.650536, 48.426861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.063675, 36.572369, 48.262760>,  <33.849884, 36.525467, 48.164299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.063675, 36.572369, 48.262760>,  <34.419991, 36.650536, 48.426861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063675, 36.572369, 48.262760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333346, -0.332559, 0.882205,
		-0.308833, 0.922614, 0.231097,
		-0.890788, -0.195419, -0.410255,
		33.796440, 36.513744, 48.139683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010937, 37.006996, 48.822735>,  <34.419991, 36.650536, 48.426861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010937, 37.006996, 48.822735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824085, 36.691288, 48.663311>,  <33.711975, 36.501865, 48.567657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824085, 36.691288, 48.663311>,  <34.010937, 37.006996, 48.822735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824085, 36.691288, 48.663311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214313, -0.336252, 0.917063,
		-0.857824, 0.513802, -0.012077,
		-0.467128, -0.789267, -0.398559,
		33.683949, 36.454510, 48.543743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483658, 36.858250, 49.267879>,  <34.010937, 37.006996, 48.822735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483658, 36.858250, 49.267879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457882, 36.523617, 49.050262>,  <33.442417, 36.322838, 48.919693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.457882, 36.523617, 49.050262>,  <33.483658, 36.858250, 49.267879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457882, 36.523617, 49.050262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330663, -0.496476, 0.802604,
		-0.941546, 0.231618, -0.244631,
		-0.064444, -0.836579, -0.544042,
		33.438549, 36.272644, 48.887051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731895, 36.599453, 49.230461>,  <33.483658, 36.858250, 49.267879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731895, 36.599453, 49.230461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008404, 36.311340, 49.207348>,  <33.174309, 36.138474, 49.193481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008404, 36.311340, 49.207348>,  <32.731895, 36.599453, 49.230461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008404, 36.311340, 49.207348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375983, -0.426814, 0.822476,
		-0.617080, -0.546825, -0.565858,
		0.691267, -0.720286, -0.057782,
		33.215782, 36.095253, 49.190014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340050, 36.060612, 49.550632>,  <32.731895, 36.599453, 49.230461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340050, 36.060612, 49.550632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725250, 35.953106, 49.542740>,  <32.956371, 35.888603, 49.538006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725250, 35.953106, 49.542740>,  <32.340050, 36.060612, 49.550632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725250, 35.953106, 49.542740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111855, -0.465236, 0.878091,
		-0.245183, -0.843397, -0.478086,
		0.963003, -0.268769, -0.019730,
		33.014153, 35.872475, 49.536819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352150, 35.488510, 49.915901>,  <32.340050, 36.060612, 49.550632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352150, 35.488510, 49.915901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743046, 35.573284, 49.919453>,  <32.977585, 35.624149, 49.921585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.743046, 35.573284, 49.919453>,  <32.352150, 35.488510, 49.915901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743046, 35.573284, 49.919453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090977, -0.456578, 0.885020,
		0.191617, -0.864073, -0.465469,
		0.977244, 0.211932, 0.008877,
		33.036221, 35.636864, 49.922115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685215, 34.924313, 50.072144>,  <32.352150, 35.488510, 49.915901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685215, 34.924313, 50.072144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978775, 35.182934, 50.155434>,  <33.154911, 35.338104, 50.205410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.978775, 35.182934, 50.155434>,  <32.685215, 34.924313, 50.072144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978775, 35.182934, 50.155434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175084, -0.476260, 0.861697,
		0.656301, -0.595946, -0.462729,
		0.733904, 0.646549, 0.208229,
		33.198948, 35.376900, 50.217903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320801, 34.476990, 49.607281>,  <32.685215, 34.924313, 50.072144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320801, 34.476990, 49.607281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229507, 34.088959, 49.574135>,  <32.174732, 33.856140, 49.554249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.229507, 34.088959, 49.574135>,  <32.320801, 34.476990, 49.607281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229507, 34.088959, 49.574135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350396, -0.002435, -0.936598,
		0.908367, -0.242801, 0.340466,
		-0.228236, -0.970073, -0.082865,
		32.161037, 33.797935, 49.549274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912136, 34.110870, 49.323784>,  <32.320801, 34.476990, 49.607281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912136, 34.110870, 49.323784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572998, 33.916401, 49.239124>,  <32.369514, 33.799721, 49.188328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572998, 33.916401, 49.239124>,  <32.912136, 34.110870, 49.323784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572998, 33.916401, 49.239124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282082, -0.075561, -0.956410,
		0.448985, -0.870591, 0.201204,
		-0.847845, -0.486170, -0.211653,
		32.318645, 33.770550, 49.175629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110783, 33.486134, 48.935608>,  <32.912136, 34.110870, 49.323784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110783, 33.486134, 48.935608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.733677, 33.577160, 48.838108>,  <32.507416, 33.631775, 48.779606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.733677, 33.577160, 48.838108>,  <33.110783, 33.486134, 48.935608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733677, 33.577160, 48.838108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220086, -0.124546, -0.967497,
		-0.250530, -0.965765, 0.067333,
		-0.942760, 0.227568, -0.243754,
		32.450848, 33.645432, 48.764980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005890, 33.054939, 48.445099>,  <33.110783, 33.486134, 48.935608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005890, 33.054939, 48.445099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712456, 33.321259, 48.390594>,  <32.536396, 33.481052, 48.357891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.712456, 33.321259, 48.390594>,  <33.005890, 33.054939, 48.445099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712456, 33.321259, 48.390594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142804, -0.045005, -0.988727,
		-0.664428, -0.744771, -0.062064,
		-0.733582, 0.665801, -0.136259,
		32.492382, 33.521000, 48.349716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625244, 32.745411, 47.932243>,  <33.005890, 33.054939, 48.445099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625244, 32.745411, 47.932243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496601, 33.124161, 47.931725>,  <32.419415, 33.351410, 47.931416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.496601, 33.124161, 47.931725>,  <32.625244, 32.745411, 47.932243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496601, 33.124161, 47.931725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099631, 0.032482, -0.994494,
		-0.941617, -0.319966, -0.104784,
		-0.321608, 0.946872, -0.001293,
		32.400120, 33.408222, 47.931335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104542, 32.748955, 47.430145>,  <32.625244, 32.745411, 47.932243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104542, 32.748955, 47.430145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.218269, 33.131844, 47.451645>,  <32.286507, 33.361576, 47.464542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.218269, 33.131844, 47.451645>,  <32.104542, 32.748955, 47.430145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218269, 33.131844, 47.451645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005168, 0.054528, -0.998499,
		-0.958715, 0.284172, 0.010556,
		0.284321, 0.957222, 0.053746,
		32.303566, 33.419010, 47.467770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610901, 33.159008, 47.032078>,  <32.104542, 32.748955, 47.430145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610901, 33.159008, 47.032078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.921225, 33.410416, 47.054283>,  <32.107418, 33.561260, 47.067608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.921225, 33.410416, 47.054283>,  <31.610901, 33.159008, 47.032078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921225, 33.410416, 47.054283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055961, 0.156176, -0.986143,
		-0.628479, 0.761954, 0.156335,
		0.775811, 0.628519, 0.055514,
		32.153969, 33.598972, 47.070938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.747429, 29.982262, 52.611683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.936695, 30.332994, 52.645802>,  <36.050255, 30.543434, 52.666271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.936695, 30.332994, 52.645802>,  <35.747429, 29.982262, 52.611683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936695, 30.332994, 52.645802> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091685, 0.145306, -0.985129,
		-0.876189, 0.458310, 0.149146,
		0.473167, 0.876834, 0.085295,
		36.078644, 30.596045, 52.671391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353447, 30.438200, 52.256065>,  <35.747429, 29.982262, 52.611683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353447, 30.438200, 52.256065> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.718307, 30.602081, 52.251587>,  <35.937225, 30.700409, 52.248901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.718307, 30.602081, 52.251587>,  <35.353447, 30.438200, 52.256065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718307, 30.602081, 52.251587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080983, 0.153385, -0.984843,
		-0.401774, 0.899232, 0.173089,
		0.912151, 0.409702, -0.011196,
		35.991951, 30.724993, 52.248226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346889, 31.041821, 51.867329>,  <35.353447, 30.438200, 52.256065>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346889, 31.041821, 51.867329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.736404, 30.954592, 51.841476>,  <35.970116, 30.902254, 51.825966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.736404, 30.954592, 51.841476>,  <35.346889, 31.041821, 51.867329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736404, 30.954592, 51.841476> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027041, 0.171140, -0.984876,
		0.225837, 0.960809, 0.160758,
		0.973790, -0.218074, -0.064631,
		36.028542, 30.889170, 51.822086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705944, 31.502888, 51.437263>,  <35.346889, 31.041821, 51.867329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705944, 31.502888, 51.437263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.975193, 31.207529, 51.420891>,  <36.136742, 31.030313, 51.411068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.975193, 31.207529, 51.420891>,  <35.705944, 31.502888, 51.437263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975193, 31.207529, 51.420891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039383, 0.091066, -0.995066,
		0.738480, 0.668191, 0.090379,
		0.673124, -0.738396, -0.040935,
		36.177132, 30.986010, 51.408611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165714, 31.805521, 50.888988>,  <35.705944, 31.502888, 51.437263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165714, 31.805521, 50.888988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.260906, 31.419430, 50.932247>,  <36.318020, 31.187775, 50.958202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.260906, 31.419430, 50.932247>,  <36.165714, 31.805521, 50.888988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260906, 31.419430, 50.932247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220190, -0.054835, -0.973915,
		0.945982, 0.255586, 0.199485,
		0.237981, -0.965230, 0.108150,
		36.332302, 31.129860, 50.964691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807316, 31.676456, 50.528542>,  <36.165714, 31.805521, 50.888988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807316, 31.676456, 50.528542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.622761, 31.323620, 50.566551>,  <36.512028, 31.111917, 50.589359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.622761, 31.323620, 50.566551>,  <36.807316, 31.676456, 50.528542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.622761, 31.323620, 50.566551> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186501, -0.201148, -0.961643,
		0.867374, -0.425969, 0.257319,
		-0.461390, -0.882094, 0.095027,
		36.484344, 31.058992, 50.595058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277729, 31.239325, 50.330544>,  <36.807316, 31.676456, 50.528542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277729, 31.239325, 50.330544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.914734, 31.078316, 50.282459>,  <36.696938, 30.981710, 50.253609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.914734, 31.078316, 50.282459>,  <37.277729, 31.239325, 50.330544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914734, 31.078316, 50.282459> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249903, -0.287250, -0.924681,
		0.337673, -0.869174, 0.361266,
		-0.907483, -0.402521, -0.120212,
		36.642490, 30.957560, 50.246395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426712, 30.756510, 49.960316>,  <37.277729, 31.239325, 50.330544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426712, 30.756510, 49.960316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.032242, 30.722984, 49.903133>,  <36.795559, 30.702869, 49.868824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.032242, 30.722984, 49.903133>,  <37.426712, 30.756510, 49.960316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032242, 30.722984, 49.903133> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158729, -0.229873, -0.960189,
		0.047616, -0.969605, 0.239999,
		-0.986174, -0.083815, -0.142959,
		36.736389, 30.697840, 49.860245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403774, 30.129038, 49.620705>,  <37.426712, 30.756510, 49.960316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403774, 30.129038, 49.620705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.081402, 30.355665, 49.552036>,  <36.887978, 30.491642, 49.510838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.081402, 30.355665, 49.552036>,  <37.403774, 30.129038, 49.620705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081402, 30.355665, 49.552036> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019081, -0.264969, -0.964068,
		-0.591697, -0.780251, 0.202737,
		-0.805934, 0.566568, -0.171669,
		36.839622, 30.525635, 49.500534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976631, 29.719870, 49.128696>,  <37.403774, 30.129038, 49.620705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976631, 29.719870, 49.128696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.854698, 30.100760, 49.121212>,  <36.781540, 30.329292, 49.116722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.854698, 30.100760, 49.121212>,  <36.976631, 29.719870, 49.128696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854698, 30.100760, 49.121212> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031811, -0.029813, -0.999049,
		-0.951875, -0.303945, 0.039379,
		-0.304830, 0.952223, -0.018709,
		36.763248, 30.386427, 49.115601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405685, 29.707298, 48.695480>,  <36.976631, 29.719870, 49.128696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405685, 29.707298, 48.695480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.506207, 30.091652, 48.742039>,  <36.566521, 30.322264, 48.769974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.506207, 30.091652, 48.742039>,  <36.405685, 29.707298, 48.695480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506207, 30.091652, 48.742039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003908, 0.119243, -0.992857,
		-0.967900, 0.249965, 0.026212,
		0.251306, 0.960884, 0.116392,
		36.581596, 30.379917, 48.776955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967304, 30.137474, 48.153797>,  <36.405685, 29.707298, 48.695480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967304, 30.137474, 48.153797> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.277496, 30.367643, 48.257729>,  <36.463612, 30.505745, 48.320087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.277496, 30.367643, 48.257729>,  <35.967304, 30.137474, 48.153797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277496, 30.367643, 48.257729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097669, 0.297250, -0.949791,
		-0.623769, 0.761924, 0.174311,
		0.775483, 0.575425, 0.259831,
		36.510139, 30.540272, 48.335678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281094, 30.454115, 48.153442>,  <35.967304, 30.137474, 48.153797>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281094, 30.454115, 48.153442> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.917881, 30.544725, 48.012493>,  <34.699955, 30.599091, 47.927925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.917881, 30.544725, 48.012493>,  <35.281094, 30.454115, 48.153442>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917881, 30.544725, 48.012493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390683, -0.154443, 0.907477,
		0.151144, 0.961683, 0.228739,
		-0.908032, 0.226524, -0.352370,
		34.645470, 30.612682, 47.906784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987350, 30.945105, 48.584320>,  <35.281094, 30.454115, 48.153442>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987350, 30.945105, 48.584320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.652874, 30.811096, 48.410633>,  <34.452187, 30.730690, 48.306423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.652874, 30.811096, 48.410633>,  <34.987350, 30.945105, 48.584320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652874, 30.811096, 48.410633> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437980, -0.068590, 0.896364,
		-0.330085, 0.939710, -0.089378,
		-0.836192, -0.335022, -0.434215,
		34.402016, 30.710590, 48.280369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389812, 31.206558, 48.968185>,  <34.987350, 30.945105, 48.584320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389812, 31.206558, 48.968185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.272354, 30.881514, 48.766819>,  <34.201878, 30.686487, 48.646000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.272354, 30.881514, 48.766819>,  <34.389812, 31.206558, 48.968185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272354, 30.881514, 48.766819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403540, -0.372031, 0.835912,
		-0.866560, 0.448613, -0.218676,
		-0.293647, -0.812613, -0.503420,
		34.184261, 30.637730, 48.615791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.704243, 31.112087, 49.271542>,  <34.389812, 31.206558, 48.968185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.704243, 31.112087, 49.271542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.812874, 30.768167, 49.098572>,  <33.878052, 30.561815, 48.994789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.812874, 30.768167, 49.098572>,  <33.704243, 31.112087, 49.271542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812874, 30.768167, 49.098572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607739, -0.501604, 0.615667,
		-0.746255, 0.095595, -0.658760,
		0.271582, -0.859799, -0.432422,
		33.894348, 30.510227, 48.968845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108585, 30.770420, 49.080921>,  <33.704243, 31.112087, 49.271542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108585, 30.770420, 49.080921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.388073, 30.485748, 49.110046>,  <33.555767, 30.314945, 49.127522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.388073, 30.485748, 49.110046>,  <33.108585, 30.770420, 49.080921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388073, 30.485748, 49.110046> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573156, -0.495984, 0.652298,
		-0.428116, -0.497503, -0.754458,
		0.698719, -0.711682, 0.072808,
		33.597691, 30.272243, 49.131889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673714, 30.249863, 49.040436>,  <33.108585, 30.770420, 49.080921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673714, 30.249863, 49.040436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020832, 30.091835, 49.160995>,  <33.229103, 29.997019, 49.233330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.020832, 30.091835, 49.160995>,  <32.673714, 30.249863, 49.040436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020832, 30.091835, 49.160995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489467, -0.574997, 0.655592,
		-0.085702, -0.716448, -0.692356,
		0.867800, -0.395071, 0.301399,
		33.281174, 29.973314, 49.251415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615047, 29.441603, 49.093216>,  <32.673714, 30.249863, 49.040436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615047, 29.441603, 49.093216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.916553, 29.553301, 49.331158>,  <33.097458, 29.620319, 49.473923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.916553, 29.553301, 49.331158>,  <32.615047, 29.441603, 49.093216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916553, 29.553301, 49.331158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394761, -0.531265, 0.749614,
		0.525353, -0.799862, -0.290216,
		0.753769, 0.279246, 0.594856,
		33.142685, 29.637075, 49.509613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751331, 28.818153, 49.460712>,  <32.615047, 29.441603, 49.093216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751331, 28.818153, 49.460712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.931023, 29.108629, 49.668884>,  <33.038837, 29.282915, 49.793789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.931023, 29.108629, 49.668884>,  <32.751331, 28.818153, 49.460712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.931023, 29.108629, 49.668884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501381, -0.277224, 0.819612,
		0.739468, -0.629125, 0.239561,
		0.449226, 0.726188, 0.520430,
		33.065792, 29.326485, 49.825012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811386, 28.570185, 50.135372>,  <32.751331, 28.818153, 49.460712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811386, 28.570185, 50.135372> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.869778, 28.961903, 50.191471>,  <32.904812, 29.196934, 50.225132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.869778, 28.961903, 50.191471>,  <32.811386, 28.570185, 50.135372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869778, 28.961903, 50.191471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505826, -0.047949, 0.861302,
		0.850195, -0.196671, 0.488354,
		0.145978, 0.979297, 0.140247,
		32.913570, 29.255692, 50.233543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.983685, 28.662575, 50.818611>,  <32.811386, 28.570185, 50.135372>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.983685, 28.662575, 50.818611> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.848736, 29.028112, 50.728218>,  <32.767769, 29.247435, 50.673981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.848736, 29.028112, 50.728218>,  <32.983685, 28.662575, 50.818611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848736, 29.028112, 50.728218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393752, 0.081064, 0.915635,
		0.855069, 0.397887, 0.332480,
		-0.337368, 0.913846, -0.225984,
		32.747524, 29.302267, 50.660423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044834, 29.051889, 51.459141>,  <32.983685, 28.662575, 50.818611>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044834, 29.051889, 51.459141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.809776, 29.284317, 51.233917>,  <32.668743, 29.423773, 51.098785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.809776, 29.284317, 51.233917>,  <33.044834, 29.051889, 51.459141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809776, 29.284317, 51.233917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407494, 0.388652, 0.826377,
		0.699015, 0.715058, 0.008392,
		-0.587645, 0.581070, -0.563055,
		32.633484, 29.458637, 51.065002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121685, 29.730890, 51.634441>,  <33.044834, 29.051889, 51.459141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121685, 29.730890, 51.634441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.757301, 29.733473, 51.469463>,  <32.538670, 29.735022, 51.370476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.757301, 29.733473, 51.469463>,  <33.121685, 29.730890, 51.634441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757301, 29.733473, 51.469463> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352473, 0.507212, 0.786447,
		0.214271, 0.861797, -0.459775,
		-0.910961, 0.006455, -0.412441,
		32.484013, 29.735409, 51.345730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857574, 30.405207, 51.763172>,  <33.121685, 29.730890, 51.634441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857574, 30.405207, 51.763172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.517899, 30.211330, 51.679314>,  <32.314095, 30.095005, 51.628998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.517899, 30.211330, 51.679314>,  <32.857574, 30.405207, 51.763172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.517899, 30.211330, 51.679314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391838, 0.312164, 0.865458,
		-0.354035, 0.817085, -0.455006,
		-0.849190, -0.484691, -0.209648,
		32.263142, 30.065924, 51.616421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170425, 30.883005, 51.739571>,  <32.857574, 30.405207, 51.763172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170425, 30.883005, 51.739571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.088612, 30.500996, 51.825455>,  <32.039524, 30.271790, 51.876984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.088612, 30.500996, 51.825455>,  <32.170425, 30.883005, 51.739571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088612, 30.500996, 51.825455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390946, 0.280788, 0.876538,
		-0.897400, 0.095341, -0.430793,
		-0.204532, -0.955022, 0.214706,
		32.027252, 30.214489, 51.889866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020287, 31.687054, 51.791183>,  <32.170425, 30.883005, 51.739571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020287, 31.687054, 51.791183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.098778, 32.036140, 51.970009>,  <32.145870, 32.245594, 52.077305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.098778, 32.036140, 51.970009>,  <32.020287, 31.687054, 51.791183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098778, 32.036140, 51.970009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241054, 0.484866, -0.840713,
		-0.950468, 0.057203, 0.305514,
		0.196224, 0.872716, 0.447060,
		32.157646, 32.297955, 52.104126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.410660, 32.186462, 51.771320>,  <32.020287, 31.687054, 51.791183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.410660, 32.186462, 51.771320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.746330, 32.401424, 51.804729>,  <31.947733, 32.530403, 51.824776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.746330, 32.401424, 51.804729>,  <31.410660, 32.186462, 51.771320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746330, 32.401424, 51.804729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236338, 0.498665, -0.833953,
		-0.489821, 0.680095, 0.545478,
		0.839178, 0.537405, 0.083525,
		31.998083, 32.562645, 51.829788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170738, 32.819939, 51.608154>,  <31.410660, 32.186462, 51.771320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170738, 32.819939, 51.608154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.566978, 32.826916, 51.553886>,  <31.804722, 32.831100, 51.521324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.566978, 32.826916, 51.553886>,  <31.170738, 32.819939, 51.608154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566978, 32.826916, 51.553886> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127938, 0.469088, -0.873835,
		0.048400, 0.882979, 0.466910,
		0.990600, 0.017441, -0.135670,
		31.864159, 32.832150, 51.513184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206867, 33.361797, 51.114998>,  <31.170738, 32.819939, 51.608154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206867, 33.361797, 51.114998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.594957, 33.264946, 51.112621>,  <31.827812, 33.206837, 51.111195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.594957, 33.264946, 51.112621>,  <31.206867, 33.361797, 51.114998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594957, 33.264946, 51.112621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115187, 0.482878, -0.868079,
		0.213053, 0.841549, 0.496391,
		0.970227, -0.242125, -0.005944,
		31.886026, 33.192310, 51.110840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692175, 33.987553, 51.082691>,  <31.206867, 33.361797, 51.114998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692175, 33.987553, 51.082691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.908510, 33.694332, 50.917709>,  <32.038311, 33.518398, 50.818718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.908510, 33.694332, 50.917709>,  <31.692175, 33.987553, 51.082691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908510, 33.694332, 50.917709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105921, 0.545818, -0.831182,
		0.834430, 0.405848, 0.372846,
		0.540839, -0.733056, -0.412459,
		32.070763, 33.474415, 50.793972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196686, 34.279221, 50.662224>,  <31.692175, 33.987553, 51.082691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196686, 34.279221, 50.662224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.194012, 33.918152, 50.490108>,  <32.192406, 33.701511, 50.386841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.194012, 33.918152, 50.490108>,  <32.196686, 34.279221, 50.662224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194012, 33.918152, 50.490108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053165, 0.429367, -0.901564,
		0.998563, -0.028902, 0.045121,
		-0.006684, -0.902668, -0.430287,
		32.192005, 33.647350, 50.361023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683559, 34.233799, 50.219357>,  <32.196686, 34.279221, 50.662224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683559, 34.233799, 50.219357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.442894, 33.947731, 50.077072>,  <32.298496, 33.776089, 49.991699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.442894, 33.947731, 50.077072>,  <32.683559, 34.233799, 50.219357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442894, 33.947731, 50.077072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148250, 0.337615, -0.929537,
		0.784872, -0.612002, -0.097106,
		-0.601662, -0.715172, -0.355713,
		32.262394, 33.733181, 49.970360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373085, 34.531467, 50.489113>,  <32.683559, 34.233799, 50.219357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373085, 34.531467, 50.489113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442219, 34.918758, 50.561398>,  <33.483700, 35.151134, 50.604767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.442219, 34.918758, 50.561398>,  <33.373085, 34.531467, 50.489113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442219, 34.918758, 50.561398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445152, -0.240449, 0.862568,
		0.878617, -0.068637, -0.472568,
		0.172832, 0.968232, 0.180709,
		33.494068, 35.209229, 50.615608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129536, 34.605629, 50.663521>,  <33.373085, 34.531467, 50.489113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129536, 34.605629, 50.663521> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.902527, 34.889439, 50.830616>,  <33.766323, 35.059723, 50.930874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.902527, 34.889439, 50.830616>,  <34.129536, 34.605629, 50.663521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902527, 34.889439, 50.830616> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416372, -0.190386, 0.889038,
		0.710322, 0.678478, -0.187377,
		-0.567519, 0.709521, 0.417734,
		33.732273, 35.102295, 50.955936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595753, 34.858757, 51.188919>,  <34.129536, 34.605629, 50.663521>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595753, 34.858757, 51.188919> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.219471, 34.956589, 51.282936>,  <33.993702, 35.015289, 51.339348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.219471, 34.956589, 51.282936>,  <34.595753, 34.858757, 51.188919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219471, 34.956589, 51.282936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177075, -0.236944, 0.955249,
		0.289329, 0.940233, 0.179586,
		-0.940709, 0.244581, 0.235047,
		33.937260, 35.029964, 51.353451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673115, 35.293671, 51.778660>,  <34.595753, 34.858757, 51.188919>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673115, 35.293671, 51.778660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.299747, 35.151882, 51.756451>,  <34.075726, 35.066811, 51.743126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.299747, 35.151882, 51.756451>,  <34.673115, 35.293671, 51.778660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299747, 35.151882, 51.756451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054270, -0.292458, 0.954737,
		-0.354664, 0.888155, 0.292222,
		-0.933417, -0.354470, -0.055524,
		34.019722, 35.045540, 51.739792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293110, 35.449883, 52.493156>,  <34.673115, 35.293671, 51.778660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293110, 35.449883, 52.493156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.043152, 35.176201, 52.342758>,  <33.893177, 35.011993, 52.252518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.043152, 35.176201, 52.342758>,  <34.293110, 35.449883, 52.493156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043152, 35.176201, 52.342758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039192, -0.453511, 0.890389,
		-0.779727, 0.571133, 0.256580,
		-0.624892, -0.684204, -0.375999,
		33.855686, 34.970940, 52.229958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889153, 35.420269, 52.943703>,  <34.293110, 35.449883, 52.493156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889153, 35.420269, 52.943703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.853741, 35.074108, 52.746426>,  <33.832493, 34.866413, 52.628059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.853741, 35.074108, 52.746426>,  <33.889153, 35.420269, 52.943703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853741, 35.074108, 52.746426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151691, -0.501075, 0.852005,
		-0.984455, 0.000616, 0.175634,
		-0.088531, -0.865404, -0.493193,
		33.827183, 34.814487, 52.598469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453228, 35.014633, 53.384609>,  <33.889153, 35.420269, 52.943703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453228, 35.014633, 53.384609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.623425, 34.735485, 53.154156>,  <33.725544, 34.567997, 53.015884>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.623425, 34.735485, 53.154156>,  <33.453228, 35.014633, 53.384609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623425, 34.735485, 53.154156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162723, -0.567259, 0.807303,
		-0.890210, -0.437254, -0.127807,
		0.425496, -0.697872, -0.576131,
		33.751072, 34.526123, 52.981316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030632, 34.391953, 53.411758>,  <33.453228, 35.014633, 53.384609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030632, 34.391953, 53.411758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.395638, 34.252659, 53.325916>,  <33.614639, 34.169083, 53.274410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.395638, 34.252659, 53.325916>,  <33.030632, 34.391953, 53.411758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395638, 34.252659, 53.325916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084347, -0.673550, 0.734313,
		-0.400257, -0.651969, -0.643996,
		0.912513, -0.348233, -0.214602,
		33.669392, 34.148190, 53.261536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963039, 33.779991, 53.695080>,  <33.030632, 34.391953, 53.411758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963039, 33.779991, 53.695080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.359825, 33.784382, 53.644657>,  <33.597897, 33.787014, 53.614403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.359825, 33.784382, 53.644657>,  <32.963039, 33.779991, 53.695080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.359825, 33.784382, 53.644657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102271, -0.656128, 0.747687,
		-0.074502, -0.754570, -0.651977,
		0.991963, 0.010974, -0.126053,
		33.657413, 33.787674, 53.606842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.063137, 37.185204, 37.933422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336735, 36.976158, 38.137005>,  <36.500893, 36.850731, 38.259155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336735, 36.976158, 38.137005>,  <36.063137, 37.185204, 37.933422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336735, 36.976158, 38.137005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558955, 0.072851, 0.825991,
		-0.468750, -0.849453, -0.242286,
		0.683990, -0.522610, 0.508955,
		36.541931, 36.819374, 38.289692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787548, 36.447414, 38.219284>,  <36.063137, 37.185204, 37.933422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787548, 36.447414, 38.219284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069054, 36.641045, 38.427277>,  <36.237957, 36.757221, 38.552074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069054, 36.641045, 38.427277>,  <35.787548, 36.447414, 38.219284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069054, 36.641045, 38.427277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622892, 0.068470, 0.779306,
		0.341638, -0.872344, 0.349712,
		0.703768, 0.484073, 0.519984,
		36.280186, 36.786266, 38.583271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721977, 36.091057, 38.896137>,  <35.787548, 36.447414, 38.219284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721977, 36.091057, 38.896137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952530, 36.412102, 38.957600>,  <36.090862, 36.604729, 38.994476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952530, 36.412102, 38.957600>,  <35.721977, 36.091057, 38.896137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952530, 36.412102, 38.957600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450765, 0.155428, 0.879007,
		0.681616, -0.575902, 0.451373,
		0.576378, 0.802608, 0.153654,
		36.125443, 36.652885, 39.003696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958950, 36.018837, 39.546726>,  <35.721977, 36.091057, 38.896137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958950, 36.018837, 39.546726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975315, 36.409348, 39.461681>,  <35.985134, 36.643654, 39.410656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.975315, 36.409348, 39.461681>,  <35.958950, 36.018837, 39.546726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975315, 36.409348, 39.461681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429687, 0.209300, 0.878386,
		0.902051, 0.055418, 0.428058,
		0.040914, 0.976280, -0.212612,
		35.987591, 36.702232, 39.397900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321102, 36.388546, 40.150028>,  <35.958950, 36.018837, 39.546726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321102, 36.388546, 40.150028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103741, 36.656967, 39.948277>,  <35.973324, 36.818020, 39.827225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103741, 36.656967, 39.948277>,  <36.321102, 36.388546, 40.150028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103741, 36.656967, 39.948277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387043, 0.332882, 0.859876,
		0.744924, 0.662475, 0.078838,
		-0.543403, 0.671056, -0.504378,
		35.940720, 36.858284, 39.796963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527439, 36.996204, 40.414429>,  <36.321102, 36.388546, 40.150028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527439, 36.996204, 40.414429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171261, 37.040348, 40.237823>,  <35.957554, 37.066833, 40.131863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171261, 37.040348, 40.237823>,  <36.527439, 36.996204, 40.414429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171261, 37.040348, 40.237823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365384, 0.404988, 0.838140,
		0.271299, 0.907637, -0.320298,
		-0.890445, 0.110355, -0.441509,
		35.904129, 37.073456, 40.105370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291756, 37.690079, 40.507004>,  <36.527439, 36.996204, 40.414429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291756, 37.690079, 40.507004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957066, 37.484196, 40.432198>,  <35.756252, 37.360664, 40.387314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.957066, 37.484196, 40.432198>,  <36.291756, 37.690079, 40.507004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957066, 37.484196, 40.432198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363774, 0.267128, 0.892363,
		-0.409350, 0.814689, -0.410749,
		-0.836721, -0.514708, -0.187014,
		35.706051, 37.329784, 40.376095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749290, 38.083748, 40.879887>,  <36.291756, 37.690079, 40.507004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749290, 38.083748, 40.879887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552479, 37.749409, 40.782509>,  <35.434391, 37.548805, 40.724083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.552479, 37.749409, 40.782509>,  <35.749290, 38.083748, 40.879887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552479, 37.749409, 40.782509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494504, 0.038185, 0.868336,
		-0.716499, 0.547635, -0.432117,
		-0.492032, -0.835846, -0.243449,
		35.404869, 37.498653, 40.709473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051544, 38.278862, 40.894791>,  <35.749290, 38.083748, 40.879887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051544, 38.278862, 40.894791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069355, 37.882530, 40.945827>,  <35.080040, 37.644733, 40.976448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069355, 37.882530, 40.945827>,  <35.051544, 38.278862, 40.894791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069355, 37.882530, 40.945827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440429, 0.095169, 0.892729,
		-0.896683, -0.095942, -0.432152,
		0.044522, -0.990827, 0.127592,
		35.082710, 37.585281, 40.984104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318253, 38.011330, 41.021233>,  <35.051544, 38.278862, 40.894791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318253, 38.011330, 41.021233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577858, 37.754379, 41.184269>,  <34.733620, 37.600208, 41.282093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577858, 37.754379, 41.184269>,  <34.318253, 38.011330, 41.021233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577858, 37.754379, 41.184269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494515, 0.050927, 0.867676,
		-0.578134, -0.764694, -0.284614,
		0.649012, -0.642378, 0.407595,
		34.772560, 37.561665, 41.306549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838478, 37.563126, 41.410019>,  <34.318253, 38.011330, 41.021233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838478, 37.563126, 41.410019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202171, 37.475513, 41.551628>,  <34.420387, 37.422947, 41.636593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202171, 37.475513, 41.551628>,  <33.838478, 37.563126, 41.410019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202171, 37.475513, 41.551628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398261, -0.210053, 0.892897,
		-0.121203, -0.952841, -0.278215,
		0.909229, -0.219024, 0.354021,
		34.474941, 37.409805, 41.657833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742142, 36.880722, 41.759678>,  <33.838478, 37.563126, 41.410019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742142, 36.880722, 41.759678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042603, 37.083244, 41.929111>,  <34.222878, 37.204758, 42.030773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042603, 37.083244, 41.929111>,  <33.742142, 36.880722, 41.759678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042603, 37.083244, 41.929111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391172, -0.175487, 0.903432,
		0.531749, -0.844308, 0.066236,
		0.751151, 0.506309, 0.423585,
		34.267948, 37.235138, 42.056187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072575, 36.140751, 41.633404>,  <33.742142, 36.880722, 41.759678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072575, 36.140751, 41.633404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834850, 35.825237, 41.570652>,  <33.692215, 35.635929, 41.533001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834850, 35.825237, 41.570652>,  <34.072575, 36.140751, 41.633404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834850, 35.825237, 41.570652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160129, 0.075105, -0.984235,
		0.788133, -0.610062, 0.081672,
		-0.594310, -0.788786, -0.156881,
		33.656559, 35.588600, 41.523586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456116, 35.742619, 41.118977>,  <34.072575, 36.140751, 41.633404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456116, 35.742619, 41.118977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091431, 35.579853, 41.096321>,  <33.872620, 35.482193, 41.082729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091431, 35.579853, 41.096321>,  <34.456116, 35.742619, 41.118977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091431, 35.579853, 41.096321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123469, -0.139891, -0.982439,
		0.391842, -0.902692, 0.177781,
		-0.911710, -0.406911, -0.056639,
		33.817917, 35.457779, 41.079330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466911, 34.965900, 40.752811>,  <34.456116, 35.742619, 41.118977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466911, 34.965900, 40.752811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097214, 35.116714, 40.728741>,  <33.875397, 35.207203, 40.714298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097214, 35.116714, 40.728741>,  <34.466911, 34.965900, 40.752811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097214, 35.116714, 40.728741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010681, -0.183089, -0.983038,
		-0.381656, -0.907923, 0.173246,
		-0.924243, 0.377033, -0.060180,
		33.819942, 35.229824, 40.710686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039490, 34.453358, 40.444649>,  <34.466911, 34.965900, 40.752811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039490, 34.453358, 40.444649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893898, 34.818886, 40.372589>,  <33.806545, 35.038204, 40.329353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893898, 34.818886, 40.372589>,  <34.039490, 34.453358, 40.444649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893898, 34.818886, 40.372589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161929, -0.128385, -0.978415,
		-0.917225, -0.385290, -0.101245,
		-0.363975, 0.913821, -0.180148,
		33.784706, 35.093033, 40.318546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546131, 34.347832, 39.926373>,  <34.039490, 34.453358, 40.444649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546131, 34.347832, 39.926373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555088, 34.747711, 39.922169>,  <33.560463, 34.987637, 39.919647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.555088, 34.747711, 39.922169>,  <33.546131, 34.347832, 39.926373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555088, 34.747711, 39.922169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212824, -0.005505, -0.977075,
		-0.976834, 0.024113, 0.212636,
		0.022390, 0.999694, -0.010510,
		33.561806, 35.047619, 39.919014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958500, 34.581081, 39.492287>,  <33.546131, 34.347832, 39.926373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958500, 34.581081, 39.492287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242821, 34.861668, 39.471523>,  <33.413414, 35.030022, 39.459064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.242821, 34.861668, 39.471523>,  <32.958500, 34.581081, 39.492287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.242821, 34.861668, 39.471523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136469, 0.065143, -0.988500,
		-0.690022, 0.709716, 0.142033,
		0.710806, 0.701470, -0.051904,
		33.456062, 35.072109, 39.455952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861145, 34.862453, 38.816338>,  <32.958500, 34.581081, 39.492287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861145, 34.862453, 38.816338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219669, 34.997326, 38.931526>,  <33.434784, 35.078251, 39.000641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.219669, 34.997326, 38.931526>,  <32.861145, 34.862453, 38.816338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219669, 34.997326, 38.931526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270316, 0.099317, -0.957635,
		-0.351501, 0.936185, -0.002128,
		0.896312, 0.337185, 0.287976,
		33.488564, 35.098480, 39.017918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047455, 35.483261, 38.458927>,  <32.861145, 34.862453, 38.816338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047455, 35.483261, 38.458927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372292, 35.278290, 38.570591>,  <33.567192, 35.155308, 38.637589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372292, 35.278290, 38.570591>,  <33.047455, 35.483261, 38.458927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372292, 35.278290, 38.570591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266657, -0.099646, -0.958627,
		0.519043, 0.852930, 0.055720,
		0.812089, -0.512426, 0.279160,
		33.615917, 35.124561, 38.654339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628094, 35.786453, 38.035194>,  <33.047455, 35.483261, 38.458927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628094, 35.786453, 38.035194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764774, 35.424786, 38.137737>,  <33.846783, 35.207787, 38.199265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764774, 35.424786, 38.137737>,  <33.628094, 35.786453, 38.035194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764774, 35.424786, 38.137737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587330, -0.007503, -0.809313,
		0.733680, 0.427107, 0.528482,
		0.341698, -0.904170, 0.256357,
		33.867283, 35.153534, 38.214645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302895, 35.798264, 37.915924>,  <33.628094, 35.786453, 38.035194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302895, 35.798264, 37.915924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230141, 35.404964, 37.920609>,  <34.186489, 35.168983, 37.923420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230141, 35.404964, 37.920609>,  <34.302895, 35.798264, 37.915924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230141, 35.404964, 37.920609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513645, -0.105156, -0.851535,
		0.838503, -0.148866, 0.524167,
		-0.181884, -0.983250, 0.011709,
		34.175575, 35.109989, 37.924122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880444, 35.508606, 37.527775>,  <34.302895, 35.798264, 37.915924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880444, 35.508606, 37.527775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639187, 35.189575, 37.524128>,  <34.494431, 34.998158, 37.521938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639187, 35.189575, 37.524128>,  <34.880444, 35.508606, 37.527775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639187, 35.189575, 37.524128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405758, -0.296958, -0.864394,
		0.686715, -0.525054, 0.502733,
		-0.603144, -0.797580, -0.009119,
		34.458244, 34.950302, 37.521393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292648, 35.034458, 37.256485>,  <34.880444, 35.508606, 37.527775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292648, 35.034458, 37.256485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927586, 34.873360, 37.228603>,  <34.708549, 34.776699, 37.211872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927586, 34.873360, 37.228603>,  <35.292648, 35.034458, 37.256485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927586, 34.873360, 37.228603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175606, -0.232359, -0.956646,
		0.369089, -0.885328, 0.282788,
		-0.912653, -0.402746, -0.069707,
		34.653790, 34.752537, 37.207691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461411, 34.338917, 36.932346>,  <35.292648, 35.034458, 37.256485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461411, 34.338917, 36.932346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067921, 34.405796, 36.906029>,  <34.831825, 34.445923, 36.890236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067921, 34.405796, 36.906029>,  <35.461411, 34.338917, 36.932346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067921, 34.405796, 36.906029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008262, -0.407904, -0.912987,
		-0.179487, -0.897585, 0.402647,
		-0.983726, 0.167196, -0.065797,
		34.772804, 34.455956, 36.886288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123047, 33.761204, 36.645451>,  <35.461411, 34.338917, 36.932346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123047, 33.761204, 36.645451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848034, 34.034012, 36.545734>,  <34.683025, 34.197697, 36.485905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848034, 34.034012, 36.545734>,  <35.123047, 33.761204, 36.645451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848034, 34.034012, 36.545734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056641, -0.392624, -0.917953,
		-0.723942, -0.617002, 0.308572,
		-0.687531, 0.682022, -0.249290,
		34.641773, 34.238617, 36.470947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445248, 33.504017, 36.383228>,  <35.123047, 33.761204, 36.645451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445248, 33.504017, 36.383228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538239, 33.865070, 36.238338>,  <34.594032, 34.081703, 36.151405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538239, 33.865070, 36.238338>,  <34.445248, 33.504017, 36.383228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538239, 33.865070, 36.238338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073812, -0.387725, -0.918815,
		-0.969797, 0.186867, -0.156763,
		0.232477, 0.902635, -0.362222,
		34.607983, 34.135860, 36.129673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995182, 33.341209, 37.078533>,  <34.445248, 33.504017, 36.383228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995182, 33.341209, 37.078533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156940, 33.042435, 37.289642>,  <34.253994, 32.863171, 37.416309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156940, 33.042435, 37.289642>,  <33.995182, 33.341209, 37.078533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156940, 33.042435, 37.289642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540464, 0.270358, 0.796747,
		-0.737811, -0.607442, -0.294364,
		0.404393, -0.746941, 0.527774,
		34.278259, 32.818352, 37.447975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564114, 33.171013, 37.590065>,  <33.995182, 33.341209, 37.078533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564114, 33.171013, 37.590065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855438, 32.937420, 37.733467>,  <34.030231, 32.797264, 37.819508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855438, 32.937420, 37.733467>,  <33.564114, 33.171013, 37.590065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855438, 32.937420, 37.733467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451226, -0.014976, 0.892284,
		-0.515712, -0.811626, -0.274417,
		0.728310, -0.583986, 0.358503,
		34.073933, 32.762226, 37.841019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303238, 32.561665, 38.070919>,  <33.564114, 33.171013, 37.590065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303238, 32.561665, 38.070919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679478, 32.664368, 38.159775>,  <33.905220, 32.725990, 38.213089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679478, 32.664368, 38.159775>,  <33.303238, 32.561665, 38.070919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679478, 32.664368, 38.159775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172446, -0.202324, 0.964016,
		0.292463, -0.945061, -0.146029,
		0.940600, 0.256757, 0.222144,
		33.961658, 32.741394, 38.226418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672672, 31.970654, 38.388161>,  <33.303238, 32.561665, 38.070919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672672, 31.970654, 38.388161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826908, 32.317543, 38.514168>,  <33.919449, 32.525677, 38.589771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826908, 32.317543, 38.514168>,  <33.672672, 31.970654, 38.388161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826908, 32.317543, 38.514168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016705, -0.347926, 0.937373,
		0.922517, -0.356183, -0.148645,
		0.385594, 0.867226, 0.315018,
		33.942585, 32.577709, 38.608673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310936, 31.784655, 38.714653>,  <33.672672, 31.970654, 38.388161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310936, 31.784655, 38.714653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188610, 32.130020, 38.875149>,  <34.115215, 32.337238, 38.971447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188610, 32.130020, 38.875149>,  <34.310936, 31.784655, 38.714653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188610, 32.130020, 38.875149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168166, -0.365818, 0.915367,
		0.937121, 0.347411, -0.033323,
		-0.305818, 0.863414, 0.401238,
		34.096863, 32.389046, 38.995522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.816719, 31.927715, 39.153633>,  <34.310936, 31.784655, 38.714653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.816719, 31.927715, 39.153633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482903, 32.128262, 39.244999>,  <34.282612, 32.248589, 39.299820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482903, 32.128262, 39.244999>,  <34.816719, 31.927715, 39.153633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482903, 32.128262, 39.244999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126874, -0.228564, 0.965226,
		0.536141, 0.834500, 0.127135,
		-0.834539, 0.501367, 0.228419,
		34.232540, 32.278671, 39.313526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065437, 32.377495, 39.678566>,  <34.816719, 31.927715, 39.153633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065437, 32.377495, 39.678566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667290, 32.347519, 39.702644>,  <34.428402, 32.329533, 39.717091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667290, 32.347519, 39.702644>,  <35.065437, 32.377495, 39.678566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667290, 32.347519, 39.702644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077395, -0.253431, 0.964252,
		-0.057002, 0.964447, 0.258058,
		-0.995370, -0.074937, 0.060197,
		34.368679, 32.325039, 39.720703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907902, 32.546627, 40.298763>,  <35.065437, 32.377495, 39.678566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907902, 32.546627, 40.298763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574444, 32.349113, 40.199799>,  <34.374371, 32.230606, 40.140419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574444, 32.349113, 40.199799>,  <34.907902, 32.546627, 40.298763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574444, 32.349113, 40.199799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110898, -0.289195, 0.950825,
		-0.541052, 0.820088, 0.186327,
		-0.833645, -0.493783, -0.247416,
		34.324348, 32.200977, 40.125572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395412, 32.774502, 40.761944>,  <34.907902, 32.546627, 40.298763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395412, 32.774502, 40.761944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266953, 32.423523, 40.619423>,  <34.189877, 32.212936, 40.533913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266953, 32.423523, 40.619423>,  <34.395412, 32.774502, 40.761944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266953, 32.423523, 40.619423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302709, -0.261380, 0.916541,
		-0.897347, 0.402200, -0.181669,
		-0.321148, -0.877448, -0.356298,
		34.170609, 32.160290, 40.512535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742321, 32.660934, 41.098797>,  <34.395412, 32.774502, 40.761944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742321, 32.660934, 41.098797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810501, 32.281124, 40.993458>,  <33.851410, 32.053238, 40.930256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810501, 32.281124, 40.993458>,  <33.742321, 32.660934, 41.098797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810501, 32.281124, 40.993458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178495, -0.292585, 0.939432,
		-0.969065, -0.113117, -0.219356,
		0.170446, -0.949525, -0.263343,
		33.861633, 31.996267, 40.914455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330784, 32.360500, 41.573418>,  <33.742321, 32.660934, 41.098797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330784, 32.360500, 41.573418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591236, 32.088043, 41.439510>,  <33.747509, 31.924568, 41.359165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591236, 32.088043, 41.439510>,  <33.330784, 32.360500, 41.573418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591236, 32.088043, 41.439510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081195, -0.376034, 0.923042,
		-0.754610, -0.628202, -0.189542,
		0.651131, -0.681147, -0.334766,
		33.786575, 31.883699, 41.339081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068512, 31.681404, 41.739635>,  <33.330784, 32.360500, 41.573418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068512, 31.681404, 41.739635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465130, 31.654257, 41.695377>,  <33.703098, 31.637968, 41.668823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465130, 31.654257, 41.695377>,  <33.068512, 31.681404, 41.739635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465130, 31.654257, 41.695377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078015, -0.369670, 0.925882,
		-0.103739, -0.926681, -0.361248,
		0.991540, -0.067867, -0.110644,
		33.762592, 31.633896, 41.662186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142899, 31.102400, 42.083542>,  <33.068512, 31.681404, 41.739635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142899, 31.102400, 42.083542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507355, 31.263895, 42.050499>,  <33.726028, 31.360792, 42.030674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507355, 31.263895, 42.050499>,  <33.142899, 31.102400, 42.083542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507355, 31.263895, 42.050499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264955, -0.420390, 0.867797,
		0.315635, -0.812570, -0.490005,
		0.911138, 0.403736, -0.082605,
		33.780697, 31.385015, 42.025719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685032, 30.458834, 42.122246>,  <33.142899, 31.102400, 42.083542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685032, 30.458834, 42.122246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851494, 30.809717, 42.218014>,  <33.951370, 31.020247, 42.275475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851494, 30.809717, 42.218014>,  <33.685032, 30.458834, 42.122246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851494, 30.809717, 42.218014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062002, -0.290061, 0.954997,
		0.907176, -0.382585, -0.175099,
		0.416157, 0.877208, 0.239416,
		33.976341, 31.072880, 42.289837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254566, 30.291752, 42.535698>,  <33.685032, 30.458834, 42.122246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254566, 30.291752, 42.535698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226589, 30.678566, 42.633640>,  <34.209805, 30.910654, 42.692406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.226589, 30.678566, 42.633640>,  <34.254566, 30.291752, 42.535698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226589, 30.678566, 42.633640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200903, -0.226776, 0.953001,
		0.977111, 0.115845, -0.178419,
		-0.069939, 0.967033, 0.244859,
		34.205608, 30.968676, 42.707096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813038, 30.484711, 42.959606>,  <34.254566, 30.291752, 42.535698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813038, 30.484711, 42.959606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541718, 30.768852, 43.034763>,  <34.378925, 30.939337, 43.079857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541718, 30.768852, 43.034763>,  <34.813038, 30.484711, 42.959606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541718, 30.768852, 43.034763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107905, -0.156636, 0.981744,
		0.726814, 0.686196, 0.029597,
		-0.678305, 0.710352, 0.187889,
		34.338226, 30.981958, 43.091129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101807, 30.917952, 43.486069>,  <34.813038, 30.484711, 42.959606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101807, 30.917952, 43.486069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714951, 31.015554, 43.514652>,  <34.482838, 31.074116, 43.531803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.714951, 31.015554, 43.514652>,  <35.101807, 30.917952, 43.486069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714951, 31.015554, 43.514652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066964, -0.026684, 0.997399,
		0.245279, 0.969407, 0.009467,
		-0.967137, 0.244006, 0.071461,
		34.424809, 31.088757, 43.536091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168236, 31.337975, 43.973892>,  <35.101807, 30.917952, 43.486069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168236, 31.337975, 43.973892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774036, 31.272741, 43.955112>,  <34.537518, 31.233601, 43.943844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774036, 31.272741, 43.955112>,  <35.168236, 31.337975, 43.973892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774036, 31.272741, 43.955112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037824, -0.058620, 0.997564,
		-0.165439, 0.984869, 0.051601,
		-0.985494, -0.163085, -0.046950,
		34.478390, 31.223816, 43.941029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893177, 31.756617, 44.478989>,  <35.168236, 31.337975, 43.973892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893177, 31.756617, 44.478989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607857, 31.477995, 44.447952>,  <34.436665, 31.310822, 44.429329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607857, 31.477995, 44.447952>,  <34.893177, 31.756617, 44.478989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607857, 31.477995, 44.447952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144355, 0.037677, 0.988808,
		-0.685836, 0.716514, -0.127425,
		-0.713296, -0.696555, -0.077592,
		34.393867, 31.269028, 44.424675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379501, 32.037174, 44.899364>,  <34.893177, 31.756617, 44.478989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379501, 32.037174, 44.899364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333366, 31.645926, 44.830120>,  <34.305687, 31.411175, 44.788574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333366, 31.645926, 44.830120>,  <34.379501, 32.037174, 44.899364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333366, 31.645926, 44.830120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054168, -0.180208, 0.982136,
		-0.991849, 0.103896, 0.073767,
		-0.115333, -0.978126, -0.173111,
		34.298767, 31.352488, 44.778187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904858, 31.934256, 45.316093>,  <34.379501, 32.037174, 44.899364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904858, 31.934256, 45.316093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095242, 31.586830, 45.260880>,  <34.209473, 31.378374, 45.227753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095242, 31.586830, 45.260880>,  <33.904858, 31.934256, 45.316093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095242, 31.586830, 45.260880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146766, -0.076309, 0.986223,
		-0.867132, -0.489665, 0.091155,
		0.475964, -0.868565, -0.138036,
		34.238029, 31.326262, 45.219467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451702, 31.377766, 45.634628>,  <33.904858, 31.934256, 45.316093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451702, 31.377766, 45.634628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832882, 31.261471, 45.600330>,  <34.061592, 31.191694, 45.579750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832882, 31.261471, 45.600330>,  <33.451702, 31.377766, 45.634628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832882, 31.261471, 45.600330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039898, -0.160111, 0.986292,
		-0.300484, -0.943310, -0.140979,
		0.952952, -0.290741, -0.085747,
		34.118767, 31.174250, 45.574608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443752, 30.912647, 46.078590>,  <33.451702, 31.377766, 45.634628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443752, 30.912647, 46.078590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835785, 30.946012, 46.006504>,  <34.071007, 30.966032, 45.963253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835785, 30.946012, 46.006504>,  <33.443752, 30.912647, 46.078590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835785, 30.946012, 46.006504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198009, -0.341333, 0.918849,
		0.015132, -0.936234, -0.351052,
		0.980083, 0.083416, -0.180218,
		34.129810, 30.971037, 45.952438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727623, 30.317760, 46.273483>,  <33.443752, 30.912647, 46.078590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727623, 30.317760, 46.273483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031254, 30.578077, 46.280003>,  <34.213432, 30.734268, 46.283916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031254, 30.578077, 46.280003>,  <33.727623, 30.317760, 46.273483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031254, 30.578077, 46.280003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278638, -0.347428, 0.895352,
		0.588351, -0.675103, -0.445062,
		0.759081, 0.650792, 0.016300,
		34.258980, 30.773315, 46.284893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212582, 29.983646, 46.534912>,  <33.727623, 30.317760, 46.273483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212582, 29.983646, 46.534912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345428, 30.356758, 46.590946>,  <34.425137, 30.580626, 46.624565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345428, 30.356758, 46.590946>,  <34.212582, 29.983646, 46.534912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345428, 30.356758, 46.590946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130754, -0.192607, 0.972525,
		0.934131, -0.304677, -0.185933,
		0.332118, 0.932778, 0.140083,
		34.445065, 30.636591, 46.632973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834499, 29.950716, 46.981895>,  <34.212582, 29.983646, 46.534912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834499, 29.950716, 46.981895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727238, 30.335258, 47.006821>,  <34.662880, 30.565985, 47.021778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727238, 30.335258, 47.006821>,  <34.834499, 29.950716, 46.981895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727238, 30.335258, 47.006821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076241, -0.043305, 0.996149,
		0.960353, 0.271877, -0.061682,
		-0.268158, 0.961357, 0.062316,
		34.646790, 30.623665, 47.025517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333935, 30.319954, 47.402054>,  <34.834499, 29.950716, 46.981895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333935, 30.319954, 47.402054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994850, 30.530708, 47.426617>,  <34.791397, 30.657162, 47.441353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994850, 30.530708, 47.426617>,  <35.333935, 30.319954, 47.402054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994850, 30.530708, 47.426617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058959, -0.208634, 0.976215,
		0.527165, 0.823932, 0.207927,
		-0.847715, 0.526886, 0.061406,
		34.740536, 30.688774, 47.445038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846161, 30.829218, 47.629074>,  <35.333935, 30.319954, 47.402054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846161, 30.829218, 47.629074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209827, 30.792452, 47.791542>,  <36.428028, 30.770393, 47.889023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209827, 30.792452, 47.791542>,  <35.846161, 30.829218, 47.629074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209827, 30.792452, 47.791542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413543, 0.314075, -0.854599,
		-0.049018, 0.944938, 0.323556,
		0.909164, -0.091914, 0.406168,
		36.482578, 30.764877, 47.913391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109341, 31.394508, 47.485168>,  <35.846161, 30.829218, 47.629074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109341, 31.394508, 47.485168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429905, 31.162933, 47.545261>,  <36.622242, 31.023989, 47.581318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429905, 31.162933, 47.545261>,  <36.109341, 31.394508, 47.485168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429905, 31.162933, 47.545261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400746, 0.333288, -0.853417,
		0.444006, 0.744143, 0.499109,
		0.801412, -0.578938, 0.150231,
		36.670330, 30.989252, 47.590332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718712, 31.759197, 47.212315>,  <36.109341, 31.394508, 47.485168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718712, 31.759197, 47.212315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841351, 31.378469, 47.209785>,  <36.914936, 31.150034, 47.208267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841351, 31.378469, 47.209785>,  <36.718712, 31.759197, 47.212315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841351, 31.378469, 47.209785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470963, 0.157476, -0.867983,
		0.827158, 0.263143, 0.496553,
		0.306599, -0.951818, -0.006327,
		36.933331, 31.092924, 47.207886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380859, 31.763689, 47.234245>,  <36.718712, 31.759197, 47.212315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380859, 31.763689, 47.234245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266804, 31.418367, 47.067680>,  <37.198372, 31.211174, 46.967739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266804, 31.418367, 47.067680>,  <37.380859, 31.763689, 47.234245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266804, 31.418367, 47.067680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375457, 0.299130, -0.877241,
		0.881888, -0.406483, 0.238840,
		-0.285139, -0.863303, -0.416417,
		37.181263, 31.159376, 46.942757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967983, 31.503126, 46.743855>,  <37.380859, 31.763689, 47.234245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967983, 31.503126, 46.743855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625484, 31.324173, 46.640556>,  <37.419987, 31.216801, 46.578579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.625484, 31.324173, 46.640556>,  <37.967983, 31.503126, 46.743855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625484, 31.324173, 46.640556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241630, 0.094980, -0.965709,
		0.456568, -0.889286, 0.026774,
		-0.856248, -0.447382, -0.258243,
		37.368610, 31.189959, 46.563084>
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
